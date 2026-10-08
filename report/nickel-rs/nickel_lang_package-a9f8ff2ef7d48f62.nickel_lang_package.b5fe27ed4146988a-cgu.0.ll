Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/nickel-rs/original/nickel_lang_package-a9f8ff2ef7d48f62.nickel_lang_package.b5fe27ed4146988a-cgu.0?download=true
inline.NumInlined: 25764
inline.NumDeleted: 11075
loop-unroll.NumCompletelyUnrolled: 62
loop-unroll.NumRuntimeUnrolled: 162
loop-unroll.NumUnrolled: 230
loop-unroll.NumUnrolledNotLatch: 1
begin_hunk_0_@_ZN19nickel_lang_package8manifest12ManifestFile9from_prog17hd8f5c931380be5dfE:bb.a
  %.sroa.4.sroa.6.sroa.16.0..sroa.4.sroa.6.0..sroa.5.0..8.val.sroa_idx.i.sroa_idx.sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.l, i64 48
  store i32 %.sroa.6.i.sroa.6.sroa.7.sroa.7.sroa.7.sroa.7.sroa.6.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i.i.i, ptr %.sroa.4.sroa.6.sroa.16.0..sroa.4.sroa.6.0..sroa.5.0..8.val.sroa_idx.i.sroa_idx.sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i, align 8, !alias.scope !38986, !noalias !39029
  %.sroa.4.sroa.6.sroa.17.0..sroa.4.sroa.6.0..sroa.5.0..8.val.sroa_idx.i.sroa_idx.sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.l, i64 52
  store i32 %.sroa.6.i.sroa.6.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i.i.i, ptr %.sroa.4.sroa.6.sroa.17.0..sroa.4.sroa.6.0..sroa.5.0..8.val.sroa_idx.i.sroa_idx.sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i, align 4, !alias.scope !38986, !noalias !39029
  %.sroa.4.sroa.6.sroa.18.0..sroa.4.sroa.6.0..sroa.5.0..8.val.sroa_idx.i.sroa_idx.sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.l, i64 56
  store i32 %.sroa.6.i.sroa.6.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.6.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i.i.i, ptr %.sroa.4.sroa.6.sroa.18.0..sroa.4.sroa.6.0..sroa.5.0..8.val.sroa_idx.i.sroa_idx.sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i, align 8, !alias.scope !38986, !noalias !39029
  %.sroa.4.sroa.6.sroa.19.0..sroa.4.sroa.6.0..sroa.5.0..8.val.sroa_idx.i.sroa_idx.sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.l, i64 60
  store i32 %.sroa.6.i.sroa.6.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i.i.i, ptr %.sroa.4.sroa.6.sroa.19.0..sroa.4.sroa.6.0..sroa.5.0..8.val.sroa_idx.i.sroa_idx.sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i, align 4, !alias.scope !38986, !noalias !39029
  %.sroa.4.sroa.6.sroa.20.0..sroa.4.sroa.6.0..sroa.5.0..8.val.sroa_idx.i.sroa_idx.sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.l, i64 64
  store i32 %.sroa.6.i.sroa.6.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.6.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i.i.i, ptr %.sroa.4.sroa.6.sroa.20.0..sroa.4.sroa.6.0..sroa.5.0..8.val.sroa_idx.i.sroa_idx.sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i, align 8, !alias.scope !38986, !noalias !39029
  %.sroa.4.sroa.6.sroa.21.0..sroa.4.sroa.6.0..sroa.5.0..8.val.sroa_idx.i.sroa_idx.sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.l, i64 68
  store i32 %.sroa.6.i.sroa.6.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i.i.i, ptr %.sroa.4.sroa.6.sroa.21.0..sroa.4.sroa.6.0..sroa.5.0..8.val.sroa_idx.i.sroa_idx.sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i, align 4, !alias.scope !38986, !noalias !39029
  %.sroa.4.sroa.6.sroa.22.0..sroa.4.sroa.6.0..sroa.5.0..8.val.sroa_idx.i.sroa_idx.sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.l, i64 72
  store i32 %.sroa.6.i.sroa.6.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.6.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i.i.i, ptr %.sroa.4.sroa.6.sroa.22.0..sroa.4.sroa.6.0..sroa.5.0..8.val.sroa_idx.i.sroa_idx.sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i, align 8, !alias.scope !38986, !noalias !39029
  %.sroa.4.sroa.6.sroa.23.0..sroa.4.sroa.6.0..sroa.5.0..8.val.sroa_idx.i.sroa_idx.sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.l, i64 76
  store i32 %.sroa.6.i.sroa.6.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i.i.i, ptr %.sroa.4.sroa.6.sroa.23.0..sroa.4.sroa.6.0..sroa.5.0..8.val.sroa_idx.i.sroa_idx.sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i, align 4, !alias.scope !38986, !noalias !39029
  %.sroa.4.sroa.6.sroa.24.0..sroa.4.sroa.6.0..sroa.5.0..8.val.sroa_idx.i.sroa_idx.sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.l, i64 80
  store i32 %.sroa.6.i.sroa.6.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.6.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i.i.i, ptr %.sroa.4.sroa.6.sroa.24.0..sroa.4.sroa.6.0..sroa.5.0..8.val.sroa_idx.i.sroa_idx.sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i, align 8, !alias.scope !38986, !noalias !39029
  %.sroa.4.sroa.6.sroa.25.0..sroa.4.sroa.6.0..sroa.5.0..8.val.sroa_idx.i.sroa_idx.sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.l, i64 84
  store i32 %.sroa.6.i.sroa.6.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i.i.i, ptr %.sroa.4.sroa.6.sroa.25.0..sroa.4.sroa.6.0..sroa.5.0..8.val.sroa_idx.i.sroa_idx.sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i, align 4, !alias.scope !38986, !noalias !39029
  %.sroa.4.sroa.6.sroa.26.0..sroa.4.sroa.6.0..sroa.5.0..8.val.sroa_idx.i.sroa_idx.sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.l, i64 88
  store i32 %.sroa.6.i.sroa.6.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.6.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i.i.i, ptr %.sroa.4.sroa.6.sroa.26.0..sroa.4.sroa.6.0..sroa.5.0..8.val.sroa_idx.i.sroa_idx.sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i, align 8, !alias.scope !38986, !noalias !39029
  %.sroa.4.sroa.6.sroa.27.0..sroa.4.sroa.6.0..sroa.5.0..8.val.sroa_idx.i.sroa_idx.sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.l, i64 92
  store i32 %.sroa.6.i.sroa.6.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i.i.i, ptr %.sroa.4.sroa.6.sroa.27.0..sroa.4.sroa.6.0..sroa.5.0..8.val.sroa_idx.i.sroa_idx.sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i, align 4, !alias.scope !38986, !noalias !39029
  %.sroa.4.sroa.6.sroa.28.0..sroa.4.sroa.6.0..sroa.5.0..8.val.sroa_idx.i.sroa_idx.sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.l, i64 96
  store i32 %.sroa.6.i.sroa.6.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.6.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i.i.i, ptr %.sroa.4.sroa.6.sroa.28.0..sroa.4.sroa.6.0..sroa.5.0..8.val.sroa_idx.i.sroa_idx.sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i, align 8, !alias.scope !38986, !noalias !39029
  %.sroa.4.sroa.6.sroa.29.0..sroa.4.sroa.6.0..sroa.5.0..8.val.sroa_idx.i.sroa_idx.sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.l, i64 100
  store i32 %.sroa.6.i.sroa.6.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i.i.i, ptr %.sroa.4.sroa.6.sroa.29.0..sroa.4.sroa.6.0..sroa.5.0..8.val.sroa_idx.i.sroa_idx.sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i, align 4, !alias.scope !38986, !noalias !39029
  %.sroa.4.sroa.6.sroa.30.0..sroa.4.sroa.6.0..sroa.5.0..8.val.sroa_idx.i.sroa_idx.sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.l, i64 104
  store i32 %.sroa.6.i.sroa.6.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.6.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i.i.i, ptr %.sroa.4.sroa.6.sroa.30.0..sroa.4.sroa.6.0..sroa.5.0..8.val.sroa_idx.i.sroa_idx.sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i, align 8, !alias.scope !38986, !noalias !39029
  %.sroa.4.sroa.6.sroa.31.0..sroa.4.sroa.6.0..sroa.5.0..8.val.sroa_idx.i.sroa_idx.sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.l, i64 108
  store i32 %.sroa.6.i.sroa.6.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i.i.i, ptr %.sroa.4.sroa.6.sroa.31.0..sroa.4.sroa.6.0..sroa.5.0..8.val.sroa_idx.i.sroa_idx.sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i, align 4, !alias.scope !38986, !noalias !39029
  %.sroa.4.sroa.6.sroa.32.0..sroa.4.sroa.6.0..sroa.5.0..8.val.sroa_idx.i.sroa_idx.sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.l, i64 112
  store i32 %.sroa.6.i.sroa.6.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.6.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i.i.i, ptr %.sroa.4.sroa.6.sroa.32.0..sroa.4.sroa.6.0..sroa.5.0..8.val.sroa_idx.i.sroa_idx.sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i, align 8, !alias.scope !38986, !noalias !39029
  %.sroa.4.sroa.6.sroa.33.0..sroa.4.sroa.6.0..sroa.5.0..8.val.sroa_idx.i.sroa_idx.sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.l, i64 116
  store i32 %.sroa.6.i.sroa.6.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i.i.i, ptr %.sroa.4.sroa.6.sroa.33.0..sroa.4.sroa.6.0..sroa.5.0..8.val.sroa_idx.i.sroa_idx.sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i, align 4, !alias.scope !38986, !noalias !39029
  %.sroa.4.sroa.6.sroa.34.0..sroa.4.sroa.6.0..sroa.5.0..8.val.sroa_idx.i.sroa_idx.sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.l, i64 120
  store i32 %.sroa.6.i.sroa.6.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.6.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i.i.i, ptr %.sroa.4.sroa.6.sroa.34.0..sroa.4.sroa.6.0..sroa.5.0..8.val.sroa_idx.i.sroa_idx.sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i, align 8, !alias.scope !38986, !noalias !39029
  %.sroa.4.sroa.6.sroa.35.0..sroa.4.sroa.6.0..sroa.5.0..8.val.sroa_idx.i.sroa_idx.sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.l, i64 124
  store i32 %.sroa.6.i.sroa.6.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i.i.i, ptr %.sroa.4.sroa.6.sroa.35.0..sroa.4.sroa.6.0..sroa.5.0..8.val.sroa_idx.i.sroa_idx.sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i, align 4, !alias.scope !38986, !noalias !39029
  %.sroa.4.sroa.6.sroa.36.0..sroa.4.sroa.6.0..sroa.5.0..8.val.sroa_idx.i.sroa_idx.sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.l, i64 128
  store i32 %.sroa.6.i.sroa.6.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.6.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i.i.i, ptr %.sroa.4.sroa.6.sroa.36.0..sroa.4.sroa.6.0..sroa.5.0..8.val.sroa_idx.i.sroa_idx.sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i, align 8, !alias.scope !38986, !noalias !39029
  %.sroa.4.sroa.6.sroa.37.0..sroa.4.sroa.6.0..sroa.5.0..8.val.sroa_idx.i.sroa_idx.sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.l, i64 132
  store i32 %.sroa.6.i.sroa.6.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i.i.i, ptr %.sroa.4.sroa.6.sroa.37.0..sroa.4.sroa.6.0..sroa.5.0..8.val.sroa_idx.i.sroa_idx.sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i, align 4, !alias.scope !38986, !noalias !39029
  %.sroa.4.sroa.6.sroa.38.0..sroa.4.sroa.6.0..sroa.5.0..8.val.sroa_idx.i.sroa_idx.sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.l, i64 136
  store i32 %.sroa.6.i.sroa.6.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.6.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i.i.i, ptr %.sroa.4.sroa.6.sroa.38.0..sroa.4.sroa.6.0..sroa.5.0..8.val.sroa_idx.i.sroa_idx.sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i, align 8, !alias.scope !38986, !noalias !39029
  %.sroa.4.sroa.6.sroa.39.0..sroa.4.sroa.6.0..sroa.5.0..8.val.sroa_idx.i.sroa_idx.sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.l, i64 140
  store i32 %.sroa.6.i.sroa.6.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i.i.i, ptr %.sroa.4.sroa.6.sroa.39.0..sroa.4.sroa.6.0..sroa.5.0..8.val.sroa_idx.i.sroa_idx.sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i, align 4, !alias.scope !38986, !noalias !39029
  %.sroa.4.sroa.6.sroa.40.0..sroa.4.sroa.6.0..sroa.5.0..8.val.sroa_idx.i.sroa_idx.sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.l, i64 144
  store i32 %.sroa.6.i.sroa.6.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.6.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i.i.i, ptr %.sroa.4.sroa.6.sroa.40.0..sroa.4.sroa.6.0..sroa.5.0..8.val.sroa_idx.i.sroa_idx.sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i, align 8, !alias.scope !38986, !noalias !39029
  %.sroa.4.sroa.6.sroa.41.0..sroa.4.sroa.6.0..sroa.5.0..8.val.sroa_idx.i.sroa_idx.sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.l, i64 148
  store i32 %.sroa.6.i.sroa.6.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i.i.i, ptr %.sroa.4.sroa.6.sroa.41.0..sroa.4.sroa.6.0..sroa.5.0..8.val.sroa_idx.i.sroa_idx.sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i, align 4, !alias.scope !38986, !noalias !39029
  %.sroa.4.sroa.6.sroa.42.0..sroa.4.sroa.6.0..sroa.5.0..8.val.sroa_idx.i.sroa_idx.sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.l, i64 152
  store i32 %.sroa.6.i.sroa.6.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.6.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i.i.i, ptr %.sroa.4.sroa.6.sroa.42.0..sroa.4.sroa.6.0..sroa.5.0..8.val.sroa_idx.i.sroa_idx.sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i, align 8, !alias.scope !38986, !noalias !39029
  %.sroa.4.sroa.6.sroa.43.0..sroa.4.sroa.6.0..sroa.5.0..8.val.sroa_idx.i.sroa_idx.sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.l, i64 156
  store i32 %.sroa.6.i.sroa.6.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i.i.i, ptr %.sroa.4.sroa.6.sroa.43.0..sroa.4.sroa.6.0..sroa.5.0..8.val.sroa_idx.i.sroa_idx.sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i, align 4, !alias.scope !38986, !noalias !39029
  %.sroa.4.sroa.6.sroa.44.0..sroa.4.sroa.6.0..sroa.5.0..8.val.sroa_idx.i.sroa_idx.sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.l, i64 160
  store i32 %.sroa.6.i.sroa.6.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.6.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i.i.i, ptr %.sroa.4.sroa.6.sroa.44.0..sroa.4.sroa.6.0..sroa.5.0..8.val.sroa_idx.i.sroa_idx.sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i, align 8, !alias.scope !38986, !noalias !39029
  %.sroa.4.sroa.6.sroa.45.0..sroa.4.sroa.6.0..sroa.5.0..8.val.sroa_idx.i.sroa_idx.sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.l, i64 164
  store i32 %.sroa.6.i.sroa.6.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i.i.i, ptr %.sroa.4.sroa.6.sroa.45.0..sroa.4.sroa.6.0..sroa.5.0..8.val.sroa_idx.i.sroa_idx.sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i, align 4, !alias.scope !38986, !noalias !39029
  %.sroa.4.sroa.6.sroa.46.0..sroa.4.sroa.6.0..sroa.5.0..8.val.sroa_idx.i.sroa_idx.sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.l, i64 168
  store i32 %.sroa.6.i.sroa.6.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.6.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i.i.i, ptr %.sroa.4.sroa.6.sroa.46.0..sroa.4.sroa.6.0..sroa.5.0..8.val.sroa_idx.i.sroa_idx.sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i, align 8, !alias.scope !38986, !noalias !39029
  %.sroa.4.sroa.6.sroa.47.0..sroa.4.sroa.6.0..sroa.5.0..8.val.sroa_idx.i.sroa_idx.sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.l, i64 172
  store i32 %.sroa.6.i.sroa.6.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i.i.i, ptr %.sroa.4.sroa.6.sroa.47.0..sroa.4.sroa.6.0..sroa.5.0..8.val.sroa_idx.i.sroa_idx.sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i, align 4, !alias.scope !38986, !noalias !39029
  %.sroa.4.sroa.6.sroa.48.0..sroa.4.sroa.6.0..sroa.5.0..8.val.sroa_idx.i.sroa_idx.sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.l, i64 176
  store i32 %.sroa.6.i.sroa.6.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.6.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i.i.i, ptr %.sroa.4.sroa.6.sroa.48.0..sroa.4.sroa.6.0..sroa.5.0..8.val.sroa_idx.i.sroa_idx.sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i, align 8, !alias.scope !38986, !noalias !39029
  %.sroa.4.sroa.6.sroa.49.0..sroa.4.sroa.6.0..sroa.5.0..8.val.sroa_idx.i.sroa_idx.sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.l, i64 180
  store i32 %.sroa.6.i.sroa.6.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i.i.i, ptr %.sroa.4.sroa.6.sroa.49.0..sroa.4.sroa.6.0..sroa.5.0..8.val.sroa_idx.i.sroa_idx.sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i, align 4, !alias.scope !38986, !noalias !39029
  %.sroa.4.sroa.6.sroa.50.0..sroa.4.sroa.6.0..sroa.5.0..8.val.sroa_idx.i.sroa_idx.sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.l, i64 184
  store i32 %.sroa.6.i.sroa.6.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.6.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i.i.i, ptr %.sroa.4.sroa.6.sroa.50.0..sroa.4.sroa.6.0..sroa.5.0..8.val.sroa_idx.i.sroa_idx.sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i, align 8, !alias.scope !38986, !noalias !39029
  %.sroa.4.sroa.6.sroa.51.0..sroa.4.sroa.6.0..sroa.5.0..8.val.sroa_idx.i.sroa_idx.sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.l, i64 188
  store i32 %.sroa.6.i.sroa.6.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i.i.i, ptr %.sroa.4.sroa.6.sroa.51.0..sroa.4.sroa.6.0..sroa.5.0..8.val.sroa_idx.i.sroa_idx.sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i, align 4, !alias.scope !38986, !noalias !39029
  %.sroa.4.sroa.6.sroa.52.0..sroa.4.sroa.6.0..sroa.5.0..8.val.sroa_idx.i.sroa_idx.sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.l, i64 192
  %i.ih = extractelement <2 x i32> %i.fz, i64 0
  store i32 %i.ih, ptr %.sroa.4.sroa.6.sroa.52.0..sroa.4.sroa.6.0..sroa.5.0..8.val.sroa_idx.i.sroa_idx.sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i, align 8, !alias.scope !38986, !noalias !39029
  %.sroa.4.sroa.6.sroa.53.0..sroa.4.sroa.6.0..sroa.5.0..8.val.sroa_idx.i.sroa_idx.sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.l, i64 196
  %i.ii = extractelement <2 x i32> %i.fz, i64 1
  store i32 %i.ii, ptr %.sroa.4.sroa.6.sroa.53.0..sroa.4.sroa.6.0..sroa.5.0..8.val.sroa_idx.i.sroa_idx.sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i, align 4, !alias.scope !38986, !noalias !39029
  %.sroa.68.0..8.val.sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.l, i64 200
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(120) %.sroa.68.0..8.val.sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(120) %.sroa.7.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.5.sroa.6.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 120, i1 false), !noalias !39029
  br label %.body.i.i.i.i.i.i.i

