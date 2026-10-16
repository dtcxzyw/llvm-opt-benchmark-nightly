Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/wasmi-rs/original/wasmi.wasmi.2e05a1d9f0df8596-cgu.07?download=true
inline.NumInlined: 466
inline.NumDeleted: 243
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_RNvXs0_NtCs3WYoaQ2jqaU_5wasmi8commandsNtB5_8WasmiAppNtNtCs2C93r1qUspC_12clap_builder6derive14CommandFactory7command:bb.a
  store i64 -1, ptr %i.ba, align 8, !alias.scope !725, !noalias !723
  %i.bb = getelementptr inbounds nuw i8, ptr %i.af, i64 592
  store ptr null, ptr %i.bb, align 8, !alias.scope !725, !noalias !723
  %i.bc = getelementptr inbounds nuw i8, ptr %i.af, i64 608
  store ptr null, ptr %i.bc, align 8, !alias.scope !725, !noalias !723
  %i.bd = getelementptr inbounds nuw i8, ptr %i.af, i64 624
  store ptr null, ptr %i.bd, align 8, !alias.scope !725, !noalias !723
  %i.be = getelementptr inbounds nuw i8, ptr %i.af, i64 320
  store i64 -1, ptr %i.be, align 8, !alias.scope !725, !noalias !723
  %i.bf = getelementptr inbounds nuw i8, ptr %i.af, i64 344
  store i64 -1, ptr %i.bf, align 8, !alias.scope !725, !noalias !723
  %i.bg = getelementptr inbounds nuw i8, ptr %i.af, i64 368
  store i64 -1, ptr %i.bg, align 8, !alias.scope !725, !noalias !723
  %i.bh = getelementptr inbounds nuw i8, ptr %i.af, i64 392
  store i64 -1, ptr %i.bh, align 8, !alias.scope !725, !noalias !723
  %i.bi = getelementptr inbounds nuw i8, ptr %i.af, i64 416
  store i64 -1, ptr %i.bi, align 8, !alias.scope !725, !noalias !723
  %i.bj = getelementptr inbounds nuw i8, ptr %i.af, i64 440
  store i64 -1, ptr %i.bj, align 8, !alias.scope !725, !noalias !723
  %i.bk = getelementptr inbounds nuw i8, ptr %i.af, i64 56
  store i64 0, ptr %i.bk, align 8, !alias.scope !725, !noalias !723
  %.sroa.4.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.af, i64 64
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.4.0..sroa_idx.i.i.i, align 8, !alias.scope !725, !noalias !723
  %.sroa.5.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.af, i64 72
  %.sroa.424.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.af, i64 88
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.0..sroa_idx.i.i.i, i8 0, i64 16, i1 false), !alias.scope !725, !noalias !723
  store ptr inttoptr (i64 4 to ptr), ptr %.sroa.424.0..sroa_idx.i.i.i, align 8, !alias.scope !725, !noalias !723
  %.sroa.525.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.af, i64 96
  %.sroa.427.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.af, i64 112
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.525.0..sroa_idx.i.i.i, i8 0, i64 16, i1 false), !alias.scope !725, !noalias !723
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.427.0..sroa_idx.i.i.i, align 8, !alias.scope !725, !noalias !723
  %.sroa.528.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.af, i64 120
  store i64 0, ptr %.sroa.528.0..sroa_idx.i.i.i, align 8, !alias.scope !725, !noalias !723
  %i.bl = getelementptr inbounds nuw i8, ptr %i.af, i64 464
  store i64 -1, ptr %i.bl, align 8, !alias.scope !725, !noalias !723
  %i.bm = getelementptr inbounds nuw i8, ptr %i.af, i64 488
  store i64 -1, ptr %i.bm, align 8, !alias.scope !725, !noalias !723
  %i.bn = getelementptr inbounds nuw i8, ptr %i.af, i64 512
  store i64 -1, ptr %i.bn, align 8, !alias.scope !725, !noalias !723
  store i64 0, ptr %i.af, align 8, !alias.scope !725, !noalias !723
  %i.bo = getelementptr inbounds nuw i8, ptr %i.af, i64 536
  store i64 -1, ptr %i.bo, align 8, !alias.scope !725, !noalias !723
  %i.bp = getelementptr inbounds nuw i8, ptr %i.af, i64 700
  store i32 0, ptr %i.bp, align 4, !alias.scope !725, !noalias !723
  %i.bq = getelementptr inbounds nuw i8, ptr %i.af, i64 704
  store i32 0, ptr %i.bq, align 8, !alias.scope !725, !noalias !723
  %i.br = getelementptr inbounds nuw i8, ptr %i.af, i64 128
  store i64 0, ptr %i.br, align 8, !alias.scope !725, !noalias !723
  %.sroa.441.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.af, i64 136
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.441.0..sroa_idx.i.i.i, align 8, !alias.scope !725, !noalias !723
  %.sroa.542.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.af, i64 144
  %.sroa.643.sroa.4.0..sroa.643.0..sroa_idx.sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.af, i64 160
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.542.0..sroa_idx.i.i.i, i8 0, i64 16, i1 false), !alias.scope !725, !noalias !723
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.643.sroa.4.0..sroa.643.0..sroa_idx.sroa_idx.i.i.i, align 8, !alias.scope !725, !noalias !723
  %.sroa.643.sroa.5.0..sroa.643.0..sroa_idx.sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.af, i64 168
  %.sroa.430.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.af, i64 184
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.643.sroa.5.0..sroa.643.0..sroa_idx.sroa_idx.i.i.i, i8 0, i64 16, i1 false), !alias.scope !725, !noalias !723
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.430.0..sroa_idx.i.i.i, align 8, !alias.scope !725, !noalias !723
  %.sroa.531.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.af, i64 192
  %.sroa.433.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.af, i64 208
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.531.0..sroa_idx.i.i.i, i8 0, i64 16, i1 false), !alias.scope !725, !noalias !723
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.433.0..sroa_idx.i.i.i, align 8, !alias.scope !725, !noalias !723
  %.sroa.534.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.af, i64 216
  store i64 0, ptr %.sroa.534.0..sroa_idx.i.i.i, align 8, !alias.scope !725, !noalias !723
  %i.bs = getelementptr inbounds nuw i8, ptr %i.af, i64 640
  store ptr null, ptr %i.bs, align 8, !alias.scope !725, !noalias !723
  %i.bt = getelementptr inbounds nuw i8, ptr %i.af, i64 16
  store i64 1, ptr %i.bt, align 8, !alias.scope !725, !noalias !723
  %i.bu = getelementptr inbounds nuw i8, ptr %i.af, i64 24
  store i64 0, ptr %i.bu, align 8, !alias.scope !725, !noalias !723
  %i.bv = getelementptr inbounds nuw i8, ptr %i.af, i64 656
  store ptr null, ptr %i.bv, align 8, !alias.scope !725, !noalias !723
  %i.bw = getelementptr inbounds nuw i8, ptr %i.af, i64 672
  store ptr null, ptr %i.bw, align 8, !alias.scope !725, !noalias !723
  %i.bx = getelementptr inbounds nuw i8, ptr %i.af, i64 32
  store i64 -1, ptr %i.bx, align 8, !alias.scope !725, !noalias !723
  %i.by = getelementptr inbounds nuw i8, ptr %i.af, i64 708
  store i8 0, ptr %i.by, align 4, !alias.scope !725, !noalias !723
  %i.bz = getelementptr inbounds nuw i8, ptr %i.af, i64 688
  store ptr null, ptr %i.bz, align 8, !alias.scope !725, !noalias !723
  %i.ca = getelementptr inbounds nuw i8, ptr %i.af, i64 224
  store i64 0, ptr %i.ca, align 8, !alias.scope !725, !noalias !723
  %.sroa.455.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.af, i64 232
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.455.0..sroa_idx.i.i.i, align 8, !alias.scope !725, !noalias !723
  %.sroa.556.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.af, i64 240
  %.sroa.657.sroa.4.0..sroa.657.0..sroa_idx.sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.af, i64 256
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.556.0..sroa_idx.i.i.i, i8 0, i64 16, i1 false), !alias.scope !725, !noalias !723
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.657.sroa.4.0..sroa.657.0..sroa_idx.sroa_idx.i.i.i, align 8, !alias.scope !725, !noalias !723
  %.sroa.657.sroa.5.0..sroa.657.0..sroa_idx.sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.af, i64 264
  store i64 0, ptr %.sroa.657.sroa.5.0..sroa.657.0..sroa_idx.sroa_idx.i.i.i, align 8, !alias.scope !725, !noalias !723
  invoke void @_RNvXs7_NtNtCs3WYoaQ2jqaU_5wasmi8commands3runNtB5_10RunCommandNtNtCs2C93r1qUspC_12clap_builder6derive4Args12augment_args(ptr noalias nofree noundef nonnull sret([712 x i8]) align 8 captures(address) dereferenceable(712) %i.ae, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(712) %i.af)
          to label %bb.g unwind label %bb.bb, !noalias !723

