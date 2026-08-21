Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/meilisearch-rs/original/openapi_generator-ac6a2c3afdf74b46.openapi_generator.a608043c2c5a856-cgu.0?download=true
inline.NumInlined: 4415
inline.NumDeleted: 2263
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumRuntimeUnrolled: 72
loop-unroll.NumUnrolled: 78
begin_hunk_0_@"_ZN79_$LT$openapi_generator..Cli$u20$as$u20$clap_builder..derive..CommandFactory$GT$7command17hf9f96941256663ebE":bb.a
  %i.bj = alloca [640 x i8], align 8              ; 10 uses
  %i.bk = alloca [712 x i8], align 8              ; 7 uses
  %i.bl = alloca [640 x i8], align 8              ; 8 uses
  %i.bm = alloca [24 x i8], align 8               ; 4 uses
  %i.bn = alloca [640 x i8], align 8              ; 4 uses
  %i.bo = alloca [640 x i8], align 8              ; 5 uses
  %i.bp = alloca [640 x i8], align 8              ; 10 uses
  %i.bq = alloca [712 x i8], align 8              ; 7 uses
  %.sroa.19.i = alloca [6 x i8], align 2          ; 16 uses
  %i.br = alloca [96 x i8], align 8               ; 18 uses
  %i.bs = alloca [712 x i8], align 8              ; 53 uses
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bs, i64 72
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bs), !noalias !12932
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.7.0..sroa_idx, i8 0, i64 16, i1 false)
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bs, i64 96
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.9.0..sroa_idx, i8 0, i64 16, i1 false)
  %.sroa.14.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bs, i64 144
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.14.0..sroa_idx, i8 0, i64 16, i1 false)
  %.sroa.16.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bs, i64 168
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.16.0..sroa_idx, i8 0, i64 16, i1 false)
  %.sroa.18.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bs, i64 192
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.18.0..sroa_idx, i8 0, i64 16, i1 false)
  %.sroa.23.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bs, i64 240
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.23.0..sroa_idx, i8 0, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.af)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aj)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.al)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ap)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.au)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.az)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.be)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bj)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bp)
  store i64 0, ptr %i.bs, align 8, !noalias !12936
  %.sroa.21.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bs, i64 16
  store i64 1, ptr %.sroa.21.0..sroa_idx, align 8, !noalias !12936
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bs, i64 24
  store i64 0, ptr %.sroa.3.0..sroa_idx, align 8, !noalias !12936
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bs, i64 32
  store i64 5, ptr %.sroa.4.0..sroa_idx, align 8, !noalias !12936
  %.sroa.52.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bs, i64 56
  store i64 0, ptr %.sroa.52.0..sroa_idx, align 8, !noalias !12936
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bs, i64 64
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.6.0..sroa_idx, align 8, !noalias !12936
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bs, i64 88
  store ptr inttoptr (i64 4 to ptr), ptr %.sroa.8.0..sroa_idx, align 8, !noalias !12936
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bs, i64 112
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.10.0..sroa_idx, align 8, !noalias !12936
  %.sroa.11.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bs, i64 120
  %.sroa.13.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bs, i64 136
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.11.0..sroa_idx, i8 0, i64 16, i1 false)
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.13.0..sroa_idx, align 8, !noalias !12936
  %.sroa.15.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bs, i64 160
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.15.0..sroa_idx, align 8, !noalias !12936
  %.sroa.17.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bs, i64 184
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.17.0..sroa_idx, align 8, !noalias !12936
  %.sroa.19.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bs, i64 208 ; 2 uses
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.19.0..sroa_idx, align 8, !noalias !12936
  %.sroa.20.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bs, i64 216 ; 3 uses
  %.sroa.22.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bs, i64 232
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.20.0..sroa_idx, i8 0, i64 16, i1 false)
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.22.0..sroa_idx, align 8, !noalias !12936
  %.sroa.24.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bs, i64 256
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.24.0..sroa_idx, align 8, !noalias !12936
  %.sroa.25.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bs, i64 264
  store i64 0, ptr %.sroa.25.0..sroa_idx, align 8, !noalias !12936
  %.sroa.26.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bs, i64 272
  store i64 -9223372036854775808, ptr %.sroa.26.0..sroa_idx, align 8, !noalias !12936
  %.sroa.274.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bs, i64 296
  store i64 -9223372036854775808, ptr %.sroa.274.0..sroa_idx, align 8, !noalias !12936
  %.sroa.285.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bs, i64 320
  store i64 -9223372036854775808, ptr %.sroa.285.0..sroa_idx, align 8, !noalias !12936
  %.sroa.296.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bs, i64 344
  store i64 -9223372036854775808, ptr %.sroa.296.0..sroa_idx, align 8, !noalias !12936
  %.sroa.307.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bs, i64 368
  store i64 -9223372036854775808, ptr %.sroa.307.0..sroa_idx, align 8, !noalias !12936
  %.sroa.318.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bs, i64 392
  store i64 -9223372036854775808, ptr %.sroa.318.0..sroa_idx, align 8, !noalias !12936
  %.sroa.329.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bs, i64 416
  store i64 -9223372036854775808, ptr %.sroa.329.0..sroa_idx, align 8, !noalias !12936
  %.sroa.3310.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bs, i64 440
  store i64 -9223372036854775808, ptr %.sroa.3310.0..sroa_idx, align 8, !noalias !12936
  %.sroa.3411.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bs, i64 464
  store i64 -9223372036854775808, ptr %.sroa.3411.0..sroa_idx, align 8, !noalias !12936
  %.sroa.3512.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bs, i64 488
  store i64 -9223372036854775808, ptr %.sroa.3512.0..sroa_idx, align 8, !noalias !12936
  %.sroa.3613.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bs, i64 512
  store i64 -9223372036854775808, ptr %.sroa.3613.0..sroa_idx, align 8, !noalias !12936
  %.sroa.3714.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bs, i64 536
  store i64 -9223372036854775808, ptr %.sroa.3714.0..sroa_idx, align 8, !noalias !12936
  %.sroa.3815.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bs, i64 560
  store ptr @474, ptr %.sroa.3815.0..sroa_idx, align 8, !noalias !12936
  %.sroa.39.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bs, i64 568
  store i64 17, ptr %.sroa.39.0..sroa_idx, align 8, !noalias !12936
  %.sroa.40.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bs, i64 576
  store ptr null, ptr %.sroa.40.0..sroa_idx, align 8, !noalias !12936
  %.sroa.4116.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bs, i64 592
  store ptr null, ptr %.sroa.4116.0..sroa_idx, align 8, !noalias !12936
  %.sroa.4217.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bs, i64 608
  store ptr null, ptr %.sroa.4217.0..sroa_idx, align 8, !noalias !12936
  %.sroa.4318.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bs, i64 624
  store ptr null, ptr %.sroa.4318.0..sroa_idx, align 8, !noalias !12936
  %.sroa.4419.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bs, i64 640
  store ptr null, ptr %.sroa.4419.0..sroa_idx, align 8, !noalias !12936
  %.sroa.4520.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bs, i64 656
  store ptr null, ptr %.sroa.4520.0..sroa_idx, align 8, !noalias !12936
  %.sroa.4621.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bs, i64 672
  store ptr null, ptr %.sroa.4621.0..sroa_idx, align 8, !noalias !12936
  %.sroa.4722.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bs, i64 688
  store ptr null, ptr %.sroa.4722.0..sroa_idx, align 8, !noalias !12936
  %.sroa.48.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bs, i64 696
  store i32 1114112, ptr %.sroa.48.0..sroa_idx, align 8, !noalias !12936
  %.sroa.49.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bs, i64 700
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(9) %.sroa.49.0..sroa_idx, i8 0, i64 9, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.br), !noalias !12932
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.19.i)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !12937)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !12940)
  %i.bt = getelementptr inbounds nuw i8, ptr %i.ae, i64 16 ; 7 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %i.ae, i64 8 ; 15 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.112.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ae), !noalias !12942
  store i64 0, ptr %i.ae, align 8, !noalias !12944
  store ptr inttoptr (i64 8 to ptr), ptr %i.bu, align 8, !noalias !12944
  %.sroa.0595.sroa.20.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ae, i64 24 ; 13 uses
  %.sroa.0595.sroa.21.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ae, i64 32 ; 14 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bt, i8 0, i64 16, i1 false), !noalias !12932
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.0595.sroa.21.0..sroa_idx.i, align 8, !noalias !12944
  %.sroa.0595.sroa.22.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ae, i64 40 ; 15 uses
  %.sroa.0595.sroa.23.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ae, i64 48 ; 7 uses
  %.sroa.0595.sroa.24.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ae, i64 56 ; 14 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0595.sroa.22.0..sroa_idx.i, i8 0, i64 16, i1 false), !noalias !12932
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.0595.sroa.24.0..sroa_idx.i, align 8, !noalias !12944
  %.sroa.0595.sroa.25.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ae, i64 64 ; 14 uses
  store i64 0, ptr %.sroa.0595.sroa.25.0..sroa_idx.i, align 8, !noalias !12944
  %.sroa.0595.sroa.26.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ae, i64 72 ; 14 uses
  store ptr @266, ptr %.sroa.0595.sroa.26.0..sroa_idx.i, align 8, !noalias !12944
  %.sroa.0595.sroa.27.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ae, i64 80 ; 14 uses
  store i64 3, ptr %.sroa.0595.sroa.27.0..sroa_idx.i, align 8, !noalias !12944
  %.sroa.0595.sroa.28.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ae, i64 88 ; 14 uses
  store i8 0, ptr %.sroa.0595.sroa.28.0..sroa_idx.i, align 8, !noalias !12944
  %.sroa.18.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ae, i64 89 ; 14 uses
  store i8 1, ptr %.sroa.18.0..sroa_idx.i, align 1, !noalias !12944
  %.sroa.19.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ae, i64 90 ; 13 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !12945)
  invoke void @"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$8grow_one17h90488284a11b96fbE"(ptr noalias noundef nonnull align 8 dereferenceable(96) %i.ae, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @36)
          to label %bb.b unwind label %bb.ga, !noalias !12948