"_ZN4core4iter8adapters3map12map_try_fold28_$u7b$$u7b$closure$u7d$$u7d$17h48c7c5313fe8492dE.exit.i.i.i.i.i.i.i.i.i.i.i.i.i": ; preds = %bb.bs, %"_ZN9hashbrown3map28HashMap$LT$K$C$V$C$S$C$A$GT$6insert17hdd6d4fbf65c87287E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i", %"_ZN9hashbrown3map28HashMap$LT$K$C$V$C$S$C$A$GT$6insert17hdd6d4fbf65c87287E.exit.thread.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !39006
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !39005
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.5.sroa.6.i.i.i.i.i.i.i.i.i.i.i.i.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !38996
  %i.ij = icmp eq i64 %i.fv, 0
  br i1 %i.ij, label %.loopexit.i.i.loopexit.i.i.i.i.i.i.i.i, label %bb.bf

"_ZN102_$LT$core..iter..adapters..map..Map$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$8try_fold17h6451d6ce5281e3d8E.exit.i.i.i.i.i.i.i.i.i.i.i": ; preds = %bb.bi, %bb.bh
  store i64 %i.fy, ptr %i.l, align 8, !alias.scope !38986, !noalias !39003
  %.sroa.5.0..8.val.sroa_idx7.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  store i32 %.sroa.6.i.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i.i.i, ptr %.sroa.5.0..8.val.sroa_idx7.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, align 8, !alias.scope !38986, !noalias !39029
  %.sroa.4.sroa.6.0..sroa.5.0..8.val.sroa_idx7.i.sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.l, i64 12
  store i32 %.sroa.6.i.sroa.6.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i.i.i, ptr %.sroa.4.sroa.6.0..sroa.5.0..8.val.sroa_idx7.i.sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i, align 4, !alias.scope !38986, !noalias !39029
  %.sroa.4.sroa.6.sroa.6.0..sroa.4.sroa.6.0..sroa.5.0..8.val.sroa_idx7.i.sroa_idx.sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  store i32 %.sroa.6.i.sroa.6.sroa.6.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i.i.i, ptr %.sroa.4.sroa.6.sroa.6.0..sroa.4.sroa.6.0..sroa.5.0..8.val.sroa_idx7.i.sroa_idx.sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i, align 8, !alias.scope !38986, !noalias !39029
  %.sroa.4.sroa.6.sroa.9.0..sroa.4.sroa.6.0..sroa.5.0..8.val.sroa_idx7.i.sroa_idx.sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.l, i64 20
  store i32 %.sroa.6.i.sroa.6.sroa.7.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i.i.i, ptr %.sroa.4.sroa.6.sroa.9.0..sroa.4.sroa.6.0..sroa.5.0..8.val.sroa_idx7.i.sroa_idx.sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i, align 4, !alias.scope !38986, !noalias !39029
  %.sroa.4.sroa.6.sroa.10.0..sroa.4.sroa.6.0..sroa.5.0..8.val.sroa_idx7.i.sroa_idx.sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.l, i64 24
  store i32 %.sroa.6.i.sroa.6.sroa.7.sroa.6.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i.i.i, ptr %.sroa.4.sroa.6.sroa.10.0..sroa.4.sroa.6.0..sroa.5.0..8.val.sroa_idx7.i.sroa_idx.sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i, align 8, !alias.scope !38986, !noalias !39029
  %.sroa.4.sroa.6.sroa.11.0..sroa.4.sroa.6.0..sroa.5.0..8.val.sroa_idx7.i.sroa_idx.sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.l, i64 28
  store i32 %.sroa.6.i.sroa.6.sroa.7.sroa.7.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i.i.i, ptr %.sroa.4.sroa.6.sroa.11.0..sroa.4.sroa.6.0..sroa.5.0..8.val.sroa_idx7.i.sroa_idx.sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i, align 4, !alias.scope !38986, !noalias !39029
  %.sroa.4.sroa.6.sroa.12.0..sroa.4.sroa.6.0..sroa.5.0..8.val.sroa_idx7.i.sroa_idx.sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.l, i64 32
  store i32 %.sroa.6.i.sroa.6.sroa.7.sroa.7.sroa.6.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i.i.i, ptr %.sroa.4.sroa.6.sroa.12.0..sroa.4.sroa.6.0..sroa.5.0..8.val.sroa_idx7.i.sroa_idx.sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i, align 8, !alias.scope !38986, !noalias !39029
  %.sroa.4.sroa.6.sroa.13.0..sroa.4.sroa.6.0..sroa.5.0..8.val.sroa_idx7.i.sroa_idx.sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.l, i64 36
  store i32 %.sroa.6.i.sroa.6.sroa.7.sroa.7.sroa.7.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i.i.i, ptr %.sroa.4.sroa.6.sroa.13.0..sroa.4.sroa.6.0..sroa.5.0..8.val.sroa_idx7.i.sroa_idx.sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i, align 4, !alias.scope !38986, !noalias !39029
  %.sroa.4.sroa.6.sroa.14.0..sroa.4.sroa.6.0..sroa.5.0..8.val.sroa_idx7.i.sroa_idx.sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.l, i64 40
  store i32 %.sroa.6.i.sroa.6.sroa.7.sroa.7.sroa.7.sroa.6.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i.i.i, ptr %.sroa.4.sroa.6.sroa.14.0..sroa.4.sroa.6.0..sroa.5.0..8.val.sroa_idx7.i.sroa_idx.sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i, align 8, !alias.scope !38986, !noalias !39029
  %.sroa.4.sroa.6.sroa.15.0..sroa.4.sroa.6.0..sroa.5.0..8.val.sroa_idx7.i.sroa_idx.sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.l, i64 44
  store i32 %.sroa.6.i.sroa.6.sroa.7.sroa.7.sroa.7.sroa.7.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i.i.i, ptr %.sroa.4.sroa.6.sroa.15.0..sroa.4.sroa.6.0..sroa.5.0..8.val.sroa_idx7.i.sroa_idx.sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i, align 4, !alias.scope !38986, !noalias !39029
  %.sroa.4.sroa.6.sroa.16.0..sroa.4.sroa.6.0..sroa.5.0..8.val.sroa_idx7.i.sroa_idx.sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.l, i64 48
  store i32 %.sroa.6.i.sroa.6.sroa.7.sroa.7.sroa.7.sroa.7.sroa.6.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i.i.i, ptr %.sroa.4.sroa.6.sroa.16.0..sroa.4.sroa.6.0..sroa.5.0..8.val.sroa_idx7.i.sroa_idx.sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i, align 8, !alias.scope !38986, !noalias !39029
  %.sroa.4.sroa.6.sroa.17.0..sroa.4.sroa.6.0..sroa.5.0..8.val.sroa_idx7.i.sroa_idx.sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.l, i64 52
  store i32 %.sroa.6.i.sroa.6.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i.i.i, ptr %.sroa.4.sroa.6.sroa.17.0..sroa.4.sroa.6.0..sroa.5.0..8.val.sroa_idx7.i.sroa_idx.sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i, align 4, !alias.scope !38986, !noalias !39029
  %.sroa.4.sroa.6.sroa.18.0..sroa.4.sroa.6.0..sroa.5.0..8.val.sroa_idx7.i.sroa_idx.sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.l, i64 56
  store i32 %.sroa.6.i.sroa.6.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.6.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i.i.i, ptr %.sroa.4.sroa.6.sroa.18.0..sroa.4.sroa.6.0..sroa.5.0..8.val.sroa_idx7.i.sroa_idx.sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i, align 8, !alias.scope !38986, !noalias !39029
  %.sroa.4.sroa.6.sroa.19.0..sroa.4.sroa.6.0..sroa.5.0..8.val.sroa_idx7.i.sroa_idx.sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.l, i64 60
  store i32 %.sroa.6.i.sroa.6.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i.i.i, ptr %.sroa.4.sroa.6.sroa.19.0..sroa.4.sroa.6.0..sroa.5.0..8.val.sroa_idx7.i.sroa_idx.sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i, align 4, !alias.scope !38986, !noalias !39029
  %.sroa.4.sroa.6.sroa.20.0..sroa.4.sroa.6.0..sroa.5.0..8.val.sroa_idx7.i.sroa_idx.sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.l, i64 64
  store i32 %.sroa.6.i.sroa.6.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.6.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i.i.i, ptr %.sroa.4.sroa.6.sroa.20.0..sroa.4.sroa.6.0..sroa.5.0..8.val.sroa_idx7.i.sroa_idx.sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i, align 8, !alias.scope !38986, !noalias !39029
  %.sroa.4.sroa.6.sroa.21.0..sroa.4.sroa.6.0..sroa.5.0..8.val.sroa_idx7.i.sroa_idx.sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.l, i64 68
  store i32 %.sroa.6.i.sroa.6.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i.i.i, ptr %.sroa.4.sroa.6.sroa.21.0..sroa.4.sroa.6.0..sroa.5.0..8.val.sroa_idx7.i.sroa_idx.sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i, align 4, !alias.scope !38986, !noalias !39029
  %.sroa.4.sroa.6.sroa.22.0..sroa.4.sroa.6.0..sroa.5.0..8.val.sroa_idx7.i.sroa_idx.sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.l, i64 72
  store i32 %.sroa.6.i.sroa.6.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.6.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i.i.i, ptr %.sroa.4.sroa.6.sroa.22.0..sroa.4.sroa.6.0..sroa.5.0..8.val.sroa_idx7.i.sroa_idx.sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i, align 8, !alias.scope !38986, !noalias !39029
  %.sroa.4.sroa.6.sroa.23.0..sroa.4.sroa.6.0..sroa.5.0..8.val.sroa_idx7.i.sroa_idx.sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.l, i64 76
  store i32 %.sroa.6.i.sroa.6.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i.i.i, ptr %.sroa.4.sroa.6.sroa.23.0..sroa.4.sroa.6.0..sroa.5.0..8.val.sroa_idx7.i.sroa_idx.sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i, align 4, !alias.scope !38986, !noalias !39029
  %.sroa.4.sroa.6.sroa.24.0..sroa.4.sroa.6.0..sroa.5.0..8.val.sroa_idx7.i.sroa_idx.sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.l, i64 80
  store i32 %.sroa.6.i.sroa.6.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.6.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i.i.i, ptr %.sroa.4.sroa.6.sroa.24.0..sroa.4.sroa.6.0..sroa.5.0..8.val.sroa_idx7.i.sroa_idx.sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i, align 8, !alias.scope !38986, !noalias !39029
  %.sroa.4.sroa.6.sroa.25.0..sroa.4.sroa.6.0..sroa.5.0..8.val.sroa_idx7.i.sroa_idx.sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.l, i64 84
  store i32 %.sroa.6.i.sroa.6.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i.i.i, ptr %.sroa.4.sroa.6.sroa.25.0..sroa.4.sroa.6.0..sroa.5.0..8.val.sroa_idx7.i.sroa_idx.sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i, align 4, !alias.scope !38986, !noalias !39029
  %.sroa.4.sroa.6.sroa.26.0..sroa.4.sroa.6.0..sroa.5.0..8.val.sroa_idx7.i.sroa_idx.sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.l, i64 88
  store i32 %.sroa.6.i.sroa.6.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.6.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i.i.i, ptr %.sroa.4.sroa.6.sroa.26.0..sroa.4.sroa.6.0..sroa.5.0..8.val.sroa_idx7.i.sroa_idx.sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i, align 8, !alias.scope !38986, !noalias !39029
  %.sroa.4.sroa.6.sroa.27.0..sroa.4.sroa.6.0..sroa.5.0..8.val.sroa_idx7.i.sroa_idx.sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.l, i64 92
  store i32 %.sroa.6.i.sroa.6.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i.i.i, ptr %.sroa.4.sroa.6.sroa.27.0..sroa.4.sroa.6.0..sroa.5.0..8.val.sroa_idx7.i.sroa_idx.sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i, align 4, !alias.scope !38986, !noalias !39029
  %.sroa.4.sroa.6.sroa.28.0..sroa.4.sroa.6.0..sroa.5.0..8.val.sroa_idx7.i.sroa_idx.sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.l, i64 96
  store i32 %.sroa.6.i.sroa.6.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.6.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i.i.i, ptr %.sroa.4.sroa.6.sroa.28.0..sroa.4.sroa.6.0..sroa.5.0..8.val.sroa_idx7.i.sroa_idx.sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i, align 8, !alias.scope !38986, !noalias !39029
  %.sroa.4.sroa.6.sroa.29.0..sroa.4.sroa.6.0..sroa.5.0..8.val.sroa_idx7.i.sroa_idx.sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.l, i64 100
  store i32 %.sroa.6.i.sroa.6.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i.i.i, ptr %.sroa.4.sroa.6.sroa.29.0..sroa.4.sroa.6.0..sroa.5.0..8.val.sroa_idx7.i.sroa_idx.sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i, align 4, !alias.scope !38986, !noalias !39029
  %.sroa.4.sroa.6.sroa.30.0..sroa.4.sroa.6.0..sroa.5.0..8.val.sroa_idx7.i.sroa_idx.sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.l, i64 104
  store i32 %.sroa.6.i.sroa.6.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.6.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i.i.i, ptr %.sroa.4.sroa.6.sroa.30.0..sroa.4.sroa.6.0..sroa.5.0..8.val.sroa_idx7.i.sroa_idx.sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i, align 8, !alias.scope !38986, !noalias !39029
  %.sroa.4.sroa.6.sroa.31.0..sroa.4.sroa.6.0..sroa.5.0..8.val.sroa_idx7.i.sroa_idx.sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.l, i64 108
  store i32 %.sroa.6.i.sroa.6.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i.i.i, ptr %.sroa.4.sroa.6.sroa.31.0..sroa.4.sroa.6.0..sroa.5.0..8.val.sroa_idx7.i.sroa_idx.sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i, align 4, !alias.scope !38986, !noalias !39029
  %.sroa.4.sroa.6.sroa.32.0..sroa.4.sroa.6.0..sroa.5.0..8.val.sroa_idx7.i.sroa_idx.sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.l, i64 112
  store i32 %.sroa.6.i.sroa.6.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.6.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i.i.i, ptr %.sroa.4.sroa.6.sroa.32.0..sroa.4.sroa.6.0..sroa.5.0..8.val.sroa_idx7.i.sroa_idx.sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i, align 8, !alias.scope !38986, !noalias !39029
  %.sroa.4.sroa.6.sroa.33.0..sroa.4.sroa.6.0..sroa.5.0..8.val.sroa_idx7.i.sroa_idx.sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.l, i64 116
  store i32 %.sroa.6.i.sroa.6.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i.i.i, ptr %.sroa.4.sroa.6.sroa.33.0..sroa.4.sroa.6.0..sroa.5.0..8.val.sroa_idx7.i.sroa_idx.sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i, align 4, !alias.scope !38986, !noalias !39029
  %.sroa.4.sroa.6.sroa.34.0..sroa.4.sroa.6.0..sroa.5.0..8.val.sroa_idx7.i.sroa_idx.sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.l, i64 120
  store i32 %.sroa.6.i.sroa.6.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.6.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i.i.i, ptr %.sroa.4.sroa.6.sroa.34.0..sroa.4.sroa.6.0..sroa.5.0..8.val.sroa_idx7.i.sroa_idx.sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i, align 8, !alias.scope !38986, !noalias !39029
  %.sroa.4.sroa.6.sroa.35.0..sroa.4.sroa.6.0..sroa.5.0..8.val.sroa_idx7.i.sroa_idx.sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.l, i64 124
  store i32 %.sroa.6.i.sroa.6.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i.i.i, ptr %.sroa.4.sroa.6.sroa.35.0..sroa.4.sroa.6.0..sroa.5.0..8.val.sroa_idx7.i.sroa_idx.sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i, align 4, !alias.scope !38986, !noalias !39029
  %.sroa.4.sroa.6.sroa.36.0..sroa.4.sroa.6.0..sroa.5.0..8.val.sroa_idx7.i.sroa_idx.sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.l, i64 128
  store i32 %.sroa.6.i.sroa.6.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.6.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i.i.i, ptr %.sroa.4.sroa.6.sroa.36.0..sroa.4.sroa.6.0..sroa.5.0..8.val.sroa_idx7.i.sroa_idx.sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i, align 8, !alias.scope !38986, !noalias !39029
  %.sroa.4.sroa.6.sroa.37.0..sroa.4.sroa.6.0..sroa.5.0..8.val.sroa_idx7.i.sroa_idx.sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.l, i64 132
  store i32 %.sroa.6.i.sroa.6.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i.i.i, ptr %.sroa.4.sroa.6.sroa.37.0..sroa.4.sroa.6.0..sroa.5.0..8.val.sroa_idx7.i.sroa_idx.sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i, align 4, !alias.scope !38986, !noalias !39029
  %.sroa.4.sroa.6.sroa.38.0..sroa.4.sroa.6.0..sroa.5.0..8.val.sroa_idx7.i.sroa_idx.sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.l, i64 136
  store i32 %.sroa.6.i.sroa.6.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.6.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i.i.i, ptr %.sroa.4.sroa.6.sroa.38.0..sroa.4.sroa.6.0..sroa.5.0..8.val.sroa_idx7.i.sroa_idx.sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i, align 8, !alias.scope !38986, !noalias !39029
  %.sroa.4.sroa.6.sroa.39.0..sroa.4.sroa.6.0..sroa.5.0..8.val.sroa_idx7.i.sroa_idx.sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.l, i64 140
  store i32 %.sroa.6.i.sroa.6.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i.i.i, ptr %.sroa.4.sroa.6.sroa.39.0..sroa.4.sroa.6.0..sroa.5.0..8.val.sroa_idx7.i.sroa_idx.sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i, align 4, !alias.scope !38986, !noalias !39029
  %.sroa.4.sroa.6.sroa.40.0..sroa.4.sroa.6.0..sroa.5.0..8.val.sroa_idx7.i.sroa_idx.sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.l, i64 144
  store i32 %.sroa.6.i.sroa.6.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.6.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i.i.i, ptr %.sroa.4.sroa.6.sroa.40.0..sroa.4.sroa.6.0..sroa.5.0..8.val.sroa_idx7.i.sroa_idx.sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i, align 8, !alias.scope !38986, !noalias !39029
  %.sroa.4.sroa.6.sroa.41.0..sroa.4.sroa.6.0..sroa.5.0..8.val.sroa_idx7.i.sroa_idx.sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.l, i64 148
  store i32 %.sroa.6.i.sroa.6.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i.i.i, ptr %.sroa.4.sroa.6.sroa.41.0..sroa.4.sroa.6.0..sroa.5.0..8.val.sroa_idx7.i.sroa_idx.sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i, align 4, !alias.scope !38986, !noalias !39029
  %.sroa.4.sroa.6.sroa.42.0..sroa.4.sroa.6.0..sroa.5.0..8.val.sroa_idx7.i.sroa_idx.sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.l, i64 152
  store i32 %.sroa.6.i.sroa.6.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.6.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i.i.i, ptr %.sroa.4.sroa.6.sroa.42.0..sroa.4.sroa.6.0..sroa.5.0..8.val.sroa_idx7.i.sroa_idx.sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i, align 8, !alias.scope !38986, !noalias !39029
  %.sroa.4.sroa.6.sroa.43.0..sroa.4.sroa.6.0..sroa.5.0..8.val.sroa_idx7.i.sroa_idx.sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.l, i64 156
  store i32 %.sroa.6.i.sroa.6.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i.i.i, ptr %.sroa.4.sroa.6.sroa.43.0..sroa.4.sroa.6.0..sroa.5.0..8.val.sroa_idx7.i.sroa_idx.sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i, align 4, !alias.scope !38986, !noalias !39029
  %.sroa.4.sroa.6.sroa.44.0..sroa.4.sroa.6.0..sroa.5.0..8.val.sroa_idx7.i.sroa_idx.sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.l, i64 160
  store i32 %.sroa.6.i.sroa.6.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.6.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i.i.i, ptr %.sroa.4.sroa.6.sroa.44.0..sroa.4.sroa.6.0..sroa.5.0..8.val.sroa_idx7.i.sroa_idx.sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i, align 8, !alias.scope !38986, !noalias !39029
  %.sroa.4.sroa.6.sroa.45.0..sroa.4.sroa.6.0..sroa.5.0..8.val.sroa_idx7.i.sroa_idx.sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.l, i64 164
  store i32 %.sroa.6.i.sroa.6.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i.i.i, ptr %.sroa.4.sroa.6.sroa.45.0..sroa.4.sroa.6.0..sroa.5.0..8.val.sroa_idx7.i.sroa_idx.sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i, align 4, !alias.scope !38986, !noalias !39029
  %.sroa.4.sroa.6.sroa.46.0..sroa.4.sroa.6.0..sroa.5.0..8.val.sroa_idx7.i.sroa_idx.sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.l, i64 168
  store i32 %.sroa.6.i.sroa.6.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.6.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i.i.i, ptr %.sroa.4.sroa.6.sroa.46.0..sroa.4.sroa.6.0..sroa.5.0..8.val.sroa_idx7.i.sroa_idx.sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i, align 8, !alias.scope !38986, !noalias !39029
  %.sroa.4.sroa.6.sroa.47.0..sroa.4.sroa.6.0..sroa.5.0..8.val.sroa_idx7.i.sroa_idx.sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.l, i64 172
  store i32 %.sroa.6.i.sroa.6.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i.i.i, ptr %.sroa.4.sroa.6.sroa.47.0..sroa.4.sroa.6.0..sroa.5.0..8.val.sroa_idx7.i.sroa_idx.sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i, align 4, !alias.scope !38986, !noalias !39029
  %.sroa.4.sroa.6.sroa.48.0..sroa.4.sroa.6.0..sroa.5.0..8.val.sroa_idx7.i.sroa_idx.sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.l, i64 176
  store i32 %.sroa.6.i.sroa.6.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.6.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i.i.i, ptr %.sroa.4.sroa.6.sroa.48.0..sroa.4.sroa.6.0..sroa.5.0..8.val.sroa_idx7.i.sroa_idx.sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i, align 8, !alias.scope !38986, !noalias !39029
  %.sroa.4.sroa.6.sroa.49.0..sroa.4.sroa.6.0..sroa.5.0..8.val.sroa_idx7.i.sroa_idx.sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.l, i64 180
  store i32 %.sroa.6.i.sroa.6.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i.i.i, ptr %.sroa.4.sroa.6.sroa.49.0..sroa.4.sroa.6.0..sroa.5.0..8.val.sroa_idx7.i.sroa_idx.sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i, align 4, !alias.scope !38986, !noalias !39029
  %.sroa.4.sroa.6.sroa.50.0..sroa.4.sroa.6.0..sroa.5.0..8.val.sroa_idx7.i.sroa_idx.sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.l, i64 184
  store i32 %.sroa.6.i.sroa.6.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.6.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i.i.i, ptr %.sroa.4.sroa.6.sroa.50.0..sroa.4.sroa.6.0..sroa.5.0..8.val.sroa_idx7.i.sroa_idx.sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i, align 8, !alias.scope !38986, !noalias !39029
  %.sroa.4.sroa.6.sroa.51.0..sroa.4.sroa.6.0..sroa.5.0..8.val.sroa_idx7.i.sroa_idx.sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.l, i64 188
  store i32 %.sroa.6.i.sroa.6.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i.i.i, ptr %.sroa.4.sroa.6.sroa.51.0..sroa.4.sroa.6.0..sroa.5.0..8.val.sroa_idx7.i.sroa_idx.sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i, align 4, !alias.scope !38986, !noalias !39029
  %.sroa.4.sroa.6.sroa.52.0..sroa.4.sroa.6.0..sroa.5.0..8.val.sroa_idx7.i.sroa_idx.sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.l, i64 192
  store <2 x i32> %i.fz, ptr %.sroa.4.sroa.6.sroa.52.0..sroa.4.sroa.6.0..sroa.5.0..8.val.sroa_idx7.i.sroa_idx.sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i, align 8, !alias.scope !38986, !noalias !39029
  %.sroa.68.0..8.val.sroa_idx9.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.l, i64 200
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(120) %.sroa.68.0..8.val.sroa_idx9.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(120) %.sroa.7.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.5.sroa.6.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 120, i1 false), !noalias !39029
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.5.sroa.6.i.i.i.i.i.i.i.i.i.i.i.i.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !38996
  br label %.loopexit.i.i.i.i.i.i.i.i.i.i

