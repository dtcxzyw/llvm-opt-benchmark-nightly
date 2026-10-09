Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/yara-x-rs/original/yara_x-7f56cf114ea533af.yara_x.54960d49aaff044b-cgu.10?download=true
inline.NumInlined: 6305
inline.NumDeleted: 3398
loop-unroll.NumRuntimeUnrolled: 18
loop-unroll.NumUnrolled: 18
begin_hunk_0_@_RINvXs0_NtNtNtCskKLDkoKarTP_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4IterTjNtNtNtCs7gfv9tzbXmh_6yara_x8compiler2ir6ExprIdNtB1t_7RegexIdEENCNvNtB1r_6ast2ir16or_expr_from_asts_0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB32_8for_each4callB29_NCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB4i_3VecB29_E14extend_trustedBN_E0E0EB1v_:bb.a
  %i.bn = getelementptr i8, ptr %i.bm, i64 28
  %.val15.i.1 = load i32, ptr %i.bn, align 4, !noalias !3247, !noundef !6
  %i.bo = getelementptr [4 x i8], ptr %.sroa.7.0.copyload, i64 %i.bi
  %i.bp = getelementptr i8, ptr %i.bo, i64 4
  store i32 %.val15.i.1, ptr %i.bp, align 4, !noalias !3250
  %i.bq = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %.sroa.01.0.i
  %i.br = getelementptr i8, ptr %i.bq, i64 44
  %.val15.i.2 = load i32, ptr %i.br, align 4, !noalias !3247, !noundef !6
  %i.bs = getelementptr [4 x i8], ptr %.sroa.7.0.copyload, i64 %i.bi
  %i.bt = getelementptr i8, ptr %i.bs, i64 8
  store i32 %.val15.i.2, ptr %i.bt, align 4, !noalias !3250
  %i.bu = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %.sroa.01.0.i
  %i.bv = getelementptr i8, ptr %i.bu, i64 60
  %.val15.i.3 = load i32, ptr %i.bv, align 4, !noalias !3247, !noundef !6
  %i.bw = getelementptr [4 x i8], ptr %.sroa.7.0.copyload, i64 %i.bi
  %i.bx = getelementptr i8, ptr %i.bw, i64 12
  store i32 %.val15.i.3, ptr %i.bx, align 4, !noalias !3250
  %i.by = add i64 %i.bi, 4                        ; 2 uses
  %i.bz = add nuw i64 %.sroa.01.0.i, 4            ; 2 uses
  %i.ca = icmp eq i64 %i.bz, %i.e
  br i1 %i.ca, label %_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterTjNtNtNtCs7gfv9tzbXmh_6yara_x8compiler2ir6ExprIdNtBW_7RegexIdEENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB1X_8adapters3map8map_foldRBQ_B1C_uNCNvNtBU_6ast2ir16or_expr_from_asts_0NCINvNvB1R_8for_each4callB1C_NCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB4x_3VecB1C_E14extend_trustedINtB2H_3MapBF_B3k_EE0E0E0EBY_.exit, label %scalar.ph, !llvm.loop !3245

_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterTjNtNtNtCs7gfv9tzbXmh_6yara_x8compiler2ir6ExprIdNtBW_7RegexIdEENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB1X_8adapters3map8map_foldRBQ_B1C_uNCNvNtBU_6ast2ir16or_expr_from_asts_0NCINvNvB1R_8for_each4callB1C_NCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB4x_3VecB1C_E14extend_trustedINtB2H_3MapBF_B3k_EE0E0E0EBY_.exit: ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %bb.a
  %storemerge = phi i64 [ %.sroa.5.0.copyload, %bb.a ], [ %.lcssa.unr, %scalar.ph.prol.loopexit ], [ %i.by, %scalar.ph ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload) ]
  store i64 %storemerge, ptr %.sroa.0.0.copyload, align 8, !noalias !3247
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(write, argmem: readwrite, inaccessiblemem: readwrite, target_mem: none) uwtable
define hidden void @_RINvXs0_NtNtNtCskKLDkoKarTP_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4IterTttmEENCNvXs7_NtNtNtCs7gfv9tzbXmh_6yara_x7modules2pe6parserNtNtNtB1F_6protos2pe2PEINtNtBc_7convert4FromNtB1B_2PEE4froms1_0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB3m_8for_each4callNtB2m_8RichToolNCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB4N_3VecB4p_E14extend_trustedBN_E0E0EB1H_(ptr noundef nonnull %0, ptr noundef %1, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %2) unnamed_addr #14 personality ptr @rust_eh_personality {
bb.a:
  %.sroa.0.0.copyload = load ptr, ptr %2, align 8 ; 2 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.sroa.5.0.copyload = load i64, ptr %.sroa.5.0..sroa_idx, align 8 ; 2 uses
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 16
  %.sroa.7.0.copyload = load ptr, ptr %.sroa.7.0..sroa_idx, align 8
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %1) ]
  %i.a = icmp eq ptr %0, %1
  br i1 %i.a, label %_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterTttmEENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB12_8adapters3map8map_foldRBQ_NtNtNtNtCs7gfv9tzbXmh_6yara_x7modules6protos2pe8RichTooluNCNvXs7_NtNtB2q_2pe6parserNtB2m_2PEINtNtBb_7convert4FromNtB3n_2PEE4froms1_0NCINvNvBW_8for_each4callB2k_NCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB53_3VecB2k_E14extend_trustedINtB1M_3MapBF_B3f_EE0E0E0EB2s_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = ptrtoint ptr %1 to i64
  %i.c = ptrtoint ptr %0 to i64
  %i.d = sub nuw i64 %i.b, %i.c
  %i.e = lshr exact i64 %i.d, 3
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %bb.b
  %i.f = phi i64 [ %.sroa.5.0.copyload, %bb.b ], [ %i.p, %bb.c ] ; 2 uses
  %.sroa.01.0.i = phi i64 [ 0, %bb.b ], [ %i.q, %bb.c ] ; 2 uses
  %i.g = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.sroa.01.0.i ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3263)
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 2
  %i.i = load i16, ptr %i.h, align 2, !alias.scope !3264, !noalias !3265, !noundef !6
  %i.j = zext i16 %i.i to i32
  %i.k = load i16, ptr %i.g, align 4, !alias.scope !3264, !noalias !3265, !noundef !6
  %i.l = zext i16 %i.k to i32
  %i.m = getelementptr inbounds nuw i8, ptr %i.g, i64 4
  %i.n = load i32, ptr %i.m, align 4, !alias.scope !3264, !noalias !3265, !noundef !6
  %i.o = getelementptr inbounds nuw [40 x i8], ptr %.sroa.7.0.copyload, i64 %i.f ; 7 uses
  store i32 1, ptr %i.o, align 8, !noalias !3266
  %.sroa.42.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.o, i64 4
  store i32 %i.j, ptr %.sroa.42.0..sroa_idx.i.i, align 4, !noalias !3266
  %.sroa.53.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  store i32 1, ptr %.sroa.53.0..sroa_idx.i.i, align 8, !noalias !3266
  %.sroa.64.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.o, i64 12
  store i32 %i.l, ptr %.sroa.64.0..sroa_idx.i.i, align 4, !noalias !3266
  %.sroa.75.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  store i32 1, ptr %.sroa.75.0..sroa_idx.i.i, align 8, !noalias !3266
  %.sroa.86.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.o, i64 20
  store i32 %i.n, ptr %.sroa.86.0..sroa_idx.i.i, align 4, !noalias !3266
  %.sroa.97.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.o, i64 24
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.97.0..sroa_idx.i.i, i8 0, i64 16, i1 false), !noalias !3267
  %i.p = add i64 %i.f, 1                          ; 2 uses
  %i.q = add nuw i64 %.sroa.01.0.i, 1             ; 2 uses
  %i.r = icmp eq i64 %i.q, %i.e
  br i1 %i.r, label %_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterTttmEENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB12_8adapters3map8map_foldRBQ_NtNtNtNtCs7gfv9tzbXmh_6yara_x7modules6protos2pe8RichTooluNCNvXs7_NtNtB2q_2pe6parserNtB2m_2PEINtNtBb_7convert4FromNtB3n_2PEE4froms1_0NCINvNvBW_8for_each4callB2k_NCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB53_3VecB2k_E14extend_trustedINtB1M_3MapBF_B3f_EE0E0E0EB2s_.exit, label %bb.c