bb.g:                                             ; preds = %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %i.af), !noalias !723
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ab), !noalias !726
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(712) %i.ab, ptr noundef nonnull readonly align 8 dereferenceable(712) %i.ae, i64 712, i1 false), !alias.scope !727, !noalias !728
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aa), !noalias !726
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(712) %i.aa, ptr noundef nonnull readonly align 8 dereferenceable(712) %i.an, i64 712, i1 false), !noalias !724
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ad), !noalias !723
  call void @_RNvMNtNtCs2C93r1qUspC_12clap_builder7builder7commandNtB2_7Command19subcommand_internal(ptr noalias nofree noundef nonnull sret([712 x i8]) align 8 captures(none) dereferenceable(712) %i.ad, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(712) %i.aa, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(712) %i.ab), !noalias !723
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa), !noalias !726
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab), !noalias !726
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ag), !noalias !723
  %.sroa.9.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.z, i64 72
  call void @llvm.lifetime.start.p0(ptr nonnull %i.z), !noalias !729
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.9.0..sroa_idx.i.i, i8 0, i64 16, i1 false), !noalias !723
  %.sroa.11.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.z, i64 96
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.11.0..sroa_idx.i.i, i8 0, i64 16, i1 false), !noalias !723
  %.sroa.16.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.z, i64 144
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.16.0..sroa_idx.i.i, i8 0, i64 16, i1 false), !noalias !723
  %.sroa.18.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.z, i64 168
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.18.0..sroa_idx.i.i, i8 0, i64 16, i1 false), !noalias !723
  %.sroa.20.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.z, i64 192
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.20.0..sroa_idx.i.i, i8 0, i64 16, i1 false), !noalias !723
  %.sroa.25.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.z, i64 240
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.25.0..sroa_idx.i.i, i8 0, i64 16, i1 false), !noalias !723
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q), !noalias !723
  store i64 0, ptr %i.z, align 8, !noalias !730
  %.sroa.425.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.z, i64 16
  store i64 1, ptr %.sroa.425.0..sroa_idx.i.i, align 8, !noalias !730
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.z, i64 24
  store i64 0, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !noalias !730
  %.sroa.6.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.z, i64 32
  store i64 -1, ptr %.sroa.6.0..sroa_idx.i.i, align 8, !noalias !730
  %.sroa.726.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.z, i64 56
  store i64 0, ptr %.sroa.726.0..sroa_idx.i.i, align 8, !noalias !730
  %.sroa.8.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.z, i64 64
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.8.0..sroa_idx.i.i, align 8, !noalias !730
  %.sroa.10.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.z, i64 88
  store ptr inttoptr (i64 4 to ptr), ptr %.sroa.10.0..sroa_idx.i.i, align 8, !noalias !730
  %.sroa.12.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.z, i64 112
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.12.0..sroa_idx.i.i, align 8, !noalias !730
  %.sroa.13.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.z, i64 120
  %.sroa.15.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.z, i64 136
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.13.0..sroa_idx.i.i, i8 0, i64 16, i1 false), !noalias !723
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.15.0..sroa_idx.i.i, align 8, !noalias !730
  %.sroa.17.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.z, i64 160
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.17.0..sroa_idx.i.i, align 8, !noalias !730
  %.sroa.19.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.z, i64 184
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.19.0..sroa_idx.i.i, align 8, !noalias !730
  %.sroa.21.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.z, i64 208 ; 2 uses
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.21.0..sroa_idx.i.i, align 8, !noalias !730
  %.sroa.22.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.z, i64 216 ; 3 uses
  %.sroa.24.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.z, i64 232
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.22.0..sroa_idx.i.i, i8 0, i64 16, i1 false), !noalias !723
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.24.0..sroa_idx.i.i, align 8, !noalias !730
  %.sroa.26.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.z, i64 256
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.26.0..sroa_idx.i.i, align 8, !noalias !730
  %.sroa.27.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.z, i64 264
  store i64 0, ptr %.sroa.27.0..sroa_idx.i.i, align 8, !noalias !730
  %.sroa.28.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.z, i64 272
  store i64 -1, ptr %.sroa.28.0..sroa_idx.i.i, align 8, !noalias !730
  %.sroa.2927.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.z, i64 296
  store i64 -1, ptr %.sroa.2927.0..sroa_idx.i.i, align 8, !noalias !730
  %.sroa.3028.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.z, i64 320
  store i64 -1, ptr %.sroa.3028.0..sroa_idx.i.i, align 8, !noalias !730
  %.sroa.3129.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.z, i64 344
  store i64 -1, ptr %.sroa.3129.0..sroa_idx.i.i, align 8, !noalias !730
  %.sroa.3230.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.z, i64 368
  store i64 -1, ptr %.sroa.3230.0..sroa_idx.i.i, align 8, !noalias !730
  %.sroa.3331.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.z, i64 392
  store i64 -1, ptr %.sroa.3331.0..sroa_idx.i.i, align 8, !noalias !730
  %.sroa.3432.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.z, i64 416
  store i64 -1, ptr %.sroa.3432.0..sroa_idx.i.i, align 8, !noalias !730
  %.sroa.3533.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.z, i64 440
  store i64 -1, ptr %.sroa.3533.0..sroa_idx.i.i, align 8, !noalias !730
  %.sroa.3634.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.z, i64 464
  store i64 -1, ptr %.sroa.3634.0..sroa_idx.i.i, align 8, !noalias !730
  %.sroa.3735.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.z, i64 488
  store i64 -1, ptr %.sroa.3735.0..sroa_idx.i.i, align 8, !noalias !730
  %.sroa.3836.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.z, i64 512
  store i64 -1, ptr %.sroa.3836.0..sroa_idx.i.i, align 8, !noalias !730
  %.sroa.3937.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.z, i64 536
  store i64 -1, ptr %.sroa.3937.0..sroa_idx.i.i, align 8, !noalias !730
  %.sroa.4038.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.z, i64 560
  store ptr @113, ptr %.sroa.4038.0..sroa_idx.i.i, align 8, !noalias !730
  %.sroa.41.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.z, i64 568
  store i64 4, ptr %.sroa.41.0..sroa_idx.i.i, align 8, !noalias !730
  %.sroa.42.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.z, i64 576
  store ptr null, ptr %.sroa.42.0..sroa_idx.i.i, align 8, !noalias !730
  %.sroa.4339.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.z, i64 592
  store ptr null, ptr %.sroa.4339.0..sroa_idx.i.i, align 8, !noalias !730
  %.sroa.4440.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.z, i64 608
  store ptr null, ptr %.sroa.4440.0..sroa_idx.i.i, align 8, !noalias !730
  %.sroa.4541.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.z, i64 624
  store ptr null, ptr %.sroa.4541.0..sroa_idx.i.i, align 8, !noalias !730
  %.sroa.4642.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.z, i64 640
  store ptr null, ptr %.sroa.4642.0..sroa_idx.i.i, align 8, !noalias !730
  %.sroa.4743.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.z, i64 656
  store ptr null, ptr %.sroa.4743.0..sroa_idx.i.i, align 8, !noalias !730
  %.sroa.4844.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.z, i64 672
  store ptr null, ptr %.sroa.4844.0..sroa_idx.i.i, align 8, !noalias !730
  %.sroa.4945.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.z, i64 688
  store ptr null, ptr %.sroa.4945.0..sroa_idx.i.i, align 8, !noalias !730
  %.sroa.50.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.z, i64 696
  store i32 -1, ptr %.sroa.50.0..sroa_idx.i.i, align 8, !noalias !730
  %.sroa.51.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.z, i64 700
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(9) %.sroa.51.0..sroa_idx.i.i, i8 0, i64 9, i1 false), !noalias !723
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6.i.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !noalias !731
  store i64 0, ptr %i.m, align 8, !noalias !732
  %.sroa.0.sroa.4.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.m, i64 8 ; 3 uses
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.0.sroa.4.0..sroa_idx.i.i.i, align 8, !noalias !732
  %.sroa.0.sroa.5.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.m, i64 16 ; 2 uses
  %.sroa.0.sroa.6.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.m, i64 24
  %.sroa.0.sroa.7.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.m, i64 32 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.sroa.5.0..sroa_idx.i.i.i, i8 0, i64 16, i1 false), !noalias !729
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.0.sroa.7.0..sroa_idx.i.i.i, align 8, !noalias !732
  %.sroa.0.sroa.8.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.m, i64 40 ; 2 uses
  %.sroa.0.sroa.9.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.m, i64 48
  %.sroa.0.sroa.10.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.m, i64 56 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.sroa.8.0..sroa_idx.i.i.i, i8 0, i64 16, i1 false), !noalias !729
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.0.sroa.10.0..sroa_idx.i.i.i, align 8, !noalias !732
  %.sroa.0.sroa.11.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.m, i64 64 ; 2 uses
  store i64 0, ptr %.sroa.0.sroa.11.0..sroa_idx.i.i.i, align 8, !noalias !732
  %.sroa.0.sroa.12.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.m, i64 72 ; 2 uses
  store ptr @76, ptr %.sroa.0.sroa.12.0..sroa_idx.i.i.i, align 8, !noalias !732
  %.sroa.0.sroa.13.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.m, i64 80 ; 2 uses
  store i64 11, ptr %.sroa.0.sroa.13.0..sroa_idx.i.i.i, align 8, !noalias !732
  %.sroa.0.sroa.14.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.m, i64 88 ; 2 uses
  store i8 0, ptr %.sroa.0.sroa.14.0..sroa_idx.i.i.i, align 8, !noalias !732
  %.sroa.4.0..sroa_idx37.i.i.i = getelementptr inbounds nuw i8, ptr %i.m, i64 89 ; 2 uses
  store i8 1, ptr %.sroa.4.0..sroa_idx37.i.i.i, align 1, !noalias !732
  %.sroa.5.0..sroa_idx44.i.i.i = getelementptr inbounds nuw i8, ptr %i.m, i64 90
  call void @llvm.experimental.noalias.scope.decl(metadata !733)
  %i.cb = invoke { ptr, i64 } @_RNvXsk_NtNtCs2C93r1qUspC_12clap_builder7builder10resettableNtNtNtB9_4util2id2IdINtB5_14IntoResettableBV_E15into_resettableCs3WYoaQ2jqaU_5wasmi(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @45, i64 noundef 7)
          to label %bb.i unwind label %bb.h, !noalias !734 ; 2 uses