bb.bu:                                            ; preds = %bb.bg
  %i.ik = landingpad { ptr, i32 }
          cleanup
  store i16 %i.fs, ptr %.sroa.10102.0..sroa_idx103.i, align 8, !alias.scope !38991, !noalias !38992
  store i64 %i.fv, ptr %.sroa.12107.0..sroa_idx108.i, align 8, !alias.scope !38999, !noalias !38992
  br label %.body.i.i.i.i.i.i.i

.loopexit.i.i.loopexit.i.i.i.i.i.i.i.i:           ; preds = %"_ZN4core4iter8adapters3map12map_try_fold28_$u7b$$u7b$closure$u7d$$u7d$17h48c7c5313fe8492dE.exit.i.i.i.i.i.i.i.i.i.i.i.i.i", %"_ZN109_$LT$std..collections..hash..map..IntoIter$LT$K$C$V$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17habf3714eabccac5bE.exit.i.i.i.i.i.i.i.i.i.i.i.i.i"
  %.lcssa129.i.i.i.i.i.i.i.i = phi i64 [ %i.fv, %"_ZN109_$LT$std..collections..hash..map..IntoIter$LT$K$C$V$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17habf3714eabccac5bE.exit.i.i.i.i.i.i.i.i.i.i.i.i.i" ], [ 0, %"_ZN4core4iter8adapters3map12map_try_fold28_$u7b$$u7b$closure$u7d$$u7d$17h48c7c5313fe8492dE.exit.i.i.i.i.i.i.i.i.i.i.i.i.i" ]
  store i16 %i.fs, ptr %.sroa.10102.0..sroa_idx103.i, align 8, !alias.scope !38991, !noalias !38992
  br label %.loopexit.i.i.i.i.i.i.i.i.i.i