_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterTttmEENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB12_8adapters3map8map_foldRBQ_NtNtNtNtCs7gfv9tzbXmh_6yara_x7modules6protos2pe8RichTooluNCNvXs7_NtNtB2q_2pe6parserNtB2m_2PEINtNtBb_7convert4FromNtB3n_2PEE4froms1_0NCINvNvBW_8for_each4callB2k_NCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB53_3VecB2k_E14extend_trustedINtB1M_3MapBF_B3f_EE0E0E0EB2s_.exit: ; preds = %bb.c, %bb.a
  %storemerge = phi i64 [ %.sroa.5.0.copyload, %bb.a ], [ %i.p, %bb.c ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload) ]
  store i64 %storemerge, ptr %.sroa.0.0.copyload, align 8, !noalias !3268
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs0_NtNtNtCskKLDkoKarTP_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4IterhENCNCNvMNtNtNtCs7gfv9tzbXmh_6yara_x7modules3dex6parserNtB1w_3Dex16parse_dex_headers1_00ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB2O_8for_each4callNtNtCsexYYUdYSQU6_5alloc6string6StringNCINvXsk_B3T_B3R_INtNtB2S_7collect6ExtendB3R_E6extendBN_E0E0EB1C_(ptr noundef nonnull %0, ptr noundef %1, ptr noalias nofree noundef align 8 dereferenceable(24) %2) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 9 uses
  %i.b = alloca [16 x i8], align 8                ; 5 uses
  %i.c = alloca [8 x i8], align 8                 ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3282)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %1) ]
  %i.d = icmp eq ptr %0, %1
  br i1 %i.d, label %_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterhENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRhNtNtCsexYYUdYSQU6_5alloc6string6StringuNCNCNvMNtNtNtCs7gfv9tzbXmh_6yara_x7modules3dex6parserNtB2X_3Dex16parse_dex_headers1_00NCINvNvBS_8for_each4callB2d_NCINvXsk_B2f_B2d_INtNtBW_7collect6ExtendB2d_E6extendINtB1I_3MapBF_B2Q_EE0E0E0EB33_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = ptrtoint ptr %1 to i64
  %i.f = ptrtoint ptr %0 to i64
  %i.g = sub nuw i64 %i.e, %i.f
  %.sroa.42.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 8
  br label %bb.c

bb.c:                                             ; preds = %_RNCINvNtNtNtCskKLDkoKarTP_4core4iter8adapters3map8map_foldRhNtNtCsexYYUdYSQU6_5alloc6string6StringuNCNCNvMNtNtNtCs7gfv9tzbXmh_6yara_x7modules3dex6parserNtB1G_3Dex16parse_dex_headers1_00NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callBW_NCINvXsk_BY_BW_INtNtB38_7collect6ExtendBW_E6extendINtB4_3MapINtNtNtBa_5slice4iter4IterhEB1z_EE0E0E0B1M_.exit.i, %bb.b
  %.sroa.01.0.i = phi i64 [ 0, %bb.b ], [ %i.y, %_RNCINvNtNtNtCskKLDkoKarTP_4core4iter8adapters3map8map_foldRhNtNtCsexYYUdYSQU6_5alloc6string6StringuNCNCNvMNtNtNtCs7gfv9tzbXmh_6yara_x7modules3dex6parserNtB1G_3Dex16parse_dex_headers1_00NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callBW_NCINvXsk_BY_BW_INtNtB38_7collect6ExtendBW_E6extendINtB4_3MapINtNtNtBa_5slice4iter4IterhEB1z_EE0E0E0B1M_.exit.i ] ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 %.sroa.01.0.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !3283
  store ptr %i.l, ptr %i.c, align 8, !noalias !3284
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !3284
  store ptr %i.c, ptr %i.b, align 8, !noalias !3284
  store ptr @_RNvXs1o_NtCskKLDkoKarTP_4core3fmtRhNtB6_8LowerHex3fmtCs7gfv9tzbXmh_6yara_x, ptr %.sroa.42.0..sroa_idx.i.i.i, align 8, !noalias !3284
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !3285
  call void @_RNvNvNtCsexYYUdYSQU6_5alloc3fmt6format12format_inner(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, ptr noundef nonnull @237, ptr noundef nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !3284
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !3283
  call void @llvm.experimental.noalias.scope.decl(metadata !3286)
  %i.m = load ptr, ptr %i.h, align 8, !alias.scope !3286, !noalias !3285, !nonnull !6, !noundef !6
  %i.n = load i64, ptr %i.i, align 8, !alias.scope !3286, !noalias !3285, !noundef !6 ; 4 uses
  invoke void @_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE7reserveCs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %2, i64 noundef %i.n)
          to label %.noexc.i.i.i.i unwind label %bb.d, !noalias !3287

bb.d:                                             ; preds = %bb.c
  %i.o = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a) #43
          to label %common.resume.i.i.i.i unwind label %bb.i, !noalias !3288

.noexc.i.i.i.i:                                   ; preds = %bb.c
  %i.p = load i64, ptr %i.j, align 8, !alias.scope !3289, !noalias !3290, !noundef !6 ; 3 uses
  %i.q = icmp sgt i64 %i.p, -1
  call void @llvm.assume(i1 %i.q)
  %.not.i.i.i.i.i = icmp eq i64 %i.n, 0
  br i1 %.not.i.i.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %.noexc.i.i.i.i
  %i.r = load ptr, ptr %i.k, align 8, !alias.scope !3289, !noalias !3290, !nonnull !6, !noundef !6
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 %i.p
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.s, ptr nonnull readonly align 1 %i.m, i64 %i.n, i1 false), !noalias !3287
  %.pre.i.i.i.i.i = load i64, ptr %i.j, align 8, !alias.scope !3289, !noalias !3290
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %.noexc.i.i.i.i
  %i.t = phi i64 [ %.pre.i.i.i.i.i, %bb.e ], [ %i.p, %.noexc.i.i.i.i ]
  %i.u = add i64 %i.t, %i.n
  store i64 %i.u, ptr %i.j, align 8, !alias.scope !3289, !noalias !3290
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %_RNCINvNtNtNtCskKLDkoKarTP_4core4iter8adapters3map8map_foldRhNtNtCsexYYUdYSQU6_5alloc6string6StringuNCNCNvMNtNtNtCs7gfv9tzbXmh_6yara_x7modules3dex6parserNtB1G_3Dex16parse_dex_headers1_00NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callBW_NCINvXsk_BY_BW_INtNtB38_7collect6ExtendBW_E6extendINtB4_3MapINtNtNtBa_5slice4iter4IterhEB1z_EE0E0E0B1M_.exit.i unwind label %bb.g, !noalias !3288

bb.g:                                             ; preds = %bb.f
  %i.v = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %common.resume.i.i.i.i unwind label %bb.h, !noalias !3288

bb.h:                                             ; preds = %bb.g
  %i.w = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #41, !noalias !3288
  unreachable

common.resume.i.i.i.i:                            ; preds = %bb.g, %bb.d
  %common.resume.op.i.i.i.i = phi { ptr, i32 } [ %i.v, %bb.g ], [ %i.o, %bb.d ]
  resume { ptr, i32 } %common.resume.op.i.i.i.i

bb.i:                                             ; preds = %bb.d
  %i.x = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #41, !noalias !3288
  unreachable

_RNCINvNtNtNtCskKLDkoKarTP_4core4iter8adapters3map8map_foldRhNtNtCsexYYUdYSQU6_5alloc6string6StringuNCNCNvMNtNtNtCs7gfv9tzbXmh_6yara_x7modules3dex6parserNtB1G_3Dex16parse_dex_headers1_00NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callBW_NCINvXsk_BY_BW_INtNtB38_7collect6ExtendBW_E6extendINtB4_3MapINtNtNtBa_5slice4iter4IterhEB1z_EE0E0E0B1M_.exit.i: ; preds = %bb.f
  call void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a), !noalias !3288
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !3285
  %i.y = add nuw i64 %.sroa.01.0.i, 1             ; 2 uses
  %i.z = icmp eq i64 %i.y, %i.g
  br i1 %i.z, label %_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterhENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRhNtNtCsexYYUdYSQU6_5alloc6string6StringuNCNCNvMNtNtNtCs7gfv9tzbXmh_6yara_x7modules3dex6parserNtB2X_3Dex16parse_dex_headers1_00NCINvNvBS_8for_each4callB2d_NCINvXsk_B2f_B2d_INtNtBW_7collect6ExtendB2d_E6extendINtB1I_3MapBF_B2Q_EE0E0E0EB33_.exit, label %bb.c

_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterhENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRhNtNtCsexYYUdYSQU6_5alloc6string6StringuNCNCNvMNtNtNtCs7gfv9tzbXmh_6yara_x7modules3dex6parserNtB2X_3Dex16parse_dex_headers1_00NCINvNvBS_8for_each4callB2d_NCINvXsk_B2f_B2d_INtNtBW_7collect6ExtendB2d_E6extendINtB1I_3MapBF_B2Q_EE0E0E0EB33_.exit: ; preds = %_RNCINvNtNtNtCskKLDkoKarTP_4core4iter8adapters3map8map_foldRhNtNtCsexYYUdYSQU6_5alloc6string6StringuNCNCNvMNtNtNtCs7gfv9tzbXmh_6yara_x7modules3dex6parserNtB1G_3Dex16parse_dex_headers1_00NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callBW_NCINvXsk_BY_BW_INtNtB38_7collect6ExtendBW_E6extendINtB4_3MapINtNtNtBa_5slice4iter4IterhEB1z_EE0E0E0B1M_.exit.i, %bb.a
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(write, argmem: readwrite, target_mem: none) uwtable
define hidden void @_RINvXs0_NtNtNtCskKLDkoKarTP_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4IterhENCNvMs_NtCsexYYUdYSQU6_5alloc5sliceSh18to_ascii_lowercase0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB2m_8for_each4callhNCINvMsk_NtB1y_3vecINtB3z_3VechE14extend_trustedBN_E0E0ECs7gfv9tzbXmh_6yara_x(ptr noundef nonnull %0, ptr noundef %1, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %2) unnamed_addr #12 personality ptr @rust_eh_personality {
bb.a:
  %.sroa.0.0.copyload = load ptr, ptr %2, align 8 ; 2 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.sroa.5.0.copyload = load i64, ptr %.sroa.5.0..sroa_idx, align 8 ; 8 uses
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 16
  %.sroa.7.0.copyload = load ptr, ptr %.sroa.7.0..sroa_idx, align 8 ; 6 uses
  %.sroa.7.0.copyload2 = ptrtoaddr ptr %.sroa.7.0.copyload to i64
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %1) ]
  %i.a = icmp eq ptr %0, %1
  br i1 %i.a, label %_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterhENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRhhuNCNvMs_NtCsexYYUdYSQU6_5alloc5sliceSh18to_ascii_lowercase0NCINvNvBS_8for_each4callhNCINvMsk_NtB2o_3vecINtB3J_3VechE14extend_trustedINtB1I_3MapBF_B2f_EE0E0E0ECs7gfv9tzbXmh_6yara_x.exit, label %iter.check

