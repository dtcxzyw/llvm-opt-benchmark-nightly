Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/quiche-rs/original/quiche_apps-3178ca8440f7cc12.quiche_apps.d9b5ab2b11efecdc-cgu.11?download=true
inline.NumInlined: 75
inline.NumDeleted: 32
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_RNvXNtCsiGRwBGCeC5s_11quiche_apps4argsNtB2_10CommonArgsNtB2_4Args11with_docopt:bb.a
    #dbg_value(ptr %i.yb, !691, !DIExpression(), !2166)
    #dbg_value(ptr %i.yb, !698, !DIExpression(), !2168)
    #dbg_value(ptr %i.yb, !705, !DIExpression(), !2170)
  call void @_RNvXsg_NtCsjqcU1oJFKXj_9hashbrown3rawINtB5_8RawTableTNtNtCsexYYUdYSQU6_5alloc6string6StringBP_EENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsiGRwBGCeC5s_11quiche_apps(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.yb), !dbg !3661
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ae), !dbg !3089
  ret void, !dbg !3662

bb.fx:                                            ; preds = %bb.ft
    #dbg_value(ptr %i.ou, !2885, !DIExpression(), !3061)
    #dbg_value(ptr %i.ou, !2892, !DIExpression(), !3064)
    #dbg_value(ptr %i.wo, !2886, !DIExpression(), !3061)
    #dbg_value(ptr %i.wo, !2893, !DIExpression(), !3064)
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.wo, ptr align 1 %i.ou, i64 %i.ov, i1 false), !dbg !3663
    #dbg_value(i64 %i.ov, !2904, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !3072)
    #dbg_value(i64 %i.ov, !2433, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !3073)
  br label %bb.fu, !dbg !3664

bb.fy:                                            ; preds = %bb.fq
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecRShEECsiGRwBGCeC5s_11quiche_apps(ptr noalias nofree noundef align 8 dereferenceable(24) %i.x) #14
          to label %bb.bg unwind label %bb.ac, !dbg !3643

bb.fz:                                            ; preds = %.loopexit807.invoke, %.loopexit792, %.loopexit796, %bb.eu, %.loopexit800, %bb.el, %.loopexit804, %bb.ec, %bb.ea, %.loopexit808, %bb.ds, %bb.dr, %bb.dq, %bb.dp
  %i.yc = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsexYYUdYSQU6_5alloc6string6StringEECsiGRwBGCeC5s_11quiche_apps(ptr noalias nofree noundef align 8 dereferenceable(24) %i.y) #14
          to label %bb.bg unwind label %bb.ac, !dbg !3657

bb.ga:                                            ; preds = %.thread, %bb.as
  %.pn328713 = phi { ptr, i32 } [ %i.ej, %.thread ], [ %.pn.pn, %bb.as ]
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecRShEECsiGRwBGCeC5s_11quiche_apps(ptr noalias nofree noundef align 8 dereferenceable(24) %i.ac) #14
          to label %.body unwind label %bb.ac, !dbg !3157
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXs0_NtCsiGRwBGCeC5s_11quiche_apps4argsNtB5_10ClientArgsNtB5_4Args11with_docopt(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([232 x i8]) align 8 captures(none) dereferenceable(232) %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(280) %1) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !3688 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  %i.b = alloca [1 x i8], align 1                 ; 3 uses
  %i.c = alloca [1 x i8], align 1                 ; 3 uses
  %i.d = alloca [1 x i8], align 1                 ; 3 uses
  %i.e = alloca [1 x i8], align 1                 ; 3 uses
  %i.f = alloca [24 x i8], align 8                ; 6 uses
  %i.g = alloca [24 x i8], align 8                ; 6 uses
  %i.h = alloca [24 x i8], align 8                ; 6 uses
  %i.i = alloca [24 x i8], align 8                ; 6 uses
    #dbg_value(ptr poison, !4264, !DIExpression(), !4275)
    #dbg_value(ptr poison, !4334, !DIExpression(), !4336)
    #dbg_value(ptr poison, !4338, !DIExpression(), !4345)
    #dbg_value(ptr poison, !4264, !DIExpression(), !4350)
    #dbg_value(ptr poison, !4334, !DIExpression(), !4351)
    #dbg_value(ptr poison, !4338, !DIExpression(), !4353)
  %i.j = alloca [24 x i8], align 8                ; 6 uses
  %i.k = alloca [32 x i8], align 8                ; 4 uses
  %i.l = alloca [24 x i8], align 8                ; 8 uses
  %i.m = alloca [24 x i8], align 8                ; 8 uses
  %i.n = alloca [24 x i8], align 8                ; 7 uses
  %i.o = alloca [24 x i8], align 8                ; 6 uses
  %i.p = alloca [24 x i8], align 8                ; 7 uses
  %i.q = alloca [24 x i8], align 8                ; 8 uses
    #dbg_declare(ptr poison, !883, !DIExpression(DW_OP_LLVM_fragment, 16, 48), !3714)
  %i.r = alloca [24 x i8], align 8                ; 6 uses
  %i.s = alloca [32 x i8], align 8                ; 7 uses
  %i.t = alloca [24 x i8], align 8                ; 5 uses
  %i.u = alloca [24 x i8], align 8                ; 6 uses
  %i.v = alloca [32 x i8], align 8                ; 7 uses
  %i.w = alloca [24 x i8], align 8                ; 5 uses
    #dbg_declare(ptr poison, !4354, !DIExpression(DW_OP_LLVM_fragment, 16, 48), !3723)
  %i.x = alloca [24 x i8], align 8                ; 8 uses
  %i.y = alloca [96 x i8], align 8                ; 6 uses
  %i.z = alloca [96 x i8], align 8                ; 27 uses
    #dbg_value(ptr %1, !4239, !DIExpression(), !4371)
    #dbg_declare(ptr %i.z, !4240, !DIExpression(), !4372)
    #dbg_declare(ptr %i.y, !4373, !DIExpression(), !4385)
    #dbg_declare(ptr %i.x, !4243, !DIExpression(), !4386)
    #dbg_declare(ptr %i.w, !4248, !DIExpression(), !4387)
    #dbg_declare(ptr %i.v, !4389, !DIExpression(), !4447)
    #dbg_declare(ptr %i.v, !4448, !DIExpression(), !4454)
    #dbg_declare(ptr %i.v, !4456, !DIExpression(), !4463)
    #dbg_declare(ptr %i.u, !4307, !DIExpression(), !4464)
    #dbg_declare(ptr %i.u, !4466, !DIExpression(), !4472)
    #dbg_declare(ptr %i.t, !4249, !DIExpression(), !4473)
    #dbg_declare(ptr %i.s, !4474, !DIExpression(), !4492)
    #dbg_declare(ptr %i.s, !4493, !DIExpression(), !4499)
    #dbg_declare(ptr %i.s, !4500, !DIExpression(), !4506)
    #dbg_declare(ptr %i.r, !4307, !DIExpression(), !4507)
    #dbg_declare(ptr %i.r, !4466, !DIExpression(), !4510)
    #dbg_declare(ptr %i.q, !4254, !DIExpression(), !4511)
    #dbg_declare(ptr %i.p, !4255, !DIExpression(), !4512)
    #dbg_declare(ptr %i.o, !4513, !DIExpression(), !4591)
    #dbg_declare(ptr %i.n, !4256, !DIExpression(), !4592)
    #dbg_declare(ptr %i.m, !4257, !DIExpression(), !4593)
    #dbg_declare(ptr %i.l, !4258, !DIExpression(), !4594)
    #dbg_declare(ptr poison, !4382, !DIExpression(), !4595)
    #dbg_declare(ptr poison, !4588, !DIExpression(), !4596)
    #dbg_declare(ptr poison, !4380, !DIExpression(), !4597)
    #dbg_value(i32 16, !4598, !DIExpression(), !4615)
    #dbg_declare(ptr poison, !4616, !DIExpression(), !4626)
    #dbg_declare(ptr poison, !4644, !DIExpression(), !4658)
    #dbg_declare(ptr poison, !4659, !DIExpression(), !4663)
    #dbg_declare(ptr poison, !4664, !DIExpression(), !4668)
    #dbg_value(i64 1, !4268, !DIExpression(), !4673)
    #dbg_declare(ptr poison, !4692, !DIExpression(), !4707)
    #dbg_value(i64 0, !4708, !DIExpression(), !4714)
    #dbg_value(i64 1, !4268, !DIExpression(), !4716)
    #dbg_value(i32 10, !4717, !DIExpression(), !4726)
    #dbg_declare(ptr poison, !4309, !DIExpression(), !4736)
    #dbg_value(i64 16, !4268, !DIExpression(), !4737)
    #dbg_declare(ptr poison, !4738, !DIExpression(), !4747)
    #dbg_value(ptr @_RNvXs_NtNtCsexYYUdYSQU6_5alloc3vec21spec_from_iter_nestedINtB6_3VecNtCs7NSBlMkneoK_3url3UrlEINtB4_18SpecFromIterNestedB13_INtNtNtNtCskKLDkoKarTP_4core4iter8adapters3map3MapINtNtB6_9into_iter8IntoIterReENCNvXs0_NtCsiGRwBGCeC5s_11quiche_apps4argsNtB3m_10ClientArgsNtB3m_4Args11with_docopts_0EE9from_iterB3o_, !4460, !DIExpression(), !4748)
    #dbg_declare(ptr poison, !4316, !DIExpression(), !4749)
    #dbg_value(i64 16, !4268, !DIExpression(), !4750)
    #dbg_declare(ptr poison, !4751, !DIExpression(), !4759)
    #dbg_value(ptr @_RNvXs_NtNtCsexYYUdYSQU6_5alloc3vec21spec_from_iter_nestedINtB6_3VecNtNtB8_6string6StringEINtB4_18SpecFromIterNestedB13_INtNtNtNtCskKLDkoKarTP_4core4iter8adapters3map3MapINtNtB6_9into_iter8IntoIterReENCNvXs0_NtCsiGRwBGCeC5s_11quiche_apps4argsNtB3j_10ClientArgsNtB3j_4Args11with_docopts0_0EE9from_iterB3l_, !4502, !DIExpression(), !4760)
    #dbg_value(i32 10, !4761, !DIExpression(), !4769)
    #dbg_declare(ptr poison, !4616, !DIExpression(), !4787)
    #dbg_declare(ptr poison, !4644, !DIExpression(), !4790)
    #dbg_declare(ptr poison, !4659, !DIExpression(), !4793)
    #dbg_declare(ptr poison, !4664, !DIExpression(), !4796)
    #dbg_value(i64 1, !4268, !DIExpression(), !4805)
    #dbg_declare(ptr poison, !4692, !DIExpression(), !4808)
    #dbg_value(i64 0, !4708, !DIExpression(), !4811)
    #dbg_value(i64 1, !4268, !DIExpression(), !4814)
    #dbg_declare(ptr poison, !4616, !DIExpression(), !4828)
    #dbg_declare(ptr poison, !4644, !DIExpression(), !4831)
    #dbg_declare(ptr poison, !4659, !DIExpression(), !4834)
    #dbg_declare(ptr poison, !4664, !DIExpression(), !4837)
    #dbg_value(i64 1, !4268, !DIExpression(), !4846)
    #dbg_declare(ptr poison, !4692, !DIExpression(), !4849)
    #dbg_value(i64 0, !4708, !DIExpression(), !4852)
    #dbg_value(i64 1, !4268, !DIExpression(), !4855)
    #dbg_declare(ptr poison, !4616, !DIExpression(), !4869)
    #dbg_declare(ptr poison, !4644, !DIExpression(), !4872)
    #dbg_declare(ptr poison, !4659, !DIExpression(), !4875)
    #dbg_declare(ptr poison, !4664, !DIExpression(), !4878)
    #dbg_value(i64 1, !4268, !DIExpression(), !4887)
    #dbg_declare(ptr poison, !4692, !DIExpression(), !4890)
    #dbg_value(i64 0, !4708, !DIExpression(), !4893)
    #dbg_value(i64 1, !4268, !DIExpression(), !4896)
    #dbg_declare(ptr poison, !4616, !DIExpression(), !4910)
    #dbg_declare(ptr poison, !4644, !DIExpression(), !4913)
    #dbg_declare(ptr poison, !4659, !DIExpression(), !4916)
    #dbg_declare(ptr poison, !4664, !DIExpression(), !4919)
    #dbg_value(i64 1, !4268, !DIExpression(), !4928)
    #dbg_declare(ptr poison, !4692, !DIExpression(), !4931)
    #dbg_value(i64 0, !4708, !DIExpression(), !4934)
    #dbg_value(i64 1, !4268, !DIExpression(), !4937)
    #dbg_value(i32 10, !4938, !DIExpression(), !4959)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.z), !dbg !5659
  call void @llvm.lifetime.start.p0(ptr nonnull %i.y), !dbg !5660
  call void @_RNvMs2_NtCs8c5NiIByPWa_6docopt4doptNtB5_6Docopt5parse(ptr noalias nofree noundef nonnull sret([96 x i8]) align 8 captures(none) dereferenceable(96) %i.y, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(280) %1), !dbg !5661
  %i.aa = load ptr, ptr %i.y, align 8, !dbg !5662, !noundef !364
  %i.ab = icmp eq ptr %i.aa, null, !dbg !5662
  br i1 %i.ab, label %bb.b, label %bb.f, !dbg !5663