.loopexit.i.i.i.i.i.i.i.i.i.i:                    ; preds = %.loopexit.i.i.loopexit.i.i.i.i.i.i.i.i, %"_ZN102_$LT$core..iter..adapters..map..Map$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$8try_fold17h6451d6ce5281e3d8E.exit.i.i.i.i.i.i.i.i.i.i.i"
  %4 = phi i64 [ %.lcssa129.i.i.i.i.i.i.i.i, %.loopexit.i.i.loopexit.i.i.i.i.i.i.i.i ], [ %i.fv, %"_ZN102_$LT$core..iter..adapters..map..Map$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$8try_fold17h6451d6ce5281e3d8E.exit.i.i.i.i.i.i.i.i.i.i.i" ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.3.i.i.i.i.i.i.i.i.i.i.i.i.i)
  call void @llvm.experimental.noalias.scope.decl(metadata !39030)
  call void @llvm.experimental.noalias.scope.decl(metadata !39031)
  call void @llvm.experimental.noalias.scope.decl(metadata !39032)
  call void @llvm.experimental.noalias.scope.decl(metadata !39033)
  call void @llvm.experimental.noalias.scope.decl(metadata !39034)
  call void @llvm.experimental.noalias.scope.decl(metadata !39035)
  call void @llvm.experimental.noalias.scope.decl(metadata !39036)
  %i.il = icmp eq i64 %4, 0
  br i1 %i.il, label %"_ZN9hashbrown3raw16RawIter$LT$T$GT$13drop_elements17hdc6b03df66df7f89E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i", label %.preheader.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i

