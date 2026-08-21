Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/meilisearch-rs/original/meilitool-3c21fadc9a6b74a0.meilitool.c082eaae8d87b010-cgu.0?download=true
inline.NumInlined: 19729
inline.NumDeleted: 8931
loop-unroll.NumCompletelyUnrolled: 99
loop-unroll.NumRuntimeUnrolled: 159
loop-unroll.NumUnrolled: 258
loop-unroll.NumUnrolledNotLatch: 3
begin_hunk_0_@"_ZN71_$LT$meilitool..Command$u20$as$u20$clap_builder..derive..Subcommand$GT$19augment_subcommands17h807101fb9e2439daE":bb.a
  %i.fw = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #47, !noalias !47979
  unreachable

bb.k:                                             ; preds = %bb.i, %bb.h
  store i64 %i.fs, ptr %i.fu, align 8, !alias.scope !47973, !noalias !47981
  %.sroa.6.0..sroa_idx4.i110 = getelementptr inbounds nuw i8, ptr %i.ee, i64 352
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6.0..sroa_idx4.i110, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6.i105, i64 16, i1 false), !noalias !47981
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6.i105)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bk)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(712) %i.bk, ptr noundef nonnull align 8 dereferenceable(712) %i.ee, i64 712, i1 false), !noalias !15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ee)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bj), !noalias !47987
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(712) %i.bj, ptr noundef nonnull readonly align 8 dereferenceable(712) %1, i64 712, i1 false), !noalias !47992
  call void @_ZN12clap_builder7builder7command7Command19subcommand_internal17hcafa007f0dac0939E(ptr noalias noundef nonnull sret([712 x i8]) align 8 captures(address) dereferenceable(712) %i.eg, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(712) %i.bj, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(712) %i.bk)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bj), !noalias !47987
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bk)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ed)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ec)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(712) %i.ec, ptr noundef nonnull align 8 dereferenceable(712) %i.eg, i64 712, i1 false)
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.eb, i64 72
  call void @llvm.lifetime.start.p0(ptr nonnull %i.eb)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.9.0..sroa_idx, i8 0, i64 16, i1 false)
  %.sroa.11.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.eb, i64 96
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.11.0..sroa_idx, i8 0, i64 16, i1 false)
  %.sroa.16.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.eb, i64 144
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.16.0..sroa_idx, i8 0, i64 16, i1 false)
  %.sroa.18.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.eb, i64 168
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.18.0..sroa_idx, i8 0, i64 16, i1 false)
  %.sroa.20.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.eb, i64 192
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.20.0..sroa_idx, i8 0, i64 16, i1 false)
  %.sroa.25.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.eb, i64 240
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.25.0..sroa_idx, i8 0, i64 16, i1 false)
  store i64 0, ptr %i.eb, align 8
  %.sroa.41100.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.eb, i64 16
  store i64 1, ptr %.sroa.41100.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.eb, i64 24
  store i64 0, ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx1101 = getelementptr inbounds nuw i8, ptr %i.eb, i64 32
  store i64 5, ptr %.sroa.6.0..sroa_idx1101, align 8
  %.sroa.71103.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.eb, i64 56
  store i64 0, ptr %.sroa.71103.0..sroa_idx, align 8
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.eb, i64 64
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.8.0..sroa_idx, align 8
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.eb, i64 88
  store ptr inttoptr (i64 4 to ptr), ptr %.sroa.10.0..sroa_idx, align 8
  %.sroa.12.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.eb, i64 112
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.12.0..sroa_idx, align 8
  %.sroa.13.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.eb, i64 120
  %.sroa.15.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.eb, i64 136
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.13.0..sroa_idx, i8 0, i64 16, i1 false)
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.15.0..sroa_idx, align 8
  %.sroa.17.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.eb, i64 160
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.17.0..sroa_idx, align 8
  %.sroa.19.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.eb, i64 184
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.19.0..sroa_idx, align 8
  %.sroa.21.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.eb, i64 208 ; 2 uses
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.21.0..sroa_idx, align 8
  %.sroa.22.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.eb, i64 216 ; 3 uses
  %.sroa.24.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.eb, i64 232
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.22.0..sroa_idx, i8 0, i64 16, i1 false)
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.24.0..sroa_idx, align 8
  %.sroa.26.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.eb, i64 256
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.26.0..sroa_idx, align 8
  %.sroa.27.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.eb, i64 264
  store i64 0, ptr %.sroa.27.0..sroa_idx, align 8
  %.sroa.28.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.eb, i64 272
  store i64 -9223372036854775808, ptr %.sroa.28.0..sroa_idx, align 8
  %.sroa.291104.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.eb, i64 296
  store i64 -9223372036854775808, ptr %.sroa.291104.0..sroa_idx, align 8
  %.sroa.301105.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.eb, i64 320
  store i64 -9223372036854775808, ptr %.sroa.301105.0..sroa_idx, align 8
  %.sroa.311106.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.eb, i64 344
  store i64 -9223372036854775808, ptr %.sroa.311106.0..sroa_idx, align 8
  %.sroa.321107.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.eb, i64 368
  store i64 -9223372036854775808, ptr %.sroa.321107.0..sroa_idx, align 8
  %.sroa.331108.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.eb, i64 392
  store i64 -9223372036854775808, ptr %.sroa.331108.0..sroa_idx, align 8
  %.sroa.341109.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.eb, i64 416
  store i64 -9223372036854775808, ptr %.sroa.341109.0..sroa_idx, align 8
  %.sroa.351110.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.eb, i64 440
  store i64 -9223372036854775808, ptr %.sroa.351110.0..sroa_idx, align 8
  %.sroa.361111.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.eb, i64 464
  store i64 -9223372036854775808, ptr %.sroa.361111.0..sroa_idx, align 8
  %.sroa.371112.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.eb, i64 488
  store i64 -9223372036854775808, ptr %.sroa.371112.0..sroa_idx, align 8
  %.sroa.381113.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.eb, i64 512
  store i64 -9223372036854775808, ptr %.sroa.381113.0..sroa_idx, align 8
  %.sroa.391114.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.eb, i64 536
  store i64 -9223372036854775808, ptr %.sroa.391114.0..sroa_idx, align 8
  %.sroa.401115.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.eb, i64 560
  store ptr @2218, ptr %.sroa.401115.0..sroa_idx, align 8
  %.sroa.41.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.eb, i64 568
  store i64 13, ptr %.sroa.41.0..sroa_idx, align 8
  %.sroa.42.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.eb, i64 576
  store ptr null, ptr %.sroa.42.0..sroa_idx, align 8
  %.sroa.431116.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.eb, i64 592
  store ptr null, ptr %.sroa.431116.0..sroa_idx, align 8
  %.sroa.441117.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.eb, i64 608
  store ptr null, ptr %.sroa.441117.0..sroa_idx, align 8
  %.sroa.451118.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.eb, i64 624
  store ptr null, ptr %.sroa.451118.0..sroa_idx, align 8
  %.sroa.461119.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.eb, i64 640
  store ptr null, ptr %.sroa.461119.0..sroa_idx, align 8
  %.sroa.471120.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.eb, i64 656
  store ptr null, ptr %.sroa.471120.0..sroa_idx, align 8
  %.sroa.481121.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.eb, i64 672
  store ptr null, ptr %.sroa.481121.0..sroa_idx, align 8
  %.sroa.491122.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.eb, i64 688
  store ptr null, ptr %.sroa.491122.0..sroa_idx, align 8
  %.sroa.50.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.eb, i64 696
  store i32 1114112, ptr %.sroa.50.0..sroa_idx, align 8
  %.sroa.51.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.eb, i64 700
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(9) %.sroa.51.0..sroa_idx, i8 0, i64 9, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ea)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.91139)
  call void @llvm.experimental.noalias.scope.decl(metadata !47993)
  call void @llvm.experimental.noalias.scope.decl(metadata !47996)
  %i.fx = getelementptr inbounds nuw i8, ptr %i.bi, i64 16 ; 3 uses
  %i.fy = getelementptr inbounds nuw i8, ptr %i.bi, i64 8 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.323079)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bi), !noalias !47998
  store i64 0, ptr %i.bi, align 8, !noalias !48000
  store ptr inttoptr (i64 8 to ptr), ptr %i.fy, align 8, !noalias !48000
  %.sroa.01129.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bi, i64 24 ; 3 uses
  %.sroa.01129.sroa.11.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bi, i64 32 ; 4 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.fx, i8 0, i64 16, i1 false)
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.01129.sroa.11.0..sroa_idx, align 8, !noalias !48000
  %.sroa.01129.sroa.12.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bi, i64 40 ; 4 uses
  %.sroa.01129.sroa.14.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bi, i64 56 ; 4 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.01129.sroa.12.0..sroa_idx, i8 0, i64 16, i1 false)
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.01129.sroa.14.0..sroa_idx, align 8, !noalias !48000
  %.sroa.01129.sroa.15.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bi, i64 64 ; 4 uses
  store i64 0, ptr %.sroa.01129.sroa.15.0..sroa_idx, align 8, !noalias !48000
  %.sroa.01129.sroa.16.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bi, i64 72 ; 4 uses
  store ptr @2219, ptr %.sroa.01129.sroa.16.0..sroa_idx, align 8, !noalias !48000
  %.sroa.01129.sroa.17.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bi, i64 80 ; 4 uses
  store i64 11, ptr %.sroa.01129.sroa.17.0..sroa_idx, align 8, !noalias !48000
  %.sroa.01129.sroa.18.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bi, i64 88 ; 4 uses
  store i8 0, ptr %.sroa.01129.sroa.18.0..sroa_idx, align 8, !noalias !48000
  %.sroa.81130.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bi, i64 89 ; 4 uses
  store i8 1, ptr %.sroa.81130.0..sroa_idx, align 1, !noalias !48000
  %.sroa.91139.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bi, i64 90 ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !48001)
  invoke void @"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$8grow_one17h90488284a11b96fbE"(ptr noalias noundef nonnull align 8 dereferenceable(96) %i.bi, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @187)
          to label %bb.l unwind label %bb.kq, !noalias !48004

bb.l:                                             ; preds = %bb.k
  %i.fz = load ptr, ptr %i.fy, align 8, !alias.scope !48006, !noalias !48010, !nonnull !15, !noundef !15 ; 2 uses
  store ptr @2220, ptr %i.fz, align 8, !noalias !48013
  %i.ga = getelementptr inbounds nuw i8, ptr %i.fz, i64 8
  store i64 8, ptr %i.ga, align 8, !noalias !48014
  %.sroa.03041.0.copyload = load i64, ptr %i.bi, align 8, !alias.scope !48015, !noalias !48016 ; 3 uses
  %.sroa.83043.0.copyload = load ptr, ptr %i.fy, align 8, !alias.scope !48015, !noalias !48016 ; 2 uses
  %.sroa.123049.0.copyload = load i64, ptr %.sroa.01129.sroa.10.0..sroa_idx, align 8, !alias.scope !48015, !noalias !48016
  %.sroa.143052.0.copyload = load ptr, ptr %.sroa.01129.sroa.11.0..sroa_idx, align 8, !alias.scope !48015, !noalias !48016
  %.sroa.203061.0.copyload = load ptr, ptr %.sroa.01129.sroa.14.0..sroa_idx, align 8, !alias.scope !48015, !noalias !48016
  %.sroa.223064.0.copyload = load i64, ptr %.sroa.01129.sroa.15.0..sroa_idx, align 8, !alias.scope !48015, !noalias !48016
  %.sroa.243067.0.copyload = load ptr, ptr %.sroa.01129.sroa.16.0..sroa_idx, align 8, !alias.scope !48015, !noalias !48016
  %.sroa.263070.0.copyload = load i64, ptr %.sroa.01129.sroa.17.0..sroa_idx, align 8, !alias.scope !48015, !noalias !48016
  %.sroa.283073.0.copyload = load i8, ptr %.sroa.01129.sroa.18.0..sroa_idx, align 8, !alias.scope !48015, !noalias !48016
  %.sroa.303076.0.copyload = load i8, ptr %.sroa.81130.0..sroa_idx, align 1, !alias.scope !48015, !noalias !48016
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(6) %.sroa.323079, ptr noundef nonnull align 2 dereferenceable(6) %.sroa.91139.0..sroa_idx, i64 6, i1 false), !alias.scope !48015, !noalias !48016
  %i.gb = load <2 x i64>, ptr %.sroa.01129.sroa.12.0..sroa_idx, align 8, !alias.scope !48015, !noalias !48016
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bi), !noalias !47998
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(6) %.sroa.91139, ptr noundef nonnull align 2 dereferenceable(6) %.sroa.323079, i64 6, i1 false), !noalias !48000
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.323079)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.323079)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bi), !noalias !47998
  store i64 %.sroa.03041.0.copyload, ptr %i.bi, align 8, !noalias !48000
  store ptr %.sroa.83043.0.copyload, ptr %i.fy, align 8, !noalias !48000
  store i64 1, ptr %i.fx, align 8, !noalias !48000
  store i64 %.sroa.123049.0.copyload, ptr %.sroa.01129.sroa.10.0..sroa_idx, align 8, !noalias !48000
  store ptr %.sroa.143052.0.copyload, ptr %.sroa.01129.sroa.11.0..sroa_idx, align 8, !noalias !48000
  store <2 x i64> %i.gb, ptr %.sroa.01129.sroa.12.0..sroa_idx, align 8, !noalias !48000
  store ptr %.sroa.203061.0.copyload, ptr %.sroa.01129.sroa.14.0..sroa_idx, align 8, !noalias !48000
  store i64 %.sroa.223064.0.copyload, ptr %.sroa.01129.sroa.15.0..sroa_idx, align 8, !noalias !48000
  store ptr %.sroa.243067.0.copyload, ptr %.sroa.01129.sroa.16.0..sroa_idx, align 8, !noalias !48000
  store i64 %.sroa.263070.0.copyload, ptr %.sroa.01129.sroa.17.0..sroa_idx, align 8, !noalias !48000
  store i8 %.sroa.283073.0.copyload, ptr %.sroa.01129.sroa.18.0..sroa_idx, align 8, !noalias !48000
  store i8 %.sroa.303076.0.copyload, ptr %.sroa.81130.0..sroa_idx, align 1, !noalias !48000
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(6) %.sroa.91139.0..sroa_idx, ptr noundef nonnull align 2 dereferenceable(6) %.sroa.91139, i64 6, i1 false), !noalias !48000
  call void @llvm.experimental.noalias.scope.decl(metadata !48017)
  %i.gc = icmp eq i64 %.sroa.03041.0.copyload, 1
  br i1 %i.gc, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  invoke void @"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$8grow_one17h90488284a11b96fbE"(ptr noalias noundef nonnull align 8 dereferenceable(96) %i.bi, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @187)
          to label %._crit_edge unwind label %bb.kq, !noalias !48019