bb.b:                                             ; preds = %bb.a
  %i.bv = load ptr, ptr %i.bu, align 8, !alias.scope !12950, !noalias !12954, !nonnull !27, !noundef !27 ; 2 uses
  store ptr @267, ptr %i.bv, align 8, !noalias !12957
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 8
  store i64 6, ptr %i.bw, align 8, !noalias !12958
  %.sroa.0.0.copyload.i = load i64, ptr %i.ae, align 8, !alias.scope !12959, !noalias !12960 ; 3 uses
  %.sroa.281488.0.copyload.i = load ptr, ptr %i.bu, align 8, !alias.scope !12959, !noalias !12960 ; 2 uses
  %.sroa.421514.0.copyload.i = load i64, ptr %.sroa.0595.sroa.20.0..sroa_idx.i, align 8, !alias.scope !12959, !noalias !12960
  %.sroa.491527.0.copyload.i = load ptr, ptr %.sroa.0595.sroa.21.0..sroa_idx.i, align 8, !alias.scope !12959, !noalias !12960
  %.sroa.70.0.copyload.i = load ptr, ptr %.sroa.0595.sroa.24.0..sroa_idx.i, align 8, !alias.scope !12959, !noalias !12960
  %.sroa.77.0.copyload.i = load i64, ptr %.sroa.0595.sroa.25.0..sroa_idx.i, align 8, !alias.scope !12959, !noalias !12960
  %.sroa.84.0.copyload.i = load ptr, ptr %.sroa.0595.sroa.26.0..sroa_idx.i, align 8, !alias.scope !12959, !noalias !12960
  %.sroa.91.0.copyload.i = load i64, ptr %.sroa.0595.sroa.27.0..sroa_idx.i, align 8, !alias.scope !12959, !noalias !12960
  %.sroa.98.0.copyload.i = load i8, ptr %.sroa.0595.sroa.28.0..sroa_idx.i, align 8, !alias.scope !12959, !noalias !12960
  %.sroa.105.0.copyload.i = load i8, ptr %.sroa.18.0..sroa_idx.i, align 1, !alias.scope !12959, !noalias !12960
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(6) %.sroa.112.i, ptr noundef nonnull align 2 dereferenceable(6) %.sroa.19.0..sroa_idx.i, i64 6, i1 false), !alias.scope !12959, !noalias !12960
  %i.bx = load <2 x i64>, ptr %.sroa.0595.sroa.22.0..sroa_idx.i, align 8, !alias.scope !12959, !noalias !12960
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ae), !noalias !12942
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(6) %.sroa.19.i, ptr noundef nonnull align 2 dereferenceable(6) %.sroa.112.i, i64 6, i1 false), !noalias !12944
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.112.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.112.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ae), !noalias !12942
  store i64 %.sroa.0.0.copyload.i, ptr %i.ae, align 8, !noalias !12944
  store ptr %.sroa.281488.0.copyload.i, ptr %i.bu, align 8, !noalias !12944
  store i64 1, ptr %i.bt, align 8, !noalias !12944
  store i64 %.sroa.421514.0.copyload.i, ptr %.sroa.0595.sroa.20.0..sroa_idx.i, align 8, !noalias !12944
  store ptr %.sroa.491527.0.copyload.i, ptr %.sroa.0595.sroa.21.0..sroa_idx.i, align 8, !noalias !12944
  store <2 x i64> %i.bx, ptr %.sroa.0595.sroa.22.0..sroa_idx.i, align 8, !noalias !12944
  store ptr %.sroa.70.0.copyload.i, ptr %.sroa.0595.sroa.24.0..sroa_idx.i, align 8, !noalias !12944
  store i64 %.sroa.77.0.copyload.i, ptr %.sroa.0595.sroa.25.0..sroa_idx.i, align 8, !noalias !12944
  store ptr %.sroa.84.0.copyload.i, ptr %.sroa.0595.sroa.26.0..sroa_idx.i, align 8, !noalias !12944
  store i64 %.sroa.91.0.copyload.i, ptr %.sroa.0595.sroa.27.0..sroa_idx.i, align 8, !noalias !12944
  store i8 %.sroa.98.0.copyload.i, ptr %.sroa.0595.sroa.28.0..sroa_idx.i, align 8, !noalias !12944
  store i8 %.sroa.105.0.copyload.i, ptr %.sroa.18.0..sroa_idx.i, align 1, !noalias !12944
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(6) %.sroa.19.0..sroa_idx.i, ptr noundef nonnull align 2 dereferenceable(6) %.sroa.19.i, i64 6, i1 false), !noalias !12944
  call void @llvm.experimental.noalias.scope.decl(metadata !12961)
  %i.by = icmp eq i64 %.sroa.0.0.copyload.i, 1
  br i1 %i.by, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  invoke void @"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$8grow_one17h90488284a11b96fbE"(ptr noalias noundef nonnull align 8 dereferenceable(96) %i.ae, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @36)
          to label %._crit_edge.i.a unwind label %bb.ga, !noalias !12963

._crit_edge.i.a:                                  ; preds = %bb.c
  %.pre.i = load ptr, ptr %i.bu, align 8, !alias.scope !12950, !noalias !12964
  %.sroa.0.0.copyload1482.pre.i = load i64, ptr %i.ae, align 8, !alias.scope !12965, !noalias !12960
  br label %bb.d