bb.b:                                             ; preds = %bb.a
  %i.ac = getelementptr inbounds nuw i8, ptr %i.y, i64 8, !dbg !5664
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !dbg !5665
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.k, ptr noundef nonnull align 8 dereferenceable(32) %i.ac, i64 32, i1 false), !dbg !5664
    #dbg_declare(ptr poison, !4969, !DIExpression(), !3840)
    #dbg_declare(ptr %i.k, !4972, !DIExpression(), !3841)
  invoke void @_RNvMNtCs8c5NiIByPWa_6docopt4doptNtB2_5Error4exit(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.k) #15
          to label %bb.d unwind label %bb.c, !dbg !5666

bb.c:                                             ; preds = %bb.b
  %i.ad = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs8c5NiIByPWa_6docopt4dopt5ErrorECsiGRwBGCeC5s_11quiche_apps(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.k) #14
          to label %common.resume unwind label %bb.e, !dbg !5667

bb.d:                                             ; preds = %bb.b
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.ae = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #12, !dbg !5668
  unreachable, !dbg !5668

common.resume:                                    ; preds = %bb.g, %bb.dw, %bb.c
  %common.resume.op = phi { ptr, i32 } [ %i.nd, %bb.dw ], [ %i.ad, %bb.c ], [ %.pn203.pn.pn.pn.pn.pn, %bb.g ]
  resume { ptr, i32 } %common.resume.op, !dbg !4371

bb.f:                                             ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %i.z, ptr noundef nonnull align 8 dereferenceable(96) %i.y, i64 96, i1 false), !dbg !5669
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y), !dbg !5670
  %i.af = invoke { ptr, i64 } @_RNvMs3_NtCs8c5NiIByPWa_6docopt4doptNtB5_7ArgvMap7get_str(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(96) %i.z, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @48, i64 noundef 14)
          to label %bb.i unwind label %bb.h, !dbg !5671 ; 2 uses

bb.g:                                             ; preds = %bb.ai, %bb.h
  %.pn203.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn203.pn.pn.pn.pn, %bb.ai ], [ %i.ag, %bb.h ]
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs8c5NiIByPWa_6docopt4dopt7ArgvMapECsiGRwBGCeC5s_11quiche_apps(ptr noalias nofree noundef align 8 dereferenceable(96) %i.z) #14
          to label %common.resume unwind label %bb.dy, !dbg !5672

bb.h:                                             ; preds = %_RNvMsB_NtCskKLDkoKarTP_4core3numm27from_ascii_bytes_radix_impl.exit.thread, %bb.ac, %bb.aa, %bb.y, %bb.w, %bb.f
  %i.ag = landingpad { ptr, i32 }
          cleanup
  br label %bb.g

bb.i:                                             ; preds = %bb.f
  %i.ah = extractvalue { ptr, i64 } %i.af, 0, !dbg !5673 ; 3 uses
  %i.ai = extractvalue { ptr, i64 } %i.af, 1, !dbg !5673 ; 3 uses
    #dbg_value(ptr %i.ah, !4241, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !4974)
    #dbg_value(ptr %i.ah, !4612, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !4615)
    #dbg_value(i64 %i.ai, !4241, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !4974)
    #dbg_value(i64 %i.ai, !4612, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !4615)
    #dbg_value(ptr %i.ah, !4975, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !3867)
    #dbg_value(ptr %i.ah, !4981, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !3868)
    #dbg_value(i64 %i.ai, !4975, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !3867)
    #dbg_value(i64 %i.ai, !4981, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !3868)
    #dbg_value(i32 16, !4978, !DIExpression(), !3867)
    #dbg_value(i32 16, !5009, !DIExpression(), !3871)
    #dbg_value(i32 16, !5013, !DIExpression(), !3876)
    #dbg_value(i32 16, !5023, !DIExpression(), !3880)
    #dbg_value(i8 0, !4979, !DIExpression(), !3881)
    #dbg_value(i8 0, !5010, !DIExpression(), !3871)
  switch i64 %i.ai, label %thread-pre-split.i [
    i64 0, label %_RNvMsB_NtCskKLDkoKarTP_4core3numm27from_ascii_bytes_radix_impl.exit.thread
    i64 1, label %bb.j
  ], !dbg !5674

bb.j:                                             ; preds = %bb.i
  %i.aj = load i8, ptr %i.ah, align 1, !dbg !5675, !alias.scope !5031, !noundef !364 ; 2 uses
  switch i8 %i.aj, label %bb.k [
    i8 43, label %_RNvMsB_NtCskKLDkoKarTP_4core3numm27from_ascii_bytes_radix_impl.exit.thread
    i8 45, label %_RNvMsB_NtCskKLDkoKarTP_4core3numm27from_ascii_bytes_radix_impl.exit.thread
  ], !dbg !5675

thread-pre-split.i:                               ; preds = %bb.i
  %.pr.i = load i8, ptr %i.ah, align 1, !dbg !5675, !alias.scope !5031
  br label %bb.k, !dbg !5675

bb.k:                                             ; preds = %thread-pre-split.i, %bb.j
  %i.ak = phi i8 [ %.pr.i, %thread-pre-split.i ], [ %i.aj, %bb.j ], !dbg !5675
  %cond.i = icmp eq i8 %i.ak, 43, !dbg !5675      ; 2 uses
  %i.al = sext i1 %cond.i to i64, !dbg !5675
  %.sroa.15.0.i = add nsw i64 %i.ai, %i.al, !dbg !5675 ; 10 uses
  %.sroa.0.0.idx.i = zext i1 %cond.i to i64, !dbg !5675
  %.sroa.0.0.i = getelementptr inbounds nuw i8, ptr %i.ah, i64 %.sroa.0.0.idx.i, !dbg !5675 ; 9 uses
    #dbg_value(ptr %.sroa.0.0.i, !4981, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !3868)
    #dbg_value(ptr %.sroa.0.0.i, !4975, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !3867)
    #dbg_value(i64 %.sroa.15.0.i, !4981, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !3868)
    #dbg_value(i64 %.sroa.15.0.i, !4975, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !3867)
    #dbg_value(i32 0, !4985, !DIExpression(), !3884)
    #dbg_value(i32 0, !5017, !DIExpression(), !3876)
    #dbg_value(i32 0, !5029, !DIExpression(), !3880)
    #dbg_value(i32 0, !5032, !DIExpression(), !3887)
    #dbg_value(ptr %.sroa.0.0.i, !5011, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !3871)
    #dbg_value(i64 %.sroa.15.0.i, !5011, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !3871)
  %i.am = icmp samesign ult i64 %.sroa.15.0.i, 9
  br i1 %i.am, label %.preheader.i, label %.preheader79.i, !dbg !5676

.preheader.i:                                     ; preds = %bb.k
    #dbg_value(ptr %.sroa.0.0.i, !4981, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !3868)
    #dbg_value(ptr %.sroa.0.0.i, !4975, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !3867)
    #dbg_value(i64 %.sroa.15.0.i, !4981, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !3868)
    #dbg_value(i64 %.sroa.15.0.i, !4975, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !3867)
    #dbg_value(i32 0, !5032, !DIExpression(), !3887)
    #dbg_value(i32 0, !5029, !DIExpression(), !3880)
    #dbg_value(i32 0, !5017, !DIExpression(), !3876)
    #dbg_value(i32 0, !4985, !DIExpression(), !3884)
  %.not7390.i = icmp eq i64 %.sroa.15.0.i, 0, !dbg !5677
  br i1 %.not7390.i, label %.loopexit.i, label %.lr.ph.i, !dbg !5677

bb.l:                                             ; preds = %bb.m
  %i.an = getelementptr inbounds nuw i8, ptr %.sroa.0.189.i, i64 1, !dbg !5678
    #dbg_value(ptr %i.an, !4995, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !3888)
  %i.ao = add nsw i64 %.sroa.15.188.i, -1, !dbg !5678 ; 2 uses
    #dbg_value(i64 %i.ao, !4995, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !3888)
  %i.ap = shl nuw i32 %.sroa.045.087.i, 4, !dbg !5679
    #dbg_value(i32 %i.ap, !5018, !DIExpression(), !3889)
    #dbg_value(i32 %i.ap, !4996, !DIExpression(DW_OP_LLVM_fragment, 32, 32), !3890)
    #dbg_value(i32 %i.ap, !4985, !DIExpression(), !3884)
    #dbg_value(i32 %i.ap, !5017, !DIExpression(), !3876)
    #dbg_value(i32 %i.ap, !5029, !DIExpression(), !3880)
    #dbg_value(i32 %i.ap, !5032, !DIExpression(), !3887)
  %i.aq = or disjoint i32 %.sroa.02.0.i.i, %i.ap, !dbg !5680 ; 2 uses
    #dbg_value(ptr %i.an, !4981, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !3868)
    #dbg_value(ptr %i.an, !4975, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !3867)
    #dbg_value(i64 %i.ao, !4981, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !3868)
    #dbg_value(i64 %i.ao, !4975, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !3867)
    #dbg_value(i32 %i.aq, !5032, !DIExpression(), !3887)
    #dbg_value(i32 %i.aq, !5029, !DIExpression(), !3880)
    #dbg_value(i32 %i.aq, !5017, !DIExpression(), !3876)
    #dbg_value(i32 %i.aq, !4985, !DIExpression(), !3884)
  %.not72.i = icmp eq i64 %i.ao, 0, !dbg !5681
  br i1 %.not72.i, label %.loopexit.i, label %.preheader79.i, !dbg !5681

.loopexit.i:                                      ; preds = %bb.l, %bb.o, %bb.p, %bb.q, %bb.r, %bb.s, %bb.t, %bb.u, %bb.v, %.preheader.i
  %.sroa.045.1.i = phi i32 [ %i.el, %bb.v ], [ 0, %.preheader.i ], [ %.sroa.02.0.i76.i, %bb.o ], [ %i.bx, %bb.p ], [ %i.ci, %bb.q ], [ %i.ct, %bb.r ], [ %i.de, %bb.s ], [ %i.dp, %bb.t ], [ %i.ea, %bb.u ], [ %i.aq, %bb.l ], !dbg !5682
    #dbg_value(i32 %.sroa.045.1.i, !5032, !DIExpression(), !3887)
    #dbg_value(i32 %.sroa.045.1.i, !5029, !DIExpression(), !3880)
    #dbg_value(i32 %.sroa.045.1.i, !5017, !DIExpression(), !3876)
    #dbg_value(i32 %.sroa.045.1.i, !4985, !DIExpression(), !3884)
  %i.ar = zext i32 %.sroa.045.1.i to i64, !dbg !5683
  %i.as = shl nuw i64 %i.ar, 32, !dbg !5683
  br label %_RNvMsB_NtCskKLDkoKarTP_4core3numm27from_ascii_bytes_radix_impl.exit, !dbg !5683

.preheader79.i:                                   ; preds = %bb.k, %bb.l
  %.sroa.0.189.i = phi ptr [ %i.an, %bb.l ], [ %.sroa.0.0.i, %bb.k ] ; 2 uses
  %.sroa.15.188.i = phi i64 [ %i.ao, %bb.l ], [ %.sroa.15.0.i, %bb.k ]
  %.sroa.045.087.i = phi i32 [ %i.aq, %bb.l ], [ 0, %bb.k ] ; 2 uses
    #dbg_value(i32 %.sroa.045.087.i, !5032, !DIExpression(), !3887)
    #dbg_value(ptr %.sroa.0.189.i, !4994, !DIExpression(), !3888)
    #dbg_value(ptr %.sroa.0.189.i, !4995, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 64), !3888)
    #dbg_value(i64 %.sroa.15.188.i, !4995, !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !3888)
  %i.at = icmp ugt i32 %.sroa.045.087.i, 268435455, !dbg !5679
    #dbg_value(i32 %.sroa.045.087.i, !5018, !DIExpression(DW_OP_constu, 4, DW_OP_shl, DW_OP_stack_value), !3889)
    #dbg_value(i1 %i.at, !5019, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !3889)
    #dbg_value(i1 %i.at, !5037, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !3893)
  %i.au = load i8, ptr %.sroa.0.189.i, align 1, !dbg !5684, !alias.scope !5031, !noundef !364 ; 2 uses
  %i.av = zext i8 %i.au to i32, !dbg !5685        ; 2 uses
  %i.aw = icmp ugt i8 %i.au, 57, !dbg !5686       ; 2 uses
  %i.ax = add nsw i32 %i.av, -65, !dbg !5686      ; 2 uses
  %i.ay = add nsw i32 %i.av, -48, !dbg !5686      ; 2 uses
  br i1 %i.at, label %bb.n, label %bb.m, !dbg !5687, !prof !1019