iter.check:                                       ; preds = %bb.a
  %i.b = ptrtoint ptr %1 to i64                   ; 2 uses
  %i.c = ptrtoint ptr %0 to i64                   ; 3 uses
  %i.d = sub nuw i64 %i.b, %i.c                   ; 9 uses
  %min.iters.check = icmp ult i64 %i.d, 8
  br i1 %min.iters.check, label %vec.epilog.scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %i.e = add i64 %.sroa.5.0.copyload, %.sroa.7.0.copyload2
  %i.f = sub i64 %i.c, %i.e
  %diff.check = icmp ugt i64 %i.f, -32
  br i1 %diff.check, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check3 = icmp ult i64 %i.d, 32
  br i1 %min.iters.check3, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.g = and i64 %i.d, 24
  %n.vec = and i64 %i.d, -32                      ; 5 uses
  %i.h = add i64 %.sroa.5.0.copyload, %n.vec      ; 2 uses
  %i.i = getelementptr i8, ptr %.sroa.7.0.copyload, i64 %.sroa.5.0.copyload
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 %index ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %wide.load = load <16 x i8>, ptr %i.j, align 1, !noalias !3302 ; 2 uses
  %wide.load4 = load <16 x i8>, ptr %i.k, align 1, !noalias !3302 ; 2 uses
  %i.l = add <16 x i8> %wide.load, splat (i8 -65)
  %i.m = add <16 x i8> %wide.load4, splat (i8 -65)
  %i.n = icmp ult <16 x i8> %i.l, splat (i8 26)
  %i.o = icmp ult <16 x i8> %i.m, splat (i8 26)
  %i.p = select <16 x i1> %i.n, <16 x i8> splat (i8 32), <16 x i8> zeroinitializer
  %i.q = select <16 x i1> %i.o, <16 x i8> splat (i8 32), <16 x i8> zeroinitializer
  %i.r = or <16 x i8> %i.p, %wide.load
  %i.s = or <16 x i8> %i.q, %wide.load4
  %i.t = getelementptr i8, ptr %i.i, i64 %index   ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  store <16 x i8> %i.r, ptr %i.t, align 1, !noalias !3303
  store <16 x i8> %i.s, ptr %i.u, align 1, !noalias !3303
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.v = icmp eq i64 %index.next, %n.vec
  br i1 %i.v, label %middle.block, label %vector.body, !llvm.loop !3299

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.d, %n.vec
  br i1 %cmp.n, label %_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterhENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRhhuNCNvMs_NtCsexYYUdYSQU6_5alloc5sliceSh18to_ascii_lowercase0NCINvNvBS_8for_each4callhNCINvMsk_NtB2o_3vecINtB3J_3VechE14extend_trustedINtB1I_3MapBF_B2f_EE0E0E0ECs7gfv9tzbXmh_6yara_x.exit, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.g, 0
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !3304

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec5 = and i64 %i.d, -8                      ; 4 uses
  %i.w = add i64 %.sroa.5.0.copyload, %n.vec5     ; 2 uses
  %i.x = getelementptr i8, ptr %.sroa.7.0.copyload, i64 %.sroa.5.0.copyload
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index6 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next8, %vec.epilog.vector.body ] ; 3 uses
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 %index6
  %wide.load7 = load <8 x i8>, ptr %i.y, align 1, !noalias !3302 ; 2 uses
  %i.z = add <8 x i8> %wide.load7, splat (i8 -65)
  %i.aa = icmp ult <8 x i8> %i.z, splat (i8 26)
  %i.ab = select <8 x i1> %i.aa, <8 x i8> splat (i8 32), <8 x i8> zeroinitializer
  %i.ac = or <8 x i8> %i.ab, %wide.load7
  %i.ad = getelementptr i8, ptr %i.x, i64 %index6
  store <8 x i8> %i.ac, ptr %i.ad, align 1, !noalias !3303
  %index.next8 = add nuw i64 %index6, 8           ; 2 uses
  %i.ae = icmp eq i64 %index.next8, %n.vec5
  br i1 %i.ae, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !3300

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n9 = icmp eq i64 %i.d, %n.vec5
  br i1 %cmp.n9, label %_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterhENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRhhuNCNvMs_NtCsexYYUdYSQU6_5alloc5sliceSh18to_ascii_lowercase0NCINvNvBS_8for_each4callhNCINvMsk_NtB2o_3vecINtB3J_3VechE14extend_trustedINtB1I_3MapBF_B2f_EE0E0E0ECs7gfv9tzbXmh_6yara_x.exit, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vector.memcheck, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.ph = phi i64 [ %.sroa.5.0.copyload, %iter.check ], [ %.sroa.5.0.copyload, %vector.memcheck ], [ %i.h, %vec.epilog.iter.check ], [ %i.w, %vec.epilog.middle.block ] ; 3 uses
  %.sroa.01.0.i.ph = phi i64 [ 0, %iter.check ], [ 0, %vector.memcheck ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec5, %vec.epilog.middle.block ] ; 4 uses
  %i.af = xor i64 %.sroa.01.0.i.ph, -1
  %i.ag = add i64 %i.af, %i.b
  %xtraiter = and i64 %i.d, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol

vec.epilog.scalar.ph.prol:                        ; preds = %vec.epilog.scalar.ph.preheader
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 %.sroa.01.0.i.ph
  %.val15.i.prol = load i8, ptr %i.ah, align 1, !noalias !3302, !noundef !6 ; 2 uses
  %i.ai = add i8 %.val15.i.prol, -65
  %i.aj = icmp ult i8 %i.ai, 26
  %i.ak = select i1 %i.aj, i8 32, i8 0
  %.sroa.0.0.i.i.i.prol = or i8 %i.ak, %.val15.i.prol
  %i.al = getelementptr inbounds nuw i8, ptr %.sroa.7.0.copyload, i64 %.ph
  store i8 %.sroa.0.0.i.i.i.prol, ptr %i.al, align 1, !noalias !3303
  %i.am = add i64 %.ph, 1                         ; 2 uses
  %i.an = or disjoint i64 %.sroa.01.0.i.ph, 1
  br label %vec.epilog.scalar.ph.prol.loopexit

vec.epilog.scalar.ph.prol.loopexit:               ; preds = %vec.epilog.scalar.ph.prol, %vec.epilog.scalar.ph.preheader
  %.lcssa.unr = phi i64 [ poison, %vec.epilog.scalar.ph.preheader ], [ %i.am, %vec.epilog.scalar.ph.prol ]
  %.unr = phi i64 [ %.ph, %vec.epilog.scalar.ph.preheader ], [ %i.am, %vec.epilog.scalar.ph.prol ]
  %.sroa.01.0.i.unr = phi i64 [ %.sroa.01.0.i.ph, %vec.epilog.scalar.ph.preheader ], [ %i.an, %vec.epilog.scalar.ph.prol ]
  %i.ao = icmp eq i64 %i.ag, %i.c
  br i1 %i.ao, label %_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterhENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRhhuNCNvMs_NtCsexYYUdYSQU6_5alloc5sliceSh18to_ascii_lowercase0NCINvNvBS_8for_each4callhNCINvMsk_NtB2o_3vecINtB3J_3VechE14extend_trustedINtB1I_3MapBF_B2f_EE0E0E0ECs7gfv9tzbXmh_6yara_x.exit, label %vec.epilog.scalar.ph

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph
  %i.ap = phi i64 [ %i.bc, %vec.epilog.scalar.ph ], [ %.unr, %vec.epilog.scalar.ph.prol.loopexit ] ; 3 uses
  %.sroa.01.0.i = phi i64 [ %i.bd, %vec.epilog.scalar.ph ], [ %.sroa.01.0.i.unr, %vec.epilog.scalar.ph.prol.loopexit ] ; 3 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 %.sroa.01.0.i
  %.val15.i = load i8, ptr %i.aq, align 1, !noalias !3302, !noundef !6 ; 2 uses
  %i.ar = add i8 %.val15.i, -65
  %i.as = icmp ult i8 %i.ar, 26
  %i.at = select i1 %i.as, i8 32, i8 0
  %.sroa.0.0.i.i.i = or i8 %i.at, %.val15.i
  %i.au = getelementptr inbounds nuw i8, ptr %.sroa.7.0.copyload, i64 %i.ap
  store i8 %.sroa.0.0.i.i.i, ptr %i.au, align 1, !noalias !3303
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 %.sroa.01.0.i
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 1
  %.val15.i.1 = load i8, ptr %i.aw, align 1, !noalias !3302, !noundef !6 ; 2 uses
  %i.ax = add i8 %.val15.i.1, -65
  %i.ay = icmp ult i8 %i.ax, 26
  %i.az = select i1 %i.ay, i8 32, i8 0
  %.sroa.0.0.i.i.i.1 = or i8 %i.az, %.val15.i.1
  %i.ba = getelementptr i8, ptr %.sroa.7.0.copyload, i64 %i.ap
  %i.bb = getelementptr i8, ptr %i.ba, i64 1
  store i8 %.sroa.0.0.i.i.i.1, ptr %i.bb, align 1, !noalias !3303
  %i.bc = add i64 %i.ap, 2                        ; 2 uses
  %i.bd = add nuw i64 %.sroa.01.0.i, 2            ; 2 uses
  %i.be = icmp eq i64 %i.bd, %i.d
  br i1 %i.be, label %_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterhENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRhhuNCNvMs_NtCsexYYUdYSQU6_5alloc5sliceSh18to_ascii_lowercase0NCINvNvBS_8for_each4callhNCINvMsk_NtB2o_3vecINtB3J_3VechE14extend_trustedINtB1I_3MapBF_B2f_EE0E0E0ECs7gfv9tzbXmh_6yara_x.exit, label %vec.epilog.scalar.ph, !llvm.loop !3301