.body.thread50.i.i:                               ; preds = %.noexc.i.i, %bb.ax
  %lpad.thr_comm.i.i = landingpad { ptr, i32 }
          cleanup
  br label %.body.thread.i.i

bb.h:                                             ; preds = %bb.j, %bb.g
  %i.cc = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs2C93r1qUspC_12clap_builder7builder9arg_group8ArgGroupECs3WYoaQ2jqaU_5wasmi(ptr noalias nofree noundef nonnull align 8 dereferenceable(96) %i.m) #16
          to label %.body.i.i.i unwind label %bb.k, !noalias !735

bb.i:                                             ; preds = %bb.g
  %i.cd = extractvalue { ptr, i64 } %i.cb, 0      ; 2 uses
  %i.ce = icmp eq ptr %i.cd, null
  br i1 %i.ce, label %bb.l, label %bb.j

bb.j:                                             ; preds = %bb.i
  invoke void @_RNvMs4_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtNtCs2C93r1qUspC_12clap_builder4util2id2IdE8grow_oneBS_(ptr noalias nofree noundef nonnull align 8 dereferenceable(96) %i.m) #18
          to label %_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtNtCs2C93r1qUspC_12clap_builder4util2id2IdE8push_mutCs3WYoaQ2jqaU_5wasmi.exit.i.i.i.i.i unwind label %bb.h, !noalias !735