bb.d:                                             ; preds = %._crit_edge.i.a, %bb.b
  %.sroa.0.0.copyload1482.i = phi i64 [ %.sroa.0.0.copyload1482.pre.i, %._crit_edge.i.a ], [ %.sroa.0.0.copyload.i, %bb.b ] ; 3 uses
  %i.bz = phi ptr [ %.pre.i, %._crit_edge.i.a ], [ %.sroa.281488.0.copyload.i, %bb.b ] ; 4 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 16
  store ptr @267, ptr %i.ca, align 8, !noalias !12966
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bz, i64 24
  store i64 6, ptr %i.cb, align 8, !noalias !12967
  %.sroa.421514.0.copyload1516.i = load i64, ptr %.sroa.0595.sroa.20.0..sroa_idx.i, align 8, !alias.scope !12965, !noalias !12960 ; 2 uses
  %.sroa.491527.0.copyload1529.i = load ptr, ptr %.sroa.0595.sroa.21.0..sroa_idx.i, align 8, !alias.scope !12965, !noalias !12960
  %.sroa.70.0.copyload1565.i = load ptr, ptr %.sroa.0595.sroa.24.0..sroa_idx.i, align 8, !alias.scope !12965, !noalias !12960
  %.sroa.77.0.copyload1577.i = load i64, ptr %.sroa.0595.sroa.25.0..sroa_idx.i, align 8, !alias.scope !12965, !noalias !12960
  %.sroa.84.0.copyload1589.i = load ptr, ptr %.sroa.0595.sroa.26.0..sroa_idx.i, align 8, !alias.scope !12965, !noalias !12960
  %.sroa.91.0.copyload1601.i = load i64, ptr %.sroa.0595.sroa.27.0..sroa_idx.i, align 8, !alias.scope !12965, !noalias !12960
  %.sroa.98.0.copyload1613.i = load i8, ptr %.sroa.0595.sroa.28.0..sroa_idx.i, align 8, !alias.scope !12965, !noalias !12960
  %.sroa.105.0.copyload1625.i = load i8, ptr %.sroa.18.0..sroa_idx.i, align 1, !alias.scope !12965, !noalias !12960
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(6) %.sroa.112.i, ptr noundef nonnull align 2 dereferenceable(6) %.sroa.19.0..sroa_idx.i, i64 6, i1 false), !alias.scope !12965, !noalias !12960
  %i.cc = load <2 x i64>, ptr %.sroa.0595.sroa.22.0..sroa_idx.i, align 8, !alias.scope !12965, !noalias !12960
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ae), !noalias !12942
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(6) %.sroa.19.i, ptr noundef nonnull align 2 dereferenceable(6) %.sroa.112.i, i64 6, i1 false), !noalias !12944
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.112.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.112.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ae), !noalias !12942
  store i64 %.sroa.0.0.copyload1482.i, ptr %i.ae, align 8, !noalias !12944
  store ptr %i.bz, ptr %i.bu, align 8, !noalias !12944
  store i64 2, ptr %i.bt, align 8, !noalias !12944
  store i64 %.sroa.421514.0.copyload1516.i, ptr %.sroa.0595.sroa.20.0..sroa_idx.i, align 8, !noalias !12944
  store ptr %.sroa.491527.0.copyload1529.i, ptr %.sroa.0595.sroa.21.0..sroa_idx.i, align 8, !noalias !12944
  store <2 x i64> %i.cc, ptr %.sroa.0595.sroa.22.0..sroa_idx.i, align 8, !noalias !12944
  store ptr %.sroa.70.0.copyload1565.i, ptr %.sroa.0595.sroa.24.0..sroa_idx.i, align 8, !noalias !12944
  store i64 %.sroa.77.0.copyload1577.i, ptr %.sroa.0595.sroa.25.0..sroa_idx.i, align 8, !noalias !12944
  store ptr %.sroa.84.0.copyload1589.i, ptr %.sroa.0595.sroa.26.0..sroa_idx.i, align 8, !noalias !12944
  store i64 %.sroa.91.0.copyload1601.i, ptr %.sroa.0595.sroa.27.0..sroa_idx.i, align 8, !noalias !12944
  store i8 %.sroa.98.0.copyload1613.i, ptr %.sroa.0595.sroa.28.0..sroa_idx.i, align 8, !noalias !12944
  store i8 %.sroa.105.0.copyload1625.i, ptr %.sroa.18.0..sroa_idx.i, align 1, !noalias !12944
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(6) %.sroa.19.0..sroa_idx.i, ptr noundef nonnull align 2 dereferenceable(6) %.sroa.19.i, i64 6, i1 false), !noalias !12944
  call void @llvm.experimental.noalias.scope.decl(metadata !12968)
  %i.cd = icmp eq i64 %.sroa.0.0.copyload1482.i, 2
  br i1 %i.cd, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  invoke void @"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$8grow_one17h90488284a11b96fbE"(ptr noalias noundef nonnull align 8 dereferenceable(96) %i.ae, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @36)
          to label %._crit_edge1666.i unwind label %bb.ga, !noalias !12970

._crit_edge1666.i:                                ; preds = %bb.e
  %.pre1667.i = load ptr, ptr %i.bu, align 8, !alias.scope !12950, !noalias !12971
  %.sroa.0.0.copyload1483.pre.i = load i64, ptr %i.ae, align 8, !alias.scope !12972, !noalias !12960
  %.sroa.421514.0.copyload1518.pre.i = load i64, ptr %.sroa.0595.sroa.20.0..sroa_idx.i, align 8, !alias.scope !12972, !noalias !12960
  br label %bb.f

bb.f:                                             ; preds = %._crit_edge1666.i, %bb.d
  %.sroa.421514.0.copyload1518.i = phi i64 [ %.sroa.421514.0.copyload1518.pre.i, %._crit_edge1666.i ], [ %.sroa.421514.0.copyload1516.i, %bb.d ] ; 2 uses
  %.sroa.0.0.copyload1483.i = phi i64 [ %.sroa.0.0.copyload1483.pre.i, %._crit_edge1666.i ], [ %.sroa.0.0.copyload1482.i, %bb.d ] ; 3 uses
  %i.ce = phi ptr [ %.pre1667.i, %._crit_edge1666.i ], [ %i.bz, %bb.d ] ; 4 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ce, i64 32
  store ptr @267, ptr %i.cf, align 8, !noalias !12973
  %i.cg = getelementptr inbounds nuw i8, ptr %i.ce, i64 40
  store i64 6, ptr %i.cg, align 8, !noalias !12974
  %.sroa.491527.0.copyload1531.i = load ptr, ptr %.sroa.0595.sroa.21.0..sroa_idx.i, align 8, !alias.scope !12972, !noalias !12960 ; 2 uses
  %.sroa.70.0.copyload1567.i = load ptr, ptr %.sroa.0595.sroa.24.0..sroa_idx.i, align 8, !alias.scope !12972, !noalias !12960
  %.sroa.77.0.copyload1579.i = load i64, ptr %.sroa.0595.sroa.25.0..sroa_idx.i, align 8, !alias.scope !12972, !noalias !12960
  %.sroa.84.0.copyload1591.i = load ptr, ptr %.sroa.0595.sroa.26.0..sroa_idx.i, align 8, !alias.scope !12972, !noalias !12960
  %.sroa.91.0.copyload1603.i = load i64, ptr %.sroa.0595.sroa.27.0..sroa_idx.i, align 8, !alias.scope !12972, !noalias !12960
  %.sroa.98.0.copyload1615.i = load i8, ptr %.sroa.0595.sroa.28.0..sroa_idx.i, align 8, !alias.scope !12972, !noalias !12960
  %.sroa.105.0.copyload1627.i = load i8, ptr %.sroa.18.0..sroa_idx.i, align 1, !alias.scope !12972, !noalias !12960
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(6) %.sroa.112.i, ptr noundef nonnull align 2 dereferenceable(6) %.sroa.19.0..sroa_idx.i, i64 6, i1 false), !alias.scope !12972, !noalias !12960
  %i.ch = load <2 x i64>, ptr %.sroa.0595.sroa.22.0..sroa_idx.i, align 8, !alias.scope !12972, !noalias !12960
  %.sroa.56.0.copyload1543.i = load i64, ptr %.sroa.0595.sroa.22.0..sroa_idx.i, align 8, !alias.scope !12972, !noalias !12960
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ae), !noalias !12942
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(6) %.sroa.19.i, ptr noundef nonnull align 2 dereferenceable(6) %.sroa.112.i, i64 6, i1 false), !noalias !12944
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.112.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.112.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ae), !noalias !12942
  store i64 %.sroa.0.0.copyload1483.i, ptr %i.ae, align 8, !noalias !12944
  store ptr %i.ce, ptr %i.bu, align 8, !noalias !12944
  store i64 3, ptr %i.bt, align 8, !noalias !12944
  store i64 %.sroa.421514.0.copyload1518.i, ptr %.sroa.0595.sroa.20.0..sroa_idx.i, align 8, !noalias !12944
  store ptr %.sroa.491527.0.copyload1531.i, ptr %.sroa.0595.sroa.21.0..sroa_idx.i, align 8, !noalias !12944
  store <2 x i64> %i.ch, ptr %.sroa.0595.sroa.22.0..sroa_idx.i, align 8, !noalias !12944
  store ptr %.sroa.70.0.copyload1567.i, ptr %.sroa.0595.sroa.24.0..sroa_idx.i, align 8, !noalias !12944
  store i64 %.sroa.77.0.copyload1579.i, ptr %.sroa.0595.sroa.25.0..sroa_idx.i, align 8, !noalias !12944
  store ptr %.sroa.84.0.copyload1591.i, ptr %.sroa.0595.sroa.26.0..sroa_idx.i, align 8, !noalias !12944
  store i64 %.sroa.91.0.copyload1603.i, ptr %.sroa.0595.sroa.27.0..sroa_idx.i, align 8, !noalias !12944
  store i8 %.sroa.98.0.copyload1615.i, ptr %.sroa.0595.sroa.28.0..sroa_idx.i, align 8, !noalias !12944
  store i8 %.sroa.105.0.copyload1627.i, ptr %.sroa.18.0..sroa_idx.i, align 1, !noalias !12944
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(6) %.sroa.19.0..sroa_idx.i, ptr noundef nonnull align 2 dereferenceable(6) %.sroa.19.i, i64 6, i1 false), !noalias !12944
  call void @llvm.experimental.noalias.scope.decl(metadata !12975)
  %i.ci = icmp eq i64 %.sroa.0.0.copyload1483.i, 3
  br i1 %i.ci, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  invoke void @"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$8grow_one17h90488284a11b96fbE"(ptr noalias noundef nonnull align 8 dereferenceable(96) %i.ae, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @36)
          to label %._crit_edge1670.i unwind label %bb.ga, !noalias !12977

