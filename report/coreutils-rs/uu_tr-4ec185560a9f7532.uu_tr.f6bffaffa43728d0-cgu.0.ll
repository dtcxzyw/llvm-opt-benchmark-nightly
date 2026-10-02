Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/coreutils-rs/original/uu_tr-4ec185560a9f7532.uu_tr.f6bffaffa43728d0-cgu.0?download=true
inline.NumInlined: 1207
inline.NumDeleted: 660
loop-unroll.NumCompletelyUnrolled: 12
loop-unroll.NumRuntimeUnrolled: 8
loop-unroll.NumUnrolled: 20
begin_hunk_0_@_RNvCslbrwWrVtb7E_5uu_tr6uu_app:_RINvMNtNtCsgNwXemyrBWj_12clap_builder7builder3argNtB3_3Arg19visible_short_aliascECslbrwWrVtb7E_5uu_tr.exit
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0396.sroa.29.0..sroa_idx, i8 0, i64 16, i1 false)
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.0396.sroa.31.0..sroa_idx, align 8
  %.sroa.0396.sroa.33.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 328
  store ptr inttoptr (i64 4 to ptr), ptr %.sroa.0396.sroa.33.0..sroa_idx, align 8
  %.sroa.0396.sroa.35.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 352
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.0396.sroa.35.0..sroa_idx, align 8
  %.sroa.0396.sroa.36.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 360
  %.sroa.0396.sroa.38.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 376
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0396.sroa.36.0..sroa_idx, i8 0, i64 16, i1 false)
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.0396.sroa.38.0..sroa_idx, align 8
  %.sroa.0396.sroa.40.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 400
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.0396.sroa.40.0..sroa_idx, align 8
  %.sroa.0396.sroa.42.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 424
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.0396.sroa.42.0..sroa_idx, align 8
  %.sroa.0396.sroa.43.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 432
  %.sroa.0396.sroa.45.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 448
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0396.sroa.43.0..sroa_idx, i8 0, i64 16, i1 false)
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.0396.sroa.45.0..sroa_idx, align 8
  %.sroa.0396.sroa.47.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 472
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.0396.sroa.47.0..sroa_idx, align 8
  %.sroa.0396.sroa.48.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 480
  store i64 0, ptr %.sroa.0396.sroa.48.0..sroa_idx, align 8
  %.sroa.4397.0..sroa_idx398 = getelementptr inbounds nuw i8, ptr %i.c, i64 488
  store i64 %.sroa.0559.0.copyload, ptr %.sroa.4397.0..sroa_idx398, align 8
  %.sroa.6400.0..sroa_idx401 = getelementptr inbounds nuw i8, ptr %i.c, i64 496
  store ptr %.sroa.2560.0.copyload, ptr %.sroa.6400.0..sroa_idx401, align 8
  %.sroa.7403.0..sroa_idx404 = getelementptr inbounds nuw i8, ptr %i.c, i64 504
  store i64 %.sroa.3561.0.copyload, ptr %.sroa.7403.0..sroa_idx404, align 8
  %.sroa.7403.sroa.5.0..sroa.7403.0..sroa_idx404.sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 512
  store i64 -1, ptr %.sroa.7403.sroa.5.0..sroa.7403.0..sroa_idx404.sroa_idx, align 8
  %.sroa.7403.sroa.7.0..sroa.7403.0..sroa_idx404.sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 552
  store i64 -2, ptr %.sroa.7403.sroa.7.0..sroa.7403.0..sroa_idx404.sroa_idx, align 8
  %.sroa.7403.sroa.9.0..sroa.7403.0..sroa_idx404.sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 576
  store ptr @37, ptr %.sroa.7403.sroa.9.0..sroa.7403.0..sroa_idx404.sroa_idx, align 8
  %.sroa.7403.sroa.10.0..sroa.7403.0..sroa_idx404.sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 584
  store i64 13, ptr %.sroa.7403.sroa.10.0..sroa.7403.0..sroa_idx404.sroa_idx, align 8
  %.sroa.7403.sroa.11.0..sroa.7403.0..sroa_idx404.sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 592
  store ptr @37, ptr %.sroa.7403.sroa.11.0..sroa.7403.0..sroa_idx404.sroa_idx, align 8
  %.sroa.7403.sroa.12.0..sroa.7403.0..sroa_idx404.sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 600
  store i64 13, ptr %.sroa.7403.sroa.12.0..sroa.7403.0..sroa_idx404.sroa_idx, align 8
  %.sroa.7403.sroa.13.0..sroa.7403.0..sroa_idx404.sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 608
  store ptr null, ptr %.sroa.7403.sroa.13.0..sroa.7403.0..sroa_idx404.sroa_idx, align 8
  %.sroa.7403.sroa.15.0..sroa.7403.0..sroa_idx404.sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 624
  store i32 116, ptr %.sroa.7403.sroa.15.0..sroa.7403.0..sroa_idx404.sroa_idx, align 8
  %.sroa.7403.sroa.16.0..sroa.7403.0..sroa_idx404.sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 628
  store i32 -1, ptr %.sroa.7403.sroa.16.0..sroa.7403.0..sroa_idx404.sroa_idx, align 4
  %.sroa.7403.sroa.17.0..sroa.7403.0..sroa_idx404.sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 632
  store i32 0, ptr %.sroa.7403.sroa.17.0..sroa.7403.0..sroa_idx404.sroa_idx, align 8
  %.sroa.7403.sroa.18.0..sroa.7403.0..sroa_idx404.sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 636
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  store i8 2, ptr %.sroa.7403.sroa.18.0..sroa.7403.0..sroa_idx404.sroa_idx, align 4
  call void @llvm.experimental.noalias.scope.decl(metadata !811)
  %i.ce = getelementptr inbounds nuw i8, ptr %i.c, i64 128 ; 2 uses
  %i.cf = load i64, ptr %.sroa.0396.sroa.17.0..sroa_idx, align 8, !alias.scope !812, !noalias !813, !noundef !11 ; 3 uses
  %i.cg = load i64, ptr %i.ce, align 8, !range !12, !alias.scope !812, !noalias !813, !noundef !11
  %i.ch = icmp eq i64 %i.cf, %i.cg
  br i1 %i.ch, label %bb.e, label %_RINvMs_NtNtCsgNwXemyrBWj_12clap_builder7builder3argNtB5_3Arg12value_parserNtNtB7_12value_parser11ValueParserECslbrwWrVtb7E_5uu_tr.exit

bb.e:                                             ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsgNwXemyrBWj_12clap_builder7builder10styled_str9StyledStrEECslbrwWrVtb7E_5uu_tr.exit137
  call void @_RNvMs4_NtCs7tKScEop1B6_5alloc7raw_vecINtB5_6RawVecNtNtNtCsgNwXemyrBWj_12clap_builder4util2id2IdE8grow_oneBS_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ce) #31, !noalias !813
  br label %_RINvMs_NtNtCsgNwXemyrBWj_12clap_builder7builder3argNtB5_3Arg12value_parserNtNtB7_12value_parser11ValueParserECslbrwWrVtb7E_5uu_tr.exit

_RINvMs_NtNtCsgNwXemyrBWj_12clap_builder7builder3argNtB5_3Arg12value_parserNtNtB7_12value_parser11ValueParserECslbrwWrVtb7E_5uu_tr.exit: ; preds = %bb.e, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsgNwXemyrBWj_12clap_builder7builder10styled_str9StyledStrEECslbrwWrVtb7E_5uu_tr.exit137
  %i.ci = load ptr, ptr %.sroa.0396.sroa.16.0..sroa_idx, align 8, !alias.scope !812, !noalias !813, !nonnull !11, !noundef !11
  %i.cj = getelementptr inbounds nuw [16 x i8], ptr %i.ci, i64 %i.cf ; 2 uses
  store ptr @37, ptr %i.cj, align 8, !noalias !813
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cj, i64 8
  store i64 13, ptr %i.ck, align 8, !noalias !811
  %i.cl = add i64 %i.cf, 1
  store i64 %i.cl, ptr %.sroa.0396.sroa.17.0..sroa_idx, align 8, !alias.scope !812, !noalias !813
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(640) %i.d, ptr noundef nonnull align 8 dereferenceable(640) %i.c, i64 640, i1 false), !alias.scope !814, !noalias !815
  call void @_RNvMNtNtCsgNwXemyrBWj_12clap_builder7builder7commandNtB2_7Command12arg_internal(ptr noalias nofree noundef nonnull align 8 dereferenceable(712) %i.z, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(640) %i.d) #32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(712) %i.aa, ptr noundef nonnull align 8 dereferenceable(712) %i.z, i64 712, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %.sroa.16484.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 120
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.16484.0..sroa_idx, i8 0, i64 16, i1 false)
  %.sroa.18486.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 144
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.18486.0..sroa_idx, i8 0, i64 16, i1 false)
  %.sroa.20488.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 168
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.20488.0..sroa_idx, i8 0, i64 16, i1 false)
  %.sroa.22490.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 192
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.22490.0..sroa_idx, i8 0, i64 16, i1 false)
  %.sroa.24492.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 216
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.24492.0..sroa_idx, i8 0, i64 16, i1 false)
  %.sroa.26494.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 240
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.26494.0..sroa_idx, i8 0, i64 16, i1 false)
  %.sroa.28496.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 264
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.28496.0..sroa_idx, i8 0, i64 16, i1 false)
  %.sroa.33501.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 312
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.33501.0..sroa_idx, i8 0, i64 16, i1 false)
  %.sroa.35503.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 336
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.35503.0..sroa_idx, i8 0, i64 16, i1 false)
  %.sroa.40508.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 384
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.40508.0..sroa_idx, i8 0, i64 16, i1 false)
  %.sroa.42510.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 408
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.42510.0..sroa_idx, i8 0, i64 16, i1 false)
  %.sroa.47515.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 456
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.47515.0..sroa_idx, i8 0, i64 16, i1 false)
  store i64 0, ptr %i.a, align 8, !alias.scope !816, !noalias !817
  %.sroa.2472.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i64 1, ptr %.sroa.2472.0..sroa_idx, align 8, !alias.scope !816, !noalias !817
  %.sroa.4473.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i64 1, ptr %.sroa.4473.0..sroa_idx, align 8, !alias.scope !816, !noalias !817
  %.sroa.5474.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store i64 -1, ptr %.sroa.5474.0..sroa_idx, align 8, !alias.scope !816, !noalias !817
  %.sroa.6475.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  store i64 0, ptr %.sroa.6475.0..sroa_idx, align 8, !alias.scope !816, !noalias !817
  %.sroa.7477.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  store i64 0, ptr %.sroa.7477.0..sroa_idx, align 8, !alias.scope !816, !noalias !817
  %.sroa.8479.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 80
  store i64 2, ptr %.sroa.8479.0..sroa_idx, align 8, !alias.scope !816, !noalias !817
  %.sroa.14482.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 104
  store i64 0, ptr %.sroa.14482.0..sroa_idx, align 8, !alias.scope !816, !noalias !817
  %.sroa.15483.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 112
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.15483.0..sroa_idx, align 8, !alias.scope !816, !noalias !817
  %.sroa.17485.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 136
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.17485.0..sroa_idx, align 8, !alias.scope !816, !noalias !817
  %.sroa.19487.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 160
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.19487.0..sroa_idx, align 8, !alias.scope !816, !noalias !817
  %.sroa.21489.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 184
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.21489.0..sroa_idx, align 8, !alias.scope !816, !noalias !817
  %.sroa.23491.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 208
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.23491.0..sroa_idx, align 8, !alias.scope !816, !noalias !817
  %.sroa.25493.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 232
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.25493.0..sroa_idx, align 8, !alias.scope !816, !noalias !817
  %.sroa.27495.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 256
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.27495.0..sroa_idx, align 8, !alias.scope !816, !noalias !817
  %.sroa.29497.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 280
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.29497.0..sroa_idx, align 8, !alias.scope !816, !noalias !817
  %.sroa.30498.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 288
  %.sroa.32500.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 304
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.30498.0..sroa_idx, i8 0, i64 16, i1 false)
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.32500.0..sroa_idx, align 8, !alias.scope !816, !noalias !817
  %.sroa.34502.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 328
  store ptr inttoptr (i64 4 to ptr), ptr %.sroa.34502.0..sroa_idx, align 8, !alias.scope !816, !noalias !817
  %.sroa.36504.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 352
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.36504.0..sroa_idx, align 8, !alias.scope !816, !noalias !817
  %.sroa.37505.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 360
  %.sroa.39507.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 376
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.37505.0..sroa_idx, i8 0, i64 16, i1 false)
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.39507.0..sroa_idx, align 8, !alias.scope !816, !noalias !817
  %.sroa.41509.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 400
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.41509.0..sroa_idx, align 8, !alias.scope !816, !noalias !817
  %.sroa.43511.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 424
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.43511.0..sroa_idx, align 8, !alias.scope !816, !noalias !817
  %.sroa.44512.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 432
  %.sroa.46514.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 448
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.44512.0..sroa_idx, i8 0, i64 16, i1 false)
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.46514.0..sroa_idx, align 8, !alias.scope !816, !noalias !817
  %.sroa.48516.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 472
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.48516.0..sroa_idx, align 8, !alias.scope !816, !noalias !817
  %.sroa.49517.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 480
  store i64 0, ptr %.sroa.49517.0..sroa_idx, align 8, !alias.scope !816, !noalias !817
  %.sroa.50518.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 488
  store i64 -1, ptr %.sroa.50518.0..sroa_idx, align 8, !alias.scope !816, !noalias !817
  %.sroa.51520.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 512
  store i64 -1, ptr %.sroa.51520.0..sroa_idx, align 8, !alias.scope !816, !noalias !817
  %.sroa.52522.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 552
  store i64 -2, ptr %.sroa.52522.0..sroa_idx, align 8, !alias.scope !816, !noalias !817
  %.sroa.53524.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 576
  store ptr @39, ptr %.sroa.53524.0..sroa_idx, align 8, !alias.scope !816, !noalias !817
  %.sroa.55525.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 584
  store i64 4, ptr %.sroa.55525.0..sroa_idx, align 8, !alias.scope !816, !noalias !817
  %.sroa.57526.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 592
  store ptr null, ptr %.sroa.57526.0..sroa_idx, align 8, !alias.scope !816, !noalias !817
  %.sroa.58528.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 608
  store ptr null, ptr %.sroa.58528.0..sroa_idx, align 8, !alias.scope !816, !noalias !817
  %.sroa.59530.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 624
  store i32 -1, ptr %.sroa.59530.0..sroa_idx, align 8, !alias.scope !816, !noalias !817
  %.sroa.60531.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 628
  store i32 -1, ptr %.sroa.60531.0..sroa_idx, align 4, !alias.scope !816, !noalias !817
  %.sroa.61532.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 632
  store i32 0, ptr %.sroa.61532.0..sroa_idx, align 8, !alias.scope !816, !noalias !817
  %.sroa.62533.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 636
  store i8 -1, ptr %.sroa.62533.0..sroa_idx, align 4, !alias.scope !816, !noalias !817
  call void @_RNvMNtNtCsgNwXemyrBWj_12clap_builder7builder7commandNtB2_7Command12arg_internal(ptr noalias nofree noundef nonnull align 8 dereferenceable(712) %i.aa, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(640) %i.a) #32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(712) %0, ptr noundef nonnull align 8 dereferenceable(712) %i.aa, i64 712, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.experimental.noalias.scope.decl(metadata !818)
  %.val.i175 = load i64, ptr %i.s, align 8, !range !12, !alias.scope !818, !noundef !11 ; 2 uses
  %i.cm = icmp eq i64 %.val.i175, 0
  br i1 %i.cm, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECslbrwWrVtb7E_5uu_tr.exit, label %bb.f

