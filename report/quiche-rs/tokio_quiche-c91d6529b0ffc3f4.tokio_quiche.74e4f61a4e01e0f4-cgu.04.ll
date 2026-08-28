Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/quiche-rs/original/tokio_quiche-c91d6529b0ffc3f4.tokio_quiche.74e4f61a4e01e0f4-cgu.04?download=true
inline.NumInlined: 347
inline.NumDeleted: 183
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_RINvXs0_NtNtNtCskKLDkoKarTP_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4IterNtNtCs3f36owOmepS_6quiche2h36HeaderENCINvMsd_B1p_NtB1p_10Connection12send_headersB1n_NtNtCsa2e0UnRrdBM_12tokio_quiche11buf_factory10BufFactoryE0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB3I_8for_each4callNtNtNtCs3JBf551F2Kj_4qlog6events5http310HttpHeaderNCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB5I_3VecB4L_E14extend_trustedBN_E0E0EB2O_:bb.a
  %.val.i.i.i = load ptr, ptr %i.u, align 8, !dbg !4315, !alias.scope !4316, !noalias !4317, !nonnull !30, !noundef !30
  %i.v = getelementptr inbounds nuw i8, ptr %i.t, i64 16, !dbg !4315
  %.val72.i.i.i = load i64, ptr %i.v, align 8, !dbg !4315, !alias.scope !4316, !noalias !4317, !noundef !30
  invoke void @_RNvMNtCsexYYUdYSQU6_5alloc6stringNtB2_6String15from_utf8_lossy(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.e, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.val.i.i.i, i64 noundef %.val72.i.i.i)
          to label %.noexc.i unwind label %.loopexit.i, !dbg !4314, !noalias !4318

.noexc.i:                                         ; preds = %bb.c
  %i.w = load i64, ptr %i.e, align 8, !dbg !4319, !range !2111, !noalias !4309, !noundef !30 ; 2 uses
  %.not.i.i.i = icmp eq i64 %i.w, -1, !dbg !4319
  %i.x = load ptr, ptr %i.l, align 8, !dbg !4320, !noalias !4309 ; 2 uses
  %i.y = load i64, ptr %i.m, align 8, !dbg !4320, !noalias !4309 ; 6 uses
  br i1 %.not.i.i.i, label %bb.d, label %bb.i, !dbg !4321

bb.d:                                             ; preds = %.noexc.i
    #dbg_value(ptr %i.x, !4151, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !4322)
    #dbg_value(ptr %i.x, !4192, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !4323)
    #dbg_value(i64 %i.y, !4151, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !4322)
    #dbg_value(i64 %i.y, !4192, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !4323)
    #dbg_value(ptr %i.x, !4183, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !4324)
    #dbg_value(ptr %i.x, !4178, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !4325)
    #dbg_value(ptr %i.x, !4171, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !4326)
    #dbg_value(ptr %i.x, !4199, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !4327)
    #dbg_value(i64 %i.y, !4183, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !4324)
    #dbg_value(i64 %i.y, !4178, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !4325)
    #dbg_value(i64 %i.y, !4171, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !4326)
    #dbg_value(i64 %i.y, !4199, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !4327)
    #dbg_value(i64 %i.y, !4200, !DIExpression(), !4328)
    #dbg_value(i64 %i.y, !4216, !DIExpression(), !4329)
    #dbg_value(i64 %i.y, !4226, !DIExpression(), !4330)
    #dbg_value(i64 %i.y, !4331, !DIExpression(), !4338)
    #dbg_value(i64 %i.y, !4340, !DIExpression(), !4347)
    #dbg_value(i64 %i.y, !4244, !DIExpression(), !4349)
    #dbg_value(i64 %i.y, !4280, !DIExpression(), !4282)
    #dbg_value(i64 1, !4245, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !4349)
    #dbg_value(i64 1, !4281, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !4282)
    #dbg_value(i64 1, !4245, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !4349)
    #dbg_value(i64 1, !4281, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !4282)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !4350, !noalias !4309
  invoke void @_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsa2e0UnRrdBM_12tokio_quiche(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, i64 noundef %i.y, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
          to label %.noexc27.i unwind label %.loopexit.i, !dbg !4350, !noalias !4318

.noexc27.i:                                       ; preds = %bb.d
  %i.z = load i64, ptr %i.b, align 8, !dbg !4350, !range !4351, !noalias !4309, !noundef !30
  %i.aa = trunc nuw i64 %i.z to i1, !dbg !4352
  %i.ab = load i64, ptr %i.n, align 8, !dbg !4349, !range !4353, !noalias !4309, !noundef !30 ; 4 uses
  br i1 %i.aa, label %bb.e, label %bb.f, !dbg !4352, !prof !2282

bb.e:                                             ; preds = %.noexc27.i
  %i.ac = load i64, ptr %i.o, align 8, !dbg !4354, !noalias !4309
    #dbg_value(i64 %i.ab, !4248, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !4355)
    #dbg_value(i64 %i.ac, !4248, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !4355)
  invoke void @_RNvNtCsexYYUdYSQU6_5alloc7raw_vec12handle_error(i64 noundef %i.ab, i64 %i.ac) #22
          to label %.noexc28.i unwind label %.loopexit.split-lp.i, !dbg !4356, !noalias !4318

.noexc28.i:                                       ; preds = %bb.e
  unreachable, !dbg !4356

bb.f:                                             ; preds = %.noexc27.i
  %i.ad = load ptr, ptr %i.o, align 8, !dbg !4357, !noalias !4309, !nonnull !30, !noundef !30 ; 3 uses
    #dbg_value(i64 %i.ab, !4246, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !4358)
    #dbg_value(ptr %i.ad, !4246, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !4358)
    #dbg_value(ptr poison, !4279, !DIExpression(), !4359)
  %i.ae = icmp ule i64 %i.y, %i.ab, !dbg !4360
    #dbg_value(i1 true, !4361, !DIExpression(DW_OP_not, DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !4368)
  tail call void @llvm.assume(i1 %i.ae), !dbg !4370
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !4371, !noalias !4309
    #dbg_value(i64 %i.ab, !4202, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !4372)
    #dbg_value(ptr %i.ad, !4202, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !4372)
    #dbg_value(i64 0, !4202, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !4372)
  %.not69.i.i.i = icmp eq i64 %i.y, 0, !dbg !4373
  br i1 %.not69.i.i.i, label %bb.i, label %bb.g, !dbg !4373

bb.g:                                             ; preds = %bb.f
    #dbg_value(ptr %i.x, !4336, !DIExpression(), !4338)
    #dbg_value(ptr %i.x, !4345, !DIExpression(), !4347)
    #dbg_value(ptr %i.ad, !4337, !DIExpression(), !4338)
    #dbg_value(ptr %i.ad, !4346, !DIExpression(), !4347)
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ad, ptr nonnull align 1 %i.x, i64 %i.y, i1 false), !dbg !4374, !noalias !4309
    #dbg_value(i64 %i.y, !4202, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !4372)
  br label %bb.i, !dbg !4375

.loopexit29.i:                                    ; preds = %bb.k, %bb.i
  %lpad.loopexit31.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.h

.loopexit.split-lp30.i:                           ; preds = %bb.m
  %lpad.loopexit.split-lp32.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.h

bb.h:                                             ; preds = %.loopexit.split-lp30.i, %.loopexit29.i
  %lpad.phi33.i = phi { ptr, i32 } [ %lpad.loopexit31.i, %.loopexit29.i ], [ %lpad.loopexit.split-lp32.i, %.loopexit.split-lp30.i ]
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsexYYUdYSQU6_5alloc6string6StringEECsa2e0UnRrdBM_12tokio_quiche(ptr noalias nofree noundef align 8 dereferenceable(24) %i.d) #23
          to label %bb.r unwind label %bb.q, !dbg !4376, !noalias !4309

bb.i:                                             ; preds = %bb.g, %bb.f, %.noexc.i
  %.sroa.67.0.i.i.i = phi i64 [ 0, %bb.f ], [ %i.y, %bb.g ], [ %i.y, %.noexc.i ], !dbg !4320
  %.sroa.5.0.i.i.i = phi ptr [ %i.ad, %bb.f ], [ %i.ad, %bb.g ], [ %i.x, %.noexc.i ], !dbg !4320
  %.sroa.03.0.i.i.i = phi i64 [ %i.ab, %bb.f ], [ %i.ab, %bb.g ], [ %i.w, %.noexc.i ], !dbg !4320
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !dbg !4377, !noalias !4309
  store i64 %.sroa.03.0.i.i.i, ptr %i.f, align 8, !dbg !4308, !noalias !4309
  store ptr %.sroa.5.0.i.i.i, ptr %.sroa.5.0..sroa_idx5.i.i.i, align 8, !dbg !4308, !noalias !4309
  store i64 %.sroa.67.0.i.i.i, ptr %.sroa.67.0..sroa_idx8.i.i.i, align 8, !dbg !4308, !noalias !4309
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !dbg !4378, !noalias !4309
  store i64 -1, ptr %i.d, align 8, !dbg !4378, !noalias !4309
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !4379, !noalias !4309
  %i.af = getelementptr inbounds nuw i8, ptr %i.t, i64 32, !dbg !4380
  %.val73.i.i.i = load ptr, ptr %i.af, align 8, !dbg !4380, !alias.scope !4316, !noalias !4317, !nonnull !30, !noundef !30
  %i.ag = getelementptr inbounds nuw i8, ptr %i.t, i64 40, !dbg !4380
  %.val74.i.i.i = load i64, ptr %i.ag, align 8, !dbg !4380, !alias.scope !4316, !noalias !4317, !noundef !30
  invoke void @_RNvMNtCsexYYUdYSQU6_5alloc6stringNtB2_6String15from_utf8_lossy(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.c, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.val73.i.i.i, i64 noundef %.val74.i.i.i)
          to label %bb.j unwind label %.loopexit29.i, !dbg !4379, !noalias !4309

bb.j:                                             ; preds = %bb.i
  %i.ah = load i64, ptr %i.c, align 8, !dbg !4381, !range !2111, !noalias !4309, !noundef !30 ; 2 uses
  %.not70.i.i.i = icmp eq i64 %i.ah, -1, !dbg !4381
  %i.ai = load ptr, ptr %i.p, align 8, !dbg !4382, !noalias !4309 ; 2 uses
  %i.aj = load i64, ptr %i.q, align 8, !dbg !4382, !noalias !4309 ; 6 uses
  br i1 %.not70.i.i.i, label %bb.k, label %bb.s, !dbg !4383

bb.k:                                             ; preds = %bb.j
    #dbg_value(ptr %i.ai, !4155, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !4384)
    #dbg_value(ptr %i.ai, !4192, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !4385)
    #dbg_value(i64 %i.aj, !4155, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !4384)
    #dbg_value(i64 %i.aj, !4192, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !4385)
    #dbg_value(ptr %i.ai, !4183, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !4386)
    #dbg_value(ptr %i.ai, !4178, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !4387)
    #dbg_value(ptr %i.ai, !4171, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !4388)
    #dbg_value(ptr %i.ai, !4199, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !4389)
    #dbg_value(i64 %i.aj, !4183, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !4386)
    #dbg_value(i64 %i.aj, !4178, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !4387)
    #dbg_value(i64 %i.aj, !4171, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !4388)
    #dbg_value(i64 %i.aj, !4199, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !4389)
    #dbg_value(i64 %i.aj, !4204, !DIExpression(), !4390)
    #dbg_value(i64 %i.aj, !4216, !DIExpression(), !4391)
    #dbg_value(i64 %i.aj, !4226, !DIExpression(), !4392)
    #dbg_value(i64 %i.aj, !4331, !DIExpression(), !4393)
    #dbg_value(i64 %i.aj, !4340, !DIExpression(), !4396)
    #dbg_value(i64 %i.aj, !4244, !DIExpression(), !4399)
    #dbg_value(i64 %i.aj, !4280, !DIExpression(), !4305)
    #dbg_value(i64 1, !4245, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !4399)
    #dbg_value(i64 1, !4281, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !4305)
    #dbg_value(i64 1, !4245, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !4399)
    #dbg_value(i64 1, !4281, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !4305)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !4400, !noalias !4309
  invoke void @_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsa2e0UnRrdBM_12tokio_quiche(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, i64 noundef %i.aj, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
          to label %bb.l unwind label %.loopexit29.i, !dbg !4400, !noalias !4309

bb.l:                                             ; preds = %bb.k
  %i.ak = load i64, ptr %i.a, align 8, !dbg !4400, !range !4351, !noalias !4309, !noundef !30
  %i.al = trunc nuw i64 %i.ak to i1, !dbg !4401
  %i.am = load i64, ptr %i.r, align 8, !dbg !4399, !range !4353, !noalias !4309, !noundef !30 ; 4 uses
  br i1 %i.al, label %bb.m, label %bb.n, !dbg !4401, !prof !2282

bb.m:                                             ; preds = %bb.l
  %i.an = load i64, ptr %i.s, align 8, !dbg !4402, !noalias !4309
    #dbg_value(i64 %i.am, !4268, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !4403)
    #dbg_value(i64 %i.an, !4268, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !4403)
  invoke void @_RNvNtCsexYYUdYSQU6_5alloc7raw_vec12handle_error(i64 noundef %i.am, i64 %i.an) #22
          to label %bb.p unwind label %.loopexit.split-lp30.i, !dbg !4404, !noalias !4309

bb.n:                                             ; preds = %bb.l
  %i.ao = load ptr, ptr %i.s, align 8, !dbg !4405, !noalias !4309, !nonnull !30, !noundef !30 ; 3 uses
    #dbg_value(i64 %i.am, !4266, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !4406)
    #dbg_value(ptr %i.ao, !4266, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !4406)
    #dbg_value(ptr poison, !4279, !DIExpression(), !4407)
  %i.ap = icmp ule i64 %i.aj, %i.am, !dbg !4408
    #dbg_value(i1 true, !4361, !DIExpression(DW_OP_not, DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !4409)
  tail call void @llvm.assume(i1 %i.ap), !dbg !4411
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !4412, !noalias !4309
    #dbg_value(i64 %i.am, !4206, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !4413)
    #dbg_value(ptr %i.ao, !4206, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !4413)
    #dbg_value(i64 0, !4206, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !4413)
  %.not71.i.i.i = icmp eq i64 %i.aj, 0, !dbg !4414
  br i1 %.not71.i.i.i, label %bb.s, label %bb.o, !dbg !4414

bb.o:                                             ; preds = %bb.n
    #dbg_value(ptr %i.ai, !4336, !DIExpression(), !4393)
    #dbg_value(ptr %i.ai, !4345, !DIExpression(), !4396)
    #dbg_value(ptr %i.ao, !4337, !DIExpression(), !4393)
    #dbg_value(ptr %i.ao, !4346, !DIExpression(), !4396)
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ao, ptr nonnull align 1 %i.ai, i64 %i.aj, i1 false), !dbg !4415, !noalias !4309
    #dbg_value(i64 %i.aj, !4206, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !4413)
  br label %bb.s, !dbg !4416

bb.p:                                             ; preds = %bb.m
  unreachable

bb.q:                                             ; preds = %bb.r, %bb.h
  %i.aq = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #21, !dbg !4417, !noalias !4309
  unreachable, !dbg !4417

bb.r:                                             ; preds = %bb.h
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsexYYUdYSQU6_5alloc6string6StringEECsa2e0UnRrdBM_12tokio_quiche(ptr noalias nofree noundef align 8 dereferenceable(24) %i.f) #23
          to label %bb.t unwind label %bb.q, !dbg !4376, !noalias !4309

bb.s:                                             ; preds = %bb.o, %bb.n, %bb.j
  %.sroa.013.0.i.i.i.a = phi i64 [ 0, %bb.n ], [ %i.aj, %bb.o ], [ %i.aj, %bb.j ], !dbg !4382
  %.sroa.515.0.i.i.i = phi ptr [ %i.ao, %bb.n ], [ %i.ao, %bb.o ], [ %i.ai, %bb.j ], !dbg !4382
  %.sroa.618.0.i.i.i = phi i64 [ %i.am, %bb.n ], [ %i.am, %bb.o ], [ %i.ah, %bb.j ], !dbg !4382
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !4418, !noalias !4309
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0.i.i, ptr noundef nonnull align 8 dereferenceable(24) %i.f, i64 24, i1 false), !dbg !4419, !noalias !4420
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0.24..sroa_idx.i.i, ptr noundef nonnull align 8 dereferenceable(24) %i.d, i64 24, i1 false), !dbg !4419, !noalias !4420
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !dbg !4376, !noalias !4309
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !dbg !4376, !noalias !4309
    #dbg_value(i64 %.sroa.618.0.i.i.i, !4102, !DIExpression(DW_OP_LLVM_fragment, 384, 64), !4421)
    #dbg_value(i64 %.sroa.618.0.i.i.i, !4084, !DIExpression(DW_OP_LLVM_fragment, 384, 64), !4422)
    #dbg_value(ptr %.sroa.515.0.i.i.i, !4102, !DIExpression(DW_OP_LLVM_fragment, 448, 64), !4421)
    #dbg_value(ptr %.sroa.515.0.i.i.i, !4084, !DIExpression(DW_OP_LLVM_fragment, 448, 64), !4422)
    #dbg_value(i64 %.sroa.013.0.i.i.i.a, !4102, !DIExpression(DW_OP_LLVM_fragment, 512, 64), !4421)
    #dbg_value(i64 %.sroa.013.0.i.i.i.a, !4084, !DIExpression(DW_OP_LLVM_fragment, 512, 64), !4422)
    #dbg_value(i64 -1, !4102, !DIExpression(DW_OP_LLVM_fragment, 576, 64), !4421)
    #dbg_value(i64 -1, !4084, !DIExpression(DW_OP_LLVM_fragment, 576, 64), !4422)
    #dbg_value(ptr poison, !4103, !DIExpression(DW_OP_deref, DW_OP_LLVM_fragment, 0, 64), !4421)
    #dbg_declare(ptr poison, !4104, !DIExpression(), !4423)
    #dbg_value(ptr poison, !4090, !DIExpression(DW_OP_deref, DW_OP_plus_uconst, 16), !4422)
    #dbg_value(ptr poison, !4091, !DIExpression(DW_OP_deref, DW_OP_LLVM_fragment, 0, 64), !4422)
  %i.ar = getelementptr inbounds nuw [96 x i8], ptr %.sroa.8.0.copyload, i64 %.val22.i, !dbg !4424 ; 5 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.ar, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.0.i.i, i64 48, i1 false), !dbg !4430, !noalias !4420
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.ar, i64 48, !dbg !4430
  store i64 %.sroa.618.0.i.i.i, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !dbg !4430, !noalias !4435
  %.sroa.54.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.ar, i64 56, !dbg !4430
  store ptr %.sroa.515.0.i.i.i, ptr %.sroa.54.0..sroa_idx.i.i, align 8, !dbg !4430, !noalias !4435
  %.sroa.65.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.ar, i64 64, !dbg !4430
  store i64 %.sroa.013.0.i.i.i.a, ptr %.sroa.65.0..sroa_idx.i.i, align 8, !dbg !4430, !noalias !4435
  %.sroa.76.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.ar, i64 72, !dbg !4430
  store i64 -1, ptr %.sroa.76.0..sroa_idx.i.i, align 8, !dbg !4430, !noalias !4435
  %i.as = add i64 %.val22.i, 1, !dbg !4440        ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.i.i), !dbg !4443
  %i.at = add nuw i64 %.sroa.01.0.i, 1, !dbg !4444 ; 2 uses
    #dbg_value(i64 %i.at, !3977, !DIExpression(), !4044)
    #dbg_value(i64 %i.at, !4020, !DIExpression(), !4021)
  %i.au = icmp eq i64 %i.at, %i.k, !dbg !4445
  br i1 %i.au, label %_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterNtNtCs3f36owOmepS_6quiche2h36HeaderENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB1w_8adapters3map8map_foldRBQ_NtNtNtCs3JBf551F2Kj_4qlog6events5http310HttpHeaderuNCINvMsd_BS_NtBS_10Connection12send_headersBQ_NtNtCsa2e0UnRrdBM_12tokio_quiche11buf_factory10BufFactoryE0NCINvNvB1q_8for_each4callB2O_NCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB5W_3VecB2O_E14extend_trustedINtB2g_3MapBF_B3D_EE0E0E0EB4r_.exit, label %bb.c, !dbg !4445