._crit_edge:                                      ; preds = %bb.m
  %.pre = load ptr, ptr %i.fy, align 8, !alias.scope !48006, !noalias !48020
  %.sroa.03041.0.copyload3042.pre = load i64, ptr %i.bi, align 8, !alias.scope !48021, !noalias !48016
  br label %bb.n

bb.n:                                             ; preds = %._crit_edge, %bb.l
  %.sroa.03041.0.copyload3042 = phi i64 [ %.sroa.03041.0.copyload3042.pre, %._crit_edge ], [ %.sroa.03041.0.copyload, %bb.l ]
  %i.gd = phi ptr [ %.pre, %._crit_edge ], [ %.sroa.83043.0.copyload, %bb.l ] ; 3 uses
  %i.ge = getelementptr inbounds nuw i8, ptr %i.gd, i64 16
  store ptr @2220, ptr %i.ge, align 8, !noalias !48022
  %i.gf = getelementptr inbounds nuw i8, ptr %i.gd, i64 24
  store i64 8, ptr %i.gf, align 8, !noalias !48023
  store i64 2, ptr %i.fx, align 8, !alias.scope !48006, !noalias !48020
  %.sroa.123049.0.copyload3051 = load i64, ptr %.sroa.01129.sroa.10.0..sroa_idx, align 8, !alias.scope !48021, !noalias !48016
  %.sroa.143052.0.copyload3054 = load ptr, ptr %.sroa.01129.sroa.11.0..sroa_idx, align 8, !alias.scope !48021, !noalias !48016
  %.sroa.203061.0.copyload3063 = load ptr, ptr %.sroa.01129.sroa.14.0..sroa_idx, align 8, !alias.scope !48021, !noalias !48016
  %.sroa.223064.0.copyload3066 = load i64, ptr %.sroa.01129.sroa.15.0..sroa_idx, align 8, !alias.scope !48021, !noalias !48016
  %.sroa.243067.0.copyload3069 = load ptr, ptr %.sroa.01129.sroa.16.0..sroa_idx, align 8, !alias.scope !48021, !noalias !48016
  %.sroa.263070.0.copyload3072 = load i64, ptr %.sroa.01129.sroa.17.0..sroa_idx, align 8, !alias.scope !48021, !noalias !48016
  %.sroa.283073.0.copyload3075 = load i8, ptr %.sroa.01129.sroa.18.0..sroa_idx, align 8, !alias.scope !48021, !noalias !48016
  %.sroa.303076.0.copyload3078 = load i8, ptr %.sroa.81130.0..sroa_idx, align 1, !alias.scope !48021, !noalias !48016
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(6) %.sroa.323079, ptr noundef nonnull align 2 dereferenceable(6) %.sroa.91139.0..sroa_idx, i64 6, i1 false), !alias.scope !48021, !noalias !48016
  %.sroa.01129.sroa.8.0..sroa_idx2625 = getelementptr inbounds nuw i8, ptr %i.ea, i64 8
  %.sroa.01129.sroa.9.0..sroa_idx2633 = getelementptr inbounds nuw i8, ptr %i.ea, i64 16
  %.sroa.01129.sroa.10.0..sroa_idx2641 = getelementptr inbounds nuw i8, ptr %i.ea, i64 24
  %.sroa.01129.sroa.11.0..sroa_idx2649 = getelementptr inbounds nuw i8, ptr %i.ea, i64 32
  %.sroa.01129.sroa.12.0..sroa_idx2657 = getelementptr inbounds nuw i8, ptr %i.ea, i64 40
  %i.gg = load <2 x i64>, ptr %.sroa.01129.sroa.12.0..sroa_idx, align 8, !alias.scope !48021, !noalias !48016
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bi), !noalias !47998
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(6) %.sroa.91139, ptr noundef nonnull align 2 dereferenceable(6) %.sroa.323079, i64 6, i1 false), !noalias !48000
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.323079)
  store i64 %.sroa.03041.0.copyload3042, ptr %i.ea, align 8, !alias.scope !48024, !noalias !48025
  store ptr %i.gd, ptr %.sroa.01129.sroa.8.0..sroa_idx2625, align 8, !alias.scope !48024, !noalias !48025
  store i64 2, ptr %.sroa.01129.sroa.9.0..sroa_idx2633, align 8, !alias.scope !48024, !noalias !48025
  store i64 %.sroa.123049.0.copyload3051, ptr %.sroa.01129.sroa.10.0..sroa_idx2641, align 8, !alias.scope !48024, !noalias !48025
  store ptr %.sroa.143052.0.copyload3054, ptr %.sroa.01129.sroa.11.0..sroa_idx2649, align 8, !alias.scope !48024, !noalias !48025
  store <2 x i64> %i.gg, ptr %.sroa.01129.sroa.12.0..sroa_idx2657, align 8, !alias.scope !48024, !noalias !48025
  %.sroa.01129.sroa.14.0..sroa_idx2673 = getelementptr inbounds nuw i8, ptr %i.ea, i64 56
  store ptr %.sroa.203061.0.copyload3063, ptr %.sroa.01129.sroa.14.0..sroa_idx2673, align 8, !alias.scope !48024, !noalias !48025
  %.sroa.01129.sroa.15.0..sroa_idx2681 = getelementptr inbounds nuw i8, ptr %i.ea, i64 64
  store i64 %.sroa.223064.0.copyload3066, ptr %.sroa.01129.sroa.15.0..sroa_idx2681, align 8, !alias.scope !48024, !noalias !48025
  %.sroa.01129.sroa.16.0..sroa_idx2689 = getelementptr inbounds nuw i8, ptr %i.ea, i64 72
  store ptr %.sroa.243067.0.copyload3069, ptr %.sroa.01129.sroa.16.0..sroa_idx2689, align 8, !alias.scope !48024, !noalias !48025
  %.sroa.01129.sroa.17.0..sroa_idx2697 = getelementptr inbounds nuw i8, ptr %i.ea, i64 80
  store i64 %.sroa.263070.0.copyload3072, ptr %.sroa.01129.sroa.17.0..sroa_idx2697, align 8, !alias.scope !48024, !noalias !48025
  %.sroa.01129.sroa.18.0..sroa_idx2705 = getelementptr inbounds nuw i8, ptr %i.ea, i64 88
  store i8 %.sroa.283073.0.copyload3075, ptr %.sroa.01129.sroa.18.0..sroa_idx2705, align 8, !alias.scope !48024, !noalias !48025
  %.sroa.81130.0..sroa_idx1137 = getelementptr inbounds nuw i8, ptr %i.ea, i64 89
  store i8 %.sroa.303076.0.copyload3078, ptr %.sroa.81130.0..sroa_idx1137, align 1, !alias.scope !48024, !noalias !48025
  %.sroa.91139.0..sroa_idx1143 = getelementptr inbounds nuw i8, ptr %i.ea, i64 90
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(6) %.sroa.91139.0..sroa_idx1143, ptr noundef nonnull align 2 dereferenceable(6) %.sroa.91139, i64 6, i1 false), !alias.scope !48024, !noalias !48025
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.91139)
  %i.gh = getelementptr inbounds nuw i8, ptr %i.eb, i64 200 ; 2 uses
  %i.gi = load i64, ptr %.sroa.22.0..sroa_idx, align 8, !alias.scope !48026, !noalias !48031, !noundef !15 ; 3 uses
  %i.gj = load i64, ptr %i.gh, align 8, !range !10, !alias.scope !48026, !noalias !48031, !noundef !15
  %i.gk = icmp eq i64 %i.gi, %i.gj
  br i1 %i.gk, label %bb.o, label %bb.r

bb.o:                                             ; preds = %bb.n
  invoke void @"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$8grow_one17hd1b6aa6ee33cf8f3E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.gh, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @185)
          to label %bb.r unwind label %.body.i, !noalias !48031

.body.i:                                          ; preds = %bb.o
  %i.gl = landingpad { ptr, i32 }
          cleanup
  call fastcc void @"_ZN4core3ptr63drop_in_place$LT$clap_builder..builder..arg_group..ArgGroup$GT$17hde4441bca3fe8d0bE"(ptr noalias noundef nonnull readonly align 8 dereferenceable(96) %i.ea) #44, !noalias !48035
  invoke fastcc void @"_ZN4core3ptr60drop_in_place$LT$clap_builder..builder..command..Command$GT$17h09f9fbbb9fff9641E"(ptr noalias noundef nonnull align 8 dereferenceable(712) %i.eb) #44
          to label %.thread3237 unwind label %bb.p, !noalias !48036

bb.p:                                             ; preds = %.body.i
  %i.gm = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #47, !noalias !48036
  unreachable

bb.q:                                             ; preds = %bb.w
  %i.gn = landingpad { ptr, i32 }
          cleanup
  br label %bb.kp