bb.f:                                             ; preds = %_RINvMs_NtNtCsgNwXemyrBWj_12clap_builder7builder3argNtB5_3Arg12value_parserNtNtB7_12value_parser11ValueParserECslbrwWrVtb7E_5uu_tr.exit
  %.val1.i = load ptr, ptr %i.ad, align 8, !alias.scope !818, !nonnull !11, !noundef !11
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i, i64 noundef %.val.i175, i64 noundef range(i64 1, -9223372036854775807) 1) #32, !noalias !818
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECslbrwWrVtb7E_5uu_tr.exit

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECslbrwWrVtb7E_5uu_tr.exit: ; preds = %_RINvMs_NtNtCsgNwXemyrBWj_12clap_builder7builder3argNtB5_3Arg12value_parserNtNtB7_12value_parser11ValueParserECslbrwWrVtb7E_5uu_tr.exit, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa)
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define void @_RNvMs1_NtCslbrwWrVtb7E_5uu_tr9operationNtB5_8Sequence20solve_set_characters(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([48 x i8]) align 8 captures(none) dereferenceable(48) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef range(i64 0, -9223372036854775808) %2, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %3, i64 noundef range(i64 0, -9223372036854775808) %4, i1 noundef zeroext %5, i1 noundef zeroext %6, i1 noundef zeroext %7) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = alloca [56 x i8], align 8                ; 5 uses
  %i.c = alloca [56 x i8], align 8                ; 8 uses
  %i.d = alloca [48 x i8], align 8                ; 5 uses
  %i.e = alloca [48 x i8], align 8                ; 5 uses
  %i.f = alloca [16 x i8], align 8                ; 7 uses
  %i.g = alloca [24 x i8], align 8                ; 4 uses
  %i.h = alloca [56 x i8], align 8                ; 8 uses
  %i.i = alloca [24 x i8], align 8                ; 9 uses
  %i.j = alloca [24 x i8], align 8                ; 9 uses
  %i.k = alloca [48 x i8], align 8                ; 7 uses
  %i.l = alloca [24 x i8], align 8                ; 8 uses
  %i.m = alloca [24 x i8], align 8                ; 6 uses
  %i.n = alloca [24 x i8], align 8                ; 6 uses
  %i.o = alloca [8 x i8], align 8                 ; 5 uses
  %i.p = alloca [16 x i8], align 8                ; 7 uses
  %i.q = alloca [24 x i8], align 8                ; 4 uses
  %i.r = alloca [48 x i8], align 8                ; 7 uses
  %i.s = alloca [24 x i8], align 8                ; 15 uses
  %i.t = alloca [32 x i8], align 8                ; 12 uses
  %i.u = alloca [32 x i8], align 8                ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u)
  call fastcc void @_RNvMs2_NtCslbrwWrVtb7E_5uu_tr9operationNtB5_8Sequence8from_str(ptr noalias nofree noundef align 8 captures(address) dereferenceable(32) %i.u, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2) #32
  %i.v = load i32, ptr %i.u, align 8, !range !26, !noundef !11 ; 2 uses
  %.not = icmp eq i32 %i.v, -1
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.sroa.478.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.u, i64 4
  %.sroa.478.sroa.0.0.copyload = load i32, ptr %.sroa.478.0..sroa_idx, align 4
  %.sroa.478.sroa.4.0..sroa.478.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %.sroa.478.sroa.4.0.copyload = load i64, ptr %.sroa.478.sroa.4.0..sroa.478.0..sroa_idx.sroa_idx, align 8
  %.sroa.478.sroa.5.0..sroa.478.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  %.sroa.478.sroa.5.0.copyload = load ptr, ptr %.sroa.478.sroa.5.0..sroa.478.0..sroa_idx.sroa_idx, align 8
  %.sroa.478.sroa.6.0..sroa.478.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.u, i64 24
  %.sroa.478.sroa.6.0.copyload = load i64, ptr %.sroa.478.sroa.6.0..sroa.478.0..sroa_idx.sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u)
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %i.v, ptr %i.w, align 8
  %.sroa.480.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i32 %.sroa.478.sroa.0.0.copyload, ptr %.sroa.480.0..sroa_idx, align 4
  %.sroa.480.sroa.4.0..sroa.480.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.478.sroa.4.0.copyload, ptr %.sroa.480.sroa.4.0..sroa.480.0..sroa_idx.sroa_idx, align 8
  %.sroa.480.sroa.5.0..sroa.480.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %.sroa.478.sroa.5.0.copyload, ptr %.sroa.480.sroa.5.0..sroa.480.0..sroa_idx.sroa_idx, align 8
  %.sroa.480.sroa.6.0..sroa.480.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 %.sroa.478.sroa.6.0.copyload, ptr %.sroa.480.sroa.6.0..sroa.480.0..sroa_idx.sroa_idx, align 8
  store i64 -1, ptr %0, align 8
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc3vec3VecNtNtCslbrwWrVtb7E_5uu_tr9operation8SequenceEEB1c_.exit189

bb.c:                                             ; preds = %bb.a
  %i.x = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %.sroa.0252.0.copyload = load i64, ptr %i.x, align 8 ; 4 uses
  %.sroa.4253.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  %.sroa.4253.0.copyload = load ptr, ptr %.sroa.4253.0..sroa_idx, align 8, !nonnull !11, !noundef !11 ; 15 uses
  %.sroa.5254.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.u, i64 24
  %.sroa.5254.0.copyload = load i64, ptr %.sroa.5254.0..sroa_idx, align 8
  %.sroa.5254.0.copyload.fr = freeze i64 %.sroa.5254.0.copyload ; 9 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u)
  %.idx = shl nuw nsw i64 %.sroa.5254.0.copyload.fr, 4
  %i.y = getelementptr inbounds nuw i8, ptr %.sroa.4253.0.copyload, i64 %.idx ; 5 uses
  %i.z = icmp eq i64 %.sroa.5254.0.copyload.fr, 0 ; 2 uses
  br i1 %i.z, label %_RNvXs1_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters6filterINtB5_6FilterINtNtNtBb_5slice4iter4IterNtNtCslbrwWrVtb7E_5uu_tr9operation8SequenceENCNvMs1_B1u_B1s_20solve_set_characters0ENtNtNtB9_6traits8iterator8Iterator5countB1w_.exit.thread, label %.preheader.i.preheader

.preheader.i.preheader:                           ; preds = %bb.c
  %min.iters.check = icmp ult i64 %.sroa.5254.0.copyload.fr, 4
  br i1 %min.iters.check, label %.preheader.i.preheader337, label %vector.ph

vector.ph:                                        ; preds = %.preheader.i.preheader
  %n.vec = and i64 %.sroa.5254.0.copyload.fr, -4  ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 5 uses
  %vec.phi = phi <2 x i64> [ zeroinitializer, %vector.ph ], [ %i.at, %vector.body ]
  %vec.phi313 = phi <2 x i64> [ zeroinitializer, %vector.ph ], [ %i.au, %vector.body ]
  %i.aa = getelementptr inbounds nuw [16 x i8], ptr %.sroa.4253.0.copyload, i64 %index
  %i.ab = getelementptr inbounds nuw [16 x i8], ptr %.sroa.4253.0.copyload, i64 %index
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 16
  %i.ad = getelementptr inbounds nuw [16 x i8], ptr %.sroa.4253.0.copyload, i64 %index
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 32
  %i.af = getelementptr inbounds nuw [16 x i8], ptr %.sroa.4253.0.copyload, i64 %index
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 48
  %i.ah = load i8, ptr %i.aa, align 8, !range !15, !alias.scope !834, !noundef !11
  %i.ai = load i8, ptr %i.ac, align 8, !range !15, !alias.scope !834, !noundef !11
  %i.aj = insertelement <2 x i8> poison, i8 %i.ah, i64 0
  %i.ak = insertelement <2 x i8> %i.aj, i8 %i.ai, i64 1
  %i.al = load i8, ptr %i.ae, align 8, !range !15, !alias.scope !834, !noundef !11
  %i.am = load i8, ptr %i.ag, align 8, !range !15, !alias.scope !834, !noundef !11
  %i.an = insertelement <2 x i8> poison, i8 %i.al, i64 0
  %i.ao = insertelement <2 x i8> %i.an, i8 %i.am, i64 1
  %i.ap = icmp eq <2 x i8> %i.ak, splat (i8 2)
  %i.aq = icmp eq <2 x i8> %i.ao, splat (i8 2)
  %i.ar = zext <2 x i1> %i.ap to <2 x i64>
  %i.as = zext <2 x i1> %i.aq to <2 x i64>
  %i.at = add <2 x i64> %vec.phi, %i.ar           ; 2 uses
  %i.au = add <2 x i64> %vec.phi313, %i.as        ; 2 uses
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.av = icmp eq i64 %index.next, %n.vec
  br i1 %i.av, label %middle.block, label %vector.body, !llvm.loop !821

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <2 x i64> %i.au, %i.at
  %i.aw = tail call i64 @llvm.vector.reduce.add.v2i64(<2 x i64> %bin.rdx) ; 2 uses
  %cmp.n = icmp eq i64 %.sroa.5254.0.copyload.fr, %n.vec
  br i1 %cmp.n, label %_RNvXs1_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters6filterINtB5_6FilterINtNtNtBb_5slice4iter4IterNtNtCslbrwWrVtb7E_5uu_tr9operation8SequenceENCNvMs1_B1u_B1s_20solve_set_characters0ENtNtNtB9_6traits8iterator8Iterator5countB1w_.exit, label %.preheader.i.preheader337

.preheader.i.preheader337:                        ; preds = %.preheader.i.preheader, %middle.block
  %.sroa.04.0.i.i.ph = phi i64 [ 0, %.preheader.i.preheader ], [ %n.vec, %middle.block ]
  %.sroa.02.0.i.i.ph = phi i64 [ 0, %.preheader.i.preheader ], [ %i.aw, %middle.block ]
  br label %.preheader.i

.preheader.i:                                     ; preds = %.preheader.i.preheader337, %.preheader.i
  %.sroa.04.0.i.i = phi i64 [ %i.bb, %.preheader.i ], [ %.sroa.04.0.i.i.ph, %.preheader.i.preheader337 ] ; 2 uses
  %.sroa.02.0.i.i = phi i64 [ %i.ba, %.preheader.i ], [ %.sroa.02.0.i.i.ph, %.preheader.i.preheader337 ]
  %i.ax = getelementptr inbounds nuw [16 x i8], ptr %.sroa.4253.0.copyload, i64 %.sroa.04.0.i.i
  %.val.i.i = load i8, ptr %i.ax, align 8, !range !15, !alias.scope !834, !noundef !11
  %i.ay = icmp eq i8 %.val.i.i, 2
  %i.az = zext i1 %i.ay to i64
  %i.ba = add i64 %.sroa.02.0.i.i, %i.az          ; 2 uses
  %i.bb = add nuw i64 %.sroa.04.0.i.i, 1          ; 2 uses
  %i.bc = icmp eq i64 %i.bb, %.sroa.5254.0.copyload.fr
  br i1 %i.bc, label %_RNvXs1_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters6filterINtB5_6FilterINtNtNtBb_5slice4iter4IterNtNtCslbrwWrVtb7E_5uu_tr9operation8SequenceENCNvMs1_B1u_B1s_20solve_set_characters0ENtNtNtB9_6traits8iterator8Iterator5countB1w_.exit, label %.preheader.i, !llvm.loop !822