bb.t:                                             ; preds = %bb.r, %.loopexit.split-lp.i, %.loopexit.i
  %eh.lpad-body.i = phi { ptr, i32 } [ %lpad.phi33.i, %bb.r ], [ %lpad.loopexit.i, %.loopexit.i ], [ %lpad.loopexit.split-lp.i, %.loopexit.split-lp.i ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload) ]
    #dbg_value(ptr poison, !4446, !DIExpression(), !4453)
    #dbg_value(ptr poison, !4455, !DIExpression(), !4462)
    #dbg_value(ptr poison, !4464, !DIExpression(), !4471)
    #dbg_value(ptr poison, !3582, !DIExpression(), !4473)
    #dbg_value(ptr poison, !3591, !DIExpression(), !4475)
  store i64 %.val22.i, ptr %.sroa.0.0.copyload, align 8, !dbg !4477, !noalias !4318
  resume { ptr, i32 } %eh.lpad-body.i, !dbg !4478

_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterNtNtCs3f36owOmepS_6quiche2h36HeaderENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB1w_8adapters3map8map_foldRBQ_NtNtNtCs3JBf551F2Kj_4qlog6events5http310HttpHeaderuNCINvMsd_BS_NtBS_10Connection12send_headersBQ_NtNtCsa2e0UnRrdBM_12tokio_quiche11buf_factory10BufFactoryE0NCINvNvB1q_8for_each4callB2O_NCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB5W_3VecB2O_E14extend_trustedINtB2g_3MapBF_B3D_EE0E0E0EB4r_.exit: ; preds = %bb.s, %bb.a
  %storemerge = phi i64 [ %.sroa.6.0.copyload, %bb.a ], [ %i.as, %bb.s ], !dbg !4479
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload) ]
  store i64 %storemerge, ptr %.sroa.0.0.copyload, align 8, !dbg !4479, !noalias !4318
  ret void, !dbg !4485
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs0_NtNtNtCskKLDkoKarTP_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4IterRShENCNvMNtNtCsa2e0UnRrdBM_12tokio_quiche8settings4quicNtB1w_12QuicSettings12default_alpn0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB2Q_8for_each4callINtNtCsexYYUdYSQU6_5alloc3vec3VechENCINvMsk_B3W_IB3U_B3T_E14extend_trustedBN_E0E0EB1A_(ptr noundef nonnull %0, ptr noundef %1, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %2) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !4486 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
    #dbg_value(ptr %0, !4522, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !4528)
    #dbg_value(ptr %1, !4522, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !4528)
    #dbg_declare(ptr poison, !4523, !DIExpression(), !4529)
    #dbg_declare(ptr %2, !4524, !DIExpression(), !4530)
    #dbg_declare(ptr %2, !4531, !DIExpression(), !4544)
    #dbg_declare(ptr poison, !4540, !DIExpression(), !4546)
  %.sroa.0.0.copyload = load ptr, ptr %2, align 8, !dbg !4547 ; 4 uses
    #dbg_value(ptr %.sroa.0.0.copyload, !4548, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !4571)
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 8, !dbg !4547
  %.sroa.6.0.copyload = load i64, ptr %.sroa.6.0..sroa_idx, align 8, !dbg !4547 ; 2 uses
    #dbg_value(i64 %.sroa.6.0.copyload, !4548, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !4571)
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 16, !dbg !4547
  %.sroa.8.0.copyload = load ptr, ptr %.sroa.8.0..sroa_idx, align 8, !dbg !4547
    #dbg_value(ptr %.sroa.8.0.copyload, !4548, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !4571)
    #dbg_value(ptr %0, !4553, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !4571)
    #dbg_value(ptr %1, !4553, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !4571)
    #dbg_declare(ptr poison, !4554, !DIExpression(), !4573)
    #dbg_declare(ptr poison, !4559, !DIExpression(), !4574)
    #dbg_value(i64 16, !4575, !DIExpression(), !4583)
    #dbg_value(i64 1, !4600, !DIExpression(), !4604)
    #dbg_value(ptr %1, !4557, !DIExpression(), !4606)
    #dbg_value(ptr poison, !4607, !DIExpression(), !4614)
    #dbg_value(ptr poison, !4613, !DIExpression(), !4616)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %1) ], !dbg !4617
  %i.b = icmp eq ptr %0, %1, !dbg !4625
  br i1 %i.b, label %_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterRShENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB10_8adapters3map8map_foldRBQ_INtNtCsexYYUdYSQU6_5alloc3vec3VechEuNCNvMNtNtCsa2e0UnRrdBM_12tokio_quiche8settings4quicNtB2X_12QuicSettings12default_alpn0NCINvNvBU_8for_each4callB2i_NCINvMsk_B2l_IB2j_B2i_E14extend_trustedINtB1K_3MapBF_B2S_EE0E0E0EB31_.exit, label %bb.b, !dbg !4626

bb.b:                                             ; preds = %bb.a
    #dbg_value(i64 0, !4561, !DIExpression(), !4627)
    #dbg_value(i64 0, !4603, !DIExpression(), !4604)
    #dbg_value(ptr %1, !4567, !DIExpression(), !4628)
    #dbg_value(ptr %1, !4597, !DIExpression(), !4629)
    #dbg_value(ptr %1, !4623, !DIExpression(), !4630)
    #dbg_value(ptr %0, !4598, !DIExpression(), !4629)
    #dbg_value(ptr %0, !4623, !DIExpression(), !4632)
    #dbg_value(ptr %1, !4589, !DIExpression(), !4634)
    #dbg_value(ptr %0, !4590, !DIExpression(), !4634)
    #dbg_value(ptr %0, !4582, !DIExpression(), !4635)
    #dbg_value(ptr %1, !4581, !DIExpression(), !4635)
  %i.c = ptrtoint ptr %1 to i64, !dbg !4636
  %i.d = ptrtoint ptr %0 to i64, !dbg !4636
  %i.e = sub nuw i64 %i.c, %i.d, !dbg !4636
  %i.f = lshr exact i64 %i.e, 4, !dbg !4636
    #dbg_value(i64 %i.f, !4563, !DIExpression(), !4637)
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  br label %bb.c, !dbg !4638

bb.c:                                             ; preds = %bb.g, %bb.b
  %.val22.i = phi i64 [ %.sroa.6.0.copyload, %bb.b ], [ %i.r, %bb.g ] ; 3 uses
  %.sroa.01.0.i = phi i64 [ 0, %bb.b ], [ %i.s, %bb.g ], !dbg !4639 ; 2 uses
    #dbg_value(i64 %.sroa.01.0.i, !4603, !DIExpression(), !4604)
    #dbg_value(i64 %.sroa.01.0.i, !4561, !DIExpression(), !4627)
    #dbg_value(ptr %0, !4640, !DIExpression(), !4647)
    #dbg_value(i64 %.sroa.01.0.i, !4646, !DIExpression(), !4647)
  %i.i = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %.sroa.01.0.i, !dbg !4649 ; 2 uses
    #dbg_value(ptr %i.i, !4623, !DIExpression(), !4650)
  %.val27.i = load ptr, ptr %i.i, align 8, !dbg !4652, !noalias !4653, !nonnull !30, !noundef !30
  %i.j = getelementptr i8, ptr %i.i, i64 8, !dbg !4652
  %.val28.i = load i64, ptr %i.j, align 8, !dbg !4652, !noalias !4653, !noundef !30 ; 5 uses
    #dbg_value(ptr poison, !4656, !DIExpression(DW_OP_deref, DW_OP_LLVM_fragment, 0, 64), !4665)
    #dbg_declare(ptr poison, !4662, !DIExpression(), !4667)
    #dbg_value(ptr poison, !4663, !DIExpression(), !4665)
    #dbg_value(ptr poison, !4668, !DIExpression(), !4676)
    #dbg_value(ptr poison, !4675, !DIExpression(), !4676)
    #dbg_declare(ptr poison, !4678, !DIExpression(), !4682)
    #dbg_declare(ptr poison, !4688, !DIExpression(), !4696)
    #dbg_declare(ptr poison, !4698, !DIExpression(), !4702)
    #dbg_declare(ptr poison, !4704, !DIExpression(), !4708)
    #dbg_declare(ptr poison, !4710, !DIExpression(), !4719)
    #dbg_value(i64 0, !4721, !DIExpression(), !4727)
    #dbg_value(ptr %.val27.i, !4686, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !4729)
    #dbg_value(ptr %.val27.i, !4681, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !4730)
    #dbg_value(ptr %.val27.i, !4691, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !4731)
    #dbg_value(i64 %.val28.i, !4686, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !4729)
    #dbg_value(i64 %.val28.i, !4681, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !4730)
    #dbg_value(i64 %.val28.i, !4691, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !4731)
    #dbg_value(i64 %.val28.i, !4692, !DIExpression(), !4732)
    #dbg_value(i64 %.val28.i, !4701, !DIExpression(), !4733)
    #dbg_value(i64 %.val28.i, !4707, !DIExpression(), !4734)
    #dbg_value(i64 %.val28.i, !4735, !DIExpression(), !4740)
    #dbg_value(i64 %.val28.i, !4742, !DIExpression(), !4747)
    #dbg_value(i64 %.val28.i, !4713, !DIExpression(), !4749)
    #dbg_value(i64 %.val28.i, !4725, !DIExpression(), !4727)
    #dbg_value(i64 1, !4714, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !4749)
    #dbg_value(i64 1, !4726, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !4727)
    #dbg_value(i64 1, !4714, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !4749)
    #dbg_value(i64 1, !4726, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !4727)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !4750, !noalias !4751
  invoke void @_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsa2e0UnRrdBM_12tokio_quiche(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, i64 noundef %.val28.i, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
          to label %.noexc.i unwind label %.loopexit.i, !dbg !4750, !noalias !4653

.noexc.i:                                         ; preds = %bb.c
  %i.k = load i64, ptr %i.a, align 8, !dbg !4750, !range !4351, !noalias !4751, !noundef !30
  %i.l = trunc nuw i64 %i.k to i1, !dbg !4756
  %i.m = load i64, ptr %i.g, align 8, !dbg !4749, !range !4353, !noalias !4751, !noundef !30 ; 3 uses
  br i1 %i.l, label %bb.d, label %bb.e, !dbg !4756, !prof !2282

bb.d:                                             ; preds = %.noexc.i
  %i.n = load i64, ptr %i.h, align 8, !dbg !4757, !noalias !4751
    #dbg_value(i64 %i.m, !4717, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !4758)
    #dbg_value(i64 %i.n, !4717, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !4758)
  invoke void @_RNvNtCsexYYUdYSQU6_5alloc7raw_vec12handle_error(i64 noundef %i.m, i64 %i.n) #22
          to label %.noexc29.i unwind label %.loopexit.split-lp.i, !dbg !4759, !noalias !4653

.noexc29.i:                                       ; preds = %bb.d
  unreachable, !dbg !4759

bb.e:                                             ; preds = %.noexc.i
  %i.o = load ptr, ptr %i.h, align 8, !dbg !4760, !noalias !4751, !nonnull !30, !noundef !30 ; 2 uses
    #dbg_value(i64 %i.m, !4715, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !4761)
    #dbg_value(ptr %i.o, !4715, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !4761)
    #dbg_value(ptr poison, !4724, !DIExpression(), !4762)
  %i.p = icmp ule i64 %.val28.i, %i.m, !dbg !4763
    #dbg_value(i1 true, !4764, !DIExpression(DW_OP_not, DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !4767)
  tail call void @llvm.assume(i1 %i.p), !dbg !4769
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !4770, !noalias !4751
    #dbg_value(i64 %i.m, !4694, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !4771)
    #dbg_value(ptr %i.o, !4694, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !4771)
    #dbg_value(i64 0, !4694, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !4771)
  %.not.i.i.i = icmp eq i64 %.val28.i, 0, !dbg !4772
  br i1 %.not.i.i.i, label %bb.g, label %bb.f, !dbg !4772

bb.f:                                             ; preds = %bb.e
    #dbg_value(ptr %.val27.i, !4738, !DIExpression(), !4740)
    #dbg_value(ptr %.val27.i, !4745, !DIExpression(), !4747)
    #dbg_value(ptr %i.o, !4739, !DIExpression(), !4740)
    #dbg_value(ptr %i.o, !4746, !DIExpression(), !4747)
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.o, ptr nonnull readonly align 1 %.val27.i, i64 %.val28.i, i1 false), !dbg !4773, !noalias !4751
    #dbg_value(i64 %.val28.i, !4694, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !4771)
  br label %bb.g, !dbg !4774

bb.g:                                             ; preds = %bb.f, %bb.e
    #dbg_value(i64 %.val28.i, !4694, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !4771)
    #dbg_value(i64 %i.m, !4775, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !4785)
    #dbg_value(i64 %i.m, !4787, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !4797)
    #dbg_value(ptr %i.o, !4775, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !4785)
    #dbg_value(ptr %i.o, !4787, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !4797)
    #dbg_value(i64 %.val28.i, !4775, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !4785)
    #dbg_value(i64 %.val28.i, !4787, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !4797)
    #dbg_value(ptr poison, !4781, !DIExpression(DW_OP_deref, DW_OP_LLVM_fragment, 0, 64), !4785)
    #dbg_declare(ptr poison, !4782, !DIExpression(), !4799)
    #dbg_value(ptr poison, !4793, !DIExpression(DW_OP_deref, DW_OP_plus_uconst, 16), !4797)
    #dbg_value(ptr poison, !4794, !DIExpression(DW_OP_deref, DW_OP_LLVM_fragment, 0, 64), !4797)
  %i.q = getelementptr inbounds nuw [24 x i8], ptr %.sroa.8.0.copyload, i64 %.val22.i, !dbg !4800 ; 3 uses
  store i64 %i.m, ptr %i.q, align 8, !dbg !4805, !noalias !4810
  %.sroa.42.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.q, i64 8, !dbg !4805
  store ptr %i.o, ptr %.sroa.42.0..sroa_idx.i.i, align 8, !dbg !4805, !noalias !4810
  %.sroa.53.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.q, i64 16, !dbg !4805
  store i64 %.val28.i, ptr %.sroa.53.0..sroa_idx.i.i, align 8, !dbg !4805, !noalias !4810
  %i.r = add i64 %.val22.i, 1, !dbg !4815         ; 2 uses
  %i.s = add nuw i64 %.sroa.01.0.i, 1, !dbg !4818 ; 2 uses
    #dbg_value(i64 %i.s, !4561, !DIExpression(), !4627)
    #dbg_value(i64 %i.s, !4603, !DIExpression(), !4604)
  %i.t = icmp eq i64 %i.s, %i.f, !dbg !4819
  br i1 %i.t, label %_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterRShENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB10_8adapters3map8map_foldRBQ_INtNtCsexYYUdYSQU6_5alloc3vec3VechEuNCNvMNtNtCsa2e0UnRrdBM_12tokio_quiche8settings4quicNtB2X_12QuicSettings12default_alpn0NCINvNvBU_8for_each4callB2i_NCINvMsk_B2l_IB2j_B2i_E14extend_trustedINtB1K_3MapBF_B2S_EE0E0E0EB31_.exit, label %bb.c, !dbg !4819

.loopexit.i:                                      ; preds = %bb.c
  %lpad.loopexit.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.h

.loopexit.split-lp.i:                             ; preds = %bb.d
  %lpad.loopexit.split-lp.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.h

bb.h:                                             ; preds = %.loopexit.split-lp.i, %.loopexit.i
end_hunk_0
begin_hunk_1_@_RNCINvMs0_NtNtCsG258MDvU3F_3std4sync4onceNtB8_4Once9call_onceNCNvCsa2e0UnRrdBM_12tokio_quiche19capture_quiche_logs0E0B11_:bb.a
    #dbg_value(ptr %i.s, !5737, !DIExpression(), !5739)
  %i.t = atomicrmw sub ptr %i.s, i64 1 release, align 8, !dbg !5750, !noalias !5748
  %i.u = icmp eq i64 %i.t, 1, !dbg !5751
  br i1 %i.u, label %bb.e, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtNtCsfj33toqT4A8_8lock_api6rwlock6RwLockNtNtCscY3bQ1mWWb1_11parking_lot10raw_rwlock9RawRwLockNtNtNtNtCsgd5oGICQiN3_11foundations9telemetry3log8internal27LoggerWithKvNestingTrackingEEECsa2e0UnRrdBM_12tokio_quiche.exit.i, !dbg !5751

bb.e:                                             ; preds = %bb.d
    #dbg_value(i8 2, !1968, !DIExpression(), !5752)
  fence acquire, !dbg !5754
  invoke void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcINtNtCsfj33toqT4A8_8lock_api6rwlock6RwLockNtNtCscY3bQ1mWWb1_11parking_lot10raw_rwlock9RawRwLockNtNtNtNtCsgd5oGICQiN3_11foundations9telemetry3log8internal27LoggerWithKvNestingTrackingEE9drop_slowB2l_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.e) #20
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtNtCsfj33toqT4A8_8lock_api6rwlock6RwLockNtNtCscY3bQ1mWWb1_11parking_lot10raw_rwlock9RawRwLockNtNtNtNtCsgd5oGICQiN3_11foundations9telemetry3log8internal27LoggerWithKvNestingTrackingEEECsa2e0UnRrdBM_12tokio_quiche.exit.i unwind label %bb.u, !dbg !5755

_RNvMs8_NtCscY3bQ1mWWb1_11parking_lot10raw_rwlockNtB5_9RawRwLock20try_lock_shared_fast.exit.i: ; preds = %.noexc36.i
  %i.v = add nuw i64 %i.n, 16, !dbg !5756
    #dbg_value(i64 %i.v, !5642, !DIExpression(), !5757)
    #dbg_value(i64 %i.v, !5683, !DIExpression(), !5685)
    #dbg_value(ptr %i.m, !5681, !DIExpression(), !5758)
    #dbg_value(ptr %i.m, !5759, !DIExpression(), !5771)
    #dbg_value(i64 %i.n, !5764, !DIExpression(), !5771)
    #dbg_value(i64 %i.v, !5765, !DIExpression(), !5771)
    #dbg_value(i8 2, !5766, !DIExpression(), !5771)
    #dbg_value(i8 0, !5767, !DIExpression(), !5771)
  %i.w = cmpxchg weak ptr %i.m, i64 %i.n, i64 %i.v acquire monotonic, align 8, !dbg !5773
  %i.x = extractvalue { i64, i1 } %i.w, 1, !dbg !5773
  br i1 %i.x, label %bb.f, label %_RNvMs8_NtCscY3bQ1mWWb1_11parking_lot10raw_rwlockNtB5_9RawRwLock20try_lock_shared_fast.exit.thread.i, !dbg !5774, !prof !5775

_RNvMs8_NtCscY3bQ1mWWb1_11parking_lot10raw_rwlockNtB5_9RawRwLock20try_lock_shared_fast.exit.thread.i: ; preds = %_RNvMs8_NtCscY3bQ1mWWb1_11parking_lot10raw_rwlockNtB5_9RawRwLock20try_lock_shared_fast.exit.i, %.noexc36.i
  %i.y = invoke noundef zeroext i1 @_RNvMs8_NtCscY3bQ1mWWb1_11parking_lot10raw_rwlockNtB5_9RawRwLock16lock_shared_slow(ptr noundef nonnull align 8 %i.m, i1 noundef zeroext false, i64 undef, i32 noundef -1)
          to label %bb.f unwind label %bb.d, !dbg !5776 ; 0 uses