._crit_edge1670.i:                                ; preds = %bb.g
  %.pre1671.i = load ptr, ptr %i.bu, align 8, !alias.scope !12950, !noalias !12978
  %.sroa.0.0.copyload1484.pre.i = load i64, ptr %i.ae, align 8, !alias.scope !12979, !noalias !12960
  %.sroa.421514.0.copyload1520.pre.i = load i64, ptr %.sroa.0595.sroa.20.0..sroa_idx.i, align 8, !alias.scope !12979, !noalias !12960
  %.sroa.491527.0.copyload1533.pre.i = load ptr, ptr %.sroa.0595.sroa.21.0..sroa_idx.i, align 8, !alias.scope !12979, !noalias !12960
  %.sroa.56.0.copyload1545.pre.i = load i64, ptr %.sroa.0595.sroa.22.0..sroa_idx.i, align 8, !alias.scope !12979, !noalias !12960
  br label %bb.h

bb.h:                                             ; preds = %._crit_edge1670.i, %bb.f
  %.sroa.56.0.copyload1545.i = phi i64 [ %.sroa.56.0.copyload1545.pre.i, %._crit_edge1670.i ], [ %.sroa.56.0.copyload1543.i, %bb.f ] ; 2 uses
  %.sroa.491527.0.copyload1533.i = phi ptr [ %.sroa.491527.0.copyload1533.pre.i, %._crit_edge1670.i ], [ %.sroa.491527.0.copyload1531.i, %bb.f ] ; 2 uses
  %.sroa.421514.0.copyload1520.i = phi i64 [ %.sroa.421514.0.copyload1520.pre.i, %._crit_edge1670.i ], [ %.sroa.421514.0.copyload1518.i, %bb.f ] ; 2 uses
  %.sroa.0.0.copyload1484.i = phi i64 [ %.sroa.0.0.copyload1484.pre.i, %._crit_edge1670.i ], [ %.sroa.0.0.copyload1483.i, %bb.f ] ; 3 uses
  %i.cj = phi ptr [ %.pre1671.i, %._crit_edge1670.i ], [ %i.ce, %bb.f ] ; 4 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cj, i64 48
  store ptr @267, ptr %i.ck, align 8, !noalias !12980
  %i.cl = getelementptr inbounds nuw i8, ptr %i.cj, i64 56
  store i64 6, ptr %i.cl, align 8, !noalias !12981
  %.sroa.63.0.copyload1557.i = load i64, ptr %.sroa.0595.sroa.23.0..sroa_idx.i, align 8, !alias.scope !12979, !noalias !12960 ; 2 uses
  %.sroa.70.0.copyload1569.i = load ptr, ptr %.sroa.0595.sroa.24.0..sroa_idx.i, align 8, !alias.scope !12979, !noalias !12960 ; 2 uses
  %.sroa.77.0.copyload1581.i = load i64, ptr %.sroa.0595.sroa.25.0..sroa_idx.i, align 8, !alias.scope !12979, !noalias !12960
  %.sroa.84.0.copyload1593.i = load ptr, ptr %.sroa.0595.sroa.26.0..sroa_idx.i, align 8, !alias.scope !12979, !noalias !12960
  %.sroa.91.0.copyload1605.i = load i64, ptr %.sroa.0595.sroa.27.0..sroa_idx.i, align 8, !alias.scope !12979, !noalias !12960
  %.sroa.98.0.copyload1617.i = load i8, ptr %.sroa.0595.sroa.28.0..sroa_idx.i, align 8, !alias.scope !12979, !noalias !12960
  %.sroa.105.0.copyload1629.i = load i8, ptr %.sroa.18.0..sroa_idx.i, align 1, !alias.scope !12979, !noalias !12960
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(6) %.sroa.112.i, ptr noundef nonnull align 2 dereferenceable(6) %.sroa.19.0..sroa_idx.i, i64 6, i1 false), !alias.scope !12979, !noalias !12960
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ae), !noalias !12942
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(6) %.sroa.19.i, ptr noundef nonnull align 2 dereferenceable(6) %.sroa.112.i, i64 6, i1 false), !noalias !12944
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.112.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.112.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ae), !noalias !12942
  store i64 %.sroa.0.0.copyload1484.i, ptr %i.ae, align 8, !noalias !12944
  store ptr %i.cj, ptr %i.bu, align 8, !noalias !12944
  store i64 4, ptr %i.bt, align 8, !noalias !12944
  store i64 %.sroa.421514.0.copyload1520.i, ptr %.sroa.0595.sroa.20.0..sroa_idx.i, align 8, !noalias !12944
  store ptr %.sroa.491527.0.copyload1533.i, ptr %.sroa.0595.sroa.21.0..sroa_idx.i, align 8, !noalias !12944
  store i64 %.sroa.56.0.copyload1545.i, ptr %.sroa.0595.sroa.22.0..sroa_idx.i, align 8, !noalias !12944
  store i64 %.sroa.63.0.copyload1557.i, ptr %.sroa.0595.sroa.23.0..sroa_idx.i, align 8, !noalias !12944
  store ptr %.sroa.70.0.copyload1569.i, ptr %.sroa.0595.sroa.24.0..sroa_idx.i, align 8, !noalias !12944
  store i64 %.sroa.77.0.copyload1581.i, ptr %.sroa.0595.sroa.25.0..sroa_idx.i, align 8, !noalias !12944
  store ptr %.sroa.84.0.copyload1593.i, ptr %.sroa.0595.sroa.26.0..sroa_idx.i, align 8, !noalias !12944
  store i64 %.sroa.91.0.copyload1605.i, ptr %.sroa.0595.sroa.27.0..sroa_idx.i, align 8, !noalias !12944
  store i8 %.sroa.98.0.copyload1617.i, ptr %.sroa.0595.sroa.28.0..sroa_idx.i, align 8, !noalias !12944
  store i8 %.sroa.105.0.copyload1629.i, ptr %.sroa.18.0..sroa_idx.i, align 1, !noalias !12944
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(6) %.sroa.19.0..sroa_idx.i, ptr noundef nonnull align 2 dereferenceable(6) %.sroa.19.i, i64 6, i1 false), !noalias !12944
  call void @llvm.experimental.noalias.scope.decl(metadata !12982)
  %i.cm = icmp eq i64 %.sroa.0.0.copyload1484.i, 4
  br i1 %i.cm, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  invoke void @"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$8grow_one17h90488284a11b96fbE"(ptr noalias noundef nonnull align 8 dereferenceable(96) %i.ae, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @36)
          to label %._crit_edge1676.i unwind label %bb.ga, !noalias !12984

._crit_edge1676.i:                                ; preds = %bb.i
  %.pre1677.i = load ptr, ptr %i.bu, align 8, !alias.scope !12950, !noalias !12985
  %.sroa.0.0.copyload1485.pre.i = load i64, ptr %i.ae, align 8, !alias.scope !12986, !noalias !12960
  %.sroa.421514.0.copyload1522.pre.i = load i64, ptr %.sroa.0595.sroa.20.0..sroa_idx.i, align 8, !alias.scope !12986, !noalias !12960
  %.sroa.491527.0.copyload1535.pre.i = load ptr, ptr %.sroa.0595.sroa.21.0..sroa_idx.i, align 8, !alias.scope !12986, !noalias !12960
  %.sroa.56.0.copyload1547.pre.i = load i64, ptr %.sroa.0595.sroa.22.0..sroa_idx.i, align 8, !alias.scope !12986, !noalias !12960
  %.sroa.63.0.copyload1559.pre.i = load i64, ptr %.sroa.0595.sroa.23.0..sroa_idx.i, align 8, !alias.scope !12986, !noalias !12960
  %.sroa.70.0.copyload1571.pre.i = load ptr, ptr %.sroa.0595.sroa.24.0..sroa_idx.i, align 8, !alias.scope !12986, !noalias !12960
  br label %bb.j