_RNvXs1_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters6filterINtB5_6FilterINtNtNtBb_5slice4iter4IterNtNtCslbrwWrVtb7E_5uu_tr9operation8SequenceENCNvMs1_B1u_B1s_20solve_set_characters0ENtNtNtB9_6traits8iterator8Iterator5countB1w_.exit: ; preds = %.preheader.i, %middle.block
  %.lcssa309 = phi i64 [ %i.aw, %middle.block ], [ %i.ba, %.preheader.i ] ; 2 uses
  %i.bd = icmp ule i64 %.lcssa309, %.sroa.5254.0.copyload.fr
  tail call void @llvm.assume(i1 %i.bd)
  %i.be = icmp eq i64 %.lcssa309, 0
  br i1 %i.be, label %_RNvXs1_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters6filterINtB5_6FilterINtNtNtBb_5slice4iter4IterNtNtCslbrwWrVtb7E_5uu_tr9operation8SequenceENCNvMs1_B1u_B1s_20solve_set_characters0ENtNtNtB9_6traits8iterator8Iterator5countB1w_.exit.thread, label %bb.d

_RNvXs1_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters6filterINtB5_6FilterINtNtNtBb_5slice4iter4IterNtNtCslbrwWrVtb7E_5uu_tr9operation8SequenceENCNvMs1_B1u_B1s_20solve_set_characters0ENtNtNtB9_6traits8iterator8Iterator5countB1w_.exit.thread: ; preds = %bb.c, %_RNvXs1_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters6filterINtB5_6FilterINtNtNtBb_5slice4iter4IterNtNtCslbrwWrVtb7E_5uu_tr9operation8SequenceENCNvMs1_B1u_B1s_20solve_set_characters0ENtNtNtB9_6traits8iterator8Iterator5countB1w_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t)
  call fastcc void @_RNvMs2_NtCslbrwWrVtb7E_5uu_tr9operationNtB5_8Sequence8from_str(ptr noalias nofree noundef align 8 captures(address) dereferenceable(32) %i.t, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %3, i64 noundef %4) #32
  %i.bf = load i32, ptr %i.t, align 8, !range !26, !noundef !11 ; 2 uses
  %.not143 = icmp eq i32 %i.bf, -1
  br i1 %.not143, label %bb.f, label %bb.e

bb.d:                                             ; preds = %_RNvXs1_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters6filterINtB5_6FilterINtNtNtBb_5slice4iter4IterNtNtCslbrwWrVtb7E_5uu_tr9operation8SequenceENCNvMs1_B1u_B1s_20solve_set_characters0ENtNtNtB9_6traits8iterator8Iterator5countB1w_.exit
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 4, ptr %i.bg, align 8
  store i64 -1, ptr %0, align 8
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc3vec3VecNtNtCslbrwWrVtb7E_5uu_tr9operation8SequenceEEB1c_.exit198

bb.e:                                             ; preds = %_RNvXs1_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters6filterINtB5_6FilterINtNtNtBb_5slice4iter4IterNtNtCslbrwWrVtb7E_5uu_tr9operation8SequenceENCNvMs1_B1u_B1s_20solve_set_characters0ENtNtNtB9_6traits8iterator8Iterator5countB1w_.exit.thread
  %.sroa.484.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.t, i64 4
  %.sroa.484.sroa.0.0.copyload = load i32, ptr %.sroa.484.0..sroa_idx, align 4
  %.sroa.484.sroa.4.0..sroa.484.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  %.sroa.484.sroa.4.0.copyload = load i64, ptr %.sroa.484.sroa.4.0..sroa.484.0..sroa_idx.sroa_idx, align 8
  %.sroa.484.sroa.5.0..sroa.484.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  %.sroa.484.sroa.5.0.copyload = load ptr, ptr %.sroa.484.sroa.5.0..sroa.484.0..sroa_idx.sroa_idx, align 8
  %.sroa.484.sroa.6.0..sroa.484.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.t, i64 24
  %.sroa.484.sroa.6.0.copyload = load i64, ptr %.sroa.484.sroa.6.0..sroa.484.0..sroa_idx.sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t)
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %i.bf, ptr %i.bh, align 8
  %.sroa.486.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i32 %.sroa.484.sroa.0.0.copyload, ptr %.sroa.486.0..sroa_idx, align 4
  %.sroa.486.sroa.4.0..sroa.486.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.484.sroa.4.0.copyload, ptr %.sroa.486.sroa.4.0..sroa.486.0..sroa_idx.sroa_idx, align 8
  %.sroa.486.sroa.5.0..sroa.486.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %.sroa.484.sroa.5.0.copyload, ptr %.sroa.486.sroa.5.0..sroa.486.0..sroa_idx.sroa_idx, align 8
  %.sroa.486.sroa.6.0..sroa.486.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 %.sroa.484.sroa.6.0.copyload, ptr %.sroa.486.sroa.6.0..sroa.486.0..sroa_idx.sroa_idx, align 8
  store i64 -1, ptr %0, align 8
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc3vec3VecNtNtCslbrwWrVtb7E_5uu_tr9operation8SequenceEEB1c_.exit198

bb.f:                                             ; preds = %_RNvXs1_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters6filterINtB5_6FilterINtNtNtBb_5slice4iter4IterNtNtCslbrwWrVtb7E_5uu_tr9operation8SequenceENCNvMs1_B1u_B1s_20solve_set_characters0ENtNtNtB9_6traits8iterator8Iterator5countB1w_.exit.thread
  %i.bi = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  %.sroa.0255.0.copyload = load i64, ptr %i.bi, align 8 ; 4 uses
  %.sroa.4256.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  %.sroa.4256.0.copyload = load ptr, ptr %.sroa.4256.0..sroa_idx, align 8, !nonnull !11, !noundef !11 ; 12 uses
  %.sroa.5257.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.t, i64 24
  %.sroa.5257.0.copyload = load i64, ptr %.sroa.5257.0..sroa_idx, align 8 ; 8 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t)
  %.idx271 = shl nuw nsw i64 %.sroa.5257.0.copyload, 4
  %i.bj = getelementptr inbounds nuw i8, ptr %.sroa.4256.0.copyload, i64 %.idx271 ; 3 uses
  %i.bk = icmp eq i64 %.sroa.5257.0.copyload, 0
  br i1 %i.bk, label %_RNvXs1_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters6filterINtB5_6FilterINtNtNtBb_5slice4iter4IterNtNtCslbrwWrVtb7E_5uu_tr9operation8SequenceENCNvMs1_B1u_B1s_20solve_set_characters0ENtNtNtB9_6traits8iterator8Iterator5countB1w_.exit181.thread, label %.preheader.i176.preheader

.preheader.i176.preheader:                        ; preds = %bb.f
  %min.iters.check315 = icmp ult i64 %.sroa.5257.0.copyload, 4
  br i1 %min.iters.check315, label %.preheader.i176.preheader333, label %vector.ph316

vector.ph316:                                     ; preds = %.preheader.i176.preheader
  %n.vec317 = and i64 %.sroa.5257.0.copyload, -4  ; 3 uses
  br label %vector.body318

vector.body318:                                   ; preds = %vector.body318, %vector.ph316
  %index319 = phi i64 [ 0, %vector.ph316 ], [ %index.next322, %vector.body318 ] ; 5 uses
  %vec.phi320 = phi <2 x i64> [ zeroinitializer, %vector.ph316 ], [ %i.ce, %vector.body318 ]
  %vec.phi321 = phi <2 x i64> [ zeroinitializer, %vector.ph316 ], [ %i.cf, %vector.body318 ]
  %i.bl = getelementptr inbounds nuw [16 x i8], ptr %.sroa.4256.0.copyload, i64 %index319
  %i.bm = getelementptr inbounds nuw [16 x i8], ptr %.sroa.4256.0.copyload, i64 %index319
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 16
  %i.bo = getelementptr inbounds nuw [16 x i8], ptr %.sroa.4256.0.copyload, i64 %index319
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 32
  %i.bq = getelementptr inbounds nuw [16 x i8], ptr %.sroa.4256.0.copyload, i64 %index319
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 48
  %i.bs = load i8, ptr %i.bl, align 8, !range !15, !alias.scope !835, !noundef !11
  %i.bt = load i8, ptr %i.bn, align 8, !range !15, !alias.scope !835, !noundef !11
  %i.bu = insertelement <2 x i8> poison, i8 %i.bs, i64 0
  %i.bv = insertelement <2 x i8> %i.bu, i8 %i.bt, i64 1
  %i.bw = load i8, ptr %i.bp, align 8, !range !15, !alias.scope !835, !noundef !11
  %i.bx = load i8, ptr %i.br, align 8, !range !15, !alias.scope !835, !noundef !11
  %i.by = insertelement <2 x i8> poison, i8 %i.bw, i64 0
  %i.bz = insertelement <2 x i8> %i.by, i8 %i.bx, i64 1
  %i.ca = icmp eq <2 x i8> %i.bv, splat (i8 2)
  %i.cb = icmp eq <2 x i8> %i.bz, splat (i8 2)
  %i.cc = zext <2 x i1> %i.ca to <2 x i64>
  %i.cd = zext <2 x i1> %i.cb to <2 x i64>
  %i.ce = add <2 x i64> %vec.phi320, %i.cc        ; 2 uses
  %i.cf = add <2 x i64> %vec.phi321, %i.cd        ; 2 uses
  %index.next322 = add nuw i64 %index319, 4       ; 2 uses
  %i.cg = icmp eq i64 %index.next322, %n.vec317
  br i1 %i.cg, label %middle.block323, label %vector.body318, !llvm.loop !825

middle.block323:                                  ; preds = %vector.body318
  %bin.rdx324 = add <2 x i64> %i.cf, %i.ce
  %i.ch = tail call i64 @llvm.vector.reduce.add.v2i64(<2 x i64> %bin.rdx324) ; 2 uses
  %cmp.n325 = icmp eq i64 %.sroa.5257.0.copyload, %n.vec317
  br i1 %cmp.n325, label %_RNvXs1_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters6filterINtB5_6FilterINtNtNtBb_5slice4iter4IterNtNtCslbrwWrVtb7E_5uu_tr9operation8SequenceENCNvMs1_B1u_B1s_20solve_set_characters0ENtNtNtB9_6traits8iterator8Iterator5countB1w_.exit181, label %.preheader.i176.preheader333

.preheader.i176.preheader333:                     ; preds = %.preheader.i176.preheader, %middle.block323
  %.sroa.04.0.i.i177.ph = phi i64 [ 0, %.preheader.i176.preheader ], [ %n.vec317, %middle.block323 ]
  %.sroa.02.0.i.i178.ph = phi i64 [ 0, %.preheader.i176.preheader ], [ %i.ch, %middle.block323 ]
  br label %.preheader.i176

.preheader.i176:                                  ; preds = %.preheader.i176.preheader333, %.preheader.i176
  %.sroa.04.0.i.i177 = phi i64 [ %i.cm, %.preheader.i176 ], [ %.sroa.04.0.i.i177.ph, %.preheader.i176.preheader333 ] ; 2 uses
  %.sroa.02.0.i.i178 = phi i64 [ %i.cl, %.preheader.i176 ], [ %.sroa.02.0.i.i178.ph, %.preheader.i176.preheader333 ]
  %i.ci = getelementptr inbounds nuw [16 x i8], ptr %.sroa.4256.0.copyload, i64 %.sroa.04.0.i.i177
  %.val.i.i179 = load i8, ptr %i.ci, align 8, !range !15, !alias.scope !835, !noundef !11
  %i.cj = icmp eq i8 %.val.i.i179, 2
  %i.ck = zext i1 %i.cj to i64
  %i.cl = add i64 %.sroa.02.0.i.i178, %i.ck       ; 2 uses
  %i.cm = add nuw i64 %.sroa.04.0.i.i177, 1       ; 2 uses
  %i.cn = icmp eq i64 %i.cm, %.sroa.5257.0.copyload
  br i1 %i.cn, label %_RNvXs1_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters6filterINtB5_6FilterINtNtNtBb_5slice4iter4IterNtNtCslbrwWrVtb7E_5uu_tr9operation8SequenceENCNvMs1_B1u_B1s_20solve_set_characters0ENtNtNtB9_6traits8iterator8Iterator5countB1w_.exit181, label %.preheader.i176, !llvm.loop !826

_RNvXs1_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters6filterINtB5_6FilterINtNtNtBb_5slice4iter4IterNtNtCslbrwWrVtb7E_5uu_tr9operation8SequenceENCNvMs1_B1u_B1s_20solve_set_characters0ENtNtNtB9_6traits8iterator8Iterator5countB1w_.exit181: ; preds = %.preheader.i176, %middle.block323
  %.lcssa = phi i64 [ %i.ch, %middle.block323 ], [ %i.cl, %.preheader.i176 ] ; 2 uses
  %i.co = icmp ule i64 %.lcssa, %.sroa.5257.0.copyload
  tail call void @llvm.assume(i1 %i.co)
  %i.cp = icmp ugt i64 %.lcssa, 1
  br i1 %i.cp, label %bb.g, label %_RNvXs1_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters6filterINtB5_6FilterINtNtNtBb_5slice4iter4IterNtNtCslbrwWrVtb7E_5uu_tr9operation8SequenceENCNvMs1_B1u_B1s_20solve_set_characters0ENtNtNtB9_6traits8iterator8Iterator5countB1w_.exit181.thread