bb.m:                                             ; preds = %.preheader79.i
    #dbg_value(i32 %.sroa.045.087.i, !5018, !DIExpression(DW_OP_constu, 4, DW_OP_shl, DW_OP_stack_value), !3889)
    #dbg_value(i64 %.sroa.15.188.i, !4995, !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !3888)
    #dbg_value(ptr %.sroa.0.189.i, !4995, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 64), !3888)
    #dbg_value(i32 %.sroa.045.087.i, !4996, !DIExpression(DW_OP_constu, 4, DW_OP_shl, DW_OP_stack_value, DW_OP_LLVM_fragment, 32, 32), !3890)
    #dbg_value(i32 1, !4996, !DIExpression(DW_OP_LLVM_fragment, 0, 32), !3890)
    #dbg_value(i32 %i.av, !1097, !DIExpression(), !3895)
    #dbg_value(i32 16, !1103, !DIExpression(), !3895)
  %i.az = and i32 %i.ax, -33, !dbg !5688
  %i.ba = add nuw nsw i32 %i.az, 10, !dbg !5688
  %.sroa.02.0.i.i = select i1 %i.aw, i32 %i.ba, i32 %i.ay, !dbg !5688 ; 2 uses
    #dbg_value(i32 %.sroa.02.0.i.i, !1104, !DIExpression(), !3896)
  %i.bb = icmp ult i32 %.sroa.02.0.i.i, 16, !dbg !5689
    #dbg_value(i32 %.sroa.02.0.i.i, !4997, !DIExpression(), !3897)
    #dbg_value(i32 %.sroa.045.087.i, !4985, !DIExpression(DW_OP_constu, 4, DW_OP_shl, DW_OP_stack_value), !3884)
    #dbg_value(i32 %.sroa.045.087.i, !5017, !DIExpression(DW_OP_constu, 4, DW_OP_shl, DW_OP_stack_value), !3876)
    #dbg_value(i32 %.sroa.045.087.i, !5029, !DIExpression(DW_OP_constu, 4, DW_OP_shl, DW_OP_stack_value), !3880)
    #dbg_value(i32 %.sroa.045.087.i, !5032, !DIExpression(DW_OP_constu, 4, DW_OP_shl, DW_OP_stack_value), !3887)
    #dbg_value(i32 %.sroa.02.0.i.i, !5033, !DIExpression(), !3887)
    #dbg_value(i1 false, !5037, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !3899)
  br i1 %i.bb, label %bb.l, label %_RNvMsB_NtCskKLDkoKarTP_4core3numm27from_ascii_bytes_radix_impl.exit.thread, !dbg !5690

bb.n:                                             ; preds = %.preheader79.i
    #dbg_value(i32 poison, !4996, !DIExpression(DW_OP_LLVM_fragment, 0, 32), !3890)
    #dbg_value(i32 poison, !4996, !DIExpression(DW_OP_LLVM_fragment, 32, 32), !3890)
    #dbg_value(i32 %i.av, !1097, !DIExpression(), !3901)
    #dbg_value(i32 16, !1103, !DIExpression(), !3901)
  %i.bc = and i32 %i.ax, -34, !dbg !5691
  %i.bd = add nuw nsw i32 %i.bc, 10, !dbg !5691
  %.sroa.02.0.i74.i = select i1 %i.aw, i32 %i.bd, i32 %i.ay, !dbg !5691
    #dbg_value(i32 poison, !1104, !DIExpression(), !3902)
  %i.be = icmp ult i32 %.sroa.02.0.i74.i, 16, !dbg !5692
  %spec.select.i = select i1 %i.be, i64 513, i64 257, !dbg !5690
  br label %_RNvMsB_NtCskKLDkoKarTP_4core3numm27from_ascii_bytes_radix_impl.exit, !dbg !5690

.lr.ph.i:                                         ; preds = %.preheader.i
    #dbg_value(ptr %.sroa.0.0.i, !4986, !DIExpression(), !3903)
    #dbg_value(ptr %.sroa.0.0.i, !4987, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 64), !3903)
    #dbg_value(i64 %.sroa.15.0.i, !4987, !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !3903)
    #dbg_value(i32 0, !4985, !DIExpression(DW_OP_constu, 16, DW_OP_mul, DW_OP_stack_value), !3884)
    #dbg_value(i32 0, !5017, !DIExpression(DW_OP_constu, 16, DW_OP_mul, DW_OP_stack_value), !3876)
    #dbg_value(i32 0, !5029, !DIExpression(DW_OP_constu, 16, DW_OP_mul, DW_OP_stack_value), !3880)
    #dbg_value(i32 0, !5032, !DIExpression(DW_OP_constu, 16, DW_OP_mul, DW_OP_stack_value), !3887)
  %i.bf = load i8, ptr %.sroa.0.0.i, align 1, !dbg !5693, !alias.scope !5031, !noundef !364 ; 2 uses
  %i.bg = zext i8 %i.bf to i32, !dbg !5694        ; 2 uses
    #dbg_value(i32 %i.bg, !1097, !DIExpression(), !3905)
    #dbg_value(i32 16, !1103, !DIExpression(), !3905)
  %i.bh = icmp ugt i8 %i.bf, 57, !dbg !5695
  %i.bi = add nsw i32 %i.bg, -65, !dbg !5695
  %i.bj = and i32 %i.bi, -33, !dbg !5695
  %i.bk = add nuw nsw i32 %i.bj, 10, !dbg !5695
  %i.bl = add nsw i32 %i.bg, -48, !dbg !5695
  %.sroa.02.0.i76.i = select i1 %i.bh, i32 %i.bk, i32 %i.bl, !dbg !5695 ; 3 uses
    #dbg_value(i32 %.sroa.02.0.i76.i, !1104, !DIExpression(), !3906)
  %i.bm = icmp ult i32 %.sroa.02.0.i76.i, 16, !dbg !5696
  br i1 %i.bm, label %bb.o, label %_RNvMsB_NtCskKLDkoKarTP_4core3numm27from_ascii_bytes_radix_impl.exit.thread, !dbg !5697

bb.o:                                             ; preds = %.lr.ph.i
    #dbg_value(i32 0, !4985, !DIExpression(), !3884)
    #dbg_value(i32 0, !5017, !DIExpression(), !3876)
    #dbg_value(i32 0, !5029, !DIExpression(), !3880)
    #dbg_value(i32 0, !5032, !DIExpression(), !3887)
    #dbg_value(i64 %.sroa.15.0.i, !4987, !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !3903)
    #dbg_value(ptr %.sroa.0.0.i, !4987, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 64), !3903)
    #dbg_value(i32 %.sroa.02.0.i76.i, !4988, !DIExpression(), !3907)
    #dbg_value(ptr %.sroa.0.0.i, !4981, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 64), !3868)
    #dbg_value(ptr %.sroa.0.0.i, !4975, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 64), !3867)
    #dbg_value(i64 %.sroa.15.0.i, !4981, !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !3868)
    #dbg_value(i64 %.sroa.15.0.i, !4975, !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !3867)
    #dbg_value(i32 %.sroa.02.0.i76.i, !5032, !DIExpression(), !3887)
    #dbg_value(i32 %.sroa.02.0.i76.i, !5029, !DIExpression(), !3880)
    #dbg_value(i32 %.sroa.02.0.i76.i, !5017, !DIExpression(), !3876)
    #dbg_value(i32 %.sroa.02.0.i76.i, !4985, !DIExpression(), !3884)
  %.not73.i = icmp eq i64 %.sroa.15.0.i, 1, !dbg !5677
  br i1 %.not73.i, label %.loopexit.i, label %.lr.ph.i.1, !dbg !5677

.lr.ph.i.1:                                       ; preds = %bb.o
  %i.bn = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i, i64 1, !dbg !5698
    #dbg_value(ptr %i.bn, !4987, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !3903)
    #dbg_value(ptr %i.bn, !4981, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !3868)
    #dbg_value(ptr %i.bn, !4975, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !3867)
    #dbg_value(ptr %i.bn, !4986, !DIExpression(), !3903)
    #dbg_value(ptr %i.bn, !4987, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 64), !3903)
    #dbg_value(i64 %.sroa.15.0.i, !4987, !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !3903)
    #dbg_value(i32 %.sroa.02.0.i76.i, !4985, !DIExpression(DW_OP_constu, 16, DW_OP_mul, DW_OP_stack_value), !3884)
end_hunk_0
begin_hunk_1_@_RNvXs0_NtCsiGRwBGCeC5s_11quiche_apps4argsNtB5_10ClientArgsNtB5_4Args11with_docopt:bb.a
  br i1 %.not73.i.3, label %.loopexit.i, label %.lr.ph.i.4, !dbg !5677

.lr.ph.i.4:                                       ; preds = %bb.r
  %i.cu = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i, i64 4, !dbg !5698
    #dbg_value(ptr %i.cu, !4987, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !3903)
    #dbg_value(ptr %i.cu, !4981, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !3868)
    #dbg_value(ptr %i.cu, !4975, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !3867)
    #dbg_value(ptr %i.cu, !4986, !DIExpression(), !3903)
    #dbg_value(ptr %i.cu, !4987, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 64), !3903)
    #dbg_value(i64 %.sroa.15.0.i, !4987, !DIExpression(DW_OP_constu, 4, DW_OP_minus, DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !3903)
    #dbg_value(i32 %i.ct, !4985, !DIExpression(DW_OP_constu, 16, DW_OP_mul, DW_OP_stack_value), !3884)
    #dbg_value(i32 %i.ct, !5017, !DIExpression(DW_OP_constu, 16, DW_OP_mul, DW_OP_stack_value), !3876)
    #dbg_value(i32 %i.ct, !5029, !DIExpression(DW_OP_constu, 16, DW_OP_mul, DW_OP_stack_value), !3880)
    #dbg_value(i32 %i.ct, !5032, !DIExpression(DW_OP_constu, 16, DW_OP_mul, DW_OP_stack_value), !3887)
  %i.cv = load i8, ptr %i.cu, align 1, !dbg !5693, !alias.scope !5031, !noundef !364 ; 2 uses
  %i.cw = zext i8 %i.cv to i32, !dbg !5694        ; 2 uses
    #dbg_value(i32 %i.cw, !1097, !DIExpression(), !3905)
    #dbg_value(i32 16, !1103, !DIExpression(), !3905)
  %i.cx = icmp ugt i8 %i.cv, 57, !dbg !5695
  %i.cy = add nsw i32 %i.cw, -65, !dbg !5695
  %i.cz = and i32 %i.cy, -33, !dbg !5695
  %i.da = add nuw nsw i32 %i.cz, 10, !dbg !5695
  %i.db = add nsw i32 %i.cw, -48, !dbg !5695
  %.sroa.02.0.i76.i.4 = select i1 %i.cx, i32 %i.da, i32 %i.db, !dbg !5695 ; 2 uses
    #dbg_value(i32 %.sroa.02.0.i76.i.4, !1104, !DIExpression(), !3906)
  %i.dc = icmp ult i32 %.sroa.02.0.i76.i.4, 16, !dbg !5696
  br i1 %i.dc, label %bb.s, label %_RNvMsB_NtCskKLDkoKarTP_4core3numm27from_ascii_bytes_radix_impl.exit.thread, !dbg !5697

bb.s:                                             ; preds = %.lr.ph.i.4
  %i.dd = shl i32 %i.ct, 4, !dbg !5699
    #dbg_value(i32 %i.dd, !4985, !DIExpression(), !3884)
    #dbg_value(i32 %i.dd, !5017, !DIExpression(), !3876)
    #dbg_value(i32 %i.dd, !5029, !DIExpression(), !3880)
    #dbg_value(i32 %i.dd, !5032, !DIExpression(), !3887)
    #dbg_value(i64 %.sroa.15.0.i, !4987, !DIExpression(DW_OP_constu, 5, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !3903)
    #dbg_value(ptr %.sroa.0.0.i, !4987, !DIExpression(DW_OP_plus_uconst, 5, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 64), !3903)
    #dbg_value(i32 %.sroa.02.0.i76.i.4, !4988, !DIExpression(), !3907)
  %i.de = or disjoint i32 %.sroa.02.0.i76.i.4, %i.dd, !dbg !5700 ; 2 uses
    #dbg_value(ptr %.sroa.0.0.i, !4981, !DIExpression(DW_OP_plus_uconst, 5, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 64), !3868)
    #dbg_value(ptr %.sroa.0.0.i, !4975, !DIExpression(DW_OP_plus_uconst, 5, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 64), !3867)
    #dbg_value(i64 %.sroa.15.0.i, !4981, !DIExpression(DW_OP_constu, 5, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !3868)
    #dbg_value(i64 %.sroa.15.0.i, !4975, !DIExpression(DW_OP_constu, 5, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !3867)
    #dbg_value(i32 %i.de, !5032, !DIExpression(), !3887)
    #dbg_value(i32 %i.de, !5029, !DIExpression(), !3880)
    #dbg_value(i32 %i.de, !5017, !DIExpression(), !3876)
    #dbg_value(i32 %i.de, !4985, !DIExpression(), !3884)
  %.not73.i.4 = icmp eq i64 %.sroa.15.0.i, 5, !dbg !5677
  br i1 %.not73.i.4, label %.loopexit.i, label %.lr.ph.i.5, !dbg !5677