bb.f:                                             ; preds = %_RNvMs8_NtCscY3bQ1mWWb1_11parking_lot10raw_rwlockNtB5_9RawRwLock20try_lock_shared_fast.exit.thread.i, %_RNvMs8_NtCscY3bQ1mWWb1_11parking_lot10raw_rwlockNtB5_9RawRwLock20try_lock_shared_fast.exit.i
    #dbg_value(ptr undef, !5385, !DIExpression(), !5427)
    #dbg_value(ptr %i.m, !5777, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !5786)
  %i.z = getelementptr inbounds nuw i8, ptr %i.j, i64 24, !dbg !5788 ; 2 uses
    #dbg_value(ptr %i.z, !5573, !DIExpression(), !5789)
    #dbg_value(ptr %i.z, !5585, !DIExpression(), !5790)
    #dbg_value(ptr %i.z, !5791, !DIExpression(), !5794)
  %i.aa = load ptr, ptr %i.z, align 8, !dbg !5796, !nonnull !30, !noundef !30
    #dbg_value(ptr %i.aa, !5497, !DIExpression(), !5800)
    #dbg_value(ptr %i.aa, !5534, !DIExpression(), !5590)
  %i.ab = atomicrmw add ptr %i.aa, i64 1 monotonic, align 8, !dbg !5801
    #dbg_value(i64 %i.ab, !5586, !DIExpression(), !5802)
  %i.ac = icmp slt i64 %i.ab, 0, !dbg !5803
  br i1 %i.ac, label %bb.h, label %bb.g, !dbg !5803

bb.g:                                             ; preds = %bb.f
  %i.ad = load <2 x ptr>, ptr %i.z, align 8, !dbg !5804
    #dbg_value(ptr %i.z, !5565, !DIExpression(DW_OP_plus_uconst, 16, DW_OP_stack_value), !5805)
    #dbg_value(ptr %i.z, !5554, !DIExpression(DW_OP_plus_uconst, 16, DW_OP_stack_value), !5806)
    #dbg_value(ptr %i.z, !5807, !DIExpression(DW_OP_plus_uconst, 16, DW_OP_stack_value), !5810)
  %i.ae = getelementptr inbounds nuw i8, ptr %i.j, i64 40, !dbg !5812 ; 2 uses
  %i.af = load ptr, ptr %i.ae, align 8, !dbg !5812, !nonnull !30, !noundef !30
    #dbg_value(ptr %i.af, !5497, !DIExpression(), !5816)
    #dbg_value(ptr %i.af, !5534, !DIExpression(), !5575)
  %i.ag = atomicrmw add ptr %i.af, i64 1 monotonic, align 8, !dbg !5817
    #dbg_value(i64 %i.ag, !5555, !DIExpression(), !5818)
  %i.ah = icmp slt i64 %i.ag, 0, !dbg !5819
  br i1 %i.ah, label %bb.k, label %bb.i, !dbg !5819

bb.h:                                             ; preds = %bb.f
  tail call void @llvm.trap(), !dbg !5820
  unreachable, !dbg !5820

bb.i:                                             ; preds = %bb.g
  store <2 x ptr> %i.ad, ptr %i.f, align 16, !dbg !5789
  %i.ai = getelementptr inbounds nuw i8, ptr %i.f, i64 16, !dbg !5789
  %i.aj = load <2 x ptr>, ptr %i.ae, align 8, !dbg !5821
  store <2 x ptr> %i.aj, ptr %i.ai, align 16, !dbg !5789
    #dbg_value(ptr poison, !5822, !DIExpression(), !5830)
    #dbg_value(ptr poison, !5832, !DIExpression(), !5836)
    #dbg_value(ptr %i.m, !5838, !DIExpression(), !5843)
    #dbg_value(i64 16, !5845, !DIExpression(), !5850)
    #dbg_value(i8 1, !5849, !DIExpression(), !5850)
    #dbg_value(i64 16, !5852, !DIExpression(), !5857)
    #dbg_value(i8 1, !5856, !DIExpression(), !5857)
    #dbg_value(ptr %i.m, !5848, !DIExpression(), !5859)
    #dbg_value(ptr %i.m, !5855, !DIExpression(), !5857)
  %i.ak = atomicrmw sub ptr %i.m, i64 16 release, align 8, !dbg !5860
    #dbg_value(i64 %i.ak, !5841, !DIExpression(), !5861)
  %i.al = and i64 %i.ak, -14, !dbg !5862
  %i.am = icmp eq i64 %i.al, 18, !dbg !5862
  br i1 %i.am, label %bb.j, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsfj33toqT4A8_8lock_api6rwlock15RwLockReadGuardNtNtCscY3bQ1mWWb1_11parking_lot10raw_rwlock9RawRwLockNtNtNtNtCsgd5oGICQiN3_11foundations9telemetry3log8internal27LoggerWithKvNestingTrackingEECsa2e0UnRrdBM_12tokio_quiche.exit.i, !dbg !5862, !prof !2282

bb.j:                                             ; preds = %bb.i
  invoke void @_RNvMs8_NtCscY3bQ1mWWb1_11parking_lot10raw_rwlockNtB5_9RawRwLock18unlock_shared_slow(ptr noundef nonnull align 8 %i.m)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsfj33toqT4A8_8lock_api6rwlock15RwLockReadGuardNtNtCscY3bQ1mWWb1_11parking_lot10raw_rwlock9RawRwLockNtNtNtNtCsgd5oGICQiN3_11foundations9telemetry3log8internal27LoggerWithKvNestingTrackingEECsa2e0UnRrdBM_12tokio_quiche.exit.i unwind label %bb.l, !dbg !5863

bb.k:                                             ; preds = %bb.g
  tail call void @llvm.trap(), !dbg !5864
  unreachable, !dbg !5864

bb.l:                                             ; preds = %bb.j
  %i.an = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5865), !dbg !5698
    #dbg_value(ptr %i.e, !5699, !DIExpression(), !5868)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5870), !dbg !5873
    #dbg_value(ptr %i.e, !5713, !DIExpression(), !5874)
    #dbg_value(ptr %i.e, !5718, !DIExpression(), !5876)
    #dbg_value(i64 1, !5727, !DIExpression(), !5878)
    #dbg_value(i8 1, !5731, !DIExpression(), !5878)
    #dbg_value(i64 1, !5734, !DIExpression(), !5880)
    #dbg_value(i8 1, !5738, !DIExpression(), !5880)
  %i.ao = load ptr, ptr %i.e, align 8, !dbg !5882, !alias.scope !5884, !nonnull !30, !noundef !30
    #dbg_value(ptr %i.ao, !5730, !DIExpression(), !5885)
    #dbg_value(ptr %i.ao, !5737, !DIExpression(), !5880)
  %i.ap = atomicrmw sub ptr %i.ao, i64 1 release, align 8, !dbg !5886, !noalias !5884
  %i.aq = icmp eq i64 %i.ap, 1, !dbg !5887
  br i1 %i.aq, label %bb.m, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtNtCsfj33toqT4A8_8lock_api6rwlock6RwLockNtNtCscY3bQ1mWWb1_11parking_lot10raw_rwlock9RawRwLockNtNtNtNtCsgd5oGICQiN3_11foundations9telemetry3log8internal27LoggerWithKvNestingTrackingEEECsa2e0UnRrdBM_12tokio_quiche.exit43.i, !dbg !5887

bb.m:                                             ; preds = %bb.l
    #dbg_value(i8 2, !1968, !DIExpression(), !5888)
  fence acquire, !dbg !5890
  invoke void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcINtNtCsfj33toqT4A8_8lock_api6rwlock6RwLockNtNtCscY3bQ1mWWb1_11parking_lot10raw_rwlock9RawRwLockNtNtNtNtCsgd5oGICQiN3_11foundations9telemetry3log8internal27LoggerWithKvNestingTrackingEE9drop_slowB2l_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.e) #20
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtNtCsfj33toqT4A8_8lock_api6rwlock6RwLockNtNtCscY3bQ1mWWb1_11parking_lot10raw_rwlock9RawRwLockNtNtNtNtCsgd5oGICQiN3_11foundations9telemetry3log8internal27LoggerWithKvNestingTrackingEEECsa2e0UnRrdBM_12tokio_quiche.exit43.i unwind label %bb.u, !dbg !5891

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsfj33toqT4A8_8lock_api6rwlock15RwLockReadGuardNtNtCscY3bQ1mWWb1_11parking_lot10raw_rwlock9RawRwLockNtNtNtNtCsgd5oGICQiN3_11foundations9telemetry3log8internal27LoggerWithKvNestingTrackingEECsa2e0UnRrdBM_12tokio_quiche.exit.i: ; preds = %bb.j, %bb.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5892), !dbg !5698
    #dbg_value(ptr %i.e, !5699, !DIExpression(), !5895)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5897), !dbg !5900
    #dbg_value(ptr %i.e, !5713, !DIExpression(), !5901)
    #dbg_value(ptr %i.e, !5718, !DIExpression(), !5903)
    #dbg_value(i64 1, !5727, !DIExpression(), !5905)
    #dbg_value(i8 1, !5731, !DIExpression(), !5905)
    #dbg_value(i64 1, !5734, !DIExpression(), !5907)
    #dbg_value(i8 1, !5738, !DIExpression(), !5907)
  %i.ar = load ptr, ptr %i.e, align 8, !dbg !5909, !alias.scope !5911, !nonnull !30, !noundef !30
    #dbg_value(ptr %i.ar, !5730, !DIExpression(), !5912)
    #dbg_value(ptr %i.ar, !5737, !DIExpression(), !5907)
  %i.as = atomicrmw sub ptr %i.ar, i64 1 release, align 8, !dbg !5913, !noalias !5911
  %i.at = icmp eq i64 %i.as, 1, !dbg !5914
  br i1 %i.at, label %bb.n, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtNtCsfj33toqT4A8_8lock_api6rwlock6RwLockNtNtCscY3bQ1mWWb1_11parking_lot10raw_rwlock9RawRwLockNtNtNtNtCsgd5oGICQiN3_11foundations9telemetry3log8internal27LoggerWithKvNestingTrackingEEECsa2e0UnRrdBM_12tokio_quiche.exit45.i, !dbg !5914

bb.n:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsfj33toqT4A8_8lock_api6rwlock15RwLockReadGuardNtNtCscY3bQ1mWWb1_11parking_lot10raw_rwlock9RawRwLockNtNtNtNtCsgd5oGICQiN3_11foundations9telemetry3log8internal27LoggerWithKvNestingTrackingEECsa2e0UnRrdBM_12tokio_quiche.exit.i
    #dbg_value(i8 2, !1968, !DIExpression(), !5915)
  fence acquire, !dbg !5917
  invoke void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcINtNtCsfj33toqT4A8_8lock_api6rwlock6RwLockNtNtCscY3bQ1mWWb1_11parking_lot10raw_rwlock9RawRwLockNtNtNtNtCsgd5oGICQiN3_11foundations9telemetry3log8internal27LoggerWithKvNestingTrackingEE9drop_slowB2l_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.e) #20
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtNtCsfj33toqT4A8_8lock_api6rwlock6RwLockNtNtCscY3bQ1mWWb1_11parking_lot10raw_rwlock9RawRwLockNtNtNtNtCsgd5oGICQiN3_11foundations9telemetry3log8internal27LoggerWithKvNestingTrackingEEECsa2e0UnRrdBM_12tokio_quiche.exit45.i unwind label %bb.p, !dbg !5918

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtNtCsfj33toqT4A8_8lock_api6rwlock6RwLockNtNtCscY3bQ1mWWb1_11parking_lot10raw_rwlock9RawRwLockNtNtNtNtCsgd5oGICQiN3_11foundations9telemetry3log8internal27LoggerWithKvNestingTrackingEEECsa2e0UnRrdBM_12tokio_quiche.exit43.i: ; preds = %bb.p, %bb.m, %bb.l
  %.pn.i = phi { ptr, i32 } [ %i.ax, %bb.p ], [ %i.an, %bb.m ], [ %i.an, %bb.l ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !5919), !dbg !5698
    #dbg_value(ptr %i.d, !5699, !DIExpression(), !5922)
  call void @llvm.experimental.noalias.scope.decl(metadata !5924), !dbg !5927
    #dbg_value(ptr %i.d, !5713, !DIExpression(), !5928)
    #dbg_value(ptr %i.d, !5718, !DIExpression(), !5930)
    #dbg_value(i64 1, !5727, !DIExpression(), !5932)
    #dbg_value(i8 1, !5731, !DIExpression(), !5932)
    #dbg_value(i64 1, !5734, !DIExpression(), !5934)
    #dbg_value(i8 1, !5738, !DIExpression(), !5934)
  %i.au = load ptr, ptr %i.d, align 8, !dbg !5936, !alias.scope !5938, !nonnull !30, !noundef !30
    #dbg_value(ptr %i.au, !5730, !DIExpression(), !5939)
    #dbg_value(ptr %i.au, !5737, !DIExpression(), !5934)
  %i.av = atomicrmw sub ptr %i.au, i64 1 release, align 8, !dbg !5940, !noalias !5938
  %i.aw = icmp eq i64 %i.av, 1, !dbg !5941
  br i1 %i.aw, label %bb.o, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtNtCsfj33toqT4A8_8lock_api6rwlock6RwLockNtNtCscY3bQ1mWWb1_11parking_lot10raw_rwlock9RawRwLockNtNtNtNtCsgd5oGICQiN3_11foundations9telemetry3log8internal27LoggerWithKvNestingTrackingEEECsa2e0UnRrdBM_12tokio_quiche.exit47.thread.i, !dbg !5941

bb.o:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtNtCsfj33toqT4A8_8lock_api6rwlock6RwLockNtNtCscY3bQ1mWWb1_11parking_lot10raw_rwlock9RawRwLockNtNtNtNtCsgd5oGICQiN3_11foundations9telemetry3log8internal27LoggerWithKvNestingTrackingEEECsa2e0UnRrdBM_12tokio_quiche.exit43.i
    #dbg_value(i8 2, !1968, !DIExpression(), !5942)
  fence acquire, !dbg !5944
  invoke void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcINtNtCsfj33toqT4A8_8lock_api6rwlock6RwLockNtNtCscY3bQ1mWWb1_11parking_lot10raw_rwlock9RawRwLockNtNtNtNtCsgd5oGICQiN3_11foundations9telemetry3log8internal27LoggerWithKvNestingTrackingEE9drop_slowB2l_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.d) #20
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtNtCsfj33toqT4A8_8lock_api6rwlock6RwLockNtNtCscY3bQ1mWWb1_11parking_lot10raw_rwlock9RawRwLockNtNtNtNtCsgd5oGICQiN3_11foundations9telemetry3log8internal27LoggerWithKvNestingTrackingEEECsa2e0UnRrdBM_12tokio_quiche.exit47.thread.i unwind label %bb.u, !dbg !5945

bb.p:                                             ; preds = %bb.n
  %i.ax = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtNtCsfj33toqT4A8_8lock_api6rwlock6RwLockNtNtCscY3bQ1mWWb1_11parking_lot10raw_rwlock9RawRwLockNtNtNtNtCsgd5oGICQiN3_11foundations9telemetry3log8internal27LoggerWithKvNestingTrackingEEECsa2e0UnRrdBM_12tokio_quiche.exit43.i

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtNtCsfj33toqT4A8_8lock_api6rwlock6RwLockNtNtCscY3bQ1mWWb1_11parking_lot10raw_rwlock9RawRwLockNtNtNtNtCsgd5oGICQiN3_11foundations9telemetry3log8internal27LoggerWithKvNestingTrackingEEECsa2e0UnRrdBM_12tokio_quiche.exit45.i: ; preds = %bb.n, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsfj33toqT4A8_8lock_api6rwlock15RwLockReadGuardNtNtCscY3bQ1mWWb1_11parking_lot10raw_rwlock9RawRwLockNtNtNtNtCsgd5oGICQiN3_11foundations9telemetry3log8internal27LoggerWithKvNestingTrackingEECsa2e0UnRrdBM_12tokio_quiche.exit.i
  call void @llvm.experimental.noalias.scope.decl(metadata !5946), !dbg !5698
    #dbg_value(ptr %i.d, !5699, !DIExpression(), !5949)
  call void @llvm.experimental.noalias.scope.decl(metadata !5951), !dbg !5954
    #dbg_value(ptr %i.d, !5713, !DIExpression(), !5955)
    #dbg_value(ptr %i.d, !5718, !DIExpression(), !5957)
    #dbg_value(i64 1, !5727, !DIExpression(), !5959)
    #dbg_value(i8 1, !5731, !DIExpression(), !5959)
    #dbg_value(i64 1, !5734, !DIExpression(), !5961)
    #dbg_value(i8 1, !5738, !DIExpression(), !5961)
  %i.ay = load ptr, ptr %i.d, align 8, !dbg !5963, !alias.scope !5965, !nonnull !30, !noundef !30
    #dbg_value(ptr %i.ay, !5730, !DIExpression(), !5966)
    #dbg_value(ptr %i.ay, !5737, !DIExpression(), !5961)
  %i.az = atomicrmw sub ptr %i.ay, i64 1 release, align 8, !dbg !5967, !noalias !5965
  %i.ba = icmp eq i64 %i.az, 1, !dbg !5968
  br i1 %i.ba, label %bb.q, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtNtCsfj33toqT4A8_8lock_api6rwlock6RwLockNtNtCscY3bQ1mWWb1_11parking_lot10raw_rwlock9RawRwLockNtNtNtNtCsgd5oGICQiN3_11foundations9telemetry3log8internal27LoggerWithKvNestingTrackingEEECsa2e0UnRrdBM_12tokio_quiche.exit49.i, !dbg !5968

bb.q:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtNtCsfj33toqT4A8_8lock_api6rwlock6RwLockNtNtCscY3bQ1mWWb1_11parking_lot10raw_rwlock9RawRwLockNtNtNtNtCsgd5oGICQiN3_11foundations9telemetry3log8internal27LoggerWithKvNestingTrackingEEECsa2e0UnRrdBM_12tokio_quiche.exit45.i
    #dbg_value(i8 2, !1968, !DIExpression(), !5969)
  fence acquire, !dbg !5971
  invoke void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcINtNtCsfj33toqT4A8_8lock_api6rwlock6RwLockNtNtCscY3bQ1mWWb1_11parking_lot10raw_rwlock9RawRwLockNtNtNtNtCsgd5oGICQiN3_11foundations9telemetry3log8internal27LoggerWithKvNestingTrackingEE9drop_slowB2l_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.d) #20
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtNtCsfj33toqT4A8_8lock_api6rwlock6RwLockNtNtCscY3bQ1mWWb1_11parking_lot10raw_rwlock9RawRwLockNtNtNtNtCsgd5oGICQiN3_11foundations9telemetry3log8internal27LoggerWithKvNestingTrackingEEECsa2e0UnRrdBM_12tokio_quiche.exit49.i unwind label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtNtCsfj33toqT4A8_8lock_api6rwlock6RwLockNtNtCscY3bQ1mWWb1_11parking_lot10raw_rwlock9RawRwLockNtNtNtNtCsgd5oGICQiN3_11foundations9telemetry3log8internal27LoggerWithKvNestingTrackingEEECsa2e0UnRrdBM_12tokio_quiche.exit47.thread60.i, !dbg !5972

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtNtCsfj33toqT4A8_8lock_api6rwlock6RwLockNtNtCscY3bQ1mWWb1_11parking_lot10raw_rwlock9RawRwLockNtNtNtNtCsgd5oGICQiN3_11foundations9telemetry3log8internal27LoggerWithKvNestingTrackingEEECsa2e0UnRrdBM_12tokio_quiche.exit47.thread60.i: ; preds = %bb.q
  %i.bb = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtNtCsfj33toqT4A8_8lock_api6rwlock6RwLockNtNtCscY3bQ1mWWb1_11parking_lot10raw_rwlock9RawRwLockNtNtNtNtCsgd5oGICQiN3_11foundations9telemetry3log8internal27LoggerWithKvNestingTrackingEEECsa2e0UnRrdBM_12tokio_quiche.exit47.thread.i, !dbg !5973

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtNtCsfj33toqT4A8_8lock_api6rwlock6RwLockNtNtCscY3bQ1mWWb1_11parking_lot10raw_rwlock9RawRwLockNtNtNtNtCsgd5oGICQiN3_11foundations9telemetry3log8internal27LoggerWithKvNestingTrackingEEECsa2e0UnRrdBM_12tokio_quiche.exit49.i: ; preds = %bb.q, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtNtCsfj33toqT4A8_8lock_api6rwlock6RwLockNtNtCscY3bQ1mWWb1_11parking_lot10raw_rwlock9RawRwLockNtNtNtNtCsgd5oGICQiN3_11foundations9telemetry3log8internal27LoggerWithKvNestingTrackingEEECsa2e0UnRrdBM_12tokio_quiche.exit45.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !dbg !5698
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !dbg !5698
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !5974
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !5975
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.b, ptr noundef nonnull align 16 dereferenceable(32) %i.f, i64 32, i1 false), !dbg !5975
  %i.bc = call noundef zeroext i1 @_RNvCs7TgmdpBBVD5_10slog_scope17set_global_logger(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(32) %i.b), !dbg !5976
  %i.bd = zext i1 %i.bc to i8, !dbg !5976
  store i8 %i.bd, ptr %i.c, align 1, !dbg !5976
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !5977
  %i.be = invoke noundef i8 @_RNvNtNtCsgd5oGICQiN3_11foundations9telemetry3log9verbosity()
          to label %switch.lookup unwind label %bb.r, !dbg !5978