bb.j:                                             ; preds = %._crit_edge1676.i, %bb.h
  %.sroa.70.0.copyload1571.i = phi ptr [ %.sroa.70.0.copyload1571.pre.i, %._crit_edge1676.i ], [ %.sroa.70.0.copyload1569.i, %bb.h ] ; 2 uses
  %.sroa.63.0.copyload1559.i = phi i64 [ %.sroa.63.0.copyload1559.pre.i, %._crit_edge1676.i ], [ %.sroa.63.0.copyload1557.i, %bb.h ] ; 2 uses
  %.sroa.56.0.copyload1547.i = phi i64 [ %.sroa.56.0.copyload1547.pre.i, %._crit_edge1676.i ], [ %.sroa.56.0.copyload1545.i, %bb.h ] ; 2 uses
  %.sroa.491527.0.copyload1535.i = phi ptr [ %.sroa.491527.0.copyload1535.pre.i, %._crit_edge1676.i ], [ %.sroa.491527.0.copyload1533.i, %bb.h ] ; 2 uses
  %.sroa.421514.0.copyload1522.i = phi i64 [ %.sroa.421514.0.copyload1522.pre.i, %._crit_edge1676.i ], [ %.sroa.421514.0.copyload1520.i, %bb.h ] ; 2 uses
  %.sroa.0.0.copyload1485.i = phi i64 [ %.sroa.0.0.copyload1485.pre.i, %._crit_edge1676.i ], [ %.sroa.0.0.copyload1484.i, %bb.h ] ; 3 uses
  %i.cn = phi ptr [ %.pre1677.i, %._crit_edge1676.i ], [ %i.cj, %bb.h ] ; 4 uses
  %i.co = getelementptr inbounds nuw i8, ptr %i.cn, i64 64
  store ptr @267, ptr %i.co, align 8, !noalias !12987
  %i.cp = getelementptr inbounds nuw i8, ptr %i.cn, i64 72
  store i64 6, ptr %i.cp, align 8, !noalias !12988
  %.sroa.77.0.copyload1583.i = load i64, ptr %.sroa.0595.sroa.25.0..sroa_idx.i, align 8, !alias.scope !12986, !noalias !12960 ; 2 uses
  %.sroa.84.0.copyload1595.i = load ptr, ptr %.sroa.0595.sroa.26.0..sroa_idx.i, align 8, !alias.scope !12986, !noalias !12960 ; 2 uses
  %.sroa.91.0.copyload1607.i = load i64, ptr %.sroa.0595.sroa.27.0..sroa_idx.i, align 8, !alias.scope !12986, !noalias !12960
  %.sroa.98.0.copyload1619.i = load i8, ptr %.sroa.0595.sroa.28.0..sroa_idx.i, align 8, !alias.scope !12986, !noalias !12960
  %.sroa.105.0.copyload1631.i = load i8, ptr %.sroa.18.0..sroa_idx.i, align 1, !alias.scope !12986, !noalias !12960
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(6) %.sroa.112.i, ptr noundef nonnull align 2 dereferenceable(6) %.sroa.19.0..sroa_idx.i, i64 6, i1 false), !alias.scope !12986, !noalias !12960
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ae), !noalias !12942
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(6) %.sroa.19.i, ptr noundef nonnull align 2 dereferenceable(6) %.sroa.112.i, i64 6, i1 false), !noalias !12944
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.112.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.112.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ae), !noalias !12942
  store i64 %.sroa.0.0.copyload1485.i, ptr %i.ae, align 8, !noalias !12944
  store ptr %i.cn, ptr %i.bu, align 8, !noalias !12944
  store i64 5, ptr %i.bt, align 8, !noalias !12944
  store i64 %.sroa.421514.0.copyload1522.i, ptr %.sroa.0595.sroa.20.0..sroa_idx.i, align 8, !noalias !12944
  store ptr %.sroa.491527.0.copyload1535.i, ptr %.sroa.0595.sroa.21.0..sroa_idx.i, align 8, !noalias !12944
  store i64 %.sroa.56.0.copyload1547.i, ptr %.sroa.0595.sroa.22.0..sroa_idx.i, align 8, !noalias !12944
  store i64 %.sroa.63.0.copyload1559.i, ptr %.sroa.0595.sroa.23.0..sroa_idx.i, align 8, !noalias !12944
  store ptr %.sroa.70.0.copyload1571.i, ptr %.sroa.0595.sroa.24.0..sroa_idx.i, align 8, !noalias !12944
  store i64 %.sroa.77.0.copyload1583.i, ptr %.sroa.0595.sroa.25.0..sroa_idx.i, align 8, !noalias !12944
  store ptr %.sroa.84.0.copyload1595.i, ptr %.sroa.0595.sroa.26.0..sroa_idx.i, align 8, !noalias !12944
  store i64 %.sroa.91.0.copyload1607.i, ptr %.sroa.0595.sroa.27.0..sroa_idx.i, align 8, !noalias !12944
  store i8 %.sroa.98.0.copyload1619.i, ptr %.sroa.0595.sroa.28.0..sroa_idx.i, align 8, !noalias !12944
  store i8 %.sroa.105.0.copyload1631.i, ptr %.sroa.18.0..sroa_idx.i, align 1, !noalias !12944
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(6) %.sroa.19.0..sroa_idx.i, ptr noundef nonnull align 2 dereferenceable(6) %.sroa.19.i, i64 6, i1 false), !noalias !12944
  call void @llvm.experimental.noalias.scope.decl(metadata !12989)
  %i.cq = icmp eq i64 %.sroa.0.0.copyload1485.i, 5
  br i1 %i.cq, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  invoke void @"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$8grow_one17h90488284a11b96fbE"(ptr noalias noundef nonnull align 8 dereferenceable(96) %i.ae, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @36)
          to label %._crit_edge1684.i unwind label %bb.ga, !noalias !12991

._crit_edge1684.i:                                ; preds = %bb.k
  %.pre1685.i = load ptr, ptr %i.bu, align 8, !alias.scope !12950, !noalias !12992
  %.sroa.0.0.copyload1486.pre.i = load i64, ptr %i.ae, align 8, !alias.scope !12993, !noalias !12960
  %.sroa.421514.0.copyload1524.pre.i = load i64, ptr %.sroa.0595.sroa.20.0..sroa_idx.i, align 8, !alias.scope !12993, !noalias !12960
  %.sroa.491527.0.copyload1537.pre.i = load ptr, ptr %.sroa.0595.sroa.21.0..sroa_idx.i, align 8, !alias.scope !12993, !noalias !12960
  %.sroa.56.0.copyload1549.pre.i = load i64, ptr %.sroa.0595.sroa.22.0..sroa_idx.i, align 8, !alias.scope !12993, !noalias !12960
  %.sroa.63.0.copyload1561.pre.i = load i64, ptr %.sroa.0595.sroa.23.0..sroa_idx.i, align 8, !alias.scope !12993, !noalias !12960
  %.sroa.70.0.copyload1573.pre.i = load ptr, ptr %.sroa.0595.sroa.24.0..sroa_idx.i, align 8, !alias.scope !12993, !noalias !12960
  %.sroa.77.0.copyload1585.pre.i = load i64, ptr %.sroa.0595.sroa.25.0..sroa_idx.i, align 8, !alias.scope !12993, !noalias !12960
  %.sroa.84.0.copyload1597.pre.i = load ptr, ptr %.sroa.0595.sroa.26.0..sroa_idx.i, align 8, !alias.scope !12993, !noalias !12960
  br label %bb.l