_RNvXs1_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters6filterINtB5_6FilterINtNtNtBb_5slice4iter4IterNtNtCslbrwWrVtb7E_5uu_tr9operation8SequenceENCNvMs1_B1u_B1s_20solve_set_characters0ENtNtNtB9_6traits8iterator8Iterator5countB1w_.exit181.thread: ; preds = %bb.f, %_RNvXs1_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters6filterINtB5_6FilterINtNtNtBb_5slice4iter4IterNtNtCslbrwWrVtb7E_5uu_tr9operation8SequenceENCNvMs1_B1u_B1s_20solve_set_characters0ENtNtNtB9_6traits8iterator8Iterator5countB1w_.exit181
  %.not.not.not.i.not310 = icmp ne i64 %.sroa.5257.0.copyload, 0
  %or.cond329.not = and i1 %.not.not.not.i.not310, %7
  br i1 %or.cond329.not, label %.lr.ph, label %_RINvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB7_4IterNtNtCslbrwWrVtb7E_5uu_tr9operation8SequenceENtNtNtNtBb_4iter6traits8iterator8Iterator3anyNCNvMs1_BS_BQ_20solve_set_characterss_0EBU_.exit

bb.g:                                             ; preds = %_RNvXs1_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters6filterINtB5_6FilterINtNtNtBb_5slice4iter4IterNtNtCslbrwWrVtb7E_5uu_tr9operation8SequenceENCNvMs1_B1u_B1s_20solve_set_characters0ENtNtNtB9_6traits8iterator8Iterator5countB1w_.exit181
  %i.cq = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 3, ptr %i.cq, align 8
  store i64 -1, ptr %0, align 8
  br label %bb.be

_RINvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB7_4IterNtNtCslbrwWrVtb7E_5uu_tr9operation8SequenceENtNtNtNtBb_4iter6traits8iterator8Iterator3anyNCNvMs1_BS_BQ_20solve_set_characterss_0EBU_.exit: ; preds = %.preheader, %_RNvXs1_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters6filterINtB5_6FilterINtNtNtBb_5slice4iter4IterNtNtCslbrwWrVtb7E_5uu_tr9operation8SequenceENCNvMs1_B1u_B1s_20solve_set_characters0ENtNtNtB9_6traits8iterator8Iterator5countB1w_.exit181.thread
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r)
  store ptr %.sroa.4253.0.copyload, ptr %i.r, align 8
  %.sroa.488.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  store ptr %i.y, ptr %.sroa.488.0..sroa_idx, align 8
  %.sroa.589.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  store ptr null, ptr %.sroa.589.0..sroa_idx, align 8
  %.sroa.791.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.r, i64 32
  store ptr null, ptr %.sroa.791.0..sroa_idx, align 8
  call fastcc void @_RNvXNtNtCs7tKScEop1B6_5alloc3vec21spec_from_iter_nestedINtB4_3VechEINtB2_18SpecFromIterNestedhINtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters7flatten7FlatMapINtNtNtB1D_5slice4iter4IterNtNtCslbrwWrVtb7E_5uu_tr9operation8SequenceEINtNtB6_5boxed3BoxDNtNtNtB1B_6traits8iterator8Iteratorp4ItemhEL_ENvMs1_B2T_B2R_7flattenEE9from_iterB2V_(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %i.s, ptr noalias nofree noundef align 8 captures(address) dereferenceable(48) %i.r) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r)
  br i1 %5, label %bb.n, label %bb.i

.preheader:                                       ; preds = %.lr.ph
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cs, i64 16 ; 2 uses
  %.not.not.not.i.not = icmp eq ptr %i.cr, %i.bj
  br i1 %.not.not.not.i.not, label %_RINvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB7_4IterNtNtCslbrwWrVtb7E_5uu_tr9operation8SequenceENtNtNtNtBb_4iter6traits8iterator8Iterator3anyNCNvMs1_BS_BQ_20solve_set_characterss_0EBU_.exit, label %.lr.ph

.lr.ph:                                           ; preds = %_RNvXs1_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters6filterINtB5_6FilterINtNtNtBb_5slice4iter4IterNtNtCslbrwWrVtb7E_5uu_tr9operation8SequenceENCNvMs1_B1u_B1s_20solve_set_characters0ENtNtNtB9_6traits8iterator8Iterator5countB1w_.exit181.thread, %.preheader
  %i.cs = phi ptr [ %i.cr, %.preheader ], [ %.sroa.4256.0.copyload, %_RNvXs1_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters6filterINtB5_6FilterINtNtNtBb_5slice4iter4IterNtNtCslbrwWrVtb7E_5uu_tr9operation8SequenceENCNvMs1_B1u_B1s_20solve_set_characters0ENtNtNtB9_6traits8iterator8Iterator5countB1w_.exit181.thread ] ; 3 uses
  %.val.i = load i8, ptr %i.cs, align 8, !noalias !836
  %i.ct = getelementptr i8, ptr %i.cs, i64 1
  %.val2.i = load i8, ptr %i.ct, align 1, !noalias !836
  %i.cu = icmp eq i8 %.val.i, 4
  %i.cv = add i8 %.val2.i, -6
  %switch.and.i.i = and i8 %i.cv, -5
  %switch.selectcmp.i.i = icmp ne i8 %switch.and.i.i, 0
  %.sroa.0.0.i.i182 = select i1 %i.cu, i1 %switch.selectcmp.i.i, i1 false
  br i1 %.sroa.0.0.i.i182, label %bb.h, label %.preheader

bb.h:                                             ; preds = %.lr.ph
  %i.cw = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 7, ptr %i.cw, align 8
  store i64 -1, ptr %0, align 8
  br label %bb.be

bb.i:                                             ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc3vec3VechEECslbrwWrVtb7E_5uu_tr.exit, %_RINvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB7_4IterNtNtCslbrwWrVtb7E_5uu_tr9operation8SequenceENtNtNtNtBb_4iter6traits8iterator8Iterator3anyNCNvMs1_BS_BQ_20solve_set_characterss_0EBU_.exit
  %i.cx = getelementptr inbounds nuw i8, ptr %i.s, i64 16 ; 7 uses
  %i.cy = load i64, ptr %i.cx, align 8, !noundef !11 ; 3 uses
  %i.cz = icmp sgt i64 %i.cy, -1
  call void @llvm.assume(i1 %i.cz)
  store ptr %.sroa.4256.0.copyload, ptr %i.d, align 8
  %i.da = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr %i.bj, ptr %i.da, align 8
  %i.db = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  store ptr null, ptr %i.db, align 8
  %i.dc = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  store ptr null, ptr %i.dc, align 8
  %i.dd = call fastcc noundef i64 @_RINvMsg_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters7flattenINtB6_13FlattenCompatINtNtB8_3map3MapINtNtB8_10filter_map9FilterMapINtNtNtBc_5slice4iter4IterNtNtCslbrwWrVtb7E_5uu_tr9operation8SequenceENCNvMs1_B2o_B2m_20solve_set_characterss1_0ENvB38_7flattenEINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtNtNtBa_6traits8iterator8Iteratorp4ItemhEL_EE9iter_foldjINvNvXsi_B6_IBS_ppEB4A_5count5countB40_EEB2q_(ptr noalias nofree noundef align 8 captures(address) dereferenceable(48) %i.d) #34
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o)
  %i.de = call i64 @llvm.usub.sat.i64(i64 %i.cy, i64 %i.dd)
  store i64 %i.de, ptr %i.o, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m)
  store ptr %.sroa.4256.0.copyload, ptr %i.m, align 8
  %i.df = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  store ptr %i.bj, ptr %i.df, align 8
  %i.dg = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  store ptr %i.o, ptr %i.dg, align 8
  call fastcc void @_RNvXNtNtCs7tKScEop1B6_5alloc3vec21spec_from_iter_nestedINtB4_3VecNtNtCslbrwWrVtb7E_5uu_tr9operation8SequenceEINtB2_18SpecFromIterNestedB11_INtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters10filter_map9FilterMapINtNtNtB2m_5slice4iter4IterB11_ENCNvMs1_B13_B11_20solve_set_characterss2_0EE9from_iterB15_(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %i.n, ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.m) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  %i.dh = icmp eq i64 %.sroa.0255.0.copyload, 0
  br i1 %i.dh, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc3vec3VecNtNtCslbrwWrVtb7E_5uu_tr9operation8SequenceEEB1c_.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.di = shl nuw i64 %.sroa.0255.0.copyload, 4
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.4256.0.copyload, i64 noundef %i.di, i64 noundef range(i64 1, -9223372036854775807) 8) #32
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc3vec3VecNtNtCslbrwWrVtb7E_5uu_tr9operation8SequenceEEB1c_.exit

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc3vec3VecNtNtCslbrwWrVtb7E_5uu_tr9operation8SequenceEEB1c_.exit: ; preds = %bb.i, %bb.j
  %.sroa.0217.0.copyload218 = load i64, ptr %i.n, align 8 ; 3 uses
  %.sroa.8.0..sroa_idx219 = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %.sroa.8.0.copyload220 = load ptr, ptr %.sroa.8.0..sroa_idx219, align 8, !nonnull !11, !noundef !11 ; 8 uses
  %.sroa.19.0..sroa_idx228 = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  %.sroa.19.0.copyload229 = load i64, ptr %.sroa.19.0..sroa_idx228, align 8 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n)
  %.idx279 = shl nuw nsw i64 %.sroa.19.0.copyload229, 4
  %i.dj = getelementptr inbounds nuw i8, ptr %.sroa.8.0.copyload220, i64 %.idx279 ; 7 uses
  %i.dk = icmp eq i64 %.sroa.19.0.copyload229, 0  ; 2 uses
  br i1 %i.dk, label %_RNvXs_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterNtNtCslbrwWrVtb7E_5uu_tr9operation8SequenceEENtNtNtB8_6traits8iterator8Iterator4nextB1B_.exit.thread, label %_RNvXs_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterNtNtCslbrwWrVtb7E_5uu_tr9operation8SequenceEENtNtNtB8_6traits8iterator8Iterator4nextB1B_.exit.lr.ph

_RNvXs_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterNtNtCslbrwWrVtb7E_5uu_tr9operation8SequenceEENtNtNtB8_6traits8iterator8Iterator4nextB1B_.exit.lr.ph: ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc3vec3VecNtNtCslbrwWrVtb7E_5uu_tr9operation8SequenceEEB1c_.exit
  %i.dl = getelementptr inbounds nuw i8, ptr %i.c, i64 32 ; 2 uses
  %.sroa.499.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  %.sroa.5100.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 48 ; 2 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 2 uses
  %i.dn = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %.sroa.5109.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  %i.do = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  br i1 %i.z, label %_RNvXs_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterNtNtCslbrwWrVtb7E_5uu_tr9operation8SequenceEENtNtNtB8_6traits8iterator8Iterator4nextB1B_.exit.us, label %_RNvXs_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterNtNtCslbrwWrVtb7E_5uu_tr9operation8SequenceEENtNtNtB8_6traits8iterator8Iterator4nextB1B_.exit.preheader

_RNvXs_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterNtNtCslbrwWrVtb7E_5uu_tr9operation8SequenceEENtNtNtB8_6traits8iterator8Iterator4nextB1B_.exit.preheader: ; preds = %_RNvXs_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterNtNtCslbrwWrVtb7E_5uu_tr9operation8SequenceEENtNtNtB8_6traits8iterator8Iterator4nextB1B_.exit.lr.ph
  %i.dp = icmp eq i64 %.sroa.5254.0.copyload.fr, 1
  %8 = insertelement <2 x ptr> poison, ptr %.sroa.8.0.copyload220, i64 0
  %9 = insertelement <2 x ptr> %8, ptr %i.dj, i64 1
  %i.dq = getelementptr inbounds nuw i8, ptr %.sroa.4253.0.copyload, i64 16
  %10 = insertelement <2 x ptr> poison, ptr %.sroa.4253.0.copyload, i64 0
  %11 = insertelement <2 x ptr> %10, ptr %i.y, i64 1
  br label %_RNvXs_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterNtNtCslbrwWrVtb7E_5uu_tr9operation8SequenceEENtNtNtB8_6traits8iterator8Iterator4nextB1B_.exit

_RNvXs_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterNtNtCslbrwWrVtb7E_5uu_tr9operation8SequenceEENtNtNtB8_6traits8iterator8Iterator4nextB1B_.exit.us: ; preds = %_RNvXs_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterNtNtCslbrwWrVtb7E_5uu_tr9operation8SequenceEENtNtNtB8_6traits8iterator8Iterator4nextB1B_.exit.lr.ph, %bb.m
  %.sroa.8246.0277.us = phi i64 [ %i.du, %bb.m ], [ 0, %_RNvXs_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterNtNtCslbrwWrVtb7E_5uu_tr9operation8SequenceEENtNtNtB8_6traits8iterator8Iterator4nextB1B_.exit.lr.ph ] ; 3 uses
  %.sroa.0244.0276.us = phi ptr [ %i.dv, %bb.m ], [ %.sroa.8.0.copyload220, %_RNvXs_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterNtNtCslbrwWrVtb7E_5uu_tr9operation8SequenceEENtNtNtB8_6traits8iterator8Iterator4nextB1B_.exit.lr.ph ] ; 2 uses
  %i.dr = load i8, ptr %.sroa.0244.0276.us, align 8, !range !15, !noundef !11
  %i.ds = icmp eq i8 %i.dr, 4
  br i1 %i.ds, label %bb.k, label %bb.m

bb.k:                                             ; preds = %_RNvXs_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterNtNtCslbrwWrVtb7E_5uu_tr9operation8SequenceEENtNtNtB8_6traits8iterator8Iterator4nextB1B_.exit.us
  %.not146.us = icmp eq i64 %.sroa.8246.0277.us, 0
  br i1 %.not146.us, label %_RNvXs_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterNtNtCslbrwWrVtb7E_5uu_tr9operation8SequenceEENtNtNtB8_6traits8iterator8Iterator4nextB1B_.exit197.thread, label %bb.l