_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterhENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRhhuNCNvMs_NtCsexYYUdYSQU6_5alloc5sliceSh18to_ascii_lowercase0NCINvNvBS_8for_each4callhNCINvMsk_NtB2o_3vecINtB3J_3VechE14extend_trustedINtB1I_3MapBF_B2f_EE0E0E0ECs7gfv9tzbXmh_6yara_x.exit: ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph, %middle.block, %vec.epilog.middle.block, %bb.a
  %storemerge = phi i64 [ %.sroa.5.0.copyload, %bb.a ], [ %i.w, %vec.epilog.middle.block ], [ %i.h, %middle.block ], [ %.lcssa.unr, %vec.epilog.scalar.ph.prol.loopexit ], [ %i.bc, %vec.epilog.scalar.ph ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload) ]
  store i64 %storemerge, ptr %.sroa.0.0.copyload, align 8, !noalias !3302
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(readwrite, inaccessiblemem: write, target_mem: none) uwtable
define hidden void @_RINvXs0_NtNtNtCskKLDkoKarTP_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4IterhENCNvNtCsexYYUdYSQU6_5alloc3str13replace_ascii0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB2a_8for_each4callhNCINvMsk_NtB1v_3vecINtB3n_3VechE14extend_trustedBN_E0E0ECs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(32) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %1) unnamed_addr #10 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !6, !noundef !6 ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !nonnull !6, !noundef !6 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.e = load ptr, ptr %i.d, align 8, !nonnull !6, !noundef !6 ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.g = load ptr, ptr %i.f, align 8, !nonnull !6, !noundef !6 ; 3 uses
  %.sroa.0.0.copyload = load ptr, ptr %1, align 8 ; 2 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.5.0.copyload = load i64, ptr %.sroa.5.0..sroa_idx, align 8 ; 3 uses
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.7.0.copyload = load ptr, ptr %.sroa.7.0..sroa_idx, align 8 ; 3 uses
  %i.h = icmp eq ptr %i.a, %i.c
  br i1 %i.h, label %_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterhENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRhhuNCNvNtCsexYYUdYSQU6_5alloc3str13replace_ascii0NCINvNvBS_8for_each4callhNCINvMsk_NtB2l_3vecINtB3x_3VechE14extend_trustedINtB1I_3MapBF_B2f_EE0E0E0ECs7gfv9tzbXmh_6yara_x.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = ptrtoint ptr %i.c to i64                 ; 2 uses
  %i.j = ptrtoint ptr %i.a to i64                 ; 2 uses
  %i.k = sub i64 %i.i, %i.j                       ; 3 uses
  %xtraiter = and i64 %i.k, 1
  %i.l = add i64 %i.i, -1
  %i.m = icmp eq i64 %i.l, %i.j
  br i1 %i.m, label %.epil.preheader, label %.new

.new:                                             ; preds = %bb.b
  %unroll_iter = and i64 %i.k, -2
  br label %bb.c

bb.c:                                             ; preds = %bb.g, %.new
  %i.n = phi i64 [ %.sroa.5.0.copyload, %.new ], [ %i.aa, %bb.g ] ; 3 uses
  %.sroa.01.0.i = phi i64 [ 0, %.new ], [ %i.ab, %bb.g ] ; 3 uses
  %niter = phi i64 [ 0, %.new ], [ %niter.next.1, %bb.g ]
  %i.o = getelementptr inbounds nuw i8, ptr %i.a, i64 %.sroa.01.0.i
  %.val15.i = load i8, ptr %i.o, align 1, !noalias !3313, !noundef !6 ; 2 uses
  %i.p = load i8, ptr %i.e, align 1, !noalias !3314, !noundef !6
  %i.q = icmp eq i8 %.val15.i, %i.p
  br i1 %i.q, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.r = load i8, ptr %i.g, align 1, !noalias !3314, !noundef !6
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.sroa.0.0.i.i.i = phi i8 [ %i.r, %bb.d ], [ %.val15.i, %bb.c ]
  %i.s = getelementptr inbounds nuw i8, ptr %.sroa.7.0.copyload, i64 %i.n
  store i8 %.sroa.0.0.i.i.i, ptr %i.s, align 1, !noalias !3315
  %i.t = getelementptr inbounds nuw i8, ptr %i.a, i64 %.sroa.01.0.i
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 1
  %.val15.i.1 = load i8, ptr %i.u, align 1, !noalias !3313, !noundef !6 ; 2 uses
  %i.v = load i8, ptr %i.e, align 1, !noalias !3314, !noundef !6
  %i.w = icmp eq i8 %.val15.i.1, %i.v
  br i1 %i.w, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.x = load i8, ptr %i.g, align 1, !noalias !3314, !noundef !6
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.sroa.0.0.i.i.i.1 = phi i8 [ %i.x, %bb.f ], [ %.val15.i.1, %bb.e ]
  %i.y = getelementptr i8, ptr %.sroa.7.0.copyload, i64 %i.n
  %i.z = getelementptr i8, ptr %i.y, i64 1
  store i8 %.sroa.0.0.i.i.i.1, ptr %i.z, align 1, !noalias !3315
  %i.aa = add i64 %i.n, 2                         ; 3 uses
  %i.ab = add nuw i64 %.sroa.01.0.i, 2            ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterhENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRhhuNCNvNtCsexYYUdYSQU6_5alloc3str13replace_ascii0NCINvNvBS_8for_each4callhNCINvMsk_NtB2l_3vecINtB3x_3VechE14extend_trustedINtB1I_3MapBF_B2f_EE0E0E0ECs7gfv9tzbXmh_6yara_x.exit.loopexit.unr-lcssa, label %bb.c

_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterhENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRhhuNCNvNtCsexYYUdYSQU6_5alloc3str13replace_ascii0NCINvNvBS_8for_each4callhNCINvMsk_NtB2l_3vecINtB3x_3VechE14extend_trustedINtB1I_3MapBF_B2f_EE0E0E0ECs7gfv9tzbXmh_6yara_x.exit.loopexit.unr-lcssa: ; preds = %bb.g
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterhENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRhhuNCNvNtCsexYYUdYSQU6_5alloc3str13replace_ascii0NCINvNvBS_8for_each4callhNCINvMsk_NtB2l_3vecINtB3x_3VechE14extend_trustedINtB1I_3MapBF_B2f_EE0E0E0ECs7gfv9tzbXmh_6yara_x.exit, label %.epil.preheader

.epil.preheader:                                  ; preds = %_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterhENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRhhuNCNvNtCsexYYUdYSQU6_5alloc3str13replace_ascii0NCINvNvBS_8for_each4callhNCINvMsk_NtB2l_3vecINtB3x_3VechE14extend_trustedINtB1I_3MapBF_B2f_EE0E0E0ECs7gfv9tzbXmh_6yara_x.exit.loopexit.unr-lcssa, %bb.b
  %.epil.init = phi i64 [ %.sroa.5.0.copyload, %bb.b ], [ %i.aa, %_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterhENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRhhuNCNvNtCsexYYUdYSQU6_5alloc3str13replace_ascii0NCINvNvBS_8for_each4callhNCINvMsk_NtB2l_3vecINtB3x_3VechE14extend_trustedINtB1I_3MapBF_B2f_EE0E0E0ECs7gfv9tzbXmh_6yara_x.exit.loopexit.unr-lcssa ] ; 2 uses
  %.sroa.01.0.i.epil.init = phi i64 [ 0, %bb.b ], [ %i.ab, %_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterhENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRhhuNCNvNtCsexYYUdYSQU6_5alloc3str13replace_ascii0NCINvNvBS_8for_each4callhNCINvMsk_NtB2l_3vecINtB3x_3VechE14extend_trustedINtB1I_3MapBF_B2f_EE0E0E0ECs7gfv9tzbXmh_6yara_x.exit.loopexit.unr-lcssa ]
  %lcmp.mod4 = trunc i64 %i.k to i1
  tail call void @llvm.assume(i1 %lcmp.mod4)
  %i.ac = getelementptr inbounds nuw i8, ptr %i.a, i64 %.sroa.01.0.i.epil.init
  %.val15.i.epil = load i8, ptr %i.ac, align 1, !noalias !3313, !noundef !6 ; 2 uses
  %i.ad = load i8, ptr %i.e, align 1, !noalias !3314, !noundef !6
  %i.ae = icmp eq i8 %.val15.i.epil, %i.ad
  br i1 %i.ae, label %bb.h, label %_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterhENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRhhuNCNvNtCsexYYUdYSQU6_5alloc3str13replace_ascii0NCINvNvBS_8for_each4callhNCINvMsk_NtB2l_3vecINtB3x_3VechE14extend_trustedINtB1I_3MapBF_B2f_EE0E0E0ECs7gfv9tzbXmh_6yara_x.exit.loopexit.epilog-lcssa