_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtNtCs2C93r1qUspC_12clap_builder4util2id2IdE8push_mutCs3WYoaQ2jqaU_5wasmi.exit.i.i.i.i.i: ; preds = %bb.j
  %i.cf = extractvalue { ptr, i64 } %i.cb, 1
  %i.cg = load ptr, ptr %.sroa.0.sroa.4.0..sroa_idx.i.i.i, align 8, !alias.scope !736, !noalias !731, !nonnull !5, !noundef !5 ; 2 uses
  store ptr %i.cd, ptr %i.cg, align 8, !noalias !737
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cg, i64 8
  store i64 %i.cf, ptr %i.ch, align 8, !noalias !735
  br label %bb.l

bb.k:                                             ; preds = %bb.h
  %i.ci = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #17, !noalias !735
  unreachable

bb.l:                                             ; preds = %_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtNtCs2C93r1qUspC_12clap_builder4util2id2IdE8push_mutCs3WYoaQ2jqaU_5wasmi.exit.i.i.i.i.i, %bb.i
  %storemerge.i.i.i.i = phi i64 [ 1, %_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtNtCs2C93r1qUspC_12clap_builder4util2id2IdE8push_mutCs3WYoaQ2jqaU_5wasmi.exit.i.i.i.i.i ], [ 0, %bb.i ] ; 3 uses
  store i64 %storemerge.i.i.i.i, ptr %.sroa.0.sroa.5.0..sroa_idx.i.i.i, align 8, !alias.scope !733, !noalias !731
  %.sroa.0.sroa.0.0.copyload64.i.i.i = load i64, ptr %i.m, align 8, !noalias !732 ; 2 uses
  %.sroa.0.sroa.4.0.copyload67.i.i.i = load ptr, ptr %.sroa.0.sroa.4.0..sroa_idx.i.i.i, align 8, !noalias !732 ; 2 uses
  %.sroa.0.sroa.6.0.copyload73.i.i.i = load i64, ptr %.sroa.0.sroa.6.0..sroa_idx.i.i.i, align 8, !noalias !732 ; 2 uses
  %.sroa.0.sroa.7.0.copyload76.i.i.i = load ptr, ptr %.sroa.0.sroa.7.0..sroa_idx.i.i.i, align 8, !noalias !732 ; 2 uses
  %.sroa.0.sroa.8.0.copyload79.i.i.i = load i64, ptr %.sroa.0.sroa.8.0..sroa_idx.i.i.i, align 8, !noalias !732 ; 2 uses
  %.sroa.0.sroa.9.0.copyload82.i.i.i = load i64, ptr %.sroa.0.sroa.9.0..sroa_idx.i.i.i, align 8, !noalias !732 ; 2 uses
  %.sroa.0.sroa.10.0.copyload85.i.i.i = load ptr, ptr %.sroa.0.sroa.10.0..sroa_idx.i.i.i, align 8, !noalias !732 ; 2 uses
  %.sroa.0.sroa.11.0.copyload88.i.i.i = load i64, ptr %.sroa.0.sroa.11.0..sroa_idx.i.i.i, align 8, !noalias !732 ; 2 uses
  %.sroa.0.sroa.12.0.copyload91.i.i.i = load ptr, ptr %.sroa.0.sroa.12.0..sroa_idx.i.i.i, align 8, !noalias !732 ; 2 uses
  %.sroa.0.sroa.13.0.copyload94.i.i.i = load i64, ptr %.sroa.0.sroa.13.0..sroa_idx.i.i.i, align 8, !noalias !732 ; 2 uses
  %.sroa.0.sroa.14.0.copyload97.i.i.i = load i8, ptr %.sroa.0.sroa.14.0..sroa_idx.i.i.i, align 8, !noalias !732 ; 2 uses
  %.sroa.4.0.copyload40.i.i.i = load i8, ptr %.sroa.4.0..sroa_idx37.i.i.i, align 1, !noalias !732 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(6) %.sroa.6.i.i.i, ptr noundef nonnull align 2 dereferenceable(6) %.sroa.5.0..sroa_idx44.i.i.i, i64 6, i1 false), !noalias !729
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !731
  call void @llvm.experimental.noalias.scope.decl(metadata !738)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !739
  store i64 %.sroa.0.sroa.0.0.copyload64.i.i.i, ptr %i.l, align 8, !alias.scope !740, !noalias !741
  %.sroa.047.sroa.5.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  store ptr %.sroa.0.sroa.4.0.copyload67.i.i.i, ptr %.sroa.047.sroa.5.0..sroa_idx.i.i.i, align 8, !alias.scope !740, !noalias !741
  %.sroa.047.sroa.6.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  store i64 %storemerge.i.i.i.i, ptr %.sroa.047.sroa.6.0..sroa_idx.i.i.i, align 8, !alias.scope !740, !noalias !741
  %.sroa.047.sroa.7.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.l, i64 24
  store i64 %.sroa.0.sroa.6.0.copyload73.i.i.i, ptr %.sroa.047.sroa.7.0..sroa_idx.i.i.i, align 8, !alias.scope !740, !noalias !741
  %.sroa.047.sroa.8.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.l, i64 32
  store ptr %.sroa.0.sroa.7.0.copyload76.i.i.i, ptr %.sroa.047.sroa.8.0..sroa_idx.i.i.i, align 8, !alias.scope !740, !noalias !741
  %.sroa.047.sroa.9.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.l, i64 40
  store i64 %.sroa.0.sroa.8.0.copyload79.i.i.i, ptr %.sroa.047.sroa.9.0..sroa_idx.i.i.i, align 8, !alias.scope !740, !noalias !741
  %.sroa.047.sroa.10.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.l, i64 48
  store i64 %.sroa.0.sroa.9.0.copyload82.i.i.i, ptr %.sroa.047.sroa.10.0..sroa_idx.i.i.i, align 8, !alias.scope !740, !noalias !741
  %.sroa.047.sroa.11.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.l, i64 56
  store ptr %.sroa.0.sroa.10.0.copyload85.i.i.i, ptr %.sroa.047.sroa.11.0..sroa_idx.i.i.i, align 8, !alias.scope !740, !noalias !741
  %.sroa.047.sroa.12.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.l, i64 64
  store i64 %.sroa.0.sroa.11.0.copyload88.i.i.i, ptr %.sroa.047.sroa.12.0..sroa_idx.i.i.i, align 8, !alias.scope !740, !noalias !741
  %.sroa.047.sroa.13.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.l, i64 72
  store ptr %.sroa.0.sroa.12.0.copyload91.i.i.i, ptr %.sroa.047.sroa.13.0..sroa_idx.i.i.i, align 8, !alias.scope !740, !noalias !741
  %.sroa.047.sroa.14.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.l, i64 80
  store i64 %.sroa.0.sroa.13.0.copyload94.i.i.i, ptr %.sroa.047.sroa.14.0..sroa_idx.i.i.i, align 8, !alias.scope !740, !noalias !741
  %.sroa.047.sroa.15.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.l, i64 88
  store i8 %.sroa.0.sroa.14.0.copyload97.i.i.i, ptr %.sroa.047.sroa.15.0..sroa_idx.i.i.i, align 8, !alias.scope !740, !noalias !741
  %.sroa.548.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.l, i64 89
  store i8 %.sroa.4.0.copyload40.i.i.i, ptr %.sroa.548.0..sroa_idx.i.i.i, align 1, !alias.scope !740, !noalias !741
  %.sroa.6.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.l, i64 90
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(6) %.sroa.6.0..sroa_idx.i.i.i, ptr noundef nonnull align 2 dereferenceable(6) %.sroa.6.i.i.i, i64 6, i1 false), !alias.scope !740, !noalias !741
  %i.cj = getelementptr inbounds nuw i8, ptr %i.z, i64 200 ; 2 uses
  %i.ck = load i64, ptr %.sroa.22.0..sroa_idx.i.i, align 8, !alias.scope !742, !noalias !729, !noundef !5 ; 3 uses
  %i.cl = load i64, ptr %i.cj, align 8, !range !6, !alias.scope !742, !noalias !729, !noundef !5
  %i.cm = icmp eq i64 %i.ck, %i.cl
  br i1 %i.cm, label %bb.m, label %bb.q