bb.r:                                             ; preds = %bb.n, %bb.o
  %i.go = load ptr, ptr %.sroa.21.0..sroa_idx, align 8, !alias.scope !48026, !noalias !48031, !nonnull !15, !noundef !15
  %i.gp = getelementptr inbounds nuw [96 x i8], ptr %i.go, i64 %i.gi
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %i.gp, ptr noundef nonnull readonly align 8 dereferenceable(96) %i.ea, i64 96, i1 false), !noalias !48035
  %i.gq = add i64 %i.gi, 1
  store i64 %i.gq, ptr %.sroa.22.0..sroa_idx, align 8, !alias.scope !48026, !noalias !48031
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dz)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(712) %i.dz, ptr noundef nonnull align 8 dereferenceable(712) %i.eb, i64 712, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ea)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.eb)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dx)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dw)
  %.sroa.101162.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bh, i64 120
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bh), !noalias !48037
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.101162.0..sroa_idx, i8 0, i64 16, i1 false), !noalias !15
  %.sroa.121164.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bh, i64 144
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.121164.0..sroa_idx, i8 0, i64 16, i1 false), !noalias !15
  %.sroa.141166.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bh, i64 168
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.141166.0..sroa_idx, i8 0, i64 16, i1 false), !noalias !15
  %.sroa.161168.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bh, i64 192
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.161168.0..sroa_idx, i8 0, i64 16, i1 false), !noalias !15
  %.sroa.181170.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bh, i64 216
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.181170.0..sroa_idx, i8 0, i64 16, i1 false), !noalias !15
  %.sroa.201172.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bh, i64 240
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.201172.0..sroa_idx, i8 0, i64 16, i1 false), !noalias !15
  %.sroa.221174.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bh, i64 264
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.221174.0..sroa_idx, i8 0, i64 16, i1 false), !noalias !15
  %.sroa.261178.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bh, i64 312
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.261178.0..sroa_idx, i8 0, i64 16, i1 false), !noalias !15
  %.sroa.281180.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bh, i64 336
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.281180.0..sroa_idx, i8 0, i64 16, i1 false), !noalias !15
  %.sroa.321184.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bh, i64 384
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.321184.0..sroa_idx, i8 0, i64 16, i1 false), !noalias !15
  %.sroa.341186.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bh, i64 408
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.341186.0..sroa_idx, i8 0, i64 16, i1 false), !noalias !15
  %.sroa.381190.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bh, i64 456
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.381190.0..sroa_idx, i8 0, i64 16, i1 false), !noalias !15
  %.sroa.241176.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bh, i64 288
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.241176.0..sroa_idx, i8 0, i64 16, i1 false), !noalias !15
  %.sroa.301182.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bh, i64 360 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.301182.0..sroa_idx, i8 0, i64 16, i1 false), !noalias !15
  %.sroa.361188.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bh, i64 432
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.361188.0..sroa_idx, i8 0, i64 16, i1 false), !noalias !15
  store i64 0, ptr %i.bh, align 8, !noalias !48042
  %.sroa.41152.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bh, i64 16
  store i64 0, ptr %.sroa.41152.0..sroa_idx, align 8, !noalias !48042
  %.sroa.51154.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bh, i64 40
  store i64 0, ptr %.sroa.51154.0..sroa_idx, align 8, !noalias !48042
  %.sroa.61156.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bh, i64 56
  store i64 0, ptr %.sroa.61156.0..sroa_idx, align 8, !noalias !48042
  %.sroa.71158.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bh, i64 80
  store i64 5, ptr %.sroa.71158.0..sroa_idx, align 8, !noalias !48042
  %.sroa.81160.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bh, i64 104
  store i64 0, ptr %.sroa.81160.0..sroa_idx, align 8, !noalias !48042
  %.sroa.91161.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bh, i64 112
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.91161.0..sroa_idx, align 8, !noalias !48042
  %.sroa.111163.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bh, i64 136
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.111163.0..sroa_idx, align 8, !noalias !48042
  %.sroa.131165.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bh, i64 160
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.131165.0..sroa_idx, align 8, !noalias !48042
  %.sroa.151167.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bh, i64 184
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.151167.0..sroa_idx, align 8, !noalias !48042
  %.sroa.171169.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bh, i64 208
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.171169.0..sroa_idx, align 8, !noalias !48042
  %.sroa.191171.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bh, i64 232
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.191171.0..sroa_idx, align 8, !noalias !48042
  %.sroa.211173.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bh, i64 256
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.211173.0..sroa_idx, align 8, !noalias !48042
  %.sroa.231175.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bh, i64 280
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.231175.0..sroa_idx, align 8, !noalias !48042
  %.sroa.251177.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bh, i64 304
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.251177.0..sroa_idx, align 8, !noalias !48042
  %.sroa.271179.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bh, i64 328
  store ptr inttoptr (i64 4 to ptr), ptr %.sroa.271179.0..sroa_idx, align 8, !noalias !48042
  %.sroa.291181.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bh, i64 352 ; 2 uses
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.291181.0..sroa_idx, align 8, !noalias !48042
  %.sroa.311183.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bh, i64 376
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.311183.0..sroa_idx, align 8, !noalias !48042
  %.sroa.331185.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bh, i64 400
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.331185.0..sroa_idx, align 8, !noalias !48042
  %.sroa.351187.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bh, i64 424
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.351187.0..sroa_idx, align 8, !noalias !48042
  %.sroa.371189.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bh, i64 448
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.371189.0..sroa_idx, align 8, !noalias !48042
  %.sroa.391191.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bh, i64 472
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.391191.0..sroa_idx, align 8, !noalias !48042
  %.sroa.401192.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bh, i64 480
  store i64 0, ptr %.sroa.401192.0..sroa_idx, align 8, !noalias !48042
  %.sroa.411193.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bh, i64 488
  store i64 -9223372036854775808, ptr %.sroa.411193.0..sroa_idx, align 8, !noalias !48042
  %.sroa.421195.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bh, i64 512
  store i64 -9223372036854775808, ptr %.sroa.421195.0..sroa_idx, align 8, !noalias !48042
  %.sroa.431197.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bh, i64 552
  store i64 -9223372036854775807, ptr %.sroa.431197.0..sroa_idx, align 8, !noalias !48042
  %.sroa.441199.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bh, i64 576
  store ptr @2220, ptr %.sroa.441199.0..sroa_idx, align 8, !noalias !48042
  %.sroa.451200.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bh, i64 584
  store i64 8, ptr %.sroa.451200.0..sroa_idx, align 8, !noalias !48042
  %.sroa.461201.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bh, i64 592
  store ptr null, ptr %.sroa.461201.0..sroa_idx, align 8, !noalias !48042
  %.sroa.471203.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bh, i64 608
  store ptr null, ptr %.sroa.471203.0..sroa_idx, align 8, !noalias !48042
  %.sroa.481205.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bh, i64 624
  store i32 1114112, ptr %.sroa.481205.0..sroa_idx, align 8, !noalias !48042
  %.sroa.491206.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bh, i64 628
  store i32 1114112, ptr %.sroa.491206.0..sroa_idx, align 4, !noalias !48042
  %.sroa.501207.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bh, i64 632
  store i32 0, ptr %.sroa.501207.0..sroa_idx, align 8, !noalias !48042
  %.sroa.511208.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bh, i64 636 ; 2 uses
  store i8 9, ptr %.sroa.511208.0..sroa_idx, align 4, !noalias !48042
  call void @llvm.experimental.noalias.scope.decl(metadata !48043)
  call void @llvm.experimental.noalias.scope.decl(metadata !48046)
  call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #45, !noalias !48048
  %i.gr = call noundef align 8 dereferenceable_or_null(16) ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef 16, i64 noundef range(i64 1, 9) 8) #45, !noalias !48048 ; 4 uses
  %i.gs = icmp eq ptr %i.gr, null
  br i1 %i.gs, label %.noexc.i.i.i.i.i.i, label %bb.t

bb.s:                                             ; preds = %.noexc.i.i.i.i.i.i
  %i.gt = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr52drop_in_place$LT$clap_builder..builder..arg..Arg$GT$17h16854998d472b50cE"(ptr noalias noundef nonnull align 8 dereferenceable(640) %i.bh) #44
          to label %bb.kp unwind label %bb.v, !noalias !48066

.noexc.i.i.i.i.i.i:                               ; preds = %bb.r
  invoke void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef 8, i64 16, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @1016) #46
          to label %.noexc.i.i unwind label %bb.s, !noalias !48067

.noexc.i.i:                                       ; preds = %.noexc.i.i.i.i.i.i
  unreachable

bb.t:                                             ; preds = %bb.r
  store ptr @2222, ptr %i.gr, align 8, !noalias !48068
end_hunk_0
begin_hunk_1_@"_ZN71_$LT$meilitool..Command$u20$as$u20$clap_builder..derive..Subcommand$GT$19augment_subcommands17h807101fb9e2439daE":bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aw)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(344) %i.aw, ptr noundef nonnull align 8 dereferenceable(344) %.sroa.0, i64 344, i1 false), !noalias !15
  %.sroa.4.0..sroa_idx3385 = getelementptr inbounds nuw i8, ptr %i.aw, i64 344
  store i64 %i.je, ptr %.sroa.4.0..sroa_idx3385, align 8, !noalias !15
  %.sroa.6.0..sroa_idx3387 = getelementptr inbounds nuw i8, ptr %i.aw, i64 352
  store ptr %.sroa.6.i264.sroa.0.0, ptr %.sroa.6.0..sroa_idx3387, align 8, !noalias !15
  %.sroa.8.0..sroa_idx3390 = getelementptr inbounds nuw i8, ptr %i.aw, i64 360
  store i64 %.sroa.6.i264.sroa.4.0, ptr %.sroa.8.0..sroa_idx3390, align 8, !noalias !15
  %.sroa.8.sroa.5.0..sroa.8.0..sroa_idx3390.sroa_idx = getelementptr inbounds nuw i8, ptr %i.aw, i64 368
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(344) %.sroa.8.sroa.5.0..sroa.8.0..sroa_idx3390.sroa_idx, ptr noundef nonnull align 8 dereferenceable(344) %.sroa.8.sroa.5, i64 344, i1 false), !noalias !15
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.8.sroa.5)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.av), !noalias !48348
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(712) %i.av, ptr noundef nonnull readonly align 8 dereferenceable(712) %i.ec, i64 712, i1 false), !noalias !48353
  call void @_ZN12clap_builder7builder7command7Command19subcommand_internal17hcafa007f0dac0939E(ptr noalias noundef nonnull sret([712 x i8]) align 8 captures(address) dereferenceable(712) %i.ed, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(712) %i.av, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(712) %i.aw)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.av), !noalias !48348
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aw)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ec)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dn)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dm)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(712) %i.dm, ptr noundef nonnull align 8 dereferenceable(712) %i.ed, i64 712, i1 false)
  %.sroa.91307.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.dl, i64 72
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dl)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.91307.0..sroa_idx, i8 0, i64 16, i1 false)
  %.sroa.111309.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.dl, i64 96
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.111309.0..sroa_idx, i8 0, i64 16, i1 false)
  %.sroa.161314.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.dl, i64 144
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.161314.0..sroa_idx, i8 0, i64 16, i1 false)
  %.sroa.181316.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.dl, i64 168
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.181316.0..sroa_idx, i8 0, i64 16, i1 false)
  %.sroa.201318.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.dl, i64 192
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.201318.0..sroa_idx, i8 0, i64 16, i1 false)
  %.sroa.251323.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.dl, i64 240
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.251323.0..sroa_idx, i8 0, i64 16, i1 false)
  store i64 0, ptr %i.dl, align 8
  %.sroa.41301.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.dl, i64 16
  store i64 1, ptr %.sroa.41301.0..sroa_idx, align 8
  %.sroa.51302.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.dl, i64 24
  store i64 0, ptr %.sroa.51302.0..sroa_idx, align 8
  %.sroa.61303.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.dl, i64 32
  store i64 5, ptr %.sroa.61303.0..sroa_idx, align 8
  %.sroa.71305.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.dl, i64 56
  store i64 0, ptr %.sroa.71305.0..sroa_idx, align 8
  %.sroa.81306.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.dl, i64 64
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.81306.0..sroa_idx, align 8
  %.sroa.101308.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.dl, i64 88
  store ptr inttoptr (i64 4 to ptr), ptr %.sroa.101308.0..sroa_idx, align 8
  %.sroa.121310.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.dl, i64 112
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.121310.0..sroa_idx, align 8
  %.sroa.131311.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.dl, i64 120
  %.sroa.151313.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.dl, i64 136
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.131311.0..sroa_idx, i8 0, i64 16, i1 false)
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.151313.0..sroa_idx, align 8
  %.sroa.171315.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.dl, i64 160
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.171315.0..sroa_idx, align 8
  %.sroa.191317.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.dl, i64 184
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.191317.0..sroa_idx, align 8
  %.sroa.211319.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.dl, i64 208 ; 2 uses
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.211319.0..sroa_idx, align 8
  %.sroa.221320.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.dl, i64 216 ; 3 uses
  %.sroa.241322.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.dl, i64 232
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.221320.0..sroa_idx, i8 0, i64 16, i1 false)
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.241322.0..sroa_idx, align 8
  %.sroa.261324.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.dl, i64 256
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.261324.0..sroa_idx, align 8
  %.sroa.271325.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.dl, i64 264
  store i64 0, ptr %.sroa.271325.0..sroa_idx, align 8
  %.sroa.281326.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.dl, i64 272
  store i64 -9223372036854775808, ptr %.sroa.281326.0..sroa_idx, align 8
  %.sroa.291328.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.dl, i64 296
  store i64 -9223372036854775808, ptr %.sroa.291328.0..sroa_idx, align 8
  %.sroa.301330.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.dl, i64 320
  store i64 -9223372036854775808, ptr %.sroa.301330.0..sroa_idx, align 8
  %.sroa.311332.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.dl, i64 344
  store i64 -9223372036854775808, ptr %.sroa.311332.0..sroa_idx, align 8
  %.sroa.321334.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.dl, i64 368
  store i64 -9223372036854775808, ptr %.sroa.321334.0..sroa_idx, align 8
  %.sroa.331336.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.dl, i64 392
  store i64 -9223372036854775808, ptr %.sroa.331336.0..sroa_idx, align 8
  %.sroa.341338.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.dl, i64 416
  store i64 -9223372036854775808, ptr %.sroa.341338.0..sroa_idx, align 8
  %.sroa.351340.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.dl, i64 440
  store i64 -9223372036854775808, ptr %.sroa.351340.0..sroa_idx, align 8
  %.sroa.361342.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.dl, i64 464
  store i64 -9223372036854775808, ptr %.sroa.361342.0..sroa_idx, align 8
  %.sroa.371344.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.dl, i64 488
  store i64 -9223372036854775808, ptr %.sroa.371344.0..sroa_idx, align 8
  %.sroa.381346.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.dl, i64 512
  store i64 -9223372036854775808, ptr %.sroa.381346.0..sroa_idx, align 8
  %.sroa.391348.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.dl, i64 536
  store i64 -9223372036854775808, ptr %.sroa.391348.0..sroa_idx, align 8
  %.sroa.401350.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.dl, i64 560
  store ptr @2232, ptr %.sroa.401350.0..sroa_idx, align 8
  %.sroa.411351.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.dl, i64 568
  store i64 16, ptr %.sroa.411351.0..sroa_idx, align 8
  %.sroa.421352.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.dl, i64 576
  store ptr null, ptr %.sroa.421352.0..sroa_idx, align 8
  %.sroa.431354.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.dl, i64 592
  store ptr null, ptr %.sroa.431354.0..sroa_idx, align 8
  %.sroa.441356.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.dl, i64 608
  store ptr null, ptr %.sroa.441356.0..sroa_idx, align 8
  %.sroa.451358.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.dl, i64 624
  store ptr null, ptr %.sroa.451358.0..sroa_idx, align 8
  %.sroa.461360.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.dl, i64 640
  store ptr null, ptr %.sroa.461360.0..sroa_idx, align 8
  %.sroa.471362.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.dl, i64 656
  store ptr null, ptr %.sroa.471362.0..sroa_idx, align 8
  %.sroa.481364.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.dl, i64 672
  store ptr null, ptr %.sroa.481364.0..sroa_idx, align 8
  %.sroa.491366.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.dl, i64 688
  store ptr null, ptr %.sroa.491366.0..sroa_idx, align 8
  %.sroa.501367.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.dl, i64 696
  store i32 1114112, ptr %.sroa.501367.0..sroa_idx, align 8
  %.sroa.511368.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.dl, i64 700
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(9) %.sroa.511368.0..sroa_idx, i8 0, i64 9, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dk)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.111392)
  call void @llvm.experimental.noalias.scope.decl(metadata !48354)
  call void @llvm.experimental.noalias.scope.decl(metadata !48357)
  %i.jh = getelementptr inbounds nuw i8, ptr %i.au, i64 16 ; 4 uses
  %i.ji = getelementptr inbounds nuw i8, ptr %i.au, i64 8 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.483144)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.au), !noalias !48359
  store i64 0, ptr %i.au, align 8, !noalias !48361
  store ptr inttoptr (i64 8 to ptr), ptr %i.ji, align 8, !noalias !48361
  %.sroa.01378.sroa.12.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.au, i64 24 ; 5 uses
  %.sroa.01378.sroa.13.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.au, i64 32 ; 6 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.jh, i8 0, i64 16, i1 false)
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.01378.sroa.13.0..sroa_idx, align 8, !noalias !48361
  %.sroa.01378.sroa.14.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.au, i64 40 ; 6 uses
  %.sroa.01378.sroa.16.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.au, i64 56 ; 6 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.01378.sroa.14.0..sroa_idx, i8 0, i64 16, i1 false)
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.01378.sroa.16.0..sroa_idx, align 8, !noalias !48361
  %.sroa.01378.sroa.17.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.au, i64 64 ; 6 uses
  store i64 0, ptr %.sroa.01378.sroa.17.0..sroa_idx, align 8, !noalias !48361
  %.sroa.01378.sroa.18.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.au, i64 72 ; 6 uses
  store ptr @2233, ptr %.sroa.01378.sroa.18.0..sroa_idx, align 8, !noalias !48361
  %.sroa.01378.sroa.19.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.au, i64 80 ; 6 uses
  store i64 15, ptr %.sroa.01378.sroa.19.0..sroa_idx, align 8, !noalias !48361
  %.sroa.01378.sroa.20.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.au, i64 88 ; 6 uses
  store i8 0, ptr %.sroa.01378.sroa.20.0..sroa_idx, align 8, !noalias !48361
  %.sroa.101379.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.au, i64 89 ; 6 uses
  store i8 1, ptr %.sroa.101379.0..sroa_idx, align 1, !noalias !48361
  %.sroa.111392.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.au, i64 90 ; 5 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !48362)
  invoke void @"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$8grow_one17h90488284a11b96fbE"(ptr noalias noundef nonnull align 8 dereferenceable(96) %i.au, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @187)
          to label %bb.bz unwind label %bb.kn, !noalias !48365