.lr.ph.i.5:                                       ; preds = %bb.s
  %i.df = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i, i64 5, !dbg !5698
    #dbg_value(ptr %i.df, !4987, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !3903)
    #dbg_value(ptr %i.df, !4981, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !3868)
    #dbg_value(ptr %i.df, !4975, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !3867)
    #dbg_value(ptr %i.df, !4986, !DIExpression(), !3903)
    #dbg_value(ptr %i.df, !4987, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 64), !3903)
    #dbg_value(i64 %.sroa.15.0.i, !4987, !DIExpression(DW_OP_constu, 5, DW_OP_minus, DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !3903)
    #dbg_value(i32 %i.de, !4985, !DIExpression(DW_OP_constu, 16, DW_OP_mul, DW_OP_stack_value), !3884)
    #dbg_value(i32 %i.de, !5017, !DIExpression(DW_OP_constu, 16, DW_OP_mul, DW_OP_stack_value), !3876)
    #dbg_value(i32 %i.de, !5029, !DIExpression(DW_OP_constu, 16, DW_OP_mul, DW_OP_stack_value), !3880)
    #dbg_value(i32 %i.de, !5032, !DIExpression(DW_OP_constu, 16, DW_OP_mul, DW_OP_stack_value), !3887)
  %i.dg = load i8, ptr %i.df, align 1, !dbg !5693, !alias.scope !5031, !noundef !364 ; 2 uses
  %i.dh = zext i8 %i.dg to i32, !dbg !5694        ; 2 uses
    #dbg_value(i32 %i.dh, !1097, !DIExpression(), !3905)
    #dbg_value(i32 16, !1103, !DIExpression(), !3905)
  %i.di = icmp ugt i8 %i.dg, 57, !dbg !5695
  %i.dj = add nsw i32 %i.dh, -65, !dbg !5695
  %i.dk = and i32 %i.dj, -33, !dbg !5695
  %i.dl = add nuw nsw i32 %i.dk, 10, !dbg !5695
  %i.dm = add nsw i32 %i.dh, -48, !dbg !5695
  %.sroa.02.0.i76.i.5 = select i1 %i.di, i32 %i.dl, i32 %i.dm, !dbg !5695 ; 2 uses
    #dbg_value(i32 %.sroa.02.0.i76.i.5, !1104, !DIExpression(), !3906)
  %i.dn = icmp ult i32 %.sroa.02.0.i76.i.5, 16, !dbg !5696
  br i1 %i.dn, label %bb.t, label %_RNvMsB_NtCskKLDkoKarTP_4core3numm27from_ascii_bytes_radix_impl.exit.thread, !dbg !5697

bb.t:                                             ; preds = %.lr.ph.i.5
  %i.do = shl i32 %i.de, 4, !dbg !5699
    #dbg_value(i32 %i.do, !4985, !DIExpression(), !3884)
    #dbg_value(i32 %i.do, !5017, !DIExpression(), !3876)
    #dbg_value(i32 %i.do, !5029, !DIExpression(), !3880)
    #dbg_value(i32 %i.do, !5032, !DIExpression(), !3887)
    #dbg_value(i64 %.sroa.15.0.i, !4987, !DIExpression(DW_OP_constu, 6, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !3903)
    #dbg_value(ptr %.sroa.0.0.i, !4987, !DIExpression(DW_OP_plus_uconst, 6, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 64), !3903)
    #dbg_value(i32 %.sroa.02.0.i76.i.5, !4988, !DIExpression(), !3907)
  %i.dp = or disjoint i32 %.sroa.02.0.i76.i.5, %i.do, !dbg !5700 ; 2 uses
    #dbg_value(ptr %.sroa.0.0.i, !4981, !DIExpression(DW_OP_plus_uconst, 6, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 64), !3868)
    #dbg_value(ptr %.sroa.0.0.i, !4975, !DIExpression(DW_OP_plus_uconst, 6, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 64), !3867)
    #dbg_value(i64 %.sroa.15.0.i, !4981, !DIExpression(DW_OP_constu, 6, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !3868)
    #dbg_value(i64 %.sroa.15.0.i, !4975, !DIExpression(DW_OP_constu, 6, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !3867)
    #dbg_value(i32 %i.dp, !5032, !DIExpression(), !3887)
    #dbg_value(i32 %i.dp, !5029, !DIExpression(), !3880)
    #dbg_value(i32 %i.dp, !5017, !DIExpression(), !3876)
    #dbg_value(i32 %i.dp, !4985, !DIExpression(), !3884)
  %.not73.i.5 = icmp eq i64 %.sroa.15.0.i, 6, !dbg !5677
  br i1 %.not73.i.5, label %.loopexit.i, label %.lr.ph.i.6, !dbg !5677

.lr.ph.i.6:                                       ; preds = %bb.t
  %i.dq = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i, i64 6, !dbg !5698
    #dbg_value(ptr %i.dq, !4987, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !3903)
    #dbg_value(ptr %i.dq, !4981, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !3868)
    #dbg_value(ptr %i.dq, !4975, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !3867)
    #dbg_value(ptr %i.dq, !4986, !DIExpression(), !3903)
    #dbg_value(ptr %i.dq, !4987, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 64), !3903)
    #dbg_value(i64 %.sroa.15.0.i, !4987, !DIExpression(DW_OP_constu, 6, DW_OP_minus, DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !3903)
    #dbg_value(i32 %i.dp, !4985, !DIExpression(DW_OP_constu, 16, DW_OP_mul, DW_OP_stack_value), !3884)
    #dbg_value(i32 %i.dp, !5017, !DIExpression(DW_OP_constu, 16, DW_OP_mul, DW_OP_stack_value), !3876)
    #dbg_value(i32 %i.dp, !5029, !DIExpression(DW_OP_constu, 16, DW_OP_mul, DW_OP_stack_value), !3880)
    #dbg_value(i32 %i.dp, !5032, !DIExpression(DW_OP_constu, 16, DW_OP_mul, DW_OP_stack_value), !3887)
  %i.dr = load i8, ptr %i.dq, align 1, !dbg !5693, !alias.scope !5031, !noundef !364 ; 2 uses
  %i.ds = zext i8 %i.dr to i32, !dbg !5694        ; 2 uses
    #dbg_value(i32 %i.ds, !1097, !DIExpression(), !3905)
    #dbg_value(i32 16, !1103, !DIExpression(), !3905)
  %i.dt = icmp ugt i8 %i.dr, 57, !dbg !5695
  %i.du = add nsw i32 %i.ds, -65, !dbg !5695
  %i.dv = and i32 %i.du, -33, !dbg !5695
  %i.dw = add nuw nsw i32 %i.dv, 10, !dbg !5695
  %i.dx = add nsw i32 %i.ds, -48, !dbg !5695
  %.sroa.02.0.i76.i.6 = select i1 %i.dt, i32 %i.dw, i32 %i.dx, !dbg !5695 ; 2 uses
    #dbg_value(i32 %.sroa.02.0.i76.i.6, !1104, !DIExpression(), !3906)
  %i.dy = icmp ult i32 %.sroa.02.0.i76.i.6, 16, !dbg !5696
  br i1 %i.dy, label %bb.u, label %_RNvMsB_NtCskKLDkoKarTP_4core3numm27from_ascii_bytes_radix_impl.exit.thread, !dbg !5697

bb.u:                                             ; preds = %.lr.ph.i.6
  %i.dz = shl i32 %i.dp, 4, !dbg !5699
    #dbg_value(i32 %i.dz, !4985, !DIExpression(), !3884)
    #dbg_value(i32 %i.dz, !5017, !DIExpression(), !3876)
    #dbg_value(i32 %i.dz, !5029, !DIExpression(), !3880)
    #dbg_value(i32 %i.dz, !5032, !DIExpression(), !3887)
    #dbg_value(i64 %.sroa.15.0.i, !4987, !DIExpression(DW_OP_constu, 7, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !3903)
    #dbg_value(ptr %.sroa.0.0.i, !4987, !DIExpression(DW_OP_plus_uconst, 7, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 64), !3903)
    #dbg_value(i32 %.sroa.02.0.i76.i.6, !4988, !DIExpression(), !3907)
  %i.ea = or disjoint i32 %.sroa.02.0.i76.i.6, %i.dz, !dbg !5700 ; 2 uses
    #dbg_value(ptr %.sroa.0.0.i, !4981, !DIExpression(DW_OP_plus_uconst, 7, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 64), !3868)
    #dbg_value(ptr %.sroa.0.0.i, !4975, !DIExpression(DW_OP_plus_uconst, 7, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 64), !3867)
    #dbg_value(i64 %.sroa.15.0.i, !4981, !DIExpression(DW_OP_constu, 7, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !3868)
    #dbg_value(i64 %.sroa.15.0.i, !4975, !DIExpression(DW_OP_constu, 7, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !3867)
    #dbg_value(i32 %i.ea, !5032, !DIExpression(), !3887)
    #dbg_value(i32 %i.ea, !5029, !DIExpression(), !3880)
    #dbg_value(i32 %i.ea, !5017, !DIExpression(), !3876)
    #dbg_value(i32 %i.ea, !4985, !DIExpression(), !3884)
  %.not73.i.6 = icmp eq i64 %.sroa.15.0.i, 7, !dbg !5677
  br i1 %.not73.i.6, label %.loopexit.i, label %.lr.ph.i.7, !dbg !5677

.lr.ph.i.7:                                       ; preds = %bb.u
  %i.eb = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i, i64 7, !dbg !5698
    #dbg_value(ptr %i.eb, !4987, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !3903)
    #dbg_value(ptr %i.eb, !4981, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !3868)
    #dbg_value(ptr %i.eb, !4975, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !3867)
    #dbg_value(ptr %i.eb, !4986, !DIExpression(), !3903)
    #dbg_value(ptr %i.eb, !4987, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 64), !3903)
    #dbg_value(i64 %.sroa.15.0.i, !4987, !DIExpression(DW_OP_constu, 7, DW_OP_minus, DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !3903)
    #dbg_value(i32 %i.ea, !4985, !DIExpression(DW_OP_constu, 16, DW_OP_mul, DW_OP_stack_value), !3884)
    #dbg_value(i32 %i.ea, !5017, !DIExpression(DW_OP_constu, 16, DW_OP_mul, DW_OP_stack_value), !3876)
    #dbg_value(i32 %i.ea, !5029, !DIExpression(DW_OP_constu, 16, DW_OP_mul, DW_OP_stack_value), !3880)
    #dbg_value(i32 %i.ea, !5032, !DIExpression(DW_OP_constu, 16, DW_OP_mul, DW_OP_stack_value), !3887)
  %i.ec = load i8, ptr %i.eb, align 1, !dbg !5693, !alias.scope !5031, !noundef !364 ; 2 uses
  %i.ed = zext i8 %i.ec to i32, !dbg !5694        ; 2 uses
    #dbg_value(i32 %i.ed, !1097, !DIExpression(), !3905)
    #dbg_value(i32 16, !1103, !DIExpression(), !3905)
  %i.ee = icmp ugt i8 %i.ec, 57, !dbg !5695
  %i.ef = add nsw i32 %i.ed, -65, !dbg !5695
  %i.eg = and i32 %i.ef, -33, !dbg !5695
  %i.eh = add nuw nsw i32 %i.eg, 10, !dbg !5695
  %i.ei = add nsw i32 %i.ed, -48, !dbg !5695
  %.sroa.02.0.i76.i.7 = select i1 %i.ee, i32 %i.eh, i32 %i.ei, !dbg !5695 ; 2 uses
    #dbg_value(i32 %.sroa.02.0.i76.i.7, !1104, !DIExpression(), !3906)
  %i.ej = icmp ult i32 %.sroa.02.0.i76.i.7, 16, !dbg !5696
  br i1 %i.ej, label %bb.v, label %_RNvMsB_NtCskKLDkoKarTP_4core3numm27from_ascii_bytes_radix_impl.exit.thread, !dbg !5697

bb.v:                                             ; preds = %.lr.ph.i.7
  %i.ek = shl i32 %i.ea, 4, !dbg !5699
    #dbg_value(i32 %i.ek, !4985, !DIExpression(), !3884)
    #dbg_value(i32 %i.ek, !5017, !DIExpression(), !3876)
    #dbg_value(i32 %i.ek, !5029, !DIExpression(), !3880)
    #dbg_value(i32 %i.ek, !5032, !DIExpression(), !3887)
    #dbg_value(i64 %.sroa.15.0.i, !4987, !DIExpression(DW_OP_constu, 8, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !3903)
    #dbg_value(ptr %.sroa.0.0.i, !4987, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 64), !3903)
    #dbg_value(i32 %.sroa.02.0.i76.i.7, !4988, !DIExpression(), !3907)
  %i.el = or disjoint i32 %.sroa.02.0.i76.i.7, %i.ek, !dbg !5700
    #dbg_value(ptr %.sroa.0.0.i, !4981, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 64), !3868)
    #dbg_value(ptr %.sroa.0.0.i, !4975, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 64), !3867)
    #dbg_value(i64 %.sroa.15.0.i, !4981, !DIExpression(DW_OP_constu, 8, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !3868)
    #dbg_value(i64 %.sroa.15.0.i, !4975, !DIExpression(DW_OP_constu, 8, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !3867)
    #dbg_value(i32 %i.el, !5032, !DIExpression(), !3887)
    #dbg_value(i32 %i.el, !5029, !DIExpression(), !3880)
    #dbg_value(i32 %i.el, !5017, !DIExpression(), !3876)
    #dbg_value(i32 %i.el, !4985, !DIExpression(), !3884)
  br label %.loopexit.i, !dbg !5677