.body.i.i.i.i:                                    ; preds = %bb.n
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs2C93r1qUspC_12clap_builder7builder7command7CommandECs3WYoaQ2jqaU_5wasmi(ptr noalias nofree noundef nonnull align 8 dereferenceable(712) %i.z) #16
          to label %.body.thread.i.i unwind label %bb.p, !noalias !743

bb.m:                                             ; preds = %bb.l
  invoke void @_RNvMs4_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtNtCs2C93r1qUspC_12clap_builder7builder9arg_group8ArgGroupE8grow_oneBS_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.cj)
          to label %bb.q unwind label %bb.n, !noalias !744

bb.n:                                             ; preds = %bb.m
  %i.cn = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs2C93r1qUspC_12clap_builder7builder9arg_group8ArgGroupECs3WYoaQ2jqaU_5wasmi(ptr noalias nofree noundef nonnull align 8 dereferenceable(96) %i.l) #16
          to label %.body.i.i.i.i unwind label %bb.o, !noalias !743

bb.o:                                             ; preds = %bb.n
  %i.co = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #17, !noalias !743
  unreachable

bb.p:                                             ; preds = %.body.i.i.i.i
  %i.cp = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #17, !noalias !743
  unreachable

bb.q:                                             ; preds = %bb.m, %bb.l
  %i.cq = load ptr, ptr %.sroa.21.0..sroa_idx.i.i, align 8, !alias.scope !742, !noalias !729, !nonnull !5, !noundef !5
  %i.cr = getelementptr inbounds nuw [96 x i8], ptr %i.cq, i64 %i.ck ; 14 uses
  store i64 %.sroa.0.sroa.0.0.copyload64.i.i.i, ptr %i.cr, align 8, !noalias !745
  %.sroa.047.sroa.5.0..sroa_idx100.i.i.i = getelementptr inbounds nuw i8, ptr %i.cr, i64 8
  store ptr %.sroa.0.sroa.4.0.copyload67.i.i.i, ptr %.sroa.047.sroa.5.0..sroa_idx100.i.i.i, align 8, !noalias !745
  %.sroa.047.sroa.6.0..sroa_idx102.i.i.i = getelementptr inbounds nuw i8, ptr %i.cr, i64 16
  store i64 %storemerge.i.i.i.i, ptr %.sroa.047.sroa.6.0..sroa_idx102.i.i.i, align 8, !noalias !745
  %.sroa.047.sroa.7.0..sroa_idx104.i.i.i = getelementptr inbounds nuw i8, ptr %i.cr, i64 24
  store i64 %.sroa.0.sroa.6.0.copyload73.i.i.i, ptr %.sroa.047.sroa.7.0..sroa_idx104.i.i.i, align 8, !noalias !745
  %.sroa.047.sroa.8.0..sroa_idx106.i.i.i = getelementptr inbounds nuw i8, ptr %i.cr, i64 32
  store ptr %.sroa.0.sroa.7.0.copyload76.i.i.i, ptr %.sroa.047.sroa.8.0..sroa_idx106.i.i.i, align 8, !noalias !745
  %.sroa.047.sroa.9.0..sroa_idx108.i.i.i = getelementptr inbounds nuw i8, ptr %i.cr, i64 40
  store i64 %.sroa.0.sroa.8.0.copyload79.i.i.i, ptr %.sroa.047.sroa.9.0..sroa_idx108.i.i.i, align 8, !noalias !745
  %.sroa.047.sroa.10.0..sroa_idx110.i.i.i = getelementptr inbounds nuw i8, ptr %i.cr, i64 48
  store i64 %.sroa.0.sroa.9.0.copyload82.i.i.i, ptr %.sroa.047.sroa.10.0..sroa_idx110.i.i.i, align 8, !noalias !745
  %.sroa.047.sroa.11.0..sroa_idx112.i.i.i = getelementptr inbounds nuw i8, ptr %i.cr, i64 56
  store ptr %.sroa.0.sroa.10.0.copyload85.i.i.i, ptr %.sroa.047.sroa.11.0..sroa_idx112.i.i.i, align 8, !noalias !745
  %.sroa.047.sroa.12.0..sroa_idx114.i.i.i = getelementptr inbounds nuw i8, ptr %i.cr, i64 64
  store i64 %.sroa.0.sroa.11.0.copyload88.i.i.i, ptr %.sroa.047.sroa.12.0..sroa_idx114.i.i.i, align 8, !noalias !745
  %.sroa.047.sroa.13.0..sroa_idx116.i.i.i = getelementptr inbounds nuw i8, ptr %i.cr, i64 72
  store ptr %.sroa.0.sroa.12.0.copyload91.i.i.i, ptr %.sroa.047.sroa.13.0..sroa_idx116.i.i.i, align 8, !noalias !745
  %.sroa.047.sroa.14.0..sroa_idx118.i.i.i = getelementptr inbounds nuw i8, ptr %i.cr, i64 80
  store i64 %.sroa.0.sroa.13.0.copyload94.i.i.i, ptr %.sroa.047.sroa.14.0..sroa_idx118.i.i.i, align 8, !noalias !745
  %.sroa.047.sroa.15.0..sroa_idx120.i.i.i = getelementptr inbounds nuw i8, ptr %i.cr, i64 88
  store i8 %.sroa.0.sroa.14.0.copyload97.i.i.i, ptr %.sroa.047.sroa.15.0..sroa_idx120.i.i.i, align 8, !noalias !745
  %.sroa.548.0..sroa_idx49.i.i.i = getelementptr inbounds nuw i8, ptr %i.cr, i64 89
  store i8 %.sroa.4.0.copyload40.i.i.i, ptr %.sroa.548.0..sroa_idx49.i.i.i, align 1, !noalias !745
  %.sroa.6.0..sroa_idx51.i.i.i = getelementptr inbounds nuw i8, ptr %i.cr, i64 90
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(6) %.sroa.6.0..sroa_idx51.i.i.i, ptr noundef nonnull align 2 dereferenceable(6) %.sroa.6.i.i.i, i64 6, i1 false), !noalias !745
  %i.cs = add i64 %i.ck, 1
  store i64 %i.cs, ptr %.sroa.22.0..sroa_idx.i.i, align 8, !alias.scope !742, !noalias !729
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !739
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x), !noalias !729
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(712) %i.x, ptr noundef nonnull align 8 dereferenceable(712) %i.z, i64 712, i1 false), !noalias !729
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6.i.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z), !noalias !729
  call void @llvm.lifetime.start.p0(ptr nonnull %i.y), !noalias !729
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w), !noalias !729
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v), !noalias !729
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u), !noalias !729
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t), !noalias !729
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s), !noalias !729
  invoke void @_RINvMNtNtCs2C93r1qUspC_12clap_builder7builder3argNtB3_3Arg3newReECs3WYoaQ2jqaU_5wasmi(ptr noalias nofree noundef nonnull sret([600 x i8]) align 8 captures(address) dereferenceable(600) %i.s, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @45, i64 noundef 7)
          to label %bb.s unwind label %bb.r, !noalias !729