bb.bz:                                            ; preds = %bb.by
  %i.jj = load ptr, ptr %i.ji, align 8, !alias.scope !48367, !noalias !48371, !nonnull !15, !noundef !15 ; 2 uses
  store ptr @2234, ptr %i.jj, align 8, !noalias !48374
  %i.jk = getelementptr inbounds nuw i8, ptr %i.jj, i64 8
  store i64 10, ptr %i.jk, align 8, !noalias !48375
  %.sroa.03081.0.copyload = load i64, ptr %i.au, align 8, !alias.scope !48376, !noalias !48377 ; 3 uses
  %.sroa.123084.0.copyload = load ptr, ptr %i.ji, align 8, !alias.scope !48376, !noalias !48377 ; 2 uses
  %.sroa.183094.0.copyload = load i64, ptr %.sroa.01378.sroa.12.0..sroa_idx, align 8, !alias.scope !48376, !noalias !48377
  %.sroa.213099.0.copyload = load ptr, ptr %.sroa.01378.sroa.13.0..sroa_idx, align 8, !alias.scope !48376, !noalias !48377
  %.sroa.303114.0.copyload = load ptr, ptr %.sroa.01378.sroa.16.0..sroa_idx, align 8, !alias.scope !48376, !noalias !48377
  %.sroa.333119.0.copyload = load i64, ptr %.sroa.01378.sroa.17.0..sroa_idx, align 8, !alias.scope !48376, !noalias !48377
  %.sroa.363124.0.copyload = load ptr, ptr %.sroa.01378.sroa.18.0..sroa_idx, align 8, !alias.scope !48376, !noalias !48377
  %.sroa.393129.0.copyload = load i64, ptr %.sroa.01378.sroa.19.0..sroa_idx, align 8, !alias.scope !48376, !noalias !48377
  %.sroa.423134.0.copyload = load i8, ptr %.sroa.01378.sroa.20.0..sroa_idx, align 8, !alias.scope !48376, !noalias !48377
  %.sroa.453139.0.copyload = load i8, ptr %.sroa.101379.0..sroa_idx, align 1, !alias.scope !48376, !noalias !48377
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(6) %.sroa.483144, ptr noundef nonnull align 2 dereferenceable(6) %.sroa.111392.0..sroa_idx, i64 6, i1 false), !alias.scope !48376, !noalias !48377
  %i.jl = load <2 x i64>, ptr %.sroa.01378.sroa.14.0..sroa_idx, align 8, !alias.scope !48376, !noalias !48377
  call void @llvm.lifetime.end.p0(ptr nonnull %i.au), !noalias !48359
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(6) %.sroa.111392, ptr noundef nonnull align 2 dereferenceable(6) %.sroa.483144, i64 6, i1 false), !noalias !48361
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.483144)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.483144)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.au), !noalias !48359
  store i64 %.sroa.03081.0.copyload, ptr %i.au, align 8, !noalias !48361
  store ptr %.sroa.123084.0.copyload, ptr %i.ji, align 8, !noalias !48361
  store i64 1, ptr %i.jh, align 8, !noalias !48361
  store i64 %.sroa.183094.0.copyload, ptr %.sroa.01378.sroa.12.0..sroa_idx, align 8, !noalias !48361
  store ptr %.sroa.213099.0.copyload, ptr %.sroa.01378.sroa.13.0..sroa_idx, align 8, !noalias !48361
  store <2 x i64> %i.jl, ptr %.sroa.01378.sroa.14.0..sroa_idx, align 8, !noalias !48361
  store ptr %.sroa.303114.0.copyload, ptr %.sroa.01378.sroa.16.0..sroa_idx, align 8, !noalias !48361
  store i64 %.sroa.333119.0.copyload, ptr %.sroa.01378.sroa.17.0..sroa_idx, align 8, !noalias !48361
  store ptr %.sroa.363124.0.copyload, ptr %.sroa.01378.sroa.18.0..sroa_idx, align 8, !noalias !48361
  store i64 %.sroa.393129.0.copyload, ptr %.sroa.01378.sroa.19.0..sroa_idx, align 8, !noalias !48361
  store i8 %.sroa.423134.0.copyload, ptr %.sroa.01378.sroa.20.0..sroa_idx, align 8, !noalias !48361
  store i8 %.sroa.453139.0.copyload, ptr %.sroa.101379.0..sroa_idx, align 1, !noalias !48361
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(6) %.sroa.111392.0..sroa_idx, ptr noundef nonnull align 2 dereferenceable(6) %.sroa.111392, i64 6, i1 false), !noalias !48361
  call void @llvm.experimental.noalias.scope.decl(metadata !48378)
  %i.jm = icmp eq i64 %.sroa.03081.0.copyload, 1
  br i1 %i.jm, label %bb.ca, label %bb.cb

bb.ca:                                            ; preds = %bb.bz
  invoke void @"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$8grow_one17h90488284a11b96fbE"(ptr noalias noundef nonnull align 8 dereferenceable(96) %i.au, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @187)
          to label %._crit_edge3356 unwind label %bb.kn, !noalias !48380

._crit_edge3356:                                  ; preds = %bb.ca
  %.pre3357 = load ptr, ptr %i.ji, align 8, !alias.scope !48367, !noalias !48381
  %.sroa.03081.0.copyload3082.pre = load i64, ptr %i.au, align 8, !alias.scope !48382, !noalias !48377
  br label %bb.cb

bb.cb:                                            ; preds = %._crit_edge3356, %bb.bz
  %.sroa.03081.0.copyload3082 = phi i64 [ %.sroa.03081.0.copyload3082.pre, %._crit_edge3356 ], [ %.sroa.03081.0.copyload, %bb.bz ] ; 3 uses
  %i.jn = phi ptr [ %.pre3357, %._crit_edge3356 ], [ %.sroa.123084.0.copyload, %bb.bz ] ; 4 uses
  %i.jo = getelementptr inbounds nuw i8, ptr %i.jn, i64 16
  store ptr @2234, ptr %i.jo, align 8, !noalias !48383
  %i.jp = getelementptr inbounds nuw i8, ptr %i.jn, i64 24
  store i64 10, ptr %i.jp, align 8, !noalias !48384
  %.sroa.183094.0.copyload3096 = load i64, ptr %.sroa.01378.sroa.12.0..sroa_idx, align 8, !alias.scope !48382, !noalias !48377 ; 2 uses
  %.sroa.213099.0.copyload3101 = load ptr, ptr %.sroa.01378.sroa.13.0..sroa_idx, align 8, !alias.scope !48382, !noalias !48377
  %.sroa.303114.0.copyload3116 = load ptr, ptr %.sroa.01378.sroa.16.0..sroa_idx, align 8, !alias.scope !48382, !noalias !48377
  %.sroa.333119.0.copyload3121 = load i64, ptr %.sroa.01378.sroa.17.0..sroa_idx, align 8, !alias.scope !48382, !noalias !48377
  %.sroa.363124.0.copyload3126 = load ptr, ptr %.sroa.01378.sroa.18.0..sroa_idx, align 8, !alias.scope !48382, !noalias !48377
  %.sroa.393129.0.copyload3131 = load i64, ptr %.sroa.01378.sroa.19.0..sroa_idx, align 8, !alias.scope !48382, !noalias !48377
  %.sroa.423134.0.copyload3136 = load i8, ptr %.sroa.01378.sroa.20.0..sroa_idx, align 8, !alias.scope !48382, !noalias !48377
  %.sroa.453139.0.copyload3141 = load i8, ptr %.sroa.101379.0..sroa_idx, align 1, !alias.scope !48382, !noalias !48377
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(6) %.sroa.483144, ptr noundef nonnull align 2 dereferenceable(6) %.sroa.111392.0..sroa_idx, i64 6, i1 false), !alias.scope !48382, !noalias !48377
  %i.jq = load <2 x i64>, ptr %.sroa.01378.sroa.14.0..sroa_idx, align 8, !alias.scope !48382, !noalias !48377
  call void @llvm.lifetime.end.p0(ptr nonnull %i.au), !noalias !48359
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(6) %.sroa.111392, ptr noundef nonnull align 2 dereferenceable(6) %.sroa.483144, i64 6, i1 false), !noalias !48361
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.483144)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.483144)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.au), !noalias !48359
  store i64 %.sroa.03081.0.copyload3082, ptr %i.au, align 8, !noalias !48361
  store ptr %i.jn, ptr %i.ji, align 8, !noalias !48361
  store i64 2, ptr %i.jh, align 8, !noalias !48361
  store i64 %.sroa.183094.0.copyload3096, ptr %.sroa.01378.sroa.12.0..sroa_idx, align 8, !noalias !48361
  store ptr %.sroa.213099.0.copyload3101, ptr %.sroa.01378.sroa.13.0..sroa_idx, align 8, !noalias !48361
  store <2 x i64> %i.jq, ptr %.sroa.01378.sroa.14.0..sroa_idx, align 8, !noalias !48361
  store ptr %.sroa.303114.0.copyload3116, ptr %.sroa.01378.sroa.16.0..sroa_idx, align 8, !noalias !48361
  store i64 %.sroa.333119.0.copyload3121, ptr %.sroa.01378.sroa.17.0..sroa_idx, align 8, !noalias !48361
  store ptr %.sroa.363124.0.copyload3126, ptr %.sroa.01378.sroa.18.0..sroa_idx, align 8, !noalias !48361
  store i64 %.sroa.393129.0.copyload3131, ptr %.sroa.01378.sroa.19.0..sroa_idx, align 8, !noalias !48361
  store i8 %.sroa.423134.0.copyload3136, ptr %.sroa.01378.sroa.20.0..sroa_idx, align 8, !noalias !48361
  store i8 %.sroa.453139.0.copyload3141, ptr %.sroa.101379.0..sroa_idx, align 1, !noalias !48361
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(6) %.sroa.111392.0..sroa_idx, ptr noundef nonnull align 2 dereferenceable(6) %.sroa.111392, i64 6, i1 false), !noalias !48361
  call void @llvm.experimental.noalias.scope.decl(metadata !48385)
  %i.jr = icmp eq i64 %.sroa.03081.0.copyload3082, 2
  br i1 %i.jr, label %bb.cc, label %bb.cd