bb.l:                                             ; preds = %._crit_edge1684.i, %bb.j
  %.sroa.84.0.copyload1597.i = phi ptr [ %.sroa.84.0.copyload1597.pre.i, %._crit_edge1684.i ], [ %.sroa.84.0.copyload1595.i, %bb.j ] ; 2 uses
  %.sroa.77.0.copyload1585.i = phi i64 [ %.sroa.77.0.copyload1585.pre.i, %._crit_edge1684.i ], [ %.sroa.77.0.copyload1583.i, %bb.j ] ; 2 uses
  %.sroa.70.0.copyload1573.i = phi ptr [ %.sroa.70.0.copyload1573.pre.i, %._crit_edge1684.i ], [ %.sroa.70.0.copyload1571.i, %bb.j ] ; 2 uses
  %.sroa.63.0.copyload1561.i = phi i64 [ %.sroa.63.0.copyload1561.pre.i, %._crit_edge1684.i ], [ %.sroa.63.0.copyload1559.i, %bb.j ] ; 2 uses
  %.sroa.56.0.copyload1549.i = phi i64 [ %.sroa.56.0.copyload1549.pre.i, %._crit_edge1684.i ], [ %.sroa.56.0.copyload1547.i, %bb.j ] ; 2 uses
  %.sroa.491527.0.copyload1537.i = phi ptr [ %.sroa.491527.0.copyload1537.pre.i, %._crit_edge1684.i ], [ %.sroa.491527.0.copyload1535.i, %bb.j ] ; 2 uses
  %.sroa.421514.0.copyload1524.i = phi i64 [ %.sroa.421514.0.copyload1524.pre.i, %._crit_edge1684.i ], [ %.sroa.421514.0.copyload1522.i, %bb.j ] ; 2 uses
  %.sroa.0.0.copyload1486.i = phi i64 [ %.sroa.0.0.copyload1486.pre.i, %._crit_edge1684.i ], [ %.sroa.0.0.copyload1485.i, %bb.j ] ; 3 uses
  %i.cr = phi ptr [ %.pre1685.i, %._crit_edge1684.i ], [ %i.cn, %bb.j ] ; 4 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cr, i64 80
  store ptr @267, ptr %i.cs, align 8, !noalias !12994
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cr, i64 88
  store i64 6, ptr %i.ct, align 8, !noalias !12995
  %.sroa.91.0.copyload1609.i = load i64, ptr %.sroa.0595.sroa.27.0..sroa_idx.i, align 8, !alias.scope !12993, !noalias !12960 ; 2 uses
  %.sroa.98.0.copyload1621.i = load i8, ptr %.sroa.0595.sroa.28.0..sroa_idx.i, align 8, !alias.scope !12993, !noalias !12960 ; 2 uses
  %.sroa.105.0.copyload1633.i = load i8, ptr %.sroa.18.0..sroa_idx.i, align 1, !alias.scope !12993, !noalias !12960 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(6) %.sroa.112.i, ptr noundef nonnull align 2 dereferenceable(6) %.sroa.19.0..sroa_idx.i, i64 6, i1 false), !alias.scope !12993, !noalias !12960
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ae), !noalias !12942
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(6) %.sroa.19.i, ptr noundef nonnull align 2 dereferenceable(6) %.sroa.112.i, i64 6, i1 false), !noalias !12944
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.112.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.112.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ae), !noalias !12942
  store i64 %.sroa.0.0.copyload1486.i, ptr %i.ae, align 8, !noalias !12944
  store ptr %i.cr, ptr %i.bu, align 8, !noalias !12944
  store i64 6, ptr %i.bt, align 8, !noalias !12944
  store i64 %.sroa.421514.0.copyload1524.i, ptr %.sroa.0595.sroa.20.0..sroa_idx.i, align 8, !noalias !12944
  store ptr %.sroa.491527.0.copyload1537.i, ptr %.sroa.0595.sroa.21.0..sroa_idx.i, align 8, !noalias !12944
  store i64 %.sroa.56.0.copyload1549.i, ptr %.sroa.0595.sroa.22.0..sroa_idx.i, align 8, !noalias !12944
  store i64 %.sroa.63.0.copyload1561.i, ptr %.sroa.0595.sroa.23.0..sroa_idx.i, align 8, !noalias !12944
  store ptr %.sroa.70.0.copyload1573.i, ptr %.sroa.0595.sroa.24.0..sroa_idx.i, align 8, !noalias !12944
  store i64 %.sroa.77.0.copyload1585.i, ptr %.sroa.0595.sroa.25.0..sroa_idx.i, align 8, !noalias !12944
  store ptr %.sroa.84.0.copyload1597.i, ptr %.sroa.0595.sroa.26.0..sroa_idx.i, align 8, !noalias !12944
  store i64 %.sroa.91.0.copyload1609.i, ptr %.sroa.0595.sroa.27.0..sroa_idx.i, align 8, !noalias !12944
  store i8 %.sroa.98.0.copyload1621.i, ptr %.sroa.0595.sroa.28.0..sroa_idx.i, align 8, !noalias !12944
  store i8 %.sroa.105.0.copyload1633.i, ptr %.sroa.18.0..sroa_idx.i, align 1, !noalias !12944
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(6) %.sroa.19.0..sroa_idx.i, ptr noundef nonnull align 2 dereferenceable(6) %.sroa.19.i, i64 6, i1 false), !noalias !12944
  call void @llvm.experimental.noalias.scope.decl(metadata !12996)
  %i.cu = icmp eq i64 %.sroa.0.0.copyload1486.i, 6
  br i1 %i.cu, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  invoke void @"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$8grow_one17h90488284a11b96fbE"(ptr noalias noundef nonnull align 8 dereferenceable(96) %i.ae, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @36)
          to label %._crit_edge1694.i unwind label %bb.ga, !noalias !12998

._crit_edge1694.i:                                ; preds = %bb.m
  %.pre1695.i = load ptr, ptr %i.bu, align 8, !alias.scope !12950, !noalias !12999
  %.sroa.0.0.copyload1487.pre.i = load i64, ptr %i.ae, align 8, !alias.scope !13000, !noalias !12960
  %.sroa.421514.0.copyload1526.pre.i = load i64, ptr %.sroa.0595.sroa.20.0..sroa_idx.i, align 8, !alias.scope !13000, !noalias !12960
  %.sroa.491527.0.copyload1539.pre.i = load ptr, ptr %.sroa.0595.sroa.21.0..sroa_idx.i, align 8, !alias.scope !13000, !noalias !12960
  %.sroa.56.0.copyload1551.pre.i = load i64, ptr %.sroa.0595.sroa.22.0..sroa_idx.i, align 8, !alias.scope !13000, !noalias !12960
  %.sroa.63.0.copyload1563.pre.i = load i64, ptr %.sroa.0595.sroa.23.0..sroa_idx.i, align 8, !alias.scope !13000, !noalias !12960
  %.sroa.70.0.copyload1575.pre.i = load ptr, ptr %.sroa.0595.sroa.24.0..sroa_idx.i, align 8, !alias.scope !13000, !noalias !12960
  %.sroa.77.0.copyload1587.pre.i = load i64, ptr %.sroa.0595.sroa.25.0..sroa_idx.i, align 8, !alias.scope !13000, !noalias !12960
  %.sroa.84.0.copyload1599.pre.i = load ptr, ptr %.sroa.0595.sroa.26.0..sroa_idx.i, align 8, !alias.scope !13000, !noalias !12960
  %.sroa.91.0.copyload1611.pre.i = load i64, ptr %.sroa.0595.sroa.27.0..sroa_idx.i, align 8, !alias.scope !13000, !noalias !12960
  %.sroa.98.0.copyload1623.pre.i = load i8, ptr %.sroa.0595.sroa.28.0..sroa_idx.i, align 8, !alias.scope !13000, !noalias !12960
  %.sroa.105.0.copyload1635.pre.i = load i8, ptr %.sroa.18.0..sroa_idx.i, align 1, !alias.scope !13000, !noalias !12960
  br label %bb.n