_RNvMsB_NtCskKLDkoKarTP_4core3numm27from_ascii_bytes_radix_impl.exit: ; preds = %bb.n, %.loopexit.i
  %.sroa.8.0.insert.insert.i = phi i64 [ %spec.select.i, %bb.n ], [ %i.as, %.loopexit.i ], !dbg !5683 ; 3 uses
    #dbg_value(i64 %.sroa.8.0.insert.insert.i, !5065, !DIExpression(DW_OP_constu, 8, DW_OP_shr, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value, DW_OP_LLVM_fragment, 8, 8), !3912)
    #dbg_value(i64 %.sroa.8.0.insert.insert.i, !5065, !DIExpression(DW_OP_constu, 16, DW_OP_shr, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_stack_value, DW_OP_LLVM_fragment, 16, 16), !3912)
    #dbg_value(i64 %.sroa.8.0.insert.insert.i, !5065, !DIExpression(DW_OP_constu, 32, DW_OP_shr, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value, DW_OP_LLVM_fragment, 32, 32), !3912)
    #dbg_declare(ptr %i.d, !5070, !DIExpression(), !3913)
  %i.em = trunc i64 %.sroa.8.0.insert.insert.i to i1, !dbg !5701
    #dbg_value(i64 %.sroa.8.0.insert.insert.i, !5065, !DIExpression(DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 8), !3912)
  br i1 %i.em, label %_RNvMsB_NtCskKLDkoKarTP_4core3numm27from_ascii_bytes_radix_impl.exit.thread, label %bb.w, !dbg !5702, !prof !5075

_RNvMsB_NtCskKLDkoKarTP_4core3numm27from_ascii_bytes_radix_impl.exit.thread: ; preds = %bb.m, %.lr.ph.i, %.lr.ph.i.1, %.lr.ph.i.2, %.lr.ph.i.3, %.lr.ph.i.4, %.lr.ph.i.5, %.lr.ph.i.6, %.lr.ph.i.7, %bb.i, %bb.j, %bb.j, %_RNvMsB_NtCskKLDkoKarTP_4core3numm27from_ascii_bytes_radix_impl.exit
  %.sroa.8.0.insert.insert.i271 = phi i64 [ %.sroa.8.0.insert.insert.i, %_RNvMsB_NtCskKLDkoKarTP_4core3numm27from_ascii_bytes_radix_impl.exit ], [ 256, %.lr.ph.i ], [ 256, %bb.j ], [ 256, %bb.j ], [ %i.ai, %bb.i ], [ 256, %.lr.ph.i.7 ], [ 256, %.lr.ph.i.6 ], [ 256, %.lr.ph.i.5 ], [ 256, %.lr.ph.i.4 ], [ 256, %.lr.ph.i.3 ], [ 256, %.lr.ph.i.2 ], [ 256, %.lr.ph.i.1 ], [ 256, %bb.m ]
  %.sroa.4.0.extract.shift.i = lshr i64 %.sroa.8.0.insert.insert.i271, 8
    #dbg_value(i64 %.sroa.4.0.extract.shift.i, !5065, !DIExpression(DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value, DW_OP_LLVM_fragment, 8, 8), !3912)
  %.sroa.4.0.extract.trunc.i = trunc i64 %.sroa.4.0.extract.shift.i to i8
    #dbg_value(i8 %.sroa.4.0.extract.trunc.i, !5065, !DIExpression(DW_OP_LLVM_fragment, 8, 8), !3912)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !dbg !5703
  store i8 %.sroa.4.0.extract.trunc.i, ptr %i.d, align 1, !dbg !5703
  invoke void @_RNvNtCskKLDkoKarTP_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @1, i64 noundef 43, ptr noundef nonnull %i.d, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @49) #16
          to label %.noexc210 unwind label %bb.h, !dbg !5704

.noexc210:                                        ; preds = %_RNvMsB_NtCskKLDkoKarTP_4core3numm27from_ascii_bytes_radix_impl.exit.thread
  unreachable, !dbg !5704

bb.w:                                             ; preds = %_RNvMsB_NtCskKLDkoKarTP_4core3numm27from_ascii_bytes_radix_impl.exit
  %.sroa.6.0.extract.shift.i = lshr i64 %.sroa.8.0.insert.insert.i, 32
    #dbg_value(i64 %.sroa.6.0.extract.shift.i, !5065, !DIExpression(DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value, DW_OP_LLVM_fragment, 32, 32), !3912)
  %.sroa.6.0.extract.trunc.i = trunc nuw i64 %.sroa.6.0.extract.shift.i to i32
    #dbg_value(i32 %.sroa.6.0.extract.trunc.i, !5065, !DIExpression(DW_OP_LLVM_fragment, 32, 32), !3912)
    #dbg_value(i32 %.sroa.6.0.extract.trunc.i, !4242, !DIExpression(), !5078)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x), !dbg !5705
  %i.en = invoke { ptr, i64 } @_RNvMs3_NtCs8c5NiIByPWa_6docopt4doptNtB5_7ArgvMap7get_str(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(96) %i.z, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @50, i64 noundef 16)
          to label %bb.x unwind label %bb.h, !dbg !5706

bb.x:                                             ; preds = %bb.w
  %i.eo = extractvalue { ptr, i64 } %i.en, 1, !dbg !5707
    #dbg_value(ptr poison, !5079, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !5082)
    #dbg_value(i64 %i.eo, !5079, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !5082)
  %i.ep = icmp eq i64 %i.eo, 0, !dbg !5708
  br i1 %i.ep, label %bb.z, label %bb.y, !dbg !5707

bb.y:                                             ; preds = %bb.x
  %i.eq = invoke { ptr, i64 } @_RNvMs3_NtCs8c5NiIByPWa_6docopt4doptNtB5_7ArgvMap7get_str(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(96) %i.z, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @50, i64 noundef 16)
          to label %bb.aa unwind label %bb.h, !dbg !5709 ; 2 uses

bb.z:                                             ; preds = %bb.x
  store i64 -1, ptr %i.x, align 8, !dbg !5710
  br label %bb.ag, !dbg !5711

bb.aa:                                            ; preds = %bb.y
  %i.er = extractvalue { ptr, i64 } %i.eq, 0, !dbg !5712
  %i.es = extractvalue { ptr, i64 } %i.eq, 1, !dbg !5712 ; 5 uses
    #dbg_value(ptr %i.er, !4627, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !5083)
    #dbg_value(ptr %i.er, !4629, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !5084)
    #dbg_value(ptr %i.er, !4630, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !5085)
    #dbg_value(ptr %i.er, !4636, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !5086)
    #dbg_value(ptr %i.er, !4638, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !5087)
    #dbg_value(i64 %i.es, !4627, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !5083)
    #dbg_value(i64 %i.es, !4629, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !5084)
    #dbg_value(i64 %i.es, !4630, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !5085)
    #dbg_value(i64 %i.es, !4636, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !5086)
    #dbg_value(i64 %i.es, !4638, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !5087)
    #dbg_value(ptr %i.er, !4640, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !5088)
    #dbg_value(ptr %i.er, !4642, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !5089)
    #dbg_value(ptr %i.er, !4617, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !5090)
    #dbg_value(ptr %i.er, !4645, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !5091)
    #dbg_value(i64 %i.es, !4640, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !5088)
    #dbg_value(i64 %i.es, !4642, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !5089)
    #dbg_value(i64 %i.es, !4617, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !5090)
    #dbg_value(i64 %i.es, !4645, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !5091)
    #dbg_value(i64 %i.es, !4646, !DIExpression(), !5092)
    #dbg_value(i64 %i.es, !4660, !DIExpression(), !5093)
    #dbg_value(i64 %i.es, !4665, !DIExpression(), !5094)
    #dbg_value(i64 %i.es, !5095, !DIExpression(), !5100)
    #dbg_value(i64 %i.es, !5101, !DIExpression(), !5106)
    #dbg_value(i64 %i.es, !4693, !DIExpression(), !5107)
    #dbg_value(i64 %i.es, !4710, !DIExpression(), !4714)
    #dbg_value(i64 1, !4694, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !5107)
    #dbg_value(i64 1, !4711, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !4714)
    #dbg_value(i64 1, !4694, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !5107)
    #dbg_value(i64 1, !4711, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !4714)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !dbg !5713
  invoke void @_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsiGRwBGCeC5s_11quiche_apps(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.j, i64 noundef %i.es, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
          to label %bb.ab unwind label %bb.h, !dbg !5713

bb.ab:                                            ; preds = %bb.aa
  %i.et = load i64, ptr %i.j, align 8, !dbg !5713, !range !1017, !noundef !364
  %i.eu = trunc nuw i64 %i.et to i1, !dbg !5714
  %i.ev = getelementptr inbounds nuw i8, ptr %i.j, i64 8, !dbg !5107
  %i.ew = load i64, ptr %i.ev, align 8, !dbg !5107, !range !1018, !noundef !364 ; 3 uses
  %i.ex = getelementptr inbounds nuw i8, ptr %i.j, i64 16, !dbg !5107 ; 2 uses
  br i1 %i.eu, label %bb.ac, label %bb.ad, !dbg !5714, !prof !1019

bb.ac:                                            ; preds = %bb.ab
  %i.ey = load i64, ptr %i.ex, align 8, !dbg !5715
    #dbg_value(i64 %i.ew, !4696, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !5108)
    #dbg_value(i64 %i.ey, !4696, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !5108)
  invoke void @_RNvNtCsexYYUdYSQU6_5alloc7raw_vec12handle_error(i64 noundef %i.ew, i64 %i.ey) #15
          to label %bb.ah unwind label %bb.h, !dbg !5716

bb.ad:                                            ; preds = %bb.ab
  %i.ez = load ptr, ptr %i.ex, align 8, !dbg !5717, !nonnull !364, !noundef !364 ; 2 uses
    #dbg_value(i64 %i.ew, !4695, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !5109)
    #dbg_value(ptr %i.ez, !4695, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !5109)
    #dbg_value(ptr poison, !4709, !DIExpression(), !5110)
    #dbg_value(ptr poison, !4264, !DIExpression(), !5111)
    #dbg_value(i64 %i.ew, !5113, !DIExpression(), !5120)
  %i.fa = icmp ule i64 %i.es, %i.ew, !dbg !5718
    #dbg_value(i1 true, !5121, !DIExpression(DW_OP_not, DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !5124)
  call void @llvm.assume(i1 %i.fa), !dbg !5719
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !dbg !5720
    #dbg_value(i64 %i.ew, !5125, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !5128)
    #dbg_value(i64 %i.ew, !4647, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !5129)
    #dbg_value(ptr %i.ez, !5125, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !5128)
    #dbg_value(ptr %i.ez, !4647, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !5129)
    #dbg_value(i64 0, !5125, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !5128)
    #dbg_value(i64 0, !4647, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !5129)
  %.not = icmp eq i64 %i.es, 0, !dbg !5721
  br i1 %.not, label %bb.ae, label %bb.af, !dbg !5721

bb.ae:                                            ; preds = %bb.af, %bb.ad
    #dbg_value(i64 %i.es, !4647, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !5129)
    #dbg_value(i64 %i.es, !5125, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !5128)
  store i64 %i.ew, ptr %i.x, align 8, !dbg !5722
  %.sroa.414.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.x, i64 8, !dbg !5722
  store ptr %i.ez, ptr %.sroa.414.0..sroa_idx, align 8, !dbg !5722
  %.sroa.515.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.x, i64 16, !dbg !5722
  store i64 %i.es, ptr %.sroa.515.0..sroa_idx, align 8, !dbg !5722
  br label %bb.ag, !dbg !5711

bb.af:                                            ; preds = %bb.ad
    #dbg_value(ptr %i.er, !5096, !DIExpression(), !5100)
    #dbg_value(ptr %i.er, !5102, !DIExpression(), !5106)
    #dbg_value(ptr %i.ez, !5097, !DIExpression(), !5100)
    #dbg_value(ptr %i.ez, !5103, !DIExpression(), !5106)
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ez, ptr align 1 %i.er, i64 %i.es, i1 false), !dbg !5723
    #dbg_value(i64 %i.es, !5125, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !5128)
    #dbg_value(i64 %i.es, !4647, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !5129)
  br label %bb.ae, !dbg !5724

bb.ag:                                            ; preds = %bb.ae, %bb.z
  %i.fb = invoke noundef zeroext i1 @_RNvMs3_NtCs8c5NiIByPWa_6docopt4doptNtB5_7ArgvMap8get_bool(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(96) %i.z, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @51, i64 noundef 11)
          to label %bb.ak unwind label %bb.aj, !dbg !5725

bb.ah:                                            ; preds = %bb.de, %bb.cs, %bb.cg, %bb.bo, %bb.ac
  unreachable

bb.ai:                                            ; preds = %bb.av, %bb.aj
  %.pn203.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn203.pn.pn.pn, %bb.av ], [ %i.fc, %bb.aj ]
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsexYYUdYSQU6_5alloc6string6StringEECsiGRwBGCeC5s_11quiche_apps(ptr noalias nofree noundef align 8 dereferenceable(24) %i.x) #14
          to label %bb.g unwind label %bb.dy, !dbg !5726