.preheader.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i:     ; preds = %.loopexit.i.i.i.i.i.i.i.i.i.i
  %.promoted.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = load i16, ptr %.sroa.10102.0..sroa_idx103.i, align 8, !alias.scope !39037, !noalias !39038
  %.promoted7.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %.sroa.793.0..sroa_idx94.i, align 8, !alias.scope !39039, !noalias !39038
  %.promoted11.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %.sroa.896.0..sroa_idx97.i, align 8, !alias.scope !39039, !noalias !39038
  br label %bb.bv

bb.bv:                                            ; preds = %"_ZN9hashbrown3raw21RawIterRange$LT$T$GT$9next_impl17had0f7d26de005a51E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i", %.preheader.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %.lcssa13.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi ptr [ %.promoted11.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %.preheader.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ %.lcssa12.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %"_ZN9hashbrown3raw21RawIterRange$LT$T$GT$9next_impl17had0f7d26de005a51E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i" ] ; 2 uses
  %i.im = phi i64 [ %4, %.preheader.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ %i.iz, %"_ZN9hashbrown3raw21RawIterRange$LT$T$GT$9next_impl17had0f7d26de005a51E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i" ]
  %.lcssa69.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi ptr [ %.promoted7.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %.preheader.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ %.lcssa68.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %"_ZN9hashbrown3raw21RawIterRange$LT$T$GT$9next_impl17had0f7d26de005a51E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i" ] ; 2 uses
  %i.in = phi i16 [ %.promoted.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %.preheader.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ %i.iw, %"_ZN9hashbrown3raw21RawIterRange$LT$T$GT$9next_impl17had0f7d26de005a51E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i" ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !39040)
  %.not13.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq i16 %i.in, 0
  br i1 %.not13.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %"_ZN9hashbrown3raw21RawIterRange$LT$T$GT$9next_impl17had0f7d26de005a51E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i"

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i:       ; preds = %bb.bv, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.io = phi ptr [ %i.is, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ %.lcssa13.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.bv ] ; 2 uses
  %i.ip = phi ptr [ %i.ir, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ %.lcssa69.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.bv ]
  %.val911.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = load <16 x i8>, ptr %i.io, align 16, !noalias !39041
  %i.iq = icmp sgt <16 x i8> %.val911.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, splat (i8 -1)
  %i.ir = getelementptr inbounds i8, ptr %i.ip, i64 -2048 ; 2 uses
  %i.is = getelementptr inbounds nuw i8, ptr %i.io, i64 16 ; 2 uses
  %.cast.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = bitcast <16 x i1> %i.iq to i16 ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq i16 %.cast.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %"_ZN9hashbrown3raw21RawIterRange$LT$T$GT$9next_impl17had0f7d26de005a51E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i"