bb.cc:                                            ; preds = %bb.cb
  invoke void @"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$8grow_one17h90488284a11b96fbE"(ptr noalias noundef nonnull align 8 dereferenceable(96) %i.au, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @187)
          to label %._crit_edge3359 unwind label %bb.kn, !noalias !48387

._crit_edge3359:                                  ; preds = %bb.cc
  %.pre3360 = load ptr, ptr %i.ji, align 8, !alias.scope !48367, !noalias !48388
  %.sroa.03081.0.copyload3083.pre = load i64, ptr %i.au, align 8, !alias.scope !48389, !noalias !48377
  %.sroa.183094.0.copyload3098.pre = load i64, ptr %.sroa.01378.sroa.12.0..sroa_idx, align 8, !alias.scope !48389, !noalias !48377
  br label %bb.cd

bb.cd:                                            ; preds = %._crit_edge3359, %bb.cb
  %.sroa.183094.0.copyload3098 = phi i64 [ %.sroa.183094.0.copyload3098.pre, %._crit_edge3359 ], [ %.sroa.183094.0.copyload3096, %bb.cb ]
  %.sroa.03081.0.copyload3083 = phi i64 [ %.sroa.03081.0.copyload3083.pre, %._crit_edge3359 ], [ %.sroa.03081.0.copyload3082, %bb.cb ]
  %i.js = phi ptr [ %.pre3360, %._crit_edge3359 ], [ %i.jn, %bb.cb ] ; 3 uses
  %i.jt = getelementptr inbounds nuw i8, ptr %i.js, i64 32
  store ptr @2234, ptr %i.jt, align 8, !noalias !48390
  %i.ju = getelementptr inbounds nuw i8, ptr %i.js, i64 40
  store i64 10, ptr %i.ju, align 8, !noalias !48391
  store i64 3, ptr %i.jh, align 8, !alias.scope !48367, !noalias !48388
  %.sroa.213099.0.copyload3103 = load ptr, ptr %.sroa.01378.sroa.13.0..sroa_idx, align 8, !alias.scope !48389, !noalias !48377
  %.sroa.303114.0.copyload3118 = load ptr, ptr %.sroa.01378.sroa.16.0..sroa_idx, align 8, !alias.scope !48389, !noalias !48377
  %.sroa.333119.0.copyload3123 = load i64, ptr %.sroa.01378.sroa.17.0..sroa_idx, align 8, !alias.scope !48389, !noalias !48377
  %.sroa.363124.0.copyload3128 = load ptr, ptr %.sroa.01378.sroa.18.0..sroa_idx, align 8, !alias.scope !48389, !noalias !48377
  %.sroa.393129.0.copyload3133 = load i64, ptr %.sroa.01378.sroa.19.0..sroa_idx, align 8, !alias.scope !48389, !noalias !48377
  %.sroa.423134.0.copyload3138 = load i8, ptr %.sroa.01378.sroa.20.0..sroa_idx, align 8, !alias.scope !48389, !noalias !48377
  %.sroa.453139.0.copyload3143 = load i8, ptr %.sroa.101379.0..sroa_idx, align 1, !alias.scope !48389, !noalias !48377
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(6) %.sroa.483144, ptr noundef nonnull align 2 dereferenceable(6) %.sroa.111392.0..sroa_idx, i64 6, i1 false), !alias.scope !48389, !noalias !48377
  %.sroa.01378.sroa.10.0..sroa_idx2737 = getelementptr inbounds nuw i8, ptr %i.dk, i64 8
  %.sroa.01378.sroa.11.0..sroa_idx2749 = getelementptr inbounds nuw i8, ptr %i.dk, i64 16
  %.sroa.01378.sroa.12.0..sroa_idx2761 = getelementptr inbounds nuw i8, ptr %i.dk, i64 24
  %.sroa.01378.sroa.13.0..sroa_idx2773 = getelementptr inbounds nuw i8, ptr %i.dk, i64 32
  %.sroa.01378.sroa.14.0..sroa_idx2785 = getelementptr inbounds nuw i8, ptr %i.dk, i64 40
  %i.jv = load <2 x i64>, ptr %.sroa.01378.sroa.14.0..sroa_idx, align 8, !alias.scope !48389, !noalias !48377
  call void @llvm.lifetime.end.p0(ptr nonnull %i.au), !noalias !48359
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(6) %.sroa.111392, ptr noundef nonnull align 2 dereferenceable(6) %.sroa.483144, i64 6, i1 false), !noalias !48361
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.483144)
  store i64 %.sroa.03081.0.copyload3083, ptr %i.dk, align 8, !alias.scope !48392, !noalias !48393
  store ptr %i.js, ptr %.sroa.01378.sroa.10.0..sroa_idx2737, align 8, !alias.scope !48392, !noalias !48393
  store i64 3, ptr %.sroa.01378.sroa.11.0..sroa_idx2749, align 8, !alias.scope !48392, !noalias !48393
  store i64 %.sroa.183094.0.copyload3098, ptr %.sroa.01378.sroa.12.0..sroa_idx2761, align 8, !alias.scope !48392, !noalias !48393
  store ptr %.sroa.213099.0.copyload3103, ptr %.sroa.01378.sroa.13.0..sroa_idx2773, align 8, !alias.scope !48392, !noalias !48393
  store <2 x i64> %i.jv, ptr %.sroa.01378.sroa.14.0..sroa_idx2785, align 8, !alias.scope !48392, !noalias !48393
  %.sroa.01378.sroa.16.0..sroa_idx2809 = getelementptr inbounds nuw i8, ptr %i.dk, i64 56
  store ptr %.sroa.303114.0.copyload3118, ptr %.sroa.01378.sroa.16.0..sroa_idx2809, align 8, !alias.scope !48392, !noalias !48393
  %.sroa.01378.sroa.17.0..sroa_idx2821 = getelementptr inbounds nuw i8, ptr %i.dk, i64 64
  store i64 %.sroa.333119.0.copyload3123, ptr %.sroa.01378.sroa.17.0..sroa_idx2821, align 8, !alias.scope !48392, !noalias !48393
  %.sroa.01378.sroa.18.0..sroa_idx2833 = getelementptr inbounds nuw i8, ptr %i.dk, i64 72
  store ptr %.sroa.363124.0.copyload3128, ptr %.sroa.01378.sroa.18.0..sroa_idx2833, align 8, !alias.scope !48392, !noalias !48393
  %.sroa.01378.sroa.19.0..sroa_idx2845 = getelementptr inbounds nuw i8, ptr %i.dk, i64 80
  store i64 %.sroa.393129.0.copyload3133, ptr %.sroa.01378.sroa.19.0..sroa_idx2845, align 8, !alias.scope !48392, !noalias !48393
  %.sroa.01378.sroa.20.0..sroa_idx2857 = getelementptr inbounds nuw i8, ptr %i.dk, i64 88
  store i8 %.sroa.423134.0.copyload3138, ptr %.sroa.01378.sroa.20.0..sroa_idx2857, align 8, !alias.scope !48392, !noalias !48393
  %.sroa.101379.0..sroa_idx1390 = getelementptr inbounds nuw i8, ptr %i.dk, i64 89
  store i8 %.sroa.453139.0.copyload3143, ptr %.sroa.101379.0..sroa_idx1390, align 1, !alias.scope !48392, !noalias !48393
  %.sroa.111392.0..sroa_idx1398 = getelementptr inbounds nuw i8, ptr %i.dk, i64 90
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(6) %.sroa.111392.0..sroa_idx1398, ptr noundef nonnull align 2 dereferenceable(6) %.sroa.111392, i64 6, i1 false), !alias.scope !48392, !noalias !48393
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.111392)
  %i.jw = getelementptr inbounds nuw i8, ptr %i.dl, i64 200 ; 2 uses
  %i.jx = load i64, ptr %.sroa.221320.0..sroa_idx, align 8, !alias.scope !48394, !noalias !48399, !noundef !15 ; 3 uses
  %i.jy = load i64, ptr %i.jw, align 8, !range !10, !alias.scope !48394, !noalias !48399, !noundef !15
  %i.jz = icmp eq i64 %i.jx, %i.jy
  br i1 %i.jz, label %bb.ce, label %bb.ch

bb.ce:                                            ; preds = %bb.cd
  invoke void @"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$8grow_one17hd1b6aa6ee33cf8f3E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.jw, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @185)
          to label %bb.ch unwind label %.body.i303, !noalias !48399

.body.i303:                                       ; preds = %bb.ce
  %i.ka = landingpad { ptr, i32 }
          cleanup
  call fastcc void @"_ZN4core3ptr63drop_in_place$LT$clap_builder..builder..arg_group..ArgGroup$GT$17hde4441bca3fe8d0bE"(ptr noalias noundef nonnull readonly align 8 dereferenceable(96) %i.dk) #44, !noalias !48403
  invoke fastcc void @"_ZN4core3ptr60drop_in_place$LT$clap_builder..builder..command..Command$GT$17h09f9fbbb9fff9641E"(ptr noalias noundef nonnull align 8 dereferenceable(712) %i.dl) #44
          to label %.thread3256 unwind label %bb.cf, !noalias !48404

bb.cf:                                            ; preds = %.body.i303
  %i.kb = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #47, !noalias !48404
  unreachable

bb.cg:                                            ; preds = %bb.cm
  %i.kc = landingpad { ptr, i32 }
          cleanup
  br label %bb.km