bb.h:                                             ; preds = %.epil.preheader
  %i.af = load i8, ptr %i.g, align 1, !noalias !3314, !noundef !6
  br label %_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterhENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRhhuNCNvNtCsexYYUdYSQU6_5alloc3str13replace_ascii0NCINvNvBS_8for_each4callhNCINvMsk_NtB2l_3vecINtB3x_3VechE14extend_trustedINtB1I_3MapBF_B2f_EE0E0E0ECs7gfv9tzbXmh_6yara_x.exit.loopexit.epilog-lcssa

_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterhENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRhhuNCNvNtCsexYYUdYSQU6_5alloc3str13replace_ascii0NCINvNvBS_8for_each4callhNCINvMsk_NtB2l_3vecINtB3x_3VechE14extend_trustedINtB1I_3MapBF_B2f_EE0E0E0ECs7gfv9tzbXmh_6yara_x.exit.loopexit.epilog-lcssa: ; preds = %bb.h, %.epil.preheader
  %.sroa.0.0.i.i.i.epil = phi i8 [ %i.af, %bb.h ], [ %.val15.i.epil, %.epil.preheader ]
  %i.ag = getelementptr inbounds nuw i8, ptr %.sroa.7.0.copyload, i64 %.epil.init
  store i8 %.sroa.0.0.i.i.i.epil, ptr %i.ag, align 1, !noalias !3315
  %i.ah = add i64 %.epil.init, 1
  br label %_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterhENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRhhuNCNvNtCsexYYUdYSQU6_5alloc3str13replace_ascii0NCINvNvBS_8for_each4callhNCINvMsk_NtB2l_3vecINtB3x_3VechE14extend_trustedINtB1I_3MapBF_B2f_EE0E0E0ECs7gfv9tzbXmh_6yara_x.exit

_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterhENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRhhuNCNvNtCsexYYUdYSQU6_5alloc3str13replace_ascii0NCINvNvBS_8for_each4callhNCINvMsk_NtB2l_3vecINtB3x_3VechE14extend_trustedINtB1I_3MapBF_B2f_EE0E0E0ECs7gfv9tzbXmh_6yara_x.exit: ; preds = %_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterhENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRhhuNCNvNtCsexYYUdYSQU6_5alloc3str13replace_ascii0NCINvNvBS_8for_each4callhNCINvMsk_NtB2l_3vecINtB3x_3VechE14extend_trustedINtB1I_3MapBF_B2f_EE0E0E0ECs7gfv9tzbXmh_6yara_x.exit.loopexit.epilog-lcssa, %_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterhENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRhhuNCNvNtCsexYYUdYSQU6_5alloc3str13replace_ascii0NCINvNvBS_8for_each4callhNCINvMsk_NtB2l_3vecINtB3x_3VechE14extend_trustedINtB1I_3MapBF_B2f_EE0E0E0ECs7gfv9tzbXmh_6yara_x.exit.loopexit.unr-lcssa, %bb.a
  %storemerge = phi i64 [ %.sroa.5.0.copyload, %bb.a ], [ %i.aa, %_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterhENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRhhuNCNvNtCsexYYUdYSQU6_5alloc3str13replace_ascii0NCINvNvBS_8for_each4callhNCINvMsk_NtB2l_3vecINtB3x_3VechE14extend_trustedINtB1I_3MapBF_B2f_EE0E0E0ECs7gfv9tzbXmh_6yara_x.exit.loopexit.unr-lcssa ], [ %i.ah, %_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterhENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRhhuNCNvNtCsexYYUdYSQU6_5alloc3str13replace_ascii0NCINvNvBS_8for_each4callhNCINvMsk_NtB2l_3vecINtB3x_3VechE14extend_trustedINtB1I_3MapBF_B2f_EE0E0E0ECs7gfv9tzbXmh_6yara_x.exit.loopexit.epilog-lcssa ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload) ]
  store i64 %storemerge, ptr %.sroa.0.0.copyload, align 8, !noalias !3313
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(readwrite, inaccessiblemem: write, target_mem: none) uwtable
define hidden void @_RINvXs0_NtNtNtCskKLDkoKarTP_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4IterhENCNvXsb_NtNtCs7gfv9tzbXmh_6yara_x8compiler5atomsNtB1x_15XorCombinationsNtNtNtBa_6traits8iterator8Iterator4next0EB2y_4folduNCINvNvB2y_8for_each4callhNCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB3W_3VechE14extend_trustedBN_E0E0EB1B_(ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %1) unnamed_addr #10 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !6, !noundef !6 ; 8 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !nonnull !6, !noundef !6 ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.e = load ptr, ptr %i.d, align 8, !nonnull !6, !noundef !6 ; 7 uses
  %.sroa.0.0.copyload = load ptr, ptr %1, align 8 ; 2 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.5.0.copyload = load i64, ptr %.sroa.5.0..sroa_idx, align 8 ; 9 uses
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.7.0.copyload = load ptr, ptr %.sroa.7.0..sroa_idx, align 8 ; 7 uses
  %i.f = icmp eq ptr %i.a, %i.c
  br i1 %i.f, label %_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterhENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRhhuNCNvXsb_NtNtCs7gfv9tzbXmh_6yara_x8compiler5atomsNtB2n_15XorCombinationsBS_4next0NCINvNvBS_8for_each4callhNCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB45_3VechE14extend_trustedINtB1I_3MapBF_B2f_EE0E0E0EB2r_.exit, label %iter.check

iter.check:                                       ; preds = %bb.a
  %i.g = ptrtoint ptr %i.c to i64                 ; 3 uses
  %i.h = ptrtoint ptr %i.a to i64                 ; 3 uses
  %i.i = sub nuw i64 %i.g, %i.h                   ; 9 uses
  %min.iters.check = icmp ult i64 %i.i, 4
  br i1 %min.iters.check, label %vec.epilog.scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %i.j = getelementptr i8, ptr %.sroa.7.0.copyload, i64 %.sroa.5.0.copyload ; 2 uses
  %i.k = add i64 %.sroa.5.0.copyload, %i.g
  %i.l = sub i64 %i.k, %i.h
  %i.m = getelementptr i8, ptr %.sroa.7.0.copyload, i64 %i.l ; 2 uses
  %i.n = getelementptr i8, ptr %i.e, i64 1
  %bound0 = icmp ult ptr %i.j, %i.c
  %bound1 = icmp ult ptr %i.a, %i.m
  %found.conflict = and i1 %bound0, %bound1
  %bound08 = icmp ult ptr %i.j, %i.n
  %bound19 = icmp ult ptr %i.e, %i.m
  %found.conflict10 = and i1 %bound08, %bound19
  %conflict.rdx = or i1 %found.conflict, %found.conflict10
  br i1 %conflict.rdx, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check11 = icmp ult i64 %i.i, 32
  br i1 %min.iters.check11, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.o = and i64 %i.i, 28
  %n.vec = and i64 %i.i, -32                      ; 5 uses
  %i.p = add i64 %.sroa.5.0.copyload, %n.vec      ; 2 uses
  %i.q = load i8, ptr %i.e, align 1, !alias.scope !3331, !noalias !3332, !noundef !6
  %broadcast.splatinsert = insertelement <16 x i8> poison, i8 %i.q, i64 0
  %broadcast.splat = shufflevector <16 x i8> %broadcast.splatinsert, <16 x i8> poison, <16 x i32> zeroinitializer ; 2 uses
  %i.r = getelementptr i8, ptr %.sroa.7.0.copyload, i64 %.sroa.5.0.copyload
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.a, i64 %index ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  %wide.load = load <16 x i8>, ptr %i.s, align 1, !alias.scope !3333, !noalias !3334
  %wide.load12 = load <16 x i8>, ptr %i.t, align 1, !alias.scope !3333, !noalias !3334
  %i.u = xor <16 x i8> %broadcast.splat, %wide.load
  %i.v = xor <16 x i8> %broadcast.splat, %wide.load12
  %i.w = getelementptr i8, ptr %i.r, i64 %index   ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 16
  store <16 x i8> %i.u, ptr %i.w, align 1, !alias.scope !3335, !noalias !3336
  store <16 x i8> %i.v, ptr %i.x, align 1, !alias.scope !3335, !noalias !3336
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.y = icmp eq i64 %index.next, %n.vec
  br i1 %i.y, label %middle.block, label %vector.body, !llvm.loop !3328

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.i, %n.vec
  br i1 %cmp.n, label %_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterhENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRhhuNCNvXsb_NtNtCs7gfv9tzbXmh_6yara_x8compiler5atomsNtB2n_15XorCombinationsBS_4next0NCINvNvBS_8for_each4callhNCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB45_3VechE14extend_trustedINtB1I_3MapBF_B2f_EE0E0E0EB2r_.exit, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.o, 0
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !3337

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec13 = and i64 %i.i, -4                     ; 4 uses
  %i.z = add i64 %.sroa.5.0.copyload, %n.vec13    ; 2 uses
  %i.aa = load i8, ptr %i.e, align 1, !alias.scope !3331, !noalias !3332, !noundef !6
  %broadcast.splatinsert16 = insertelement <4 x i8> poison, i8 %i.aa, i64 0
  %broadcast.splat17 = shufflevector <4 x i8> %broadcast.splatinsert16, <4 x i8> poison, <4 x i32> zeroinitializer
  %i.ab = getelementptr i8, ptr %.sroa.7.0.copyload, i64 %.sroa.5.0.copyload
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index14 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next18, %vec.epilog.vector.body ] ; 3 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.a, i64 %index14
  %wide.load15 = load <4 x i8>, ptr %i.ac, align 1, !alias.scope !3333, !noalias !3334
  %i.ad = xor <4 x i8> %broadcast.splat17, %wide.load15
  %i.ae = getelementptr i8, ptr %i.ab, i64 %index14
  store <4 x i8> %i.ad, ptr %i.ae, align 1, !alias.scope !3335, !noalias !3336
  %index.next18 = add nuw i64 %index14, 4         ; 2 uses
  %i.af = icmp eq i64 %index.next18, %n.vec13
  br i1 %i.af, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !3329

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n19 = icmp eq i64 %i.i, %n.vec13
  br i1 %cmp.n19, label %_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterhENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRhhuNCNvXsb_NtNtCs7gfv9tzbXmh_6yara_x8compiler5atomsNtB2n_15XorCombinationsBS_4next0NCINvNvBS_8for_each4callhNCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB45_3VechE14extend_trustedINtB1I_3MapBF_B2f_EE0E0E0EB2r_.exit, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vector.memcheck, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.ph = phi i64 [ %.sroa.5.0.copyload, %iter.check ], [ %.sroa.5.0.copyload, %vector.memcheck ], [ %i.p, %vec.epilog.iter.check ], [ %i.z, %vec.epilog.middle.block ] ; 3 uses
  %.sroa.01.0.i.ph = phi i64 [ 0, %iter.check ], [ 0, %vector.memcheck ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec13, %vec.epilog.middle.block ] ; 4 uses
  %i.ag = xor i64 %.sroa.01.0.i.ph, -1
  %i.ah = add i64 %i.ag, %i.g
  %xtraiter = and i64 %i.i, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol

vec.epilog.scalar.ph.prol:                        ; preds = %vec.epilog.scalar.ph.preheader
  %i.ai = getelementptr inbounds nuw i8, ptr %i.a, i64 %.sroa.01.0.i.ph
  %.val15.i.prol = load i8, ptr %i.ai, align 1, !noalias !3334, !noundef !6
  %i.aj = load i8, ptr %i.e, align 1, !noalias !3332, !noundef !6
  %i.ak = xor i8 %i.aj, %.val15.i.prol
  %i.al = getelementptr inbounds nuw i8, ptr %.sroa.7.0.copyload, i64 %.ph
  store i8 %i.ak, ptr %i.al, align 1, !noalias !3338
  %i.am = add i64 %.ph, 1                         ; 2 uses
  %i.an = or disjoint i64 %.sroa.01.0.i.ph, 1
  br label %vec.epilog.scalar.ph.prol.loopexit

vec.epilog.scalar.ph.prol.loopexit:               ; preds = %vec.epilog.scalar.ph.prol, %vec.epilog.scalar.ph.preheader
  %.lcssa.unr = phi i64 [ poison, %vec.epilog.scalar.ph.preheader ], [ %i.am, %vec.epilog.scalar.ph.prol ]
  %.unr = phi i64 [ %.ph, %vec.epilog.scalar.ph.preheader ], [ %i.am, %vec.epilog.scalar.ph.prol ]
  %.sroa.01.0.i.unr = phi i64 [ %.sroa.01.0.i.ph, %vec.epilog.scalar.ph.preheader ], [ %i.an, %vec.epilog.scalar.ph.prol ]
  %i.ao = icmp eq i64 %i.ah, %i.h
  br i1 %i.ao, label %_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterhENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRhhuNCNvXsb_NtNtCs7gfv9tzbXmh_6yara_x8compiler5atomsNtB2n_15XorCombinationsBS_4next0NCINvNvBS_8for_each4callhNCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB45_3VechE14extend_trustedINtB1I_3MapBF_B2f_EE0E0E0EB2r_.exit, label %vec.epilog.scalar.ph

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph
  %i.ap = phi i64 [ %i.ba, %vec.epilog.scalar.ph ], [ %.unr, %vec.epilog.scalar.ph.prol.loopexit ] ; 3 uses
  %.sroa.01.0.i = phi i64 [ %i.bb, %vec.epilog.scalar.ph ], [ %.sroa.01.0.i.unr, %vec.epilog.scalar.ph.prol.loopexit ] ; 3 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.a, i64 %.sroa.01.0.i
  %.val15.i = load i8, ptr %i.aq, align 1, !noalias !3334, !noundef !6
  %i.ar = load i8, ptr %i.e, align 1, !noalias !3332, !noundef !6
  %i.as = xor i8 %i.ar, %.val15.i
  %i.at = getelementptr inbounds nuw i8, ptr %.sroa.7.0.copyload, i64 %i.ap
  store i8 %i.as, ptr %i.at, align 1, !noalias !3338
  %i.au = getelementptr inbounds nuw i8, ptr %i.a, i64 %.sroa.01.0.i
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 1
  %.val15.i.1 = load i8, ptr %i.av, align 1, !noalias !3334, !noundef !6
  %i.aw = load i8, ptr %i.e, align 1, !noalias !3332, !noundef !6
  %i.ax = xor i8 %i.aw, %.val15.i.1
  %i.ay = getelementptr i8, ptr %.sroa.7.0.copyload, i64 %i.ap
  %i.az = getelementptr i8, ptr %i.ay, i64 1
  store i8 %i.ax, ptr %i.az, align 1, !noalias !3338
  %i.ba = add i64 %i.ap, 2                        ; 2 uses
  %i.bb = add nuw i64 %.sroa.01.0.i, 2            ; 2 uses
  %i.bc = icmp eq i64 %i.bb, %i.i
  br i1 %i.bc, label %_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterhENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRhhuNCNvXsb_NtNtCs7gfv9tzbXmh_6yara_x8compiler5atomsNtB2n_15XorCombinationsBS_4next0NCINvNvBS_8for_each4callhNCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB45_3VechE14extend_trustedINtB1I_3MapBF_B2f_EE0E0E0EB2r_.exit, label %vec.epilog.scalar.ph, !llvm.loop !3330