"_ZN9hashbrown3raw21RawIterRange$LT$T$GT$9next_impl17had0f7d26de005a51E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i": ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.bv
  %.lcssa12.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi ptr [ %.lcssa13.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.bv ], [ %i.is, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ]
  %.lcssa68.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi ptr [ %.lcssa69.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.bv ], [ %i.ir, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ] ; 2 uses
  %.lcssa.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi i16 [ %i.in, %bb.bv ], [ %.cast.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ] ; 3 uses
  %i.it = add i16 %.lcssa.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, -1
  %i.iu = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i1 true)
  %i.iv = zext nneg i16 %i.iu to i64
  %i.iw = and i16 %i.it, %.lcssa.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.ix = sub nsw i64 0, %i.iv
  %i.iy = getelementptr inbounds [128 x i8], ptr %.lcssa68.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 %i.ix
  %i.iz = add i64 %i.im, -1                       ; 2 uses
  %i.ja = getelementptr inbounds i8, ptr %i.iy, i64 -120
  call fastcc void @"_ZN4core3ptr68drop_in_place$LT$nickel_lang_package..manifest..DependencyFormat$GT$17h4c47e746dfd69708E"(ptr noalias noundef readonly align 8 dereferenceable(120) %i.ja), !noalias !39042
  %.old5.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq i64 %i.iz, 0
  br i1 %.old5.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %"_ZN9hashbrown3raw16RawIter$LT$T$GT$13drop_elements17hdc6b03df66df7f89E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i", label %bb.bv

"_ZN9hashbrown3raw16RawIter$LT$T$GT$13drop_elements17hdc6b03df66df7f89E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i": ; preds = %"_ZN9hashbrown3raw21RawIterRange$LT$T$GT$9next_impl17had0f7d26de005a51E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i", %.loopexit.i.i.i.i.i.i.i.i.i.i, %.loopexit.i.i.thread.i.i.i.i.i.i.i.i
  %i.jb = load i64, ptr %i.i, align 8, !range !64, !alias.scope !39043, !noalias !39038, !noundef !41 ; 2 uses
  %.not.i.i.i.i.i.i1.i.i.i.i.i.i.i.i.i.i = icmp eq i64 %i.jb, 0
  br i1 %.not.i.i.i.i.i.i1.i.i.i.i.i.i.i.i.i.i, label %bb.bz, label %bb.bw

bb.bw:                                            ; preds = %"_ZN9hashbrown3raw16RawIter$LT$T$GT$13drop_elements17hdc6b03df66df7f89E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i"
  %i.jc = load i64, ptr %.sroa.587.0..sroa_idx88.i, align 8, !alias.scope !39043, !noalias !39038, !noundef !41 ; 2 uses
  %i.jd = icmp eq i64 %i.jc, 0
  br i1 %i.jd, label %bb.bz, label %bb.bx

bb.bx:                                            ; preds = %bb.bw
  %i.je = load ptr, ptr %.sroa.690.0..sroa_idx91.i, align 8, !alias.scope !39043, !noalias !39038, !nonnull !41, !noundef !41
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.je, i64 noundef %i.jc, i64 noundef range(i64 1, -9223372036854775807) %i.jb) #67, !noalias !39044
  br label %bb.bz