bb.ch:                                            ; preds = %bb.cd, %bb.ce
  %i.kd = load ptr, ptr %.sroa.211319.0..sroa_idx, align 8, !alias.scope !48394, !noalias !48399, !nonnull !15, !noundef !15
  %i.ke = getelementptr inbounds nuw [96 x i8], ptr %i.kd, i64 %i.jx
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %i.ke, ptr noundef nonnull readonly align 8 dereferenceable(96) %i.dk, i64 96, i1 false), !noalias !48403
  %i.kf = add i64 %i.jx, 1
  store i64 %i.kf, ptr %.sroa.221320.0..sroa_idx, align 8, !alias.scope !48394, !noalias !48399
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dj)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(712) %i.dj, ptr noundef nonnull align 8 dereferenceable(712) %i.dl, i64 712, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dk)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dl)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dh)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dg)
  %.sroa.101420.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.at, i64 120
  call void @llvm.lifetime.start.p0(ptr nonnull %i.at), !noalias !48405
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.101420.0..sroa_idx, i8 0, i64 16, i1 false), !noalias !15
  %.sroa.121422.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.at, i64 144
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.121422.0..sroa_idx, i8 0, i64 16, i1 false), !noalias !15
  %.sroa.141424.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.at, i64 168
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.141424.0..sroa_idx, i8 0, i64 16, i1 false), !noalias !15
  %.sroa.161426.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.at, i64 192
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.161426.0..sroa_idx, i8 0, i64 16, i1 false), !noalias !15
  %.sroa.181428.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.at, i64 216
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.181428.0..sroa_idx, i8 0, i64 16, i1 false), !noalias !15
  %.sroa.201430.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.at, i64 240
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.201430.0..sroa_idx, i8 0, i64 16, i1 false), !noalias !15
  %.sroa.221432.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.at, i64 264
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.221432.0..sroa_idx, i8 0, i64 16, i1 false), !noalias !15
  %.sroa.261436.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.at, i64 312
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.261436.0..sroa_idx, i8 0, i64 16, i1 false), !noalias !15
  %.sroa.281438.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.at, i64 336
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.281438.0..sroa_idx, i8 0, i64 16, i1 false), !noalias !15
  %.sroa.321442.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.at, i64 384
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.321442.0..sroa_idx, i8 0, i64 16, i1 false), !noalias !15
  %.sroa.341444.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.at, i64 408
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.341444.0..sroa_idx, i8 0, i64 16, i1 false), !noalias !15
  %.sroa.381448.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.at, i64 456
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.381448.0..sroa_idx, i8 0, i64 16, i1 false), !noalias !15
  %.sroa.241434.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.at, i64 288
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.241434.0..sroa_idx, i8 0, i64 16, i1 false), !noalias !15
  %.sroa.301440.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.at, i64 360 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.301440.0..sroa_idx, i8 0, i64 16, i1 false), !noalias !15
  %.sroa.361446.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.at, i64 432
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.361446.0..sroa_idx, i8 0, i64 16, i1 false), !noalias !15
  store i64 0, ptr %i.at, align 8, !noalias !48410
  %.sroa.41410.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.at, i64 16
  store i64 0, ptr %.sroa.41410.0..sroa_idx, align 8, !noalias !48410
  %.sroa.51412.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.at, i64 40
  store i64 0, ptr %.sroa.51412.0..sroa_idx, align 8, !noalias !48410
  %.sroa.61414.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.at, i64 56
  store i64 0, ptr %.sroa.61414.0..sroa_idx, align 8, !noalias !48410
  %.sroa.71416.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.at, i64 80
  store i64 5, ptr %.sroa.71416.0..sroa_idx, align 8, !noalias !48410
  %.sroa.81418.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.at, i64 104
  store i64 0, ptr %.sroa.81418.0..sroa_idx, align 8, !noalias !48410
  %.sroa.91419.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.at, i64 112
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.91419.0..sroa_idx, align 8, !noalias !48410
  %.sroa.111421.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.at, i64 136
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.111421.0..sroa_idx, align 8, !noalias !48410
  %.sroa.131423.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.at, i64 160
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.131423.0..sroa_idx, align 8, !noalias !48410
  %.sroa.151425.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.at, i64 184
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.151425.0..sroa_idx, align 8, !noalias !48410
  %.sroa.171427.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.at, i64 208
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.171427.0..sroa_idx, align 8, !noalias !48410
  %.sroa.191429.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.at, i64 232
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.191429.0..sroa_idx, align 8, !noalias !48410
  %.sroa.211431.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.at, i64 256
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.211431.0..sroa_idx, align 8, !noalias !48410
  %.sroa.231433.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.at, i64 280
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.231433.0..sroa_idx, align 8, !noalias !48410
  %.sroa.251435.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.at, i64 304
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.251435.0..sroa_idx, align 8, !noalias !48410
  %.sroa.271437.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.at, i64 328
  store ptr inttoptr (i64 4 to ptr), ptr %.sroa.271437.0..sroa_idx, align 8, !noalias !48410
  %.sroa.291439.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.at, i64 352 ; 2 uses
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.291439.0..sroa_idx, align 8, !noalias !48410
  %.sroa.311441.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.at, i64 376
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.311441.0..sroa_idx, align 8, !noalias !48410
  %.sroa.331443.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.at, i64 400
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.331443.0..sroa_idx, align 8, !noalias !48410
  %.sroa.351445.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.at, i64 424
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.351445.0..sroa_idx, align 8, !noalias !48410
  %.sroa.371447.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.at, i64 448
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.371447.0..sroa_idx, align 8, !noalias !48410
  %.sroa.391449.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.at, i64 472
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.391449.0..sroa_idx, align 8, !noalias !48410
  %.sroa.401450.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.at, i64 480
  store i64 0, ptr %.sroa.401450.0..sroa_idx, align 8, !noalias !48410
  %.sroa.411451.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.at, i64 488
  store i64 -9223372036854775808, ptr %.sroa.411451.0..sroa_idx, align 8, !noalias !48410
  %.sroa.421453.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.at, i64 512
  store i64 -9223372036854775808, ptr %.sroa.421453.0..sroa_idx, align 8, !noalias !48410
  %.sroa.431455.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.at, i64 552
  store i64 -9223372036854775807, ptr %.sroa.431455.0..sroa_idx, align 8, !noalias !48410
  %.sroa.441457.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.at, i64 576
  store ptr @2234, ptr %.sroa.441457.0..sroa_idx, align 8, !noalias !48410
  %.sroa.451458.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.at, i64 584
  store i64 10, ptr %.sroa.451458.0..sroa_idx, align 8, !noalias !48410
  %.sroa.461459.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.at, i64 592
  store ptr null, ptr %.sroa.461459.0..sroa_idx, align 8, !noalias !48410
  %.sroa.471461.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.at, i64 608
  store ptr null, ptr %.sroa.471461.0..sroa_idx, align 8, !noalias !48410
  %.sroa.481463.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.at, i64 624
  store i32 1114112, ptr %.sroa.481463.0..sroa_idx, align 8, !noalias !48410
  %.sroa.491464.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.at, i64 628
  store i32 1114112, ptr %.sroa.491464.0..sroa_idx, align 4, !noalias !48410
  %.sroa.501465.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.at, i64 632
  store i32 0, ptr %.sroa.501465.0..sroa_idx, align 8, !noalias !48410
  %.sroa.511466.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.at, i64 636 ; 2 uses
  store i8 9, ptr %.sroa.511466.0..sroa_idx, align 4, !noalias !48410
  call void @llvm.experimental.noalias.scope.decl(metadata !48411)
  call void @llvm.experimental.noalias.scope.decl(metadata !48414)
  call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #45, !noalias !48416
  %i.kg = call noundef align 8 dereferenceable_or_null(16) ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef 16, i64 noundef range(i64 1, 9) 8) #45, !noalias !48416 ; 4 uses
  %i.kh = icmp eq ptr %i.kg, null
  br i1 %i.kh, label %.noexc.i.i.i.i.i.i358, label %bb.cj

bb.ci:                                            ; preds = %.noexc.i.i.i.i.i.i358
  %i.ki = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr52drop_in_place$LT$clap_builder..builder..arg..Arg$GT$17h16854998d472b50cE"(ptr noalias noundef nonnull align 8 dereferenceable(640) %i.at) #44
          to label %bb.km unwind label %bb.cl, !noalias !48434

.noexc.i.i.i.i.i.i358:                            ; preds = %bb.ch
  invoke void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef 8, i64 16, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @1016) #46
          to label %.noexc.i.i360 unwind label %bb.ci, !noalias !48435

.noexc.i.i360:                                    ; preds = %.noexc.i.i.i.i.i.i358
  unreachable

bb.cj:                                            ; preds = %bb.ch
  store ptr @2237, ptr %i.kg, align 8, !noalias !48436
  %i.kj = getelementptr inbounds nuw i8, ptr %i.kg, i64 8
end_hunk_1
begin_hunk_2_@"_ZN71_$LT$meilitool..Command$u20$as$u20$clap_builder..derive..Subcommand$GT$19augment_subcommands17h807101fb9e2439daE":bb.a
  unreachable

bb.ij:                                            ; preds = %bb.ih, %"_ZN123_$LT$I$u20$as$u20$clap_builder..builder..resettable..IntoResettable$LT$clap_builder..builder..styled_str..StyledStr$GT$$GT$15into_resettable17h2e74b16a6467a248E.exit.i899"
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(344) %i.k, ptr noundef nonnull align 8 dereferenceable(344) %.sroa.03418, i64 344, i1 false), !noalias !15
  %.sroa.43419.0..sroa_idx3420 = getelementptr inbounds nuw i8, ptr %i.k, i64 344
  store i64 %i.se, ptr %.sroa.43419.0..sroa_idx3420, align 8, !noalias !15
  %.sroa.63422.0..sroa_idx3423 = getelementptr inbounds nuw i8, ptr %i.k, i64 352
  store ptr %.sroa.6.i898.sroa.0.0, ptr %.sroa.63422.0..sroa_idx3423, align 8, !noalias !15
  %.sroa.83425.0..sroa_idx3426 = getelementptr inbounds nuw i8, ptr %i.k, i64 360
  store i64 %.sroa.6.i898.sroa.4.0, ptr %.sroa.83425.0..sroa_idx3426, align 8, !noalias !15
  %.sroa.83425.sroa.5.0..sroa.83425.0..sroa_idx3426.sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 368
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(344) %.sroa.83425.sroa.5.0..sroa.83425.0..sroa_idx3426.sroa_idx, ptr noundef nonnull align 8 dereferenceable(344) %.sroa.83425.sroa.5, i64 344, i1 false), !noalias !15
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.03418)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.83425.sroa.5)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !49245
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(712) %i.j, ptr noundef nonnull readonly align 8 dereferenceable(712) %i.ce, i64 712, i1 false), !noalias !49250
  call void @_ZN12clap_builder7builder7command7Command19subcommand_internal17hcafa007f0dac0939E(ptr noalias noundef nonnull sret([712 x i8]) align 8 captures(address) dereferenceable(712) %i.bx, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(712) %i.j, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(712) %i.k)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !49245
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ce)
  %.sroa.92117.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bw, i64 72
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bw)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.92117.0..sroa_idx, i8 0, i64 16, i1 false)
  %.sroa.112119.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bw, i64 96
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.112119.0..sroa_idx, i8 0, i64 16, i1 false)
  %.sroa.162124.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bw, i64 144
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.162124.0..sroa_idx, i8 0, i64 16, i1 false)
  %.sroa.182126.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bw, i64 168
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.182126.0..sroa_idx, i8 0, i64 16, i1 false)
  %.sroa.202128.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bw, i64 192
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.202128.0..sroa_idx, i8 0, i64 16, i1 false)
  %.sroa.252133.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bw, i64 240
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.252133.0..sroa_idx, i8 0, i64 16, i1 false)
  store i64 0, ptr %i.bw, align 8
  %.sroa.42111.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bw, i64 16
  store i64 1, ptr %.sroa.42111.0..sroa_idx, align 8
  %.sroa.52112.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bw, i64 24
  store i64 0, ptr %.sroa.52112.0..sroa_idx, align 8
  %.sroa.62113.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bw, i64 32
  store i64 5, ptr %.sroa.62113.0..sroa_idx, align 8
  %.sroa.72115.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bw, i64 56
  store i64 0, ptr %.sroa.72115.0..sroa_idx, align 8
  %.sroa.82116.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bw, i64 64
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.82116.0..sroa_idx, align 8
  %.sroa.102118.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bw, i64 88
  store ptr inttoptr (i64 4 to ptr), ptr %.sroa.102118.0..sroa_idx, align 8
  %.sroa.122120.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bw, i64 112
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.122120.0..sroa_idx, align 8
  %.sroa.132121.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bw, i64 120
  %.sroa.152123.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bw, i64 136
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.132121.0..sroa_idx, i8 0, i64 16, i1 false)
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.152123.0..sroa_idx, align 8
  %.sroa.172125.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bw, i64 160
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.172125.0..sroa_idx, align 8
  %.sroa.192127.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bw, i64 184
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.192127.0..sroa_idx, align 8
  %.sroa.212129.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bw, i64 208 ; 2 uses
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.212129.0..sroa_idx, align 8
  %.sroa.222130.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bw, i64 216 ; 3 uses
  %.sroa.242132.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bw, i64 232
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.222130.0..sroa_idx, i8 0, i64 16, i1 false)
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.242132.0..sroa_idx, align 8
  %.sroa.262134.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bw, i64 256
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.262134.0..sroa_idx, align 8
  %.sroa.272135.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bw, i64 264
  store i64 0, ptr %.sroa.272135.0..sroa_idx, align 8
  %.sroa.282136.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bw, i64 272
  store i64 -9223372036854775808, ptr %.sroa.282136.0..sroa_idx, align 8
  %.sroa.292138.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bw, i64 296
  store i64 -9223372036854775808, ptr %.sroa.292138.0..sroa_idx, align 8
  %.sroa.302140.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bw, i64 320
  store i64 -9223372036854775808, ptr %.sroa.302140.0..sroa_idx, align 8
  %.sroa.312142.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bw, i64 344
  store i64 -9223372036854775808, ptr %.sroa.312142.0..sroa_idx, align 8
  %.sroa.322144.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bw, i64 368
  store i64 -9223372036854775808, ptr %.sroa.322144.0..sroa_idx, align 8
  %.sroa.332146.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bw, i64 392
  store i64 -9223372036854775808, ptr %.sroa.332146.0..sroa_idx, align 8
  %.sroa.342148.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bw, i64 416
  store i64 -9223372036854775808, ptr %.sroa.342148.0..sroa_idx, align 8
  %.sroa.352150.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bw, i64 440
  store i64 -9223372036854775808, ptr %.sroa.352150.0..sroa_idx, align 8
  %.sroa.362152.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bw, i64 464
  store i64 -9223372036854775808, ptr %.sroa.362152.0..sroa_idx, align 8
  %.sroa.372154.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bw, i64 488
  store i64 -9223372036854775808, ptr %.sroa.372154.0..sroa_idx, align 8
  %.sroa.382156.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bw, i64 512
  store i64 -9223372036854775808, ptr %.sroa.382156.0..sroa_idx, align 8
  %.sroa.392158.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bw, i64 536
  store i64 -9223372036854775808, ptr %.sroa.392158.0..sroa_idx, align 8
  %.sroa.402160.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bw, i64 560
  store ptr @2261, ptr %.sroa.402160.0..sroa_idx, align 8
  %.sroa.412161.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bw, i64 568
  store i64 10, ptr %.sroa.412161.0..sroa_idx, align 8
  %.sroa.422162.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bw, i64 576
  store ptr null, ptr %.sroa.422162.0..sroa_idx, align 8
  %.sroa.432164.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bw, i64 592
  store ptr null, ptr %.sroa.432164.0..sroa_idx, align 8
  %.sroa.442166.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bw, i64 608
  store ptr null, ptr %.sroa.442166.0..sroa_idx, align 8
  %.sroa.452168.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bw, i64 624
  store ptr null, ptr %.sroa.452168.0..sroa_idx, align 8
  %.sroa.462170.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bw, i64 640
  store ptr null, ptr %.sroa.462170.0..sroa_idx, align 8
  %.sroa.472172.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bw, i64 656
  store ptr null, ptr %.sroa.472172.0..sroa_idx, align 8
  %.sroa.482174.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bw, i64 672
  store ptr null, ptr %.sroa.482174.0..sroa_idx, align 8
  %.sroa.492176.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bw, i64 688
  store ptr null, ptr %.sroa.492176.0..sroa_idx, align 8
  %.sroa.502177.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bw, i64 696
  store i32 1114112, ptr %.sroa.502177.0..sroa_idx, align 8
  %.sroa.512178.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bw, i64 700
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(9) %.sroa.512178.0..sroa_idx, i8 0, i64 9, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bv)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.92198)
  call void @llvm.experimental.noalias.scope.decl(metadata !49251)
  call void @llvm.experimental.noalias.scope.decl(metadata !49254)
  %i.sh = getelementptr inbounds nuw i8, ptr %i.i, i64 16 ; 3 uses
  %i.si = getelementptr inbounds nuw i8, ptr %i.i, i64 8 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.323229)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !49256
  store i64 0, ptr %i.i, align 8, !noalias !49258
  store ptr inttoptr (i64 8 to ptr), ptr %i.si, align 8, !noalias !49258
  %.sroa.02188.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 24 ; 3 uses
  %.sroa.02188.sroa.11.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 32 ; 4 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.sh, i8 0, i64 16, i1 false)
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.02188.sroa.11.0..sroa_idx, align 8, !noalias !49258
  %.sroa.02188.sroa.12.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 40 ; 4 uses
  %.sroa.02188.sroa.14.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 56 ; 4 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.02188.sroa.12.0..sroa_idx, i8 0, i64 16, i1 false)
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.02188.sroa.14.0..sroa_idx, align 8, !noalias !49258
  %.sroa.02188.sroa.15.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 64 ; 4 uses
  store i64 0, ptr %.sroa.02188.sroa.15.0..sroa_idx, align 8, !noalias !49258
  %.sroa.02188.sroa.16.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 72 ; 4 uses
  store ptr @2262, ptr %.sroa.02188.sroa.16.0..sroa_idx, align 8, !noalias !49258
  %.sroa.02188.sroa.17.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 80 ; 4 uses
  store i64 9, ptr %.sroa.02188.sroa.17.0..sroa_idx, align 8, !noalias !49258
  %.sroa.02188.sroa.18.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 88 ; 4 uses
  store i8 0, ptr %.sroa.02188.sroa.18.0..sroa_idx, align 8, !noalias !49258
  %.sroa.82189.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 89 ; 4 uses
  store i8 1, ptr %.sroa.82189.0..sroa_idx, align 1, !noalias !49258
  %.sroa.92198.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 90 ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !49259)
  invoke void @"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$8grow_one17h90488284a11b96fbE"(ptr noalias noundef nonnull align 8 dereferenceable(96) %i.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @187)
          to label %bb.ik unwind label %bb.kc, !noalias !49262