bb.r:                                             ; preds = %bb.t, %switch.lookup, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtNtCsfj33toqT4A8_8lock_api6rwlock6RwLockNtNtCscY3bQ1mWWb1_11parking_lot10raw_rwlock9RawRwLockNtNtNtNtCsgd5oGICQiN3_11foundations9telemetry3log8internal27LoggerWithKvNestingTrackingEEECsa2e0UnRrdBM_12tokio_quiche.exit49.i
  %i.bf = landingpad { ptr, i32 }
          cleanup
    #dbg_value(ptr %i.c, !5979, !DIExpression(), !5985)
  invoke void @_RNvXs0_Cs7TgmdpBBVD5_10slog_scopeNtB5_17GlobalLoggerGuardNtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull dereferenceable(1) %i.c)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtNtCsfj33toqT4A8_8lock_api6rwlock6RwLockNtNtCscY3bQ1mWWb1_11parking_lot10raw_rwlock9RawRwLockNtNtNtNtCsgd5oGICQiN3_11foundations9telemetry3log8internal27LoggerWithKvNestingTrackingEEECsa2e0UnRrdBM_12tokio_quiche.exit47.thread57.i unwind label %bb.u, !dbg !5987

switch.lookup:                                    ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtNtCsfj33toqT4A8_8lock_api6rwlock6RwLockNtNtCscY3bQ1mWWb1_11parking_lot10raw_rwlock9RawRwLockNtNtNtNtCsgd5oGICQiN3_11foundations9telemetry3log8internal27LoggerWithKvNestingTrackingEEECsa2e0UnRrdBM_12tokio_quiche.exit49.i
  %i.bg = zext nneg i8 %i.be to i64, !dbg !5988
  %switch.gep = getelementptr inbounds nuw i8, ptr @switch.table._RNCINvMs0_NtNtCsG258MDvU3F_3std4sync4onceNtB8_4Once9call_onceNCNvCsa2e0UnRrdBM_12tokio_quiche19capture_quiche_logs0E0B11_, i64 %i.bg, !dbg !5988
  %switch.load = load i8, ptr %switch.gep, align 1, !dbg !5988
  %switch.ext = zext i8 %switch.load to i64, !dbg !5988
    #dbg_value(i64 %switch.ext, !5442, !DIExpression(), !5989)
  %i.bh = invoke noundef zeroext i1 @_RNvCsiR3sYCIvpjl_11slog_stdlog15init_with_level(i64 noundef %switch.ext)
          to label %bb.s unwind label %bb.r, !dbg !5990

bb.s:                                             ; preds = %switch.lookup
    #dbg_value(i1 %i.bh, !5991, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !6016)
    #dbg_declare(ptr %i.a, !6014, !DIExpression(), !6018)
  br i1 %i.bh, label %bb.t, label %_RNCNvCsa2e0UnRrdBM_12tokio_quiche19capture_quiche_logs0B3_.exit, !dbg !6019, !prof !2282

bb.t:                                             ; preds = %bb.s
  invoke void @_RNvNtCskKLDkoKarTP_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @96, i64 noundef 43, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @97, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @26) #24
          to label %.noexc.i unwind label %bb.r, !dbg !6020

.noexc.i:                                         ; preds = %bb.t
  unreachable, !dbg !6020

bb.u:                                             ; preds = %bb.v, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtNtCsfj33toqT4A8_8lock_api6rwlock6RwLockNtNtCscY3bQ1mWWb1_11parking_lot10raw_rwlock9RawRwLockNtNtNtNtCsgd5oGICQiN3_11foundations9telemetry3log8internal27LoggerWithKvNestingTrackingEEECsa2e0UnRrdBM_12tokio_quiche.exit47.thread.i, %bb.r, %bb.o, %bb.m, %bb.e
  %i.bi = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #21, !dbg !5490
  unreachable, !dbg !5490

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtNtCsfj33toqT4A8_8lock_api6rwlock6RwLockNtNtCscY3bQ1mWWb1_11parking_lot10raw_rwlock9RawRwLockNtNtNtNtCsgd5oGICQiN3_11foundations9telemetry3log8internal27LoggerWithKvNestingTrackingEEECsa2e0UnRrdBM_12tokio_quiche.exit47.thread57.i: ; preds = %bb.v, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtNtCsfj33toqT4A8_8lock_api6rwlock6RwLockNtNtCscY3bQ1mWWb1_11parking_lot10raw_rwlock9RawRwLockNtNtNtNtCsgd5oGICQiN3_11foundations9telemetry3log8internal27LoggerWithKvNestingTrackingEEECsa2e0UnRrdBM_12tokio_quiche.exit.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtNtCsfj33toqT4A8_8lock_api6rwlock6RwLockNtNtCscY3bQ1mWWb1_11parking_lot10raw_rwlock9RawRwLockNtNtNtNtCsgd5oGICQiN3_11foundations9telemetry3log8internal27LoggerWithKvNestingTrackingEEECsa2e0UnRrdBM_12tokio_quiche.exit47.thread.i, %bb.r
  %.pn33.pn.i = phi { ptr, i32 } [ %.pn3356.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtNtCsfj33toqT4A8_8lock_api6rwlock6RwLockNtNtCscY3bQ1mWWb1_11parking_lot10raw_rwlock9RawRwLockNtNtNtNtCsgd5oGICQiN3_11foundations9telemetry3log8internal27LoggerWithKvNestingTrackingEEECsa2e0UnRrdBM_12tokio_quiche.exit47.thread.i ], [ %i.r, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtNtCsfj33toqT4A8_8lock_api6rwlock6RwLockNtNtCscY3bQ1mWWb1_11parking_lot10raw_rwlock9RawRwLockNtNtNtNtCsgd5oGICQiN3_11foundations9telemetry3log8internal27LoggerWithKvNestingTrackingEEECsa2e0UnRrdBM_12tokio_quiche.exit.i ], [ %i.bf, %bb.r ], [ %i.r, %bb.v ]
  resume { ptr, i32 } %.pn33.pn.i, !dbg !5490

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtNtCsfj33toqT4A8_8lock_api6rwlock6RwLockNtNtCscY3bQ1mWWb1_11parking_lot10raw_rwlock9RawRwLockNtNtNtNtCsgd5oGICQiN3_11foundations9telemetry3log8internal27LoggerWithKvNestingTrackingEEECsa2e0UnRrdBM_12tokio_quiche.exit47.thread.i: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtNtCsfj33toqT4A8_8lock_api6rwlock6RwLockNtNtCscY3bQ1mWWb1_11parking_lot10raw_rwlock9RawRwLockNtNtNtNtCsgd5oGICQiN3_11foundations9telemetry3log8internal27LoggerWithKvNestingTrackingEEECsa2e0UnRrdBM_12tokio_quiche.exit47.thread60.i, %bb.o, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtNtCsfj33toqT4A8_8lock_api6rwlock6RwLockNtNtCscY3bQ1mWWb1_11parking_lot10raw_rwlock9RawRwLockNtNtNtNtCsgd5oGICQiN3_11foundations9telemetry3log8internal27LoggerWithKvNestingTrackingEEECsa2e0UnRrdBM_12tokio_quiche.exit43.i
  %.pn3356.i = phi { ptr, i32 } [ %i.bb, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtNtCsfj33toqT4A8_8lock_api6rwlock6RwLockNtNtCscY3bQ1mWWb1_11parking_lot10raw_rwlock9RawRwLockNtNtNtNtCsgd5oGICQiN3_11foundations9telemetry3log8internal27LoggerWithKvNestingTrackingEEECsa2e0UnRrdBM_12tokio_quiche.exit47.thread60.i ], [ %.pn.i, %bb.o ], [ %.pn.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtNtCsfj33toqT4A8_8lock_api6rwlock6RwLockNtNtCscY3bQ1mWWb1_11parking_lot10raw_rwlock9RawRwLockNtNtNtNtCsgd5oGICQiN3_11foundations9telemetry3log8internal27LoggerWithKvNestingTrackingEEECsa2e0UnRrdBM_12tokio_quiche.exit43.i ]
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtCsjUUWHMG5046_4slog6LoggerINtNtCsexYYUdYSQU6_5alloc4sync3ArcDNtBE_26SendSyncRefUnwindSafeDrainp3Errzp2OkuEL_EEECsa2e0UnRrdBM_12tokio_quiche(ptr noalias nofree noundef align 8 dereferenceable(32) %i.f) #23
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtNtCsfj33toqT4A8_8lock_api6rwlock6RwLockNtNtCscY3bQ1mWWb1_11parking_lot10raw_rwlock9RawRwLockNtNtNtNtCsgd5oGICQiN3_11foundations9telemetry3log8internal27LoggerWithKvNestingTrackingEEECsa2e0UnRrdBM_12tokio_quiche.exit47.thread57.i unwind label %bb.u, !dbg !5973

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtNtCsfj33toqT4A8_8lock_api6rwlock6RwLockNtNtCscY3bQ1mWWb1_11parking_lot10raw_rwlock9RawRwLockNtNtNtNtCsgd5oGICQiN3_11foundations9telemetry3log8internal27LoggerWithKvNestingTrackingEEECsa2e0UnRrdBM_12tokio_quiche.exit.i: ; preds = %bb.e, %bb.d
  call void @llvm.experimental.noalias.scope.decl(metadata !6021), !dbg !5698
    #dbg_value(ptr %i.d, !5699, !DIExpression(), !6024)
  call void @llvm.experimental.noalias.scope.decl(metadata !6026), !dbg !6029
    #dbg_value(ptr %i.d, !5713, !DIExpression(), !6030)
    #dbg_value(ptr %i.d, !5718, !DIExpression(), !6032)
    #dbg_value(i64 1, !5727, !DIExpression(), !6034)
    #dbg_value(i8 1, !5731, !DIExpression(), !6034)
    #dbg_value(i64 1, !5734, !DIExpression(), !6036)
    #dbg_value(i8 1, !5738, !DIExpression(), !6036)
  %i.bj = load ptr, ptr %i.d, align 8, !dbg !6038, !alias.scope !6040, !nonnull !30, !noundef !30
    #dbg_value(ptr %i.bj, !5730, !DIExpression(), !6041)
    #dbg_value(ptr %i.bj, !5737, !DIExpression(), !6036)
  %i.bk = atomicrmw sub ptr %i.bj, i64 1 release, align 8, !dbg !6042, !noalias !6040
  %i.bl = icmp eq i64 %i.bk, 1, !dbg !6043
  br i1 %i.bl, label %bb.v, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtNtCsfj33toqT4A8_8lock_api6rwlock6RwLockNtNtCscY3bQ1mWWb1_11parking_lot10raw_rwlock9RawRwLockNtNtNtNtCsgd5oGICQiN3_11foundations9telemetry3log8internal27LoggerWithKvNestingTrackingEEECsa2e0UnRrdBM_12tokio_quiche.exit47.thread57.i, !dbg !6043

bb.v:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtNtCsfj33toqT4A8_8lock_api6rwlock6RwLockNtNtCscY3bQ1mWWb1_11parking_lot10raw_rwlock9RawRwLockNtNtNtNtCsgd5oGICQiN3_11foundations9telemetry3log8internal27LoggerWithKvNestingTrackingEEECsa2e0UnRrdBM_12tokio_quiche.exit.i
    #dbg_value(i8 2, !1968, !DIExpression(), !6044)
  fence acquire, !dbg !6046
  invoke void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcINtNtCsfj33toqT4A8_8lock_api6rwlock6RwLockNtNtCscY3bQ1mWWb1_11parking_lot10raw_rwlock9RawRwLockNtNtNtNtCsgd5oGICQiN3_11foundations9telemetry3log8internal27LoggerWithKvNestingTrackingEE9drop_slowB2l_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.d) #20
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtNtCsfj33toqT4A8_8lock_api6rwlock6RwLockNtNtCscY3bQ1mWWb1_11parking_lot10raw_rwlock9RawRwLockNtNtNtNtCsgd5oGICQiN3_11foundations9telemetry3log8internal27LoggerWithKvNestingTrackingEEECsa2e0UnRrdBM_12tokio_quiche.exit47.thread57.i unwind label %bb.u, !dbg !6047

_RNCNvCsa2e0UnRrdBM_12tokio_quiche19capture_quiche_logs0B3_.exit: ; preds = %bb.s
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !6048
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !dbg !5973
  ret void, !dbg !6049

bb.w:                                             ; preds = %bb.a
  tail call void @_RNvNtCskKLDkoKarTP_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @24) #24, !dbg !6050
  unreachable, !dbg !6050
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal void @_RNSNvYNCINvMs0_NtNtCsG258MDvU3F_3std4sync4onceNtBd_4Once15call_once_forceNCNvMNtBf_9lazy_lockINtB1e_8LazyLockNtNtNtCsa2e0UnRrdBM_12tokio_quiche7metrics4quic14___quic_MetricsE5force0E0INtNtNtCskKLDkoKarTP_4core3ops8function6FnOnceTRNtBd_9OnceStateEE9call_once6vtableB1P_(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef nonnull readonly align 4 captures(none) %1) unnamed_addr #2 personality ptr @rust_eh_personality !dbg !6051 {
bb.a:
  %i.a = alloca [256 x i8], align 8               ; 4 uses
    #dbg_value(ptr %1, !6057, !DIExpression(), !6064)
    #dbg_value(ptr %0, !6056, !DIExpression(), !6064)
  %i.b = load ptr, ptr %0, align 8, !dbg !6065, !nonnull !30, !align !2155, !noundef !30 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6066), !dbg !6065
    #dbg_value(ptr %i.b, !6069, !DIExpression(), !6075)
    #dbg_value(ptr %1, !6074, !DIExpression(), !6075)
    #dbg_value(ptr poison, !5164, !DIExpression(DW_OP_deref, DW_OP_deref), !6077)
    #dbg_value(ptr %1, !5163, !DIExpression(), !6077)
    #dbg_value(ptr %i.b, !5169, !DIExpression(), !6079)
    #dbg_value(ptr %i.b, !5178, !DIExpression(), !6081)
  %i.c = load ptr, ptr %i.b, align 8, !dbg !6083, !alias.scope !6066, !noalias !6084, !align !2155, !noundef !30 ; 3 uses
    #dbg_value(ptr %i.c, !5189, !DIExpression(), !6087)
  store ptr null, ptr %i.b, align 8, !dbg !6089, !alias.scope !6066, !noalias !6084
  %.not.i.i = icmp eq ptr %i.c, null, !dbg !6090
  br i1 %.not.i.i, label %bb.d, label %bb.b, !dbg !6091, !prof !2282

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr i8, ptr %1, i64 4, !dbg !6092
  %.val.i.i = load i8, ptr %i.d, align 4, !dbg !6092, !range !2156, !noalias !6093, !noundef !30
    #dbg_value(ptr poison, !5202, !DIExpression(DW_OP_deref, DW_OP_LLVM_fragment, 0, 64), !6094)
    #dbg_value(ptr poison, !5208, !DIExpression(), !6094)
    #dbg_value(ptr poison, !5218, !DIExpression(), !6096)
    #dbg_declare(ptr poison, !5214, !DIExpression(), !6098)
  %i.e = trunc nuw i8 %.val.i.i to i1, !dbg !6099
  br i1 %i.e, label %bb.c, label %_RNvYNCINvMs0_NtNtCsG258MDvU3F_3std4sync4onceNtBb_4Once15call_once_forceNCNvMNtBd_9lazy_lockINtB1c_8LazyLockNtNtNtCsa2e0UnRrdBM_12tokio_quiche7metrics4quic14___quic_MetricsE5force0E0INtNtNtCskKLDkoKarTP_4core3ops8function6FnOnceTRNtBb_9OnceStateEE9call_onceB1N_.exit, !dbg !6101, !prof !2282

bb.c:                                             ; preds = %bb.b
  tail call void @_RNvNtNtCsG258MDvU3F_3std4sync9lazy_lock14panic_poisoned() #24, !dbg !6102, !noalias !6093
  unreachable, !dbg !6102

bb.d:                                             ; preds = %bb.a
  tail call void @_RNvNtCskKLDkoKarTP_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @23) #24, !dbg !6103, !noalias !6093
  unreachable, !dbg !6103

_RNvYNCINvMs0_NtNtCsG258MDvU3F_3std4sync4onceNtBb_4Once15call_once_forceNCNvMNtBd_9lazy_lockINtB1c_8LazyLockNtNtNtCsa2e0UnRrdBM_12tokio_quiche7metrics4quic14___quic_MetricsE5force0E0INtNtNtCskKLDkoKarTP_4core3ops8function6FnOnceTRNtBb_9OnceStateEE9call_onceB1N_.exit: ; preds = %bb.b
    #dbg_value(ptr %i.c, !5209, !DIExpression(), !6104)
    #dbg_value(ptr %i.c, !5238, !DIExpression(), !6105)
  %i.f = load ptr, ptr %i.c, align 8, !dbg !6107, !noalias !6093, !nonnull !30, !noundef !30
    #dbg_value(ptr %i.f, !5212, !DIExpression(), !6109)
    #dbg_value(ptr %i.f, !5255, !DIExpression(), !6110)
    #dbg_declare(ptr poison, !5261, !DIExpression(), !6112)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !6113, !noalias !6093
  call void %i.f(ptr noalias nofree noundef nonnull sret([256 x i8]) align 8 captures(address) dereferenceable(256) %i.a), !dbg !6112, !noalias !6093, !inline_history !6114
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(256) %i.c, ptr noundef nonnull align 8 dereferenceable(256) %i.a, i64 256, i1 false), !dbg !6115, !noalias !6093
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !6116, !noalias !6093
  ret void, !dbg !6065
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal void @_RNSNvYNCINvMs0_NtNtCsG258MDvU3F_3std4sync4onceNtBd_4Once15call_once_forceNCNvMNtBf_9lazy_lockINtB1e_8LazyLockNtNtNtCsa2e0UnRrdBM_12tokio_quiche7metrics5tokio15___tokio_MetricsE5force0E0INtNtNtCskKLDkoKarTP_4core3ops8function6FnOnceTRNtBd_9OnceStateEE9call_once6vtableB1P_(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef nonnull readonly align 4 captures(none) %1) unnamed_addr #2 personality ptr @rust_eh_personality !dbg !6117 {
bb.a:
  %i.a = alloca [64 x i8], align 8                ; 4 uses
    #dbg_value(ptr %1, !6123, !DIExpression(), !6126)
    #dbg_value(ptr %0, !6122, !DIExpression(), !6126)
  %i.b = load ptr, ptr %0, align 8, !dbg !6127, !nonnull !30, !align !2155, !noundef !30 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6128), !dbg !6127
    #dbg_value(ptr %i.b, !6131, !DIExpression(), !6137)
    #dbg_value(ptr %1, !6136, !DIExpression(), !6137)
    #dbg_value(ptr poison, !5280, !DIExpression(DW_OP_deref, DW_OP_deref), !6139)
    #dbg_value(ptr %1, !5279, !DIExpression(), !6139)
    #dbg_value(ptr %i.b, !5285, !DIExpression(), !6141)
    #dbg_value(ptr %i.b, !5293, !DIExpression(), !6143)
  %i.c = load ptr, ptr %i.b, align 8, !dbg !6145, !alias.scope !6128, !noalias !6146, !align !2155, !noundef !30 ; 3 uses
    #dbg_value(ptr %i.c, !5303, !DIExpression(), !6149)
  store ptr null, ptr %i.b, align 8, !dbg !6151, !alias.scope !6128, !noalias !6146
  %.not.i.i = icmp eq ptr %i.c, null, !dbg !6152
  br i1 %.not.i.i, label %bb.d, label %bb.b, !dbg !6153, !prof !2282

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr i8, ptr %1, i64 4, !dbg !6154
  %.val.i.i = load i8, ptr %i.d, align 4, !dbg !6154, !range !2156, !noalias !6155, !noundef !30
    #dbg_value(ptr poison, !5316, !DIExpression(DW_OP_deref, DW_OP_LLVM_fragment, 0, 64), !6156)
    #dbg_value(ptr poison, !5321, !DIExpression(), !6156)
    #dbg_value(ptr poison, !5331, !DIExpression(), !6158)
    #dbg_declare(ptr poison, !5327, !DIExpression(), !6160)
  %i.e = trunc nuw i8 %.val.i.i to i1, !dbg !6161
  br i1 %i.e, label %bb.c, label %_RNvYNCINvMs0_NtNtCsG258MDvU3F_3std4sync4onceNtBb_4Once15call_once_forceNCNvMNtBd_9lazy_lockINtB1c_8LazyLockNtNtNtCsa2e0UnRrdBM_12tokio_quiche7metrics5tokio15___tokio_MetricsE5force0E0INtNtNtCskKLDkoKarTP_4core3ops8function6FnOnceTRNtBb_9OnceStateEE9call_onceB1N_.exit, !dbg !6163, !prof !2282