bb.aj:                                            ; preds = %.loopexit288, %bb.at, %.loopexit289, %bb.al, %bb.ag
  %i.fc = landingpad { ptr, i32 }
          cleanup
  br label %bb.ai

bb.ak:                                            ; preds = %bb.ag
    #dbg_value(i1 %i.fb, !4244, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !5130)
  br i1 %i.fb, label %bb.al, label %.loopexit289, !dbg !5727

bb.al:                                            ; preds = %bb.ak
  %i.fd = invoke { ptr, i64 } @_RNvMs3_NtCs8c5NiIByPWa_6docopt4doptNtB5_7ArgvMap7get_str(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(96) %i.z, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @52, i64 noundef 18)
          to label %bb.am unwind label %bb.aj, !dbg !5728 ; 2 uses

.loopexit289:                                     ; preds = %.preheader74.i, %bb.as, %.preheader.i220, %bb.ak
  %.sroa.3.0 = phi i64 [ undef, %bb.ak ], [ %i.gg, %bb.as ], [ 0, %.preheader.i220 ], [ %i.fw, %.preheader74.i ], !dbg !5130
  %.sroa.02.0 = phi i64 [ 0, %bb.ak ], [ 1, %bb.as ], [ 1, %.preheader.i220 ], [ 1, %.preheader74.i ], !dbg !5130
    #dbg_value(i64 %.sroa.02.0, !4245, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !5131)
    #dbg_value(i64 %.sroa.3.0, !4245, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !5131)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w), !dbg !5729
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v), !dbg !5730
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u), !dbg !5730
  invoke void @_RNvMs3_NtCs8c5NiIByPWa_6docopt4doptNtB5_7ArgvMap7get_vec(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.u, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(96) %i.z, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @54, i64 noundef 3)
          to label %bb.at unwind label %bb.aj, !dbg !5731

bb.am:                                            ; preds = %bb.al
  %i.fe = extractvalue { ptr, i64 } %i.fd, 0, !dbg !5732 ; 3 uses
  %i.ff = extractvalue { ptr, i64 } %i.fd, 1, !dbg !5732 ; 2 uses
    #dbg_value(ptr %i.fe, !4246, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !5132)
    #dbg_value(ptr %i.fe, !4729, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !5133)
    #dbg_value(ptr %i.fe, !4734, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !5134)
    #dbg_value(ptr %i.fe, !4721, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !4726)
    #dbg_value(i64 %i.ff, !4246, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !5132)
    #dbg_value(i64 %i.ff, !4729, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !5133)
    #dbg_value(i64 %i.ff, !4734, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !5134)
    #dbg_value(i64 %i.ff, !4721, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !4726)
    #dbg_value(ptr %i.fe, !5135, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !3945)
    #dbg_value(ptr %i.fe, !5141, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !3946)
    #dbg_value(i64 %i.ff, !5135, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !3945)
    #dbg_value(i64 %i.ff, !5141, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !3946)
    #dbg_value(i32 10, !5138, !DIExpression(), !3945)
    #dbg_value(i32 10, !5169, !DIExpression(), !3949)
    #dbg_value(i8 0, !5139, !DIExpression(), !3950)
    #dbg_value(i8 0, !5170, !DIExpression(), !3949)
  switch i64 %i.ff, label %thread-pre-split.i222 [
    i64 0, label %.loopexit288
    i64 1, label %bb.an
  ], !dbg !5733

bb.an:                                            ; preds = %bb.am
  %i.fg = load i8, ptr %i.fe, align 1, !dbg !5734, !alias.scope !5173, !noundef !364 ; 2 uses
  switch i8 %i.fg, label %bb.ao [
    i8 43, label %.loopexit288
    i8 45, label %.loopexit288
  ], !dbg !5734

thread-pre-split.i222:                            ; preds = %bb.am
  %.pr.i223 = load i8, ptr %i.fe, align 1, !dbg !5734, !alias.scope !5173
  br label %bb.ao, !dbg !5734

bb.ao:                                            ; preds = %thread-pre-split.i222, %bb.an
end_hunk_1
begin_hunk_2_@_RNvXs0_NtCsiGRwBGCeC5s_11quiche_apps4argsNtB5_10ClientArgsNtB5_4Args11with_docopt:bb.a

bb.dn:                                            ; preds = %.preheader76.i.preheader
    #dbg_value(i16 poison, !5601, !DIExpression(DW_OP_LLVM_fragment, 0, 16), !4193)
    #dbg_value(i16 poison, !5601, !DIExpression(DW_OP_LLVM_fragment, 16, 16), !4193)
    #dbg_value(i8 %i.kw, !1097, !DIExpression(DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value), !4198)
    #dbg_value(i32 10, !1103, !DIExpression(), !4198)
    #dbg_value(i8 %i.kw, !1104, !DIExpression(DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_constu, 48, DW_OP_minus, DW_OP_stack_value), !4199)
  %i.la = add i8 %i.kw, -48, !dbg !5936
  %i.lb = icmp ult i8 %i.la, 10, !dbg !5936
  %spec.select.i256 = select i1 %i.lb, i32 513, i32 257, !dbg !5935
  br label %_RNvMsz_NtCskKLDkoKarTP_4core3numt27from_ascii_bytes_radix_impl.exit, !dbg !5935

bb.do:                                            ; preds = %bb.dm
  %i.lc = trunc nuw nsw i32 %i.ky to i16, !dbg !5937
    #dbg_value(i16 %i.lc, !5602, !DIExpression(), !4200)
    #dbg_value(i16 %i.ku, !5590, !DIExpression(), !4175)
    #dbg_value(i16 %i.ku, !5619, !DIExpression(), !4180)
    #dbg_value(i16 %i.ku, !5629, !DIExpression(), !4184)
    #dbg_value(i16 %i.ku, !5637, !DIExpression(), !4187)
    #dbg_value(i16 %i.lc, !5638, !DIExpression(), !4187)
  %i.ld = add i16 %i.ku, %i.lc, !dbg !5938        ; 3 uses
  %i.le = icmp ult i16 %i.ld, %i.ku, !dbg !5938
    #dbg_value(i1 %i.le, !5640, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !4202)
  br i1 %i.le, label %_RNvMsz_NtCskKLDkoKarTP_4core3numt27from_ascii_bytes_radix_impl.exit.thread, label %.preheader76.i, !dbg !5939, !prof !1019

.lr.ph.i259:                                      ; preds = %.preheader.i258
    #dbg_value(ptr %.sroa.0.0.i252, !5591, !DIExpression(), !4203)
    #dbg_value(ptr %.sroa.0.0.i252, !5592, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 64), !4203)
    #dbg_value(i64 %.sroa.15.0.i250, !5592, !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !4203)
    #dbg_value(i16 0, !5590, !DIExpression(DW_OP_constu, 10, DW_OP_mul, DW_OP_stack_value), !4175)
    #dbg_value(i16 0, !5619, !DIExpression(DW_OP_constu, 10, DW_OP_mul, DW_OP_stack_value), !4180)
    #dbg_value(i16 0, !5629, !DIExpression(DW_OP_constu, 10, DW_OP_mul, DW_OP_stack_value), !4184)
    #dbg_value(i16 0, !5637, !DIExpression(DW_OP_constu, 10, DW_OP_mul, DW_OP_stack_value), !4187)
  %i.lf = load i8, ptr %.sroa.0.0.i252, align 1, !dbg !5940, !alias.scope !5618, !noundef !364
  %i.lg = zext i8 %i.lf to i32, !dbg !5941
    #dbg_value(i32 %i.lg, !1097, !DIExpression(), !4205)
    #dbg_value(i32 10, !1103, !DIExpression(), !4205)
  %i.lh = add nsw i32 %i.lg, -48, !dbg !5942      ; 2 uses
    #dbg_value(i32 %i.lh, !1104, !DIExpression(), !4206)
  %i.li = icmp ult i32 %i.lh, 10, !dbg !5943
  br i1 %i.li, label %bb.dp, label %_RNvMsz_NtCskKLDkoKarTP_4core3numt27from_ascii_bytes_radix_impl.exit.thread, !dbg !5944

bb.dp:                                            ; preds = %.lr.ph.i259
    #dbg_value(i16 0, !5590, !DIExpression(), !4175)
    #dbg_value(i16 0, !5619, !DIExpression(), !4180)
    #dbg_value(i16 0, !5629, !DIExpression(), !4184)
    #dbg_value(i16 0, !5637, !DIExpression(), !4187)
    #dbg_value(i64 %.sroa.15.0.i250, !5592, !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !4203)
    #dbg_value(ptr %.sroa.0.0.i252, !5592, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 64), !4203)
    #dbg_value(i32 %i.lh, !5593, !DIExpression(), !4207)
  %i.lj = trunc nuw nsw i32 %i.lh to i16, !dbg !5945 ; 2 uses
    #dbg_value(ptr %.sroa.0.0.i252, !5586, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 64), !4168)
    #dbg_value(ptr %.sroa.0.0.i252, !5580, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 64), !4167)
    #dbg_value(i64 %.sroa.15.0.i250, !5586, !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !4168)
    #dbg_value(i64 %.sroa.15.0.i250, !5580, !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !4167)
    #dbg_value(i16 %i.lj, !5637, !DIExpression(), !4187)
    #dbg_value(i16 %i.lj, !5629, !DIExpression(), !4184)
    #dbg_value(i16 %i.lj, !5619, !DIExpression(), !4180)
    #dbg_value(i16 %i.lj, !5590, !DIExpression(), !4175)
  %.not72.i262 = icmp eq i64 %.sroa.15.0.i250, 1, !dbg !5924
  br i1 %.not72.i262, label %.loopexit.i257, label %.lr.ph.i259.1, !dbg !5924

.lr.ph.i259.1:                                    ; preds = %bb.dp
  %i.lk = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i252, i64 1, !dbg !5946
    #dbg_value(ptr %i.lk, !5592, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !4203)
    #dbg_value(ptr %i.lk, !5586, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !4168)
    #dbg_value(ptr %i.lk, !5580, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !4167)
    #dbg_value(ptr %i.lk, !5591, !DIExpression(), !4203)
    #dbg_value(ptr %i.lk, !5592, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 64), !4203)
    #dbg_value(i64 %.sroa.15.0.i250, !5592, !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !4203)
    #dbg_value(i16 %i.lj, !5590, !DIExpression(DW_OP_constu, 10, DW_OP_mul, DW_OP_stack_value), !4175)
    #dbg_value(i16 %i.lj, !5619, !DIExpression(DW_OP_constu, 10, DW_OP_mul, DW_OP_stack_value), !4180)
    #dbg_value(i16 %i.lj, !5629, !DIExpression(DW_OP_constu, 10, DW_OP_mul, DW_OP_stack_value), !4184)
    #dbg_value(i16 %i.lj, !5637, !DIExpression(DW_OP_constu, 10, DW_OP_mul, DW_OP_stack_value), !4187)
  %i.ll = load i8, ptr %i.lk, align 1, !dbg !5940, !alias.scope !5618, !noundef !364
  %i.lm = zext i8 %i.ll to i32, !dbg !5941
    #dbg_value(i32 %i.lm, !1097, !DIExpression(), !4205)
    #dbg_value(i32 10, !1103, !DIExpression(), !4205)
  %i.ln = add nsw i32 %i.lm, -48, !dbg !5942      ; 2 uses
    #dbg_value(i32 %i.ln, !1104, !DIExpression(), !4206)
  %i.lo = icmp ult i32 %i.ln, 10, !dbg !5943
  br i1 %i.lo, label %bb.dq, label %_RNvMsz_NtCskKLDkoKarTP_4core3numt27from_ascii_bytes_radix_impl.exit.thread, !dbg !5944

bb.dq:                                            ; preds = %.lr.ph.i259.1
  %i.lp = mul nuw nsw i16 %i.lj, 10, !dbg !5947
    #dbg_value(i16 %i.lp, !5590, !DIExpression(), !4175)
    #dbg_value(i16 %i.lp, !5619, !DIExpression(), !4180)
    #dbg_value(i16 %i.lp, !5629, !DIExpression(), !4184)
    #dbg_value(i16 %i.lp, !5637, !DIExpression(), !4187)
    #dbg_value(i64 %.sroa.15.0.i250, !5592, !DIExpression(DW_OP_constu, 2, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !4203)
    #dbg_value(ptr %.sroa.0.0.i252, !5592, !DIExpression(DW_OP_plus_uconst, 2, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 64), !4203)
    #dbg_value(i32 %i.ln, !5593, !DIExpression(), !4207)
  %i.lq = trunc nuw nsw i32 %i.ln to i16, !dbg !5945
  %i.lr = add nuw nsw i16 %i.lp, %i.lq, !dbg !5948 ; 2 uses
    #dbg_value(ptr %.sroa.0.0.i252, !5586, !DIExpression(DW_OP_plus_uconst, 2, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 64), !4168)
    #dbg_value(ptr %.sroa.0.0.i252, !5580, !DIExpression(DW_OP_plus_uconst, 2, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 64), !4167)
    #dbg_value(i64 %.sroa.15.0.i250, !5586, !DIExpression(DW_OP_constu, 2, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !4168)
    #dbg_value(i64 %.sroa.15.0.i250, !5580, !DIExpression(DW_OP_constu, 2, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !4167)
    #dbg_value(i16 %i.lr, !5637, !DIExpression(), !4187)
    #dbg_value(i16 %i.lr, !5629, !DIExpression(), !4184)
    #dbg_value(i16 %i.lr, !5619, !DIExpression(), !4180)
    #dbg_value(i16 %i.lr, !5590, !DIExpression(), !4175)
  %.not72.i262.1 = icmp eq i64 %.sroa.15.0.i250, 2, !dbg !5924
  br i1 %.not72.i262.1, label %.loopexit.i257, label %.lr.ph.i259.2, !dbg !5924