bb.r:                                             ; preds = %bb.at, %bb.as, %bb.w, %bb.s, %bb.q
  %i.ct = landingpad { ptr, i32 }
          cleanup
  br label %bb.ay

bb.s:                                             ; preds = %bb.q
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !746
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(600) %i.k, ptr noundef nonnull readonly align 8 dereferenceable(600) %i.s, i64 600, i1 false), !noalias !747
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !746
  store ptr @77, ptr %i.j, align 8, !noalias !746
  %i.cu = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  store i64 7, ptr %i.cu, align 8, !noalias !746
  invoke void @_RINvMs_NtNtCs2C93r1qUspC_12clap_builder7builder3argNtB5_3Arg11value_namesNtNtB7_3str3StrAB19_j1_ECs3WYoaQ2jqaU_5wasmi(ptr noalias nofree noundef nonnull sret([600 x i8]) align 8 captures(none) dereferenceable(600) %i.t, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(600) %i.k, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(16) %i.j)
          to label %bb.t unwind label %bb.r, !noalias !729

bb.t:                                             ; preds = %bb.s
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !746
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !746
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !noalias !729
  call void @llvm.experimental.noalias.scope.decl(metadata !748)
  call void @llvm.experimental.noalias.scope.decl(metadata !749)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !750
  invoke void @_RNvXse_NtNtCs2C93r1qUspC_12clap_builder7builder10resettableINtNtNtCskKLDkoKarTP_4core3ops5range9RangeFromjEINtB5_14IntoResettableNtNtB7_5range10ValueRangeE15into_resettableCs3WYoaQ2jqaU_5wasmi(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.i, i64 noundef 1)
          to label %bb.w unwind label %bb.u, !noalias !750