bb.n:                                             ; preds = %._crit_edge1694.i, %bb.l
  %.sroa.105.0.copyload1635.i = phi i8 [ %.sroa.105.0.copyload1635.pre.i, %._crit_edge1694.i ], [ %.sroa.105.0.copyload1633.i, %bb.l ]
  %.sroa.98.0.copyload1623.i = phi i8 [ %.sroa.98.0.copyload1623.pre.i, %._crit_edge1694.i ], [ %.sroa.98.0.copyload1621.i, %bb.l ]
  %.sroa.91.0.copyload1611.i = phi i64 [ %.sroa.91.0.copyload1611.pre.i, %._crit_edge1694.i ], [ %.sroa.91.0.copyload1609.i, %bb.l ]
  %.sroa.84.0.copyload1599.i = phi ptr [ %.sroa.84.0.copyload1599.pre.i, %._crit_edge1694.i ], [ %.sroa.84.0.copyload1597.i, %bb.l ]
  %.sroa.77.0.copyload1587.i = phi i64 [ %.sroa.77.0.copyload1587.pre.i, %._crit_edge1694.i ], [ %.sroa.77.0.copyload1585.i, %bb.l ]
  %.sroa.70.0.copyload1575.i = phi ptr [ %.sroa.70.0.copyload1575.pre.i, %._crit_edge1694.i ], [ %.sroa.70.0.copyload1573.i, %bb.l ]
  %.sroa.63.0.copyload1563.i = phi i64 [ %.sroa.63.0.copyload1563.pre.i, %._crit_edge1694.i ], [ %.sroa.63.0.copyload1561.i, %bb.l ]
  %.sroa.56.0.copyload1551.i = phi i64 [ %.sroa.56.0.copyload1551.pre.i, %._crit_edge1694.i ], [ %.sroa.56.0.copyload1549.i, %bb.l ]
  %.sroa.491527.0.copyload1539.i = phi ptr [ %.sroa.491527.0.copyload1539.pre.i, %._crit_edge1694.i ], [ %.sroa.491527.0.copyload1537.i, %bb.l ]
  %.sroa.421514.0.copyload1526.i = phi i64 [ %.sroa.421514.0.copyload1526.pre.i, %._crit_edge1694.i ], [ %.sroa.421514.0.copyload1524.i, %bb.l ]
  %.sroa.0.0.copyload1487.i = phi i64 [ %.sroa.0.0.copyload1487.pre.i, %._crit_edge1694.i ], [ %.sroa.0.0.copyload1486.i, %bb.l ]
  %i.cv = phi ptr [ %.pre1695.i, %._crit_edge1694.i ], [ %i.cr, %bb.l ] ; 3 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cv, i64 96
  store ptr @267, ptr %i.cw, align 8, !noalias !13001
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cv, i64 104
  store i64 6, ptr %i.cx, align 8, !noalias !13002
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(6) %.sroa.112.i, ptr noundef nonnull align 2 dereferenceable(6) %.sroa.19.0..sroa_idx.i, i64 6, i1 false), !alias.scope !13000, !noalias !12960
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ae), !noalias !12942
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(6) %.sroa.19.i, ptr noundef nonnull align 2 dereferenceable(6) %.sroa.112.i, i64 6, i1 false), !noalias !12944
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.112.i)
  store i64 %.sroa.0.0.copyload1487.i, ptr %i.br, align 8, !alias.scope !13003, !noalias !13004
  %.sroa.0595.sroa.18.0..sroa_idx1200.i = getelementptr inbounds nuw i8, ptr %i.br, i64 8
  store ptr %i.cv, ptr %.sroa.0595.sroa.18.0..sroa_idx1200.i, align 8, !alias.scope !13003, !noalias !13004
  %.sroa.0595.sroa.19.0..sroa_idx1228.i = getelementptr inbounds nuw i8, ptr %i.br, i64 16
  store i64 7, ptr %.sroa.0595.sroa.19.0..sroa_idx1228.i, align 8, !alias.scope !13003, !noalias !13004
  %.sroa.0595.sroa.20.0..sroa_idx1256.i = getelementptr inbounds nuw i8, ptr %i.br, i64 24
  store i64 %.sroa.421514.0.copyload1526.i, ptr %.sroa.0595.sroa.20.0..sroa_idx1256.i, align 8, !alias.scope !13003, !noalias !13004
  %.sroa.0595.sroa.21.0..sroa_idx1284.i = getelementptr inbounds nuw i8, ptr %i.br, i64 32
  store ptr %.sroa.491527.0.copyload1539.i, ptr %.sroa.0595.sroa.21.0..sroa_idx1284.i, align 8, !alias.scope !13003, !noalias !13004
  %.sroa.0595.sroa.22.0..sroa_idx1312.i = getelementptr inbounds nuw i8, ptr %i.br, i64 40
  store i64 %.sroa.56.0.copyload1551.i, ptr %.sroa.0595.sroa.22.0..sroa_idx1312.i, align 8, !alias.scope !13003, !noalias !13004
  %.sroa.0595.sroa.23.0..sroa_idx1340.i = getelementptr inbounds nuw i8, ptr %i.br, i64 48
  store i64 %.sroa.63.0.copyload1563.i, ptr %.sroa.0595.sroa.23.0..sroa_idx1340.i, align 8, !alias.scope !13003, !noalias !13004
  %.sroa.0595.sroa.24.0..sroa_idx1368.i = getelementptr inbounds nuw i8, ptr %i.br, i64 56
  store ptr %.sroa.70.0.copyload1575.i, ptr %.sroa.0595.sroa.24.0..sroa_idx1368.i, align 8, !alias.scope !13003, !noalias !13004
  %.sroa.0595.sroa.25.0..sroa_idx1396.i = getelementptr inbounds nuw i8, ptr %i.br, i64 64
  store i64 %.sroa.77.0.copyload1587.i, ptr %.sroa.0595.sroa.25.0..sroa_idx1396.i, align 8, !alias.scope !13003, !noalias !13004
  %.sroa.0595.sroa.26.0..sroa_idx1424.i = getelementptr inbounds nuw i8, ptr %i.br, i64 72
  store ptr %.sroa.84.0.copyload1599.i, ptr %.sroa.0595.sroa.26.0..sroa_idx1424.i, align 8, !alias.scope !13003, !noalias !13004
  %.sroa.0595.sroa.27.0..sroa_idx1452.i = getelementptr inbounds nuw i8, ptr %i.br, i64 80
  store i64 %.sroa.91.0.copyload1611.i, ptr %.sroa.0595.sroa.27.0..sroa_idx1452.i, align 8, !alias.scope !13003, !noalias !13004
  %.sroa.0595.sroa.28.0..sroa_idx1480.i = getelementptr inbounds nuw i8, ptr %i.br, i64 88
  store i8 %.sroa.98.0.copyload1623.i, ptr %.sroa.0595.sroa.28.0..sroa_idx1480.i, align 8, !alias.scope !13003, !noalias !13004
  %.sroa.18.0..sroa_idx622.i = getelementptr inbounds nuw i8, ptr %i.br, i64 89
  store i8 %.sroa.105.0.copyload1635.i, ptr %.sroa.18.0..sroa_idx622.i, align 1, !alias.scope !13003, !noalias !13004
  %.sroa.19.0..sroa_idx637.i = getelementptr inbounds nuw i8, ptr %i.br, i64 90
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(6) %.sroa.19.0..sroa_idx637.i, ptr noundef nonnull align 2 dereferenceable(6) %.sroa.19.i, i64 6, i1 false), !alias.scope !13003, !noalias !13004
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.19.i)
  %i.cy = getelementptr inbounds nuw i8, ptr %i.bs, i64 200 ; 2 uses
  %i.cz = load i64, ptr %.sroa.20.0..sroa_idx, align 8, !alias.scope !13005, !noalias !13010, !noundef !27 ; 3 uses
  %i.da = load i64, ptr %i.cy, align 8, !range !28, !alias.scope !13005, !noalias !13010, !noundef !27
  %i.db = icmp eq i64 %i.cz, %i.da
  br i1 %i.db, label %bb.o, label %bb.r

bb.o:                                             ; preds = %bb.n
  invoke void @"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$8grow_one17hd1b6aa6ee33cf8f3E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.cy, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @34)
          to label %bb.r unwind label %.body.i.i, !noalias !13010

.body.i.i:                                        ; preds = %bb.o
  %i.dc = landingpad { ptr, i32 }
          cleanup
  call fastcc void @"_ZN4core3ptr63drop_in_place$LT$clap_builder..builder..arg_group..ArgGroup$GT$17ha1c438e7d8823e31E"(ptr noalias noundef nonnull readonly align 8 dereferenceable(96) %i.br) #33, !noalias !13014
  invoke fastcc void @"_ZN4core3ptr60drop_in_place$LT$clap_builder..builder..command..Command$GT$17h2b22f74b3886983fE"(ptr noalias noundef nonnull align 8 dereferenceable(712) %i.bs) #33
          to label %common.resume.i unwind label %bb.p, !noalias !13015

bb.p:                                             ; preds = %.body.i.i
  %i.dd = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #34, !noalias !13015
  unreachable

bb.q:                                             ; preds = %bb.u
  %i.de = landingpad { ptr, i32 }
          cleanup
  br label %bb.fz