bb.l:                                             ; preds = %bb.k
  store ptr %.sroa.8.0.copyload220, ptr %i.dl, align 8
  store ptr %i.dj, ptr %.sroa.499.0..sroa_idx, align 8
  store i64 %.sroa.8246.0277.us, ptr %.sroa.5100.0..sroa_idx, align 8
  store ptr null, ptr %i.c, align 8
  store ptr null, ptr %i.dm, align 8
  %i.dt = call fastcc noundef i64 @_RINvMsg_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters7flattenINtB6_13FlattenCompatINtNtB8_3map3MapINtNtB8_4take4TakeINtNtNtBc_5slice4iter4IterNtNtCslbrwWrVtb7E_5uu_tr9operation8SequenceEENvMs1_B2c_B2a_7flattenEINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtNtNtBa_6traits8iterator8Iteratorp4ItemhEL_EE9iter_foldjINvNvXsi_B6_IBS_ppEB3Q_5count5countB3g_EEB2e_(ptr noalias nofree noundef align 8 captures(address) dereferenceable(56) %i.c) #34 ; 0 uses
  br label %_RNvXs_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterNtNtCslbrwWrVtb7E_5uu_tr9operation8SequenceEENtNtNtB8_6traits8iterator8Iterator4nextB1B_.exit197.thread

bb.m:                                             ; preds = %_RNvXs_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterNtNtCslbrwWrVtb7E_5uu_tr9operation8SequenceEENtNtNtB8_6traits8iterator8Iterator4nextB1B_.exit.us
  %i.du = add nuw nsw i64 %.sroa.8246.0277.us, 1
  %i.dv = getelementptr inbounds nuw i8, ptr %.sroa.0244.0276.us, i64 16 ; 2 uses
  %i.dw = icmp eq ptr %i.dv, %i.dj
  br i1 %i.dw, label %_RNvXs_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterNtNtCslbrwWrVtb7E_5uu_tr9operation8SequenceEENtNtNtB8_6traits8iterator8Iterator4nextB1B_.exit.thread, label %_RNvXs_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterNtNtCslbrwWrVtb7E_5uu_tr9operation8SequenceEENtNtNtB8_6traits8iterator8Iterator4nextB1B_.exit.us

bb.n:                                             ; preds = %_RINvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB7_4IterNtNtCslbrwWrVtb7E_5uu_tr9operation8SequenceENtNtNtNtBb_4iter6traits8iterator8Iterator3anyNCNvMs1_BS_BQ_20solve_set_characterss_0EBU_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p)
  %i.dx = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  store i8 0, ptr %i.dx, align 8
  %.sroa.419.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.p, i64 9
  store i8 0, ptr %.sroa.419.0..sroa_idx, align 1
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.p, i64 10
  store i8 -1, ptr %.sroa.5.0..sroa_idx, align 2
  store ptr %i.s, ptr %i.p, align 8
  call fastcc void @_RNvXNtNtCs7tKScEop1B6_5alloc3vec21spec_from_iter_nestedINtB4_3VechEINtB2_18SpecFromIterNestedhINtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters6filter6FilterINtNtNtB1D_3ops5range14RangeInclusivehENCNvMs1_NtCslbrwWrVtb7E_5uu_tr9operationNtB39_8Sequence20solve_set_characterss0_0EE9from_iterB3b_(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %i.q, ptr noalias nofree noundef align 8 captures(address) dereferenceable(16) %i.p) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p)
  %.val162 = load i64, ptr %i.s, align 8, !range !12, !noundef !11 ; 2 uses
  %i.dy = icmp eq i64 %.val162, 0
  br i1 %i.dy, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc3vec3VechEECslbrwWrVtb7E_5uu_tr.exit, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.dz = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %.val163 = load ptr, ptr %i.dz, align 8, !nonnull !11, !noundef !11
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.val163, i64 noundef %.val162, i64 noundef range(i64 1, -9223372036854775807) 1) #32
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc3vec3VechEECslbrwWrVtb7E_5uu_tr.exit

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc3vec3VechEECslbrwWrVtb7E_5uu_tr.exit: ; preds = %bb.n, %bb.o
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.s, ptr noundef nonnull align 8 dereferenceable(24) %i.q, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q)
  br label %bb.i

_RNvXs_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterNtNtCslbrwWrVtb7E_5uu_tr9operation8SequenceEENtNtNtB8_6traits8iterator8Iterator4nextB1B_.exit: ; preds = %_RNvXs_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterNtNtCslbrwWrVtb7E_5uu_tr9operation8SequenceEENtNtNtB8_6traits8iterator8Iterator4nextB1B_.exit.preheader, %.loopexit
  %.sroa.8246.0277 = phi i64 [ %i.eb, %.loopexit ], [ 0, %_RNvXs_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterNtNtCslbrwWrVtb7E_5uu_tr9operation8SequenceEENtNtNtB8_6traits8iterator8Iterator4nextB1B_.exit.preheader ] ; 3 uses
  %.sroa.0244.0276 = phi ptr [ %i.ea, %.loopexit ], [ %.sroa.8.0.copyload220, %_RNvXs_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterNtNtCslbrwWrVtb7E_5uu_tr9operation8SequenceEENtNtNtB8_6traits8iterator8Iterator4nextB1B_.exit.preheader ] ; 2 uses
  %i.ea = getelementptr inbounds nuw i8, ptr %.sroa.0244.0276, i64 16 ; 2 uses
  %i.eb = add nuw nsw i64 %.sroa.8246.0277, 1
  %i.ec = load i8, ptr %.sroa.0244.0276, align 8, !range !15, !noundef !11
  %i.ed = icmp eq i8 %i.ec, 4
  br i1 %i.ed, label %bb.bc, label %.loopexit

_RNvXs_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterNtNtCslbrwWrVtb7E_5uu_tr9operation8SequenceEENtNtNtB8_6traits8iterator8Iterator4nextB1B_.exit.thread: ; preds = %.loopexit, %bb.m, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc3vec3VecNtNtCslbrwWrVtb7E_5uu_tr9operation8SequenceEEB1c_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  store ptr %.sroa.8.0.copyload220, ptr %i.k, align 8
  %.sroa.4111.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  store ptr %i.dj, ptr %.sroa.4111.0..sroa_idx, align 8
  %.sroa.5112.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  store ptr null, ptr %.sroa.5112.0..sroa_idx, align 8
  %.sroa.7114.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 32
  store ptr null, ptr %.sroa.7114.0..sroa_idx, align 8
  call fastcc void @_RNvXNtNtCs7tKScEop1B6_5alloc3vec21spec_from_iter_nestedINtB4_3VechEINtB2_18SpecFromIterNestedhINtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters7flatten7FlatMapINtNtNtB1D_5slice4iter4IterNtNtCslbrwWrVtb7E_5uu_tr9operation8SequenceEINtNtB6_5boxed3BoxDNtNtNtB1B_6traits8iterator8Iteratorp4ItemhEL_ENvMs1_B2T_B2R_7flattenEE9from_iterB2V_(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %i.l, ptr noalias nofree noundef align 8 captures(address) dereferenceable(48) %i.k) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  %i.ee = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %.val174 = load ptr, ptr %i.ee, align 8, !nonnull !11, !noundef !11 ; 2 uses
  %i.ef = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %.val175 = load i64, ptr %i.ef, align 8, !noundef !11 ; 14 uses
  call fastcc void @_RNvXsb_NtCs7tKScEop1B6_5alloc3vecINtB5_3VechENtNtCs6JMX4GRUq9U_4core5clone5Clone5cloneCslbrwWrVtb7E_5uu_tr(ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.j, ptr nonnull %.val174, i64 %.val175) #32
  %i.eg = getelementptr inbounds nuw i8, ptr %i.j, i64 8 ; 3 uses
  %i.eh = load ptr, ptr %i.eg, align 8, !nonnull !11, !noundef !11 ; 2 uses
  %i.ei = getelementptr inbounds nuw i8, ptr %i.j, i64 16 ; 3 uses
  %i.ej = load i64, ptr %i.ei, align 8, !noundef !11 ; 4 uses
  %i.ek = icmp ult i64 %i.ej, 2
  br i1 %i.ek, label %bb.s, label %bb.p, !prof !837

bb.p:                                             ; preds = %_RNvXs_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterNtNtCslbrwWrVtb7E_5uu_tr9operation8SequenceEENtNtNtB8_6traits8iterator8Iterator4nextB1B_.exit.thread
  %i.el = icmp ult i64 %i.ej, 21
  br i1 %i.el, label %bb.r, label %bb.q, !prof !837

bb.q:                                             ; preds = %bb.p
  call void @_RINvNtNtNtCs6JMX4GRUq9U_4core5slice4sort8unstable7ipnsorthNvYhNtNtB8_3cmp10PartialOrd2ltECslbrwWrVtb7E_5uu_tr(ptr noalias nofree noundef nonnull %i.eh, i64 noundef %i.ej, ptr noalias nofree noundef nonnull %i.a) #31
  br label %bb.s

bb.r:                                             ; preds = %bb.p
  call fastcc void @_RINvNtNtNtNtCs6JMX4GRUq9U_4core5slice4sort6shared9smallsort25insertion_sort_shift_lefthNvYhNtNtBa_3cmp10PartialOrd2ltECslbrwWrVtb7E_5uu_tr(ptr noalias nofree noundef nonnull %i.eh, i64 noundef %i.ej, i64 noundef 1) #32
  br label %bb.s

bb.s:                                             ; preds = %_RNvXs_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterNtNtCslbrwWrVtb7E_5uu_tr9operation8SequenceEENtNtNtB8_6traits8iterator8Iterator4nextB1B_.exit.thread, %bb.r, %bb.q
  call fastcc void @_RINvMs_NtCs7tKScEop1B6_5alloc3vecINtB5_3VechE8dedup_byNCNvMs5_B5_Bv_5dedup0ECslbrwWrVtb7E_5uu_tr(ptr noalias nofree noundef align 8 dereferenceable(24) %i.j) #32
  %.not.not.not.i184.not311 = icmp eq i64 %.sroa.5254.0.copyload.fr, 0
  br i1 %.not.not.not.i184.not311, label %_RINvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB7_4IterNtNtCslbrwWrVtb7E_5uu_tr9operation8SequenceENtNtNtNtBb_4iter6traits8iterator8Iterator3anyNCNvMs1_BS_BQ_20solve_set_characterss3_0EBU_.exit, label %.lr.ph312

bb.t:                                             ; preds = %.lr.ph312
  %i.em = getelementptr inbounds nuw i8, ptr %i.en, i64 16 ; 2 uses
  %.not.not.not.i184.not = icmp eq ptr %i.em, %i.y
  br i1 %.not.not.not.i184.not, label %_RINvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB7_4IterNtNtCslbrwWrVtb7E_5uu_tr9operation8SequenceENtNtNtNtBb_4iter6traits8iterator8Iterator3anyNCNvMs1_BS_BQ_20solve_set_characterss3_0EBU_.exit, label %.lr.ph312

.lr.ph312:                                        ; preds = %bb.s, %bb.t
  %i.en = phi ptr [ %i.em, %bb.t ], [ %.sroa.4253.0.copyload, %bb.s ] ; 2 uses
  %.val.i185 = load i8, ptr %i.en, align 8, !range !15, !noalias !838, !noundef !11
  %i.eo = icmp eq i8 %.val.i185, 4
  br i1 %i.eo, label %bb.u, label %bb.t

_RINvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB7_4IterNtNtCslbrwWrVtb7E_5uu_tr9operation8SequenceENtNtNtNtBb_4iter6traits8iterator8Iterator3anyNCNvMs1_BS_BQ_20solve_set_characterss3_0EBU_.exit: ; preds = %bb.t, %bb.s
  %i.ep = icmp sgt i64 %.val175, -1
  call void @llvm.assume(i1 %i.ep)
  %i.eq = load i64, ptr %i.cx, align 8, !noundef !11 ; 3 uses
  %i.er = icmp sgt i64 %i.eq, -1
  call void @llvm.assume(i1 %i.er)
  %i.es = icmp samesign ult i64 %.val175, %i.eq
  br i1 %i.es, label %bb.v, label %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE8truncateCslbrwWrVtb7E_5uu_tr.exit

bb.u:                                             ; preds = %.lr.ph312
  br i1 %7, label %bb.aa, label %bb.z

bb.v:                                             ; preds = %_RINvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB7_4IterNtNtCslbrwWrVtb7E_5uu_tr9operation8SequenceENtNtNtNtBb_4iter6traits8iterator8Iterator3anyNCNvMs1_BS_BQ_20solve_set_characterss3_0EBU_.exit
  br i1 %6, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.an, %bb.ah, %bb.ab, %bb.v
  br i1 %i.dk, label %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE8truncateCslbrwWrVtb7E_5uu_tr.exit, label %bb.ao

bb.x:                                             ; preds = %bb.ah, %bb.ac, %bb.v
  %i.et = phi i64 [ %i.fh, %bb.ah ], [ %i.ew, %bb.ac ], [ %i.eq, %bb.v ]
  %i.eu = icmp samesign ugt i64 %.val175, %i.et
  br i1 %i.eu, label %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE8truncateCslbrwWrVtb7E_5uu_tr.exit, label %bb.y

bb.y:                                             ; preds = %bb.x
  store i64 %.val175, ptr %i.cx, align 8, !alias.scope !839
  br label %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE8truncateCslbrwWrVtb7E_5uu_tr.exit