bb.u:                                             ; preds = %bb.t
  %i.cv = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs2C93r1qUspC_12clap_builder7builder3arg3ArgECs3WYoaQ2jqaU_5wasmi(ptr noalias nofree noundef nonnull align 8 dereferenceable(600) %i.t) #16
          to label %bb.ay unwind label %bb.v, !noalias !751

bb.v:                                             ; preds = %bb.u
  %i.cw = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #17, !noalias !751
  unreachable

bb.w:                                             ; preds = %bb.t
  %i.cx = load i64, ptr %i.i, align 8, !range !15, !noalias !750, !noundef !5 ; 2 uses
  %i.cy = trunc nuw i64 %i.cx to i1               ; 2 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.da = load i64, ptr %i.cz, align 8, !noalias !750
  %i.db = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %i.dc = load i64, ptr %i.db, align 8, !noalias !750
  %.sroa.6.0.i.i.i.i = select i1 %i.cy, i64 undef, i64 %i.dc
  %.sroa.5.0.i.i.i.i = select i1 %i.cy, i64 undef, i64 %i.da
  %not..i.i.i.i = xor i64 %i.cx, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !750
  %i.dd = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  store i64 %not..i.i.i.i, ptr %i.dd, align 8, !alias.scope !749, !noalias !729
  %.sroa.5.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.t, i64 24
  store i64 %.sroa.5.0.i.i.i.i, ptr %.sroa.5.0..sroa_idx.i.i.i.i, align 8, !alias.scope !749, !noalias !729
  %.sroa.6.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.t, i64 32
  store i64 %.sroa.6.0.i.i.i.i, ptr %.sroa.6.0..sroa_idx.i.i.i.i, align 8, !alias.scope !749, !noalias !729
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(600) %i.u, ptr noundef nonnull align 8 dereferenceable(600) %i.t, i64 600, i1 false), !alias.scope !752, !noalias !729
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t), !noalias !729
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r), !noalias !729
  store i64 3, ptr %i.r, align 8, !noalias !729
  invoke void @_RINvMs_NtNtCs2C93r1qUspC_12clap_builder7builder3argNtB5_3Arg12value_parserNtNtB7_12value_parser11ValueParserECs3WYoaQ2jqaU_5wasmi(ptr noalias nofree noundef nonnull sret([600 x i8]) align 8 captures(none) dereferenceable(600) %i.v, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(600) %i.u, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.r)
          to label %bb.x unwind label %bb.r, !noalias !729