bb.ik:                                            ; preds = %bb.ij
  %i.sj = load ptr, ptr %i.si, align 8, !alias.scope !49264, !noalias !49268, !nonnull !15, !noundef !15 ; 2 uses
  store ptr @2234, ptr %i.sj, align 8, !noalias !49271
  %i.sk = getelementptr inbounds nuw i8, ptr %i.sj, i64 8
  store i64 10, ptr %i.sk, align 8, !noalias !49272
  %.sroa.03191.0.copyload = load i64, ptr %i.i, align 8, !alias.scope !49273, !noalias !49274 ; 3 uses
  %.sroa.83193.0.copyload = load ptr, ptr %i.si, align 8, !alias.scope !49273, !noalias !49274 ; 2 uses
  %.sroa.123199.0.copyload = load i64, ptr %.sroa.02188.sroa.10.0..sroa_idx, align 8, !alias.scope !49273, !noalias !49274
  %.sroa.143202.0.copyload = load ptr, ptr %.sroa.02188.sroa.11.0..sroa_idx, align 8, !alias.scope !49273, !noalias !49274
  %.sroa.203211.0.copyload = load ptr, ptr %.sroa.02188.sroa.14.0..sroa_idx, align 8, !alias.scope !49273, !noalias !49274
  %.sroa.223214.0.copyload = load i64, ptr %.sroa.02188.sroa.15.0..sroa_idx, align 8, !alias.scope !49273, !noalias !49274
  %.sroa.243217.0.copyload = load ptr, ptr %.sroa.02188.sroa.16.0..sroa_idx, align 8, !alias.scope !49273, !noalias !49274
  %.sroa.263220.0.copyload = load i64, ptr %.sroa.02188.sroa.17.0..sroa_idx, align 8, !alias.scope !49273, !noalias !49274
  %.sroa.283223.0.copyload = load i8, ptr %.sroa.02188.sroa.18.0..sroa_idx, align 8, !alias.scope !49273, !noalias !49274
  %.sroa.303226.0.copyload = load i8, ptr %.sroa.82189.0..sroa_idx, align 1, !alias.scope !49273, !noalias !49274
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(6) %.sroa.323229, ptr noundef nonnull align 2 dereferenceable(6) %.sroa.92198.0..sroa_idx, i64 6, i1 false), !alias.scope !49273, !noalias !49274
  %i.sl = load <2 x i64>, ptr %.sroa.02188.sroa.12.0..sroa_idx, align 8, !alias.scope !49273, !noalias !49274
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !49256
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(6) %.sroa.92198, ptr noundef nonnull align 2 dereferenceable(6) %.sroa.323229, i64 6, i1 false), !noalias !49258
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.323229)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.323229)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !49256
  store i64 %.sroa.03191.0.copyload, ptr %i.i, align 8, !noalias !49258
  store ptr %.sroa.83193.0.copyload, ptr %i.si, align 8, !noalias !49258
  store i64 1, ptr %i.sh, align 8, !noalias !49258
  store i64 %.sroa.123199.0.copyload, ptr %.sroa.02188.sroa.10.0..sroa_idx, align 8, !noalias !49258
  store ptr %.sroa.143202.0.copyload, ptr %.sroa.02188.sroa.11.0..sroa_idx, align 8, !noalias !49258
  store <2 x i64> %i.sl, ptr %.sroa.02188.sroa.12.0..sroa_idx, align 8, !noalias !49258
  store ptr %.sroa.203211.0.copyload, ptr %.sroa.02188.sroa.14.0..sroa_idx, align 8, !noalias !49258
  store i64 %.sroa.223214.0.copyload, ptr %.sroa.02188.sroa.15.0..sroa_idx, align 8, !noalias !49258
  store ptr %.sroa.243217.0.copyload, ptr %.sroa.02188.sroa.16.0..sroa_idx, align 8, !noalias !49258
  store i64 %.sroa.263220.0.copyload, ptr %.sroa.02188.sroa.17.0..sroa_idx, align 8, !noalias !49258
  store i8 %.sroa.283223.0.copyload, ptr %.sroa.02188.sroa.18.0..sroa_idx, align 8, !noalias !49258
  store i8 %.sroa.303226.0.copyload, ptr %.sroa.82189.0..sroa_idx, align 1, !noalias !49258
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(6) %.sroa.92198.0..sroa_idx, ptr noundef nonnull align 2 dereferenceable(6) %.sroa.92198, i64 6, i1 false), !noalias !49258
  call void @llvm.experimental.noalias.scope.decl(metadata !49275)
  %i.sm = icmp eq i64 %.sroa.03191.0.copyload, 1
  br i1 %i.sm, label %bb.il, label %bb.im

bb.il:                                            ; preds = %bb.ik
  invoke void @"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$8grow_one17h90488284a11b96fbE"(ptr noalias noundef nonnull align 8 dereferenceable(96) %i.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @187)
          to label %._crit_edge3363 unwind label %bb.kc, !noalias !49277

._crit_edge3363:                                  ; preds = %bb.il
  %.pre3364 = load ptr, ptr %i.si, align 8, !alias.scope !49264, !noalias !49278
  %.sroa.03191.0.copyload3192.pre = load i64, ptr %i.i, align 8, !alias.scope !49279, !noalias !49274
  br label %bb.im