bb.r:                                             ; preds = %bb.o, %bb.n
  %i.df = load ptr, ptr %.sroa.19.0..sroa_idx, align 8, !alias.scope !13005, !noalias !13010, !nonnull !27, !noundef !27
  %i.dg = getelementptr inbounds nuw [96 x i8], ptr %i.df, i64 %i.cz
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %i.dg, ptr noundef nonnull readonly align 8 dereferenceable(96) %i.br, i64 96, i1 false), !noalias !13014
  %i.dh = add i64 %i.cz, 1
  store i64 %i.dh, ptr %.sroa.20.0..sroa_idx, align 8, !alias.scope !13005, !noalias !13010
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bq), !noalias !12932
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(712) %i.bq, ptr noundef nonnull align 8 dereferenceable(712) %i.bs, i64 712, i1 false), !noalias !12932
  call void @llvm.lifetime.end.p0(ptr nonnull %i.br), !noalias !12932
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bs), !noalias !12932
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bo), !noalias !12932
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bn), !noalias !12932
  %.sroa.10651.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ad, i64 120
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ad), !noalias !13016
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.10651.0..sroa_idx.i, i8 0, i64 16, i1 false), !noalias !12932
  %.sroa.12652.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ad, i64 144
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.12652.0..sroa_idx.i, i8 0, i64 16, i1 false), !noalias !12932
  %.sroa.14653.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ad, i64 168
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.14653.0..sroa_idx.i, i8 0, i64 16, i1 false), !noalias !12932
  %.sroa.16654.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ad, i64 192
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.16654.0..sroa_idx.i, i8 0, i64 16, i1 false), !noalias !12932
  %.sroa.18655.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ad, i64 216
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.18655.0..sroa_idx.i, i8 0, i64 16, i1 false), !noalias !12932
  %.sroa.20657.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ad, i64 240
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.20657.0..sroa_idx.i, i8 0, i64 16, i1 false), !noalias !12932
  %.sroa.22658.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ad, i64 264
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.22658.0..sroa_idx.i, i8 0, i64 16, i1 false), !noalias !12932
  %.sroa.26660.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ad, i64 312
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.26660.0..sroa_idx.i, i8 0, i64 16, i1 false), !noalias !12932
  %.sroa.28.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ad, i64 336
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.28.0..sroa_idx.i, i8 0, i64 16, i1 false), !noalias !12932
  %.sroa.32.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ad, i64 384
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.32.0..sroa_idx.i, i8 0, i64 16, i1 false), !noalias !12932
  %.sroa.34.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ad, i64 408
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.34.0..sroa_idx.i, i8 0, i64 16, i1 false), !noalias !12932
  %.sroa.38.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ad, i64 456
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.38.0..sroa_idx.i, i8 0, i64 16, i1 false), !noalias !12932
  %.sroa.24659.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ad, i64 288
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.24659.0..sroa_idx.i, i8 0, i64 16, i1 false), !noalias !12932
  %.sroa.30.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ad, i64 360 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.30.0..sroa_idx.i, i8 0, i64 16, i1 false), !noalias !12932
  %.sroa.36.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ad, i64 432
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.36.0..sroa_idx.i, i8 0, i64 16, i1 false), !noalias !12932
  store i64 0, ptr %i.ad, align 8, !noalias !13021
  %.sroa.4643.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ad, i64 16
  store i64 0, ptr %.sroa.4643.0..sroa_idx.i, align 8, !noalias !13021
  %.sroa.5645.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ad, i64 40
  store i64 0, ptr %.sroa.5645.0..sroa_idx.i, align 8, !noalias !13021
  %.sroa.6647.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ad, i64 56
  store i64 0, ptr %.sroa.6647.0..sroa_idx.i, align 8, !noalias !13021
  %.sroa.7648.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ad, i64 80
  store i64 5, ptr %.sroa.7648.0..sroa_idx.i, align 8, !noalias !13021
  %.sroa.8650.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ad, i64 104
  store i64 0, ptr %.sroa.8650.0..sroa_idx.i, align 8, !noalias !13021
  %.sroa.9.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ad, i64 112
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.9.0..sroa_idx.i, align 8, !noalias !13021
  %.sroa.11.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ad, i64 136
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.11.0..sroa_idx.i, align 8, !noalias !13021
  %.sroa.13.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ad, i64 160
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.13.0..sroa_idx.i, align 8, !noalias !13021
  %.sroa.15.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ad, i64 184
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.15.0..sroa_idx.i, align 8, !noalias !13021
  %.sroa.17.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ad, i64 208
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.17.0..sroa_idx.i, align 8, !noalias !13021
  %.sroa.19656.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ad, i64 232
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.19656.0..sroa_idx.i, align 8, !noalias !13021
  %.sroa.21.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ad, i64 256
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.21.0..sroa_idx.i, align 8, !noalias !13021
  %.sroa.23.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ad, i64 280
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.23.0..sroa_idx.i, align 8, !noalias !13021
  %.sroa.25.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ad, i64 304
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.25.0..sroa_idx.i, align 8, !noalias !13021
  %.sroa.27.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ad, i64 328
  store ptr inttoptr (i64 4 to ptr), ptr %.sroa.27.0..sroa_idx.i, align 8, !noalias !13021
  %.sroa.29.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ad, i64 352 ; 2 uses
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.29.0..sroa_idx.i, align 8, !noalias !13021
  %.sroa.31.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ad, i64 376
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.31.0..sroa_idx.i, align 8, !noalias !13021
  %.sroa.33.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ad, i64 400
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.33.0..sroa_idx.i, align 8, !noalias !13021
  %.sroa.35.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ad, i64 424
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.35.0..sroa_idx.i, align 8, !noalias !13021
  %.sroa.37.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ad, i64 448
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.37.0..sroa_idx.i, align 8, !noalias !13021
  %.sroa.39.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ad, i64 472
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.39.0..sroa_idx.i, align 8, !noalias !13021
  %.sroa.40.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ad, i64 480
  store i64 0, ptr %.sroa.40.0..sroa_idx.i, align 8, !noalias !13021
  %.sroa.41.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ad, i64 488
  store i64 -9223372036854775808, ptr %.sroa.41.0..sroa_idx.i, align 8, !noalias !13021
  %.sroa.42661.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ad, i64 512
  store i64 -9223372036854775808, ptr %.sroa.42661.0..sroa_idx.i, align 8, !noalias !13021
  %.sroa.43662.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ad, i64 552
  store i64 -9223372036854775807, ptr %.sroa.43662.0..sroa_idx.i, align 8, !noalias !13021
  %.sroa.44663.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ad, i64 576
  store ptr @267, ptr %.sroa.44663.0..sroa_idx.i, align 8, !noalias !13021
  %.sroa.45.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ad, i64 584
  store i64 6, ptr %.sroa.45.0..sroa_idx.i, align 8, !noalias !13021
  %.sroa.46.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ad, i64 592
  store ptr null, ptr %.sroa.46.0..sroa_idx.i, align 8, !noalias !13021
  %.sroa.47664.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ad, i64 608
  store ptr null, ptr %.sroa.47664.0..sroa_idx.i, align 8, !noalias !13021
  %.sroa.48665.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ad, i64 624
  store i32 1114112, ptr %.sroa.48665.0..sroa_idx.i, align 8, !noalias !13021
  %.sroa.49.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ad, i64 628
  store i32 1114112, ptr %.sroa.49.0..sroa_idx.i, align 4, !noalias !13021
  %.sroa.50.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ad, i64 632
  store i32 0, ptr %.sroa.50.0..sroa_idx.i, align 8, !noalias !13021
  %.sroa.51.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ad, i64 636
  store i8 9, ptr %.sroa.51.0..sroa_idx.i, align 4, !noalias !13021
  call void @llvm.experimental.noalias.scope.decl(metadata !13022)
  call void @llvm.experimental.noalias.scope.decl(metadata !13025)
  call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #37, !noalias !13027
  %i.di = call noundef align 8 dereferenceable_or_null(16) ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef 16, i64 noundef range(i64 1, 9) 8) #37, !noalias !13027 ; 4 uses
  %i.dj = icmp eq ptr %i.di, null
  br i1 %i.dj, label %.noexc.i.i.i.i.i.i.i, label %bb.u

bb.s:                                             ; preds = %.noexc.i.i.i.i.i.i.i
  %i.dk = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr52drop_in_place$LT$clap_builder..builder..arg..Arg$GT$17hacc3bf540033e722E"(ptr noalias noundef nonnull align 8 dereferenceable(640) %i.ad) #33
          to label %bb.fz unwind label %bb.t, !noalias !13045

.noexc.i.i.i.i.i.i.i:                             ; preds = %bb.r
  invoke void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef 8, i64 16, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @231) #38
          to label %.noexc.i.i.i unwind label %bb.s, !noalias !13046

.noexc.i.i.i:                                     ; preds = %.noexc.i.i.i.i.i.i.i
  unreachable

bb.t:                                             ; preds = %bb.s
  %i.dl = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #34, !noalias !13045
  unreachable

bb.u:                                             ; preds = %bb.r
  store ptr @274, ptr %i.di, align 8, !noalias !13047
  %i.dm = getelementptr inbounds nuw i8, ptr %i.di, i64 8
  store i64 6, ptr %i.dm, align 8, !noalias !13080
end_hunk_0