bb.x:                                             ; preds = %bb.w
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !noalias !729
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u), !noalias !729
  call void @llvm.experimental.noalias.scope.decl(metadata !753)
  %i.de = getelementptr inbounds nuw i8, ptr %i.v, i64 596
  store i8 1, ptr %i.de, align 4, !alias.scope !754, !noalias !729
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(600) %i.w, ptr noundef nonnull align 8 dereferenceable(600) %i.v, i64 600, i1 false), !alias.scope !755, !noalias !729
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v), !noalias !729
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p), !noalias !729
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !noalias !729
  call void @llvm.experimental.noalias.scope.decl(metadata !756)
  call void @llvm.experimental.noalias.scope.decl(metadata !757)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6.i.i.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !758
  invoke void @_RNvXs2_NtNtCs2C93r1qUspC_12clap_builder7builder10styled_strNtB5_9StyledStrINtNtCskKLDkoKarTP_4core7convert4FromReE4from(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.h, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @78, i64 noundef 54)
          to label %_RNvXsh_NtNtCs2C93r1qUspC_12clap_builder7builder10resettableReINtB5_14IntoResettableNtNtB7_10styled_str9StyledStrE15into_resettableCs3WYoaQ2jqaU_5wasmi.exit.i.i.i.i unwind label %bb.z, !noalias !758

bb.y:                                             ; preds = %.body.i17.i.i.i, %bb.z
  %.pn.i.i.i.i = phi { ptr, i32 } [ %eh.lpad-body.i.i.i.i, %.body.i17.i.i.i ], [ %i.df, %bb.z ]
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs2C93r1qUspC_12clap_builder7builder3arg3ArgECs3WYoaQ2jqaU_5wasmi(ptr noalias nofree noundef nonnull align 8 dereferenceable(600) %i.w) #16
end_hunk_0