bb.im:                                            ; preds = %._crit_edge3363, %bb.ik
  %.sroa.03191.0.copyload3192 = phi i64 [ %.sroa.03191.0.copyload3192.pre, %._crit_edge3363 ], [ %.sroa.03191.0.copyload, %bb.ik ]
  %i.sn = phi ptr [ %.pre3364, %._crit_edge3363 ], [ %.sroa.83193.0.copyload, %bb.ik ] ; 3 uses
  %i.so = getelementptr inbounds nuw i8, ptr %i.sn, i64 16
  store ptr @2234, ptr %i.so, align 8, !noalias !49280
  %i.sp = getelementptr inbounds nuw i8, ptr %i.sn, i64 24
  store i64 10, ptr %i.sp, align 8, !noalias !49281
  store i64 2, ptr %i.sh, align 8, !alias.scope !49264, !noalias !49278
  %.sroa.123199.0.copyload3201 = load i64, ptr %.sroa.02188.sroa.10.0..sroa_idx, align 8, !alias.scope !49279, !noalias !49274
  %.sroa.143202.0.copyload3204 = load ptr, ptr %.sroa.02188.sroa.11.0..sroa_idx, align 8, !alias.scope !49279, !noalias !49274
  %.sroa.203211.0.copyload3213 = load ptr, ptr %.sroa.02188.sroa.14.0..sroa_idx, align 8, !alias.scope !49279, !noalias !49274
  %.sroa.223214.0.copyload3216 = load i64, ptr %.sroa.02188.sroa.15.0..sroa_idx, align 8, !alias.scope !49279, !noalias !49274
  %.sroa.243217.0.copyload3219 = load ptr, ptr %.sroa.02188.sroa.16.0..sroa_idx, align 8, !alias.scope !49279, !noalias !49274
  %.sroa.263220.0.copyload3222 = load i64, ptr %.sroa.02188.sroa.17.0..sroa_idx, align 8, !alias.scope !49279, !noalias !49274
  %.sroa.283223.0.copyload3225 = load i8, ptr %.sroa.02188.sroa.18.0..sroa_idx, align 8, !alias.scope !49279, !noalias !49274
  %.sroa.303226.0.copyload3228 = load i8, ptr %.sroa.82189.0..sroa_idx, align 1, !alias.scope !49279, !noalias !49274
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(6) %.sroa.323229, ptr noundef nonnull align 2 dereferenceable(6) %.sroa.92198.0..sroa_idx, i64 6, i1 false), !alias.scope !49279, !noalias !49274
  %.sroa.02188.sroa.8.0..sroa_idx2519 = getelementptr inbounds nuw i8, ptr %i.bv, i64 8
  %.sroa.02188.sroa.9.0..sroa_idx2527 = getelementptr inbounds nuw i8, ptr %i.bv, i64 16
  %.sroa.02188.sroa.10.0..sroa_idx2535 = getelementptr inbounds nuw i8, ptr %i.bv, i64 24
  %.sroa.02188.sroa.11.0..sroa_idx2543 = getelementptr inbounds nuw i8, ptr %i.bv, i64 32
  %.sroa.02188.sroa.12.0..sroa_idx2551 = getelementptr inbounds nuw i8, ptr %i.bv, i64 40
  %i.sq = load <2 x i64>, ptr %.sroa.02188.sroa.12.0..sroa_idx, align 8, !alias.scope !49279, !noalias !49274
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !49256
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(6) %.sroa.92198, ptr noundef nonnull align 2 dereferenceable(6) %.sroa.323229, i64 6, i1 false), !noalias !49258
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.323229)
  store i64 %.sroa.03191.0.copyload3192, ptr %i.bv, align 8, !alias.scope !49282, !noalias !49283
  store ptr %i.sn, ptr %.sroa.02188.sroa.8.0..sroa_idx2519, align 8, !alias.scope !49282, !noalias !49283
  store i64 2, ptr %.sroa.02188.sroa.9.0..sroa_idx2527, align 8, !alias.scope !49282, !noalias !49283
  store i64 %.sroa.123199.0.copyload3201, ptr %.sroa.02188.sroa.10.0..sroa_idx2535, align 8, !alias.scope !49282, !noalias !49283
  store ptr %.sroa.143202.0.copyload3204, ptr %.sroa.02188.sroa.11.0..sroa_idx2543, align 8, !alias.scope !49282, !noalias !49283
  store <2 x i64> %i.sq, ptr %.sroa.02188.sroa.12.0..sroa_idx2551, align 8, !alias.scope !49282, !noalias !49283
  %.sroa.02188.sroa.14.0..sroa_idx2567 = getelementptr inbounds nuw i8, ptr %i.bv, i64 56
  store ptr %.sroa.203211.0.copyload3213, ptr %.sroa.02188.sroa.14.0..sroa_idx2567, align 8, !alias.scope !49282, !noalias !49283
  %.sroa.02188.sroa.15.0..sroa_idx2575 = getelementptr inbounds nuw i8, ptr %i.bv, i64 64
  store i64 %.sroa.223214.0.copyload3216, ptr %.sroa.02188.sroa.15.0..sroa_idx2575, align 8, !alias.scope !49282, !noalias !49283
  %.sroa.02188.sroa.16.0..sroa_idx2583 = getelementptr inbounds nuw i8, ptr %i.bv, i64 72
  store ptr %.sroa.243217.0.copyload3219, ptr %.sroa.02188.sroa.16.0..sroa_idx2583, align 8, !alias.scope !49282, !noalias !49283
  %.sroa.02188.sroa.17.0..sroa_idx2591 = getelementptr inbounds nuw i8, ptr %i.bv, i64 80
  store i64 %.sroa.263220.0.copyload3222, ptr %.sroa.02188.sroa.17.0..sroa_idx2591, align 8, !alias.scope !49282, !noalias !49283
  %.sroa.02188.sroa.18.0..sroa_idx2599 = getelementptr inbounds nuw i8, ptr %i.bv, i64 88
  store i8 %.sroa.283223.0.copyload3225, ptr %.sroa.02188.sroa.18.0..sroa_idx2599, align 8, !alias.scope !49282, !noalias !49283
  %.sroa.82189.0..sroa_idx2196 = getelementptr inbounds nuw i8, ptr %i.bv, i64 89
  store i8 %.sroa.303226.0.copyload3228, ptr %.sroa.82189.0..sroa_idx2196, align 1, !alias.scope !49282, !noalias !49283
  %.sroa.92198.0..sroa_idx2202 = getelementptr inbounds nuw i8, ptr %i.bv, i64 90
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(6) %.sroa.92198.0..sroa_idx2202, ptr noundef nonnull align 2 dereferenceable(6) %.sroa.92198, i64 6, i1 false), !alias.scope !49282, !noalias !49283
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.92198)
  %i.sr = getelementptr inbounds nuw i8, ptr %i.bw, i64 200 ; 2 uses
  %i.ss = load i64, ptr %.sroa.222130.0..sroa_idx, align 8, !alias.scope !49284, !noalias !49289, !noundef !15 ; 3 uses
  %i.st = load i64, ptr %i.sr, align 8, !range !10, !alias.scope !49284, !noalias !49289, !noundef !15
  %i.su = icmp eq i64 %i.ss, %i.st
  br i1 %i.su, label %bb.in, label %bb.iq

bb.in:                                            ; preds = %bb.im
  invoke void @"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$8grow_one17hd1b6aa6ee33cf8f3E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.sr, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @185)
          to label %bb.iq unwind label %.body.i939, !noalias !49289

.body.i939:                                       ; preds = %bb.in
  %i.sv = landingpad { ptr, i32 }
          cleanup
  call fastcc void @"_ZN4core3ptr63drop_in_place$LT$clap_builder..builder..arg_group..ArgGroup$GT$17hde4441bca3fe8d0bE"(ptr noalias noundef nonnull readonly align 8 dereferenceable(96) %i.bv) #44, !noalias !49293
  invoke fastcc void @"_ZN4core3ptr60drop_in_place$LT$clap_builder..builder..command..Command$GT$17h09f9fbbb9fff9641E"(ptr noalias noundef nonnull align 8 dereferenceable(712) %i.bw) #44
          to label %.thread3341 unwind label %bb.io, !noalias !49294

bb.io:                                            ; preds = %.body.i939
  %i.sw = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #47, !noalias !49294
  unreachable

bb.ip:                                            ; preds = %bb.iv
  %i.sx = landingpad { ptr, i32 }
          cleanup
  br label %bb.kb

bb.iq:                                            ; preds = %bb.im, %bb.in
  %i.sy = load ptr, ptr %.sroa.212129.0..sroa_idx, align 8, !alias.scope !49284, !noalias !49289, !nonnull !15, !noundef !15
  %i.sz = getelementptr inbounds nuw [96 x i8], ptr %i.sy, i64 %i.ss
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %i.sz, ptr noundef nonnull readonly align 8 dereferenceable(96) %i.bv, i64 96, i1 false), !noalias !49293
  %i.ta = add i64 %i.ss, 1
  store i64 %i.ta, ptr %.sroa.222130.0..sroa_idx, align 8, !alias.scope !49284, !noalias !49289
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bu)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(712) %i.bu, ptr noundef nonnull align 8 dereferenceable(712) %i.bw, i64 712, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bv)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bw)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bt)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bs)
  %.sroa.102228.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 120
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !49295
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.102228.0..sroa_idx, i8 0, i64 16, i1 false), !noalias !15
  %.sroa.122230.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 144
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.122230.0..sroa_idx, i8 0, i64 16, i1 false), !noalias !15
  %.sroa.142232.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 168
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.142232.0..sroa_idx, i8 0, i64 16, i1 false), !noalias !15
  %.sroa.162234.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 192
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.162234.0..sroa_idx, i8 0, i64 16, i1 false), !noalias !15
  %.sroa.182236.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 216
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.182236.0..sroa_idx, i8 0, i64 16, i1 false), !noalias !15
  %.sroa.202238.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 240
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.202238.0..sroa_idx, i8 0, i64 16, i1 false), !noalias !15
  %.sroa.222240.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 264
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.222240.0..sroa_idx, i8 0, i64 16, i1 false), !noalias !15
  %.sroa.262244.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 312
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.262244.0..sroa_idx, i8 0, i64 16, i1 false), !noalias !15
  %.sroa.282246.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 336
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.282246.0..sroa_idx, i8 0, i64 16, i1 false), !noalias !15
  %.sroa.322250.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 384
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.322250.0..sroa_idx, i8 0, i64 16, i1 false), !noalias !15
  %.sroa.342252.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 408
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.342252.0..sroa_idx, i8 0, i64 16, i1 false), !noalias !15
  %.sroa.382256.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 456
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.382256.0..sroa_idx, i8 0, i64 16, i1 false), !noalias !15
  %.sroa.242242.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 288
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.242242.0..sroa_idx, i8 0, i64 16, i1 false), !noalias !15
  %.sroa.302248.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 360 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.302248.0..sroa_idx, i8 0, i64 16, i1 false), !noalias !15
  %.sroa.362254.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 432
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.362254.0..sroa_idx, i8 0, i64 16, i1 false), !noalias !15
  store i64 0, ptr %i.h, align 8, !noalias !49300
  %.sroa.42218.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  store i64 0, ptr %.sroa.42218.0..sroa_idx, align 8, !noalias !49300
  %.sroa.52220.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 40
  store i64 0, ptr %.sroa.52220.0..sroa_idx, align 8, !noalias !49300
  %.sroa.62222.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 56
  store i64 0, ptr %.sroa.62222.0..sroa_idx, align 8, !noalias !49300
  %.sroa.72224.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 80
  store i64 5, ptr %.sroa.72224.0..sroa_idx, align 8, !noalias !49300
  %.sroa.82226.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 104
  store i64 0, ptr %.sroa.82226.0..sroa_idx, align 8, !noalias !49300
  %.sroa.92227.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 112
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.92227.0..sroa_idx, align 8, !noalias !49300
  %.sroa.112229.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 136
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.112229.0..sroa_idx, align 8, !noalias !49300
  %.sroa.132231.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 160
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.132231.0..sroa_idx, align 8, !noalias !49300
  %.sroa.152233.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 184
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.152233.0..sroa_idx, align 8, !noalias !49300
  %.sroa.172235.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 208
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.172235.0..sroa_idx, align 8, !noalias !49300
  %.sroa.192237.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 232
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.192237.0..sroa_idx, align 8, !noalias !49300
  %.sroa.212239.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 256
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.212239.0..sroa_idx, align 8, !noalias !49300
  %.sroa.232241.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 280
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.232241.0..sroa_idx, align 8, !noalias !49300
  %.sroa.252243.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 304
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.252243.0..sroa_idx, align 8, !noalias !49300
  %.sroa.272245.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 328
  store ptr inttoptr (i64 4 to ptr), ptr %.sroa.272245.0..sroa_idx, align 8, !noalias !49300
  %.sroa.292247.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 352 ; 2 uses
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.292247.0..sroa_idx, align 8, !noalias !49300
  %.sroa.312249.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 376
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.312249.0..sroa_idx, align 8, !noalias !49300
  %.sroa.332251.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 400
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.332251.0..sroa_idx, align 8, !noalias !49300
  %.sroa.352253.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 424
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.352253.0..sroa_idx, align 8, !noalias !49300
  %.sroa.372255.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 448
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.372255.0..sroa_idx, align 8, !noalias !49300
  %.sroa.392257.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 472
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.392257.0..sroa_idx, align 8, !noalias !49300
  %.sroa.402258.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 480
  store i64 0, ptr %.sroa.402258.0..sroa_idx, align 8, !noalias !49300
  %.sroa.412259.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 488
  store i64 -9223372036854775808, ptr %.sroa.412259.0..sroa_idx, align 8, !noalias !49300
  %.sroa.422261.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 512
  store i64 -9223372036854775808, ptr %.sroa.422261.0..sroa_idx, align 8, !noalias !49300
  %.sroa.432263.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 552
  store i64 -9223372036854775807, ptr %.sroa.432263.0..sroa_idx, align 8, !noalias !49300
  %.sroa.442265.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 576
  store ptr @2234, ptr %.sroa.442265.0..sroa_idx, align 8, !noalias !49300
  %.sroa.452266.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 584
  store i64 10, ptr %.sroa.452266.0..sroa_idx, align 8, !noalias !49300
  %.sroa.462267.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 592
  store ptr null, ptr %.sroa.462267.0..sroa_idx, align 8, !noalias !49300
  %.sroa.472269.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 608
  store ptr null, ptr %.sroa.472269.0..sroa_idx, align 8, !noalias !49300
  %.sroa.482271.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 624
  store i32 1114112, ptr %.sroa.482271.0..sroa_idx, align 8, !noalias !49300
  %.sroa.492272.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 628
  store i32 1114112, ptr %.sroa.492272.0..sroa_idx, align 4, !noalias !49300
  %.sroa.502273.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 632
  store i32 0, ptr %.sroa.502273.0..sroa_idx, align 8, !noalias !49300
  %.sroa.512274.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 636
  store i8 9, ptr %.sroa.512274.0..sroa_idx, align 4, !noalias !49300
  call void @llvm.experimental.noalias.scope.decl(metadata !49301)
  call void @llvm.experimental.noalias.scope.decl(metadata !49304)
  call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #45, !noalias !49306
  %i.tb = call noundef align 8 dereferenceable_or_null(16) ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef 16, i64 noundef range(i64 1, 9) 8) #45, !noalias !49306 ; 4 uses
  %i.tc = icmp eq ptr %i.tb, null
  br i1 %i.tc, label %.noexc.i.i.i.i.i.i994, label %bb.is

bb.ir:                                            ; preds = %.noexc.i.i.i.i.i.i994
  %i.td = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr52drop_in_place$LT$clap_builder..builder..arg..Arg$GT$17h16854998d472b50cE"(ptr noalias noundef nonnull align 8 dereferenceable(640) %i.h) #44
          to label %bb.kb unwind label %bb.iu, !noalias !49324

.noexc.i.i.i.i.i.i994:                            ; preds = %bb.iq
  invoke void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef 8, i64 16, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @1016) #46
          to label %.noexc.i.i996 unwind label %bb.ir, !noalias !49325

.noexc.i.i996:                                    ; preds = %.noexc.i.i.i.i.i.i994
  unreachable

end_hunk_2