.body.i.i.i.i.i.i.i:                              ; preds = %bb.bu, %bb.bt, %bb.br
  %eh.lpad-body.i.i.i.i.i.i.i.i.i.i = phi { ptr, i32 } [ %i.ik, %bb.bu ], [ %i.id, %bb.br ], [ %i.ig, %bb.bt ]
  call fastcc void @"_ZN4core3ptr411drop_in_place$LT$core..iter..adapters..GenericShunt$LT$core..iter..adapters..map..Map$LT$std..collections..hash..map..IntoIter$LT$nickel_lang_parser..identifier..Ident$C$nickel_lang_package..manifest..DependencyFormat$GT$$C$nickel_lang_package..manifest..ManifestFile..from_term..$u7b$$u7b$closure$u7d$$u7d$$GT$$C$core..result..Result$LT$core..convert..Infallible$C$nickel_lang_package..error..Error$GT$$GT$$GT$17h49f27c330f771c35E"(ptr noalias noundef nonnull align 8 dereferenceable(72) %i.i) #75, !noalias !39045
  call fastcc void @"_ZN4core3ptr136drop_in_place$LT$std..collections..hash..map..HashMap$LT$nickel_lang_parser..identifier..Ident$C$nickel_lang_package..Dependency$GT$$GT$17hcb7276076f194c91E"(ptr noalias noundef align 8 dereferenceable(48) %i.j) #75, !noalias !38975
  br label %.body.i.i.i.i

bb.by:                                            ; preds = %"_ZN3std3sys12thread_local6native4lazy20Storage$LT$T$C$D$GT$16get_or_init_slow17hce8715a73596a4f8E.exit.i.i.i.i.i.i.i.i.i.i"
  %i.jf = landingpad { ptr, i32 }
          cleanup
  call fastcc void @"_ZN4core3ptr411drop_in_place$LT$core..iter..adapters..GenericShunt$LT$core..iter..adapters..map..Map$LT$std..collections..hash..map..IntoIter$LT$nickel_lang_parser..identifier..Ident$C$nickel_lang_package..manifest..DependencyFormat$GT$$C$nickel_lang_package..manifest..ManifestFile..from_term..$u7b$$u7b$closure$u7d$$u7d$$GT$$C$core..result..Result$LT$core..convert..Infallible$C$nickel_lang_package..error..Error$GT$$GT$$GT$17h49f27c330f771c35E"(ptr noalias noundef nonnull align 8 dereferenceable(72) %i.k) #75, !noalias !39046
  br label %.body.i.i.i.i

.body.i.i.i.i:                                    ; preds = %bb.by, %.body.i.i.i.i.i.i.i
  %.pn.i.i.i.i = phi { ptr, i32 } [ %i.jf, %bb.by ], [ %eh.lpad-body.i.i.i.i.i.i.i.i.i.i, %.body.i.i.i.i.i.i.i ] ; 2 uses
  %i.jg = load i64, ptr %i.l, align 8, !range !65, !noalias !38968, !noundef !41
  %.not.i.i.i.i = icmp eq i64 %i.jg, -9223372036854775788
  br i1 %.not.i.i.i.i, label %bb.cq, label %bb.cg

bb.bz:                                            ; preds = %bb.bx, %bb.bw, %"_ZN9hashbrown3raw16RawIter$LT$T$GT$13drop_elements17hdc6b03df66df7f89E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !38977
  %.sroa.0.0.copyload140.i.i.i.i = load ptr, ptr %i.j, align 8, !noalias !39047 ; 7 uses
  %.sroa.6.0..sroa_idx141.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.j, i64 8 ; 2 uses
  %i.jh = load <2 x i64>, ptr %.sroa.6.0..sroa_idx141.i.i.i.i, align 8, !noalias !39047
  %.sroa.6.0.copyload142.i.i.i.i = load i64, ptr %.sroa.6.0..sroa_idx141.i.i.i.i, align 8, !noalias !39047 ; 3 uses
  %.sroa.7145.0.copyload147.i.i.i.i = load i64, ptr %i.fc, align 8, !noalias !39047 ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.8.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.4.0..sroa_idx.i.i.i.i.i.i.i, i64 16, i1 false), !noalias !39047
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !38972
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !38969
  %i.ji = load i64, ptr %i.l, align 8, !range !65, !noalias !38968, !noundef !41 ; 2 uses
  %.not.not.i.i.i.i = icmp eq i64 %i.ji, -9223372036854775788
  br i1 %.not.not.i.i.i.i, label %.thread.i, label %bb.ca

.thread.i:                                        ; preds = %bb.bz
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.1243.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.8.i.i.i.i, i64 16, i1 false), !noalias !39048
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.8.i.i.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !38968
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.645.sroa.10.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.1243.i, i64 16, i1 false), !noalias !38931
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.1243.i)
  %.sroa.036.sroa.16.sroa.8.0..sroa.036.sroa.16.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 256
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.036.sroa.16.sroa.8.0..sroa.036.sroa.16.0..sroa_idx.sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.645.sroa.10.i, i64 16, i1 false), !noalias !38959
  %.sroa.036.sroa.12.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 128
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.036.sroa.12.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.13.i, i64 24, i1 false), !noalias !38959
  %.sroa.036.sroa.14.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 176
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.036.sroa.14.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.15.i, i64 24, i1 false), !noalias !38959
  %i.jj = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.jj, ptr noundef nonnull align 8 dereferenceable(24) %i.r, i64 24, i1 false), !noalias !38959
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !noalias !38931
  %.sroa.036.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 %.sroa.987.sroa.0.0.copyload.i, ptr %.sroa.036.sroa.5.0..sroa_idx.i, align 8, !alias.scope !38930, !noalias !38959
  %.sroa.036.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr %.sroa.4.0.copyload.i, ptr %.sroa.036.sroa.6.0..sroa_idx.i, align 8, !alias.scope !38930, !noalias !38959
  %.sroa.036.sroa.7.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i64 %.sroa.5.0.copyload.i, ptr %.sroa.036.sroa.7.0..sroa_idx.i, align 8, !alias.scope !38930, !noalias !38959
  %.sroa.036.sroa.8.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 56
  store <2 x i64> %i.dz, ptr %.sroa.036.sroa.8.0..sroa_idx.i, align 8, !alias.scope !38930, !noalias !38959
  %.sroa.036.sroa.10.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 72
  store i64 %.sroa.10.0.copyload.i, ptr %.sroa.036.sroa.10.0..sroa_idx.i, align 8, !alias.scope !38930, !noalias !38959
  %.sroa.036.sroa.11.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 80
  store i64 0, ptr %.sroa.036.sroa.11.0..sroa_idx.i, align 8, !alias.scope !38930, !noalias !38959
  %.sroa.036.sroa.11.sroa.5.0..sroa.036.sroa.11.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 88
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.036.sroa.11.sroa.5.0..sroa.036.sroa.11.0..sroa_idx.sroa_idx.i, align 8, !alias.scope !38930, !noalias !38959
  %.sroa.036.sroa.11.sroa.6.0..sroa.036.sroa.11.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 96
  store i64 0, ptr %.sroa.036.sroa.11.sroa.6.0..sroa.036.sroa.11.0..sroa_idx.sroa_idx.i, align 8, !alias.scope !38930, !noalias !38959
  %.sroa.036.sroa.11.sroa.7.0..sroa.036.sroa.11.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 104
  store i64 %.sroa.886.0.copyload.i, ptr %.sroa.036.sroa.11.sroa.7.0..sroa.036.sroa.11.0..sroa_idx.sroa_idx.i, align 8, !alias.scope !38930, !noalias !38959
  %.sroa.036.sroa.11.sroa.8.0..sroa.036.sroa.11.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 112
  store i64 %.sroa.583.0.copyload..i, ptr %.sroa.036.sroa.11.sroa.8.0..sroa.036.sroa.11.0..sroa_idx.sroa_idx.i, align 8, !alias.scope !38930, !noalias !38959
  %.sroa.036.sroa.11.sroa.9.0..sroa.036.sroa.11.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 120
  store i64 %.sroa.0135.0.i, ptr %.sroa.036.sroa.11.sroa.9.0..sroa.036.sroa.11.0..sroa_idx.sroa_idx.i, align 8, !alias.scope !38930, !noalias !38959
  %.sroa.036.sroa.13.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 152
  store i64 %.sroa.1189.sroa.0.0.copyload.i, ptr %.sroa.036.sroa.13.0..sroa_idx.i, align 8, !alias.scope !38930, !noalias !38959
  %.sroa.036.sroa.13.sroa.5.0..sroa.036.sroa.13.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 160
  store ptr %.sroa.1189.sroa.5.0.copyload.i, ptr %.sroa.036.sroa.13.sroa.5.0..sroa.036.sroa.13.0..sroa_idx.sroa_idx.i, align 8, !alias.scope !38930, !noalias !38959
  %.sroa.036.sroa.13.sroa.6.0..sroa.036.sroa.13.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 168
  store i64 %.sroa.1189.sroa.6.0.copyload.i, ptr %.sroa.036.sroa.13.sroa.6.0..sroa.036.sroa.13.0..sroa_idx.sroa_idx.i, align 8, !alias.scope !38930, !noalias !38959
  %.sroa.036.sroa.15.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 200
  store i64 %.sroa.1391.sroa.0.0.copyload.i, ptr %.sroa.036.sroa.15.0..sroa_idx.i, align 8, !alias.scope !38930, !noalias !38959
  %.sroa.036.sroa.15.sroa.5.0..sroa.036.sroa.15.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 208
  store ptr %.sroa.1391.sroa.5.0.copyload.i, ptr %.sroa.036.sroa.15.sroa.5.0..sroa.036.sroa.15.0..sroa_idx.sroa_idx.i, align 8, !alias.scope !38930, !noalias !38959
  %.sroa.036.sroa.15.sroa.6.0..sroa.036.sroa.15.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 216
  store i64 %.sroa.1391.sroa.6.0.copyload.i, ptr %.sroa.036.sroa.15.sroa.6.0..sroa.036.sroa.15.0..sroa_idx.sroa_idx.i, align 8, !alias.scope !38930, !noalias !38959
  %.sroa.036.sroa.16.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 224
  store ptr %.sroa.0.0.copyload140.i.i.i.i, ptr %.sroa.036.sroa.16.0..sroa_idx.i, align 8, !alias.scope !38930, !noalias !38959
  %.sroa.036.sroa.16.sroa.5.0..sroa.036.sroa.16.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 232
  store <2 x i64> %i.jh, ptr %.sroa.036.sroa.16.sroa.5.0..sroa.036.sroa.16.0..sroa_idx.sroa_idx.i, align 8, !alias.scope !38930, !noalias !38959
  %.sroa.036.sroa.16.sroa.7.0..sroa.036.sroa.16.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 248
  store i64 %.sroa.7145.0.copyload147.i.i.i.i, ptr %.sroa.036.sroa.16.sroa.7.0..sroa.036.sroa.16.0..sroa_idx.sroa_idx.i, align 8, !alias.scope !38930, !noalias !38959
  %.sroa.1237.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 272
  store i32 %.sroa.1593.0.copyload.i, ptr %.sroa.1237.0..sroa_idx.i, align 8, !alias.scope !38930, !noalias !38959
  store i64 -9223372036854775788, ptr %0, align 8, !alias.scope !38930, !noalias !38959
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.645.sroa.10.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t), !noalias !38931
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u), !noalias !38931
  br label %bb.ct