.lr.ph.i259.2:                                    ; preds = %bb.dq
  %i.ls = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i252, i64 2, !dbg !5946
    #dbg_value(ptr %i.ls, !5592, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !4203)
    #dbg_value(ptr %i.ls, !5586, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !4168)
    #dbg_value(ptr %i.ls, !5580, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !4167)
    #dbg_value(ptr %i.ls, !5591, !DIExpression(), !4203)
    #dbg_value(ptr %i.ls, !5592, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 64), !4203)
    #dbg_value(i64 %.sroa.15.0.i250, !5592, !DIExpression(DW_OP_constu, 2, DW_OP_minus, DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !4203)
    #dbg_value(i16 %i.lr, !5590, !DIExpression(DW_OP_constu, 10, DW_OP_mul, DW_OP_stack_value), !4175)
    #dbg_value(i16 %i.lr, !5619, !DIExpression(DW_OP_constu, 10, DW_OP_mul, DW_OP_stack_value), !4180)
    #dbg_value(i16 %i.lr, !5629, !DIExpression(DW_OP_constu, 10, DW_OP_mul, DW_OP_stack_value), !4184)
    #dbg_value(i16 %i.lr, !5637, !DIExpression(DW_OP_constu, 10, DW_OP_mul, DW_OP_stack_value), !4187)
  %i.lt = load i8, ptr %i.ls, align 1, !dbg !5940, !alias.scope !5618, !noundef !364
  %i.lu = zext i8 %i.lt to i32, !dbg !5941
    #dbg_value(i32 %i.lu, !1097, !DIExpression(), !4205)
    #dbg_value(i32 10, !1103, !DIExpression(), !4205)
  %i.lv = add nsw i32 %i.lu, -48, !dbg !5942      ; 2 uses
    #dbg_value(i32 %i.lv, !1104, !DIExpression(), !4206)
  %i.lw = icmp ult i32 %i.lv, 10, !dbg !5943
  br i1 %i.lw, label %bb.dr, label %_RNvMsz_NtCskKLDkoKarTP_4core3numt27from_ascii_bytes_radix_impl.exit.thread, !dbg !5944

bb.dr:                                            ; preds = %.lr.ph.i259.2
  %i.lx = mul nuw i16 %i.lr, 10, !dbg !5947
    #dbg_value(i16 %i.lx, !5590, !DIExpression(), !4175)
    #dbg_value(i16 %i.lx, !5619, !DIExpression(), !4180)
    #dbg_value(i16 %i.lx, !5629, !DIExpression(), !4184)
    #dbg_value(i16 %i.lx, !5637, !DIExpression(), !4187)
    #dbg_value(i64 %.sroa.15.0.i250, !5592, !DIExpression(DW_OP_constu, 3, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !4203)
    #dbg_value(ptr %.sroa.0.0.i252, !5592, !DIExpression(DW_OP_plus_uconst, 3, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 64), !4203)
    #dbg_value(i32 %i.lv, !5593, !DIExpression(), !4207)
  %i.ly = trunc nuw nsw i32 %i.lv to i16, !dbg !5945
  %i.lz = add nuw nsw i16 %i.lx, %i.ly, !dbg !5948 ; 2 uses
    #dbg_value(ptr %.sroa.0.0.i252, !5586, !DIExpression(DW_OP_plus_uconst, 3, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 64), !4168)
    #dbg_value(ptr %.sroa.0.0.i252, !5580, !DIExpression(DW_OP_plus_uconst, 3, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 64), !4167)
    #dbg_value(i64 %.sroa.15.0.i250, !5586, !DIExpression(DW_OP_constu, 3, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !4168)
    #dbg_value(i64 %.sroa.15.0.i250, !5580, !DIExpression(DW_OP_constu, 3, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !4167)
    #dbg_value(i16 %i.lz, !5637, !DIExpression(), !4187)
    #dbg_value(i16 %i.lz, !5629, !DIExpression(), !4184)
    #dbg_value(i16 %i.lz, !5619, !DIExpression(), !4180)
    #dbg_value(i16 %i.lz, !5590, !DIExpression(), !4175)
  %.not72.i262.2 = icmp eq i64 %.sroa.15.0.i250, 3, !dbg !5924
  br i1 %.not72.i262.2, label %.loopexit.i257, label %.lr.ph.i259.3, !dbg !5924

.lr.ph.i259.3:                                    ; preds = %bb.dr
  %i.ma = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i252, i64 3, !dbg !5946
    #dbg_value(ptr %i.ma, !5592, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !4203)
    #dbg_value(ptr %i.ma, !5586, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !4168)
    #dbg_value(ptr %i.ma, !5580, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !4167)
    #dbg_value(ptr %i.ma, !5591, !DIExpression(), !4203)
    #dbg_value(ptr %i.ma, !5592, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 64), !4203)
    #dbg_value(i64 %.sroa.15.0.i250, !5592, !DIExpression(DW_OP_constu, 3, DW_OP_minus, DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !4203)
    #dbg_value(i16 %i.lz, !5590, !DIExpression(DW_OP_constu, 10, DW_OP_mul, DW_OP_stack_value), !4175)
    #dbg_value(i16 %i.lz, !5619, !DIExpression(DW_OP_constu, 10, DW_OP_mul, DW_OP_stack_value), !4180)
    #dbg_value(i16 %i.lz, !5629, !DIExpression(DW_OP_constu, 10, DW_OP_mul, DW_OP_stack_value), !4184)
    #dbg_value(i16 %i.lz, !5637, !DIExpression(DW_OP_constu, 10, DW_OP_mul, DW_OP_stack_value), !4187)
  %i.mb = load i8, ptr %i.ma, align 1, !dbg !5940, !alias.scope !5618, !noundef !364
  %i.mc = zext i8 %i.mb to i32, !dbg !5941
    #dbg_value(i32 %i.mc, !1097, !DIExpression(), !4205)
    #dbg_value(i32 10, !1103, !DIExpression(), !4205)
  %i.md = add nsw i32 %i.mc, -48, !dbg !5942      ; 2 uses
    #dbg_value(i32 %i.md, !1104, !DIExpression(), !4206)
  %i.me = icmp ult i32 %i.md, 10, !dbg !5943
  br i1 %i.me, label %bb.ds, label %_RNvMsz_NtCskKLDkoKarTP_4core3numt27from_ascii_bytes_radix_impl.exit.thread, !dbg !5944

bb.ds:                                            ; preds = %.lr.ph.i259.3
  %i.mf = mul i16 %i.lz, 10, !dbg !5947
    #dbg_value(i16 %i.mf, !5590, !DIExpression(), !4175)
    #dbg_value(i16 %i.mf, !5619, !DIExpression(), !4180)
    #dbg_value(i16 %i.mf, !5629, !DIExpression(), !4184)
    #dbg_value(i16 %i.mf, !5637, !DIExpression(), !4187)
    #dbg_value(i64 %.sroa.15.0.i250, !5592, !DIExpression(DW_OP_constu, 4, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !4203)
    #dbg_value(ptr %.sroa.0.0.i252, !5592, !DIExpression(DW_OP_plus_uconst, 4, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 64), !4203)
    #dbg_value(i32 %i.md, !5593, !DIExpression(), !4207)
  %i.mg = trunc nuw nsw i32 %i.md to i16, !dbg !5945
  %i.mh = add i16 %i.mf, %i.mg, !dbg !5948
    #dbg_value(ptr %.sroa.0.0.i252, !5586, !DIExpression(DW_OP_plus_uconst, 4, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 64), !4168)
    #dbg_value(ptr %.sroa.0.0.i252, !5580, !DIExpression(DW_OP_plus_uconst, 4, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 64), !4167)
    #dbg_value(i64 %.sroa.15.0.i250, !5586, !DIExpression(DW_OP_constu, 4, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !4168)
    #dbg_value(i64 %.sroa.15.0.i250, !5580, !DIExpression(DW_OP_constu, 4, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !4167)
    #dbg_value(i16 %i.mh, !5637, !DIExpression(), !4187)
    #dbg_value(i16 %i.mh, !5629, !DIExpression(), !4184)
    #dbg_value(i16 %i.mh, !5619, !DIExpression(), !4180)
    #dbg_value(i16 %i.mh, !5590, !DIExpression(), !4175)
  br label %.loopexit.i257, !dbg !5924

_RNvMsz_NtCskKLDkoKarTP_4core3numt27from_ascii_bytes_radix_impl.exit: ; preds = %bb.dn, %.loopexit.i257
  %.sroa.8.0.insert.insert.i248 = phi i32 [ %spec.select.i256, %bb.dn ], [ %i.kq, %.loopexit.i257 ], !dbg !5927 ; 3 uses
    #dbg_value(i32 %.sroa.8.0.insert.insert.i248, !5645, !DIExpression(DW_OP_constu, 8, DW_OP_shr, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value, DW_OP_LLVM_fragment, 8, 8), !4212)
    #dbg_value(i32 %.sroa.8.0.insert.insert.i248, !5645, !DIExpression(DW_OP_constu, 16, DW_OP_shr, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_stack_value, DW_OP_LLVM_fragment, 16, 16), !4212)
    #dbg_declare(ptr %i.c, !5650, !DIExpression(), !4213)
  %i.mi = trunc i32 %.sroa.8.0.insert.insert.i248 to i1, !dbg !5949
    #dbg_value(i32 %.sroa.8.0.insert.insert.i248, !5645, !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 8), !4212)
  br i1 %i.mi, label %_RNvMsz_NtCskKLDkoKarTP_4core3numt27from_ascii_bytes_radix_impl.exit.thread, label %bb.dt, !dbg !5950, !prof !5075

_RNvMsz_NtCskKLDkoKarTP_4core3numt27from_ascii_bytes_radix_impl.exit.thread: ; preds = %bb.do, %bb.dm, %.lr.ph.i259, %.lr.ph.i259.1, %.lr.ph.i259.2, %.lr.ph.i259.3, %bb.dj, %bb.dk, %bb.dk, %_RNvMsz_NtCskKLDkoKarTP_4core3numt27from_ascii_bytes_radix_impl.exit
  %.sroa.8.0.insert.insert.i248281 = phi i32 [ %.sroa.8.0.insert.insert.i248, %_RNvMsz_NtCskKLDkoKarTP_4core3numt27from_ascii_bytes_radix_impl.exit ], [ 256, %bb.dk ], [ 256, %.lr.ph.i259 ], [ 256, %bb.dk ], [ 0, %bb.dj ], [ 256, %.lr.ph.i259.3 ], [ 256, %.lr.ph.i259.2 ], [ 256, %.lr.ph.i259.1 ], [ 256, %bb.dm ], [ 512, %bb.do ]
  %.sroa.4.0.extract.shift.i211 = lshr i32 %.sroa.8.0.insert.insert.i248281, 8
    #dbg_value(i32 %.sroa.4.0.extract.shift.i211, !5645, !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value, DW_OP_LLVM_fragment, 8, 8), !4212)
  %.sroa.4.0.extract.trunc.i212 = trunc i32 %.sroa.4.0.extract.shift.i211 to i8
    #dbg_value(i8 %.sroa.4.0.extract.trunc.i212, !5645, !DIExpression(DW_OP_LLVM_fragment, 8, 8), !4212)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !5951
  store i8 %.sroa.4.0.extract.trunc.i212, ptr %i.c, align 1, !dbg !5951
  invoke void @_RNvNtCskKLDkoKarTP_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @1, i64 noundef 43, ptr noundef nonnull %i.c, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @65) #16
          to label %.noexc213 unwind label %bb.di, !dbg !5952

.noexc213:                                        ; preds = %_RNvMsz_NtCskKLDkoKarTP_4core3numt27from_ascii_bytes_radix_impl.exit.thread
  unreachable, !dbg !5952

bb.dt:                                            ; preds = %_RNvMsz_NtCskKLDkoKarTP_4core3numt27from_ascii_bytes_radix_impl.exit
  %.sroa.5.0.extract.shift.i = lshr i32 %.sroa.8.0.insert.insert.i248, 16
    #dbg_value(i32 %.sroa.5.0.extract.shift.i, !5645, !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_stack_value, DW_OP_LLVM_fragment, 16, 16), !4212)
  %.sroa.5.0.extract.trunc.i = trunc nuw i32 %.sroa.5.0.extract.shift.i to i16
    #dbg_value(i16 %.sroa.5.0.extract.trunc.i, !5645, !DIExpression(DW_OP_LLVM_fragment, 16, 16), !4212)
    #dbg_value(i16 %.sroa.5.0.extract.trunc.i, !4260, !DIExpression(), !5656)
  %i.mj = invoke noundef zeroext i1 @_RNvMs3_NtCs8c5NiIByPWa_6docopt4doptNtB5_7ArgvMap8get_bool(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(96) %i.z, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @66, i64 noundef 19)
          to label %bb.du unwind label %bb.di, !dbg !5953