_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterhENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRhhuNCNvXsb_NtNtCs7gfv9tzbXmh_6yara_x8compiler5atomsNtB2n_15XorCombinationsBS_4next0NCINvNvBS_8for_each4callhNCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB45_3VechE14extend_trustedINtB1I_3MapBF_B2f_EE0E0E0EB2r_.exit: ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph, %middle.block, %vec.epilog.middle.block, %bb.a
  %storemerge = phi i64 [ %.sroa.5.0.copyload, %bb.a ], [ %i.z, %vec.epilog.middle.block ], [ %i.p, %middle.block ], [ %.lcssa.unr, %vec.epilog.scalar.ph.prol.loopexit ], [ %i.ba, %vec.epilog.scalar.ph ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload) ]
  store i64 %storemerge, ptr %.sroa.0.0.copyload, align 8, !noalias !3334
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(argmem: read, inaccessiblemem: write) uwtable
define hidden noundef i64 @_RINvXs0_NtNtNtCskKLDkoKarTP_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4IterhENvYhNtNtCscjxkGEBy879_6bitvec5store8BitStore10load_valueENtNtNtBa_6traits8iterator8Iterator4foldjNCINvB6_8map_foldhjjNCNvMs2_NtB1x_5sliceINtB3q_8BitSlicehE10count_oness_0NCINvXsK_NtB2o_5accumjNtB4i_3Sum3sumIBO_BN_B3i_EE0E0ECs7gfv9tzbXmh_6yara_x(ptr noundef nonnull %0, ptr noundef %1, i64 noundef %2) unnamed_addr #13 personality ptr @rust_eh_personality {
bb.a:
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %1) ]
  %i.a = icmp eq ptr %0, %1
  br i1 %i.a, label %_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterhENtNtNtNtBb_4iter6traits8iterator8Iterator4foldjNCINvNtNtBY_8adapters3map8map_foldRhhjNvYhNtNtCscjxkGEBy879_6bitvec5store8BitStore10load_valueNCIB1G_hjjNCNvMs2_NtB2n_5sliceINtB3r_8BitSlicehE10count_oness_0NCINvXsK_NtBW_5accumjNtB4j_3Sum3sumINtB1I_3MapIB4K_BF_B2f_EB3j_EE0E0E0ECs7gfv9tzbXmh_6yara_x.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = ptrtoint ptr %1 to i64
  %i.c = ptrtoint ptr %0 to i64
  %i.d = sub nuw i64 %i.b, %i.c                   ; 4 uses
  %min.iters.check = icmp ult i64 %i.d, 4
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %bb.b
  %n.vec = and i64 %i.d, -4                       ; 3 uses
  %i.e = insertelement <2 x i64> <i64 poison, i64 0>, i64 %2, i64 0
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <2 x i64> [ %i.e, %vector.ph ], [ %i.l, %vector.body ]
  %vec.phi2 = phi <2 x i64> [ zeroinitializer, %vector.ph ], [ %i.m, %vector.body ]
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 %index ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 2
  %wide.load = load <2 x i8>, ptr %i.f, align 1
  %wide.load3 = load <2 x i8>, ptr %i.g, align 1
  %i.h = tail call range(i8 0, 9) <2 x i8> @llvm.ctpop.v2i8(<2 x i8> %wide.load)
  %i.i = tail call range(i8 0, 9) <2 x i8> @llvm.ctpop.v2i8(<2 x i8> %wide.load3)
  %i.j = zext nneg <2 x i8> %i.h to <2 x i64>
  %i.k = zext nneg <2 x i8> %i.i to <2 x i64>
  %i.l = add <2 x i64> %vec.phi, %i.j             ; 2 uses
  %i.m = add <2 x i64> %vec.phi2, %i.k            ; 2 uses
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.n = icmp eq i64 %index.next, %n.vec
  br i1 %i.n, label %middle.block, label %vector.body, !llvm.loop !3339

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <2 x i64> %i.m, %i.l
  %i.o = tail call i64 @llvm.vector.reduce.add.v2i64(<2 x i64> %bin.rdx) ; 2 uses
  %cmp.n = icmp eq i64 %i.d, %n.vec
  br i1 %cmp.n, label %_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterhENtNtNtNtBb_4iter6traits8iterator8Iterator4foldjNCINvNtNtBY_8adapters3map8map_foldRhhjNvYhNtNtCscjxkGEBy879_6bitvec5store8BitStore10load_valueNCIB1G_hjjNCNvMs2_NtB2n_5sliceINtB3r_8BitSlicehE10count_oness_0NCINvXsK_NtBW_5accumjNtB4j_3Sum3sumINtB1I_3MapIB4K_BF_B2f_EB3j_EE0E0E0ECs7gfv9tzbXmh_6yara_x.exit, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %bb.b, %middle.block
  %.sroa.04.0.i.ph = phi i64 [ 0, %bb.b ], [ %n.vec, %middle.block ]
  %.sroa.02.0.i.ph = phi i64 [ %2, %bb.b ], [ %i.o, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %.sroa.04.0.i = phi i64 [ %i.t, %scalar.ph ], [ %.sroa.04.0.i.ph, %scalar.ph.preheader ] ; 2 uses
  %.sroa.02.0.i = phi i64 [ %i.s, %scalar.ph ], [ %.sroa.02.0.i.ph, %scalar.ph.preheader ]
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 %.sroa.04.0.i
  %.val.i = load i8, ptr %i.p, align 1, !noundef !6
  %i.q = tail call range(i8 0, 9) i8 @llvm.ctpop.i8(i8 %.val.i)
  %i.r = zext nneg i8 %i.q to i64
  %i.s = add i64 %.sroa.02.0.i, %i.r              ; 2 uses
  %i.t = add nuw i64 %.sroa.04.0.i, 1             ; 2 uses
  %i.u = icmp eq i64 %i.t, %i.d
  br i1 %i.u, label %_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterhENtNtNtNtBb_4iter6traits8iterator8Iterator4foldjNCINvNtNtBY_8adapters3map8map_foldRhhjNvYhNtNtCscjxkGEBy879_6bitvec5store8BitStore10load_valueNCIB1G_hjjNCNvMs2_NtB2n_5sliceINtB3r_8BitSlicehE10count_oness_0NCINvXsK_NtBW_5accumjNtB4j_3Sum3sumINtB1I_3MapIB4K_BF_B2f_EB3j_EE0E0E0ECs7gfv9tzbXmh_6yara_x.exit, label %scalar.ph, !llvm.loop !3340

_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterhENtNtNtNtBb_4iter6traits8iterator8Iterator4foldjNCINvNtNtBY_8adapters3map8map_foldRhhjNvYhNtNtCscjxkGEBy879_6bitvec5store8BitStore10load_valueNCIB1G_hjjNCNvMs2_NtB2n_5sliceINtB3r_8BitSlicehE10count_oness_0NCINvXsK_NtBW_5accumjNtB4j_3Sum3sumINtB1I_3MapIB4K_BF_B2f_EB3j_EE0E0E0ECs7gfv9tzbXmh_6yara_x.exit: ; preds = %scalar.ph, %middle.block, %bb.a
  %.sroa.0.0.i = phi i64 [ %2, %bb.a ], [ %i.o, %middle.block ], [ %i.s, %scalar.ph ]
  ret i64 %.sroa.0.0.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(readwrite, target_mem: none) uwtable
define hidden { i8, i8 } @_RINvXs0_NtNtNtCskKLDkoKarTP_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter7IterMutINtNtNtCs2CmfWUMKNor_9itertools8adaptors13multi_product16MultiProductIterINtCs6ObhOmryMwL_8smallvec8IntoIterAhj4_EEENCNvXs1_B1t_INtB1t_12MultiProductB2B_ENtNtNtBa_6traits8iterator8Iterator4next0EB3U_8try_folduNCINvXB8_INtB8_12GenericShuntBN_INtNtBc_6option6OptionzEEB3U_8try_folduNCINvNvB3U_12try_for_each4callhINtNtNtBc_3ops12control_flow11ControlFlowhENcNtB6r_5Break0E0B6r_E0IB6s_B6r_EECs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %0, ptr noalias nofree noundef nonnull readnone captures(none) %1, ptr noalias nofree noundef writeonly captures(none) dereferenceable(1) %2) unnamed_addr #17 personality ptr @rust_eh_personality {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3354)
  %i.a = load ptr, ptr %0, align 8, !alias.scope !3355, !nonnull !6, !noundef !6 ; 7 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !alias.scope !3355, !nonnull !6, !noundef !6
  %i.d = icmp eq ptr %i.a, %i.c
  br i1 %i.d, label %_RINvYINtNtNtCskKLDkoKarTP_4core5slice4iter7IterMutINtNtNtCs2CmfWUMKNor_9itertools8adaptors13multi_product16MultiProductIterINtCs6ObhOmryMwL_8smallvec8IntoIterAhj4_EEENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNtNtB2K_8adapters3map12map_try_foldQBM_INtNtBa_6option6OptionhEuINtNtNtBa_3ops12control_flow11ControlFlowIB4B_hEENCNvXs1_BP_INtBP_12MultiProductB1X_EB2E_4next0NCINvXB3A_INtB3A_12GenericShuntINtB3y_3MapB3_B5n_EIB4c_zEEB2E_8try_folduNCINvNvB2E_12try_for_each4callhB5f_NcNtB5f_5Break0E0B5f_E0E0B4A_ECs7gfv9tzbXmh_6yara_x.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 80
  store ptr %i.e, ptr %0, align 8, !alias.scope !3355
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3356)
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 24 ; 2 uses
  %i.g = load i64, ptr %i.f, align 8, !alias.scope !3357, !noalias !3354, !noundef !6 ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.i = load i64, ptr %i.h, align 8, !alias.scope !3357, !noalias !3354, !noundef !6
  %.not.i.i = icmp eq i64 %i.g, %i.i
  br i1 %.not.i.i, label %bb.c, label %_RNCNvXs1_NtNtCs2CmfWUMKNor_9itertools8adaptors13multi_productINtB7_12MultiProductINtCs6ObhOmryMwL_8smallvec8IntoIterAhj4_EENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4next0Cs7gfv9tzbXmh_6yara_x.exit.thread.i.i

_RNCNvXs1_NtNtCs2CmfWUMKNor_9itertools8adaptors13multi_productINtB7_12MultiProductINtCs6ObhOmryMwL_8smallvec8IntoIterAhj4_EENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4next0Cs7gfv9tzbXmh_6yara_x.exit.thread.i.i: ; preds = %bb.b
  %i.j = add i64 %i.g, 1
  store i64 %i.j, ptr %i.f, align 8, !alias.scope !3357, !noalias !3354
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.l = load i64, ptr %i.k, align 8, !alias.scope !3358, !noalias !3359, !noundef !6
  %i.m = icmp ugt i64 %i.l, 4
  %i.n = load ptr, ptr %i.a, align 8, !alias.scope !3358, !noalias !3359, !nonnull !6
  %.sink11.i.i.i.i.i = select i1 %i.m, ptr %i.n, ptr %i.a
  %i.o = getelementptr inbounds nuw i8, ptr %.sink11.i.i.i.i.i, i64 %i.g
  %i.p = load i8, ptr %i.o, align 1, !noalias !3354, !noundef !6
  br label %_RINvYINtNtNtCskKLDkoKarTP_4core5slice4iter7IterMutINtNtNtCs2CmfWUMKNor_9itertools8adaptors13multi_product16MultiProductIterINtCs6ObhOmryMwL_8smallvec8IntoIterAhj4_EEENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNtNtB2K_8adapters3map12map_try_foldQBM_INtNtBa_6option6OptionhEuINtNtNtBa_3ops12control_flow11ControlFlowIB4B_hEENCNvXs1_BP_INtBP_12MultiProductB1X_EB2E_4next0NCINvXB3A_INtB3A_12GenericShuntINtB3y_3MapB3_B5n_EIB4c_zEEB2E_8try_folduNCINvNvB2E_12try_for_each4callhB5f_NcNtB5f_5Break0E0B5f_E0E0B4A_ECs7gfv9tzbXmh_6yara_x.exit