bb.c:                                             ; preds = %bb.b
  tail call void @_RNvNtNtCsG258MDvU3F_3std4sync9lazy_lock14panic_poisoned() #24, !dbg !6164, !noalias !6155
  unreachable, !dbg !6164

bb.d:                                             ; preds = %bb.a
  tail call void @_RNvNtCskKLDkoKarTP_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @23) #24, !dbg !6165, !noalias !6155
  unreachable, !dbg !6165

_RNvYNCINvMs0_NtNtCsG258MDvU3F_3std4sync4onceNtBb_4Once15call_once_forceNCNvMNtBd_9lazy_lockINtB1c_8LazyLockNtNtNtCsa2e0UnRrdBM_12tokio_quiche7metrics5tokio15___tokio_MetricsE5force0E0INtNtNtCskKLDkoKarTP_4core3ops8function6FnOnceTRNtBb_9OnceStateEE9call_onceB1N_.exit: ; preds = %bb.b
    #dbg_value(ptr %i.c, !5322, !DIExpression(), !6166)
    #dbg_value(ptr %i.c, !5343, !DIExpression(), !6167)
  %i.f = load ptr, ptr %i.c, align 8, !dbg !6169, !noalias !6155, !nonnull !30, !noundef !30
    #dbg_value(ptr %i.f, !5325, !DIExpression(), !6171)
    #dbg_value(ptr %i.f, !5359, !DIExpression(), !6172)
    #dbg_declare(ptr poison, !5364, !DIExpression(), !6174)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !6175, !noalias !6155
  call void %i.f(ptr noalias nofree noundef nonnull sret([64 x i8]) align 8 captures(address) dereferenceable(64) %i.a), !dbg !6174, !noalias !6155, !inline_history !6176
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.c, ptr noundef nonnull align 8 dereferenceable(64) %i.a, i64 64, i1 false), !dbg !6177, !noalias !6155
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !6178, !noalias !6155
  ret void, !dbg !6127
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal void @_RNSNvYNCINvMs0_NtNtCsG258MDvU3F_3std4sync4onceNtBd_4Once9call_onceNCNvCsa2e0UnRrdBM_12tokio_quiche19capture_quiche_logs0E0INtNtNtCskKLDkoKarTP_4core3ops8function6FnOnceTRNtBd_9OnceStateEE9call_once6vtableB16_(ptr nofree noundef readonly captures(none) %0, ptr nofree nonnull readnone align 4 captures(none) %1) unnamed_addr #2 personality ptr @rust_eh_personality !dbg !6179 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
    #dbg_value(ptr poison, !6185, !DIExpression(), !6188)
    #dbg_value(ptr %0, !6184, !DIExpression(), !6188)
  %i.b = load ptr, ptr %0, align 8, !dbg !6189, !nonnull !30, !noundef !30
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.b, ptr %i.a, align 8, !noalias !6190
    #dbg_value(ptr poison, !6193, !DIExpression(), !6199)
    #dbg_declare(ptr %i.a, !6198, !DIExpression(), !6201)
  call void @_RNCINvMs0_NtNtCsG258MDvU3F_3std4sync4onceNtB8_4Once9call_onceNCNvCsa2e0UnRrdBM_12tokio_quiche19capture_quiche_logs0E0B11_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.a, ptr nonnull readnone align 4 poison) #25, !dbg !6201
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !6201
end_hunk_1
begin_hunk_2_@llvm.umin.i64
!7023 = !DISubprogram(name: "update<tokio_quiche::quic::io::utilization_estimator::Estimate, std::time::Instant, core::time::Duration>", linkageName: "_RNvMs5_NtNtNtCsa2e0UnRrdBM_12tokio_quiche4quic2io21utilization_estimatorINtB5_14WindowedFilterNtB5_8EstimateNtNtCsG258MDvU3F_3std4time7InstantNtNtCskKLDkoKarTP_4core4time8DurationE6updateBb_", scope: !6303, file: !6259, line: 301, type: !6616, scopeLine: 301, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagOptimized, templateParams: !6334)
!7024 = !{!7025, !7021, !7026, !7027, !7030}
!7025 = !DILocalVariable(name: "self", arg: 1, scope: !7022, file: !6259, line: 301, type: !6618)
!7026 = !DILocalVariable(name: "new_time", arg: 3, scope: !7022, file: !6259, line: 301, type: !1580)
!7027 = !DILocalVariable(name: "best", scope: !7028, file: !6259, line: 307, type: !7029, align: 64)
!7028 = distinct !DILexicalBlock(scope: !7022, file: !6259, line: 307, column: 13)
!7029 = !DIDerivedType(tag: DW_TAG_pointer_type, name: "&tokio_quiche::quic::io::utilization_estimator::Sample<tokio_quiche::quic::io::utilization_estimator::Estimate, std::time::Instant>", baseType: !6316, size: 64, align: 64, dwarfAddressSpace: 0)
!7030 = !DILocalVariable(name: "best", scope: !7028, file: !6259, line: 307, type: !7031, align: 64)
!7031 = !DIDerivedType(tag: DW_TAG_pointer_type, name: "&&tokio_quiche::quic::io::utilization_estimator::Sample<tokio_quiche::quic::io::utilization_estimator::Estimate, std::time::Instant>", baseType: !7029, size: 64, align: 64, dwarfAddressSpace: 0)
!7032 = !DILocation(line: 0, scope: !7022, inlinedAt: !7033)
!7033 = distinct !DILocation(line: 229, column: 31, scope: !6611)
!7034 = !DILocalVariable(name: "self", arg: 1, scope: !7035, file: !6259, line: 288, type: !6618)
!7035 = distinct !DISubprogram(name: "reset<tokio_quiche::quic::io::utilization_estimator::Estimate, std::time::Instant, core::time::Duration>", linkageName: "_RNvMs5_NtNtNtCsa2e0UnRrdBM_12tokio_quiche4quic2io21utilization_estimatorINtB5_14WindowedFilterNtB5_8EstimateNtNtCsG258MDvU3F_3std4time7InstantNtNtCskKLDkoKarTP_4core4time8DurationE5resetBb_", scope: !6303, file: !6259, line: 288, type: !6616, scopeLine: 288, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1673, templateParams: !6334, declaration: !6619, retainedNodes: !7036)
!7036 = !{!7034, !7037, !7038, !7039}
!7037 = !DILocalVariable(name: "new_sample", arg: 2, scope: !7035, file: !6259, line: 288, type: !6319)
!7038 = !DILocalVariable(name: "new_time", arg: 3, scope: !7035, file: !6259, line: 288, type: !1580)
!7039 = !DILocalVariable(name: "sample", scope: !7040, file: !6259, line: 289, type: !6308, align: 64)
!7040 = distinct !DILexicalBlock(scope: !7035, file: !6259, line: 289, column: 9)
!7041 = !DILocation(line: 0, scope: !7035, inlinedAt: !7042)
!7042 = distinct !DILocation(line: 312, column: 25, scope: !7022, inlinedAt: !7033)
!7043 = !DILocation(line: 305, column: 18, scope: !7022, inlinedAt: !7033)
!7044 = !{i32 -1, i32 1000000000}
!7045 = !{!7046}
!7046 = distinct !{!7046, !7047, !"_RNvMs5_NtNtNtCsa2e0UnRrdBM_12tokio_quiche4quic2io21utilization_estimatorINtB5_14WindowedFilterNtB5_8EstimateNtNtCsG258MDvU3F_3std4time7InstantNtNtCskKLDkoKarTP_4core4time8DurationE6updateBb_: argument 0"}
!7047 = distinct !{!7047, !"_RNvMs5_NtNtNtCsa2e0UnRrdBM_12tokio_quiche4quic2io21utilization_estimatorINtB5_14WindowedFilterNtB5_8EstimateNtNtCsG258MDvU3F_3std4time7InstantNtNtCskKLDkoKarTP_4core4time8DurationE6updateBb_"}
!7048 = !DILocalVariable(name: "self", arg: 1, scope: !7049, file: !3407, line: 1506, type: !7053)
!7049 = distinct !DISubprogram(name: "gt<tokio_quiche::quic::io::utilization_estimator::Estimate, tokio_quiche::quic::io::utilization_estimator::Estimate>", linkageName: "_RNvYNtNtNtNtCsa2e0UnRrdBM_12tokio_quiche4quic2io21utilization_estimator8EstimateNtNtCskKLDkoKarTP_4core3cmp10PartialOrd2gtBa_", scope: !7050, file: !3407, line: 1506, type: !7051, scopeLine: 1506, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1673, templateParams: !7056, retainedNodes: !7054)
!7050 = !DINamespace(name: "PartialOrd", scope: !1811)
!7051 = !DISubroutineType(cc: DW_CC_nocall, types: !7052)
!7052 = !{!1567, !7053, !7053}
!7053 = !DIDerivedType(tag: DW_TAG_pointer_type, name: "&tokio_quiche::quic::io::utilization_estimator::Estimate", baseType: !6319, size: 64, align: 64, dwarfAddressSpace: 0)
!7054 = !{!7048, !7055}
!7055 = !DILocalVariable(name: "other", arg: 2, scope: !7049, file: !3407, line: 1506, type: !7053)
!7056 = !{!7057, !7058}
!7057 = !DITemplateTypeParameter(name: "Self", type: !6319)
!7058 = !DITemplateTypeParameter(name: "Rhs", type: !6319)
!7059 = !DILocation(line: 0, scope: !7049, inlinedAt: !7060)
!7060 = distinct !DILocation(line: 307, column: 27, scope: !7022, inlinedAt: !7033)
!7061 = !DILocalVariable(name: "f", scope: !7062, file: !5171, line: 659, type: !7078, align: 8)
!7062 = distinct !DISubprogram(name: "is_some_and<core::cmp::Ordering, fn(core::cmp::Ordering) -> bool>", linkageName: "_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionNtNtB5_3cmp8OrderingE11is_some_andNvMBK_BI_5is_gtECsa2e0UnRrdBM_12tokio_quiche", scope: !7063, file: !5171, line: 659, type: !7076, scopeLine: 659, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1673, templateParams: !7082, declaration: !7081, retainedNodes: !7084)
!7063 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "Option<core::cmp::Ordering>", scope: !23, file: !2, size: 8, align: 8, flags: DIFlagPublic, elements: !7064, templateParams: !30, identifier: "6f96deeabd0ea6a59d8ea1011ed6ffd3")
!7064 = !{!7065}
!7065 = distinct !DICompositeType(tag: DW_TAG_variant_part, scope: !7063, file: !2, size: 8, align: 8, elements: !7066, templateParams: !30, identifier: "c0da2b71ec5793b3cf68489ef6ef1ea4", discriminator: !7075)
!7066 = !{!7067, !7071}
!7067 = !DIDerivedType(tag: DW_TAG_member, name: "None", scope: !7065, file: !2, baseType: !7068, size: 8, align: 8, extraData: i8 -2)
!7068 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "None", scope: !7063, file: !2, size: 8, align: 8, flags: DIFlagPublic, elements: !30, templateParams: !7069, identifier: "684c7f32b87ab74ae4dff6face739e1f")
!7069 = !{!7070}
!7070 = !DITemplateTypeParameter(name: "T", type: !1810)
!7071 = !DIDerivedType(tag: DW_TAG_member, name: "Some", scope: !7065, file: !2, baseType: !7072, size: 8, align: 8)
!7072 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "Some", scope: !7063, file: !2, size: 8, align: 8, flags: DIFlagPublic, elements: !7073, templateParams: !7069, identifier: "7da82d9dabdc101ec8621482d4a57edc")
!7073 = !{!7074}
!7074 = !DIDerivedType(tag: DW_TAG_member, name: "__0", scope: !7072, file: !2, baseType: !1810, size: 8, align: 8, flags: DIFlagPublic)
!7075 = !DIDerivedType(tag: DW_TAG_member, scope: !7063, file: !2, baseType: !215, size: 8, align: 8, flags: DIFlagArtificial)
!7076 = !DISubroutineType(types: !7077)
!7077 = !{!1567, !7063, !7078}
!7078 = !DIDerivedType(tag: DW_TAG_pointer_type, name: "fn(core::cmp::Ordering) -> bool", baseType: !7079, align: 8, dwarfAddressSpace: 0)
!7079 = !DISubroutineType(types: !7080)
!7080 = !{!1567, !1810}
!7081 = !DISubprogram(name: "is_some_and<core::cmp::Ordering, fn(core::cmp::Ordering) -> bool>", linkageName: "_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionNtNtB5_3cmp8OrderingE11is_some_andNvMBK_BI_5is_gtECsa2e0UnRrdBM_12tokio_quiche", scope: !7063, file: !5171, line: 659, type: !7076, scopeLine: 659, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagOptimized, templateParams: !7082)
!7082 = !{!7070, !7083}
!7083 = !DITemplateTypeParameter(name: "impl [const] FnOnce(T) -> bool + [const] Destruct", type: !7078)
!7084 = !{!7085, !7061, !7086}
!7085 = !DILocalVariable(name: "self", arg: 1, scope: !7062, file: !5171, line: 659, type: !7063)
!7086 = !DILocalVariable(name: "x", scope: !7087, file: !5171, line: 662, type: !1810, align: 8)
!7087 = distinct !DILexicalBlock(scope: !7062, file: !5171, line: 662, column: 13)
!7088 = !DILocation(line: 659, column: 36, scope: !7062, inlinedAt: !7089)
!7089 = distinct !DILocation(line: 1507, column: 33, scope: !7049, inlinedAt: !7060)
!7090 = !DILocation(line: 0, scope: !7062, inlinedAt: !7089)
!7091 = !DILocation(line: 305, column: 12, scope: !7022, inlinedAt: !7033)
!7092 = !DILocation(line: 0, scope: !7040, inlinedAt: !7042)
!7093 = !DILocation(line: 294, column: 9, scope: !7040, inlinedAt: !7042)
!7094 = !DILocation(line: 0, scope: !7095, inlinedAt: !7033)
!7095 = !DILexicalBlockFile(scope: !7022, file: !1524, discriminator: 0)
!7096 = !DILocation(line: 309, column: 28, scope: !7022, inlinedAt: !7033)
!7097 = !DILocalVariable(name: "self", arg: 1, scope: !7098, file: !5171, line: 743, type: !7114)
!7098 = distinct !DISubprogram(name: "as_ref<tokio_quiche::quic::io::utilization_estimator::Sample<tokio_quiche::quic::io::utilization_estimator::Estimate, std::time::Instant>>", linkageName: "_RNvMNtCskKLDkoKarTP_4core6optionINtB2_6OptionINtNtNtNtCsa2e0UnRrdBM_12tokio_quiche4quic2io21utilization_estimator6SampleNtBK_8EstimateNtNtCsG258MDvU3F_3std4time7InstantEE6as_refBQ_", scope: !6308, file: !5171, line: 743, type: !7099, scopeLine: 743, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1673, templateParams: !6314, declaration: !7115, retainedNodes: !7116)
!7099 = !DISubroutineType(types: !7100)
!7100 = !{!7101, !7114}
!7101 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "Option<&tokio_quiche::quic::io::utilization_estimator::Sample<tokio_quiche::quic::io::utilization_estimator::Estimate, std::time::Instant>>", scope: !23, file: !2, size: 64, align: 64, flags: DIFlagPublic, elements: !7102, templateParams: !30, identifier: "39b93fe35423b7d3d8c977560ce6a012")
!7102 = !{!7103}
!7103 = distinct !DICompositeType(tag: DW_TAG_variant_part, scope: !7101, file: !2, size: 64, align: 64, elements: !7104, templateParams: !30, identifier: "4373e1bcb55e12e63ae3e1820223f6ae", discriminator: !7113)
!7104 = !{!7105, !7109}
!7105 = !DIDerivedType(tag: DW_TAG_member, name: "None", scope: !7103, file: !2, baseType: !7106, size: 64, align: 64, extraData: i64 0)
!7106 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "None", scope: !7101, file: !2, size: 64, align: 64, flags: DIFlagPublic, elements: !30, templateParams: !7107, identifier: "b814344861b73a86569a4dadad312be8")
!7107 = !{!7108}
!7108 = !DITemplateTypeParameter(name: "T", type: !7029)
!7109 = !DIDerivedType(tag: DW_TAG_member, name: "Some", scope: !7103, file: !2, baseType: !7110, size: 64, align: 64)
!7110 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "Some", scope: !7101, file: !2, size: 64, align: 64, flags: DIFlagPublic, elements: !7111, templateParams: !7107, identifier: "36f27daeef7776b4d301747499b8e1c4")
!7111 = !{!7112}
!7112 = !DIDerivedType(tag: DW_TAG_member, name: "__0", scope: !7110, file: !2, baseType: !7029, size: 64, align: 64, flags: DIFlagPublic)
!7113 = !DIDerivedType(tag: DW_TAG_member, scope: !7101, file: !2, baseType: !137, size: 64, align: 64, flags: DIFlagArtificial)
!7114 = !DIDerivedType(tag: DW_TAG_pointer_type, name: "&core::option::Option<tokio_quiche::quic::io::utilization_estimator::Sample<tokio_quiche::quic::io::utilization_estimator::Estimate, std::time::Instant>>", baseType: !6308, size: 64, align: 64, dwarfAddressSpace: 0)
!7115 = !DISubprogram(name: "as_ref<tokio_quiche::quic::io::utilization_estimator::Sample<tokio_quiche::quic::io::utilization_estimator::Estimate, std::time::Instant>>", linkageName: "_RNvMNtCskKLDkoKarTP_4core6optionINtB2_6OptionINtNtNtNtCsa2e0UnRrdBM_12tokio_quiche4quic2io21utilization_estimator6SampleNtBK_8EstimateNtNtCsG258MDvU3F_3std4time7InstantEE6as_refBQ_", scope: !6308, file: !5171, line: 743, type: !7099, scopeLine: 743, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagOptimized, templateParams: !6314)
!7116 = !{!7097, !7117}
!7117 = !DILocalVariable(name: "x", scope: !7118, file: !5171, line: 745, type: !7029, align: 64)
!7118 = distinct !DILexicalBlock(scope: !7098, file: !5171, line: 745, column: 13)
!7119 = !DILocation(line: 0, scope: !7098, inlinedAt: !7120)
!7120 = distinct !DILocation(line: 309, column: 46, scope: !7022, inlinedAt: !7033)
!7121 = !DILocation(line: 744, column: 15, scope: !7098, inlinedAt: !7120)
!7122 = !DILocation(line: 744, column: 9, scope: !7098, inlinedAt: !7120)
!7123 = !DILocalVariable(name: "self", arg: 1, scope: !7124, file: !5171, line: 1013, type: !7101)
!7124 = distinct !DISubprogram(name: "unwrap<&tokio_quiche::quic::io::utilization_estimator::Sample<tokio_quiche::quic::io::utilization_estimator::Estimate, std::time::Instant>>", linkageName: "_RNvMNtCskKLDkoKarTP_4core6optionINtB2_6OptionRINtNtNtNtCsa2e0UnRrdBM_12tokio_quiche4quic2io21utilization_estimator6SampleNtBL_8EstimateNtNtCsG258MDvU3F_3std4time7InstantEE6unwrapBR_", scope: !7101, file: !5171, line: 1013, type: !7125, scopeLine: 1013, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1673, templateParams: !7107, declaration: !7127, retainedNodes: !7128)
!7125 = !DISubroutineType(types: !7126)
!7126 = !{!7029, !7101, !3435}
!7127 = !DISubprogram(name: "unwrap<&tokio_quiche::quic::io::utilization_estimator::Sample<tokio_quiche::quic::io::utilization_estimator::Estimate, std::time::Instant>>", linkageName: "_RNvMNtCskKLDkoKarTP_4core6optionINtB2_6OptionRINtNtNtNtCsa2e0UnRrdBM_12tokio_quiche4quic2io21utilization_estimator6SampleNtBL_8EstimateNtNtCsG258MDvU3F_3std4time7InstantEE6unwrapBR_", scope: !7101, file: !5171, line: 1013, type: !7125, scopeLine: 1013, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagOptimized, templateParams: !7107)
!7128 = !{!7123, !7129}
!7129 = !DILocalVariable(name: "val", scope: !7130, file: !5171, line: 1015, type: !7029, align: 64)
!7130 = distinct !DILexicalBlock(scope: !7124, file: !5171, line: 1015, column: 13)
!7131 = !DILocation(line: 0, scope: !7124, inlinedAt: !7132)
!7132 = distinct !DILocation(line: 309, column: 55, scope: !7022, inlinedAt: !7033)
!7133 = !DILocation(line: 309, column: 17, scope: !7022, inlinedAt: !7033)
!7134 = !DILocation(line: 310, column: 21, scope: !7022, inlinedAt: !7033)
!7135 = !DILocalVariable(name: "self", arg: 1, scope: !7136, file: !3407, line: 1506, type: !6973)
!7136 = distinct !DISubprogram(name: "gt<core::time::Duration, core::time::Duration>", linkageName: "_RNvYNtNtCskKLDkoKarTP_4core4time8DurationNtNtB6_3cmp10PartialOrd2gtCsa2e0UnRrdBM_12tokio_quiche", scope: !7050, file: !3407, line: 1506, type: !7137, scopeLine: 1506, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1673, templateParams: !7141, retainedNodes: !7139)
!7137 = !DISubroutineType(cc: DW_CC_nocall, types: !7138)
!7138 = !{!1567, !6973, !6973}
!7139 = !{!7135, !7140}
!7140 = !DILocalVariable(name: "other", arg: 2, scope: !7136, file: !3407, line: 1506, type: !6973)
!7141 = !{!7142, !7143}
!7142 = !DITemplateTypeParameter(name: "Self", type: !1662)
!7143 = !DITemplateTypeParameter(name: "Rhs", type: !1662)
!7144 = !DILocation(line: 0, scope: !7136, inlinedAt: !7145)
!7145 = distinct !DILocation(line: 309, column: 17, scope: !7022, inlinedAt: !7033)
!7146 = !DILocalVariable(name: "f", scope: !7147, file: !5171, line: 659, type: !7078, align: 8)
!7147 = distinct !DISubprogram(name: "is_some_and<core::cmp::Ordering, fn(core::cmp::Ordering) -> bool>", linkageName: "_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionNtNtB5_3cmp8OrderingE11is_some_andNvMBK_BI_5is_gtECsa2e0UnRrdBM_12tokio_quiche", scope: !7063, file: !5171, line: 659, type: !7076, scopeLine: 659, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1673, templateParams: !7082, declaration: !7081, retainedNodes: !7148)
!7148 = !{!7149, !7146, !7150}
!7149 = !DILocalVariable(name: "self", arg: 1, scope: !7147, file: !5171, line: 659, type: !7063)
!7150 = !DILocalVariable(name: "x", scope: !7151, file: !5171, line: 662, type: !1810, align: 8)
!7151 = distinct !DILexicalBlock(scope: !7147, file: !5171, line: 662, column: 13)
!7152 = !DILocation(line: 659, column: 36, scope: !7147, inlinedAt: !7153)
!7153 = distinct !DILocation(line: 1507, column: 33, scope: !7136, inlinedAt: !7145)
!7154 = !DILocalVariable(name: "self", arg: 1, scope: !7155, file: !6970, line: 79, type: !6973)
!7155 = distinct !DISubprogram(name: "partial_cmp", linkageName: "_RNvXsj_NtCskKLDkoKarTP_4core4timeNtB5_8DurationNtNtB7_3cmp10PartialOrd11partial_cmp", scope: !7156, file: !6970, line: 79, type: !7157, scopeLine: 79, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1673, templateParams: !30, retainedNodes: !7159)
!7156 = !DINamespace(name: "{impl#21}", scope: !1663)
!7157 = !DISubroutineType(cc: DW_CC_nocall, types: !7158)
!7158 = !{!7063, !6973, !6973}
!7159 = !{!7154, !7160}
!7160 = !DILocalVariable(name: "other", arg: 2, scope: !7155, file: !6970, line: 79, type: !6973)
!7161 = !DILocation(line: 0, scope: !7155, inlinedAt: !7162)
!7162 = distinct !DILocation(line: 1507, column: 14, scope: !7136, inlinedAt: !7145)
!7163 = !DILocalVariable(name: "self", arg: 1, scope: !7164, file: !6970, line: 79, type: !6973)
!7164 = distinct !DISubprogram(name: "cmp", linkageName: "_RNvXsk_NtCskKLDkoKarTP_4core4timeNtB5_8DurationNtNtB7_3cmp3Ord3cmp", scope: !7165, file: !6970, line: 79, type: !7166, scopeLine: 79, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1673, templateParams: !30, retainedNodes: !7168)
!7165 = !DINamespace(name: "{impl#22}", scope: !1663)
!7166 = !DISubroutineType(cc: DW_CC_nocall, types: !7167)
!7167 = !{!1810, !6973, !6973}
!7168 = !{!7163, !7169, !7170}
!7169 = !DILocalVariable(name: "other", arg: 2, scope: !7164, file: !6970, line: 79, type: !6973)
!7170 = !DILocalVariable(name: "cmp", scope: !7171, file: !6970, line: 82, type: !1810, align: 8)
!7171 = distinct !DILexicalBlock(scope: !7164, file: !6970, line: 82, column: 5)
!7172 = !DILocation(line: 0, scope: !7164, inlinedAt: !7173)
!7173 = distinct !DILocation(line: 79, column: 38, scope: !7155, inlinedAt: !7162)
!7174 = !DILocation(line: 82, column: 5, scope: !7164, inlinedAt: !7173)
!7175 = !DILocation(line: 0, scope: !7147, inlinedAt: !7153)
!7176 = !DILocation(line: 660, column: 9, scope: !7147, inlinedAt: !7153)
!7177 = !DILocation(line: 1016, column: 21, scope: !7124, inlinedAt: !7132)
!7178 = !DILocation(line: 315, column: 25, scope: !7022, inlinedAt: !7033)
!7179 = !DILocalVariable(name: "self", arg: 1, scope: !7180, file: !5171, line: 1013, type: !6308)
!7180 = distinct !DISubprogram(name: "unwrap<tokio_quiche::quic::io::utilization_estimator::Sample<tokio_quiche::quic::io::utilization_estimator::Estimate, std::time::Instant>>", linkageName: "_RNvMNtCskKLDkoKarTP_4core6optionINtB2_6OptionINtNtNtNtCsa2e0UnRrdBM_12tokio_quiche4quic2io21utilization_estimator6SampleNtBK_8EstimateNtNtCsG258MDvU3F_3std4time7InstantEE6unwrapBQ_", scope: !6308, file: !5171, line: 1013, type: !7181, scopeLine: 1013, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1673, templateParams: !6314, declaration: !7183, retainedNodes: !7184)
!7181 = !DISubroutineType(types: !7182)
!7182 = !{!6316, !6308, !3435}
!7183 = !DISubprogram(name: "unwrap<tokio_quiche::quic::io::utilization_estimator::Sample<tokio_quiche::quic::io::utilization_estimator::Estimate, std::time::Instant>>", linkageName: "_RNvMNtCskKLDkoKarTP_4core6optionINtB2_6OptionINtNtNtNtCsa2e0UnRrdBM_12tokio_quiche4quic2io21utilization_estimator6SampleNtBK_8EstimateNtNtCsG258MDvU3F_3std4time7InstantEE6unwrapBQ_", scope: !6308, file: !5171, line: 1013, type: !7181, scopeLine: 1013, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagOptimized, templateParams: !6314)
!7184 = !{!7179, !7185, !7187, !7189, !7191, !7193, !7195, !7197, !7199, !7201, !7203}
!7185 = !DILocalVariable(name: "val", scope: !7186, file: !5171, line: 1015, type: !6316, align: 64)
!7186 = distinct !DILexicalBlock(scope: !7180, file: !5171, line: 1015, column: 13)
!7187 = !DILocalVariable(name: "val", scope: !7188, file: !5171, line: 1015, type: !6316, align: 64)
!7188 = distinct !DILexicalBlock(scope: !7180, file: !5171, line: 1015, column: 13)
!7189 = !DILocalVariable(name: "val", scope: !7190, file: !5171, line: 1015, type: !6316, align: 64)
!7190 = distinct !DILexicalBlock(scope: !7180, file: !5171, line: 1015, column: 13)
!7191 = !DILocalVariable(name: "val", scope: !7192, file: !5171, line: 1015, type: !6316, align: 64)
!7192 = distinct !DILexicalBlock(scope: !7180, file: !5171, line: 1015, column: 13)
!7193 = !DILocalVariable(name: "val", scope: !7194, file: !5171, line: 1015, type: !6316, align: 64)
!7194 = distinct !DILexicalBlock(scope: !7180, file: !5171, line: 1015, column: 13)
!7195 = !DILocalVariable(name: "val", scope: !7196, file: !5171, line: 1015, type: !6316, align: 64)
!7196 = distinct !DILexicalBlock(scope: !7180, file: !5171, line: 1015, column: 13)
!7197 = !DILocalVariable(name: "val", scope: !7198, file: !5171, line: 1015, type: !6316, align: 64)
!7198 = distinct !DILexicalBlock(scope: !7180, file: !5171, line: 1015, column: 13)
!7199 = !DILocalVariable(name: "val", scope: !7200, file: !5171, line: 1015, type: !6316, align: 64)
!7200 = distinct !DILexicalBlock(scope: !7180, file: !5171, line: 1015, column: 13)
!7201 = !DILocalVariable(name: "val", scope: !7202, file: !5171, line: 1015, type: !6316, align: 64)
!7202 = distinct !DILexicalBlock(scope: !7180, file: !5171, line: 1015, column: 13)
!7203 = !DILocalVariable(name: "val", scope: !7204, file: !5171, line: 1015, type: !6316, align: 64)
!7204 = distinct !DILexicalBlock(scope: !7180, file: !5171, line: 1015, column: 13)
!7205 = !DILocation(line: 0, scope: !7180, inlinedAt: !7206)
!7206 = distinct !DILocation(line: 315, column: 43, scope: !7022, inlinedAt: !7033)
!7207 = !DILocation(line: 1014, column: 15, scope: !7180, inlinedAt: !7206)
!7208 = !DILocation(line: 1014, column: 9, scope: !7180, inlinedAt: !7206)
!7209 = !DILocation(line: 0, scope: !7049, inlinedAt: !7210)
!7210 = distinct !DILocation(line: 315, column: 12, scope: !7022, inlinedAt: !7033)
!7211 = !DILocation(line: 659, column: 36, scope: !7062, inlinedAt: !7212)
!7212 = distinct !DILocation(line: 1507, column: 33, scope: !7049, inlinedAt: !7210)
!7213 = !DILocation(line: 0, scope: !7062, inlinedAt: !7212)
!7214 = !DILocation(line: 660, column: 9, scope: !7062, inlinedAt: !7212)
!7215 = !DILocation(line: 315, column: 12, scope: !7022, inlinedAt: !7033)
!7216 = !DILocation(line: 1016, column: 21, scope: !7180, inlinedAt: !7206)
!7217 = !DILocation(line: 0, scope: !7180, inlinedAt: !7218)
!7218 = distinct !DILocation(line: 321, column: 50, scope: !7022, inlinedAt: !7033)
!7219 = !DILocation(line: 321, column: 32, scope: !7022, inlinedAt: !7033)
!7220 = !DILocation(line: 1014, column: 15, scope: !7180, inlinedAt: !7218)
!7221 = !DILocation(line: 1014, column: 9, scope: !7180, inlinedAt: !7218)
!7222 = !DILocation(line: 316, column: 13, scope: !7022, inlinedAt: !7033)
!7223 = !DILocation(line: 320, column: 33, scope: !7022, inlinedAt: !7033)
!7224 = !DILocation(line: 315, column: 9, scope: !7022, inlinedAt: !7033)
!7225 = !DILocation(line: 0, scope: !7049, inlinedAt: !7226)
!7226 = distinct !DILocation(line: 321, column: 19, scope: !7022, inlinedAt: !7033)
!7227 = !DILocation(line: 659, column: 36, scope: !7062, inlinedAt: !7228)
!7228 = distinct !DILocation(line: 1507, column: 33, scope: !7049, inlinedAt: !7226)
!7229 = !DILocation(line: 0, scope: !7062, inlinedAt: !7228)
!7230 = !DILocation(line: 660, column: 9, scope: !7062, inlinedAt: !7228)
!7231 = !DILocation(line: 321, column: 19, scope: !7022, inlinedAt: !7033)
!7232 = !DILocation(line: 1016, column: 21, scope: !7180, inlinedAt: !7218)
!7233 = !DILocation(line: 322, column: 13, scope: !7022, inlinedAt: !7033)
!7234 = !DILocation(line: 321, column: 16, scope: !7022, inlinedAt: !7033)
!7235 = !DILocation(line: 0, scope: !7180, inlinedAt: !7236)
!7236 = distinct !DILocation(line: 329, column: 41, scope: !7022, inlinedAt: !7033)
!7237 = !DILocation(line: 329, column: 23, scope: !7022, inlinedAt: !7033)
!7238 = !DILocation(line: 1014, column: 15, scope: !7180, inlinedAt: !7236)
!7239 = !DILocation(line: 1014, column: 9, scope: !7180, inlinedAt: !7236)
!7240 = !DILocation(line: 329, column: 12, scope: !7022, inlinedAt: !7033)
!7241 = !DILocation(line: 0, scope: !7136, inlinedAt: !7242)
!7242 = distinct !DILocation(line: 329, column: 12, scope: !7022, inlinedAt: !7033)
!7243 = !DILocation(line: 659, column: 36, scope: !7147, inlinedAt: !7244)
!7244 = distinct !DILocation(line: 1507, column: 33, scope: !7136, inlinedAt: !7242)
!7245 = !DILocation(line: 0, scope: !7155, inlinedAt: !7246)
!7246 = distinct !DILocation(line: 1507, column: 14, scope: !7136, inlinedAt: !7242)
!7247 = !DILocation(line: 0, scope: !7164, inlinedAt: !7248)
!7248 = distinct !DILocation(line: 79, column: 38, scope: !7155, inlinedAt: !7246)
!7249 = !DILocation(line: 82, column: 5, scope: !7164, inlinedAt: !7248)
!7250 = !DILocation(line: 0, scope: !7147, inlinedAt: !7244)
!7251 = !DILocation(line: 660, column: 9, scope: !7147, inlinedAt: !7244)
!7252 = !DILocation(line: 1016, column: 21, scope: !7180, inlinedAt: !7236)
!7253 = !DILocation(line: 349, column: 12, scope: !7022, inlinedAt: !7033)
!7254 = !DILocation(line: 0, scope: !7180, inlinedAt: !7255)
!7255 = distinct !DILocation(line: 349, column: 30, scope: !7022, inlinedAt: !7033)
!7256 = !DILocation(line: 1014, column: 15, scope: !7180, inlinedAt: !7255)
!7257 = !DILocation(line: 1014, column: 9, scope: !7180, inlinedAt: !7255)
!7258 = !DILocation(line: 332, column: 33, scope: !7022, inlinedAt: !7033)
!7259 = !DILocation(line: 333, column: 33, scope: !7022, inlinedAt: !7033)
!7260 = !DILocation(line: 334, column: 13, scope: !7022, inlinedAt: !7033)
!7261 = !DILocation(line: 0, scope: !7180, inlinedAt: !7262)
!7262 = distinct !DILocation(line: 342, column: 45, scope: !7022, inlinedAt: !7033)
!7263 = !DILocation(line: 342, column: 27, scope: !7022, inlinedAt: !7033)
!7264 = !DILocation(line: 1014, column: 15, scope: !7180, inlinedAt: !7262)
!7265 = !DILocation(line: 1014, column: 9, scope: !7180, inlinedAt: !7262)
!7266 = !DILocation(line: 0, scope: !7180, inlinedAt: !7267)
!7267 = distinct !DILocation(line: 349, column: 67, scope: !7022, inlinedAt: !7033)
!7268 = !DILocation(line: 349, column: 49, scope: !7022, inlinedAt: !7033)
!7269 = !DILocation(line: 1014, column: 15, scope: !7180, inlinedAt: !7267)
!7270 = !DILocation(line: 1014, column: 9, scope: !7180, inlinedAt: !7267)
!7271 = !DILocation(line: 1016, column: 21, scope: !7180, inlinedAt: !7255)
!7272 = !DILocalVariable(name: "self", arg: 1, scope: !7273, file: !6259, line: 142, type: !7053)
!7273 = distinct !DISubprogram(name: "eq", linkageName: "_RNvXs0_NtNtNtCsa2e0UnRrdBM_12tokio_quiche4quic2io21utilization_estimatorNtB5_8EstimateNtNtCskKLDkoKarTP_4core3cmp9PartialEq2eq", scope: !7274, file: !6259, line: 142, type: !7051, scopeLine: 142, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1673, templateParams: !30, retainedNodes: !7275)
!7274 = !DINamespace(name: "{impl#2}", scope: !6261)
!7275 = !{!7272, !7276}
!7276 = !DILocalVariable(name: "other", arg: 2, scope: !7273, file: !6259, line: 142, type: !7053)
!7277 = !DILocation(line: 0, scope: !7273, inlinedAt: !7278)
!7278 = distinct !DILocation(line: 349, column: 12, scope: !7022, inlinedAt: !7033)
!7279 = !DILocation(line: 143, column: 9, scope: !7273, inlinedAt: !7278)
!7280 = !DILocation(line: 1016, column: 21, scope: !7180, inlinedAt: !7267)
!7281 = !DILocation(line: 363, column: 12, scope: !7022, inlinedAt: !7033)
!7282 = !DILocation(line: 0, scope: !7180, inlinedAt: !7283)
!7283 = distinct !DILocation(line: 363, column: 30, scope: !7022, inlinedAt: !7033)
!7284 = !DILocation(line: 1014, column: 15, scope: !7180, inlinedAt: !7283)
!7285 = !DILocation(line: 1014, column: 9, scope: !7180, inlinedAt: !7283)
!7286 = !DILocation(line: 0, scope: !7180, inlinedAt: !7287)
!7287 = distinct !DILocation(line: 350, column: 42, scope: !7022, inlinedAt: !7033)
!7288 = !DILocation(line: 350, column: 24, scope: !7022, inlinedAt: !7033)
!7289 = !DILocation(line: 350, column: 13, scope: !7022, inlinedAt: !7033)
!7290 = !DILocation(line: 350, column: 58, scope: !7022, inlinedAt: !7033)
!7291 = !DILocalVariable(name: "self", arg: 1, scope: !7292, file: !6970, line: 1328, type: !1662)
!7292 = distinct !DISubprogram(name: "div", linkageName: "_RNvXs6_NtCskKLDkoKarTP_4core4timeNtB5_8DurationINtNtNtB7_3ops5arith3DivmE3div", scope: !7293, file: !6970, line: 1328, type: !7294, scopeLine: 1328, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1673, templateParams: !30, retainedNodes: !7296)
!7293 = !DINamespace(name: "{impl#8}", scope: !1663)
!7294 = !DISubroutineType(cc: DW_CC_nocall, types: !7295)
!7295 = !{!1662, !1662, !66, !3435}
!7296 = !{!7291, !7297}
!7297 = !DILocalVariable(name: "rhs", arg: 2, scope: !7292, file: !6970, line: 1328, type: !66)
!7298 = !DILocation(line: 0, scope: !7292, inlinedAt: !7299)
!7299 = distinct !DILocation(line: 350, column: 58, scope: !7022, inlinedAt: !7033)
!7300 = !DILocalVariable(name: "self", arg: 1, scope: !7301, file: !6970, line: 837, type: !1662)
!7301 = distinct !DISubprogram(name: "checked_div", linkageName: "_RNvMNtCskKLDkoKarTP_4core4timeNtB2_8Duration11checked_div", scope: !1662, file: !6970, line: 837, type: !7302, scopeLine: 837, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1673, templateParams: !30, declaration: !7317, retainedNodes: !7318)
!7302 = !DISubroutineType(types: !7303)
!7303 = !{!7304, !1662, !66}
!7304 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "Option<core::time::Duration>", scope: !23, file: !2, size: 128, align: 64, flags: DIFlagPublic, elements: !7305, templateParams: !30, identifier: "f0bb41727310f8174f724bd1de3fc14")
!7305 = !{!7306}
!7306 = distinct !DICompositeType(tag: DW_TAG_variant_part, scope: !7304, file: !2, size: 128, align: 64, elements: !7307, templateParams: !30, identifier: "b037be4a30fd536c35fbcdeafa460c96", discriminator: !7316)
!7307 = !{!7308, !7312}
!7308 = !DIDerivedType(tag: DW_TAG_member, name: "None", scope: !7306, file: !2, baseType: !7309, size: 128, align: 64, extraData: i32 -1)
!7309 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "None", scope: !7304, file: !2, size: 128, align: 64, flags: DIFlagPublic, elements: !30, templateParams: !7310, identifier: "6f5cc3a791818fde43d2845d1d0b4cc")
!7310 = !{!7311}
!7311 = !DITemplateTypeParameter(name: "T", type: !1662)
!7312 = !DIDerivedType(tag: DW_TAG_member, name: "Some", scope: !7306, file: !2, baseType: !7313, size: 128, align: 64)
!7313 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "Some", scope: !7304, file: !2, size: 128, align: 64, flags: DIFlagPublic, elements: !7314, templateParams: !7310, identifier: "f7c9207c76a04c99107b05e49d26ab77")
!7314 = !{!7315}
!7315 = !DIDerivedType(tag: DW_TAG_member, name: "__0", scope: !7313, file: !2, baseType: !1662, size: 128, align: 64, flags: DIFlagPublic)
!7316 = !DIDerivedType(tag: DW_TAG_member, scope: !7304, file: !2, baseType: !66, size: 32, align: 32, offset: 64, flags: DIFlagArtificial)
!7317 = !DISubprogram(name: "checked_div", linkageName: "_RNvMNtCskKLDkoKarTP_4core4timeNtB2_8Duration11checked_div", scope: !1662, file: !6970, line: 837, type: !7302, scopeLine: 837, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagOptimized, templateParams: !30)
!7318 = !{!7300, !7319, !7320, !7322, !7323, !7325}
!7319 = !DILocalVariable(name: "rhs", arg: 2, scope: !7301, file: !6970, line: 837, type: !66)
!7320 = !DILocalVariable(name: "secs", scope: !7321, file: !6970, line: 839, type: !137, align: 64)
!7321 = distinct !DILexicalBlock(scope: !7301, file: !6970, line: 839, column: 13)
!7322 = !DILocalVariable(name: "extra_secs", scope: !7321, file: !6970, line: 839, type: !137, align: 64)
!7323 = !DILocalVariable(name: "nanos", scope: !7324, file: !6970, line: 840, type: !66, align: 32)
!7324 = distinct !DILexicalBlock(scope: !7321, file: !6970, line: 840, column: 13)
!7325 = !DILocalVariable(name: "extra_nanos", scope: !7324, file: !6970, line: 840, type: !66, align: 32)
!7326 = !DILocation(line: 0, scope: !7301, inlinedAt: !7327)
!7327 = distinct !DILocation(line: 1329, column: 14, scope: !7292, inlinedAt: !7299)
!7328 = !DILocation(line: 839, column: 39, scope: !7301, inlinedAt: !7327)
!7329 = !DILocation(line: 0, scope: !7321, inlinedAt: !7327)
!7330 = !DILocation(line: 0, scope: !7324, inlinedAt: !7327)
!7331 = !DILocation(line: 841, column: 18, scope: !7321, inlinedAt: !7327)
!7332 = !DILocation(line: 843, column: 17, scope: !7324, inlinedAt: !7327)
!7333 = !DILocation(line: 842, column: 13, scope: !7324, inlinedAt: !7327)
!7334 = !DILocation(line: 0, scope: !7136, inlinedAt: !7335)
!7335 = distinct !DILocation(line: 350, column: 13, scope: !7022, inlinedAt: !7033)
!7336 = !DILocation(line: 659, column: 36, scope: !7147, inlinedAt: !7337)
!7337 = distinct !DILocation(line: 1507, column: 33, scope: !7136, inlinedAt: !7335)
!7338 = !DILocation(line: 0, scope: !7155, inlinedAt: !7339)
!7339 = distinct !DILocation(line: 1507, column: 14, scope: !7136, inlinedAt: !7335)
!7340 = !DILocation(line: 0, scope: !7164, inlinedAt: !7341)
!7341 = distinct !DILocation(line: 79, column: 38, scope: !7155, inlinedAt: !7339)
!7342 = !DILocation(line: 82, column: 5, scope: !7164, inlinedAt: !7341)
!7343 = !DILocation(line: 0, scope: !7147, inlinedAt: !7337)
!7344 = !DILocation(line: 660, column: 9, scope: !7147, inlinedAt: !7337)
!7345 = !DILocation(line: 355, column: 13, scope: !7022, inlinedAt: !7033)
!7346 = !DILocation(line: 359, column: 33, scope: !7022, inlinedAt: !7033)
!7347 = !DILocation(line: 0, scope: !7180, inlinedAt: !7348)
!7348 = distinct !DILocation(line: 363, column: 67, scope: !7022, inlinedAt: !7033)
!7349 = !DILocation(line: 363, column: 49, scope: !7022, inlinedAt: !7033)
!7350 = !DILocation(line: 1014, column: 15, scope: !7180, inlinedAt: !7348)
!7351 = !DILocation(line: 1014, column: 9, scope: !7180, inlinedAt: !7348)
!7352 = !DILocation(line: 1016, column: 21, scope: !7180, inlinedAt: !7283)
!7353 = !DILocation(line: 0, scope: !7273, inlinedAt: !7354)
!7354 = distinct !DILocation(line: 363, column: 12, scope: !7022, inlinedAt: !7033)
!7355 = !DILocation(line: 143, column: 9, scope: !7273, inlinedAt: !7354)
!7356 = !DILocation(line: 1016, column: 21, scope: !7180, inlinedAt: !7348)
!7357 = !DILocation(line: 0, scope: !7180, inlinedAt: !7358)
!7358 = distinct !DILocation(line: 364, column: 42, scope: !7022, inlinedAt: !7033)
!7359 = !DILocation(line: 364, column: 24, scope: !7022, inlinedAt: !7033)
!7360 = !DILocation(line: 364, column: 13, scope: !7022, inlinedAt: !7033)
!7361 = !DILocation(line: 364, column: 58, scope: !7022, inlinedAt: !7033)
!7362 = !DILocation(line: 0, scope: !7292, inlinedAt: !7363)
!7363 = distinct !DILocation(line: 364, column: 58, scope: !7022, inlinedAt: !7033)
!7364 = !DILocation(line: 0, scope: !7301, inlinedAt: !7365)
!7365 = distinct !DILocation(line: 1329, column: 14, scope: !7292, inlinedAt: !7363)
!7366 = !DILocation(line: 839, column: 39, scope: !7301, inlinedAt: !7365)
!7367 = !DILocation(line: 0, scope: !7321, inlinedAt: !7365)
!7368 = !DILocation(line: 0, scope: !7324, inlinedAt: !7365)
!7369 = !DILocation(line: 841, column: 18, scope: !7321, inlinedAt: !7365)
!7370 = !DILocation(line: 843, column: 17, scope: !7324, inlinedAt: !7365)
!7371 = !DILocation(line: 842, column: 13, scope: !7324, inlinedAt: !7365)
!7372 = !DILocation(line: 0, scope: !7136, inlinedAt: !7373)
!7373 = distinct !DILocation(line: 364, column: 13, scope: !7022, inlinedAt: !7033)
!7374 = !DILocation(line: 659, column: 36, scope: !7147, inlinedAt: !7375)
!7375 = distinct !DILocation(line: 1507, column: 33, scope: !7136, inlinedAt: !7373)
!7376 = !DILocation(line: 0, scope: !7155, inlinedAt: !7377)
!7377 = distinct !DILocation(line: 1507, column: 14, scope: !7136, inlinedAt: !7373)
!7378 = !DILocation(line: 0, scope: !7164, inlinedAt: !7379)
!7379 = distinct !DILocation(line: 79, column: 38, scope: !7155, inlinedAt: !7377)
!7380 = !DILocation(line: 82, column: 5, scope: !7164, inlinedAt: !7379)
!7381 = !DILocation(line: 0, scope: !7147, inlinedAt: !7375)
!7382 = !DILocation(line: 660, column: 9, scope: !7147, inlinedAt: !7375)
!7383 = !DILocation(line: 369, column: 13, scope: !7022, inlinedAt: !7033)
!7384 = !DILocation(line: 363, column: 9, scope: !7022, inlinedAt: !7033)
!7385 = !DILocation(line: 342, column: 16, scope: !7022, inlinedAt: !7033)
!7386 = !DILocation(line: 0, scope: !7136, inlinedAt: !7387)
!7387 = distinct !DILocation(line: 342, column: 16, scope: !7022, inlinedAt: !7033)
!7388 = !DILocation(line: 659, column: 36, scope: !7147, inlinedAt: !7389)
!7389 = distinct !DILocation(line: 1507, column: 33, scope: !7136, inlinedAt: !7387)
!7390 = !DILocation(line: 0, scope: !7155, inlinedAt: !7391)
!7391 = distinct !DILocation(line: 1507, column: 14, scope: !7136, inlinedAt: !7387)
!7392 = !DILocation(line: 0, scope: !7164, inlinedAt: !7393)
!7393 = distinct !DILocation(line: 79, column: 38, scope: !7155, inlinedAt: !7391)
!7394 = !DILocation(line: 82, column: 5, scope: !7164, inlinedAt: !7393)
!7395 = !DILocation(line: 0, scope: !7147, inlinedAt: !7389)
!7396 = !DILocation(line: 660, column: 9, scope: !7147, inlinedAt: !7389)
!7397 = !DILocation(line: 1016, column: 21, scope: !7180, inlinedAt: !7262)
!7398 = !DILocation(line: 343, column: 37, scope: !7022, inlinedAt: !7033)
!7399 = !DILocation(line: 344, column: 37, scope: !7022, inlinedAt: !7033)
!7400 = !DILocation(line: 342, column: 13, scope: !7022, inlinedAt: !7033)
!7401 = !DILocation(line: 288, column: 18, scope: !6615, inlinedAt: !6626)
!7402 = !DILocation(line: 0, scope: !6624, inlinedAt: !6626)
!7403 = !DILocation(line: 294, column: 9, scope: !6624, inlinedAt: !6626)
!7404 = !DILocation(line: 226, column: 13, scope: !6611)
!7405 = distinct !DISubprogram(name: "lock<tokio::runtime::io::registration_set::Synced>", linkageName: "_RNvMs5_NtNtNtCsG258MDvU3F_3std4sync6poison5mutexINtB5_5MutexNtNtNtNtCs2sJxpAufolh_5tokio7runtime2io16registration_set6SyncedE4lockCsa2e0UnRrdBM_12tokio_quiche", scope: !7406, file: !2167, line: 490, type: !7622, scopeLine: 490, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1673, templateParams: !7620, declaration: !7649, retainedNodes: !7650)
!7406 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "Mutex<tokio::runtime::io::registration_set::Synced>", scope: !1538, file: !2, size: 448, align: 64, flags: DIFlagPublic, elements: !7407, templateParams: !7620, identifier: "6d94222d2e529fff9982e3683c792513")
!7407 = !{!7408, !7409, !7410}
!7408 = !DIDerivedType(tag: DW_TAG_member, name: "inner", scope: !7406, file: !2, baseType: !1545, size: 32, align: 32, flags: DIFlagPrivate)
!7409 = !DIDerivedType(tag: DW_TAG_member, name: "poison", scope: !7406, file: !2, baseType: !1551, size: 8, align: 8, offset: 32, flags: DIFlagPrivate)
!7410 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !7406, file: !2, baseType: !7411, size: 384, align: 64, offset: 64, flags: DIFlagPrivate)
!7411 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "UnsafeCell<tokio::runtime::io::registration_set::Synced>", scope: !59, file: !2, size: 384, align: 64, flags: DIFlagPublic, elements: !7412, templateParams: !7620, identifier: "b6edb57974ed2c1689715b3e2f421a89")
!7412 = !{!7413}
!7413 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !7411, file: !2, baseType: !7414, size: 384, align: 64, flags: DIFlagPrivate)
!7414 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "Synced", scope: !7415, file: !2, size: 384, align: 64, flags: DIFlagProtected, elements: !7419, templateParams: !30, identifier: "63e456748bb6386ecb921c24c61502e6")
!7415 = !DINamespace(name: "registration_set", scope: !7416)
!7416 = !DINamespace(name: "io", scope: !7417)
!7417 = !DINamespace(name: "runtime", scope: !7418)
!7418 = !DINamespace(name: "tokio", scope: null)
!7419 = !{!7420, !7421, !7607}
!7420 = !DIDerivedType(tag: DW_TAG_member, name: "is_shutdown", scope: !7414, file: !2, baseType: !1567, size: 8, align: 8, offset: 320, flags: DIFlagPrivate)
!7421 = !DIDerivedType(tag: DW_TAG_member, name: "registrations", scope: !7414, file: !2, baseType: !7422, size: 128, align: 64, offset: 192, flags: DIFlagPrivate)
!7422 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "LinkedList<alloc::sync::Arc<tokio::runtime::io::scheduled_io::ScheduledIo, alloc::alloc::Global>>", scope: !7423, file: !2, size: 128, align: 64, flags: DIFlagProtected, elements: !7425, templateParams: !7587, identifier: "254ee2b55c2c53dadf706d9d549cbf33")
!7423 = !DINamespace(name: "linked_list", scope: !7424)
!7424 = !DINamespace(name: "util", scope: !7418)
!7425 = !{!7426, !7586}
!7426 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !7422, file: !2, baseType: !7427, size: 64, align: 64, flags: DIFlagPrivate)
!7427 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "Option<core::ptr::non_null::NonNull<tokio::runtime::io::scheduled_io::ScheduledIo>>", scope: !23, file: !2, size: 64, align: 64, flags: DIFlagPublic, elements: !7428, templateParams: !30, identifier: "cf0e88388ef829aa87d0fed6c49327d9")
!7428 = !{!7429}
!7429 = distinct !DICompositeType(tag: DW_TAG_variant_part, scope: !7427, file: !2, size: 64, align: 64, elements: !7430, templateParams: !30, identifier: "e81310ca01a206bea61370c8eb3ece4a", discriminator: !7585)
!7430 = !{!7431, !7581}
!7431 = !DIDerivedType(tag: DW_TAG_member, name: "None", scope: !7429, file: !2, baseType: !7432, size: 64, align: 64, extraData: i64 0)
!7432 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "None", scope: !7427, file: !2, size: 64, align: 64, flags: DIFlagPublic, elements: !30, templateParams: !7433, identifier: "605c86463fa9fc8373d12787dd1b756a")
!7433 = !{!7434}
!7434 = !DITemplateTypeParameter(name: "T", type: !7435)
!7435 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "NonNull<tokio::runtime::io::scheduled_io::ScheduledIo>", scope: !105, file: !2, size: 64, align: 64, flags: DIFlagPublic, elements: !7436, templateParams: !7458, identifier: "59f6b8168d8b193f513ff4f1782be40f")
!7436 = !{!7437}
!7437 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !7435, file: !2, baseType: !7438, size: 64, align: 64, flags: DIFlagPrivate)
!7438 = !DIDerivedType(tag: DW_TAG_pointer_type, name: "*const tokio::runtime::io::scheduled_io::ScheduledIo", baseType: !7439, size: 64, align: 64, dwarfAddressSpace: 0)
!7439 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ScheduledIo", scope: !7440, file: !2, size: 1024, align: 1024, flags: DIFlagProtected, elements: !7441, templateParams: !30, identifier: "e7787c143fccf1c59d465b886b616925")
!7440 = !DINamespace(name: "scheduled_io", scope: !7416)
!7441 = !{!7442, !7464, !7476}
!7442 = !DIDerivedType(tag: DW_TAG_member, name: "linked_list_pointers", scope: !7439, file: !2, baseType: !7443, size: 128, align: 64, flags: DIFlagProtected)
!7443 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "UnsafeCell<tokio::util::linked_list::Pointers<tokio::runtime::io::scheduled_io::ScheduledIo>>", scope: !59, file: !2, size: 128, align: 64, flags: DIFlagPublic, elements: !7444, templateParams: !7462, identifier: "bd9f8efb4d3ca0c8d4e0af916223e704")
!7444 = !{!7445}
!7445 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !7443, file: !2, baseType: !7446, size: 128, align: 64, flags: DIFlagPrivate)
!7446 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "Pointers<tokio::runtime::io::scheduled_io::ScheduledIo>", scope: !7423, file: !2, size: 128, align: 64, flags: DIFlagProtected, elements: !7447, templateParams: !7458, identifier: "ca6226aab9e104c59843ee6c949ea0e2")
!7447 = !{!7448}
!7448 = !DIDerivedType(tag: DW_TAG_member, name: "inner", scope: !7446, file: !2, baseType: !7449, size: 128, align: 64, flags: DIFlagPrivate)
!7449 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "UnsafeCell<tokio::util::linked_list::PointersInner<tokio::runtime::io::scheduled_io::ScheduledIo>>", scope: !59, file: !2, size: 128, align: 64, flags: DIFlagPublic, elements: !7450, templateParams: !7460, identifier: "88d525f0bebe02081e2ea15528f6d5be")
!7450 = !{!7451}
!7451 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !7449, file: !2, baseType: !7452, size: 128, align: 64, flags: DIFlagPrivate)
!7452 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "PointersInner<tokio::runtime::io::scheduled_io::ScheduledIo>", scope: !7423, file: !2, size: 128, align: 64, flags: DIFlagPrivate, elements: !7453, templateParams: !7458, identifier: "f212376417a5047bcda71a5854ab0696")
!7453 = !{!7454, !7455, !7456}
!7454 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !7452, file: !2, baseType: !7427, size: 64, align: 64, flags: DIFlagPrivate)
!7455 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !7452, file: !2, baseType: !7427, size: 64, align: 64, offset: 64, flags: DIFlagPrivate)
!7456 = !DIDerivedType(tag: DW_TAG_member, name: "_pin", scope: !7452, file: !2, baseType: !7457, align: 8, offset: 128, flags: DIFlagPrivate)
!7457 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "PhantomPinned", scope: !148, file: !2, align: 8, flags: DIFlagPublic, elements: !30, identifier: "f5f45555519f0fcd38b939eec19ecfe1")
!7458 = !{!7459}
!7459 = !DITemplateTypeParameter(name: "T", type: !7439)
!7460 = !{!7461}
!7461 = !DITemplateTypeParameter(name: "T", type: !7452)
!7462 = !{!7463}
!7463 = !DITemplateTypeParameter(name: "T", type: !7446)
!7464 = !DIDerivedType(tag: DW_TAG_member, name: "readiness", scope: !7439, file: !2, baseType: !7465, size: 64, align: 64, offset: 128, flags: DIFlagPrivate)
!7465 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "AtomicUsize", scope: !7466, file: !2, size: 64, align: 64, flags: DIFlagProtected, elements: !7469, templateParams: !30, identifier: "40d186cbc371f3cc7237cdb345d2e633")
!7466 = !DINamespace(name: "atomic_usize", scope: !7467)
!7467 = !DINamespace(name: "std", scope: !7468)
!7468 = !DINamespace(name: "loom", scope: !7418)
!7469 = !{!7470}
!7470 = !DIDerivedType(tag: DW_TAG_member, name: "inner", scope: !7465, file: !2, baseType: !7471, size: 64, align: 64, flags: DIFlagPrivate)
!7471 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "UnsafeCell<core::sync::atomic::Atomic<usize>>", scope: !59, file: !2, size: 64, align: 64, flags: DIFlagPublic, elements: !7472, templateParams: !7474, identifier: "c59cedf62adb1cb2f128c6430536f397")
!7472 = !{!7473}
!7473 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !7471, file: !2, baseType: !113, size: 64, align: 64, flags: DIFlagPrivate)
!7474 = !{!7475}
!7475 = !DITemplateTypeParameter(name: "T", type: !113)
!7476 = !DIDerivedType(tag: DW_TAG_member, name: "waiters", scope: !7439, file: !2, baseType: !7477, size: 448, align: 64, offset: 192, flags: DIFlagPrivate)
!7477 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "Mutex<tokio::runtime::io::scheduled_io::Waiters>", scope: !7478, file: !2, size: 448, align: 64, flags: DIFlagProtected, elements: !7479, templateParams: !7579, identifier: "c18e189d748d8765b64888b94249929d")
!7478 = !DINamespace(name: "mutex", scope: !7467)
!7479 = !{!7480}
!7480 = !DIDerivedType(tag: DW_TAG_member, name: "__0", scope: !7477, file: !2, baseType: !7481, size: 448, align: 64, flags: DIFlagPrivate)
!7481 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "Mutex<tokio::runtime::io::scheduled_io::Waiters>", scope: !1538, file: !2, size: 448, align: 64, flags: DIFlagPublic, elements: !7482, templateParams: !7579, identifier: "13a2f06d8b41c3f84f37281805617a93")
!7482 = !{!7483, !7484, !7485}
!7483 = !DIDerivedType(tag: DW_TAG_member, name: "inner", scope: !7481, file: !2, baseType: !1545, size: 32, align: 32, flags: DIFlagPrivate)
!7484 = !DIDerivedType(tag: DW_TAG_member, name: "poison", scope: !7481, file: !2, baseType: !1551, size: 8, align: 8, offset: 32, flags: DIFlagPrivate)
!7485 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !7481, file: !2, baseType: !7486, size: 384, align: 64, offset: 64, flags: DIFlagPrivate)
!7486 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "UnsafeCell<tokio::runtime::io::scheduled_io::Waiters>", scope: !59, file: !2, size: 384, align: 64, flags: DIFlagPublic, elements: !7487, templateParams: !7579, identifier: "a2de7996ff5225e4ad29e8044c772967")
!7487 = !{!7488}
!7488 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !7486, file: !2, baseType: !7489, size: 384, align: 64, flags: DIFlagPrivate)
!7489 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "Waiters", scope: !7440, file: !2, size: 384, align: 64, flags: DIFlagPrivate, elements: !7490, templateParams: !30, identifier: "c4dcfb29514b724071e45ac2f777d3ce")
!7490 = !{!7491, !7577, !7578}
!7491 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !7489, file: !2, baseType: !7492, size: 128, align: 64, flags: DIFlagPrivate)
!7492 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "LinkedList<tokio::runtime::io::scheduled_io::Waiter>", scope: !7423, file: !2, size: 128, align: 64, flags: DIFlagProtected, elements: !7493, templateParams: !7575, identifier: "f4fcc258bba8c21abeb0252c524014e1")
!7493 = !{!7494, !7574}
!7494 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !7492, file: !2, baseType: !7495, size: 64, align: 64, flags: DIFlagPrivate)
!7495 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "Option<core::ptr::non_null::NonNull<tokio::runtime::io::scheduled_io::Waiter>>", scope: !23, file: !2, size: 64, align: 64, flags: DIFlagPublic, elements: !7496, templateParams: !30, identifier: "e2c7d2fa065e6643c72ee78029f57888")
!7496 = !{!7497}
!7497 = distinct !DICompositeType(tag: DW_TAG_variant_part, scope: !7495, file: !2, size: 64, align: 64, elements: !7498, templateParams: !30, identifier: "69f08f6ab78304a4c145e47b19dd2625", discriminator: !7573)
!7498 = !{!7499, !7569}
!7499 = !DIDerivedType(tag: DW_TAG_member, name: "None", scope: !7497, file: !2, baseType: !7500, size: 64, align: 64, extraData: i64 0)
!7500 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "None", scope: !7495, file: !2, size: 64, align: 64, flags: DIFlagPublic, elements: !30, templateParams: !7501, identifier: "9cfc0414dcdede2acfbb4b9c2d885208")
!7501 = !{!7502}
!7502 = !DITemplateTypeParameter(name: "T", type: !7503)
!7503 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "NonNull<tokio::runtime::io::scheduled_io::Waiter>", scope: !105, file: !2, size: 64, align: 64, flags: DIFlagPublic, elements: !7504, templateParams: !7521, identifier: "3ccb93fd7240b546d823a97317a1224d")
!7504 = !{!7505}
!7505 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !7503, file: !2, baseType: !7506, size: 64, align: 64, flags: DIFlagPrivate)
!7506 = !DIDerivedType(tag: DW_TAG_pointer_type, name: "*const tokio::runtime::io::scheduled_io::Waiter", baseType: !7507, size: 64, align: 64, dwarfAddressSpace: 0)
!7507 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "Waiter", scope: !7440, file: !2, size: 384, align: 64, flags: DIFlagPrivate, elements: !7508, templateParams: !30, identifier: "4beb29e96b042a83202265e5857d54a5")
!7508 = !{!7509, !7525, !7561, !7567, !7568}
!7509 = !DIDerivedType(tag: DW_TAG_member, name: "pointers", scope: !7507, file: !2, baseType: !7510, size: 128, align: 64, flags: DIFlagPrivate)
!7510 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "Pointers<tokio::runtime::io::scheduled_io::Waiter>", scope: !7423, file: !2, size: 128, align: 64, flags: DIFlagProtected, elements: !7511, templateParams: !7521, identifier: "2fab4dc7a0864fd9b7ab24bbb3eddde7")
!7511 = !{!7512}
!7512 = !DIDerivedType(tag: DW_TAG_member, name: "inner", scope: !7510, file: !2, baseType: !7513, size: 128, align: 64, flags: DIFlagPrivate)
!7513 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "UnsafeCell<tokio::util::linked_list::PointersInner<tokio::runtime::io::scheduled_io::Waiter>>", scope: !59, file: !2, size: 128, align: 64, flags: DIFlagPublic, elements: !7514, templateParams: !7523, identifier: "417e1e9b7f83778b3677c2147d196c1a")
!7514 = !{!7515}
!7515 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !7513, file: !2, baseType: !7516, size: 128, align: 64, flags: DIFlagPrivate)
!7516 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "PointersInner<tokio::runtime::io::scheduled_io::Waiter>", scope: !7423, file: !2, size: 128, align: 64, flags: DIFlagPrivate, elements: !7517, templateParams: !7521, identifier: "703a7bad10fae705c879495d1955c8ab")
!7517 = !{!7518, !7519, !7520}
!7518 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !7516, file: !2, baseType: !7495, size: 64, align: 64, flags: DIFlagPrivate)
!7519 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !7516, file: !2, baseType: !7495, size: 64, align: 64, offset: 64, flags: DIFlagPrivate)
!7520 = !DIDerivedType(tag: DW_TAG_member, name: "_pin", scope: !7516, file: !2, baseType: !7457, align: 8, offset: 128, flags: DIFlagPrivate)
!7521 = !{!7522}
!7522 = !DITemplateTypeParameter(name: "T", type: !7507)
!7523 = !{!7524}
!7524 = !DITemplateTypeParameter(name: "T", type: !7516)
!7525 = !DIDerivedType(tag: DW_TAG_member, name: "waker", scope: !7507, file: !2, baseType: !7526, size: 128, align: 64, offset: 128, flags: DIFlagPrivate)
!7526 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "Option<core::task::wake::Waker>", scope: !23, file: !2, size: 128, align: 64, flags: DIFlagPublic, elements: !7527, templateParams: !30, identifier: "2ca19a2740ecea60b08c979ce69ed590")
!7527 = !{!7528}
!7528 = distinct !DICompositeType(tag: DW_TAG_variant_part, scope: !7526, file: !2, size: 128, align: 64, elements: !7529, templateParams: !30, identifier: "ae2a7a5918b39376f9054e25cc0873a5", discriminator: !7560)
!7529 = !{!7530, !7556}
!7530 = !DIDerivedType(tag: DW_TAG_member, name: "None", scope: !7528, file: !2, baseType: !7531, size: 128, align: 64, extraData: i64 0)
!7531 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "None", scope: !7526, file: !2, size: 128, align: 64, flags: DIFlagPublic, elements: !30, templateParams: !7532, identifier: "d939fca302d2cdaf69e2d0a525775558")
!7532 = !{!7533}
!7533 = !DITemplateTypeParameter(name: "T", type: !7534)
!7534 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "Waker", scope: !7535, file: !2, size: 128, align: 64, flags: DIFlagPublic, elements: !7537, templateParams: !30, identifier: "cbfc4be866ea38afde261cb5b0285230")
!7535 = !DINamespace(name: "wake", scope: !7536)
!7536 = !DINamespace(name: "task", scope: !24)
!7537 = !{!7538}
!7538 = !DIDerivedType(tag: DW_TAG_member, name: "waker", scope: !7534, file: !2, baseType: !7539, size: 128, align: 64, flags: DIFlagPrivate)
!7539 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "RawWaker", scope: !7535, file: !2, size: 128, align: 64, flags: DIFlagPublic, elements: !7540, templateParams: !30, identifier: "985780af408f6b3d34578b27b77c5abd")
!7540 = !{!7541, !7542}
!7541 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !7539, file: !2, baseType: !6, size: 64, align: 64, offset: 64, flags: DIFlagPrivate)
!7542 = !DIDerivedType(tag: DW_TAG_member, name: "vtable", scope: !7539, file: !2, baseType: !7543, size: 64, align: 64, flags: DIFlagPrivate)
!7543 = !DIDerivedType(tag: DW_TAG_pointer_type, name: "&core::task::wake::RawWakerVTable", baseType: !7544, size: 64, align: 64, dwarfAddressSpace: 0)
!7544 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "RawWakerVTable", scope: !7535, file: !2, size: 256, align: 64, flags: DIFlagPublic, elements: !7545, templateParams: !30, identifier: "72e9e127931ae68b74750d2e37cf6a48")
!7545 = !{!7546, !7550, !7554, !7555}
!7546 = !DIDerivedType(tag: DW_TAG_member, name: "clone", scope: !7544, file: !2, baseType: !7547, size: 64, align: 64, flags: DIFlagPrivate)
!7547 = !DIDerivedType(tag: DW_TAG_pointer_type, name: "unsafe fn(*const ()) -> core::task::wake::RawWaker", baseType: !7548, size: 64, align: 64, dwarfAddressSpace: 0)
!7548 = !DISubroutineType(types: !7549)
!7549 = !{!7539, !6}
!7550 = !DIDerivedType(tag: DW_TAG_member, name: "wake", scope: !7544, file: !2, baseType: !7551, size: 64, align: 64, offset: 64, flags: DIFlagPrivate)
!7551 = !DIDerivedType(tag: DW_TAG_pointer_type, name: "unsafe fn(*const ())", baseType: !7552, size: 64, align: 64, dwarfAddressSpace: 0)
!7552 = !DISubroutineType(types: !7553)
!7553 = !{null, !6}
!7554 = !DIDerivedType(tag: DW_TAG_member, name: "wake_by_ref", scope: !7544, file: !2, baseType: !7551, size: 64, align: 64, offset: 128, flags: DIFlagPrivate)
!7555 = !DIDerivedType(tag: DW_TAG_member, name: "drop", scope: !7544, file: !2, baseType: !7551, size: 64, align: 64, offset: 192, flags: DIFlagPrivate)
!7556 = !DIDerivedType(tag: DW_TAG_member, name: "Some", scope: !7528, file: !2, baseType: !7557, size: 128, align: 64)
!7557 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "Some", scope: !7526, file: !2, size: 128, align: 64, flags: DIFlagPublic, elements: !7558, templateParams: !7532, identifier: "3c353bcada4c1597123202959075c3aa")
!7558 = !{!7559}
!7559 = !DIDerivedType(tag: DW_TAG_member, name: "__0", scope: !7557, file: !2, baseType: !7534, size: 128, align: 64, flags: DIFlagPublic)
!7560 = !DIDerivedType(tag: DW_TAG_member, scope: !7526, file: !2, baseType: !137, size: 64, align: 64, flags: DIFlagArtificial)
!7561 = !DIDerivedType(tag: DW_TAG_member, name: "interest", scope: !7507, file: !2, baseType: !7562, size: 64, align: 64, offset: 256, flags: DIFlagPrivate)
!7562 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "Interest", scope: !7563, file: !2, size: 64, align: 64, flags: DIFlagPublic, elements: !7565, templateParams: !30, identifier: "17d90af766dd692b8c05e1c877c5baac")
!7563 = !DINamespace(name: "interest", scope: !7564)
!7564 = !DINamespace(name: "io", scope: !7418)
!7565 = !{!7566}
!7566 = !DIDerivedType(tag: DW_TAG_member, name: "__0", scope: !7562, file: !2, baseType: !9, size: 64, align: 64, flags: DIFlagPrivate)
!7567 = !DIDerivedType(tag: DW_TAG_member, name: "is_ready", scope: !7507, file: !2, baseType: !1567, size: 8, align: 8, offset: 320, flags: DIFlagPrivate)
!7568 = !DIDerivedType(tag: DW_TAG_member, name: "_p", scope: !7507, file: !2, baseType: !7457, align: 8, offset: 328, flags: DIFlagPrivate)
!7569 = !DIDerivedType(tag: DW_TAG_member, name: "Some", scope: !7497, file: !2, baseType: !7570, size: 64, align: 64)
!7570 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "Some", scope: !7495, file: !2, size: 64, align: 64, flags: DIFlagPublic, elements: !7571, templateParams: !7501, identifier: "7a63ad62a08900b6b9441c016087dff9")
!7571 = !{!7572}
!7572 = !DIDerivedType(tag: DW_TAG_member, name: "__0", scope: !7570, file: !2, baseType: !7503, size: 64, align: 64, flags: DIFlagPublic)
!7573 = !DIDerivedType(tag: DW_TAG_member, scope: !7495, file: !2, baseType: !137, size: 64, align: 64, flags: DIFlagArtificial)
!7574 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !7492, file: !2, baseType: !7495, size: 64, align: 64, offset: 64, flags: DIFlagPrivate)
!7575 = !{!7576}
!7576 = !DITemplateTypeParameter(name: "L", type: !7507)
!7577 = !DIDerivedType(tag: DW_TAG_member, name: "reader", scope: !7489, file: !2, baseType: !7526, size: 128, align: 64, offset: 128, flags: DIFlagPrivate)
!7578 = !DIDerivedType(tag: DW_TAG_member, name: "writer", scope: !7489, file: !2, baseType: !7526, size: 128, align: 64, offset: 256, flags: DIFlagPrivate)
!7579 = !{!7580}
!7580 = !DITemplateTypeParameter(name: "T", type: !7489)
!7581 = !DIDerivedType(tag: DW_TAG_member, name: "Some", scope: !7429, file: !2, baseType: !7582, size: 64, align: 64)
!7582 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "Some", scope: !7427, file: !2, size: 64, align: 64, flags: DIFlagPublic, elements: !7583, templateParams: !7433, identifier: "40ea62f7992f65dd237775912778143d")
!7583 = !{!7584}
!7584 = !DIDerivedType(tag: DW_TAG_member, name: "__0", scope: !7582, file: !2, baseType: !7435, size: 64, align: 64, flags: DIFlagPublic)
!7585 = !DIDerivedType(tag: DW_TAG_member, scope: !7427, file: !2, baseType: !137, size: 64, align: 64, flags: DIFlagArtificial)
!7586 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !7422, file: !2, baseType: !7427, size: 64, align: 64, offset: 64, flags: DIFlagPrivate)
!7587 = !{!7588}
!7588 = !DITemplateTypeParameter(name: "L", type: !7589)
!7589 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "Arc<tokio::runtime::io::scheduled_io::ScheduledIo, alloc::alloc::Global>", scope: !100, file: !2, size: 64, align: 64, flags: DIFlagPublic, elements: !7590, templateParams: !7606, identifier: "77e7bc8fd01e72c0430bff59eda21f88")
!7590 = !{!7591, !7603, !7605}
!7591 = !DIDerivedType(tag: DW_TAG_member, name: "ptr", scope: !7589, file: !2, baseType: !7592, size: 64, align: 64, flags: DIFlagPrivate)
!7592 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "NonNull<alloc::sync::ArcInner<tokio::runtime::io::scheduled_io::ScheduledIo>>", scope: !105, file: !2, size: 64, align: 64, flags: DIFlagPublic, elements: !7593, templateParams: !7601, identifier: "38c65363e4ff6e6589a1a5a0887210ad")
!7593 = !{!7594}
!7594 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !7592, file: !2, baseType: !7595, size: 64, align: 64, flags: DIFlagPrivate)
!7595 = !DIDerivedType(tag: DW_TAG_pointer_type, name: "*const alloc::sync::ArcInner<tokio::runtime::io::scheduled_io::ScheduledIo>", baseType: !7596, size: 64, align: 64, dwarfAddressSpace: 0)
!7596 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ArcInner<tokio::runtime::io::scheduled_io::ScheduledIo>", scope: !100, file: !2, size: 2048, align: 1024, flags: DIFlagPrivate, elements: !7597, templateParams: !7458, identifier: "2d808b626219746856750f46c0a7da1f")
!7597 = !{!7598, !7599, !7600}
!7598 = !DIDerivedType(tag: DW_TAG_member, name: "strong", scope: !7596, file: !2, baseType: !113, size: 64, align: 64, flags: DIFlagPrivate)
!7599 = !DIDerivedType(tag: DW_TAG_member, name: "weak", scope: !7596, file: !2, baseType: !113, size: 64, align: 64, offset: 64, flags: DIFlagPrivate)
end_hunk_2