bb.z:                                             ; preds = %bb.u
  %i.ev = icmp sgt i64 %.val175, -1
  call void @llvm.assume(i1 %i.ev)
  %i.ew = load i64, ptr %i.cx, align 8, !noundef !11 ; 3 uses
  %i.ex = icmp sgt i64 %i.ew, -1
  call void @llvm.assume(i1 %i.ex)
  %i.ey = icmp samesign ult i64 %.val175, %i.ew
  br i1 %i.ey, label %bb.ab, label %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE8truncateCslbrwWrVtb7E_5uu_tr.exit

bb.aa:                                            ; preds = %bb.u
  br i1 %5, label %bb.ag, label %bb.af

bb.ab:                                            ; preds = %bb.z
  br i1 %6, label %bb.ac, label %bb.w

bb.ac:                                            ; preds = %bb.ab
  br i1 %5, label %bb.ad, label %bb.x

bb.ad:                                            ; preds = %bb.an, %bb.ac
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  store ptr %.sroa.4253.0.copyload, ptr %i.h, align 8
  %.sroa.4131.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  store ptr %i.y, ptr %.sroa.4131.0..sroa_idx, align 8
  %.sroa.5132.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  store ptr null, ptr %.sroa.5132.0..sroa_idx, align 8
  %.sroa.7134.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 32
  store ptr null, ptr %.sroa.7134.0..sroa_idx, align 8
  %i.ez = getelementptr inbounds nuw i8, ptr %i.h, i64 48
  store i64 %.val175, ptr %i.ez, align 8
  call fastcc void @_RNvXNtNtCs7tKScEop1B6_5alloc3vec21spec_from_iter_nestedINtB4_3VechEINtB2_18SpecFromIterNestedhINtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters4take4TakeINtNtB1z_7flatten7FlatMapINtNtNtB1D_5slice4iter4IterNtNtCslbrwWrVtb7E_5uu_tr9operation8SequenceEINtNtB6_5boxed3BoxDNtNtNtB1B_6traits8iterator8Iteratorp4ItemhEL_ENvMs1_B3c_B3a_7flattenEEE9from_iterB3e_(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %i.i, ptr noalias nofree noundef align 8 captures(address) dereferenceable(56) %i.h) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  %i.fa = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store i8 0, ptr %i.fa, align 8
  %.sroa.465.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 9
  store i8 0, ptr %.sroa.465.0..sroa_idx, align 1
  %.sroa.566.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 10
  store i8 -1, ptr %.sroa.566.0..sroa_idx, align 2
  store ptr %i.i, ptr %i.f, align 8
  call fastcc void @_RNvXNtNtCs7tKScEop1B6_5alloc3vec21spec_from_iter_nestedINtB4_3VechEINtB2_18SpecFromIterNestedhINtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters6filter6FilterINtNtNtB1D_3ops5range14RangeInclusivehENCNvMs1_NtCslbrwWrVtb7E_5uu_tr9operationNtB39_8Sequence20solve_set_characterss4_0EE9from_iterB3b_(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %i.g, ptr noalias nofree noundef align 8 captures(address) dereferenceable(16) %i.f) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  %.val160 = load i64, ptr %i.s, align 8, !range !12, !noundef !11 ; 2 uses
  %i.fb = icmp eq i64 %.val160, 0
  br i1 %i.fb, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc3vec3VechEECslbrwWrVtb7E_5uu_tr.exit186, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.fc = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %.val161 = load ptr, ptr %i.fc, align 8, !nonnull !11, !noundef !11
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.val161, i64 noundef %.val160, i64 noundef range(i64 1, -9223372036854775807) 1) #32
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc3vec3VechEECslbrwWrVtb7E_5uu_tr.exit186

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc3vec3VechEECslbrwWrVtb7E_5uu_tr.exit186: ; preds = %bb.ad, %bb.ae
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.s, ptr noundef nonnull align 8 dereferenceable(24) %i.g, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  %i.fd = load i64, ptr %i.ei, align 8, !noundef !11 ; 2 uses
  %i.fe = icmp sgt i64 %i.fd, -1
  call void @llvm.assume(i1 %i.fe)
  %i.ff = icmp samesign ugt i64 %i.fd, 1
  br i1 %i.ff, label %bb.au, label %bb.ar

bb.af:                                            ; preds = %bb.aa
  %i.fg = icmp sgt i64 %.val175, -1
  call void @llvm.assume(i1 %i.fg)
  %i.fh = load i64, ptr %i.cx, align 8, !noundef !11 ; 3 uses
  %i.fi = icmp sgt i64 %i.fh, -1
  call void @llvm.assume(i1 %i.fi)
  %i.fj = icmp samesign ult i64 %.val175, %i.fh
  br i1 %i.fj, label %bb.ah, label %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE8truncateCslbrwWrVtb7E_5uu_tr.exit

bb.ag:                                            ; preds = %bb.aa
  %i.fk = load i64, ptr %i.ei, align 8, !noundef !11 ; 2 uses
  %i.fl = icmp sgt i64 %i.fk, -1
  call void @llvm.assume(i1 %i.fl)
  %i.fm = icmp samesign ugt i64 %i.fk, 1
  br i1 %i.fm, label %bb.az, label %bb.al

bb.ah:                                            ; preds = %bb.af
  br i1 %6, label %bb.x, label %bb.w

_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE8truncateCslbrwWrVtb7E_5uu_tr.exit: ; preds = %bb.y, %bb.x, %bb.ao, %bb.ap, %bb.w, %_RINvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB7_4IterNtNtCslbrwWrVtb7E_5uu_tr9operation8SequenceENtNtNtNtBb_4iter6traits8iterator8Iterator3anyNCNvMs1_BS_BQ_20solve_set_characterss3_0EBU_.exit, %bb.z, %bb.af, %bb.am, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc3vec3VechEECslbrwWrVtb7E_5uu_tr.exit190
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.e, ptr noundef nonnull align 8 dereferenceable(24) %i.s, i64 24, i1 false)
  %i.fn = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.fn, ptr noundef nonnull align 8 dereferenceable(24) %i.l, i64 24, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(48) %i.e, i64 48, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  %.val158 = load i64, ptr %i.j, align 8, !range !12, !noundef !11 ; 2 uses
  %i.fo = icmp eq i64 %.val158, 0
  br i1 %i.fo, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc3vec3VechEECslbrwWrVtb7E_5uu_tr.exit187, label %bb.ai

bb.ai:                                            ; preds = %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE8truncateCslbrwWrVtb7E_5uu_tr.exit
  %.val159 = load ptr, ptr %i.eg, align 8, !nonnull !11, !noundef !11
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.val159, i64 noundef %.val158, i64 noundef range(i64 1, -9223372036854775807) 1) #32
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc3vec3VechEECslbrwWrVtb7E_5uu_tr.exit187

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc3vec3VechEECslbrwWrVtb7E_5uu_tr.exit187: ; preds = %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE8truncateCslbrwWrVtb7E_5uu_tr.exit, %bb.ai
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s)
  %i.fp = icmp eq i64 %.sroa.0217.0.copyload218, 0
  br i1 %i.fp, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc3vec3VecNtNtCslbrwWrVtb7E_5uu_tr9operation8SequenceEEB1c_.exit188, label %bb.aj

bb.aj:                                            ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc3vec3VechEECslbrwWrVtb7E_5uu_tr.exit187
  %i.fq = shl nuw i64 %.sroa.0217.0.copyload218, 4
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.8.0.copyload220, i64 noundef %i.fq, i64 noundef range(i64 1, -9223372036854775807) 8) #32
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc3vec3VecNtNtCslbrwWrVtb7E_5uu_tr9operation8SequenceEEB1c_.exit188

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc3vec3VecNtNtCslbrwWrVtb7E_5uu_tr9operation8SequenceEEB1c_.exit188: ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc3vec3VechEECslbrwWrVtb7E_5uu_tr.exit187, %bb.aj
  %i.fr = icmp eq i64 %.sroa.0252.0.copyload, 0
  br i1 %i.fr, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc3vec3VecNtNtCslbrwWrVtb7E_5uu_tr9operation8SequenceEEB1c_.exit189, label %bb.ak

bb.ak:                                            ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc3vec3VecNtNtCslbrwWrVtb7E_5uu_tr9operation8SequenceEEB1c_.exit188
  %i.fs = shl nuw i64 %.sroa.0252.0.copyload, 4
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.4253.0.copyload, i64 noundef %i.fs, i64 noundef range(i64 1, -9223372036854775807) 8) #32
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc3vec3VecNtNtCslbrwWrVtb7E_5uu_tr9operation8SequenceEEB1c_.exit189

bb.al:                                            ; preds = %bb.ag
  %i.ft = icmp sgt i64 %.val175, -1
  call void @llvm.assume(i1 %i.ft)
  %i.fu = icmp samesign ugt i64 %.val175, %i.cy
  br i1 %i.fu, label %bb.az, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.fv = load i64, ptr %i.cx, align 8, !noundef !11 ; 2 uses
  %i.fw = icmp sgt i64 %i.fv, -1
  call void @llvm.assume(i1 %i.fw)
  %i.fx = icmp samesign ult i64 %.val175, %i.fv
  br i1 %i.fx, label %bb.an, label %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE8truncateCslbrwWrVtb7E_5uu_tr.exit

bb.an:                                            ; preds = %bb.am
  br i1 %6, label %bb.ad, label %bb.w

bb.ao:                                            ; preds = %bb.w
  %i.fy = getelementptr i8, ptr %i.dj, i64 -16
  %.sroa.0136.0.copyload = load i8, ptr %i.fy, align 8
  %i.fz = icmp eq i8 %.sroa.0136.0.copyload, 4
  br i1 %i.fz, label %bb.ap, label %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE8truncateCslbrwWrVtb7E_5uu_tr.exit

bb.ap:                                            ; preds = %bb.ao
  %.sroa.4137.0..sroa.072.0..sroa_idx = getelementptr i8, ptr %i.dj, i64 -15
  %.sroa.4137.0.copyload = load i8, ptr %.sroa.4137.0..sroa.072.0..sroa_idx, align 1
  switch i8 %.sroa.4137.0.copyload, label %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE8truncateCslbrwWrVtb7E_5uu_tr.exit [
    i8 6, label %bb.aq
    i8 10, label %bb.aq
  ]

bb.aq:                                            ; preds = %bb.ap, %bb.ap
  %i.ga = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 9, ptr %i.ga, align 8
  store i64 -1, ptr %0, align 8
  br label %bb.aw

bb.ar:                                            ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc3vec3VechEECslbrwWrVtb7E_5uu_tr.exit186
  %i.gb = load i64, ptr %i.cx, align 8, !noundef !11 ; 2 uses
  %i.gc = icmp sgt i64 %i.gb, -1
  call void @llvm.assume(i1 %i.gc)
  %i.gd = icmp samesign ugt i64 %i.gb, %.val175
  br i1 %i.gd, label %bb.au, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %.val156 = load i64, ptr %i.i, align 8, !range !12, !noundef !11 ; 2 uses
  %i.ge = icmp eq i64 %.val156, 0
  br i1 %i.ge, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc3vec3VechEECslbrwWrVtb7E_5uu_tr.exit190, label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.gf = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %.val157 = load ptr, ptr %i.gf, align 8, !nonnull !11, !noundef !11
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.val157, i64 noundef %.val156, i64 noundef range(i64 1, -9223372036854775807) 1) #32
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc3vec3VechEECslbrwWrVtb7E_5uu_tr.exit190

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc3vec3VechEECslbrwWrVtb7E_5uu_tr.exit190: ; preds = %bb.as, %bb.at
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  br label %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE8truncateCslbrwWrVtb7E_5uu_tr.exit

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc3vec3VecNtNtCslbrwWrVtb7E_5uu_tr9operation8SequenceEEB1c_.exit189: ; preds = %bb.b, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc3vec3VecNtNtCslbrwWrVtb7E_5uu_tr9operation8SequenceEEB1c_.exit198, %bb.bi, %bb.ak, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc3vec3VecNtNtCslbrwWrVtb7E_5uu_tr9operation8SequenceEEB1c_.exit188
  ret void

bb.au:                                            ; preds = %bb.ar, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc3vec3VechEECslbrwWrVtb7E_5uu_tr.exit186
  %i.gg = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 10, ptr %i.gg, align 8
  store i64 -1, ptr %0, align 8
  %.val154 = load i64, ptr %i.i, align 8, !range !12, !noundef !11 ; 2 uses
  %i.gh = icmp eq i64 %.val154, 0
  br i1 %i.gh, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc3vec3VechEECslbrwWrVtb7E_5uu_tr.exit191, label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.gi = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %.val155 = load ptr, ptr %i.gi, align 8, !nonnull !11, !noundef !11
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.val155, i64 noundef %.val154, i64 noundef range(i64 1, -9223372036854775807) 1) #32
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc3vec3VechEECslbrwWrVtb7E_5uu_tr.exit191

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc3vec3VechEECslbrwWrVtb7E_5uu_tr.exit191: ; preds = %bb.au, %bb.av
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  br label %bb.aw