bb.ca:                                            ; preds = %bb.bz
  %.sroa.635.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %.sroa.635.0.copyload.i = load ptr, ptr %.sroa.635.0..sroa_idx.i, align 8, !noalias !39048
  %.sroa.937.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %i.jk = load <2 x i64>, ptr %.sroa.937.0..sroa_idx.i, align 8, !noalias !39048
  %.sroa.1141.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.l, i64 32
  %.sroa.1141.0.copyload.i = load i64, ptr %.sroa.1141.0..sroa_idx.i, align 8, !noalias !39048
  %.sroa.1243.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.l, i64 40
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.1243.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.1243.0..sroa_idx.i, i64 16, i1 false), !noalias !39048
  %.sroa.1344.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.l, i64 56
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(264) %.sroa.1344.i, ptr noundef nonnull align 8 dereferenceable(264) %.sroa.1344.0..sroa_idx.i, i64 264, i1 false), !noalias !38931
  %i.jl = icmp eq i64 %.sroa.6.0.copyload142.i.i.i.i, 0
  br i1 %i.jl, label %.thread171.i, label %bb.cb

bb.cb:                                            ; preds = %bb.ca
  %i.jm = icmp eq i64 %.sroa.7145.0.copyload147.i.i.i.i, 0
  br i1 %i.jm, label %_ZN9hashbrown3raw13RawTableInner13drop_elements17h71b313fafdbddef6E.exit.i.i.i.i.i.i.i.i.i, label %bb.cc

bb.cc:                                            ; preds = %bb.cb
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload140.i.i.i.i) ]
  %.val13.i.i.i.i.i.i.i.i.i.i.i = load <16 x i8>, ptr %.sroa.0.0.copyload140.i.i.i.i, align 16, !noalias !39049
  %i.jn = icmp sgt <16 x i8> %.val13.i.i.i.i.i.i.i.i.i.i.i, splat (i8 -1)
  %i.jo = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload140.i.i.i.i, i64 16
  %i.jp = bitcast <16 x i1> %i.jn to i16
  br label %bb.cd

bb.cd:                                            ; preds = %"_ZN9hashbrown3raw21RawIterRange$LT$T$GT$9next_impl17hdc2ceb3395492b8eE.exit.i.i.i.i.i.i.i.i.i.i", %bb.cc
  %.sroa.06.017.i.i.i.i.i.i.i.i.i.i = phi ptr [ %.sroa.0.0.copyload140.i.i.i.i, %bb.cc ], [ %.sroa.06.1.i.i.i.i.i.i.i.i.i.i, %"_ZN9hashbrown3raw21RawIterRange$LT$T$GT$9next_impl17hdc2ceb3395492b8eE.exit.i.i.i.i.i.i.i.i.i.i" ] ; 2 uses
  %.sroa.6.016.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.jo, %bb.cc ], [ %.sroa.6.1.i.i.i.i.i.i.i.i.i.i, %"_ZN9hashbrown3raw21RawIterRange$LT$T$GT$9next_impl17hdc2ceb3395492b8eE.exit.i.i.i.i.i.i.i.i.i.i" ] ; 2 uses
  %.sroa.87.015.i.i.i.i.i.i.i.i.i.i = phi i16 [ %i.jp, %bb.cc ], [ %i.jy, %"_ZN9hashbrown3raw21RawIterRange$LT$T$GT$9next_impl17hdc2ceb3395492b8eE.exit.i.i.i.i.i.i.i.i.i.i" ] ; 2 uses
  %.sroa.108.014.i.i.i.i.i.i.i.i.i.i = phi i64 [ %.sroa.7145.0.copyload147.i.i.i.i, %bb.cc ], [ %i.kb, %"_ZN9hashbrown3raw21RawIterRange$LT$T$GT$9next_impl17hdc2ceb3395492b8eE.exit.i.i.i.i.i.i.i.i.i.i" ]
  %.not13.i.i.i.i.i.i.i.i.i.i.i = icmp eq i16 %.sroa.87.015.i.i.i.i.i.i.i.i.i.i, 0
  br i1 %.not13.i.i.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i, label %"_ZN9hashbrown3raw21RawIterRange$LT$T$GT$9next_impl17hdc2ceb3395492b8eE.exit.i.i.i.i.i.i.i.i.i.i"

.lr.ph.i.i.i.i.i.i.i.i.i.i.i:                     ; preds = %bb.cd, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i
  %i.jq = phi ptr [ %i.ju, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i ], [ %.sroa.6.016.i.i.i.i.i.i.i.i.i.i, %bb.cd ] ; 2 uses
  %i.jr = phi ptr [ %i.jt, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i ], [ %.sroa.06.017.i.i.i.i.i.i.i.i.i.i, %bb.cd ]
  %.val911.i.i.i.i.i.i.i.i.i.i.i = load <16 x i8>, ptr %i.jq, align 16, !noalias !39050
  %i.js = icmp sgt <16 x i8> %.val911.i.i.i.i.i.i.i.i.i.i.i, splat (i8 -1)
  %i.jt = getelementptr inbounds i8, ptr %i.jr, i64 -3072 ; 2 uses
  %i.ju = getelementptr inbounds nuw i8, ptr %i.jq, i64 16 ; 2 uses
  %.cast.i.i.i.i.i.i.i.i.i.i.i = bitcast <16 x i1> %i.js to i16 ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i.i.i = icmp eq i16 %.cast.i.i.i.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i, label %"_ZN9hashbrown3raw21RawIterRange$LT$T$GT$9next_impl17hdc2ceb3395492b8eE.exit.i.i.i.i.i.i.i.i.i.i"

"_ZN9hashbrown3raw21RawIterRange$LT$T$GT$9next_impl17hdc2ceb3395492b8eE.exit.i.i.i.i.i.i.i.i.i.i": ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i, %bb.cd
  %.sroa.6.1.i.i.i.i.i.i.i.i.i.i = phi ptr [ %.sroa.6.016.i.i.i.i.i.i.i.i.i.i, %bb.cd ], [ %i.ju, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i ]
  %.sroa.06.1.i.i.i.i.i.i.i.i.i.i = phi ptr [ %.sroa.06.017.i.i.i.i.i.i.i.i.i.i, %bb.cd ], [ %i.jt, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i ] ; 2 uses
  %.lcssa.i.i.i.i.i.i.i.i.i.i.i = phi i16 [ %.sroa.87.015.i.i.i.i.i.i.i.i.i.i, %bb.cd ], [ %.cast.i.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i ] ; 3 uses
  %i.jv = add i16 %.lcssa.i.i.i.i.i.i.i.i.i.i.i, -1
  %i.jw = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i.i.i.i.i.i.i.i.i.i.i, i1 true)
  %i.jx = zext nneg i16 %i.jw to i64
  %i.jy = and i16 %i.jv, %.lcssa.i.i.i.i.i.i.i.i.i.i.i
  %i.jz = sub nsw i64 0, %i.jx
  %i.ka = getelementptr inbounds [192 x i8], ptr %.sroa.06.1.i.i.i.i.i.i.i.i.i.i, i64 %i.jz
  %i.kb = add i64 %.sroa.108.014.i.i.i.i.i.i.i.i.i.i, -1 ; 2 uses
  %i.kc = getelementptr inbounds i8, ptr %i.ka, i64 -184
end_hunk_0