bb.du:                                            ; preds = %bb.dt
    #dbg_value(i1 %i.mj, !4261, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !5657)
  %i.mk = invoke noundef zeroext i1 @_RNvMs3_NtCs8c5NiIByPWa_6docopt4doptNtB5_7ArgvMap8get_bool(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(96) %i.z, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @67, i64 noundef 22)
          to label %bb.dv unwind label %bb.di, !dbg !5954

bb.dv:                                            ; preds = %bb.du
    #dbg_value(i1 %i.mk, !4262, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !5658)
  %i.ml = getelementptr inbounds nuw i8, ptr %0, i64 88, !dbg !5955
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ml, ptr noundef nonnull align 8 dereferenceable(24) %i.x, i64 24, i1 false), !dbg !5956
  %i.mm = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !5955
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.mm, ptr noundef nonnull align 8 dereferenceable(24) %i.w, i64 24, i1 false), !dbg !5957
  %i.mn = getelementptr inbounds nuw i8, ptr %0, i64 40, !dbg !5955
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.mn, ptr noundef nonnull align 8 dereferenceable(24) %i.t, i64 24, i1 false), !dbg !5958
  %i.mo = getelementptr inbounds nuw i8, ptr %0, i64 112, !dbg !5955
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.mo, ptr noundef nonnull align 8 dereferenceable(24) %i.q, i64 24, i1 false), !dbg !5959
  %i.mp = getelementptr inbounds nuw i8, ptr %0, i64 136, !dbg !5955
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.mp, ptr noundef nonnull align 8 dereferenceable(24) %i.p, i64 24, i1 false), !dbg !5960
  %i.mq = getelementptr inbounds nuw i8, ptr %0, i64 64, !dbg !5955
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.mq, ptr noundef nonnull align 8 dereferenceable(24) %i.n, i64 24, i1 false), !dbg !5961
  %i.mr = getelementptr inbounds nuw i8, ptr %0, i64 160, !dbg !5955
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.mr, ptr noundef nonnull align 8 dereferenceable(24) %i.m, i64 24, i1 false), !dbg !5962
  %i.ms = getelementptr inbounds nuw i8, ptr %0, i64 184, !dbg !5955
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ms, ptr noundef nonnull align 8 dereferenceable(24) %i.l, i64 24, i1 false), !dbg !5963
  %i.mt = getelementptr inbounds nuw i8, ptr %0, i64 216, !dbg !5955
  store i32 %.sroa.6.0.extract.trunc.i, ptr %i.mt, align 8, !dbg !5955
  store i64 %.sroa.02.0, ptr %0, align 8, !dbg !5955
  %i.mu = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !5955
  store i64 %.sroa.3.0, ptr %i.mu, align 8, !dbg !5955
  %i.mv = getelementptr inbounds nuw i8, ptr %0, i64 208, !dbg !5955
  store i64 %.sroa.11269.0, ptr %i.mv, align 8, !dbg !5955
  %i.mw = getelementptr inbounds nuw i8, ptr %0, i64 222, !dbg !5955
  %i.mx = zext i1 %i.ht to i8, !dbg !5955
  store i8 %i.mx, ptr %i.mw, align 2, !dbg !5955
  %i.my = getelementptr inbounds nuw i8, ptr %0, i64 220, !dbg !5955
  store i16 %.sroa.5.0.extract.trunc.i, ptr %i.my, align 4, !dbg !5955
  %i.mz = getelementptr inbounds nuw i8, ptr %0, i64 223, !dbg !5955
  %i.na = zext i1 %i.mj to i8, !dbg !5955
  store i8 %i.na, ptr %i.mz, align 1, !dbg !5955
  %i.nb = getelementptr inbounds nuw i8, ptr %0, i64 224, !dbg !5955
  %i.nc = zext i1 %i.mk to i8, !dbg !5955
  store i8 %i.nc, ptr %i.nb, align 8, !dbg !5955
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !dbg !5919
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !dbg !5900
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !dbg !5880
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !dbg !5864
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !dbg !5834
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t), !dbg !5784
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w), !dbg !5773
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x), !dbg !5726
    #dbg_value(ptr %i.z, !658, !DIExpression(), !4215)
    #dbg_value(ptr %i.z, !663, !DIExpression(), !4217)
    #dbg_value(ptr %i.z, !670, !DIExpression(), !4219)
    #dbg_value(ptr %i.z, !677, !DIExpression(), !4221)
    #dbg_value(ptr %i.z, !684, !DIExpression(), !4223)
  invoke void @_RNvXsg_NtCsjqcU1oJFKXj_9hashbrown3rawINtB5_8RawTableTNtNtCsexYYUdYSQU6_5alloc6string6StringNtNtCs8c5NiIByPWa_6docopt4dopt5ValueEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsiGRwBGCeC5s_11quiche_apps(ptr noalias nofree noundef nonnull align 8 dereferenceable(96) %i.z)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs8c5NiIByPWa_6docopt4dopt7ArgvMapECsiGRwBGCeC5s_11quiche_apps.exit unwind label %bb.dw, !dbg !5964

bb.dw:                                            ; preds = %bb.dv
  %i.nd = landingpad { ptr, i32 }
          cleanup
  %i.ne = getelementptr inbounds nuw i8, ptr %i.z, i64 48, !dbg !5965
    #dbg_value(ptr %i.ne, !691, !DIExpression(), !4225)
    #dbg_value(ptr %i.ne, !698, !DIExpression(), !4227)
    #dbg_value(ptr %i.ne, !705, !DIExpression(), !4229)
  invoke void @_RNvXsg_NtCsjqcU1oJFKXj_9hashbrown3rawINtB5_8RawTableTNtNtCsexYYUdYSQU6_5alloc6string6StringBP_EENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsiGRwBGCeC5s_11quiche_apps(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.ne)
          to label %common.resume unwind label %bb.dx, !dbg !5966

bb.dx:                                            ; preds = %bb.dw
  %i.nf = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #12, !dbg !5965
  unreachable, !dbg !5965

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs8c5NiIByPWa_6docopt4dopt7ArgvMapECsiGRwBGCeC5s_11quiche_apps.exit: ; preds = %bb.dv
  %i.ng = getelementptr inbounds nuw i8, ptr %i.z, i64 48, !dbg !5965
    #dbg_value(ptr %i.ng, !691, !DIExpression(), !4231)
    #dbg_value(ptr %i.ng, !698, !DIExpression(), !4233)
    #dbg_value(ptr %i.ng, !705, !DIExpression(), !4235)
  call void @_RNvXsg_NtCsjqcU1oJFKXj_9hashbrown3rawINtB5_8RawTableTNtNtCsexYYUdYSQU6_5alloc6string6StringBP_EENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsiGRwBGCeC5s_11quiche_apps(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.ng), !dbg !5967
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z), !dbg !5672
  ret void, !dbg !5968

bb.dy:                                            ; preds = %bb.di, %bb.cw, %bb.ck, %bb.cc, %.body, %bb.az, %bb.av, %bb.ai, %bb.g
  %i.nh = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #12, !dbg !5969
  unreachable, !dbg !5969
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXs1_NtCsiGRwBGCeC5s_11quiche_apps4argsNtB5_10ClientArgsNtNtCskKLDkoKarTP_4core7default7Default7default(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([232 x i8]) align 8 captures(none) dereferenceable(232) %0) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !5970 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 5 uses
  %i.c = alloca [24 x i8], align 8                ; 5 uses
  %i.d = alloca [24 x i8], align 8                ; 7 uses
  %i.e = alloca [24 x i8], align 8                ; 7 uses
  %i.f = alloca [24 x i8], align 8                ; 5 uses
    #dbg_value(ptr @68, !5996, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !5999)
    #dbg_value(i64 3, !5996, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !5999)
    #dbg_value(ptr @68, !6000, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !6004)
    #dbg_value(i64 3, !6000, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !6004)
    #dbg_value(ptr @68, !6001, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !6005)
    #dbg_value(i64 3, !6001, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !6005)
    #dbg_value(ptr @68, !6006, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !6009)
    #dbg_value(i64 3, !6006, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !6009)
    #dbg_value(ptr @68, !6010, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !6013)
    #dbg_value(i64 3, !6010, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !6013)
    #dbg_declare(ptr poison, !6014, !DIExpression(), !6020)
    #dbg_declare(ptr poison, !6025, !DIExpression(), !6031)
    #dbg_declare(ptr poison, !6032, !DIExpression(), !6036)
    #dbg_declare(ptr poison, !6037, !DIExpression(), !6041)
    #dbg_declare(ptr poison, !6042, !DIExpression(), !6049)
    #dbg_value(i64 0, !6050, !DIExpression(), !6056)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !dbg !6093
  store i64 -1, ptr %i.f, align 8, !dbg !6093
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !dbg !6060
  store i64 0, ptr %i.e, align 8, !dbg !6094
  %i.g = getelementptr inbounds nuw i8, ptr %i.e, i64 8, !dbg !6094
  store ptr inttoptr (i64 8 to ptr), ptr %i.g, align 8, !dbg !6094
  %i.h = getelementptr inbounds nuw i8, ptr %i.e, i64 16, !dbg !6094
  store i64 0, ptr %i.h, align 8, !dbg !6094
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !dbg !6064
  store i64 0, ptr %i.d, align 8, !dbg !6095
  %i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8, !dbg !6095
  store ptr inttoptr (i64 8 to ptr), ptr %i.i, align 8, !dbg !6095
  %i.j = getelementptr inbounds nuw i8, ptr %i.d, i64 16, !dbg !6095
  store i64 0, ptr %i.j, align 8, !dbg !6095
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !6096
  store i64 -1, ptr %i.c, align 8, !dbg !6096
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !6097
  store i64 -1, ptr %i.b, align 8, !dbg !6097
    #dbg_value(ptr @68, !6021, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !6065)
    #dbg_value(ptr @68, !6023, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !6066)
    #dbg_value(ptr @68, !6015, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !6067)
    #dbg_value(ptr @68, !6026, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !6068)
    #dbg_value(i64 3, !6021, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !6065)
    #dbg_value(i64 3, !6023, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !6066)
    #dbg_value(i64 3, !6015, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !6067)
    #dbg_value(i64 3, !6026, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !6068)
    #dbg_value(i64 3, !6027, !DIExpression(), !6069)
    #dbg_value(i64 3, !6033, !DIExpression(), !6070)
    #dbg_value(i64 3, !6038, !DIExpression(), !6071)
    #dbg_value(i64 3, !6072, !DIExpression(), !6077)
    #dbg_value(i64 3, !6078, !DIExpression(), !6083)
    #dbg_value(i64 3, !6043, !DIExpression(), !6084)
    #dbg_value(i64 3, !6052, !DIExpression(), !6056)
    #dbg_value(i64 1, !6044, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !6084)
    #dbg_value(i64 1, !6053, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !6056)
    #dbg_value(i64 1, !6044, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !6084)
    #dbg_value(i64 1, !6053, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !6056)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !6098
  invoke void @_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsiGRwBGCeC5s_11quiche_apps(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, i64 noundef 3, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
          to label %bb.c unwind label %bb.b, !dbg !6098

bb.b:                                             ; preds = %bb.d, %bb.a
  %i.k = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsexYYUdYSQU6_5alloc3vec3VechEEECsiGRwBGCeC5s_11quiche_apps(ptr noalias nofree noundef align 8 dereferenceable(24) %i.b) #14
          to label %bb.h unwind label %bb.g, !dbg !6099

bb.c:                                             ; preds = %bb.a
  %i.l = load i64, ptr %i.a, align 8, !dbg !6098, !range !1017, !noundef !364
  %i.m = trunc nuw i64 %i.l to i1, !dbg !6100
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 8, !dbg !6084
  %i.o = load i64, ptr %i.n, align 8, !dbg !6084, !range !1018, !noundef !364 ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.a, i64 16, !dbg !6084 ; 2 uses
  br i1 %i.m, label %bb.d, label %bb.e, !dbg !6100, !prof !1019

bb.d:                                             ; preds = %bb.c
  %i.q = load i64, ptr %i.p, align 8, !dbg !6101
    #dbg_value(i64 %i.o, !6046, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !6085)
    #dbg_value(i64 %i.q, !6046, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !6085)
  invoke void @_RNvNtCsexYYUdYSQU6_5alloc7raw_vec12handle_error(i64 noundef %i.o, i64 %i.q) #15
          to label %bb.f unwind label %bb.b, !dbg !6102

bb.e:                                             ; preds = %bb.c
  %i.r = load ptr, ptr %i.p, align 8, !dbg !6103, !nonnull !364, !noundef !364 ; 2 uses
    #dbg_value(i64 %i.o, !6045, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !6086)
end_hunk_2