bb.aw:                                            ; preds = %bb.aq, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc3vec3VechEECslbrwWrVtb7E_5uu_tr.exit191, %bb.az
  %.val152 = load i64, ptr %i.j, align 8, !range !12, !noundef !11 ; 2 uses
  %i.gj = icmp eq i64 %.val152, 0
  br i1 %i.gj, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc3vec3VechEECslbrwWrVtb7E_5uu_tr.exit192, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %.val153 = load ptr, ptr %i.eg, align 8, !nonnull !11, !noundef !11
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.val153, i64 noundef %.val152, i64 noundef range(i64 1, -9223372036854775807) 1) #32
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc3vec3VechEECslbrwWrVtb7E_5uu_tr.exit192

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc3vec3VechEECslbrwWrVtb7E_5uu_tr.exit192: ; preds = %bb.aw, %bb.ax
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  %.val150 = load i64, ptr %i.l, align 8, !range !12, !noundef !11 ; 2 uses
  %i.gk = icmp eq i64 %.val150, 0
  br i1 %i.gk, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc3vec3VechEECslbrwWrVtb7E_5uu_tr.exit193, label %bb.ay

bb.ay:                                            ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc3vec3VechEECslbrwWrVtb7E_5uu_tr.exit192
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.val174, i64 noundef %.val150, i64 noundef range(i64 1, -9223372036854775807) 1) #32
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc3vec3VechEECslbrwWrVtb7E_5uu_tr.exit193

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc3vec3VechEECslbrwWrVtb7E_5uu_tr.exit193: ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc3vec3VechEECslbrwWrVtb7E_5uu_tr.exit192, %bb.ay
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  br label %bb.ba

bb.az:                                            ; preds = %bb.al, %bb.ag
  %i.gl = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 10, ptr %i.gl, align 8
  store i64 -1, ptr %0, align 8
  br label %bb.aw

bb.ba:                                            ; preds = %_RNvXs_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterNtNtCslbrwWrVtb7E_5uu_tr9operation8SequenceEENtNtNtB8_6traits8iterator8Iterator4nextB1B_.exit197.thread, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc3vec3VechEECslbrwWrVtb7E_5uu_tr.exit193
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o)
  %.val = load i64, ptr %i.s, align 8, !range !12, !noundef !11 ; 2 uses
  %i.gm = icmp eq i64 %.val, 0
  br i1 %i.gm, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc3vec3VechEECslbrwWrVtb7E_5uu_tr.exit194, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  %i.gn = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %.val149 = load ptr, ptr %i.gn, align 8, !nonnull !11, !noundef !11
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.val149, i64 noundef %.val, i64 noundef range(i64 1, -9223372036854775807) 1) #32
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc3vec3VechEECslbrwWrVtb7E_5uu_tr.exit194

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc3vec3VechEECslbrwWrVtb7E_5uu_tr.exit194: ; preds = %bb.ba, %bb.bb
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s)
  br label %bb.be

.loopexit:                                        ; preds = %bb.bh, %_RNvXs_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterNtNtCslbrwWrVtb7E_5uu_tr9operation8SequenceEENtNtNtB8_6traits8iterator8Iterator4nextB1B_.exit197.lr.ph, %_RNvXs_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterNtNtCslbrwWrVtb7E_5uu_tr9operation8SequenceEENtNtNtB8_6traits8iterator8Iterator4nextB1B_.exit197.lr.ph.thread, %_RNvXs_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterNtNtCslbrwWrVtb7E_5uu_tr9operation8SequenceEENtNtNtB8_6traits8iterator8Iterator4nextB1B_.exit
  %i.go = icmp eq ptr %i.ea, %i.dj
  br i1 %i.go, label %_RNvXs_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterNtNtCslbrwWrVtb7E_5uu_tr9operation8SequenceEENtNtNtB8_6traits8iterator8Iterator4nextB1B_.exit.thread, label %_RNvXs_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterNtNtCslbrwWrVtb7E_5uu_tr9operation8SequenceEENtNtNtB8_6traits8iterator8Iterator4nextB1B_.exit

bb.bc:                                            ; preds = %_RNvXs_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterNtNtCslbrwWrVtb7E_5uu_tr9operation8SequenceEENtNtNtB8_6traits8iterator8Iterator4nextB1B_.exit
  %.not146 = icmp eq i64 %.sroa.8246.0277, 0
  br i1 %.not146, label %_RNvXs_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterNtNtCslbrwWrVtb7E_5uu_tr9operation8SequenceEENtNtNtB8_6traits8iterator8Iterator4nextB1B_.exit197.lr.ph.thread, label %_RNvXs_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterNtNtCslbrwWrVtb7E_5uu_tr9operation8SequenceEENtNtNtB8_6traits8iterator8Iterator4nextB1B_.exit197.lr.ph

_RNvXs_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterNtNtCslbrwWrVtb7E_5uu_tr9operation8SequenceEENtNtNtB8_6traits8iterator8Iterator4nextB1B_.exit197.lr.ph: ; preds = %bb.bc
  store <2 x ptr> %9, ptr %i.dl, align 8
  store i64 %.sroa.8246.0277, ptr %.sroa.5100.0..sroa_idx, align 8
  store ptr null, ptr %i.c, align 8
  store ptr null, ptr %i.dm, align 8
  %i.gp = call fastcc noundef i64 @_RINvMsg_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters7flattenINtB6_13FlattenCompatINtNtB8_3map3MapINtNtB8_4take4TakeINtNtNtBc_5slice4iter4IterNtNtCslbrwWrVtb7E_5uu_tr9operation8SequenceEENvMs1_B2c_B2a_7flattenEINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtNtNtBa_6traits8iterator8Iteratorp4ItemhEL_EE9iter_foldjINvNvXsi_B6_IBS_ppEB3Q_5count5countB3g_EEB2e_(ptr noalias nofree noundef align 8 captures(address) dereferenceable(56) %i.c) #34 ; 2 uses
  %i.gq = load i8, ptr %.sroa.4253.0.copyload, align 8, !range !15, !noundef !11
  %i.gr = icmp eq i8 %i.gq, 4
  %i.gs = icmp eq i64 %i.gp, 0
  %or.cond = and i1 %i.gr, %i.gs
  br i1 %or.cond, label %.loopexit, label %bb.bd

_RNvXs_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterNtNtCslbrwWrVtb7E_5uu_tr9operation8SequenceEENtNtNtB8_6traits8iterator8Iterator4nextB1B_.exit197.lr.ph.thread: ; preds = %bb.bc
  %i.gt = load i8, ptr %.sroa.4253.0.copyload, align 8, !range !15, !noundef !11
  %i.gu = icmp eq i8 %i.gt, 4
  br i1 %i.gu, label %.loopexit, label %bb.bd

bb.bd:                                            ; preds = %_RNvXs_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterNtNtCslbrwWrVtb7E_5uu_tr9operation8SequenceEENtNtNtB8_6traits8iterator8Iterator4nextB1B_.exit197.lr.ph.thread, %_RNvXs_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterNtNtCslbrwWrVtb7E_5uu_tr9operation8SequenceEENtNtNtB8_6traits8iterator8Iterator4nextB1B_.exit197.lr.ph
  %.sroa.024.0299 = phi i64 [ 0, %_RNvXs_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterNtNtCslbrwWrVtb7E_5uu_tr9operation8SequenceEENtNtNtB8_6traits8iterator8Iterator4nextB1B_.exit197.lr.ph.thread ], [ %i.gp, %_RNvXs_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterNtNtCslbrwWrVtb7E_5uu_tr9operation8SequenceEENtNtNtB8_6traits8iterator8Iterator4nextB1B_.exit197.lr.ph ]
  br i1 %i.dp, label %_RNvXs_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterNtNtCslbrwWrVtb7E_5uu_tr9operation8SequenceEENtNtNtB8_6traits8iterator8Iterator4nextB1B_.exit197.thread, label %_RNvXs_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterNtNtCslbrwWrVtb7E_5uu_tr9operation8SequenceEENtNtNtB8_6traits8iterator8Iterator4nextB1B_.exit197

_RNvXs_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterNtNtCslbrwWrVtb7E_5uu_tr9operation8SequenceEENtNtNtB8_6traits8iterator8Iterator4nextB1B_.exit197: ; preds = %bb.bd, %bb.bg
  %.sroa.8249.0274 = phi i64 [ %i.gw, %bb.bg ], [ 1, %bb.bd ] ; 2 uses
  %.sroa.0247.0273 = phi ptr [ %i.gv, %bb.bg ], [ %i.dq, %bb.bd ] ; 2 uses
  %i.gv = getelementptr inbounds nuw i8, ptr %.sroa.0247.0273, i64 16 ; 2 uses
  %i.gw = add nuw nsw i64 %.sroa.8249.0274, 1
  %i.gx = load i8, ptr %.sroa.0247.0273, align 8, !range !15, !noundef !11
  %i.gy = icmp eq i8 %i.gx, 4
  br i1 %i.gy, label %bb.bh, label %bb.bg

_RNvXs_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterNtNtCslbrwWrVtb7E_5uu_tr9operation8SequenceEENtNtNtB8_6traits8iterator8Iterator4nextB1B_.exit197.thread: ; preds = %bb.bd, %bb.bg, %bb.k, %bb.l
  %i.gz = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 8, ptr %i.gz, align 8
  store i64 -1, ptr %0, align 8
  br label %bb.ba

bb.be:                                            ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc3vec3VechEECslbrwWrVtb7E_5uu_tr.exit194, %bb.h, %bb.g
  %.sroa.8.0 = phi ptr [ %.sroa.4256.0.copyload, %bb.g ], [ %.sroa.4256.0.copyload, %bb.h ], [ %.sroa.8.0.copyload220, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc3vec3VechEECslbrwWrVtb7E_5uu_tr.exit194 ]
  %.sroa.0217.0 = phi i64 [ %.sroa.0255.0.copyload, %bb.g ], [ %.sroa.0255.0.copyload, %bb.h ], [ %.sroa.0217.0.copyload218, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc3vec3VechEECslbrwWrVtb7E_5uu_tr.exit194 ] ; 2 uses
  %i.ha = icmp eq i64 %.sroa.0217.0, 0
  br i1 %i.ha, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc3vec3VecNtNtCslbrwWrVtb7E_5uu_tr9operation8SequenceEEB1c_.exit198, label %bb.bf

bb.bf:                                            ; preds = %bb.be
  %i.hb = shl nuw i64 %.sroa.0217.0, 4
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.8.0, i64 noundef %i.hb, i64 noundef range(i64 1, -9223372036854775807) 8) #32
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc3vec3VecNtNtCslbrwWrVtb7E_5uu_tr9operation8SequenceEEB1c_.exit198

bb.bg:                                            ; preds = %bb.bh, %_RNvXs_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterNtNtCslbrwWrVtb7E_5uu_tr9operation8SequenceEENtNtNtB8_6traits8iterator8Iterator4nextB1B_.exit197
  %i.hc = icmp eq ptr %i.gv, %i.y
  br i1 %i.hc, label %_RNvXs_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterNtNtCslbrwWrVtb7E_5uu_tr9operation8SequenceEENtNtNtB8_6traits8iterator8Iterator4nextB1B_.exit197.thread, label %_RNvXs_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterNtNtCslbrwWrVtb7E_5uu_tr9operation8SequenceEENtNtNtB8_6traits8iterator8Iterator4nextB1B_.exit197, !llvm.loop !833

bb.bh:                                            ; preds = %_RNvXs_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterNtNtCslbrwWrVtb7E_5uu_tr9operation8SequenceEENtNtNtB8_6traits8iterator8Iterator4nextB1B_.exit197
  store <2 x ptr> %11, ptr %i.dn, align 8
  store i64 %.sroa.8249.0274, ptr %.sroa.5109.0..sroa_idx, align 8
  store ptr null, ptr %i.b, align 8
  store ptr null, ptr %i.do, align 8
  %i.hd = call fastcc noundef i64 @_RINvMsg_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters7flattenINtB6_13FlattenCompatINtNtB8_3map3MapINtNtB8_4take4TakeINtNtNtBc_5slice4iter4IterNtNtCslbrwWrVtb7E_5uu_tr9operation8SequenceEENvMs1_B2c_B2a_7flattenEINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtNtNtBa_6traits8iterator8Iteratorp4ItemhEL_EE9iter_foldjINvNvXsi_B6_IBS_ppEB3Q_5count5countB3g_EEB2e_(ptr noalias nofree noundef align 8 captures(address) dereferenceable(56) %i.b) #34
  %i.he = icmp eq i64 %i.hd, %.sroa.024.0299
  br i1 %i.he, label %.loopexit, label %bb.bg

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc3vec3VecNtNtCslbrwWrVtb7E_5uu_tr9operation8SequenceEEB1c_.exit198: ; preds = %bb.e, %bb.be, %bb.bf, %bb.d
  %i.hf = icmp eq i64 %.sroa.0252.0.copyload, 0
  br i1 %i.hf, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc3vec3VecNtNtCslbrwWrVtb7E_5uu_tr9operation8SequenceEEB1c_.exit189, label %bb.bi

bb.bi:                                            ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc3vec3VecNtNtCslbrwWrVtb7E_5uu_tr9operation8SequenceEEB1c_.exit198
  %i.hg = shl nuw i64 %.sroa.0252.0.copyload, 4
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.4253.0.copyload, i64 noundef %i.hg, i64 noundef range(i64 1, -9223372036854775807) 8) #32
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc3vec3VecNtNtCslbrwWrVtb7E_5uu_tr9operation8SequenceEEB1c_.exit189
}