bb.c:                                             ; preds = %bb.b
  store i8 1, ptr %2, align 1, !noalias !3360
  br label %_RINvYINtNtNtCskKLDkoKarTP_4core5slice4iter7IterMutINtNtNtCs2CmfWUMKNor_9itertools8adaptors13multi_product16MultiProductIterINtCs6ObhOmryMwL_8smallvec8IntoIterAhj4_EEENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNtNtB2K_8adapters3map12map_try_foldQBM_INtNtBa_6option6OptionhEuINtNtNtBa_3ops12control_flow11ControlFlowIB4B_hEENCNvXs1_BP_INtBP_12MultiProductB1X_EB2E_4next0NCINvXB3A_INtB3A_12GenericShuntINtB3y_3MapB3_B5n_EIB4c_zEEB2E_8try_folduNCINvNvB2E_12try_for_each4callhB5f_NcNtB5f_5Break0E0B5f_E0E0B4A_ECs7gfv9tzbXmh_6yara_x.exit

_RINvYINtNtNtCskKLDkoKarTP_4core5slice4iter7IterMutINtNtNtCs2CmfWUMKNor_9itertools8adaptors13multi_product16MultiProductIterINtCs6ObhOmryMwL_8smallvec8IntoIterAhj4_EEENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNtNtB2K_8adapters3map12map_try_foldQBM_INtNtBa_6option6OptionhEuINtNtNtBa_3ops12control_flow11ControlFlowIB4B_hEENCNvXs1_BP_INtBP_12MultiProductB1X_EB2E_4next0NCINvXB3A_INtB3A_12GenericShuntINtB3y_3MapB3_B5n_EIB4c_zEEB2E_8try_folduNCINvNvB2E_12try_for_each4callhB5f_NcNtB5f_5Break0E0B5f_E0E0B4A_ECs7gfv9tzbXmh_6yara_x.exit: ; preds = %bb.a, %_RNCNvXs1_NtNtCs2CmfWUMKNor_9itertools8adaptors13multi_productINtB7_12MultiProductINtCs6ObhOmryMwL_8smallvec8IntoIterAhj4_EENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4next0Cs7gfv9tzbXmh_6yara_x.exit.thread.i.i, %bb.c
  %.sroa.3.0.i = phi i8 [ undef, %bb.a ], [ undef, %bb.c ], [ %i.p, %_RNCNvXs1_NtNtCs2CmfWUMKNor_9itertools8adaptors13multi_productINtB7_12MultiProductINtCs6ObhOmryMwL_8smallvec8IntoIterAhj4_EENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4next0Cs7gfv9tzbXmh_6yara_x.exit.thread.i.i ]
  %.sroa.0.0.i = phi i8 [ 2, %bb.a ], [ 0, %bb.c ], [ 1, %_RNCNvXs1_NtNtCs2CmfWUMKNor_9itertools8adaptors13multi_productINtB7_12MultiProductINtCs6ObhOmryMwL_8smallvec8IntoIterAhj4_EENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4next0Cs7gfv9tzbXmh_6yara_x.exit.thread.i.i ]
  %i.q = insertvalue { i8, i8 } poison, i8 %.sroa.0.0.i, 0
  %i.r = insertvalue { i8, i8 } %i.q, i8 %.sroa.3.0.i, 1
  ret { i8, i8 } %i.r
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(readwrite, target_mem: none) uwtable
define hidden { i8, i8 } @_RINvXs0_NtNtNtCskKLDkoKarTP_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter7IterMutINtNtNtCs2CmfWUMKNor_9itertools8adaptors13multi_product16MultiProductIterNtNtNtNtCs7gfv9tzbXmh_6yara_x8compiler5atoms4mask18ByteMaskCombinatorEENCNvXs1_B1t_INtB1t_12MultiProductB2B_ENtNtNtBa_6traits8iterator8Iterator4next0EB4m_8try_folduNCINvXB8_INtB8_12GenericShuntBN_INtNtBc_6option6OptionzEEB4m_8try_folduNCINvNvB4m_12try_for_each4callhINtNtNtBc_3ops12control_flow11ControlFlowhENcNtB6T_5Break0E0B6T_E0IB6U_B6T_EEB2J_(ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %0, ptr noalias nofree noundef nonnull readnone captures(none) %1, ptr noalias nofree noundef writeonly captures(none) dereferenceable(1) %2) unnamed_addr #17 personality ptr @rust_eh_personality {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3371)
  %i.a = load ptr, ptr %0, align 8, !alias.scope !3372, !nonnull !6, !noundef !6 ; 7 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !alias.scope !3372, !nonnull !6, !noundef !6
  %i.d = icmp eq ptr %i.a, %i.c
  br i1 %i.d, label %_RINvYINtNtNtCskKLDkoKarTP_4core5slice4iter7IterMutINtNtNtCs2CmfWUMKNor_9itertools8adaptors13multi_product16MultiProductIterNtNtNtNtCs7gfv9tzbXmh_6yara_x8compiler5atoms4mask18ByteMaskCombinatorEENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNtNtB3c_8adapters3map12map_try_foldQBM_INtNtBa_6option6OptionhEuINtNtNtBa_3ops12control_flow11ControlFlowIB53_hEENCNvXs1_BP_INtBP_12MultiProductB1X_EB36_4next0NCINvXB42_INtB42_12GenericShuntINtB40_3MapB3_B5P_EIB4E_zEEB36_8try_folduNCINvNvB36_12try_for_each4callhB5H_NcNtB5H_5Break0E0B5H_E0E0B52_EB25_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %i.e, ptr %0, align 8, !alias.scope !3372
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3373)
  %i.f = load i8, ptr %i.a, align 1, !range !15, !alias.scope !3374, !noalias !3371, !noundef !6
  %i.g = trunc nuw i8 %i.f to i1
  br i1 %i.g, label %bb.c, label %_RNCNvXs1_NtNtCs2CmfWUMKNor_9itertools8adaptors13multi_productINtB7_12MultiProductNtNtNtNtCs7gfv9tzbXmh_6yara_x8compiler5atoms4mask18ByteMaskCombinatorENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4next0B1p_.exit.thread.i.i

_RNCNvXs1_NtNtCs2CmfWUMKNor_9itertools8adaptors13multi_productINtB7_12MultiProductNtNtNtNtCs7gfv9tzbXmh_6yara_x8compiler5atoms4mask18ByteMaskCombinatorENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4next0B1p_.exit.thread.i.i: ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  %i.i = load i8, ptr %i.h, align 1, !alias.scope !3374, !noalias !3371, !noundef !6
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 2
  %i.k = load i8, ptr %i.j, align 1, !alias.scope !3374, !noalias !3371, !noundef !6 ; 3 uses
  %i.l = and i8 %i.k, %i.i
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 3 ; 2 uses
  %i.n = load i8, ptr %i.m, align 1, !alias.scope !3374, !noalias !3371, !noundef !6 ; 2 uses
  %i.o = xor i8 %i.k, -1
  %i.p = and i8 %i.n, %i.o
  %i.q = or disjoint i8 %i.p, %i.l
  %i.r = or i8 %i.n, %i.k                         ; 2 uses
  %i.s = add i8 %i.r, 1
  %i.t = icmp eq i8 %i.r, -1
  store i8 %i.s, ptr %i.m, align 1, !alias.scope !3374, !noalias !3371
  %i.u = zext i1 %i.t to i8
  store i8 %i.u, ptr %i.a, align 1, !alias.scope !3374, !noalias !3371
  br label %_RINvYINtNtNtCskKLDkoKarTP_4core5slice4iter7IterMutINtNtNtCs2CmfWUMKNor_9itertools8adaptors13multi_product16MultiProductIterNtNtNtNtCs7gfv9tzbXmh_6yara_x8compiler5atoms4mask18ByteMaskCombinatorEENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNtNtB3c_8adapters3map12map_try_foldQBM_INtNtBa_6option6OptionhEuINtNtNtBa_3ops12control_flow11ControlFlowIB53_hEENCNvXs1_BP_INtBP_12MultiProductB1X_EB36_4next0NCINvXB42_INtB42_12GenericShuntINtB40_3MapB3_B5P_EIB4E_zEEB36_8try_folduNCINvNvB36_12try_for_each4callhB5H_NcNtB5H_5Break0E0B5H_E0E0B52_EB25_.exit

bb.c:                                             ; preds = %bb.b
  store i8 1, ptr %2, align 1, !noalias !3375
  br label %_RINvYINtNtNtCskKLDkoKarTP_4core5slice4iter7IterMutINtNtNtCs2CmfWUMKNor_9itertools8adaptors13multi_product16MultiProductIterNtNtNtNtCs7gfv9tzbXmh_6yara_x8compiler5atoms4mask18ByteMaskCombinatorEENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNtNtB3c_8adapters3map12map_try_foldQBM_INtNtBa_6option6OptionhEuINtNtNtBa_3ops12control_flow11ControlFlowIB53_hEENCNvXs1_BP_INtBP_12MultiProductB1X_EB36_4next0NCINvXB42_INtB42_12GenericShuntINtB40_3MapB3_B5P_EIB4E_zEEB36_8try_folduNCINvNvB36_12try_for_each4callhB5H_NcNtB5H_5Break0E0B5H_E0E0B52_EB25_.exit
end_hunk_0