; Function Attrs: nounwind nonlazybind uwtable
define internal fastcc void @_RNvMs2_NtCslbrwWrVtb7E_5uu_tr9operationNtB5_8Sequence8from_str(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(32) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef range(i64 0, -9223372036854775808) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 6 uses
  %i.b = alloca [16 x i8], align 8                ; 3 uses
  %i.c = alloca [24 x i8], align 8                ; 6 uses
  %i.d = alloca [16 x i8], align 8                ; 12 uses
  %i.e = alloca [32 x i8], align 8                ; 11 uses
  %i.f = alloca [16 x i8], align 8                ; 4 uses
  %i.g = alloca [16 x i8], align 8                ; 4 uses
  %i.h = alloca [16 x i8], align 8                ; 6 uses
  %i.i = alloca [16 x i8], align 8                ; 4 uses
  %i.j = alloca [16 x i8], align 8                ; 4 uses
  %i.k = alloca [16 x i8], align 8                ; 6 uses
  %i.l = alloca [16 x i8], align 8                ; 4 uses
  %i.m = alloca [16 x i8], align 8                ; 4 uses
  %i.n = alloca [16 x i8], align 8                ; 6 uses
  %i.o = alloca [16 x i8], align 8                ; 4 uses
  %i.p = alloca [16 x i8], align 8                ; 4 uses
  %i.q = alloca [16 x i8], align 8                ; 6 uses
  %i.r = alloca [16 x i8], align 8                ; 3 uses
  %i.s = alloca [16 x i8], align 8                ; 3 uses
  %.sroa.0.i.i.i.i.i.i.i.i.i.i.i = alloca i32, align 4 ; 6 uses
  %i.t = alloca [16 x i8], align 8                ; 5 uses
  %i.u = alloca [24 x i8], align 8                ; 6 uses
  %i.v = alloca [16 x i8], align 8                ; 5 uses
  %i.w = alloca [16 x i8], align 8                ; 5 uses
  %i.x = alloca [8 x i8], align 8                 ; 4 uses
  %i.y = alloca [8 x i8], align 8                 ; 6 uses
  %i.z = alloca [16 x i8], align 8                ; 5 uses
  %i.aa = alloca [24 x i8], align 8               ; 8 uses
  %i.ab = alloca [24 x i8], align 8               ; 6 uses
  %i.ac = alloca [16 x i8], align 8               ; 6 uses
  %i.ad = alloca [24 x i8], align 8               ; 6 uses
  %i.ae = alloca [16 x i8], align 8               ; 6 uses
  %i.af = alloca [24 x i8], align 8               ; 6 uses
  %i.ag = alloca [16 x i8], align 8               ; 6 uses
  %i.ah = alloca [24 x i8], align 8               ; 16 uses
  %i.ai = alloca [24 x i8], align 8               ; 7 uses
  %i.aj = alloca [16 x i8], align 8               ; 5 uses
  %i.ak = alloca [16 x i8], align 8               ; 5 uses
  %i.al = alloca [8 x i8], align 8                ; 4 uses
  %i.am = alloca [8 x i8], align 8                ; 6 uses
  %i.an = alloca [24 x i8], align 8               ; 6 uses
  %i.ao = alloca [24 x i8], align 8               ; 7 uses
  %i.ap = alloca [24 x i8], align 8               ; 6 uses
  %i.aq = alloca [16 x i8], align 8               ; 15 uses
  %i.ar = alloca [48 x i8], align 8               ; 13 uses
  %i.as = alloca [16 x i8], align 8               ; 6 uses
  %i.at = alloca [32 x i8], align 8               ; 12 uses
  %i.au = alloca [32 x i8], align 8               ; 7 uses
  %i.av = alloca [24 x i8], align 8               ; 6 uses
  %i.aw = alloca [1 x i8], align 1                ; 4 uses
  %i.ax = alloca [24 x i8], align 8               ; 6 uses
  %i.ay = alloca [24 x i8], align 8               ; 10 uses
  %i.az = alloca [16 x i8], align 8               ; 6 uses
  %i.ba = alloca [16 x i8], align 8               ; 7 uses
  %i.bb = alloca [16 x i8], align 8               ; 6 uses
  %i.bc = alloca [16 x i8], align 8               ; 6 uses
  %i.bd = alloca [32 x i8], align 8               ; 10 uses
  %i.be = alloca [24 x i8], align 8               ; 6 uses
  %i.bf = alloca [16 x i8], align 8               ; 6 uses
  %i.bg = alloca [16 x i8], align 8               ; 7 uses
  %i.bh = alloca [16 x i8], align 8               ; 6 uses
  %i.bi = alloca [24 x i8], align 8               ; 6 uses
  %i.bj = alloca [16 x i8], align 8               ; 6 uses
  %i.bk = alloca [16 x i8], align 8               ; 5 uses
  %i.bl = alloca [16 x i8], align 8               ; 6 uses
  %i.bm = alloca [16 x i8], align 8               ; 6 uses
  %i.bn = alloca [32 x i8], align 8               ; 8 uses
  %i.bo = alloca [16 x i8], align 8               ; 6 uses
  %i.bp = alloca [16 x i8], align 8               ; 6 uses
  %i.bq = alloca [32 x i8], align 8               ; 8 uses
  %i.br = alloca [16 x i8], align 8               ; 6 uses
  %i.bs = alloca [32 x i8], align 8               ; 9 uses
  %i.bt = alloca [32 x i8], align 8               ; 10 uses
  %i.bu = alloca [56 x i8], align 8               ; 13 uses
  %i.bv = alloca [32 x i8], align 8               ; 6 uses
  tail call void @_RNvCsjSVV5GABoor_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #32, !noalias !1457
  %i.bw = tail call noundef align 8 dereferenceable_or_null(128) ptr @_RNvCsjSVV5GABoor_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) 128, i64 noundef range(i64 1, 9) 8) #32, !noalias !1457 ; 2 uses
  %i.bx = icmp eq ptr %i.bw, null
  br i1 %i.bx, label %bb.b, label %_RNCINvXNtCsiBsA9HK2Eg7_3nom5multiINtB5_5Many0INtNtB7_6branch6ChoiceTNvMs2_NtCslbrwWrVtb7E_5uu_tr9operationNtB1a_8Sequence16parse_char_rangeNvB16_15parse_char_starNvB16_17parse_char_repeatNvB16_11parse_classNvB16_16parse_char_equalINtNtB7_8internal3MapNvB16_36parse_backslash_or_char_with_warningNCNvB16_8from_str0EEEEINtB3J_6ParserRShE7processINtB3J_7OutputMNtB3J_4EmitB5K_NtB3J_9StreamingEE0B1c_.exit.preheader.i

_RNCINvXNtCsiBsA9HK2Eg7_3nom5multiINtB5_5Many0INtNtB7_6branch6ChoiceTNvMs2_NtCslbrwWrVtb7E_5uu_tr9operationNtB1a_8Sequence16parse_char_rangeNvB16_15parse_char_starNvB16_17parse_char_repeatNvB16_11parse_classNvB16_16parse_char_equalINtNtB7_8internal3MapNvB16_36parse_backslash_or_char_with_warningNCNvB16_8from_str0EEEEINtB3J_6ParserRShE7processINtB3J_7OutputMNtB3J_4EmitB5K_NtB3J_9StreamingEE0B1c_.exit.preheader.i: ; preds = %bb.a
  %i.by = getelementptr inbounds nuw i8, ptr %i.bt, i64 8
  %.sroa.435.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.bt, i64 16
  %.sroa.536.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.bt, i64 24
  %.sroa.747.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.bt, i64 25
  %.sroa.747.i.sroa.4.0..sroa.747.0..sroa_idx.i.sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.bt, i64 26
  %i.bz = getelementptr inbounds nuw i8, ptr %i.br, i64 8
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bs, i64 8
  %.sroa.443.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.bs, i64 16
  %.sroa.544.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.bs, i64 24
  %.sroa.755.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.bs, i64 25
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bp, i64 8
  %i.cc = getelementptr inbounds nuw i8, ptr %i.bq, i64 8
  %.sroa.431.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.bq, i64 16
  %.sroa.532.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.bq, i64 24 ; 2 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %i.bo, i64 8
  %i.ce = getelementptr inbounds nuw i8, ptr %i.bm, i64 8
  %i.cf = getelementptr inbounds nuw i8, ptr %i.bn, i64 8
  %.sroa.437.0..sroa_idx.i9.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.bn, i64 16
  %.sroa.538.0..sroa_idx.i10.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.bn, i64 24 ; 2 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %i.bl, i64 8
  %i.ch = getelementptr inbounds nuw i8, ptr %i.bk, i64 8
  %i.ci = getelementptr inbounds nuw i8, ptr %i.bj, i64 8
  %i.cj = getelementptr inbounds nuw i8, ptr %i.bh, i64 8
  %i.ck = getelementptr inbounds nuw i8, ptr %i.bg, i64 8
  %i.cl = getelementptr inbounds nuw i8, ptr %i.bf, i64 8
  %.sroa.6109.sroa.5.0..sroa.6109.0..sroa_idx.sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.be, i64 8 ; 2 uses
  %.sroa.7111.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.be, i64 16 ; 2 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %i.ay, i64 2
  %i.cn = getelementptr inbounds nuw i8, ptr %i.bc, i64 8
  %i.co = getelementptr inbounds nuw i8, ptr %i.bb, i64 8
  %i.cp = getelementptr inbounds nuw i8, ptr %i.bd, i64 8
  %i.cq = getelementptr inbounds nuw i8, ptr %i.bd, i64 16
  %i.cr = getelementptr inbounds nuw i8, ptr %i.bd, i64 24
  %.sroa.7257.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.bd, i64 25
  %.sroa.8258.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.bd, i64 26
  %i.cs = getelementptr inbounds nuw i8, ptr %i.ba, i64 8
  %i.ct = getelementptr inbounds nuw i8, ptr %i.az, i64 8
  %.sroa.434.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.au, i64 8
  %i.cu = getelementptr inbounds nuw i8, ptr %i.au, i64 16
  %.sroa.438.0..sroa_idx.i62.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.au, i64 24
  %i.cv = getelementptr inbounds nuw i8, ptr %i.av, i64 8
  %i.cw = getelementptr inbounds nuw i8, ptr %i.ax, i64 8
  %.sroa.730.8..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ay, i64 1
  %.sroa.9.8..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ay, i64 16
  %.sroa.25.34..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.ay, i64 8
  %i.cx = getelementptr inbounds nuw i8, ptr %i.bi, i64 8 ; 2 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %i.bi, i64 16 ; 2 uses
  %.sroa.457.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bu, i64 8 ; 2 uses
  %.sroa.558.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bu, i64 16
  %i.cz = getelementptr inbounds nuw i8, ptr %i.bu, i64 24 ; 2 uses
  %.sroa.460.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bu, i64 28
  %.sroa.561.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bu, i64 32
  %.sroa.662.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bu, i64 40
  %.sroa.763.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bu, i64 48
  %.sroa.8.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bu, i64 49
  %i.da = getelementptr inbounds nuw i8, ptr %i.as, i64 8
  %.sroa.42.0..sroa_idx.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ar, i64 8
  %.sroa.53.0..sroa_idx.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ar, i64 16
  %.sroa.64.0..sroa_idx.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ar, i64 24
  %i.db = getelementptr inbounds nuw i8, ptr %i.ar, i64 32
  %i.dc = getelementptr inbounds nuw i8, ptr %i.ar, i64 40
  %i.dd = getelementptr inbounds nuw i8, ptr %i.aq, i64 8 ; 3 uses
  %i.de = getelementptr inbounds nuw i8, ptr %i.ap, i64 8 ; 2 uses
  %i.df = getelementptr inbounds nuw i8, ptr %i.ap, i64 16
  %i.dg = getelementptr inbounds nuw i8, ptr %i.ao, i64 8
  %i.dh = getelementptr inbounds nuw i8, ptr %i.ao, i64 16
  %i.di = getelementptr inbounds nuw i8, ptr %i.an, i64 8 ; 2 uses
  %i.dj = getelementptr inbounds nuw i8, ptr %i.an, i64 16
  %i.dk = getelementptr inbounds nuw i8, ptr %i.ak, i64 8
  %.sroa.48.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
  %i.dl = getelementptr inbounds nuw i8, ptr %i.k, i64 8 ; 2 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %i.j, i64 8 ; 2 uses
  %i.dn = getelementptr inbounds nuw i8, ptr %i.i, i64 8 ; 2 uses
  %.sroa.410.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  %.sroa.511.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ah, i64 16
  %i.do = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  %.sroa.5.0..sroa_idx.i53.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  %.sroa.8.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.af, i64 16
  %i.dp = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  %.sroa.57.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  %.sroa.88.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ad, i64 16
  %i.dq = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  %.sroa.514.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  %.sroa.815.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ab, i64 16
  %.sroa.423.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  %i.dr = getelementptr inbounds nuw i8, ptr %i.h, i64 8 ; 2 uses
  %i.ds = getelementptr inbounds nuw i8, ptr %i.g, i64 8 ; 2 uses
  %i.dt = getelementptr inbounds nuw i8, ptr %i.f, i64 8 ; 2 uses
  %i.du = getelementptr inbounds nuw i8, ptr %i.ai, i64 8
  %i.dv = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  %.sroa.427.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  %i.dw = getelementptr inbounds nuw i8, ptr %i.q, i64 8 ; 2 uses
  %i.dx = getelementptr inbounds nuw i8, ptr %i.p, i64 8 ; 2 uses
  %i.dy = getelementptr inbounds nuw i8, ptr %i.o, i64 8 ; 2 uses
  %.sroa.431.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  %i.dz = getelementptr inbounds nuw i8, ptr %i.n, i64 8 ; 2 uses
  %i.ea = getelementptr inbounds nuw i8, ptr %i.m, i64 8 ; 2 uses
  %i.eb = getelementptr inbounds nuw i8, ptr %i.l, i64 8 ; 2 uses
  %i.ec = getelementptr inbounds nuw i8, ptr %i.u, i64 8
end_hunk_0
