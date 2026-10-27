Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/meilisearch-rs/original/meilisearch_types-aa1abf77e42e2ac6.meilisearch_types.e2c1562f49b7a899-cgu.0?download=true
inline.NumInlined: 11037
inline.NumDeleted: 4505
loop-unroll.NumCompletelyUnrolled: 77
loop-unroll.NumRuntimeUnrolled: 218
loop-unroll.NumUnrolled: 298
begin_hunk_0_@"_ZN102_$LT$core..iter..adapters..map..Map$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h0486a0ca0376048fE":bb.a

bb.o:                                             ; preds = %bb.n, %"_ZN17meilisearch_types5tasks164_$LT$impl$u20$core..convert..From$LT$$RF$meilisearch_types..tasks..KindWithContent$GT$$u20$for$u20$core..option..Option$LT$meilisearch_types..tasks..Details$GT$$GT$4from28_$u7b$$u7b$closure$u7d$$u7d$17h2b43aca0373cfeb1E.exit"
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @"_ZN102_$LT$core..iter..adapters..map..Map$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h3022cb352606dbaeE"(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(72) %0, ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(288) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 10 uses
  %i.b = alloca [24 x i8], align 8                ; 11 uses
  %i.c = alloca [24 x i8], align 8                ; 5 uses
  %i.d = alloca [72 x i8], align 8                ; 20 uses
  %i.e = alloca [24 x i8], align 8                ; 5 uses
  %i.f = alloca [72 x i8], align 8                ; 5 uses
  %i.g = alloca [72 x i8], align 8                ; 5 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1080)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 72 ; 5 uses
  %i.i = load i64, ptr %i.h, align 8, !range !25, !alias.scope !1080, !noundef !21
  %.not.i = icmp eq i64 %i.i, -9223372036854775808
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.d, ptr noundef nonnull align 8 dereferenceable(72) %i.h, i64 72, i1 false), !noalias !1081
  store i64 -9223372036854775808, ptr %i.h, align 8, !alias.scope !1080
  br label %"_ZN107_$LT$core..iter..adapters..fuse..Fuse$LT$I$GT$$u20$as$u20$core..iter..adapters..fuse..FuseImpl$LT$I$GT$$GT$4next17hf4a8868d09af22c8E.exit.i"

bb.c:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1082)
  %i.j = load i64, ptr %1, align 8, !range !36, !alias.scope !1083, !noundef !21
  %.not.i.i = icmp eq i64 %i.j, 2
  br i1 %.not.i.i, label %bb.g, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !1084
  call fastcc void @"_ZN5alloc11collections5btree3map25IntoIter$LT$K$C$V$C$A$GT$10dying_next17h2819dec28b787cecE"(ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.e, ptr noalias noundef nonnull align 8 dereferenceable(288) %1), !noalias !1085
  %i.k = load ptr, ptr %i.e, align 8, !noalias !1084, !noundef !21 ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.k, null
  br i1 %.not.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %.sroa.22.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %.sroa.22.0.copyload.i.i.i = load i64, ptr %.sroa.22.0..sroa_idx.i.i.i, align 8, !noalias !1084 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 536
  %i.m = getelementptr inbounds nuw [24 x i8], ptr %i.l, i64 %.sroa.22.0.copyload.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.d, ptr noundef nonnull readonly align 8 dereferenceable(24) %i.m, i64 24, i1 false), !noalias !1086
  %i.n = getelementptr inbounds nuw [48 x i8], ptr %i.k, i64 %.sroa.22.0.copyload.i.i.i
  %i.o = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.o, ptr noundef nonnull readonly align 8 dereferenceable(48) %i.n, i64 48, i1 false), !noalias !1086
  br label %"_ZN116_$LT$alloc..collections..btree..map..IntoIter$LT$K$C$V$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h7f1bb2e84aa5f21aE.exit.i.i"

bb.f:                                             ; preds = %bb.d
  store i64 -9223372036854775808, ptr %i.d, align 8, !noalias !1086
  br label %"_ZN116_$LT$alloc..collections..btree..map..IntoIter$LT$K$C$V$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h7f1bb2e84aa5f21aE.exit.i.i"

"_ZN116_$LT$alloc..collections..btree..map..IntoIter$LT$K$C$V$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h7f1bb2e84aa5f21aE.exit.i.i": ; preds = %bb.f, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !1084
  br label %"_ZN107_$LT$core..iter..adapters..fuse..Fuse$LT$I$GT$$u20$as$u20$core..iter..adapters..fuse..FuseImpl$LT$I$GT$$GT$4next17hf4a8868d09af22c8E.exit.i"

bb.g:                                             ; preds = %bb.c
  store i64 -9223372036854775808, ptr %i.d, align 8, !noalias !1086
  br label %"_ZN107_$LT$core..iter..adapters..fuse..Fuse$LT$I$GT$$u20$as$u20$core..iter..adapters..fuse..FuseImpl$LT$I$GT$$GT$4next17hf4a8868d09af22c8E.exit.i"

"_ZN107_$LT$core..iter..adapters..fuse..Fuse$LT$I$GT$$u20$as$u20$core..iter..adapters..fuse..FuseImpl$LT$I$GT$$GT$4next17hf4a8868d09af22c8E.exit.i": ; preds = %bb.g, %"_ZN116_$LT$alloc..collections..btree..map..IntoIter$LT$K$C$V$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h7f1bb2e84aa5f21aE.exit.i.i", %bb.b
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 216 ; 4 uses
  %i.q = load i64, ptr %i.p, align 8, !range !25, !alias.scope !1080, !noundef !21 ; 2 uses
  %.not18.i = icmp eq i64 %i.q, -9223372036854775808
  br i1 %.not18.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %"_ZN107_$LT$core..iter..adapters..fuse..Fuse$LT$I$GT$$u20$as$u20$core..iter..adapters..fuse..FuseImpl$LT$I$GT$$GT$4next17hf4a8868d09af22c8E.exit.i"
  %.sroa.734.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 224
  %.sroa.734.sroa.0.0.copyload.i = load ptr, ptr %.sroa.734.0..sroa_idx.i, align 8, !alias.scope !1080
  %.sroa.734.sroa.5.0..sroa.734.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 232
  %.sroa.734.sroa.5.0.copyload.i = load i64, ptr %.sroa.734.sroa.5.0..sroa.734.0..sroa_idx.sroa_idx.i, align 8, !alias.scope !1080
  %.sroa.734.sroa.6.0..sroa.734.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 240
  %.sroa.734.sroa.6.sroa.0.sroa.0.0.copyload.i = load i64, ptr %.sroa.734.sroa.6.0..sroa.734.0..sroa_idx.sroa_idx.i, align 8, !alias.scope !1080
  %.sroa.734.sroa.6.sroa.0.sroa.5.0..sroa.734.sroa.6.0..sroa.734.0..sroa_idx.sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 248
  %.sroa.734.sroa.6.sroa.0.sroa.5.sroa.0.sroa.0.sroa.0.0.copyload.i = load i64, ptr %.sroa.734.sroa.6.sroa.0.sroa.5.0..sroa.734.sroa.6.0..sroa.734.0..sroa_idx.sroa_idx.sroa_idx.i, align 8, !alias.scope !1080
  %.sroa.734.sroa.6.sroa.0.sroa.5.sroa.0.sroa.0.sroa.5.0..sroa.734.sroa.6.sroa.0.sroa.5.0..sroa.734.sroa.6.0..sroa.734.0..sroa_idx.sroa_idx.sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 256
  %.sroa.734.sroa.6.sroa.0.sroa.5.sroa.0.sroa.0.sroa.5.0.copyload.i = load i64, ptr %.sroa.734.sroa.6.sroa.0.sroa.5.sroa.0.sroa.0.sroa.5.0..sroa.734.sroa.6.sroa.0.sroa.5.0..sroa.734.sroa.6.0..sroa.734.0..sroa_idx.sroa_idx.sroa_idx.sroa_idx.i, align 8, !alias.scope !1080
  %.sroa.734.sroa.6.sroa.0.sroa.5.sroa.0.sroa.5.0..sroa.734.sroa.6.sroa.0.sroa.5.0..sroa.734.sroa.6.0..sroa.734.0..sroa_idx.sroa_idx.sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 264
  %.sroa.734.sroa.6.sroa.0.sroa.5.sroa.0.sroa.5.0.copyload.i = load i64, ptr %.sroa.734.sroa.6.sroa.0.sroa.5.sroa.0.sroa.5.0..sroa.734.sroa.6.sroa.0.sroa.5.0..sroa.734.sroa.6.0..sroa.734.0..sroa_idx.sroa_idx.sroa_idx.sroa_idx.i, align 8, !alias.scope !1080
  %.sroa.734.sroa.6.sroa.0.sroa.5.sroa.5.0..sroa.734.sroa.6.sroa.0.sroa.5.0..sroa.734.sroa.6.0..sroa.734.0..sroa_idx.sroa_idx.sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 272
  %.sroa.734.sroa.6.sroa.0.sroa.5.sroa.5.0.copyload.i = load i64, ptr %.sroa.734.sroa.6.sroa.0.sroa.5.sroa.5.0..sroa.734.sroa.6.sroa.0.sroa.5.0..sroa.734.sroa.6.0..sroa.734.0..sroa_idx.sroa_idx.sroa_idx.sroa_idx.i, align 8, !alias.scope !1080
  %.sroa.734.sroa.6.sroa.5.0..sroa.734.sroa.6.0..sroa.734.0..sroa_idx.sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 280
  %.sroa.734.sroa.6.sroa.5.0.copyload.i = load i64, ptr %.sroa.734.sroa.6.sroa.5.0..sroa.734.sroa.6.0..sroa.734.0..sroa_idx.sroa_idx.sroa_idx.i, align 8, !alias.scope !1080
  store i64 -9223372036854775808, ptr %i.p, align 8, !alias.scope !1080
  br label %"_ZN107_$LT$core..iter..adapters..fuse..Fuse$LT$I$GT$$u20$as$u20$core..iter..adapters..fuse..FuseImpl$LT$I$GT$$GT$4next17hf4a8868d09af22c8E.exit30.i"

bb.i:                                             ; preds = %"_ZN107_$LT$core..iter..adapters..fuse..Fuse$LT$I$GT$$u20$as$u20$core..iter..adapters..fuse..FuseImpl$LT$I$GT$$GT$4next17hf4a8868d09af22c8E.exit.i"
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 144 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1087)
  %i.s = load i64, ptr %i.r, align 8, !range !36, !alias.scope !1088, !noundef !21
  %.not.i25.i = icmp eq i64 %i.s, 2
  br i1 %.not.i25.i, label %"_ZN107_$LT$core..iter..adapters..fuse..Fuse$LT$I$GT$$u20$as$u20$core..iter..adapters..fuse..FuseImpl$LT$I$GT$$GT$4next17hf4a8868d09af22c8E.exit30.i", label %bb.j

bb.j:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !1089
  invoke fastcc void @"_ZN5alloc11collections5btree3map25IntoIter$LT$K$C$V$C$A$GT$10dying_next17h2819dec28b787cecE"(ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.c, ptr noalias noundef nonnull align 8 dereferenceable(72) %i.r)
          to label %.noexc.i unwind label %bb.l, !noalias !1081

.noexc.i:                                         ; preds = %bb.j
  %i.t = load ptr, ptr %i.c, align 8, !noalias !1089, !noundef !21 ; 3 uses
  %.not.i.i26.i = icmp eq ptr %i.t, null
  br i1 %.not.i.i26.i, label %"_ZN116_$LT$alloc..collections..btree..map..IntoIter$LT$K$C$V$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h7f1bb2e84aa5f21aE.exit.i29.i", label %bb.k

bb.k:                                             ; preds = %.noexc.i
  %.sroa.22.0..sroa_idx.i.i27.i = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %.sroa.22.0.copyload.i.i28.i = load i64, ptr %.sroa.22.0..sroa_idx.i.i27.i, align 8, !noalias !1089 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 536
  %i.v = getelementptr inbounds nuw [24 x i8], ptr %i.u, i64 %.sroa.22.0.copyload.i.i28.i ; 3 uses
  %.sroa.082.0.copyload.i = load i64, ptr %i.v, align 8, !noalias !1089
  %.sroa.483.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  %.sroa.483.0.copyload.i = load ptr, ptr %.sroa.483.0..sroa_idx.i, align 8, !noalias !1089
  %.sroa.5.0..sroa_idx84.i = getelementptr inbounds nuw i8, ptr %i.v, i64 16
  %.sroa.5.0.copyload.i = load i64, ptr %.sroa.5.0..sroa_idx84.i, align 8, !noalias !1089
  %i.w = getelementptr inbounds nuw [48 x i8], ptr %i.t, i64 %.sroa.22.0.copyload.i.i28.i ; 6 uses
  %.sroa.6.sroa.098.sroa.0.0.copyload.i = load i64, ptr %i.w, align 8, !noalias !1089
  %.sroa.6.sroa.098.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  %.sroa.6.sroa.098.sroa.4.sroa.0.sroa.0.sroa.0.0.copyload.i = load i64, ptr %.sroa.6.sroa.098.sroa.4.0..sroa_idx.i, align 8, !noalias !1089
  %.sroa.6.sroa.098.sroa.4.sroa.0.sroa.0.sroa.4.0..sroa.6.sroa.098.sroa.4.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.w, i64 16
  %.sroa.6.sroa.098.sroa.4.sroa.0.sroa.0.sroa.4.0.copyload.i = load i64, ptr %.sroa.6.sroa.098.sroa.4.sroa.0.sroa.0.sroa.4.0..sroa.6.sroa.098.sroa.4.0..sroa_idx.sroa_idx.i, align 8, !noalias !1089
  %.sroa.6.sroa.098.sroa.4.sroa.0.sroa.4.0..sroa.6.sroa.098.sroa.4.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.w, i64 24
  %.sroa.6.sroa.098.sroa.4.sroa.0.sroa.4.0.copyload.i = load i64, ptr %.sroa.6.sroa.098.sroa.4.sroa.0.sroa.4.0..sroa.6.sroa.098.sroa.4.0..sroa_idx.sroa_idx.i, align 8, !noalias !1089
  %.sroa.6.sroa.098.sroa.4.sroa.4.0..sroa.6.sroa.098.sroa.4.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.w, i64 32
  %.sroa.6.sroa.098.sroa.4.sroa.4.0.copyload.i = load i64, ptr %.sroa.6.sroa.098.sroa.4.sroa.4.0..sroa.6.sroa.098.sroa.4.0..sroa_idx.sroa_idx.i, align 8, !noalias !1089
  %.sroa.6.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.w, i64 40
  %.sroa.6.sroa.4.0.copyload.i = load i64, ptr %.sroa.6.sroa.4.0..sroa_idx.i, align 8, !noalias !1089
  br label %"_ZN116_$LT$alloc..collections..btree..map..IntoIter$LT$K$C$V$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h7f1bb2e84aa5f21aE.exit.i29.i"

"_ZN116_$LT$alloc..collections..btree..map..IntoIter$LT$K$C$V$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h7f1bb2e84aa5f21aE.exit.i29.i": ; preds = %bb.k, %.noexc.i
  %.sroa.734.sroa.6.sroa.5.1.i = phi i64 [ %.sroa.6.sroa.4.0.copyload.i, %bb.k ], [ undef, %.noexc.i ]
  %.sroa.734.sroa.6.sroa.0.sroa.0.1.i = phi i64 [ %.sroa.6.sroa.098.sroa.0.0.copyload.i, %bb.k ], [ undef, %.noexc.i ]
  %.sroa.734.sroa.6.sroa.0.sroa.5.sroa.5.1.i = phi i64 [ %.sroa.6.sroa.098.sroa.4.sroa.4.0.copyload.i, %bb.k ], [ undef, %.noexc.i ]
  %.sroa.734.sroa.5.1.i = phi i64 [ %.sroa.5.0.copyload.i, %bb.k ], [ undef, %.noexc.i ]
  %.sroa.734.sroa.0.1.i = phi ptr [ %.sroa.483.0.copyload.i, %bb.k ], [ undef, %.noexc.i ]
  %.sroa.734.sroa.6.sroa.0.sroa.5.sroa.0.sroa.5.1.i = phi i64 [ %.sroa.6.sroa.098.sroa.4.sroa.0.sroa.4.0.copyload.i, %bb.k ], [ undef, %.noexc.i ]
  %.sroa.734.sroa.6.sroa.0.sroa.5.sroa.0.sroa.0.sroa.0.1.i = phi i64 [ %.sroa.6.sroa.098.sroa.4.sroa.0.sroa.0.sroa.0.0.copyload.i, %bb.k ], [ undef, %.noexc.i ]
  %.sroa.734.sroa.6.sroa.0.sroa.5.sroa.0.sroa.0.sroa.5.1.i = phi i64 [ %.sroa.6.sroa.098.sroa.4.sroa.0.sroa.0.sroa.4.0.copyload.i, %bb.k ], [ undef, %.noexc.i ]
  %.sroa.0.1.i = phi i64 [ %.sroa.082.0.copyload.i, %bb.k ], [ -9223372036854775808, %.noexc.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !1089
  br label %"_ZN107_$LT$core..iter..adapters..fuse..Fuse$LT$I$GT$$u20$as$u20$core..iter..adapters..fuse..FuseImpl$LT$I$GT$$GT$4next17hf4a8868d09af22c8E.exit30.i"

bb.l:                                             ; preds = %bb.j
  %i.x = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.y = load i64, ptr %i.d, align 8, !range !25, !noalias !1086, !noundef !21
  %i.z = icmp eq i64 %i.y, -9223372036854775808
  br i1 %i.z, label %common.resume, label %bb.m

bb.m:                                             ; preds = %bb.l
  call fastcc void @"_ZN4core3ptr104drop_in_place$LT$$LP$alloc..string..String$C$meilisearch_types..tasks..network..ImportIndexState$RP$$GT$17hf9040335892288a5E"(ptr noalias noundef nonnull readonly align 8 dereferenceable(72) %i.d), !noalias !1086
  br label %common.resume

"_ZN107_$LT$core..iter..adapters..fuse..Fuse$LT$I$GT$$u20$as$u20$core..iter..adapters..fuse..FuseImpl$LT$I$GT$$GT$4next17hf4a8868d09af22c8E.exit30.i": ; preds = %"_ZN116_$LT$alloc..collections..btree..map..IntoIter$LT$K$C$V$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h7f1bb2e84aa5f21aE.exit.i29.i", %bb.i, %bb.h
  %.sroa.734.sroa.6.sroa.5.0.i = phi i64 [ %.sroa.734.sroa.6.sroa.5.0.copyload.i, %bb.h ], [ %.sroa.734.sroa.6.sroa.5.1.i, %"_ZN116_$LT$alloc..collections..btree..map..IntoIter$LT$K$C$V$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h7f1bb2e84aa5f21aE.exit.i29.i" ], [ undef, %bb.i ] ; 9 uses
  %.sroa.734.sroa.6.sroa.0.sroa.0.0.i = phi i64 [ %.sroa.734.sroa.6.sroa.0.sroa.0.0.copyload.i, %bb.h ], [ %.sroa.734.sroa.6.sroa.0.sroa.0.1.i, %"_ZN116_$LT$alloc..collections..btree..map..IntoIter$LT$K$C$V$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h7f1bb2e84aa5f21aE.exit.i29.i" ], [ undef, %bb.i ] ; 13 uses
  %.sroa.734.sroa.6.sroa.0.sroa.5.sroa.5.0.i = phi i64 [ %.sroa.734.sroa.6.sroa.0.sroa.5.sroa.5.0.copyload.i, %bb.h ], [ %.sroa.734.sroa.6.sroa.0.sroa.5.sroa.5.1.i, %"_ZN116_$LT$alloc..collections..btree..map..IntoIter$LT$K$C$V$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h7f1bb2e84aa5f21aE.exit.i29.i" ], [ undef, %bb.i ] ; 9 uses
  %.sroa.734.sroa.5.0.i = phi i64 [ %.sroa.734.sroa.5.0.copyload.i, %bb.h ], [ %.sroa.734.sroa.5.1.i, %"_ZN116_$LT$alloc..collections..btree..map..IntoIter$LT$K$C$V$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h7f1bb2e84aa5f21aE.exit.i29.i" ], [ undef, %bb.i ] ; 5 uses
  %.sroa.734.sroa.0.0.i = phi ptr [ %.sroa.734.sroa.0.0.copyload.i, %bb.h ], [ %.sroa.734.sroa.0.1.i, %"_ZN116_$LT$alloc..collections..btree..map..IntoIter$LT$K$C$V$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h7f1bb2e84aa5f21aE.exit.i29.i" ], [ undef, %bb.i ] ; 7 uses
  %.sroa.734.sroa.6.sroa.0.sroa.5.sroa.0.sroa.5.0.i = phi i64 [ %.sroa.734.sroa.6.sroa.0.sroa.5.sroa.0.sroa.5.0.copyload.i, %bb.h ], [ %.sroa.734.sroa.6.sroa.0.sroa.5.sroa.0.sroa.5.1.i, %"_ZN116_$LT$alloc..collections..btree..map..IntoIter$LT$K$C$V$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h7f1bb2e84aa5f21aE.exit.i29.i" ], [ undef, %bb.i ] ; 9 uses
  %.sroa.734.sroa.6.sroa.0.sroa.5.sroa.0.sroa.0.sroa.0.0.i = phi i64 [ %.sroa.734.sroa.6.sroa.0.sroa.5.sroa.0.sroa.0.sroa.0.0.copyload.i, %bb.h ], [ %.sroa.734.sroa.6.sroa.0.sroa.5.sroa.0.sroa.0.sroa.0.1.i, %"_ZN116_$LT$alloc..collections..btree..map..IntoIter$LT$K$C$V$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h7f1bb2e84aa5f21aE.exit.i29.i" ], [ undef, %bb.i ] ; 4 uses
  %.sroa.734.sroa.6.sroa.0.sroa.5.sroa.0.sroa.0.sroa.5.0.i = phi i64 [ %.sroa.734.sroa.6.sroa.0.sroa.5.sroa.0.sroa.0.sroa.5.0.copyload.i, %bb.h ], [ %.sroa.734.sroa.6.sroa.0.sroa.5.sroa.0.sroa.0.sroa.5.1.i, %"_ZN116_$LT$alloc..collections..btree..map..IntoIter$LT$K$C$V$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h7f1bb2e84aa5f21aE.exit.i29.i" ], [ undef, %bb.i ] ; 13 uses
  %.sroa.0.0.i = phi i64 [ %i.q, %bb.h ], [ %.sroa.0.1.i, %"_ZN116_$LT$alloc..collections..btree..map..IntoIter$LT$K$C$V$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h7f1bb2e84aa5f21aE.exit.i29.i" ], [ -9223372036854775808, %bb.i ] ; 9 uses
  %.sroa.05.0.copyload.i = load i64, ptr %i.d, align 8, !noalias !1086 ; 10 uses
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %.sroa.6.sroa.0.0.copyload.i = load ptr, ptr %.sroa.6.0..sroa_idx.i, align 8, !noalias !1086 ; 9 uses
  %.sroa.6.sroa.5.0..sroa.6.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %.sroa.6.sroa.5.0.copyload.i = load i64, ptr %.sroa.6.sroa.5.0..sroa.6.0..sroa_idx.sroa_idx.i, align 8, !noalias !1086 ; 8 uses
  %.sroa.6.sroa.6.0..sroa.6.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %.sroa.6.sroa.6.sroa.0.0.copyload.i = load i64, ptr %.sroa.6.sroa.6.0..sroa.6.0..sroa_idx.sroa_idx.i, align 8, !noalias !1086 ; 10 uses
  %.sroa.6.sroa.6.sroa.5.0..sroa.6.sroa.6.0..sroa.6.0..sroa_idx.sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  %.sroa.6.sroa.6.sroa.5.0.copyload.i = load i64, ptr %.sroa.6.sroa.6.sroa.5.0..sroa.6.sroa.6.0..sroa.6.0..sroa_idx.sroa_idx.sroa_idx.i, align 8, !noalias !1086 ; 5 uses
  %.sroa.6.sroa.6.sroa.6.0..sroa.6.sroa.6.0..sroa.6.0..sroa_idx.sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 40
  %.sroa.6.sroa.6.sroa.6.0.copyload.i = load i64, ptr %.sroa.6.sroa.6.sroa.6.0..sroa.6.sroa.6.0..sroa.6.0..sroa_idx.sroa_idx.sroa_idx.i, align 8, !noalias !1086 ; 11 uses
  %.sroa.6.sroa.6.sroa.7.0..sroa.6.sroa.6.0..sroa.6.0..sroa_idx.sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 48
  %.sroa.6.sroa.6.sroa.7.0.copyload.i = load i64, ptr %.sroa.6.sroa.6.sroa.7.0..sroa.6.sroa.6.0..sroa.6.0..sroa_idx.sroa_idx.sroa_idx.i, align 8, !noalias !1086 ; 9 uses
  %.sroa.6.sroa.6.sroa.8.0..sroa.6.sroa.6.0..sroa.6.0..sroa_idx.sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 56
  %.sroa.6.sroa.6.sroa.8.0.copyload.i = load i64, ptr %.sroa.6.sroa.6.sroa.8.0..sroa.6.sroa.6.0..sroa.6.0..sroa_idx.sroa_idx.sroa_idx.i, align 8, !noalias !1086 ; 9 uses
  %.sroa.6.sroa.6.sroa.9.0..sroa.6.sroa.6.0..sroa.6.0..sroa_idx.sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 64
  %.sroa.6.sroa.6.sroa.9.0.copyload.i = load i64, ptr %.sroa.6.sroa.6.sroa.9.0..sroa.6.sroa.6.0..sroa.6.0..sroa_idx.sroa_idx.sroa_idx.i, align 8, !noalias !1086 ; 9 uses
  %.not19.i = icmp eq i64 %.sroa.05.0.copyload.i, -9223372036854775808
  %.not20.i = icmp eq i64 %.sroa.0.0.i, -9223372036854775808 ; 2 uses
  br i1 %.not19.i, label %bb.o, label %bb.n

common.resume:                                    ; preds = %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17hfb8d17e84375b72dE.exit.thread.i", %bb.ai, %bb.l, %bb.m
  %common.resume.op = phi { ptr, i32 } [ %i.x, %bb.l ], [ %i.x, %bb.m ], [ %i.ba, %bb.ai ], [ %i.ba, %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17hfb8d17e84375b72dE.exit.thread.i" ]
  resume { ptr, i32 } %common.resume.op

bb.n:                                             ; preds = %"_ZN107_$LT$core..iter..adapters..fuse..Fuse$LT$I$GT$$u20$as$u20$core..iter..adapters..fuse..FuseImpl$LT$I$GT$$GT$4next17hf4a8868d09af22c8E.exit30.i"
  br i1 %.not20.i, label %.thread, label %bb.p

bb.o:                                             ; preds = %"_ZN107_$LT$core..iter..adapters..fuse..Fuse$LT$I$GT$$u20$as$u20$core..iter..adapters..fuse..FuseImpl$LT$I$GT$$GT$4next17hf4a8868d09af22c8E.exit30.i"
  br i1 %.not20.i, label %"_ZN106_$LT$itertools..merge_join..MergeBy$LT$I$C$J$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hb8107439c250d3faE.exit.thread94", label %.thread

"_ZN106_$LT$itertools..merge_join..MergeBy$LT$I$C$J$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hb8107439c250d3faE.exit.thread94": ; preds = %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br label %bb.ak

bb.p:                                             ; preds = %bb.n
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.6.sroa.0.0.copyload.i), "nonnull"(ptr %.sroa.734.sroa.0.0.i) ]
  %..i.i.i.i.i = tail call i64 @llvm.umin.i64(i64 %.sroa.6.sroa.5.0.copyload.i, i64 %.sroa.734.sroa.5.0.i)
  %i.aa = sub i64 %.sroa.6.sroa.5.0.copyload.i, %.sroa.734.sroa.5.0.i
  %i.ab = tail call i32 @memcmp(ptr nonnull readonly align 1 %.sroa.6.sroa.0.0.copyload.i, ptr nonnull readonly align 1 %.sroa.734.sroa.0.0.i, i64 %..i.i.i.i.i), !alias.scope !1090, !noalias !1091 ; 2 uses
  %i.ac = sext i32 %i.ab to i64
  %i.ad = icmp eq i32 %i.ab, 0
  %spec.store.select.i.i.i.i.i = select i1 %i.ad, i64 %i.aa, i64 %i.ac
  %i.ae = tail call noundef range(i8 -1, 2) i8 @llvm.scmp.i8.i64(i64 %spec.store.select.i.i.i.i.i, i64 0)
  switch i8 %i.ae, label %bb.q [
    i8 -1, label %bb.r
    i8 0, label %"_ZN106_$LT$itertools..merge_join..MergeBy$LT$I$C$J$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hb8107439c250d3faE.exit"
    i8 1, label %"_ZN136_$LT$itertools..merge_join..MergeFuncLR$LT$F$C$core..cmp..Ordering$GT$$u20$as$u20$itertools..merge_join..OrderingOrBool$LT$L$C$R$GT$$GT$5merge17h99dc1d3c72badf56E.exit.i"
  ]

bb.q:                                             ; preds = %bb.p
  unreachable

bb.r:                                             ; preds = %bb.p
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !1086
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.f, ptr noundef nonnull align 8 dereferenceable(72) %i.p, i64 72, i1 false), !noalias !1081
  store i64 %.sroa.0.0.i, ptr %i.p, align 8, !alias.scope !1080
  %.sroa.4210.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 224
  store ptr %.sroa.734.sroa.0.0.i, ptr %.sroa.4210.0..sroa_idx.i, align 8, !alias.scope !1080
  %.sroa.5211.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 232
  store i64 %.sroa.734.sroa.5.0.i, ptr %.sroa.5211.0..sroa_idx.i, align 8, !alias.scope !1080
  %.sroa.6212.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 240
  store i64 %.sroa.734.sroa.6.sroa.0.sroa.0.0.i, ptr %.sroa.6212.0..sroa_idx.i, align 8, !alias.scope !1080
  %.sroa.7213.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 248
  store i64 %.sroa.734.sroa.6.sroa.0.sroa.5.sroa.0.sroa.0.sroa.0.0.i, ptr %.sroa.7213.0..sroa_idx.i, align 8, !alias.scope !1080
  %.sroa.8214.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 256
  store i64 %.sroa.734.sroa.6.sroa.0.sroa.5.sroa.0.sroa.0.sroa.5.0.i, ptr %.sroa.8214.0..sroa_idx.i, align 8, !alias.scope !1080
  %.sroa.9215.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 264
  store i64 %.sroa.734.sroa.6.sroa.0.sroa.5.sroa.0.sroa.5.0.i, ptr %.sroa.9215.0..sroa_idx.i, align 8, !alias.scope !1080
  %.sroa.10216.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 272
  store i64 %.sroa.734.sroa.6.sroa.0.sroa.5.sroa.5.0.i, ptr %.sroa.10216.0..sroa_idx.i, align 8, !alias.scope !1080
  %.sroa.11217.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 280
  store i64 %.sroa.734.sroa.6.sroa.5.0.i, ptr %.sroa.11217.0..sroa_idx.i, align 8, !alias.scope !1080
  %i.af = load i64, ptr %i.f, align 8, !range !25, !alias.scope !1092, !noalias !1086, !noundef !21
  %i.ag = icmp eq i64 %i.af, -9223372036854775808
  br i1 %i.ag, label %"_ZN4core3ptr132drop_in_place$LT$core..option..Option$LT$$LP$alloc..string..String$C$meilisearch_types..tasks..network..ImportIndexState$RP$$GT$$GT$17he47e727e60725938E.exit31.i", label %bb.s

bb.s:                                             ; preds = %bb.r
  call fastcc void @"_ZN4core3ptr104drop_in_place$LT$$LP$alloc..string..String$C$meilisearch_types..tasks..network..ImportIndexState$RP$$GT$17hf9040335892288a5E"(ptr noalias noundef nonnull readonly align 8 dereferenceable(72) %i.f), !noalias !1086
  br label %"_ZN4core3ptr132drop_in_place$LT$core..option..Option$LT$$LP$alloc..string..String$C$meilisearch_types..tasks..network..ImportIndexState$RP$$GT$$GT$17he47e727e60725938E.exit31.i"

"_ZN136_$LT$itertools..merge_join..MergeFuncLR$LT$F$C$core..cmp..Ordering$GT$$u20$as$u20$itertools..merge_join..OrderingOrBool$LT$L$C$R$GT$$GT$5merge17h99dc1d3c72badf56E.exit.i": ; preds = %bb.p
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !1086
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.g, ptr noundef nonnull align 8 dereferenceable(72) %i.h, i64 72, i1 false), !noalias !1081
  store i64 %.sroa.05.0.copyload.i, ptr %i.h, align 8, !alias.scope !1080
  %.sroa.4219.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 80
  store ptr %.sroa.6.sroa.0.0.copyload.i, ptr %.sroa.4219.0..sroa_idx.i, align 8, !alias.scope !1080
  %.sroa.5220.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 88
  store i64 %.sroa.6.sroa.5.0.copyload.i, ptr %.sroa.5220.0..sroa_idx.i, align 8, !alias.scope !1080
  %.sroa.6221.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 96
  store i64 %.sroa.6.sroa.6.sroa.0.0.copyload.i, ptr %.sroa.6221.0..sroa_idx.i, align 8, !alias.scope !1080
  %.sroa.7222.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 104
  store i64 %.sroa.6.sroa.6.sroa.5.0.copyload.i, ptr %.sroa.7222.0..sroa_idx.i, align 8, !alias.scope !1080
  %.sroa.8223.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 112
  store i64 %.sroa.6.sroa.6.sroa.6.0.copyload.i, ptr %.sroa.8223.0..sroa_idx.i, align 8, !alias.scope !1080
  %.sroa.9224.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 120
  store i64 %.sroa.6.sroa.6.sroa.7.0.copyload.i, ptr %.sroa.9224.0..sroa_idx.i, align 8, !alias.scope !1080
  %.sroa.10225.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 128
  store i64 %.sroa.6.sroa.6.sroa.8.0.copyload.i, ptr %.sroa.10225.0..sroa_idx.i, align 8, !alias.scope !1080
  %.sroa.11226.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 136
  store i64 %.sroa.6.sroa.6.sroa.9.0.copyload.i, ptr %.sroa.11226.0..sroa_idx.i, align 8, !alias.scope !1080
  %i.ah = load i64, ptr %i.g, align 8, !range !25, !alias.scope !1093, !noalias !1086, !noundef !21
  %i.ai = icmp eq i64 %i.ah, -9223372036854775808
  br i1 %i.ai, label %"_ZN4core3ptr132drop_in_place$LT$core..option..Option$LT$$LP$alloc..string..String$C$meilisearch_types..tasks..network..ImportIndexState$RP$$GT$$GT$17he47e727e60725938E.exit32.i", label %bb.t

bb.t:                                             ; preds = %"_ZN136_$LT$itertools..merge_join..MergeFuncLR$LT$F$C$core..cmp..Ordering$GT$$u20$as$u20$itertools..merge_join..OrderingOrBool$LT$L$C$R$GT$$GT$5merge17h99dc1d3c72badf56E.exit.i"
  call fastcc void @"_ZN4core3ptr104drop_in_place$LT$$LP$alloc..string..String$C$meilisearch_types..tasks..network..ImportIndexState$RP$$GT$17hf9040335892288a5E"(ptr noalias noundef nonnull readonly align 8 dereferenceable(72) %i.g), !noalias !1086
  br label %"_ZN4core3ptr132drop_in_place$LT$core..option..Option$LT$$LP$alloc..string..String$C$meilisearch_types..tasks..network..ImportIndexState$RP$$GT$$GT$17he47e727e60725938E.exit32.i"

"_ZN4core3ptr132drop_in_place$LT$core..option..Option$LT$$LP$alloc..string..String$C$meilisearch_types..tasks..network..ImportIndexState$RP$$GT$$GT$17he47e727e60725938E.exit32.i": ; preds = %bb.t, %"_ZN136_$LT$itertools..merge_join..MergeFuncLR$LT$F$C$core..cmp..Ordering$GT$$u20$as$u20$itertools..merge_join..OrderingOrBool$LT$L$C$R$GT$$GT$5merge17h99dc1d3c72badf56E.exit.i"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !1086
  br label %.thread

"_ZN4core3ptr132drop_in_place$LT$core..option..Option$LT$$LP$alloc..string..String$C$meilisearch_types..tasks..network..ImportIndexState$RP$$GT$$GT$17he47e727e60725938E.exit31.i": ; preds = %bb.s, %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !1086
  br label %.thread

.thread:                                          ; preds = %"_ZN4core3ptr132drop_in_place$LT$core..option..Option$LT$$LP$alloc..string..String$C$meilisearch_types..tasks..network..ImportIndexState$RP$$GT$$GT$17he47e727e60725938E.exit32.i", %"_ZN4core3ptr132drop_in_place$LT$core..option..Option$LT$$LP$alloc..string..String$C$meilisearch_types..tasks..network..ImportIndexState$RP$$GT$$GT$17he47e727e60725938E.exit31.i", %bb.o, %bb.n
  %.sroa.32.0.ph = phi i64 [ %.sroa.734.sroa.6.sroa.5.0.i, %"_ZN4core3ptr132drop_in_place$LT$core..option..Option$LT$$LP$alloc..string..String$C$meilisearch_types..tasks..network..ImportIndexState$RP$$GT$$GT$17he47e727e60725938E.exit32.i" ], [ %.sroa.6.sroa.6.sroa.9.0.copyload.i, %"_ZN4core3ptr132drop_in_place$LT$core..option..Option$LT$$LP$alloc..string..String$C$meilisearch_types..tasks..network..ImportIndexState$RP$$GT$$GT$17he47e727e60725938E.exit31.i" ], [ %.sroa.734.sroa.6.sroa.5.0.i, %bb.o ], [ %.sroa.6.sroa.6.sroa.9.0.copyload.i, %bb.n ]
  %.sroa.29.0.ph = phi i64 [ %.sroa.734.sroa.6.sroa.0.sroa.5.sroa.5.0.i, %"_ZN4core3ptr132drop_in_place$LT$core..option..Option$LT$$LP$alloc..string..String$C$meilisearch_types..tasks..network..ImportIndexState$RP$$GT$$GT$17he47e727e60725938E.exit32.i" ], [ %.sroa.6.sroa.6.sroa.8.0.copyload.i, %"_ZN4core3ptr132drop_in_place$LT$core..option..Option$LT$$LP$alloc..string..String$C$meilisearch_types..tasks..network..ImportIndexState$RP$$GT$$GT$17he47e727e60725938E.exit31.i" ], [ %.sroa.734.sroa.6.sroa.0.sroa.5.sroa.5.0.i, %bb.o ], [ %.sroa.6.sroa.6.sroa.8.0.copyload.i, %bb.n ]
  %.sroa.26.0.ph = phi i64 [ %.sroa.734.sroa.6.sroa.0.sroa.5.sroa.0.sroa.5.0.i, %"_ZN4core3ptr132drop_in_place$LT$core..option..Option$LT$$LP$alloc..string..String$C$meilisearch_types..tasks..network..ImportIndexState$RP$$GT$$GT$17he47e727e60725938E.exit32.i" ], [ %.sroa.6.sroa.6.sroa.7.0.copyload.i, %"_ZN4core3ptr132drop_in_place$LT$core..option..Option$LT$$LP$alloc..string..String$C$meilisearch_types..tasks..network..ImportIndexState$RP$$GT$$GT$17he47e727e60725938E.exit31.i" ], [ %.sroa.734.sroa.6.sroa.0.sroa.5.sroa.0.sroa.5.0.i, %bb.o ], [ %.sroa.6.sroa.6.sroa.7.0.copyload.i, %bb.n ]
  %.sroa.23.0.ph = phi i64 [ %.sroa.734.sroa.6.sroa.0.sroa.5.sroa.0.sroa.0.sroa.5.0.i, %"_ZN4core3ptr132drop_in_place$LT$core..option..Option$LT$$LP$alloc..string..String$C$meilisearch_types..tasks..network..ImportIndexState$RP$$GT$$GT$17he47e727e60725938E.exit32.i" ], [ %.sroa.6.sroa.6.sroa.6.0.copyload.i, %"_ZN4core3ptr132drop_in_place$LT$core..option..Option$LT$$LP$alloc..string..String$C$meilisearch_types..tasks..network..ImportIndexState$RP$$GT$$GT$17he47e727e60725938E.exit31.i" ], [ %.sroa.734.sroa.6.sroa.0.sroa.5.sroa.0.sroa.0.sroa.5.0.i, %bb.o ], [ %.sroa.6.sroa.6.sroa.6.0.copyload.i, %bb.n ]
  %.sroa.20.0.ph = phi i64 [ %.sroa.734.sroa.6.sroa.0.sroa.5.sroa.0.sroa.0.sroa.0.0.i, %"_ZN4core3ptr132drop_in_place$LT$core..option..Option$LT$$LP$alloc..string..String$C$meilisearch_types..tasks..network..ImportIndexState$RP$$GT$$GT$17he47e727e60725938E.exit32.i" ], [ %.sroa.6.sroa.6.sroa.5.0.copyload.i, %"_ZN4core3ptr132drop_in_place$LT$core..option..Option$LT$$LP$alloc..string..String$C$meilisearch_types..tasks..network..ImportIndexState$RP$$GT$$GT$17he47e727e60725938E.exit31.i" ], [ %.sroa.734.sroa.6.sroa.0.sroa.5.sroa.0.sroa.0.sroa.0.0.i, %bb.o ], [ %.sroa.6.sroa.6.sroa.5.0.copyload.i, %bb.n ]
  %.sroa.17.0.ph = phi i64 [ %.sroa.734.sroa.6.sroa.0.sroa.0.0.i, %"_ZN4core3ptr132drop_in_place$LT$core..option..Option$LT$$LP$alloc..string..String$C$meilisearch_types..tasks..network..ImportIndexState$RP$$GT$$GT$17he47e727e60725938E.exit32.i" ], [ %.sroa.6.sroa.6.sroa.0.0.copyload.i, %"_ZN4core3ptr132drop_in_place$LT$core..option..Option$LT$$LP$alloc..string..String$C$meilisearch_types..tasks..network..ImportIndexState$RP$$GT$$GT$17he47e727e60725938E.exit31.i" ], [ %.sroa.734.sroa.6.sroa.0.sroa.0.0.i, %bb.o ], [ %.sroa.6.sroa.6.sroa.0.0.copyload.i, %bb.n ]
  %.sroa.14.0.ph = phi i64 [ %.sroa.734.sroa.5.0.i, %"_ZN4core3ptr132drop_in_place$LT$core..option..Option$LT$$LP$alloc..string..String$C$meilisearch_types..tasks..network..ImportIndexState$RP$$GT$$GT$17he47e727e60725938E.exit32.i" ], [ %.sroa.6.sroa.5.0.copyload.i, %"_ZN4core3ptr132drop_in_place$LT$core..option..Option$LT$$LP$alloc..string..String$C$meilisearch_types..tasks..network..ImportIndexState$RP$$GT$$GT$17he47e727e60725938E.exit31.i" ], [ %.sroa.734.sroa.5.0.i, %bb.o ], [ %.sroa.6.sroa.5.0.copyload.i, %bb.n ]
  %.sroa.11.0.ph = phi ptr [ %.sroa.734.sroa.0.0.i, %"_ZN4core3ptr132drop_in_place$LT$core..option..Option$LT$$LP$alloc..string..String$C$meilisearch_types..tasks..network..ImportIndexState$RP$$GT$$GT$17he47e727e60725938E.exit32.i" ], [ %.sroa.6.sroa.0.0.copyload.i, %"_ZN4core3ptr132drop_in_place$LT$core..option..Option$LT$$LP$alloc..string..String$C$meilisearch_types..tasks..network..ImportIndexState$RP$$GT$$GT$17he47e727e60725938E.exit31.i" ], [ %.sroa.734.sroa.0.0.i, %bb.o ], [ %.sroa.6.sroa.0.0.copyload.i, %bb.n ]
  %.sroa.8.0.ph = phi i64 [ %.sroa.0.0.i, %"_ZN4core3ptr132drop_in_place$LT$core..option..Option$LT$$LP$alloc..string..String$C$meilisearch_types..tasks..network..ImportIndexState$RP$$GT$$GT$17he47e727e60725938E.exit32.i" ], [ %.sroa.05.0.copyload.i, %"_ZN4core3ptr132drop_in_place$LT$core..option..Option$LT$$LP$alloc..string..String$C$meilisearch_types..tasks..network..ImportIndexState$RP$$GT$$GT$17he47e727e60725938E.exit31.i" ], [ %.sroa.0.0.i, %bb.o ], [ %.sroa.05.0.copyload.i, %bb.n ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br label %_ZN17meilisearch_types5tasks7network24merge_import_index_state17h5063d7f7fe97dde6E.exit.i.thread173

"_ZN106_$LT$itertools..merge_join..MergeBy$LT$I$C$J$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hb8107439c250d3faE.exit": ; preds = %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  %.not = icmp eq i64 %.sroa.05.0.copyload.i, -9223372036854775806
  br i1 %.not, label %bb.ak, label %bb.u

bb.u:                                             ; preds = %"_ZN106_$LT$itertools..merge_join..MergeBy$LT$I$C$J$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hb8107439c250d3faE.exit"
  %i.aj = ptrtoint ptr %.sroa.6.sroa.0.0.copyload.i to i64
  %i.ak = inttoptr i64 %.sroa.6.sroa.5.0.copyload.i to ptr
  %i.al = icmp sgt i64 %.sroa.05.0.copyload.i, -1
  br i1 %i.al, label %bb.v, label %_ZN17meilisearch_types5tasks7network24merge_import_index_state17h5063d7f7fe97dde6E.exit.i.thread173

bb.v:                                             ; preds = %bb.u
  %i.am = inttoptr i64 %.sroa.6.sroa.6.sroa.5.0.copyload.i to ptr ; 9 uses
  %i.an = inttoptr i64 %.sroa.734.sroa.6.sroa.0.sroa.5.sroa.0.sroa.0.sroa.0.0.i to ptr ; 13 uses
  %.not12.i.i = icmp eq i64 %.sroa.734.sroa.6.sroa.0.sroa.0.0.i, -9223372036854775808
  %i.ao = icmp eq i64 %.sroa.6.sroa.6.sroa.0.0.copyload.i, -9223372036854775808 ; 2 uses
  br i1 %.not12.i.i, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  br i1 %i.ao, label %_ZN17meilisearch_types5tasks7network24merge_import_index_state17h5063d7f7fe97dde6E.exit.i.thread, label %bb.y

bb.x:                                             ; preds = %bb.v
  br i1 %i.ao, label %bb.af, label %bb.ab

.split186:                                        ; preds = %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h2f311caa53e1a78fE.exit.i.i.i22.i.i"
  %i.ap = shl nuw i64 %.sroa.734.sroa.6.sroa.0.sroa.0.0.i, 5
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.an, i64 noundef %i.ap, i64 noundef range(i64 1, -9223372036854775807) 8) #52, !noalias !1094
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1095
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !1095
  br label %_ZN17meilisearch_types5tasks7network24merge_import_index_state17h5063d7f7fe97dde6E.exit.i.thread

bb.y:                                             ; preds = %bb.w
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.am) ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1096)
  %i.aq = icmp eq i64 %.sroa.6.sroa.6.sroa.6.0.copyload.i, 0
  br i1 %i.aq, label %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h2f311caa53e1a78fE.exit.i.i.i.i.i.thread", label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %bb.y, %"_ZN4core3ptr58drop_in_place$LT$roaring..bitmap..container..Container$GT$17hde54ddd38f3ee1c0E.exit.i.i.i.i.i.i.i"
  %.sroa.0.010.i.i.i.i.i.i.i = phi i64 [ %i.as, %"_ZN4core3ptr58drop_in_place$LT$roaring..bitmap..container..Container$GT$17hde54ddd38f3ee1c0E.exit.i.i.i.i.i.i.i" ], [ 0, %bb.y ] ; 2 uses
  %i.ar = getelementptr inbounds nuw [32 x i8], ptr %i.am, i64 %.sroa.0.010.i.i.i.i.i.i.i ; 2 uses
  %i.as = add nuw i64 %.sroa.0.010.i.i.i.i.i.i.i, 1 ; 2 uses
  %.val8.i.i.i.i.i.i.i = load i64, ptr %i.ar, align 8, !range !25, !alias.scope !1096, !noalias !1097, !noundef !21 ; 2 uses
  %i.at = getelementptr i8, ptr %i.ar, i64 8
  %.val9.i.i.i.i.i.i.i = load ptr, ptr %i.at, align 8, !alias.scope !1096, !noalias !1097 ; 4 uses
  switch i64 %.val8.i.i.i.i.i.i.i, label %bb.z [
    i64 -9223372036854775808, label %bb.aa
    i64 0, label %"_ZN4core3ptr58drop_in_place$LT$roaring..bitmap..container..Container$GT$17hde54ddd38f3ee1c0E.exit.i.i.i.i.i.i.i"
  ]

bb.z:                                             ; preds = %.lr.ph.i.i.i.i.i.i.i
  %i.au = shl nuw i64 %.val8.i.i.i.i.i.i.i, 1
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val9.i.i.i.i.i.i.i) ]
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val9.i.i.i.i.i.i.i, i64 noundef %i.au, i64 noundef range(i64 1, -9223372036854775807) 2) #52, !noalias !1098
  br label %"_ZN4core3ptr58drop_in_place$LT$roaring..bitmap..container..Container$GT$17hde54ddd38f3ee1c0E.exit.i.i.i.i.i.i.i"

bb.aa:                                            ; preds = %.lr.ph.i.i.i.i.i.i.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val9.i.i.i.i.i.i.i) ]
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val9.i.i.i.i.i.i.i, i64 noundef 8192, i64 noundef 8) #52, !noalias !1098
  br label %"_ZN4core3ptr58drop_in_place$LT$roaring..bitmap..container..Container$GT$17hde54ddd38f3ee1c0E.exit.i.i.i.i.i.i.i"

"_ZN4core3ptr58drop_in_place$LT$roaring..bitmap..container..Container$GT$17hde54ddd38f3ee1c0E.exit.i.i.i.i.i.i.i": ; preds = %bb.aa, %bb.z, %.lr.ph.i.i.i.i.i.i.i
  %i.av = icmp eq i64 %i.as, %.sroa.6.sroa.6.sroa.6.0.copyload.i
  br i1 %i.av, label %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h2f311caa53e1a78fE.exit.i.i.i.i.i", label %.lr.ph.i.i.i.i.i.i.i

"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h2f311caa53e1a78fE.exit.i.i.i.i.i": ; preds = %"_ZN4core3ptr58drop_in_place$LT$roaring..bitmap..container..Container$GT$17hde54ddd38f3ee1c0E.exit.i.i.i.i.i.i.i"
  %i.aw = icmp eq i64 %.sroa.6.sroa.6.sroa.0.0.copyload.i, 0
  br i1 %i.aw, label %_ZN17meilisearch_types5tasks7network24merge_import_index_state17h5063d7f7fe97dde6E.exit.i.thread, label %.split185

"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h2f311caa53e1a78fE.exit.i.i.i.i.i.thread": ; preds = %bb.y
  %i.ax = icmp eq i64 %.sroa.6.sroa.6.sroa.0.0.copyload.i, 0
  br i1 %i.ax, label %_ZN17meilisearch_types5tasks7network24merge_import_index_state17h5063d7f7fe97dde6E.exit.i.thread, label %.split185.thread

.split185.thread:                                 ; preds = %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h2f311caa53e1a78fE.exit.i.i.i.i.i.thread"
  %i.ay = shl nuw i64 %.sroa.6.sroa.6.sroa.0.0.copyload.i, 5
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.am, i64 noundef %i.ay, i64 noundef range(i64 1, -9223372036854775807) 8) #52, !noalias !1097
  br label %_ZN17meilisearch_types5tasks7network24merge_import_index_state17h5063d7f7fe97dde6E.exit.i.thread

.split185:                                        ; preds = %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h2f311caa53e1a78fE.exit.i.i.i.i.i"
  %i.az = shl nuw i64 %.sroa.6.sroa.6.sroa.0.0.copyload.i, 5
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.am, i64 noundef %i.az, i64 noundef range(i64 1, -9223372036854775807) 8) #52, !noalias !1097
  br label %_ZN17meilisearch_types5tasks7network24merge_import_index_state17h5063d7f7fe97dde6E.exit.i.thread

.body.i:                                          ; preds = %bb.ab
  %i.ba = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call fastcc void @"_ZN4core3ptr64drop_in_place$LT$meilisearch_types..tasks..network..TaskKeys$GT$17hf180d416fcaf96ebE"(ptr noalias noundef align 8 dereferenceable(24) %i.a) #55, !noalias !1095
  call fastcc void @"_ZN4core3ptr64drop_in_place$LT$meilisearch_types..tasks..network..TaskKeys$GT$17hf180d416fcaf96ebE"(ptr noalias noundef align 8 dereferenceable(24) %i.b) #55, !noalias !1095
  %i.bb = icmp eq i64 %.sroa.05.0.copyload.i, 0
  br i1 %i.bb, label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17hfb8d17e84375b72dE.exit.thread.i", label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17hfb8d17e84375b72dE.exit.i"

bb.ab:                                            ; preds = %bb.x
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !1095
  store i64 %.sroa.6.sroa.6.sroa.0.0.copyload.i, ptr %i.b, align 8, !noalias !1095
  %.sroa.8.0..sroa_idx40.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  store ptr %i.am, ptr %.sroa.8.0..sroa_idx40.i.i, align 8, !noalias !1095
  %.sroa.9.0..sroa_idx44.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  store i64 %.sroa.6.sroa.6.sroa.6.0.copyload.i, ptr %.sroa.9.0..sroa_idx44.i.i, align 8, !noalias !1095
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1095
  store i64 %.sroa.734.sroa.6.sroa.0.sroa.0.0.i, ptr %i.a, align 8, !noalias !1095
  %.sroa.19.48..sroa_idx57.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %i.an, ptr %.sroa.19.48..sroa_idx57.i.i, align 8, !noalias !1095
  %.sroa.20.48..sroa_idx61.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i64 %.sroa.734.sroa.6.sroa.0.sroa.5.sroa.0.sroa.0.sroa.5.0.i, ptr %.sroa.20.48..sroa_idx61.i.i, align 8, !noalias !1095
  invoke void @"_ZN7roaring6bitmap3ops130_$LT$impl$u20$core..ops..bit..BitOrAssign$LT$$RF$roaring..bitmap..RoaringBitmap$GT$$u20$for$u20$roaring..bitmap..RoaringBitmap$GT$12bitor_assign17hc5985bbf05dcee8fE"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.b, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.a)
          to label %bb.ac unwind label %.body.i, !noalias !1095

bb.ac:                                            ; preds = %bb.ab
end_hunk_0
begin_hunk_1_@"_ZN12convert_case23StateConverter$LT$T$GT$7to_case17h76d3c943c5df6913E":bb.a

.loopexit.i.i.i.i.i.i:                            ; preds = %_ZN20unicode_segmentation8grapheme14GraphemeCursor11is_boundary17hae8161473e824145E.exit.thread.i.i.i.i.i.i.i.i.i, %.loopexit.sink.split.i.i.i.i.i.i
  %i.oq = load i64, ptr %.sroa.2.0..sroa_idx27.i.i.i, align 8, !alias.scope !4230, !noalias !4218, !noundef !21 ; 11 uses
  %i.or = load ptr, ptr %.sroa.3328.144..sroa.4.0..sroa_idx33.i.sroa_idx.i.i, align 8, !alias.scope !4227, !noalias !4218, !nonnull !21, !align !37, !noundef !21 ; 8 uses
  %i.os = load i64, ptr %.sroa.34.144..sroa.4.0..sroa_idx33.i.sroa_idx.i.i, align 8, !alias.scope !4227, !noalias !4218, !noundef !21 ; 9 uses
  %.not.i.i.i.i.i.i.i.i.i = icmp ugt i64 %i.t, %i.oq
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %.invoke.i.i.i, label %bb.cc

bb.cc:                                            ; preds = %.loopexit.i.i.i.i.i.i
  br i1 %i.y, label %bb.ce, label %bb.cd

bb.cd:                                            ; preds = %bb.cc
  %.not5.i.i.i.i.i.i.i.i.i = icmp ult i64 %i.t, %i.os
  br i1 %.not5.i.i.i.i.i.i.i.i.i, label %bb.cf, label %.split.i.i.i.i.i.i.i.i.i

bb.ce:                                            ; preds = %bb.cf, %.split.i.i.i.i.i.i.i.i.i, %bb.cc
  %i.ot = icmp eq i64 %i.oq, 0
  br i1 %i.ot, label %bb.ci, label %bb.cg

.split.i.i.i.i.i.i.i.i.i:                         ; preds = %bb.cd
  %i.ou = icmp eq i64 %i.t, %i.os
  br i1 %i.ou, label %bb.ce, label %.invoke.i.i.i

bb.cf:                                            ; preds = %bb.cd
  %i.ov = getelementptr inbounds nuw i8, ptr %i.or, i64 %i.t
  %i.ow = load i8, ptr %i.ov, align 1, !alias.scope !4265, !noalias !4232, !noundef !21
  %i.ox = icmp sgt i8 %i.ow, -65
  br i1 %i.ox, label %bb.ce, label %.invoke.i.i.i

bb.cg:                                            ; preds = %bb.ce
  %.not6.i.i.i.i.i.i.i.i.i = icmp ult i64 %i.oq, %i.os
  br i1 %.not6.i.i.i.i.i.i.i.i.i, label %bb.ch, label %.split7.i.i.i.i.i.i.i.i.i

.split7.i.i.i.i.i.i.i.i.i:                        ; preds = %bb.cg
  %i.oy = icmp eq i64 %i.oq, %i.os
  br i1 %i.oy, label %bb.ci, label %.invoke.i.i.i

bb.ch:                                            ; preds = %bb.cg
  %i.oz = getelementptr inbounds nuw i8, ptr %i.or, i64 %i.oq
  %i.pa = load i8, ptr %i.oz, align 1, !alias.scope !4265, !noalias !4232, !noundef !21
  %i.pb = icmp sgt i8 %i.pa, -65
  br i1 %i.pb, label %bb.ci, label %.invoke.i.i.i

.invoke371.i.i.i:                                 ; preds = %bb.b, %.noexc10.i.i.i, %_ZN4core3str11validations23next_code_point_reverse17hc5e0bd5d04067ad4E.exit.i.i.i.i.i.i.i.i.i.i, %bb.ar, %_ZN4core3str11validations15next_code_point17h71b2f9215449a10eE.exit.i.i.i.i.i.i.i.i.i.i, %bb.al
  %i.pc = phi ptr [ @931, %.noexc10.i.i.i ], [ @930, %_ZN4core3str11validations23next_code_point_reverse17hc5e0bd5d04067ad4E.exit.i.i.i.i.i.i.i.i.i.i ], [ @928, %_ZN4core3str11validations15next_code_point17h71b2f9215449a10eE.exit.i.i.i.i.i.i.i.i.i.i ], [ @928, %bb.al ], [ @930, %bb.ar ], [ @19, %bb.b ]
  invoke void @_ZN4core6option13unwrap_failed17h13b3e6f702cb1c04E(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.pc) #57
          to label %.cont372.i.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !4235

.cont372.i.i.i:                                   ; preds = %.invoke371.i.i.i
  unreachable

.invoke.i.i.i:                                    ; preds = %bb.ch, %.split7.i.i.i.i.i.i.i.i.i, %bb.cf, %.split.i.i.i.i.i.i.i.i.i, %.loopexit.i.i.i.i.i.i, %bb.e, %.split.i.i.i.i.i.i.i.i.i.i, %bb.bw, %.split.i73.i.i.i.i.i.i.i.i.i.i, %bb.bi, %.split.i69.i.i.i.i.i.i.i.i.i.i, %bb.bg, %.split.i65.i.i.i.i.i.i.i.i.i.i, %bb.at, %.split.i61.i.i.i.i.i.i.i.i.i.i, %bb.ak, %.split.i.i.i.i.i.i.i.i.i.i.i
  %i.pd = phi ptr [ %i.u, %bb.bw ], [ %i.u, %.split.i.i.i.i.i.i.i.i.i.i.i ], [ %i.u, %bb.ak ], [ %i.u, %.split.i61.i.i.i.i.i.i.i.i.i.i ], [ %i.u, %bb.at ], [ %i.u, %.split.i65.i.i.i.i.i.i.i.i.i.i ], [ %i.u, %bb.bg ], [ %i.u, %.split.i69.i.i.i.i.i.i.i.i.i.i ], [ %i.u, %bb.bi ], [ %i.u, %.split.i73.i.i.i.i.i.i.i.i.i.i ], [ %i.u, %bb.e ], [ %i.u, %.split.i.i.i.i.i.i.i.i.i.i ], [ %i.or, %.loopexit.i.i.i.i.i.i ], [ %i.or, %.split.i.i.i.i.i.i.i.i.i ], [ %i.or, %bb.cf ], [ %i.or, %.split7.i.i.i.i.i.i.i.i.i ], [ %i.or, %bb.ch ]
  %i.pe = phi i64 [ %i.v, %bb.bw ], [ %i.v, %.split.i.i.i.i.i.i.i.i.i.i.i ], [ %i.v, %bb.ak ], [ %i.v, %.split.i61.i.i.i.i.i.i.i.i.i.i ], [ %i.v, %bb.at ], [ %i.v, %.split.i65.i.i.i.i.i.i.i.i.i.i ], [ %i.v, %bb.bg ], [ %i.v, %.split.i69.i.i.i.i.i.i.i.i.i.i ], [ %i.v, %bb.bi ], [ %i.v, %.split.i73.i.i.i.i.i.i.i.i.i.i ], [ %i.v, %bb.e ], [ %i.v, %.split.i.i.i.i.i.i.i.i.i.i ], [ %i.os, %.loopexit.i.i.i.i.i.i ], [ %i.os, %.split.i.i.i.i.i.i.i.i.i ], [ %i.os, %bb.cf ], [ %i.os, %.split7.i.i.i.i.i.i.i.i.i ], [ %i.os, %bb.ch ]
  %i.pf = phi i64 [ 0, %bb.bw ], [ 0, %.split.i73.i.i.i.i.i.i.i.i.i.i ], [ 0, %bb.bi ], [ 0, %.split.i69.i.i.i.i.i.i.i.i.i.i ], [ 0, %bb.bg ], [ 0, %.split.i65.i.i.i.i.i.i.i.i.i.i ], [ 0, %bb.at ], [ 0, %.split.i61.i.i.i.i.i.i.i.i.i.i ], [ %i.fu, %bb.ak ], [ %i.fu, %.split.i.i.i.i.i.i.i.i.i.i.i ], [ %i.t, %.split.i.i.i.i.i.i.i.i.i.i ], [ %i.t, %bb.e ], [ %i.t, %.loopexit.i.i.i.i.i.i ], [ %i.t, %.split.i.i.i.i.i.i.i.i.i ], [ %i.t, %bb.cf ], [ %i.t, %.split7.i.i.i.i.i.i.i.i.i ], [ %i.t, %bb.ch ]
  %i.pg = phi i64 [ %i.fu, %bb.bw ], [ %i.fu, %.split.i73.i.i.i.i.i.i.i.i.i.i ], [ %i.fu, %bb.bi ], [ %i.fu, %.split.i69.i.i.i.i.i.i.i.i.i.i ], [ %i.fu, %bb.bg ], [ %i.fu, %.split.i65.i.i.i.i.i.i.i.i.i.i ], [ %i.fu, %bb.at ], [ %i.fu, %.split.i61.i.i.i.i.i.i.i.i.i.i ], [ %i.v, %bb.ak ], [ %i.v, %.split.i.i.i.i.i.i.i.i.i.i.i ], [ %i.v, %bb.e ], [ %i.v, %.split.i.i.i.i.i.i.i.i.i.i ], [ %i.oq, %.loopexit.i.i.i.i.i.i ], [ %i.oq, %.split.i.i.i.i.i.i.i.i.i ], [ %i.oq, %bb.cf ], [ %i.oq, %.split7.i.i.i.i.i.i.i.i.i ], [ %i.oq, %bb.ch ]
  %i.ph = phi ptr [ @933, %bb.bw ], [ @933, %.split.i73.i.i.i.i.i.i.i.i.i.i ], [ @934, %bb.bi ], [ @934, %.split.i69.i.i.i.i.i.i.i.i.i.i ], [ @932, %bb.bg ], [ @932, %.split.i65.i.i.i.i.i.i.i.i.i.i ], [ @929, %bb.at ], [ @929, %.split.i61.i.i.i.i.i.i.i.i.i.i ], [ @927, %bb.ak ], [ @927, %.split.i.i.i.i.i.i.i.i.i.i.i ], [ @935, %bb.e ], [ @935, %.split.i.i.i.i.i.i.i.i.i.i ], [ @20, %.loopexit.i.i.i.i.i.i ], [ @20, %.split.i.i.i.i.i.i.i.i.i ], [ @20, %bb.cf ], [ @20, %.split7.i.i.i.i.i.i.i.i.i ], [ @20, %bb.ch ]
  invoke void @_ZN4core3str16slice_error_fail17h34415ed9969dc080E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.pd, i64 noundef %i.pe, i64 noundef %i.pf, i64 noundef %i.pg, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ph) #57
          to label %.cont.i.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !4235

.cont.i.i.i:                                      ; preds = %.invoke.i.i.i
  unreachable

bb.ci:                                            ; preds = %bb.ch, %.split7.i.i.i.i.i.i.i.i.i, %bb.ce
  %i.pi = sub nuw i64 %i.oq, %i.t
  %i.pj = getelementptr inbounds nuw i8, ptr %i.or, i64 %i.t ; 2 uses
  %i.pk = ptrtoint ptr %i.pj to i64
  %i.pl = load i64, ptr %.sroa.35.144..sroa.4.0..sroa_idx33.i.sroa_idx.i.i, align 8, !alias.scope !4266, !noalias !4218, !noundef !21
  %i.pm = sub i64 %i.pk, %i.pl
  %i.pn = load i64, ptr %.sroa.6.0..sroa_idx5.i.i.i.i, align 8, !alias.scope !4267, !noalias !4268, !noundef !21 ; 3 uses
  %i.po = load i64, ptr %i.e, align 8, !range !22, !alias.scope !4267, !noalias !4268, !noundef !21
  %i.pp = icmp eq i64 %i.pn, %i.po
  br i1 %i.pp, label %bb.cj, label %"_ZN93_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..collect..Extend$LT$T$GT$$GT$10extend_one17h886807a1d0f95b1aE.exit.i.i.i.i.i.i.i"

bb.cj:                                            ; preds = %bb.ci
  invoke void @"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$8grow_one17h98d18e9c5a3a45a6E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.e, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1061)
          to label %"_ZN93_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..collect..Extend$LT$T$GT$$GT$10extend_one17h886807a1d0f95b1aE.exit.i.i.i.i.i.i.i" unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !4235

"_ZN93_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..collect..Extend$LT$T$GT$$GT$10extend_one17h886807a1d0f95b1aE.exit.i.i.i.i.i.i.i": ; preds = %bb.cj, %bb.ci
  %i.pq = load ptr, ptr %.sroa.5.0..sroa_idx3.i.i.i.i, align 8, !alias.scope !4267, !noalias !4268, !nonnull !21, !noundef !21
  %i.pr = getelementptr inbounds nuw [8 x i8], ptr %i.pq, i64 %i.pn
  store i64 %i.pm, ptr %i.pr, align 8, !noalias !4269
  %i.ps = add i64 %i.pn, 1
  store i64 %i.ps, ptr %.sroa.6.0..sroa_idx5.i.i.i.i, align 8, !alias.scope !4267, !noalias !4268
  %i.pt = load i64, ptr %.sroa.3.0..sroa_idx.i.i.i.i, align 8, !alias.scope !4270, !noalias !4268, !noundef !21 ; 7 uses
  %i.pu = load i64, ptr %i.qg, align 8, !range !22, !alias.scope !4270, !noalias !4268, !noundef !21
  %i.pv = icmp eq i64 %i.pt, %i.pu
  br i1 %i.pv, label %bb.ck, label %"_ZN4core4iter6traits7collect22default_extend_tuple_b6extend28_$u7b$$u7b$closure$u7d$$u7d$17hb6dd365c3e69d9dbE.exit.i.i.i.i.i.i"

bb.ck:                                            ; preds = %"_ZN93_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..collect..Extend$LT$T$GT$$GT$10extend_one17h886807a1d0f95b1aE.exit.i.i.i.i.i.i.i"
  invoke void @"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$8grow_one17h19b0ca4e4289fc08E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.qg, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @1061)
          to label %"_ZN4core4iter6traits7collect22default_extend_tuple_b6extend28_$u7b$$u7b$closure$u7d$$u7d$17hb6dd365c3e69d9dbE.exit.i.i.i.i.i.i" unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !4235

"_ZN4core4iter6traits7collect22default_extend_tuple_b6extend28_$u7b$$u7b$closure$u7d$$u7d$17hb6dd365c3e69d9dbE.exit.i.i.i.i.i.i": ; preds = %bb.ck, %"_ZN93_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..collect..Extend$LT$T$GT$$GT$10extend_one17h886807a1d0f95b1aE.exit.i.i.i.i.i.i.i"
  %i.pw = load ptr, ptr %.sroa.2.0..sroa_idx.i.i.i.i, align 8, !alias.scope !4270, !noalias !4268, !nonnull !21, !noundef !21
  %i.px = getelementptr inbounds nuw [16 x i8], ptr %i.pw, i64 %i.pt ; 2 uses
  store ptr %i.pj, ptr %i.px, align 8, !noalias !4271
  %i.py = getelementptr inbounds nuw i8, ptr %i.px, i64 8
  store i64 %i.pi, ptr %i.py, align 8, !noalias !4269
  %i.pz = add i64 %i.pt, 1                        ; 4 uses
  store i64 %i.pz, ptr %.sroa.3.0..sroa_idx.i.i.i.i, align 8, !alias.scope !4270, !noalias !4268
  %i.qa = load i64, ptr %.sroa.2.0..sroa_idx27.i.i.i, align 8, !alias.scope !4272, !noalias !4218, !noundef !21 ; 2 uses
  %i.qb = load i64, ptr %.sroa.330.0..sroa_idx31.i.i.i, align 8, !alias.scope !4272, !noalias !4218, !noundef !21
  %i.qc = icmp eq i64 %i.qa, %i.qb
  br i1 %i.qc, label %bb.cp, label %bb.b

bb.cl:                                            ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !4273
  store i64 0, ptr %i.g, align 8, !noalias !4273
  %i.qd = getelementptr inbounds nuw i8, ptr %i.g, i64 8 ; 5 uses
  store ptr inttoptr (i64 8 to ptr), ptr %i.qd, align 8, !noalias !4273
  %i.qe = getelementptr inbounds nuw i8, ptr %i.g, i64 16 ; 5 uses
  store i64 0, ptr %i.qe, align 8, !noalias !4273
  %i.qf = ptrtoint ptr %.val.i.i.i to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !4235
  store i64 0, ptr %i.e, align 8, !alias.scope !4274, !noalias !4235
  %.sroa.5.0..sroa_idx3.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 4 uses
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.5.0..sroa_idx3.i.i.i.i, align 8, !alias.scope !4274, !noalias !4235
  %.sroa.6.0..sroa_idx5.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 16 ; 4 uses
  %.sroa.2.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 32 ; 4 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6.0..sroa_idx5.i.i.i.i, i8 0, i64 16, i1 false), !alias.scope !4274, !noalias !4235
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.2.0..sroa_idx.i.i.i.i, align 8, !alias.scope !4274, !noalias !4235
  %.sroa.3.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 40 ; 4 uses
  store i64 0, ptr %.sroa.3.0..sroa_idx.i.i.i.i, align 8, !alias.scope !4274, !noalias !4235
  %i.qg = getelementptr inbounds nuw i8, ptr %i.e, i64 24 ; 6 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !4275)
  call void @llvm.experimental.noalias.scope.decl(metadata !4276)
  call void @llvm.experimental.noalias.scope.decl(metadata !4277)
  call void @llvm.experimental.noalias.scope.decl(metadata !4278)
  invoke fastcc void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$7reserve21do_reserve_and_handle17h45307a5a03ebcc73E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.e, i64 noundef 0, i64 noundef range(i64 1, 0) 1, i64 noundef 8, i64 noundef 8)
          to label %"_ZN93_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..collect..Extend$LT$T$GT$$GT$14extend_reserve17h455672f37e2a12c4E.exit.i.i.i.i.i" unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !4235

"_ZN93_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..collect..Extend$LT$T$GT$$GT$14extend_reserve17h455672f37e2a12c4E.exit.i.i.i.i.i": ; preds = %bb.cl
  %i.qh = load i64, ptr %.sroa.3.0..sroa_idx.i.i.i.i, align 8, !alias.scope !4279, !noalias !4235, !noundef !21 ; 2 uses
  %i.qi = load i64, ptr %i.qg, align 8, !range !22, !alias.scope !4279, !noalias !4235, !noundef !21
  %i.qj = icmp eq i64 %i.qi, %i.qh
  br i1 %i.qj, label %bb.cm, label %.lr.ph.i.i.i.i.i.i, !prof !23

bb.cm:                                            ; preds = %"_ZN93_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..collect..Extend$LT$T$GT$$GT$14extend_reserve17h455672f37e2a12c4E.exit.i.i.i.i.i"
  invoke fastcc void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$7reserve21do_reserve_and_handle17h45307a5a03ebcc73E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.qg, i64 noundef %i.qh, i64 noundef range(i64 1, 0) 1, i64 noundef 8, i64 noundef 16)
          to label %.lr.ph.i.i.i.i.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !4235

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.bx, %bb.by, %bb.q, %_ZN4core3str11validations15next_code_point17h71b2f9215449a10eE.exit43.thread177.i.i.i.i.i.i.i.i.i, %_ZN4core3str11validations15next_code_point17h71b2f9215449a10eE.exit.thread128.i.i.i.i.i.i.i.i.i.i, %.thread.i.i.i.i.i.i.i.i.i.i, %bb.bs, %bb.cb, %bb.ck, %bb.cj, %bb.cm, %bb.cl, %.invoke.i.i.i, %.invoke371.i.i.i, %.loopexit.i.i.i.i.i.i.i.i, %bb.ca
  %lpad.loopexit.split-lp383 = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !4280)
  %.val4.i.i.i = load i64, ptr %i.e, align 8, !alias.scope !4280, !noalias !4235 ; 2 uses
  %i.qk = icmp eq i64 %.val4.i.i.i, 0
  br i1 %i.qk, label %"_ZN4core3ptr49drop_in_place$LT$alloc..vec..Vec$LT$usize$GT$$GT$17h454eb726d1dd9b22E.exit.i.i.i", label %bb.cn

bb.cn:                                            ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp
  %.val5.i.i.i = load ptr, ptr %.sroa.5.0..sroa_idx3.i.i.i.i, align 8, !alias.scope !4280, !noalias !4235, !nonnull !21, !noundef !21
  %i.ql = shl nuw i64 %.val4.i.i.i, 3
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val5.i.i.i, i64 noundef %i.ql, i64 noundef range(i64 1, -9223372036854775807) 8) #52, !noalias !4281
  br label %"_ZN4core3ptr49drop_in_place$LT$alloc..vec..Vec$LT$usize$GT$$GT$17h454eb726d1dd9b22E.exit.i.i.i"

"_ZN4core3ptr49drop_in_place$LT$alloc..vec..Vec$LT$usize$GT$$GT$17h454eb726d1dd9b22E.exit.i.i.i": ; preds = %bb.cn, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp
  %.val.i104.i.i = load i64, ptr %i.qg, align 8, !alias.scope !4280, !noalias !4235 ; 2 uses
  %i.qm = icmp eq i64 %.val.i104.i.i, 0
  br i1 %i.qm, label %.thread.i.i, label %bb.co

bb.co:                                            ; preds = %"_ZN4core3ptr49drop_in_place$LT$alloc..vec..Vec$LT$usize$GT$$GT$17h454eb726d1dd9b22E.exit.i.i.i"
  %.val1.i105.i.i = load ptr, ptr %.sroa.2.0..sroa_idx.i.i.i.i, align 8, !alias.scope !4280, !noalias !4235, !nonnull !21, !noundef !21
  %i.qn = shl nuw i64 %.val.i104.i.i, 4
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i105.i.i, i64 noundef %i.qn, i64 noundef range(i64 1, -9223372036854775807) 8) #52, !noalias !4281
  br label %.thread.i.i

bb.cp:                                            ; preds = %"_ZN4core4iter6traits7collect22default_extend_tuple_b6extend28_$u7b$$u7b$closure$u7d$$u7d$17hb6dd365c3e69d9dbE.exit.i.i.i.i.i.i"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !4218
  %.sroa.010.0.copyload11.i.i = load i64, ptr %i.e, align 8, !noalias !4282 ; 4 uses
  %.sroa.4.0.copyload.i.i = load ptr, ptr %.sroa.5.0..sroa_idx3.i.i.i.i, align 8, !noalias !4282 ; 7 uses
  %.sroa.512.0.copyload.i.i = load i64, ptr %.sroa.6.0..sroa_idx5.i.i.i.i, align 8, !noalias !4282 ; 4 uses
  %.sroa.6.0.copyload.i.i = load i64, ptr %i.qg, align 8, !noalias !4282 ; 4 uses
  %.sroa.7.0.copyload.i.i = load ptr, ptr %.sroa.2.0..sroa_idx.i.i.i.i, align 8, !noalias !4282 ; 6 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !4235
  %i.qo = icmp ult i64 %i.pz, 576460752303423488
  call void @llvm.assume(i1 %i.qo)
  %i.qp = icmp ult i64 %i.pt, %.sroa.512.0.copyload.i.i
  br i1 %i.qp, label %.split.lr.ph.i.i, label %bb.cq

bb.cq:                                            ; preds = %bb.cp
  invoke void @_ZN4core9panicking18panic_bounds_check17hbc09f5d79f1a5789E(i64 noundef %i.pt, i64 noundef %.sroa.512.0.copyload.i.i, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @111) #57
          to label %bb.cs unwind label %.body93.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !4273

.body93.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.da, %bb.ds, %.invoke.i.i, %bb.cv, %bb.cq
  %lpad.loopexit.split-lp360 = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.qq = icmp eq i64 %.sroa.6.0.copyload.i.i, 0
  br i1 %i.qq, label %"_ZN4core3ptr51drop_in_place$LT$alloc..vec..Vec$LT$$RF$str$GT$$GT$17h58378993665cf9eaE.exit.i.i", label %bb.cr

bb.cr:                                            ; preds = %.body93.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp
  %i.qr = shl nuw i64 %.sroa.6.0.copyload.i.i, 4
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.7.0.copyload.i.i) ]
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.7.0.copyload.i.i, i64 noundef %i.qr, i64 noundef range(i64 1, -9223372036854775807) 8) #52, !noalias !4273
  br label %"_ZN4core3ptr51drop_in_place$LT$alloc..vec..Vec$LT$$RF$str$GT$$GT$17h58378993665cf9eaE.exit.i.i"

bb.cs:                                            ; preds = %bb.cq
  unreachable

.split.lr.ph.i.i:                                 ; preds = %bb.cp
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.7.0.copyload.i.i), "nonnull"(ptr %.sroa.4.0.copyload.i.i) ]
  %i.qs = getelementptr inbounds nuw [8 x i8], ptr %.sroa.4.0.copyload.i.i, i64 %i.pt
  %i.qt = load i64, ptr %i.qs, align 8, !noalias !4273, !noundef !21
  %i.qu = getelementptr inbounds nuw [16 x i8], ptr %.sroa.7.0.copyload.i.i, i64 %i.pt
  %i.qv = getelementptr inbounds nuw i8, ptr %i.qu, i64 8
  %i.qw = load i64, ptr %i.qv, align 8, !noalias !4273, !noundef !21
  %i.qx = add i64 %i.qw, %i.qt                    ; 2 uses
  %.idx.i.i = mul nuw nsw i64 %i.q, 48
  %i.qy = getelementptr inbounds nuw i8, ptr %i.o, i64 %.idx.i.i
  %i.qz = icmp eq i64 %i.q, 0                     ; 2 uses
  %.sroa.060.1.idx147.i.i = select i1 %i.qz, i64 0, i64 48
  %.sroa.060.1148.i.i = getelementptr inbounds nuw i8, ptr %i.o, i64 %.sroa.060.1.idx147.i.i
  br i1 %i.qz, label %._crit_edge.thread.i.i, label %.split.i.i

.split.i.i:                                       ; preds = %.split.lr.ph.i.i, %..loopexit_crit_edge.i.i
  %.sroa.058.1154.i.i = phi i64 [ %.sroa.058.1.i.i, %..loopexit_crit_edge.i.i ], [ 1, %.split.lr.ph.i.i ] ; 3 uses
  %.sroa.0.0153.i.i = phi i64 [ %.sroa.0.1.i.i, %..loopexit_crit_edge.i.i ], [ 0, %.split.lr.ph.i.i ] ; 13 uses
  %.sroa.058.0152.i.i = phi i64 [ %.sroa.058.1154.i.i, %..loopexit_crit_edge.i.i ], [ 0, %.split.lr.ph.i.i ] ; 4 uses
  %i.ra = sub nuw nsw i64 %i.pz, %.sroa.058.0152.i.i
  %i.rb = getelementptr inbounds nuw [16 x i8], ptr %.sroa.7.0.copyload.i.i, i64 %.sroa.058.0152.i.i
  br label %bb.da

._crit_edge.i.i:                                  ; preds = %..loopexit_crit_edge.i.i
  %i.rc = icmp eq i64 %.sroa.0.1.i.i, 0
  br i1 %i.rc, label %._crit_edge.thread.i.i, label %bb.ct

bb.ct:                                            ; preds = %._crit_edge.i.i
  %.not.i.i.i = icmp ult i64 %.sroa.0.1.i.i, %.val1.i.i.i
  br i1 %.not.i.i.i, label %bb.cu, label %.split.i.i.i

.split.i.i.i:                                     ; preds = %bb.ct
  %i.rd = icmp eq i64 %.sroa.0.1.i.i, %.val1.i.i.i
  br i1 %i.rd, label %._crit_edge.thread.i.i, label %.invoke.i.i

bb.cu:                                            ; preds = %bb.ct
  %i.re = getelementptr inbounds nuw i8, ptr %.val.i.i.i, i64 %.sroa.0.1.i.i
  %i.rf = load i8, ptr %i.re, align 1, !alias.scope !4283, !noalias !4273, !noundef !21
  %i.rg = icmp sgt i8 %i.rf, -65
  br i1 %i.rg, label %._crit_edge.thread.i.i, label %.invoke.i.i

._crit_edge.thread.i.i:                           ; preds = %bb.cu, %.split.i.i.i, %._crit_edge.i.i, %.split.lr.ph.i.i
  %.sroa.0.0.lcssa276.i.i = phi i64 [ 0, %._crit_edge.i.i ], [ %.sroa.0.1.i.i, %bb.cu ], [ %.val1.i.i.i, %.split.i.i.i ], [ 0, %.split.lr.ph.i.i ] ; 2 uses
  %i.rh = sub nuw i64 %.val1.i.i.i, %.sroa.0.0.lcssa276.i.i
  %i.ri = getelementptr inbounds nuw i8, ptr %.val.i.i.i, i64 %.sroa.0.0.lcssa276.i.i
  %i.rj = load i64, ptr %i.qe, align 8, !alias.scope !4284, !noalias !4273, !noundef !21 ; 4 uses
  %i.rk = load i64, ptr %i.g, align 8, !range !22, !alias.scope !4284, !noalias !4273, !noundef !21
  %i.rl = icmp eq i64 %i.rj, %i.rk
  br i1 %i.rl, label %bb.cv, label %bb.cw

bb.cv:                                            ; preds = %._crit_edge.thread.i.i
  invoke void @"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$8grow_one17h19b0ca4e4289fc08E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.g, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @113)
          to label %bb.cw unwind label %.body93.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !4273

.invoke.i.i:                                      ; preds = %bb.dq, %.split7.i.i.i, %bb.do, %.split.i98.i.i, %.cont.i.i, %bb.cu, %.split.i.i.i
  %i.rm = phi i64 [ %.sroa.0.1.i.i, %.split.i.i.i ], [ %.sroa.0.1.i.i, %bb.cu ], [ %.sroa.0.0153.i.i, %.cont.i.i ], [ %.sroa.0.0153.i.i, %.split.i98.i.i ], [ %.sroa.0.0153.i.i, %bb.do ], [ %.sroa.0.0153.i.i, %.split7.i.i.i ], [ %.sroa.0.0153.i.i, %bb.dq ]
  %i.rn = phi i64 [ %.val1.i.i.i, %.split.i.i.i ], [ %.val1.i.i.i, %bb.cu ], [ %i.sg, %.cont.i.i ], [ %i.sg, %.split.i98.i.i ], [ %i.sg, %bb.do ], [ %i.sg, %.split7.i.i.i ], [ %i.sg, %bb.dq ]
  %i.ro = phi ptr [ @112, %.split.i.i.i ], [ @112, %bb.cu ], [ @114, %.cont.i.i ], [ @114, %.split.i98.i.i ], [ @114, %bb.do ], [ @114, %.split7.i.i.i ], [ @114, %bb.dq ]
  invoke void @_ZN4core3str16slice_error_fail17h34415ed9969dc080E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %.val.i.i.i, i64 noundef %.val1.i.i.i, i64 noundef %i.rm, i64 noundef %i.rn, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ro) #57
          to label %.cont350.i.i unwind label %.body93.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !4273

.cont350.i.i:                                     ; preds = %.invoke.i.i
  unreachable

bb.cw:                                            ; preds = %bb.cv, %._crit_edge.thread.i.i
  %i.rp = load ptr, ptr %i.qd, align 8, !alias.scope !4284, !noalias !4273, !nonnull !21, !noundef !21
  %i.rq = getelementptr inbounds nuw [16 x i8], ptr %i.rp, i64 %i.rj ; 2 uses
  store ptr %i.ri, ptr %i.rq, align 8, !noalias !4285
  %i.rr = getelementptr inbounds nuw i8, ptr %i.rq, i64 8
  store i64 %i.rh, ptr %i.rr, align 8, !noalias !4273
  %i.rs = add nsw i64 %i.rj, 1                    ; 2 uses
  store i64 %i.rs, ptr %i.qe, align 8, !alias.scope !4284, !noalias !4273
  %.sroa.039.0.copyload.i.i = load i64, ptr %i.g, align 8, !noalias !4273
  %.sroa.440.0.copyload.i.i = load ptr, ptr %i.qd, align 8, !noalias !4273, !nonnull !21, !noundef !21
  %i.rt = icmp slt i64 %i.rj, 576460752303423487
  call void @llvm.assume(i1 %i.rt)
  %i.ru = icmp eq i64 %.sroa.6.0.copyload.i.i, 0
  br i1 %i.ru, label %"_ZN4core3ptr51drop_in_place$LT$alloc..vec..Vec$LT$$RF$str$GT$$GT$17h58378993665cf9eaE.exit95.i.i", label %bb.cx

bb.cx:                                            ; preds = %bb.cw
  %i.rv = shl nuw i64 %.sroa.6.0.copyload.i.i, 4
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.7.0.copyload.i.i, i64 noundef %i.rv, i64 noundef range(i64 1, -9223372036854775807) 8) #52, !noalias !4273
  br label %"_ZN4core3ptr51drop_in_place$LT$alloc..vec..Vec$LT$$RF$str$GT$$GT$17h58378993665cf9eaE.exit95.i.i"

"_ZN4core3ptr51drop_in_place$LT$alloc..vec..Vec$LT$$RF$str$GT$$GT$17h58378993665cf9eaE.exit.i.i": ; preds = %bb.cr, %.body93.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp
  %i.rw = icmp eq i64 %.sroa.010.0.copyload11.i.i, 0
  br i1 %i.rw, label %.thread.i.i, label %bb.cy

bb.cy:                                            ; preds = %"_ZN4core3ptr51drop_in_place$LT$alloc..vec..Vec$LT$$RF$str$GT$$GT$17h58378993665cf9eaE.exit.i.i"
  %i.rx = shl nuw i64 %.sroa.010.0.copyload11.i.i, 3
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.4.0.copyload.i.i) ]
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.4.0.copyload.i.i, i64 noundef %i.rx, i64 noundef range(i64 1, -9223372036854775807) 8) #52, !noalias !4273
  br label %.thread.i.i

"_ZN4core3ptr51drop_in_place$LT$alloc..vec..Vec$LT$$RF$str$GT$$GT$17h58378993665cf9eaE.exit95.i.i": ; preds = %bb.cx, %bb.cw
  %i.ry = icmp eq i64 %.sroa.010.0.copyload11.i.i, 0
  br i1 %i.ry, label %"_ZN4core3ptr49drop_in_place$LT$alloc..vec..Vec$LT$usize$GT$$GT$17h454eb726d1dd9b22E.exit96.i.i", label %bb.cz

bb.cz:                                            ; preds = %"_ZN4core3ptr51drop_in_place$LT$alloc..vec..Vec$LT$$RF$str$GT$$GT$17h58378993665cf9eaE.exit95.i.i"
  %i.rz = shl nuw i64 %.sroa.010.0.copyload11.i.i, 3
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.4.0.copyload.i.i, i64 noundef %i.rz, i64 noundef range(i64 1, -9223372036854775807) 8) #52, !noalias !4273
  br label %"_ZN4core3ptr49drop_in_place$LT$alloc..vec..Vec$LT$usize$GT$$GT$17h454eb726d1dd9b22E.exit96.i.i"

"_ZN4core3ptr49drop_in_place$LT$alloc..vec..Vec$LT$usize$GT$$GT$17h454eb726d1dd9b22E.exit96.i.i": ; preds = %bb.cz, %"_ZN4core3ptr51drop_in_place$LT$alloc..vec..Vec$LT$$RF$str$GT$$GT$17h58378993665cf9eaE.exit95.i.i"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !4273
  br label %_ZN12convert_case8boundary5split17h59e85f12f98610e4E.exit.i

bb.da:                                            ; preds = %bb.dc, %.split.i.i
  %.sroa.060.1150.i.i = phi ptr [ %.sroa.060.1148.i.i, %.split.i.i ], [ %.sroa.060.1.i.i, %bb.dc ] ; 3 uses
  %.sroa.060.0149.i.i = phi ptr [ %i.o, %.split.i.i ], [ %.sroa.060.1150.i.i, %bb.dc ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !4273
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.f, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.060.0149.i.i, i64 48, i1 false), !noalias !4286
  %i.sa = invoke noundef zeroext i1 @_ZN12convert_case8boundary8Boundary7matches17h6c02ffeeca824fd0E(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.f, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %i.rb, i64 noundef %i.ra)
          to label %bb.db unwind label %.body93.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !4273

..loopexit_crit_edge.i.i:                         ; preds = %bb.dc, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17h9861665d17727bedE.exit102.i.i"
  %.sroa.0.1.i.i = phi i64 [ %i.sk, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17h9861665d17727bedE.exit102.i.i" ], [ %.sroa.0.0153.i.i, %bb.dc ] ; 8 uses
  %i.sb = icmp samesign ult i64 %.sroa.058.1154.i.i, %i.pz ; 2 uses
  %i.sc = zext i1 %i.sb to i64
  %.sroa.058.1.i.i = add nuw nsw i64 %.sroa.058.1154.i.i, %i.sc
  br i1 %i.sb, label %.split.i.i, label %._crit_edge.i.i

bb.db:                                            ; preds = %bb.da
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !4273
  br i1 %i.sa, label %bb.dd, label %bb.dc

bb.dc:                                            ; preds = %bb.db
  %i.sd = icmp eq ptr %.sroa.060.1150.i.i, %i.qy  ; 2 uses
  %.sroa.060.1.idx.i.i = select i1 %i.sd, i64 0, i64 48
  %.sroa.060.1.i.i = getelementptr inbounds nuw i8, ptr %.sroa.060.1150.i.i, i64 %.sroa.060.1.idx.i.i
  br i1 %i.sd, label %..loopexit_crit_edge.i.i, label %bb.da

bb.dd:                                            ; preds = %bb.db
  %.sroa.010.0.copyload.i.i = load i64, ptr %.sroa.060.0149.i.i, align 8, !alias.scope !4216, !noalias !4287 ; 3 uses
  %.sroa.411.0..sroa.04.0.5.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %.sroa.060.0149.i.i, i64 24 ; 2 uses
  %.sroa.5.0..sroa.04.0.5.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %.sroa.060.0149.i.i, i64 32
  switch i64 %.sroa.010.0.copyload.i.i, label %bb.de [
    i64 0, label %bb.df
    i64 1, label %bb.dh
    i64 2, label %bb.dh
    i64 3, label %bb.dh
    i64 4, label %bb.dg
    i64 5, label %bb.dg
    i64 6, label %bb.dg
    i64 7, label %bb.dg
    i64 8, label %bb.dg
    i64 9, label %bb.dg
    i64 10, label %bb.dg
  ]

bb.de:                                            ; preds = %.cont30.i.i, %bb.dd
  unreachable

bb.df:                                            ; preds = %bb.dd
  %.sroa.411.0.copyload.i.i = load i64, ptr %.sroa.411.0..sroa.04.0.5.sroa_idx.i.i, align 8, !alias.scope !4216, !noalias !4287
  br label %bb.dh

bb.dg:                                            ; preds = %bb.dd, %bb.dd, %bb.dd, %bb.dd, %bb.dd, %bb.dd, %bb.dd
  br label %bb.dh

bb.dh:                                            ; preds = %bb.dg, %bb.df, %bb.dd, %bb.dd, %bb.dd
  %.sroa.09.0.i.i = phi i64 [ %.sroa.411.0.copyload.i.i, %bb.df ], [ 1, %bb.dg ], [ 0, %bb.dd ], [ 0, %bb.dd ], [ 0, %bb.dd ]
  %i.se = add i64 %.sroa.09.0.i.i, %.sroa.058.0152.i.i ; 2 uses
  %.not.i.i = icmp ult i64 %i.se, %.sroa.512.0.copyload.i.i
  br i1 %.not.i.i, label %.else32.i.i, label %.cont30.i.i

.else32.i.i:                                      ; preds = %bb.dh
  %i.sf = getelementptr inbounds nuw [8 x i8], ptr %.sroa.4.0.copyload.i.i, i64 %i.se
  %.else.val33.i.i = load i64, ptr %i.sf, align 8, !noalias !4273, !noundef !21
  br label %.cont30.i.i

.cont30.i.i:                                      ; preds = %.else32.i.i, %bb.dh
  %i.sg = phi i64 [ %i.qx, %bb.dh ], [ %.else.val33.i.i, %.else32.i.i ] ; 11 uses
  switch i64 %.sroa.010.0.copyload.i.i, label %bb.de [
    i64 0, label %.thread51.i.i
    i64 1, label %bb.dj
    i64 2, label %bb.dj
    i64 3, label %bb.dj
    i64 4, label %bb.di
    i64 5, label %bb.di
    i64 6, label %bb.di
    i64 7, label %bb.di
    i64 8, label %bb.di
    i64 9, label %bb.di
    i64 10, label %bb.di
  ]

.thread51.i.i:                                    ; preds = %.cont30.i.i
  %.sroa.3.0.copyload.i.i = load i64, ptr %.sroa.5.0..sroa.04.0.5.sroa_idx.i.i, align 8, !alias.scope !4216, !noalias !4287
  %.sroa.217.0.copyload.i.i = load i64, ptr %.sroa.411.0..sroa.04.0.5.sroa_idx.i.i, align 8, !alias.scope !4216, !noalias !4287
  br label %bb.dk

bb.di:                                            ; preds = %.cont30.i.i, %.cont30.i.i, %.cont30.i.i, %.cont30.i.i, %.cont30.i.i, %.cont30.i.i, %.cont30.i.i
  br label %bb.dj

bb.dj:                                            ; preds = %bb.di, %.cont30.i.i, %.cont30.i.i, %.cont30.i.i
  %.sroa.015.0.i.i = phi i64 [ 0, %.cont30.i.i ], [ 1, %bb.di ], [ 0, %.cont30.i.i ], [ 0, %.cont30.i.i ]
  %switch.i.i = icmp samesign ult i64 %.sroa.010.0.copyload.i.i, 4
  %..i.i = zext i1 %switch.i.i to i64
  br label %bb.dk

bb.dk:                                            ; preds = %bb.dj, %.thread51.i.i
end_hunk_1
begin_hunk_2_@_ZN17meilisearch_types16document_formats11read_ndjson17hcca8eafe67f38897E:bb.a
  %i.sh = load ptr, ptr %i.aa, align 8, !alias.scope !5555, !noalias !5383, !nonnull !21, !noundef !21
  %i.si = getelementptr i8, ptr %i.sg, i64 16
  %.val.i.i.i1.i.i.i.i.i = load ptr, ptr %i.si, align 8, !noalias !5556, !nonnull !21, !noundef !21
  %i.sj = getelementptr inbounds nuw i8, ptr %.val.i.i.i1.i.i.i.i.i, i64 32 ; 2 uses
  %i.sk = load ptr, ptr %i.sj, align 8, !noalias !5556, !nonnull !21, !noundef !21 ; 2 uses
  %i.sl = icmp eq ptr %i.sk, %i.sh
  br i1 %i.sl, label %bb.ed, label %"_ZN4core3ptr106drop_in_place$LT$bumpalo..collections..vec..Vec$LT$$LP$$RF$str$C$$RF$serde_json..raw..RawValue$RP$$GT$$GT$17h932382478b961b29E.exit.i.i.i.i"

bb.ed:                                            ; preds = %bb.ec
  %i.sm = shl i64 %i.se, 5
  %i.sn = getelementptr inbounds nuw i8, ptr %i.sk, i64 %i.sm
  store ptr %i.sn, ptr %i.sj, align 8, !noalias !5556
  br label %"_ZN4core3ptr106drop_in_place$LT$bumpalo..collections..vec..Vec$LT$$LP$$RF$str$C$$RF$serde_json..raw..RawValue$RP$$GT$$GT$17h932382478b961b29E.exit.i.i.i.i"

"_ZN4core3ptr106drop_in_place$LT$bumpalo..collections..vec..Vec$LT$$LP$$RF$str$C$$RF$serde_json..raw..RawValue$RP$$GT$$GT$17h932382478b961b29E.exit.i.i.i.i": ; preds = %bb.ed, %bb.ec, %.loopexit.i.i.i.i.i.i.i.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !5557)
  call void @llvm.experimental.noalias.scope.decl(metadata !5558)
  call void @llvm.experimental.noalias.scope.decl(metadata !5559)
  %.val1.i.i.i.i.i.i.i = load i64, ptr %i.bo, align 8, !alias.scope !5560, !noalias !5383, !noundef !21 ; 3 uses
  %i.so = icmp eq i64 %.val1.i.i.i.i.i.i.i, 0
  br i1 %i.so, label %"_ZN101_$LT$bumparaw_collections..map..de..BumpRawMapVisitor$LT$S$GT$$u20$as$u20$serde_core..de..Visitor$GT$9visit_map17he666663ea18d7885E.exit.i.i", label %_ZN9hashbrown3raw11TableLayout20calculate_layout_for17h15fde8bd5ea39ae7E.exit.i.i.i.i.i.i.i.i

_ZN9hashbrown3raw11TableLayout20calculate_layout_for17h15fde8bd5ea39ae7E.exit.i.i.i.i.i.i.i.i: ; preds = %"_ZN4core3ptr106drop_in_place$LT$bumpalo..collections..vec..Vec$LT$$LP$$RF$str$C$$RF$serde_json..raw..RawValue$RP$$GT$$GT$17h932382478b961b29E.exit.i.i.i.i"
  %.val2.i.i.i.i57.i.i.i = load ptr, ptr %.sroa.416.0..sroa_idx.i.i.i, align 8, !alias.scope !5560, !noalias !5383, !nonnull !21, !noundef !21
  %.val.i.i.i.i.i.i.i = load ptr, ptr %i.bm, align 8, !alias.scope !5560, !noalias !5383, !nonnull !21, !noundef !21
  %i.sp = mul i64 %.val1.i.i.i.i.i.i.i, 24
  %i.sq = and i64 %i.sp, -16                      ; 2 uses
  %i.sr = add i64 %i.sq, 32                       ; 2 uses
  %i.ss = add i64 %.val1.i.i.i.i.i.i.i, 17
  %i.st = add i64 %i.ss, %i.sr                    ; 3 uses
  %i.su = icmp uge i64 %i.st, %i.sr
  call void @llvm.assume(i1 %i.su)
  %i.sv = icmp ult i64 %i.st, 9223372036854775793
  call void @llvm.assume(i1 %i.sv)
  %i.sw = sub i64 -32, %i.sq
  %i.sx = getelementptr inbounds i8, ptr %.val.i.i.i.i.i.i.i, i64 %i.sw
  %i.sy = getelementptr i8, ptr %.val2.i.i.i.i57.i.i.i, i64 16
  %.val.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.sy, align 8, !noalias !5561, !nonnull !21, !noundef !21
  %i.sz = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i.i.i.i.i.i, i64 32 ; 2 uses
  %i.ta = load ptr, ptr %i.sz, align 8, !noalias !5561, !nonnull !21, !noundef !21 ; 2 uses
  %i.tb = icmp eq ptr %i.ta, %i.sx
  br i1 %i.tb, label %bb.ee, label %"_ZN101_$LT$bumparaw_collections..map..de..BumpRawMapVisitor$LT$S$GT$$u20$as$u20$serde_core..de..Visitor$GT$9visit_map17he666663ea18d7885E.exit.i.i"

bb.ee:                                            ; preds = %_ZN9hashbrown3raw11TableLayout20calculate_layout_for17h15fde8bd5ea39ae7E.exit.i.i.i.i.i.i.i.i
  %i.tc = getelementptr inbounds nuw i8, ptr %i.ta, i64 %i.st
  store ptr %i.tc, ptr %i.sz, align 8, !noalias !5561
  br label %"_ZN101_$LT$bumparaw_collections..map..de..BumpRawMapVisitor$LT$S$GT$$u20$as$u20$serde_core..de..Visitor$GT$9visit_map17he666663ea18d7885E.exit.i.i"

"_ZN101_$LT$bumparaw_collections..map..de..BumpRawMapVisitor$LT$S$GT$$u20$as$u20$serde_core..de..Visitor$GT$9visit_map17he666663ea18d7885E.exit.i.i": ; preds = %bb.ee, %_ZN9hashbrown3raw11TableLayout20calculate_layout_for17h15fde8bd5ea39ae7E.exit.i.i.i.i.i.i.i.i, %"_ZN4core3ptr106drop_in_place$LT$bumpalo..collections..vec..Vec$LT$$LP$$RF$str$C$$RF$serde_json..raw..RawValue$RP$$GT$$GT$17h932382478b961b29E.exit.i.i.i.i", %bb.do
  %.sroa.8.i.i.sroa.9.0 = phi i64 [ undef, %"_ZN4core3ptr106drop_in_place$LT$bumpalo..collections..vec..Vec$LT$$LP$$RF$str$C$$RF$serde_json..raw..RawValue$RP$$GT$$GT$17h932382478b961b29E.exit.i.i.i.i" ], [ undef, %bb.ee ], [ undef, %_ZN9hashbrown3raw11TableLayout20calculate_layout_for17h15fde8bd5ea39ae7E.exit.i.i.i.i.i.i.i.i ], [ %.sroa.8.i.i.sroa.9.0.copyload213, %bb.do ] ; 2 uses
  %.sroa.031.0.i.i = phi ptr [ null, %"_ZN4core3ptr106drop_in_place$LT$bumpalo..collections..vec..Vec$LT$$LP$$RF$str$C$$RF$serde_json..raw..RawValue$RP$$GT$$GT$17h932382478b961b29E.exit.i.i.i.i" ], [ null, %bb.ee ], [ null, %_ZN9hashbrown3raw11TableLayout20calculate_layout_for17h15fde8bd5ea39ae7E.exit.i.i.i.i.i.i.i.i ], [ %.sroa.031.0.copyload32.i.i, %bb.do ] ; 5 uses
  %.sroa.733.0.i.i = phi ptr [ %.sroa.7.0.ph.in.sink.i.i.i, %"_ZN4core3ptr106drop_in_place$LT$bumpalo..collections..vec..Vec$LT$$LP$$RF$str$C$$RF$serde_json..raw..RawValue$RP$$GT$$GT$17h932382478b961b29E.exit.i.i.i.i" ], [ %.sroa.7.0.ph.in.sink.i.i.i, %bb.ee ], [ %.sroa.7.0.ph.in.sink.i.i.i, %_ZN9hashbrown3raw11TableLayout20calculate_layout_for17h15fde8bd5ea39ae7E.exit.i.i.i.i.i.i.i.i ], [ %.sroa.733.0.copyload35.i.i, %bb.do ] ; 8 uses
  %i.td = phi <2 x i64> [ undef, %"_ZN4core3ptr106drop_in_place$LT$bumpalo..collections..vec..Vec$LT$$LP$$RF$str$C$$RF$serde_json..raw..RawValue$RP$$GT$$GT$17h932382478b961b29E.exit.i.i.i.i" ], [ undef, %bb.ee ], [ undef, %_ZN9hashbrown3raw11TableLayout20calculate_layout_for17h15fde8bd5ea39ae7E.exit.i.i.i.i.i.i.i.i ], [ %i.lm, %bb.do ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa), !noalias !5383
  %i.te = load i8, ptr %i.bl, align 8, !range !35, !alias.scope !5375, !noalias !5374, !noundef !21
  %i.tf = trunc nuw i8 %i.te to i1
  br i1 %i.tf, label %bb.eg, label %bb.ef

bb.ef:                                            ; preds = %"_ZN101_$LT$bumparaw_collections..map..de..BumpRawMapVisitor$LT$S$GT$$u20$as$u20$serde_core..de..Visitor$GT$9visit_map17he666663ea18d7885E.exit.i.i"
  %i.tg = load i8, ptr %i.bk, align 1, !alias.scope !5375, !noalias !5374, !noundef !21
  %i.th = add i8 %i.tg, 1
  store i8 %i.th, ptr %i.bk, align 1, !alias.scope !5375, !noalias !5374
  br label %bb.eg

bb.eg:                                            ; preds = %bb.ef, %"_ZN101_$LT$bumparaw_collections..map..de..BumpRawMapVisitor$LT$S$GT$$u20$as$u20$serde_core..de..Visitor$GT$9visit_map17he666663ea18d7885E.exit.i.i"
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ab), !noalias !5376
  store ptr %.sroa.031.0.i.i, ptr %i.ab, align 8, !noalias !5376
  store ptr %.sroa.733.0.i.i, ptr %.sroa.733.0..sroa_idx.i.i, align 8, !noalias !5376
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.8.0..sroa_idx.i.i, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.8.i.i.sroa.0, i64 32, i1 false), !noalias !5376
  store <2 x i64> %i.td, ptr %.sroa.8.i.i.sroa.7.0..sroa.8.0..sroa_idx.i.i.sroa_idx, align 8, !noalias !5376
  store i64 %.sroa.8.i.i.sroa.9.0, ptr %.sroa.8.i.i.sroa.9.0..sroa.8.0..sroa_idx.i.i.sroa_idx, align 8, !noalias !5376
  call void @llvm.experimental.noalias.scope.decl(metadata !5562)
  call void @llvm.experimental.noalias.scope.decl(metadata !5563)
  %i.ti = load i64, ptr %.sroa.0.sroa.4.0..sroa_idx.i, align 8, !alias.scope !5564, !noalias !5374, !noundef !21 ; 2 uses
  %.promoted.i.i.i.i = load i64, ptr %.sroa.0.sroa.5.0..sroa_idx.i, align 8, !alias.scope !5565, !noalias !5374 ; 2 uses
  %i.tj = icmp ult i64 %.promoted.i.i.i.i, %i.ti
  %i.tk = inttoptr i64 %.sroa.8.i.i.sroa.9.0 to ptr ; 3 uses
  br i1 %i.tj, label %.lr.ph.i.i.i.i, label %.loopexit.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.eg
  %i.tl = load ptr, ptr %i.bj, align 8, !alias.scope !5564, !noalias !5374, !nonnull !21, !align !37, !noundef !21
  br label %bb.eh

bb.eh:                                            ; preds = %bb.ei, %.lr.ph.i.i.i.i
  %i.tm = phi i64 [ %.promoted.i.i.i.i, %.lr.ph.i.i.i.i ], [ %i.tp, %bb.ei ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !5566)
  call void @llvm.experimental.noalias.scope.decl(metadata !5567)
  %i.tn = getelementptr inbounds nuw i8, ptr %i.tl, i64 %i.tm
  %i.to = load i8, ptr %i.tn, align 1, !noalias !5568, !noundef !21
  switch i8 %i.to, label %bb.ej [
    i8 32, label %bb.ei
    i8 10, label %bb.ei
    i8 9, label %bb.ei
    i8 13, label %bb.ei
    i8 125, label %"_ZN10serde_json2de21Deserializer$LT$R$GT$7end_map17h4d95e2ff7ec72ee6E.exit.thread.i.i"
    i8 44, label %bb.ek
  ], !prof !5396

bb.ei:                                            ; preds = %bb.eh, %bb.eh, %bb.eh, %bb.eh
  %i.tp = add i64 %i.tm, 1                        ; 3 uses
  store i64 %i.tp, ptr %.sroa.0.sroa.5.0..sroa_idx.i, align 8, !alias.scope !5569, !noalias !5374
  %exitcond.not.i.i.i.i = icmp eq i64 %i.tp, %i.ti
  br i1 %exitcond.not.i.i.i.i, label %.loopexit.i.i.i, label %bb.eh

.loopexit.i.i.i:                                  ; preds = %bb.ei, %bb.eg
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !5570
  store i64 3, ptr %i.a, align 8, !noalias !5570
  %i.tq = invoke fastcc noundef nonnull align 8 ptr @"_ZN10serde_json2de21Deserializer$LT$R$GT$10peek_error17hef8cca19a10c12dfE"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(80) %i.ae, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.a)
          to label %.noexc.i.i unwind label %bb.el, !noalias !5571

.noexc.i.i:                                       ; preds = %.loopexit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !5570
  br label %"_ZN10serde_json2de21Deserializer$LT$R$GT$7end_map17h4d95e2ff7ec72ee6E.exit.i.i"

bb.ej:                                            ; preds = %bb.eh
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !5570
  store i64 22, ptr %i.b, align 8, !noalias !5570
  %i.tr = invoke fastcc noundef nonnull align 8 ptr @"_ZN10serde_json2de21Deserializer$LT$R$GT$10peek_error17hef8cca19a10c12dfE"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(80) %i.ae, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.b)
          to label %.noexc26.i.i unwind label %bb.el, !noalias !5571

.noexc26.i.i:                                     ; preds = %bb.ej
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !5570
  br label %"_ZN10serde_json2de21Deserializer$LT$R$GT$7end_map17h4d95e2ff7ec72ee6E.exit.i.i"

bb.ek:                                            ; preds = %bb.eh
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !5570
  store i64 21, ptr %i.c, align 8, !noalias !5570
  %i.ts = invoke fastcc noundef nonnull align 8 ptr @"_ZN10serde_json2de21Deserializer$LT$R$GT$10peek_error17hef8cca19a10c12dfE"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(80) %i.ae, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.c)
          to label %.noexc27.i.i unwind label %bb.el, !noalias !5571

.noexc27.i.i:                                     ; preds = %bb.ek
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !5570
  br label %"_ZN10serde_json2de21Deserializer$LT$R$GT$7end_map17h4d95e2ff7ec72ee6E.exit.i.i"

bb.el:                                            ; preds = %bb.ek, %bb.ej, %.loopexit.i.i.i
  %i.tt = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr142drop_in_place$LT$core..result..Result$LT$bumparaw_collections..map..RawMap$LT$rustc_hash..FxBuildHasher$GT$$C$serde_json..error..Error$GT$$GT$17h520ff614fccb9566E"(ptr noalias noundef align 8 dereferenceable(72) %i.ab) #55
          to label %.body.i unwind label %bb.er, !noalias !5571

"_ZN10serde_json2de21Deserializer$LT$R$GT$7end_map17h4d95e2ff7ec72ee6E.exit.i.i": ; preds = %.noexc27.i.i, %.noexc26.i.i, %.noexc.i.i
  %.sroa.0.0.i.i.i = phi ptr [ %i.tr, %.noexc26.i.i ], [ %i.tq, %.noexc.i.i ], [ %i.ts, %.noexc27.i.i ] ; 9 uses
  %.sroa.12.0.copyload.i.i = load i64, ptr %.sroa.8.0..sroa_idx.i.i, align 8, !noalias !5376 ; 2 uses
  %.sroa.14400.0.copyload.i.i = load ptr, ptr %.sroa.14400.0..sroa_idx401.i.i, align 8, !noalias !5376 ; 2 uses
  %.sroa.15.0.copyload.i.i = load i64, ptr %.sroa.15.0..sroa_idx403.i.i, align 8, !noalias !5376 ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab), !noalias !5376
  %i.tu = icmp eq ptr %.sroa.031.0.i.i, null
  br i1 %i.tu, label %bb.em, label %bb.en

"_ZN10serde_json2de21Deserializer$LT$R$GT$7end_map17h4d95e2ff7ec72ee6E.exit.thread.i.i": ; preds = %bb.eh
  %i.tv = add i64 %i.tm, 1
  store i64 %i.tv, ptr %.sroa.0.sroa.5.0..sroa_idx.i, align 8, !alias.scope !5572, !noalias !5374
  %.sroa.12.0.copyload397.i.i = load i64, ptr %.sroa.8.0..sroa_idx.i.i, align 8, !noalias !5376
  %.sroa.14400.0.copyload402.i.i = load ptr, ptr %.sroa.14400.0..sroa_idx401.i.i, align 8, !noalias !5376
  %.sroa.15.0.copyload404.i.i = load i64, ptr %.sroa.15.0..sroa_idx403.i.i, align 8, !noalias !5376
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab), !noalias !5376
  %i.tw = icmp eq ptr %.sroa.031.0.i.i, null
  br i1 %i.tw, label %.thread54.i.i, label %bb.ev

.thread54.i.i:                                    ; preds = %"_ZN10serde_json2de21Deserializer$LT$R$GT$7end_map17h4d95e2ff7ec72ee6E.exit.thread.i.i"
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.733.0.i.i) ]
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.8.i.i.sroa.0)
  br label %.noexc12.i

bb.em:                                            ; preds = %"_ZN10serde_json2de21Deserializer$LT$R$GT$7end_map17h4d95e2ff7ec72ee6E.exit.i.i"
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.733.0.i.i) ]
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.8.i.i.sroa.0)
  call void @llvm.experimental.noalias.scope.decl(metadata !5573)
  call void @llvm.experimental.noalias.scope.decl(metadata !5574)
  %i.tx = load i64, ptr %.sroa.0.0.i.i.i, align 8, !range !67, !alias.scope !5575, !noalias !5576, !noundef !21
  switch i64 %i.tx, label %"_ZN4core3ptr45drop_in_place$LT$serde_json..error..Error$GT$17h4e5bb177d22617eeE.exit.i.i" [
    i64 0, label %bb.es
    i64 1, label %bb.et
  ]

bb.en:                                            ; preds = %"_ZN10serde_json2de21Deserializer$LT$R$GT$7end_map17h4d95e2ff7ec72ee6E.exit.i.i"
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.8.i.i.sroa.0)
  %i.ty = icmp eq i64 %.sroa.12.0.copyload.i.i, 0
  br i1 %i.ty, label %"_ZN4core3ptr106drop_in_place$LT$bumpalo..collections..vec..Vec$LT$$LP$$RF$str$C$$RF$serde_json..raw..RawValue$RP$$GT$$GT$17h932382478b961b29E.exit.i.i.i", label %bb.eo

bb.eo:                                            ; preds = %bb.en
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.733.0.i.i) ]
  %i.tz = getelementptr i8, ptr %.sroa.733.0.i.i, i64 16
  %.val.i.i.i1.i.i.i.i = load ptr, ptr %i.tz, align 8, !noalias !5577, !nonnull !21, !noundef !21
  %i.ua = getelementptr inbounds nuw i8, ptr %.val.i.i.i1.i.i.i.i, i64 32 ; 2 uses
  %i.ub = load ptr, ptr %i.ua, align 8, !noalias !5577, !nonnull !21, !noundef !21 ; 2 uses
  %i.uc = icmp eq ptr %i.ub, %.sroa.031.0.i.i
  br i1 %i.uc, label %bb.ep, label %"_ZN4core3ptr106drop_in_place$LT$bumpalo..collections..vec..Vec$LT$$LP$$RF$str$C$$RF$serde_json..raw..RawValue$RP$$GT$$GT$17h932382478b961b29E.exit.i.i.i"

bb.ep:                                            ; preds = %bb.eo
  %i.ud = shl i64 %.sroa.12.0.copyload.i.i, 5
  %i.ue = getelementptr inbounds nuw i8, ptr %i.ub, i64 %i.ud
  store ptr %i.ue, ptr %i.ua, align 8, !noalias !5577
  br label %"_ZN4core3ptr106drop_in_place$LT$bumpalo..collections..vec..Vec$LT$$LP$$RF$str$C$$RF$serde_json..raw..RawValue$RP$$GT$$GT$17h932382478b961b29E.exit.i.i.i"

"_ZN4core3ptr106drop_in_place$LT$bumpalo..collections..vec..Vec$LT$$LP$$RF$str$C$$RF$serde_json..raw..RawValue$RP$$GT$$GT$17h932382478b961b29E.exit.i.i.i": ; preds = %bb.ep, %bb.eo, %bb.en
  %i.uf = icmp eq i64 %.sroa.15.0.copyload.i.i, 0
  br i1 %i.uf, label %.noexc12.i, label %_ZN9hashbrown3raw11TableLayout20calculate_layout_for17h15fde8bd5ea39ae7E.exit.i.i.i.i.i.i.i

_ZN9hashbrown3raw11TableLayout20calculate_layout_for17h15fde8bd5ea39ae7E.exit.i.i.i.i.i.i.i: ; preds = %"_ZN4core3ptr106drop_in_place$LT$bumpalo..collections..vec..Vec$LT$$LP$$RF$str$C$$RF$serde_json..raw..RawValue$RP$$GT$$GT$17h932382478b961b29E.exit.i.i.i"
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.tk), "nonnull"(ptr %.sroa.14400.0.copyload.i.i) ]
  %i.ug = mul i64 %.sroa.15.0.copyload.i.i, 24
  %i.uh = and i64 %i.ug, -16                      ; 2 uses
  %i.ui = add i64 %i.uh, 32                       ; 2 uses
  %i.uj = add i64 %.sroa.15.0.copyload.i.i, 17
  %i.uk = add i64 %i.uj, %i.ui                    ; 3 uses
  %i.ul = icmp uge i64 %i.uk, %i.ui
  call void @llvm.assume(i1 %i.ul)
  %i.um = icmp ult i64 %i.uk, 9223372036854775793
  call void @llvm.assume(i1 %i.um)
  %i.un = sub i64 -32, %i.uh
  %i.uo = getelementptr inbounds i8, ptr %.sroa.14400.0.copyload.i.i, i64 %i.un
  %i.up = getelementptr i8, ptr %i.tk, i64 16
  %.val.i.i.i.i.i.i.i.i = load ptr, ptr %i.up, align 8, !noalias !5578, !nonnull !21, !noundef !21
  %i.uq = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i.i.i.i.i, i64 32 ; 2 uses
  %i.ur = load ptr, ptr %i.uq, align 8, !noalias !5578, !nonnull !21, !noundef !21 ; 2 uses
  %i.us = icmp eq ptr %i.ur, %i.uo
  br i1 %i.us, label %bb.eq, label %.noexc12.i

bb.eq:                                            ; preds = %_ZN9hashbrown3raw11TableLayout20calculate_layout_for17h15fde8bd5ea39ae7E.exit.i.i.i.i.i.i.i
  %i.ut = getelementptr inbounds nuw i8, ptr %i.ur, i64 %i.uk
  store ptr %i.ut, ptr %i.uq, align 8, !noalias !5578
  br label %.noexc12.i

bb.er:                                            ; preds = %bb.el
  %i.uu = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #56, !noalias !5571
  unreachable

bb.es:                                            ; preds = %bb.em
  %i.uv = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i, i64 16
  %.val1.i.i.i.i28.i.i = load i64, ptr %i.uv, align 8, !alias.scope !5575, !noalias !5576, !noundef !21 ; 2 uses
  %i.uw = icmp eq i64 %.val1.i.i.i.i28.i.i, 0
  br i1 %i.uw, label %"_ZN4core3ptr45drop_in_place$LT$serde_json..error..Error$GT$17h4e5bb177d22617eeE.exit.i.i", label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i.i.i.i.i"

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i.i.i.i.i": ; preds = %bb.es
  %i.ux = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i, i64 8
  %.val.i.i.i.i29.i.i = load ptr, ptr %i.ux, align 8, !alias.scope !5575, !noalias !5576, !nonnull !21, !noundef !21
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i.i.i29.i.i, i64 noundef %.val1.i.i.i.i28.i.i, i64 noundef 1) #52, !noalias !5579
  br label %"_ZN4core3ptr45drop_in_place$LT$serde_json..error..Error$GT$17h4e5bb177d22617eeE.exit.i.i"

bb.et:                                            ; preds = %bb.em
  %i.uy = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i, i64 8
  invoke void @"_ZN4core3ptr42drop_in_place$LT$std..io..error..Error$GT$17h83b702f883e6a7bfE"(ptr noalias noundef nonnull readonly align 8 dereferenceable(8) %i.uy)
          to label %"_ZN4core3ptr45drop_in_place$LT$serde_json..error..Error$GT$17h4e5bb177d22617eeE.exit.i.i" unwind label %bb.eu, !noalias !5576

bb.eu:                                            ; preds = %bb.et
  %i.uz = landingpad { ptr, i32 }
          cleanup
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.0.0.i.i.i, i64 noundef 40, i64 noundef 8) #52, !noalias !5576
  br label %.body.i

"_ZN4core3ptr45drop_in_place$LT$serde_json..error..Error$GT$17h4e5bb177d22617eeE.exit.i.i": ; preds = %bb.et, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i.i.i.i.i", %bb.es, %bb.em
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.0.0.i.i.i, i64 noundef 40, i64 noundef 8) #52, !noalias !5576
  br label %.noexc12.i

.noexc12.i:                                       ; preds = %"_ZN4core3ptr45drop_in_place$LT$serde_json..error..Error$GT$17h4e5bb177d22617eeE.exit.i.i", %bb.eq, %_ZN9hashbrown3raw11TableLayout20calculate_layout_for17h15fde8bd5ea39ae7E.exit.i.i.i.i.i.i.i, %"_ZN4core3ptr106drop_in_place$LT$bumpalo..collections..vec..Vec$LT$$LP$$RF$str$C$$RF$serde_json..raw..RawValue$RP$$GT$$GT$17h932382478b961b29E.exit.i.i.i", %.thread54.i.i, %bb.af
  %.sroa.9.2.i.i = phi ptr [ %.sroa.733.0.i.i, %.thread54.i.i ], [ %i.eh, %bb.af ], [ %.sroa.733.0.i.i, %"_ZN4core3ptr45drop_in_place$LT$serde_json..error..Error$GT$17h4e5bb177d22617eeE.exit.i.i" ], [ %.sroa.0.0.i.i.i, %bb.eq ], [ %.sroa.0.0.i.i.i, %_ZN9hashbrown3raw11TableLayout20calculate_layout_for17h15fde8bd5ea39ae7E.exit.i.i.i.i.i.i.i ], [ %.sroa.0.0.i.i.i, %"_ZN4core3ptr106drop_in_place$LT$bumpalo..collections..vec..Vec$LT$$LP$$RF$str$C$$RF$serde_json..raw..RawValue$RP$$GT$$GT$17h932382478b961b29E.exit.i.i.i" ] ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.9.2.i.i) ]
  %i.va = invoke fastcc noundef nonnull align 8 ptr @_ZN10serde_json5error5Error12fix_position17h75c4fc45eaf7d391E(ptr noalias noundef nonnull align 8 %.sroa.9.2.i.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(80) %i.ae)
          to label %.noexc14.i unwind label %bb.ew, !noalias !5380

bb.ev:                                            ; preds = %"_ZN10serde_json2de21Deserializer$LT$R$GT$7end_map17h4d95e2ff7ec72ee6E.exit.thread.i.i"
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.8.i.i.sroa.0)
  br label %.noexc14.i

bb.ew:                                            ; preds = %.noexc12.i, %bb.af, %.loopexit.i.i
  %i.vb = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

.body.i:                                          ; preds = %bb.ew, %bb.eu, %bb.el, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp
  %eh.lpad-body.i = phi { ptr, i32 } [ %i.vb, %bb.ew ], [ %lpad.loopexit.split-lp1213, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ], [ %i.uz, %bb.eu ], [ %i.tt, %bb.el ] ; 2 uses
  %.val10.i = load i64, ptr %i.ae, align 8, !noalias !5374 ; 2 uses
  %i.vc = icmp eq i64 %.val10.i, 0
  br i1 %i.vc, label %.body, label %bb.ex

bb.ex:                                            ; preds = %.body.i
  %.val11.i = load ptr, ptr %.sroa.44.0..sroa_idx.i, align 8, !noalias !5374, !nonnull !21, !noundef !21
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val11.i, i64 noundef %.val10.i, i64 noundef range(i64 1, -9223372036854775807) 1) #52, !noalias !5380
  br label %.body

.noexc14.i:                                       ; preds = %.noexc12.i, %bb.ev, %.noexc.i
  %.sroa.18.0 = phi ptr [ undef, %.noexc.i ], [ %i.tk, %bb.ev ], [ undef, %.noexc12.i ] ; 2 uses
  %.sroa.15.0 = phi i64 [ undef, %.noexc.i ], [ %.sroa.15.0.copyload404.i.i, %bb.ev ], [ undef, %.noexc12.i ] ; 3 uses
  %.sroa.14.0 = phi ptr [ undef, %.noexc.i ], [ %.sroa.14400.0.copyload402.i.i, %bb.ev ], [ undef, %.noexc12.i ] ; 2 uses
  %.sroa.12119.0 = phi i64 [ undef, %.noexc.i ], [ %.sroa.12.0.copyload397.i.i, %bb.ev ], [ undef, %.noexc12.i ] ; 2 uses
  %.sroa.7118.0 = phi ptr [ %i.eg, %.noexc.i ], [ %.sroa.733.0.i.i, %bb.ev ], [ %i.va, %.noexc12.i ] ; 4 uses
  %.sroa.0117.0 = phi ptr [ null, %.noexc.i ], [ %.sroa.031.0.i.i, %bb.ev ], [ null, %.noexc12.i ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ad), !noalias !5374
  %.val.i89 = load i64, ptr %i.ae, align 8, !noalias !5374 ; 2 uses
  %i.vd = icmp eq i64 %.val.i89, 0
  br i1 %i.vd, label %bb.ez, label %bb.ey

bb.ey:                                            ; preds = %.noexc14.i
  %.val9.i = load ptr, ptr %.sroa.44.0..sroa_idx.i, align 8, !noalias !5374, !nonnull !21, !noundef !21
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val9.i, i64 noundef %.val.i89, i64 noundef range(i64 1, -9223372036854775807) 1) #52, !noalias !5380
  br label %bb.ez

bb.ez:                                            ; preds = %bb.ey, %.noexc14.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ae), !noalias !5374
  %i.ve = icmp eq ptr %.sroa.0117.0, null
  br i1 %i.ve, label %bb.fa, label %bb.fc

bb.fa:                                            ; preds = %bb.ez
  %i.vf = load i64, ptr %.sroa.7118.0, align 8, !range !67, !noalias !5580, !noundef !21
  %i.vg = icmp eq i64 %i.vf, 0
  br i1 %i.vg, label %bb.fb, label %bb.fg

bb.fb:                                            ; preds = %bb.fa
  %i.vh = invoke noundef nonnull ptr @"_ZN10serde_json5error103_$LT$impl$u20$core..convert..From$LT$serde_json..error..Error$GT$$u20$for$u20$std..io..error..Error$GT$4from17hc8f9273a0fb314abE"(ptr noalias noundef nonnull align 8 %.sroa.7118.0)
          to label %bb.fg unwind label %.loopexit.split-lp.loopexit.split-lp

bb.fc:                                            ; preds = %bb.ez
  %i.vi = icmp eq i64 %.sroa.12119.0, 0
  br i1 %i.vi, label %"_ZN4core3ptr106drop_in_place$LT$bumpalo..collections..vec..Vec$LT$$LP$$RF$str$C$$RF$serde_json..raw..RawValue$RP$$GT$$GT$17h932382478b961b29E.exit.i", label %bb.fd

bb.fd:                                            ; preds = %bb.fc
  %i.vj = getelementptr i8, ptr %.sroa.7118.0, i64 16
  %.val.i.i.i1.i.i = load ptr, ptr %i.vj, align 8, !noalias !5581, !nonnull !21, !noundef !21
  %i.vk = getelementptr inbounds nuw i8, ptr %.val.i.i.i1.i.i, i64 32 ; 2 uses
  %i.vl = load ptr, ptr %i.vk, align 8, !noalias !5581, !nonnull !21, !noundef !21 ; 2 uses
  %i.vm = icmp eq ptr %i.vl, %.sroa.0117.0
  br i1 %i.vm, label %bb.fe, label %"_ZN4core3ptr106drop_in_place$LT$bumpalo..collections..vec..Vec$LT$$LP$$RF$str$C$$RF$serde_json..raw..RawValue$RP$$GT$$GT$17h932382478b961b29E.exit.i"

bb.fe:                                            ; preds = %bb.fd
  %i.vn = shl i64 %.sroa.12119.0, 5
  %i.vo = getelementptr inbounds nuw i8, ptr %i.vl, i64 %i.vn
  store ptr %i.vo, ptr %i.vk, align 8, !noalias !5581
  br label %"_ZN4core3ptr106drop_in_place$LT$bumpalo..collections..vec..Vec$LT$$LP$$RF$str$C$$RF$serde_json..raw..RawValue$RP$$GT$$GT$17h932382478b961b29E.exit.i"

"_ZN4core3ptr106drop_in_place$LT$bumpalo..collections..vec..Vec$LT$$LP$$RF$str$C$$RF$serde_json..raw..RawValue$RP$$GT$$GT$17h932382478b961b29E.exit.i": ; preds = %bb.fe, %bb.fd, %bb.fc
  %i.vp = icmp eq i64 %.sroa.15.0, 0
  br i1 %i.vp, label %"_ZN4core3ptr87drop_in_place$LT$bumparaw_collections..map..RawMap$LT$rustc_hash..FxBuildHasher$GT$$GT$17hcaef7f808e8e8043E.exit", label %_ZN9hashbrown3raw11TableLayout20calculate_layout_for17h15fde8bd5ea39ae7E.exit.i.i.i.i.i

_ZN9hashbrown3raw11TableLayout20calculate_layout_for17h15fde8bd5ea39ae7E.exit.i.i.i.i.i: ; preds = %"_ZN4core3ptr106drop_in_place$LT$bumpalo..collections..vec..Vec$LT$$LP$$RF$str$C$$RF$serde_json..raw..RawValue$RP$$GT$$GT$17h932382478b961b29E.exit.i"
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.18.0), "nonnull"(ptr %.sroa.14.0) ]
  %i.vq = mul i64 %.sroa.15.0, 24
  %i.vr = and i64 %i.vq, -16                      ; 2 uses
  %i.vs = add i64 %i.vr, 32                       ; 2 uses
  %i.vt = add i64 %.sroa.15.0, 17
  %i.vu = add i64 %i.vt, %i.vs                    ; 3 uses
  %i.vv = icmp uge i64 %i.vu, %i.vs
  call void @llvm.assume(i1 %i.vv)
  %i.vw = icmp ult i64 %i.vu, 9223372036854775793
  call void @llvm.assume(i1 %i.vw)
  %i.vx = sub i64 -32, %i.vr
  %i.vy = getelementptr inbounds i8, ptr %.sroa.14.0, i64 %i.vx
  %i.vz = getelementptr i8, ptr %.sroa.18.0, i64 16
  %.val.i.i.i.i.i.i = load ptr, ptr %i.vz, align 8, !noalias !5582, !nonnull !21, !noundef !21
  %i.wa = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i.i.i, i64 32 ; 2 uses
  %i.wb = load ptr, ptr %i.wa, align 8, !noalias !5582, !nonnull !21, !noundef !21 ; 2 uses
  %i.wc = icmp eq ptr %i.wb, %i.vy
  br i1 %i.wc, label %bb.ff, label %"_ZN4core3ptr87drop_in_place$LT$bumparaw_collections..map..RawMap$LT$rustc_hash..FxBuildHasher$GT$$GT$17hcaef7f808e8e8043E.exit"

bb.ff:                                            ; preds = %_ZN9hashbrown3raw11TableLayout20calculate_layout_for17h15fde8bd5ea39ae7E.exit.i.i.i.i.i
  %i.wd = getelementptr inbounds nuw i8, ptr %i.wb, i64 %i.vu
  store ptr %i.wd, ptr %i.wa, align 8, !noalias !5582
  br label %"_ZN4core3ptr87drop_in_place$LT$bumparaw_collections..map..RawMap$LT$rustc_hash..FxBuildHasher$GT$$GT$17hcaef7f808e8e8043E.exit"

"_ZN4core3ptr87drop_in_place$LT$bumparaw_collections..map..RawMap$LT$rustc_hash..FxBuildHasher$GT$$GT$17hcaef7f808e8e8043E.exit": ; preds = %bb.ff, %_ZN9hashbrown3raw11TableLayout20calculate_layout_for17h15fde8bd5ea39ae7E.exit.i.i.i.i.i, %"_ZN4core3ptr106drop_in_place$LT$bumpalo..collections..vec..Vec$LT$$LP$$RF$str$C$$RF$serde_json..raw..RawValue$RP$$GT$$GT$17h932382478b961b29E.exit.i"
  %i.we = add i64 %.sroa.019.0497, 1              ; 2 uses
  %i.wf = load i64, ptr %.sroa.0102.sroa.5.0..sroa_idx, align 8, !alias.scope !5583, !noundef !21 ; 2 uses
  %.promoted.i.i = load i64, ptr %.sroa.0102.sroa.6.0..sroa_idx, align 8, !alias.scope !5584 ; 3 uses
  %i.wg = icmp ult i64 %.promoted.i.i, %i.wf
  br i1 %i.wg, label %.lr.ph.i.i, label %.loopexit

bb.fg:                                            ; preds = %bb.fb, %bb.fa
  %.sink1.i92 = phi ptr [ %i.vh, %bb.fb ], [ %.sroa.7118.0, %bb.fa ]
  %.sink.i93 = phi i64 [ -9223372036854775799, %bb.fb ], [ -9223372036854775803, %bb.fa ]
  %i.wh = ptrtoint ptr %.sink1.i92 to i64
  %i.wi = inttoptr i64 %.sink.i93 to ptr
  store ptr %i.wi, ptr %0, align 8
  %.sroa.2206.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.wh, ptr %.sroa.2206.0..sroa_idx, align 8
  %.sroa.6210.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i64 0, ptr %.sroa.6210.0..sroa_idx, align 8
  br label %bb.fh

bb.fh:                                            ; preds = %"_ZN187_$LT$meilisearch_types..document_formats..DocumentFormatError$u20$as$u20$core..convert..From$LT$$LP$meilisearch_types..document_formats..PayloadType$C$serde_json..error..Error$RP$$GT$$GT$4from17h8eced018c7f374b0E.exit", %bb.fg
  %.val73 = load i64, ptr %i.aj, align 8          ; 2 uses
  %i.wj = icmp eq i64 %.val73, 0
  br i1 %i.wj, label %"_ZN4core3ptr122drop_in_place$LT$serde_json..de..StreamDeserializer$LT$serde_json..read..SliceRead$C$$RF$serde_json..raw..RawValue$GT$$GT$17h1659dc1a3791908fE.exit96", label %bb.fi

bb.fi:                                            ; preds = %bb.fh
  %.val74 = load ptr, ptr %.sroa.0102.sroa.2.0..sroa_idx, align 8, !nonnull !21, !noundef !21
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val74, i64 noundef %.val73, i64 noundef range(i64 1, -9223372036854775807) 1) #52
  br label %"_ZN4core3ptr122drop_in_place$LT$serde_json..de..StreamDeserializer$LT$serde_json..read..SliceRead$C$$RF$serde_json..raw..RawValue$GT$$GT$17h1659dc1a3791908fE.exit96"

"_ZN187_$LT$meilisearch_types..document_formats..DocumentFormatError$u20$as$u20$core..convert..From$LT$$LP$meilisearch_types..document_formats..PayloadType$C$serde_json..error..Error$RP$$GT$$GT$4from17h8eced018c7f374b0E.exit": ; preds = %bb.ac, %bb.ab
  %.sink1.i = phi ptr [ %i.eb, %bb.ac ], [ %i.dy, %bb.ab ]
  %.sink.i86 = phi i64 [ -9223372036854775799, %bb.ac ], [ -9223372036854775803, %bb.ab ]
  store i64 %.sink.i86, ptr %0, align 8
  %.sroa.4145.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sink1.i, ptr %.sroa.4145.0..sroa_idx, align 8
  %.sroa.5147.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i8 0, ptr %.sroa.5147.0..sroa_idx, align 8
  br label %bb.fh

"_ZN4core3ptr122drop_in_place$LT$serde_json..de..StreamDeserializer$LT$serde_json..read..SliceRead$C$$RF$serde_json..raw..RawValue$GT$$GT$17h1659dc1a3791908fE.exit96": ; preds = %bb.fi, %bb.fh
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aj)
  %.val = load ptr, ptr %i.bi, align 8, !nonnull !21, !noundef !21 ; 2 uses
  %i.wk = icmp eq ptr %.val, @_ZN7bumpalo11EMPTY_CHUNK17h8006d241046b45ffE
  br i1 %i.wk, label %"_ZN4core3ptr34drop_in_place$LT$bumpalo..Bump$GT$17hca704bc88b9819c8E.exit99", label %.lr.ph.i.i97

.lr.ph.i.i97:                                     ; preds = %"_ZN4core3ptr122drop_in_place$LT$serde_json..de..StreamDeserializer$LT$serde_json..read..SliceRead$C$$RF$serde_json..raw..RawValue$GT$$GT$17h1659dc1a3791908fE.exit96", %.lr.ph.i.i97
  %.sroa.0.01.i.i98 = phi ptr [ %i.wm, %.lr.ph.i.i97 ], [ %.val, %"_ZN4core3ptr122drop_in_place$LT$serde_json..de..StreamDeserializer$LT$serde_json..read..SliceRead$C$$RF$serde_json..raw..RawValue$GT$$GT$17h1659dc1a3791908fE.exit96" ] ; 4 uses
  %i.wl = getelementptr inbounds nuw i8, ptr %.sroa.0.01.i.i98, i64 24
  %i.wm = load ptr, ptr %i.wl, align 8, !nonnull !21, !noundef !21 ; 2 uses
  %i.wn = load ptr, ptr %.sroa.0.01.i.i98, align 16, !nonnull !21, !noundef !21
  %i.wo = getelementptr inbounds nuw i8, ptr %.sroa.0.01.i.i98, i64 8
  %i.wp = getelementptr inbounds nuw i8, ptr %.sroa.0.01.i.i98, i64 16
  %i.wq = load i64, ptr %i.wp, align 16, !noundef !21
  %i.wr = load i64, ptr %i.wo, align 8, !range !66, !noundef !21
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.wn, i64 noundef %i.wq, i64 noundef %i.wr) #52
  %i.ws = icmp eq ptr %i.wm, @_ZN7bumpalo11EMPTY_CHUNK17h8006d241046b45ffE
  br i1 %i.ws, label %"_ZN4core3ptr34drop_in_place$LT$bumpalo..Bump$GT$17hca704bc88b9819c8E.exit99", label %.lr.ph.i.i97

"_ZN4core3ptr34drop_in_place$LT$bumpalo..Bump$GT$17hca704bc88b9819c8E.exit99": ; preds = %.lr.ph.i.i97, %"_ZN4core3ptr122drop_in_place$LT$serde_json..de..StreamDeserializer$LT$serde_json..read..SliceRead$C$$RF$serde_json..raw..RawValue$GT$$GT$17h1659dc1a3791908fE.exit96"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ak)
  call void @"_ZN64_$LT$memmap2..os..MmapInner$u20$as$u20$core..ops..drop..Drop$GT$4drop17h9d0bf1cbb9072347E"(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.al)
  br label %bb.aa

bb.fj:                                            ; preds = %bb.g
  %i.wt = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #56
  unreachable

"_ZN4core3ptr34drop_in_place$LT$memmap2..Mmap$GT$17hc1025e5cc29ec728E.exit": ; preds = %bb.g
  resume { ptr, i32 } %.pn69
}

; Function Attrs: nonlazybind uwtable
define void @_ZN17meilisearch_types16document_formats16parse_csv_header17he189328565d9a32bE(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %1, i64 noundef %2) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  br label %bb.b

bb.b:                                             ; preds = %bb.c, %bb.a
  %i.a = phi i64 [ %2, %bb.a ], [ %i.e, %bb.c ]
  %i.b = tail call { i64, i64 } @_ZN4core5slice6memchr7memrchr17h0c3e43ac4b055a3eE(i8 noundef 58, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %1, i64 noundef %i.a), !noalias !5591 ; 2 uses
  %i.c = extractvalue { i64, i64 } %i.b, 0
  %i.d = trunc nuw i64 %i.c to i1
  br i1 %i.d, label %bb.d, label %.loopexit

bb.c:                                             ; preds = %bb.e, %bb.d
  %.not.i.i = icmp ugt i64 %i.e, %2
  br i1 %.not.i.i, label %.loopexit, label %bb.b

bb.d:                                             ; preds = %bb.b
  %i.e = extractvalue { i64, i64 } %i.b, 1        ; 8 uses
  %or.cond25.i.not.i = icmp ult i64 %i.e, %2
  br i1 %or.cond25.i.not.i, label %bb.e, label %bb.c

bb.e:                                             ; preds = %bb.d
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 %i.e
  %lhsc.i = load i8, ptr %i.f, align 1, !alias.scope !5592
  %i.g = icmp eq i8 %lhsc.i, 58
  br i1 %i.g, label %bb.f, label %bb.c

bb.f:                                             ; preds = %bb.e
  %i.h = add nuw i64 %i.e, 1                      ; 2 uses
  %i.i = sub nuw i64 %2, %i.h
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 %i.h ; 6 uses
  switch i64 %i.i, label %bb.j [
    i64 6, label %bb.g
    i64 7, label %bb.h
  ]

.loopexit:                                        ; preds = %bb.b, %bb.c, %bb.i, %bb.h, %bb.g, %bb.j
  %.lcssa.sink = phi i64 [ %i.e, %bb.h ], [ %2, %bb.j ], [ %i.e, %bb.g ], [ %i.e, %bb.i ], [ %2, %bb.c ], [ %2, %bb.b ]
  %.sink = phi i8 [ 1, %bb.h ], [ 0, %bb.j ], [ 0, %bb.g ], [ 2, %bb.i ], [ 0, %bb.c ], [ 0, %bb.b ]
  store ptr %1, ptr %0, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.lcssa.sink, ptr %i.k, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i8 %.sink, ptr %i.l, align 8
  ret void

bb.g:                                             ; preds = %bb.f
  %i.m = load i32, ptr %i.j, align 1
  %i.n = xor i32 %i.m, 1769108595
  %i.o = getelementptr i8, ptr %i.j, i64 4
  %i.p = load i16, ptr %i.o, align 1
  %i.q = zext i16 %i.p to i32
  %i.r = xor i32 %i.q, 26478
  %i.s = or i32 %i.n, %i.r
  %i.t = icmp ne i32 %i.s, 0
  %i.u = zext i1 %i.t to i32
  %i.v = icmp eq i32 %i.u, 0
  br i1 %i.v, label %.loopexit, label %bb.i

bb.h:                                             ; preds = %bb.f
  %i.w = load i32, ptr %i.j, align 1
  %i.x = xor i32 %i.w, 1819242338
  %i.y = getelementptr i8, ptr %i.j, i64 3
  %i.z = load i32, ptr %i.y, align 1
  %i.aa = xor i32 %i.z, 1851876716
  %i.ab = or i32 %i.x, %i.aa
  %i.ac = icmp ne i32 %i.ab, 0
  %i.ad = zext i1 %i.ac to i32
  %i.ae = icmp eq i32 %i.ad, 0
  br i1 %i.ae, label %.loopexit, label %bb.j

bb.i:                                             ; preds = %bb.g
  %i.af = load i32, ptr %i.j, align 1
  %i.ag = xor i32 %i.af, 1651340654
  %i.ah = getelementptr i8, ptr %i.j, i64 4
  %i.ai = load i16, ptr %i.ah, align 1
  %i.aj = zext i16 %i.ai to i32
  %i.ak = xor i32 %i.aj, 29285
  %i.al = or i32 %i.ag, %i.ak
  %i.am = icmp ne i32 %i.al, 0
  %i.an = zext i1 %i.am to i32
  %i.ao = icmp eq i32 %i.an, 0
  br i1 %i.ao, label %.loopexit, label %bb.j

bb.j:                                             ; preds = %bb.h, %bb.f, %bb.i
  br label %.loopexit
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define noundef zeroext i1 @_ZN17meilisearch_types17index_uid_pattern15IndexUidPattern11matches_all17h0da0ad082bc3fb6dE(ptr noalias noundef readonly align 8 captures(none) dereferenceable(24) %0) unnamed_addr #9 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val1 = load i64, ptr %i.a, align 8, !noundef !21
  %.not.i = icmp eq i64 %.val1, 1
  br i1 %.not.i, label %bb.b, label %"_ZN77_$LT$alloc..string..String$u20$as$u20$core..cmp..PartialEq$LT$$RF$str$GT$$GT$2eq17h5e5f3ec0c5cf38a3E.exit"

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val = load ptr, ptr %i.b, align 8, !nonnull !21, !noundef !21
  %lhsc = load i8, ptr %.val, align 1
  %i.c = icmp eq i8 %lhsc, 42
  br label %"_ZN77_$LT$alloc..string..String$u20$as$u20$core..cmp..PartialEq$LT$$RF$str$GT$$GT$2eq17h5e5f3ec0c5cf38a3E.exit"

"_ZN77_$LT$alloc..string..String$u20$as$u20$core..cmp..PartialEq$LT$$RF$str$GT$$GT$2eq17h5e5f3ec0c5cf38a3E.exit": ; preds = %bb.a, %bb.b
end_hunk_2
begin_hunk_3_@_ZN17meilisearch_types5tasks7network21NetworkTopologyChange3new17h3ac08b2b94f3148eE:bb.a
  %.us-phi371 = phi i64 [ %i.tq, %.loopexit.i.i.i.i.i.i.i.i.us ], [ %i.va, %"_ZN4core3ops8function5impls79_$LT$impl$u20$core..ops..function..FnMut$LT$A$GT$$u20$for$u20$$RF$mut$u20$F$GT$8call_mut17h270c08e4b65db64cE.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i" ], [ %i.va, %.loopexit.i.i.i.i.i.i.i.i ]
  invoke void @"_ZN60_$LT$alloc..string..String$u20$as$u20$core..clone..Clone$GT$5clone17h123bb51dd192bfa5E"(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.d, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %.us-phi370, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @48)
          to label %.noexc10.i.i.i.i.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.i.i.i.i, !noalias !7388

.noexc10.i.i.i.i.i.i:                             ; preds = %"_ZN104_$LT$core..iter..adapters..cloned..Cloned$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h471827927bf63457E.exit.i.i.i.i.i.i.i.i.i"
  %.pr.i.i.i.i.i.i.i.i.i = load i64, ptr %i.d, align 8, !noalias !7404 ; 4 uses
  %.not.i.i.i.i.i.i.i.i.i141 = icmp eq i64 %.pr.i.i.i.i.i.i.i.i.i, -9223372036854775808
  br i1 %.not.i.i.i.i.i.i.i.i.i141, label %_ZN4core4iter6traits8iterator8Iterator7collect17h5cd67a0702d4a8f5E.exit.i.i, label %bb.cq

bb.cq:                                            ; preds = %.noexc10.i.i.i.i.i.i
  %.sroa.7.sroa.0.0.copyload.i.i.i.i.i.i.i.i = load ptr, ptr %.sroa.7.0..sroa_idx2.i.i.i.i.i.i.i.i, align 8, !noalias !7413 ; 3 uses
  %.sroa.7.sroa.5.0.copyload.i.i.i.i.i.i.i.i = load i64, ptr %.sroa.7.sroa.5.0..sroa.7.0..sroa_idx2.sroa_idx.i.i.i.i.i.i.i.i, align 8, !noalias !7413
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !7404
  %i.wn = icmp samesign ult i64 %i.to, 288230376151711744
  call void @llvm.assume(i1 %i.wn)
  %i.wo = load i64, ptr %i.f, align 8, !range !22, !alias.scope !7414, !noalias !7388, !noundef !21
  %i.wp = icmp eq i64 %i.to, %i.wo
  br i1 %i.wp, label %bb.ct, label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h8f4c456da70365b4E.exit.i.i.i.i.i.i.i.i"

"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h8f4c456da70365b4E.exit.i.i.i.i.i.i.i.i": ; preds = %"._ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h8f4c456da70365b4E.exit.i.i_crit_edge.i.i.i.i.i.i", %bb.cq
  %i.wq = phi ptr [ %.pre.i.i.i.i.i.i142, %"._ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h8f4c456da70365b4E.exit.i.i_crit_edge.i.i.i.i.i.i" ], [ %i.tn, %bb.cq ] ; 2 uses
  %i.wr = getelementptr inbounds nuw [32 x i8], ptr %i.wq, i64 %i.to ; 4 uses
  store i64 %.pr.i.i.i.i.i.i.i.i.i, ptr %i.wr, align 8, !noalias !7415
  %.sroa.411.0..sroa_idx.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.wr, i64 8
  store ptr %.sroa.7.sroa.0.0.copyload.i.i.i.i.i.i.i.i, ptr %.sroa.411.0..sroa_idx.i.i.i.i.i.i.i.i, align 8, !noalias !7415
  %.sroa.512.0..sroa_idx.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.wr, i64 16
  store i64 %.sroa.7.sroa.5.0.copyload.i.i.i.i.i.i.i.i, ptr %.sroa.512.0..sroa_idx.i.i.i.i.i.i.i.i, align 8, !noalias !7415
  %.sroa.6.0..sroa_idx.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.wr, i64 24
  store i8 2, ptr %.sroa.6.0..sroa_idx.i.i.i.i.i.i.i.i, align 8, !noalias !7415
  %i.ws = add nuw nsw i64 %i.to, 1                ; 2 uses
  store i64 %i.ws, ptr %.sroa.6.0..sroa_idx.i.i.i.i.i.i136, align 8, !alias.scope !7414, !noalias !7388
  br label %bb.ci

bb.cr:                                            ; preds = %bb.ct
  %i.wt = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.wu = icmp eq i64 %.pr.i.i.i.i.i.i.i.i.i, 0
  br i1 %i.wu, label %.body.i.i.i.i.i.i137, label %bb.cs

bb.cs:                                            ; preds = %bb.cr
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.7.sroa.0.0.copyload.i.i.i.i.i.i.i.i) ]
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.7.sroa.0.0.copyload.i.i.i.i.i.i.i.i, i64 noundef %.pr.i.i.i.i.i.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #52, !noalias !7416
  br label %.body.i.i.i.i.i.i137

bb.ct:                                            ; preds = %bb.cq
  invoke fastcc void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$7reserve21do_reserve_and_handle17h45307a5a03ebcc73E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.f, i64 noundef %i.to, i64 noundef range(i64 1, 0) 1, i64 noundef 8, i64 noundef 32)
          to label %"._ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h8f4c456da70365b4E.exit.i.i_crit_edge.i.i.i.i.i.i" unwind label %bb.cr, !noalias !7417

"._ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h8f4c456da70365b4E.exit.i.i_crit_edge.i.i.i.i.i.i": ; preds = %bb.ct
  %.pre.i.i.i.i.i.i142 = load ptr, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i.i135, align 8, !alias.scope !7414, !noalias !7388
  br label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h8f4c456da70365b4E.exit.i.i.i.i.i.i.i.i"

.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.i.i.i.i: ; preds = %"_ZN104_$LT$core..iter..adapters..cloned..Cloned$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h471827927bf63457E.exit.i.i.i.i.i.i.i.i.i"
  %lpad.loopexit.split-lp11.i.i.i.i.i = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i.i.i.i.i137

.body.i.i.i.i.i.i137:                             ; preds = %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.i.i.i.i, %bb.cs, %bb.cr
  %eh.lpad-body.i.i.i.i.i.i138 = phi { ptr, i32 } [ %i.wt, %bb.cr ], [ %i.wt, %bb.cs ], [ %lpad.loopexit.split-lp11.i.i.i.i.i, %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.i.i.i.i ]
  call fastcc void @"_ZN4core3ptr120drop_in_place$LT$alloc..vec..Vec$LT$$LP$alloc..string..String$C$meilisearch_types..tasks..network..OutRemote$RP$$GT$$GT$17ha3d2b483673e3479E"(ptr noalias noundef align 8 dereferenceable(24) %i.f) #55, !noalias !7388
  br label %.body184

_ZN4core4iter6traits8iterator8Iterator7collect17h5cd67a0702d4a8f5E.exit.i.i: ; preds = %.noexc10.i.i.i.i.i.i, %.split365.us, %"_ZN4core4iter6traits8iterator8Iterator4find5check28_$u7b$$u7b$closure$u7d$$u7d$17hf2b4d0abee32cc2cE.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.preheader", %"_ZN4core4iter6traits8iterator8Iterator4find5check28_$u7b$$u7b$closure$u7d$$u7d$17hf2b4d0abee32cc2cE.exit.i.i.i.i.i.i.i.i.i.i.i.i.i"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !7404
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.g, ptr noundef nonnull align 8 dereferenceable(24) %i.f, i64 24, i1 false), !noalias !7418
  %.phi.trans.insert.i.i143 = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %.pre.i.i144 = load i64, ptr %.phi.trans.insert.i.i143, align 8, !noalias !7387 ; 7 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !7388
  %i.wv = icmp ult i64 %.pre.i.i144, 288230376151711744
  call void @llvm.assume(i1 %i.wv)
  %i.ww = icmp eq i64 %.pre.i.i144, 0
  br i1 %i.ww, label %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h31ff924941dd1ab2E.exit.i.i.i", label %bb.cv

"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h31ff924941dd1ab2E.exit.i.i.i": ; preds = %_ZN4core4iter6traits8iterator8Iterator7collect17h5cd67a0702d4a8f5E.exit.i.i
  %.val2.i.i.pr.i = load i64, ptr %i.g, align 8, !alias.scope !7419, !noalias !7387 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !7419)
  %i.wx = icmp eq i64 %.val2.i.i.pr.i, 0
  br i1 %i.wx, label %.loopexit, label %bb.cu

bb.cu:                                            ; preds = %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h31ff924941dd1ab2E.exit.i.i.i"
  %i.wy = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %.val.i.i.i179 = load ptr, ptr %i.wy, align 8, !alias.scope !7419, !noalias !7387, !nonnull !21, !noundef !21
  %i.wz = shl nuw i64 %.val2.i.i.pr.i, 5
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i.i179, i64 noundef %i.wz, i64 noundef range(i64 1, -9223372036854775807) 8) #52, !noalias !7420
  br label %.loopexit

bb.cv:                                            ; preds = %_ZN4core4iter6traits8iterator8Iterator7collect17h5cd67a0702d4a8f5E.exit.i.i
  %i.xa = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.xb = load ptr, ptr %i.xa, align 8, !noalias !7387, !nonnull !21, !noundef !21 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !7421
  %i.xc = icmp eq i64 %.pre.i.i144, 1
  br i1 %i.xc, label %bb.cz, label %bb.cw, !prof !49

bb.cw:                                            ; preds = %bb.cv
  %i.xd = icmp samesign ult i64 %.pre.i.i144, 21
  br i1 %i.xd, label %bb.cy, label %bb.cx, !prof !49

bb.cx:                                            ; preds = %bb.cw
  invoke void @_ZN4core5slice4sort6stable14driftsort_main17h7a03a7b0a9d61826E(ptr noalias noundef nonnull align 8 %i.xb, i64 noundef range(i64 1, 288230376151711744) %.pre.i.i144, ptr noalias noundef nonnull align 8 dereferenceable(8) %i.c)
          to label %bb.cz unwind label %bb.ea, !noalias !7387

bb.cy:                                            ; preds = %bb.cw
  call fastcc void @_ZN4core5slice4sort6shared9smallsort25insertion_sort_shift_left17h9fd2fdaebaaab0ffE(ptr noalias noundef nonnull align 8 %i.xb, i64 noundef range(i64 1, 288230376151711744) %.pre.i.i144)
  br label %bb.cz

bb.cz:                                            ; preds = %bb.cy, %bb.cx, %bb.cv
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !7421
  %.sroa.02.0.copyload.i = load i64, ptr %i.g, align 8, !noalias !7387 ; 3 uses
  call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #52, !noalias !7422
  %i.xe = call noalias noundef align 8 dereferenceable_or_null(288) ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef 288, i64 noundef range(i64 1, -9223372036854775807) 8) #52, !noalias !7422 ; 5 uses
  %i.xf = icmp eq ptr %i.xe, null
  br i1 %i.xf, label %bb.da, label %.loopexit87.i.i.i.i, !prof !23

bb.da:                                            ; preds = %bb.cz
  invoke void @_ZN5alloc5alloc18handle_alloc_error17h8f86e24af4223f3dE(i64 noundef 8, i64 noundef 288) #57
          to label %.noexc.i.i.i178 unwind label %bb.dz, !noalias !7422

.noexc.i.i.i178:                                  ; preds = %bb.da
  unreachable

.loopexit87.i.i.i.i:                              ; preds = %bb.cz
  store ptr null, ptr %i.xe, align 8, !noalias !7422
  %i.xg = getelementptr inbounds nuw i8, ptr %i.xe, i64 274
  store i16 0, ptr %i.xg, align 2, !noalias !7422
  %i.xh = getelementptr inbounds nuw [32 x i8], ptr %i.xb, i64 %.pre.i.i144 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !7423
  %.sroa.4.0..sroa_idx.i2.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 3 uses
  %.sroa.494.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  store ptr %i.xb, ptr %.sroa.494.0..sroa_idx.i.i.i, align 8, !noalias !7424
  %.sroa.5.0..sroa_idx.i3.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 40 ; 3 uses
  store ptr %i.xb, ptr %.sroa.5.0..sroa_idx.i3.i.i, align 8, !noalias !7424
  %.sroa.6.0..sroa_idx.i4.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  store i64 %.sroa.02.0.copyload.i, ptr %.sroa.6.0..sroa_idx.i4.i.i, align 8, !noalias !7424
  %.sroa.7.0..sroa_idx95.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  store ptr %i.xh, ptr %.sroa.7.0..sroa_idx95.i.i.i, align 8, !noalias !7424
  %.sroa.5.sroa.4.0..sroa.5.0..sroa_idx.sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  %.sroa.5.sroa.5.0..sroa.5.0..sroa_idx.sroa_idx.i.i.i.i.i146 = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  br label %bb.db

bb.db:                                            ; preds = %.loopexit.i.i7.i.i, %.loopexit87.i.i.i.i
  %.promoted75.i.i100.i.i.i = phi ptr [ %i.xb, %.loopexit87.i.i.i.i ], [ %.promoted75.i.i97.i.i.i, %.loopexit.i.i7.i.i ]
  %.sroa.012.0.i.i.i147 = phi i64 [ 0, %.loopexit87.i.i.i.i ], [ %i.aet, %.loopexit.i.i7.i.i ] ; 4 uses
  %.sroa.8.0.i.i.i148 = phi i64 [ 0, %.loopexit87.i.i.i.i ], [ %.sroa.8.2.i.i.i164, %.loopexit.i.i7.i.i ] ; 7 uses
  %.sroa.0.0.i.i.i149 = phi ptr [ %i.xe, %.loopexit87.i.i.i.i ], [ %.sroa.0.2.i.i.i165, %.loopexit.i.i7.i.i ] ; 10 uses
  %.promoted.i.i.i.i.i = phi i64 [ -9223372036854775807, %.loopexit87.i.i.i.i ], [ %.promoted.i.pre145.i96.i.i.i, %.loopexit.i.i7.i.i ]
  %.sroa.0.070.i.i.i.i = phi ptr [ %i.xe, %.loopexit87.i.i.i.i ], [ %.sroa.0.1.i.i.i.i166, %.loopexit.i.i7.i.i ] ; 6 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !7425)
  %.sroa.5.sroa.0.0.copyload.pre.i.i.i.i.i = load ptr, ptr %.sroa.4.0..sroa_idx.i2.i.i, align 8, !alias.scope !7425, !noalias !7423
  %.sroa.5.sroa.4.0.copyload.i.pre.i.i.i.i = load i64, ptr %.sroa.5.sroa.4.0..sroa.5.0..sroa_idx.sroa_idx.i.i.i.i.i, align 8, !alias.scope !7425, !noalias !7423
  br label %"_ZN4core3ptr97drop_in_place$LT$$LP$alloc..string..String$C$meilisearch_types..tasks..network..OutRemote$RP$$GT$17hba6689b54925ff7cE.exit18.i.i.i.i.i"

"_ZN4core3ptr97drop_in_place$LT$$LP$alloc..string..String$C$meilisearch_types..tasks..network..OutRemote$RP$$GT$17hba6689b54925ff7cE.exit18.i.i.i.i.i": ; preds = %"_ZN4core3ptr97drop_in_place$LT$$LP$alloc..string..String$C$meilisearch_types..tasks..network..OutRemote$RP$$GT$17hba6689b54925ff7cE.exit18.i.i.i.i.i.backedge", %bb.db
  %.promoted75.i.i99.i.i.i = phi ptr [ %.promoted75.i.i100.i.i.i, %bb.db ], [ %i.xl, %"_ZN4core3ptr97drop_in_place$LT$$LP$alloc..string..String$C$meilisearch_types..tasks..network..OutRemote$RP$$GT$17hba6689b54925ff7cE.exit18.i.i.i.i.i.backedge" ] ; 7 uses
  %.sroa.5.sroa.4.0.copyload.i.i.i.i.i = phi i64 [ %.sroa.5.sroa.4.0.copyload.i.pre.i.i.i.i, %bb.db ], [ %.sroa.835.sroa.6.0.i.i.i.i.i, %"_ZN4core3ptr97drop_in_place$LT$$LP$alloc..string..String$C$meilisearch_types..tasks..network..OutRemote$RP$$GT$17hba6689b54925ff7cE.exit18.i.i.i.i.i.backedge" ]
  %.sroa.5.sroa.0.0.copyload.i.i.i.i.i150 = phi ptr [ %.sroa.5.sroa.0.0.copyload.pre.i.i.i.i.i, %bb.db ], [ %.val12.i.i.i.i.i, %"_ZN4core3ptr97drop_in_place$LT$$LP$alloc..string..String$C$meilisearch_types..tasks..network..OutRemote$RP$$GT$17hba6689b54925ff7cE.exit18.i.i.i.i.i.backedge" ]
  %.sroa.0.0.copyload5.i74.i.i.i.i.i = phi i64 [ %.promoted.i.i.i.i.i, %bb.db ], [ %.sroa.0.0.copyload5.i.i.i.i.i.i, %"_ZN4core3ptr97drop_in_place$LT$$LP$alloc..string..String$C$meilisearch_types..tasks..network..OutRemote$RP$$GT$17hba6689b54925ff7cE.exit18.i.i.i.i.i.backedge" ] ; 2 uses
  %.sroa.5.sroa.5.0.copyload.i.i.i.i.i151 = load i64, ptr %.sroa.5.sroa.5.0..sroa.5.0..sroa_idx.sroa_idx.i.i.i.i.i146, align 8, !alias.scope !7425, !noalias !7423
  store i64 -9223372036854775807, ptr %i.b, align 8, !alias.scope !7425, !noalias !7423
  %.not.i.i.i.i.i152 = icmp eq i64 %.sroa.0.0.copyload5.i74.i.i.i.i.i, -9223372036854775807
  br i1 %.not.i.i.i.i.i152, label %bb.dc, label %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h51d2b68ebbb1f1deE.exit.i.i.i.i.i"

bb.dc:                                            ; preds = %"_ZN4core3ptr97drop_in_place$LT$$LP$alloc..string..String$C$meilisearch_types..tasks..network..OutRemote$RP$$GT$17hba6689b54925ff7cE.exit18.i.i.i.i.i"
  call void @llvm.experimental.noalias.scope.decl(metadata !7426)
  %i.xi = icmp eq ptr %.promoted75.i.i99.i.i.i, %i.xh
  br i1 %i.xi, label %"_ZN4core3ptr107drop_in_place$LT$$u5b$$LP$alloc..string..String$C$meilisearch_types..tasks..network..OutRemote$RP$$u5d$$GT$17h2bdfe137256ef869E.exit.i.i.i.i.i.i.i.i", label %bb.dd

bb.dd:                                            ; preds = %bb.dc
  %i.xj = getelementptr inbounds nuw i8, ptr %.promoted75.i.i99.i.i.i, i64 32 ; 2 uses
  store ptr %i.xj, ptr %.sroa.5.0..sroa_idx.i3.i.i, align 8, !alias.scope !7427, !noalias !7423
  %.sroa.033.0.copyload34.i.i.i.i.i = load i64, ptr %.promoted75.i.i99.i.i.i, align 8, !noalias !7428
  %.sroa.835.0..sroa_idx36.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.promoted75.i.i99.i.i.i, i64 8
  %.sroa.835.sroa.0.0.copyload.i.i.i.i.i = load ptr, ptr %.sroa.835.0..sroa_idx36.i.i.i.i.i, align 8, !noalias !7428
  %.sroa.835.sroa.6.0..sroa.835.0..sroa_idx36.sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.promoted75.i.i99.i.i.i, i64 16
  %.sroa.835.sroa.6.0.copyload.i.i.i.i.i = load i64, ptr %.sroa.835.sroa.6.0..sroa.835.0..sroa_idx36.sroa_idx.i.i.i.i.i, align 8, !noalias !7428
  %.sroa.835.sroa.7.0..sroa.835.0..sroa_idx36.sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.promoted75.i.i99.i.i.i, i64 24
  %.sroa.835.sroa.7.0.copyload.i.i.i.i.i = load i64, ptr %.sroa.835.sroa.7.0..sroa.835.0..sroa_idx36.sroa_idx.i.i.i.i.i, align 8, !noalias !7428
  br label %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h51d2b68ebbb1f1deE.exit.i.i.i.i.i"

"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h51d2b68ebbb1f1deE.exit.i.i.i.i.i": ; preds = %bb.dd, %"_ZN4core3ptr97drop_in_place$LT$$LP$alloc..string..String$C$meilisearch_types..tasks..network..OutRemote$RP$$GT$17hba6689b54925ff7cE.exit18.i.i.i.i.i"
  %.promoted75.i.i98.i.i.i = phi ptr [ %.promoted75.i.i99.i.i.i, %"_ZN4core3ptr97drop_in_place$LT$$LP$alloc..string..String$C$meilisearch_types..tasks..network..OutRemote$RP$$GT$17hba6689b54925ff7cE.exit18.i.i.i.i.i" ], [ %i.xj, %bb.dd ] ; 7 uses
  %.sroa.835.sroa.6.0.i.i.i.i.i = phi i64 [ %.sroa.5.sroa.4.0.copyload.i.i.i.i.i, %"_ZN4core3ptr97drop_in_place$LT$$LP$alloc..string..String$C$meilisearch_types..tasks..network..OutRemote$RP$$GT$17hba6689b54925ff7cE.exit18.i.i.i.i.i" ], [ %.sroa.835.sroa.6.0.copyload.i.i.i.i.i, %bb.dd ] ; 5 uses
  %.sroa.835.sroa.0.0.i.i.i.i.i = phi ptr [ %.sroa.5.sroa.0.0.copyload.i.i.i.i.i150, %"_ZN4core3ptr97drop_in_place$LT$$LP$alloc..string..String$C$meilisearch_types..tasks..network..OutRemote$RP$$GT$17hba6689b54925ff7cE.exit18.i.i.i.i.i" ], [ %.sroa.835.sroa.0.0.copyload.i.i.i.i.i, %bb.dd ] ; 7 uses
  %.sroa.835.sroa.7.0.i.i.i.i.i = phi i64 [ %.sroa.5.sroa.5.0.copyload.i.i.i.i.i151, %"_ZN4core3ptr97drop_in_place$LT$$LP$alloc..string..String$C$meilisearch_types..tasks..network..OutRemote$RP$$GT$17hba6689b54925ff7cE.exit18.i.i.i.i.i" ], [ %.sroa.835.sroa.7.0.copyload.i.i.i.i.i, %bb.dd ]
  %.sroa.033.0.i.i.i.i.i = phi i64 [ %.sroa.0.0.copyload5.i74.i.i.i.i.i, %"_ZN4core3ptr97drop_in_place$LT$$LP$alloc..string..String$C$meilisearch_types..tasks..network..OutRemote$RP$$GT$17hba6689b54925ff7cE.exit18.i.i.i.i.i" ], [ %.sroa.033.0.copyload34.i.i.i.i.i, %bb.dd ] ; 8 uses
  %.not9.i.i.i.i.i = icmp eq i64 %.sroa.033.0.i.i.i.i.i, -9223372036854775808
  br i1 %.not9.i.i.i.i.i, label %"_ZN137_$LT$alloc..collections..btree..dedup_sorted_iter..DedupSortedIter$LT$K$C$V$C$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hae616e213cf35653E.exit.i.i.i.i", label %bb.de

bb.de:                                            ; preds = %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h51d2b68ebbb1f1deE.exit.i.i.i.i.i"
  call void @llvm.experimental.noalias.scope.decl(metadata !7429)
  call void @llvm.experimental.noalias.scope.decl(metadata !7430)
  call void @llvm.experimental.noalias.scope.decl(metadata !7431)
  call void @llvm.experimental.noalias.scope.decl(metadata !7432)
  %i.xk = icmp eq ptr %.promoted75.i.i98.i.i.i, %i.xh
  br i1 %i.xk, label %.thread.i.i.i.i.i, label %bb.df

.thread.i.i.i.i.i:                                ; preds = %bb.de
  store i64 -9223372036854775808, ptr %i.b, align 8, !alias.scope !7433, !noalias !7423
  br label %.loopexit86.i.i.i.i

bb.df:                                            ; preds = %bb.de
  %i.xl = getelementptr inbounds nuw i8, ptr %.promoted75.i.i98.i.i.i, i64 32 ; 4 uses
  store ptr %i.xl, ptr %.sroa.5.0..sroa_idx.i3.i.i, align 8, !alias.scope !7434, !noalias !7423
  %.sroa.0.0.copyload5.i.i.i.i.i.i = load i64, ptr %.promoted75.i.i98.i.i.i, align 8, !noalias !7435 ; 6 uses
  %.sroa.5.0..sroa_idx6.i.i.i.i.i.i153 = getelementptr inbounds nuw i8, ptr %.promoted75.i.i98.i.i.i, i64 8
  store i64 %.sroa.0.0.copyload5.i.i.i.i.i.i, ptr %i.b, align 8, !alias.scope !7433, !noalias !7423
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.4.0..sroa_idx.i2.i.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.5.0..sroa_idx6.i.i.i.i.i.i153, i64 24, i1 false), !noalias !7436
  %i.xm = icmp ne i64 %.sroa.0.0.copyload5.i.i.i.i.i.i, -9223372036854775807
  call void @llvm.assume(i1 %i.xm)
  %.not10.i.i.i.i.i = icmp ne i64 %.sroa.0.0.copyload5.i.i.i.i.i.i, -9223372036854775808
  %.val13.i.i.i.i.i = load i64, ptr %.sroa.5.sroa.4.0..sroa.5.0..sroa_idx.sroa_idx.i.i.i.i.i, align 8, !noalias !7423
  %.not10.i.i.i.i.i.a = icmp eq i64 %.sroa.835.sroa.6.0.i.i.i.i.i, %.val13.i.i.i.i.i
  %or.cond.i.i.i.i154 = select i1 %.not10.i.i.i.i.i, i1 %.not10.i.i.i.i.i.a, i1 false
  br i1 %or.cond.i.i.i.i154, label %_ZN4core3cmp9PartialEq2ne17hbe4cb7e26b86de13E.exit.i.i.i.i.i168, label %.loopexit86.i.i.i.i

_ZN4core3cmp9PartialEq2ne17hbe4cb7e26b86de13E.exit.i.i.i.i.i168: ; preds = %bb.df
  %.val12.i.i.i.i.i = load ptr, ptr %.sroa.4.0..sroa_idx.i2.i.i, align 8, !alias.scope !7425, !noalias !7423, !nonnull !21, !noundef !21 ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.835.sroa.0.0.i.i.i.i.i) ]
  %bcmp.i.i.i.i.i.i.i.i.i169 = call i32 @bcmp(ptr nonnull readonly align 1 %.sroa.835.sroa.0.0.i.i.i.i.i, ptr nonnull readonly align 1 %.val12.i.i.i.i.i, i64 %.sroa.835.sroa.6.0.i.i.i.i.i), !alias.scope !7437, !noalias !7438
  %.not58.i.i.i.i.i = icmp eq i32 %bcmp.i.i.i.i.i.i.i.i.i169, 0
  br i1 %.not58.i.i.i.i.i, label %bb.dg, label %.loopexit86.i.i.i.i

bb.dg:                                            ; preds = %_ZN4core3cmp9PartialEq2ne17hbe4cb7e26b86de13E.exit.i.i.i.i.i168
  %i.xn = icmp eq i64 %.sroa.033.0.i.i.i.i.i, 0
  br i1 %i.xn, label %"_ZN4core3ptr97drop_in_place$LT$$LP$alloc..string..String$C$meilisearch_types..tasks..network..OutRemote$RP$$GT$17hba6689b54925ff7cE.exit18.i.i.i.i.i.backedge", label %bb.dh

bb.dh:                                            ; preds = %bb.dg
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.835.sroa.0.0.i.i.i.i.i, i64 noundef %.sroa.033.0.i.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #52, !noalias !7439
  br label %"_ZN4core3ptr97drop_in_place$LT$$LP$alloc..string..String$C$meilisearch_types..tasks..network..OutRemote$RP$$GT$17hba6689b54925ff7cE.exit18.i.i.i.i.i.backedge"

"_ZN4core3ptr97drop_in_place$LT$$LP$alloc..string..String$C$meilisearch_types..tasks..network..OutRemote$RP$$GT$17hba6689b54925ff7cE.exit18.i.i.i.i.i.backedge": ; preds = %bb.dh, %bb.dg
  br label %"_ZN4core3ptr97drop_in_place$LT$$LP$alloc..string..String$C$meilisearch_types..tasks..network..OutRemote$RP$$GT$17hba6689b54925ff7cE.exit18.i.i.i.i.i"

.body.i.i.i.i.sink.split:                         ; preds = %bb.dy, %bb.dt
  %.pn.i.i.i.i162.ph = phi { ptr, i32 } [ %i.abq, %bb.dt ], [ %i.afh, %bb.dy ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.835.sroa.0.0.i.i.i.i.i) ]
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.835.sroa.0.0.i.i.i.i.i, i64 noundef %.sroa.033.0.i.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #52, !noalias !7423
  br label %.body.i.i.i.i

.body.i.i.i.i:                                    ; preds = %.body.i.i.i.i.sink.split, %bb.dy, %bb.dt
  %.pn.i.i.i.i162 = phi { ptr, i32 } [ %i.abq, %bb.dt ], [ %i.afh, %bb.dy ], [ %.pn.i.i.i.i162.ph, %.body.i.i.i.i.sink.split ]
  call fastcc void @"_ZN4core3ptr276drop_in_place$LT$alloc..collections..btree..dedup_sorted_iter..DedupSortedIter$LT$alloc..string..String$C$meilisearch_types..tasks..network..OutRemote$C$alloc..vec..into_iter..IntoIter$LT$$LP$alloc..string..String$C$meilisearch_types..tasks..network..OutRemote$RP$$GT$$GT$$GT$17h420a2cbdf22e4a28E"(ptr noalias noundef align 8 dereferenceable(64) %i.b) #55, !noalias !7423
  br label %.body184

.loopexit86.i.i.i.i:                              ; preds = %_ZN4core3cmp9PartialEq2ne17hbe4cb7e26b86de13E.exit.i.i.i.i.i168, %bb.df, %.thread.i.i.i.i.i
  %.promoted75.i.i97.i.i.i = phi ptr [ %i.xh, %.thread.i.i.i.i.i ], [ %i.xl, %bb.df ], [ %i.xl, %_ZN4core3cmp9PartialEq2ne17hbe4cb7e26b86de13E.exit.i.i.i.i.i168 ]
  %.promoted.i.pre145.i96.i.i.i = phi i64 [ -9223372036854775808, %.thread.i.i.i.i.i ], [ %.sroa.0.0.copyload5.i.i.i.i.i.i, %bb.df ], [ %.sroa.0.0.copyload5.i.i.i.i.i.i, %_ZN4core3cmp9PartialEq2ne17hbe4cb7e26b86de13E.exit.i.i.i.i.i168 ]
  %.sroa.12.24.extract.trunc.i.i.i.i = trunc i64 %.sroa.835.sroa.7.0.i.i.i.i.i to i8 ; 2 uses
  %i.xo = getelementptr inbounds nuw i8, ptr %.sroa.0.070.i.i.i.i, i64 274 ; 2 uses
  %i.xp = load i16, ptr %i.xo, align 2, !noalias !7423, !noundef !21 ; 3 uses
  %i.xq = icmp ult i16 %i.xp, 11
  br i1 %i.xq, label %bb.dx, label %.preheader.i.i.i.i154

"_ZN137_$LT$alloc..collections..btree..dedup_sorted_iter..DedupSortedIter$LT$K$C$V$C$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hae616e213cf35653E.exit.i.i.i.i": ; preds = %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h51d2b68ebbb1f1deE.exit.i.i.i.i.i"
  %i.xr = ptrtoint ptr %i.xh to i64
  %i.xs = ptrtoint ptr %.promoted75.i.i98.i.i.i to i64
  %i.xt = sub nuw i64 %i.xr, %i.xs
  %i.xu = lshr exact i64 %i.xt, 5
  call void @llvm.experimental.noalias.scope.decl(metadata !7440)
  %i.xv = icmp eq ptr %i.xh, %.promoted75.i.i98.i.i.i
  br i1 %i.xv, label %"_ZN4core3ptr107drop_in_place$LT$$u5b$$LP$alloc..string..String$C$meilisearch_types..tasks..network..OutRemote$RP$$u5d$$GT$17h2bdfe137256ef869E.exit.i.i.i.i.i.i.i.i", label %.lr.ph.i.i.i.i.i.i.i8.i.i

.lr.ph.i.i.i.i.i.i.i8.i.i:                        ; preds = %"_ZN137_$LT$alloc..collections..btree..dedup_sorted_iter..DedupSortedIter$LT$K$C$V$C$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hae616e213cf35653E.exit.i.i.i.i", %"_ZN4core3ptr97drop_in_place$LT$$LP$alloc..string..String$C$meilisearch_types..tasks..network..OutRemote$RP$$GT$17hba6689b54925ff7cE.exit.i.i.i.i.i.i.i.i.i"
  %.sroa.0.011.i.i.i.i.i.i.i.i.i = phi i64 [ %i.xx, %"_ZN4core3ptr97drop_in_place$LT$$LP$alloc..string..String$C$meilisearch_types..tasks..network..OutRemote$RP$$GT$17hba6689b54925ff7cE.exit.i.i.i.i.i.i.i.i.i" ], [ 0, %"_ZN137_$LT$alloc..collections..btree..dedup_sorted_iter..DedupSortedIter$LT$K$C$V$C$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hae616e213cf35653E.exit.i.i.i.i" ] ; 2 uses
  %i.xw = getelementptr inbounds nuw [32 x i8], ptr %.promoted75.i.i98.i.i.i, i64 %.sroa.0.011.i.i.i.i.i.i.i.i.i ; 2 uses
  %i.xx = add nuw i64 %.sroa.0.011.i.i.i.i.i.i.i.i.i, 1 ; 2 uses
  %.val8.i.i.i.i.i.i.i.i.i = load i64, ptr %i.xw, align 8, !alias.scope !7441, !noalias !7442 ; 2 uses
  %i.xy = icmp eq i64 %.val8.i.i.i.i.i.i.i.i.i, 0
  br i1 %i.xy, label %"_ZN4core3ptr97drop_in_place$LT$$LP$alloc..string..String$C$meilisearch_types..tasks..network..OutRemote$RP$$GT$17hba6689b54925ff7cE.exit.i.i.i.i.i.i.i.i.i", label %bb.di

bb.di:                                            ; preds = %.lr.ph.i.i.i.i.i.i.i8.i.i
  %i.xz = getelementptr i8, ptr %i.xw, i64 8
  %.val9.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.xz, align 8, !alias.scope !7440, !noalias !7442, !nonnull !21, !noundef !21
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val9.i.i.i.i.i.i.i.i.i, i64 noundef %.val8.i.i.i.i.i.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #52, !noalias !7443
  br label %"_ZN4core3ptr97drop_in_place$LT$$LP$alloc..string..String$C$meilisearch_types..tasks..network..OutRemote$RP$$GT$17hba6689b54925ff7cE.exit.i.i.i.i.i.i.i.i.i"

"_ZN4core3ptr97drop_in_place$LT$$LP$alloc..string..String$C$meilisearch_types..tasks..network..OutRemote$RP$$GT$17hba6689b54925ff7cE.exit.i.i.i.i.i.i.i.i.i": ; preds = %bb.di, %.lr.ph.i.i.i.i.i.i.i8.i.i
  %i.ya = icmp eq i64 %i.xx, %i.xu
  br i1 %i.ya, label %"_ZN4core3ptr107drop_in_place$LT$$u5b$$LP$alloc..string..String$C$meilisearch_types..tasks..network..OutRemote$RP$$u5d$$GT$17h2bdfe137256ef869E.exit.i.i.i.i.i.i.i.i", label %.lr.ph.i.i.i.i.i.i.i8.i.i

"_ZN4core3ptr107drop_in_place$LT$$u5b$$LP$alloc..string..String$C$meilisearch_types..tasks..network..OutRemote$RP$$u5d$$GT$17h2bdfe137256ef869E.exit.i.i.i.i.i.i.i.i": ; preds = %bb.dc, %"_ZN4core3ptr97drop_in_place$LT$$LP$alloc..string..String$C$meilisearch_types..tasks..network..OutRemote$RP$$GT$17hba6689b54925ff7cE.exit.i.i.i.i.i.i.i.i.i", %"_ZN137_$LT$alloc..collections..btree..dedup_sorted_iter..DedupSortedIter$LT$K$C$V$C$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hae616e213cf35653E.exit.i.i.i.i"
  %i.yb = icmp eq i64 %.sroa.02.0.copyload.i, 0
  br i1 %i.yb, label %"_ZN4core3ptr276drop_in_place$LT$alloc..collections..btree..dedup_sorted_iter..DedupSortedIter$LT$alloc..string..String$C$meilisearch_types..tasks..network..OutRemote$C$alloc..vec..into_iter..IntoIter$LT$$LP$alloc..string..String$C$meilisearch_types..tasks..network..OutRemote$RP$$GT$$GT$$GT$17h420a2cbdf22e4a28E.exit.i.i.i.i", label %bb.dj

bb.dj:                                            ; preds = %"_ZN4core3ptr107drop_in_place$LT$$u5b$$LP$alloc..string..String$C$meilisearch_types..tasks..network..OutRemote$RP$$u5d$$GT$17h2bdfe137256ef869E.exit.i.i.i.i.i.i.i.i"
  %i.yc = shl nuw i64 %.sroa.02.0.copyload.i, 5
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.xb, i64 noundef %i.yc, i64 noundef range(i64 1, -9223372036854775807) 8) #52, !noalias !7442
  br label %"_ZN4core3ptr276drop_in_place$LT$alloc..collections..btree..dedup_sorted_iter..DedupSortedIter$LT$alloc..string..String$C$meilisearch_types..tasks..network..OutRemote$C$alloc..vec..into_iter..IntoIter$LT$$LP$alloc..string..String$C$meilisearch_types..tasks..network..OutRemote$RP$$GT$$GT$$GT$17h420a2cbdf22e4a28E.exit.i.i.i.i"

"_ZN4core3ptr276drop_in_place$LT$alloc..collections..btree..dedup_sorted_iter..DedupSortedIter$LT$alloc..string..String$C$meilisearch_types..tasks..network..OutRemote$C$alloc..vec..into_iter..IntoIter$LT$$LP$alloc..string..String$C$meilisearch_types..tasks..network..OutRemote$RP$$GT$$GT$$GT$17h420a2cbdf22e4a28E.exit.i.i.i.i": ; preds = %bb.dj, %"_ZN4core3ptr107drop_in_place$LT$$u5b$$LP$alloc..string..String$C$meilisearch_types..tasks..network..OutRemote$RP$$u5d$$GT$17h2bdfe137256ef869E.exit.i.i.i.i.i.i.i.i"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !7423
  %i.yd = icmp eq i64 %.sroa.8.0.i.i.i148, 0
  br i1 %i.yd, label %.loopexit, label %.lr.ph.i17.i.i.i.i170

.lr.ph.i17.i.i.i.i170:                            ; preds = %"_ZN4core3ptr276drop_in_place$LT$alloc..collections..btree..dedup_sorted_iter..DedupSortedIter$LT$alloc..string..String$C$meilisearch_types..tasks..network..OutRemote$C$alloc..vec..into_iter..IntoIter$LT$$LP$alloc..string..String$C$meilisearch_types..tasks..network..OutRemote$RP$$GT$$GT$$GT$17h420a2cbdf22e4a28E.exit.i.i.i.i", %"_ZN5alloc11collections5btree4node29BalancingContext$LT$K$C$V$GT$15bulk_steal_left17hc991fbed6c4dff4bE.exit.i.i.i.i.i"
  %.sroa.02.010.i.i.i.i.i171 = phi i64 [ %i.yl, %"_ZN5alloc11collections5btree4node29BalancingContext$LT$K$C$V$GT$15bulk_steal_left17hc991fbed6c4dff4bE.exit.i.i.i.i.i" ], [ %.sroa.8.0.i.i.i148, %"_ZN4core3ptr276drop_in_place$LT$alloc..collections..btree..dedup_sorted_iter..DedupSortedIter$LT$alloc..string..String$C$meilisearch_types..tasks..network..OutRemote$C$alloc..vec..into_iter..IntoIter$LT$$LP$alloc..string..String$C$meilisearch_types..tasks..network..OutRemote$RP$$GT$$GT$$GT$17h420a2cbdf22e4a28E.exit.i.i.i.i" ]
  %.sroa.03.09.i.i.i.i.i172 = phi ptr [ %i.yo, %"_ZN5alloc11collections5btree4node29BalancingContext$LT$K$C$V$GT$15bulk_steal_left17hc991fbed6c4dff4bE.exit.i.i.i.i.i" ], [ %.sroa.0.0.i.i.i149, %"_ZN4core3ptr276drop_in_place$LT$alloc..collections..btree..dedup_sorted_iter..DedupSortedIter$LT$alloc..string..String$C$meilisearch_types..tasks..network..OutRemote$C$alloc..vec..into_iter..IntoIter$LT$$LP$alloc..string..String$C$meilisearch_types..tasks..network..OutRemote$RP$$GT$$GT$$GT$17h420a2cbdf22e4a28E.exit.i.i.i.i" ] ; 4 uses
  %i.ye = getelementptr inbounds nuw i8, ptr %.sroa.03.09.i.i.i.i.i172, i64 274
  %i.yf = load i16, ptr %i.ye, align 2, !noalias !7423, !noundef !21 ; 3 uses
  %.not.i18.i.i.i.i173 = icmp eq i16 %i.yf, 0
  br i1 %.not.i18.i.i.i.i173, label %.noexc19.i.i.i.i177.invoke, label %bb.dk, !prof !23

bb.dk:                                            ; preds = %.lr.ph.i17.i.i.i.i170
  %i.yg = zext nneg i16 %i.yf to i64
  %i.yh = add nsw i64 %i.yg, -1                   ; 3 uses
  %i.yi = getelementptr inbounds nuw i8, ptr %.sroa.03.09.i.i.i.i.i172, i64 288
  %i.yj = getelementptr inbounds nuw [8 x i8], ptr %i.yi, i64 %i.yh ; 2 uses
  %i.yk = load ptr, ptr %i.yj, align 8, !noalias !7444, !nonnull !21, !noundef !21 ; 4 uses
  %i.yl = add i64 %.sroa.02.010.i.i.i.i.i171, -1  ; 3 uses
  %i.ym = icmp ult i16 %i.yf, 12
  call void @llvm.assume(i1 %i.ym)
  %i.yn = getelementptr inbounds nuw i8, ptr %i.yj, i64 8
  %i.yo = load ptr, ptr %i.yn, align 8, !noalias !7445, !nonnull !21, !noundef !21 ; 16 uses
  %i.yp = getelementptr inbounds nuw i8, ptr %i.yo, i64 274 ; 2 uses
  %i.yq = load i16, ptr %i.yp, align 2, !noalias !7423, !noundef !21 ; 3 uses
  %i.yr = icmp ult i16 %i.yq, 5
  br i1 %i.yr, label %bb.dl, label %"_ZN5alloc11collections5btree4node29BalancingContext$LT$K$C$V$GT$15bulk_steal_left17hc991fbed6c4dff4bE.exit.i.i.i.i.i"

"_ZN5alloc11collections5btree4node29BalancingContext$LT$K$C$V$GT$15bulk_steal_left17hc991fbed6c4dff4bE.exit.i.i.i.i.i": ; preds = %"_ZN5alloc11collections5btree4node29BalancingContext$LT$K$C$V$GT$15bulk_steal_left17hc991fbed6c4dff4bE.exit.loopexit.i.i.i.i.i", %bb.dk
  %i.ys = icmp eq i64 %i.yl, 0
  br i1 %i.ys, label %.loopexit, label %.lr.ph.i17.i.i.i.i170

bb.dl:                                            ; preds = %bb.dk
  %narrow.i.i.i.i.i175 = sub nuw nsw i16 5, %i.yq ; 2 uses
  %i.yt = zext nneg i16 %narrow.i.i.i.i.i175 to i64 ; 5 uses
  %i.yu = getelementptr inbounds nuw i8, ptr %i.yk, i64 274 ; 2 uses
  %i.yv = load i16, ptr %i.yu, align 2, !noalias !7446, !noundef !21 ; 2 uses
  %i.yw = zext nneg i16 %i.yq to i64              ; 3 uses
  %.not.i.i.i.i.i.i176 = icmp ugt i16 %narrow.i.i.i.i.i175, %i.yv
  br i1 %.not.i.i.i.i.i.i176, label %.noexc19.i.i.i.i177.invoke, label %_ZN5alloc11collections5btree4node13move_to_slice17hbb331c7e7a1c7bb8E.exit.i.i.i.i.i.i, !prof !23

.noexc19.i.i.i.i177.invoke:                       ; preds = %bb.dl, %.lr.ph.i17.i.i.i.i170
  %i.yx = phi ptr [ @1107, %.lr.ph.i17.i.i.i.i170 ], [ @1123, %bb.dl ]
  %i.yy = phi i64 [ 25, %.lr.ph.i17.i.i.i.i170 ], [ 39, %bb.dl ]
  %i.yz = phi ptr [ @1109, %.lr.ph.i17.i.i.i.i170 ], [ @1124, %bb.dl ]
  invoke void @_ZN4core9panicking5panic17ha264d2bb233f2b69E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.yx, i64 noundef %i.yy, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.yz) #57
          to label %.noexc19.i.i.i.i177.cont unwind label %bb.eb

.noexc19.i.i.i.i177.cont:                         ; preds = %.noexc19.i.i.i.i177.invoke
  unreachable

_ZN5alloc11collections5btree4node13move_to_slice17hbb331c7e7a1c7bb8E.exit.i.i.i.i.i.i: ; preds = %bb.dl
  %i.za = zext i16 %i.yv to i64                   ; 2 uses
  %i.zb = sub nuw nsw i64 %i.za, %i.yt            ; 4 uses
  %i.zc = trunc nuw i64 %i.zb to i16
  store i16 %i.zc, ptr %i.yu, align 2, !noalias !7446
  store i16 5, ptr %i.yp, align 2, !noalias !7446
  %i.zd = getelementptr inbounds nuw i8, ptr %i.yo, i64 8 ; 4 uses
  %i.ze = getelementptr inbounds nuw [24 x i8], ptr %i.zd, i64 %i.yt
  %i.zf = mul nuw nsw i64 %i.yw, 24
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.ze, ptr nonnull align 8 %i.zd, i64 %i.zf, i1 false), !alias.scope !7447, !noalias !7446
  %i.zg = getelementptr inbounds nuw i8, ptr %i.yo, i64 276 ; 4 uses
  %i.zh = getelementptr inbounds nuw i8, ptr %i.zg, i64 %i.yt
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.zh, ptr nonnull align 2 %i.zg, i64 %i.yw, i1 false), !alias.scope !7448, !noalias !7446
  %i.zi = add nuw nsw i64 %i.zb, 1                ; 4 uses
  %i.zj = sub nuw nsw i64 %i.za, %i.zi            ; 4 uses
  %i.zk = getelementptr inbounds nuw i8, ptr %i.yk, i64 8 ; 2 uses
  %i.zl = getelementptr inbounds nuw [24 x i8], ptr %i.zk, i64 %i.zi
  %i.zm = mul nuw nsw i64 %i.zj, 24
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.zd, ptr nonnull readonly align 8 %i.zl, i64 %i.zm, i1 false), !alias.scope !7449, !noalias !7446
  %i.zn = getelementptr inbounds nuw i8, ptr %i.yk, i64 276 ; 2 uses
  %i.zo = getelementptr inbounds nuw i8, ptr %i.zn, i64 %i.zi
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 2 %i.zg, ptr nonnull readonly align 1 %i.zo, i64 range(i64 0, 65536) %i.zj, i1 false), !alias.scope !7450, !noalias !7446
  %i.zp = getelementptr inbounds nuw [24 x i8], ptr %i.zk, i64 %i.zb
  %i.zq = getelementptr inbounds nuw i8, ptr %i.zn, i64 %i.zb
  %i.zr = load i8, ptr %i.zq, align 1, !range !51, !noalias !7446, !noundef !21
  %i.zs = getelementptr inbounds nuw i8, ptr %.sroa.03.09.i.i.i.i.i172, i64 8
  %i.zt = getelementptr inbounds nuw [24 x i8], ptr %i.zs, i64 %i.yh ; 2 uses
  %i.zu = getelementptr inbounds nuw i8, ptr %.sroa.03.09.i.i.i.i.i172, i64 276
  %i.zv = getelementptr inbounds nuw i8, ptr %i.zu, i64 %i.yh ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %i.zt, i64 24, i1 false), !noalias !7446
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.zt, ptr noundef nonnull align 8 dereferenceable(24) %i.zp, i64 24, i1 false), !noalias !7446
  %i.zw = load i8, ptr %i.zv, align 1, !range !51, !noalias !7451, !noundef !21
  store i8 %i.zr, ptr %i.zv, align 1, !noalias !7451
  %i.zx = getelementptr inbounds nuw [24 x i8], ptr %i.zd, i64 %i.zj
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.zx, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false), !noalias !7446
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.zy = getelementptr inbounds nuw i8, ptr %i.zg, i64 %i.zj
  store i8 %i.zw, ptr %i.zy, align 1, !noalias !7446
  %cond.i.i.i.i.i = icmp eq i64 %i.yl, 0
  br i1 %cond.i.i.i.i.i, label %.loopexit, label %"_ZN5alloc11collections5btree4node29BalancingContext$LT$K$C$V$GT$15bulk_steal_left17hc991fbed6c4dff4bE.exit.loopexit.i.i.i.i.i"

"_ZN5alloc11collections5btree4node29BalancingContext$LT$K$C$V$GT$15bulk_steal_left17hc991fbed6c4dff4bE.exit.loopexit.i.i.i.i.i": ; preds = %_ZN5alloc11collections5btree4node13move_to_slice17hbb331c7e7a1c7bb8E.exit.i.i.i.i.i.i
  %i.zz = getelementptr inbounds nuw i8, ptr %i.yo, i64 288 ; 4 uses
  %i.aaa = getelementptr inbounds nuw [8 x i8], ptr %i.zz, i64 %i.yt
  %i.aab = shl nuw nsw i64 %i.yw, 3
  %i.aac = add nuw nsw i64 %i.aab, 8
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.aaa, ptr noundef nonnull align 8 dereferenceable(1) %i.zz, i64 %i.aac, i1 false), !alias.scope !7452, !noalias !7446
  %i.aad = getelementptr inbounds nuw i8, ptr %i.yk, i64 288
  %i.aae = getelementptr inbounds nuw [8 x i8], ptr %i.aad, i64 %i.zi
  %i.aaf = shl nuw nsw i64 %i.yt, 3
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.zz, ptr noundef nonnull readonly align 8 dereferenceable(1) %i.aae, i64 %i.aaf, i1 false), !alias.scope !7453, !noalias !7446
  %i.aag = load ptr, ptr %i.zz, align 8, !noalias !7454, !nonnull !21, !noundef !21 ; 2 uses
  store ptr %i.yo, ptr %i.aag, align 8, !noalias !7455
  %i.aah = getelementptr inbounds nuw i8, ptr %i.aag, i64 272
  store i16 0, ptr %i.aah, align 8, !noalias !7455
  %i.aai = getelementptr inbounds nuw i8, ptr %i.yo, i64 296
  %i.aaj = load ptr, ptr %i.aai, align 8, !noalias !7454, !nonnull !21, !noundef !21 ; 2 uses
  store ptr %i.yo, ptr %i.aaj, align 8, !noalias !7455
  %i.aak = getelementptr inbounds nuw i8, ptr %i.aaj, i64 272
  store i16 1, ptr %i.aak, align 8, !noalias !7455
  %i.aal = getelementptr inbounds nuw i8, ptr %i.yo, i64 304
  %i.aam = load ptr, ptr %i.aal, align 8, !noalias !7454, !nonnull !21, !noundef !21 ; 2 uses
  store ptr %i.yo, ptr %i.aam, align 8, !noalias !7455
  %i.aan = getelementptr inbounds nuw i8, ptr %i.aam, i64 272
  store i16 2, ptr %i.aan, align 8, !noalias !7455
  %i.aao = getelementptr inbounds nuw i8, ptr %i.yo, i64 312
  %i.aap = load ptr, ptr %i.aao, align 8, !noalias !7454, !nonnull !21, !noundef !21 ; 2 uses
  store ptr %i.yo, ptr %i.aap, align 8, !noalias !7455
  %i.aaq = getelementptr inbounds nuw i8, ptr %i.aap, i64 272
  store i16 3, ptr %i.aaq, align 8, !noalias !7455
  %i.aar = getelementptr inbounds nuw i8, ptr %i.yo, i64 320
  %i.aas = load ptr, ptr %i.aar, align 8, !noalias !7454, !nonnull !21, !noundef !21 ; 2 uses
  store ptr %i.yo, ptr %i.aas, align 8, !noalias !7455
  %i.aat = getelementptr inbounds nuw i8, ptr %i.aas, i64 272
  store i16 4, ptr %i.aat, align 8, !noalias !7455
  %i.aau = getelementptr inbounds nuw i8, ptr %i.yo, i64 328
  %i.aav = load ptr, ptr %i.aau, align 8, !noalias !7454, !nonnull !21, !noundef !21 ; 2 uses
  store ptr %i.yo, ptr %i.aav, align 8, !noalias !7455
  %i.aaw = getelementptr inbounds nuw i8, ptr %i.aav, i64 272
  store i16 5, ptr %i.aaw, align 8, !noalias !7455
  br label %"_ZN5alloc11collections5btree4node29BalancingContext$LT$K$C$V$GT$15bulk_steal_left17hc991fbed6c4dff4bE.exit.i.i.i.i.i"

.preheader.i.i.i.i154:                            ; preds = %.loopexit86.i.i.i.i, %bb.dm
  %.sroa.5.0.i.i.i.i155 = phi i64 [ %i.aay, %bb.dm ], [ 0, %.loopexit86.i.i.i.i ]
  %.sroa.0.0.i.i6.i.i = phi ptr [ %i.aax, %bb.dm ], [ %.sroa.0.070.i.i.i.i, %.loopexit86.i.i.i.i ]
  %i.aax = load ptr, ptr %.sroa.0.0.i.i6.i.i, align 8, !noalias !7456, !noundef !21 ; 4 uses
  %.not.i22.i.i.i.i = icmp eq ptr %i.aax, null
  br i1 %.not.i22.i.i.i.i, label %bb.dn, label %bb.dm

bb.dm:                                            ; preds = %.preheader.i.i.i.i154
  %i.aay = add i64 %.sroa.5.0.i.i.i.i155, 1       ; 2 uses
  %i.aaz = getelementptr inbounds nuw i8, ptr %i.aax, i64 274
  %i.aba = load i16, ptr %i.aaz, align 2, !noalias !7423, !noundef !21
  %i.abb = icmp ult i16 %i.aba, 11
  br i1 %i.abb, label %.loopexit85.i.i.i.i, label %.preheader.i.i.i.i154

bb.dn:                                            ; preds = %.preheader.i.i.i.i154
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.i.i.i149) ]
  call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #52, !noalias !7457
  %i.abc = call noalias noundef align 8 dereferenceable_or_null(384) ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef 384, i64 noundef range(i64 1, -9223372036854775807) 8) #52, !noalias !7457 ; 7 uses
  %i.abd = icmp eq ptr %i.abc, null
  br i1 %i.abd, label %bb.do, label %bb.dq, !prof !23

bb.do:                                            ; preds = %bb.dn
  invoke void @_ZN5alloc5alloc18handle_alloc_error17h8f86e24af4223f3dE(i64 noundef 8, i64 noundef 384) #57
end_hunk_3
begin_hunk_4_@"_ZN48_$LT$heed..Error$u20$as$u20$core..fmt..Debug$GT$3fmt17h807d89a2f0c356cbE":bb.a
bb.e:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.l, ptr %i.a, align 8
  %i.m = call noundef zeroext i1 @_ZN4core3fmt9Formatter25debug_tuple_field1_finish17h8f1f32fd9454ecadE(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @1051, i64 noundef 8, ptr noundef nonnull align 1 %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @1049)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.g

bb.f:                                             ; preds = %bb.a
  %i.n = tail call noundef zeroext i1 @_ZN4core3fmt9Formatter9write_str17haacafd99ed76659fE(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @1052, i64 noundef 16)
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e, %bb.d, %bb.c, %bb.b
  %.sroa.0.0.in = phi i1 [ %i.g, %bb.b ], [ %i.i, %bb.c ], [ %i.k, %bb.d ], [ %i.m, %bb.e ], [ %i.n, %bb.f ]
  ret i1 %.sroa.0.0.in
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @"_ZN49_$LT$T$u20$as$u20$alloc..string..SpecToString$GT$14spec_to_string17he446606c877b11fbE"(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(24) %0, i8 %.0.val) unnamed_addr #0 personality ptr @rust_eh_personality {
switch.lookup:
  %i.a = alloca [24 x i8], align 8                ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i64 0, ptr %i.a, align 8
  %.sroa.42.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 3 uses
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.42.0..sroa_idx, align 8
  %.sroa.53.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 3 uses
  store i64 0, ptr %.sroa.53.0..sroa_idx, align 8
  %i.b = zext nneg i8 %.0.val to i64
  %switch.gep = getelementptr inbounds nuw [8 x i8], ptr @"switch.table._ZN49_$LT$T$u20$as$u20$alloc..string..SpecToString$GT$14spec_to_string17he446606c877b11fbE", i64 %i.b
  %switch.load = load ptr, ptr %switch.gep, align 8
  %i.c = zext nneg i8 %.0.val to i64
  %switch.gep1 = getelementptr inbounds nuw i8, ptr @"switch.table._ZN49_$LT$T$u20$as$u20$alloc..string..SpecToString$GT$14spec_to_string17he446606c877b11fbE.1981", i64 %i.c
  %switch.load2 = load i8, ptr %switch.gep1, align 1
  %switch.ext = zext i8 %switch.load2 to i64      ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !12474)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !12475)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !12476)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !12477)
  invoke fastcc void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$7reserve21do_reserve_and_handle17h45307a5a03ebcc73E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.a, i64 noundef 0, i64 noundef %switch.ext, i64 noundef 1, i64 noundef 1)
          to label %"_ZN4core6result19Result$LT$T$C$E$GT$6expect17h60f2df308c08f102E.exit" unwind label %bb.a

bb.a:                                             ; preds = %switch.lookup
  %i.d = landingpad { ptr, i32 }
          cleanup
  tail call void @llvm.experimental.noalias.scope.decl(metadata !12478)
  %.val.i = load i64, ptr %i.a, align 8, !alias.scope !12478 ; 2 uses
  %i.e = icmp eq i64 %.val.i, 0
  br i1 %i.e, label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17hfb8d17e84375b72dE.exit", label %bb.b

bb.b:                                             ; preds = %bb.a
  %.val1.i = load ptr, ptr %.sroa.42.0..sroa_idx, align 8, !alias.scope !12478, !nonnull !21, !noundef !21
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i, i64 noundef %.val.i, i64 noundef range(i64 1, -9223372036854775807) 1) #52, !noalias !12478
  br label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17hfb8d17e84375b72dE.exit"

"_ZN4core6result19Result$LT$T$C$E$GT$6expect17h60f2df308c08f102E.exit": ; preds = %switch.lookup
  %.pre.i.i.i.i = load i64, ptr %.sroa.53.0..sroa_idx, align 8, !alias.scope !12479 ; 3 uses
  %i.f = icmp sgt i64 %.pre.i.i.i.i, -1
  tail call void @llvm.assume(i1 %i.f)
  %i.g = load ptr, ptr %.sroa.42.0..sroa_idx, align 8, !alias.scope !12479, !nonnull !21, !noundef !21
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 %.pre.i.i.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.h, ptr noundef nonnull readonly align 1 dereferenceable(1) %switch.load, i64 %switch.ext, i1 false), !noalias !12479
  %i.i = add nuw i64 %.pre.i.i.i.i, %switch.ext
  store i64 %i.i, ptr %.sroa.53.0..sroa_idx, align 8, !alias.scope !12479
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void

"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17hfb8d17e84375b72dE.exit": ; preds = %bb.b, %bb.a
  resume { ptr, i32 } %i.d
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @"_ZN4core3fmt3num52_$LT$impl$u20$core..fmt..Debug$u20$for$u20$usize$GT$3fmt17hfbad01e72c46968eE"(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.b = load i32, ptr %i.a, align 8, !noundef !21 ; 2 uses
  %i.c = and i32 %i.b, 33554432
  %i.d = icmp eq i32 %i.c, 0
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = and i32 %i.b, 67108864
  %i.f = icmp eq i32 %i.e, 0
  br i1 %i.f, label %bb.d, label %bb.e

bb.c:                                             ; preds = %bb.a
  %i.g = tail call noundef zeroext i1 @"_ZN4core3fmt3num55_$LT$impl$u20$core..fmt..LowerHex$u20$for$u20$usize$GT$3fmt17h50805a32588de60dE"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %0, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  br label %bb.f

bb.d:                                             ; preds = %bb.b
  %i.h = tail call noundef zeroext i1 @"_ZN4core3fmt3num3imp54_$LT$impl$u20$core..fmt..Display$u20$for$u20$usize$GT$3fmt17h47414302a1568dceE"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %0, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  br label %bb.f

bb.e:                                             ; preds = %bb.b
  %i.i = tail call noundef zeroext i1 @"_ZN4core3fmt3num55_$LT$impl$u20$core..fmt..UpperHex$u20$for$u20$usize$GT$3fmt17h34bfbea6236dacd0E"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %0, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e, %bb.c
  %.sroa.0.0.in = phi i1 [ %i.h, %bb.d ], [ %i.i, %bb.e ], [ %i.g, %bb.c ]
  ret i1 %.sroa.0.0.in
}

; Function Attrs: nonlazybind uwtable
define internal noundef zeroext i1 @_ZN4core3fmt5Write10write_char17hce7d52c430035575E(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %0, i32 noundef range(i32 0, 1114112) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [4 x i8], align 4                 ; 14 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i32 0, ptr %i.a, align 4
  %i.b = icmp samesign ult i32 %1, 128
  br i1 %i.b, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = icmp samesign ult i32 %1, 2048
  %i.d = trunc i32 %1 to i8
  %i.e = and i8 %i.d, 63
  %i.f = or disjoint i8 %i.e, -128                ; 3 uses
  %i.g = lshr i32 %1, 6
  %i.h = trunc i32 %i.g to i8                     ; 2 uses
  %i.i = and i8 %i.h, 63
  %i.j = or disjoint i8 %i.i, -128                ; 2 uses
  %i.k = lshr i32 %1, 12
  %i.l = trunc i32 %i.k to i8                     ; 2 uses
  %i.m = and i8 %i.l, 63
  %i.n = or disjoint i8 %i.m, -128
  %i.o = lshr i32 %1, 18
  %i.p = trunc nuw nsw i32 %i.o to i8
  %i.q = or disjoint i8 %i.p, -16
  br i1 %i.c, label %bb.d, label %bb.e

bb.c:                                             ; preds = %bb.a
  %i.r = trunc nuw nsw i32 %1 to i8
  store i8 %i.r, ptr %i.a, align 4, !alias.scope !12485
  br label %"_ZN81_$LT$std..io..default_write_fmt..Adapter$LT$T$GT$$u20$as$u20$core..fmt..Write$GT$9write_str17h788128631bc5aea4E.exit"

bb.d:                                             ; preds = %bb.b
  %i.s = or disjoint i8 %i.h, -64
  store i8 %i.s, ptr %i.a, align 4, !alias.scope !12485
  %i.t = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  store i8 %i.f, ptr %i.t, align 1, !alias.scope !12485
  br label %"_ZN81_$LT$std..io..default_write_fmt..Adapter$LT$T$GT$$u20$as$u20$core..fmt..Write$GT$9write_str17h788128631bc5aea4E.exit"

bb.e:                                             ; preds = %bb.b
  %i.u = icmp samesign ult i32 %1, 65536
  br i1 %i.u, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.v = or disjoint i8 %i.l, -32
  store i8 %i.v, ptr %i.a, align 4, !alias.scope !12485
  %i.w = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  store i8 %i.j, ptr %i.w, align 1, !alias.scope !12485
  %i.x = getelementptr inbounds nuw i8, ptr %i.a, i64 2
  store i8 %i.f, ptr %i.x, align 2, !alias.scope !12485
  br label %"_ZN81_$LT$std..io..default_write_fmt..Adapter$LT$T$GT$$u20$as$u20$core..fmt..Write$GT$9write_str17h788128631bc5aea4E.exit"

bb.g:                                             ; preds = %bb.e
  store i8 %i.q, ptr %i.a, align 4, !alias.scope !12485
  %i.y = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  store i8 %i.n, ptr %i.y, align 1, !alias.scope !12485
  %i.z = getelementptr inbounds nuw i8, ptr %i.a, i64 2
  store i8 %i.j, ptr %i.z, align 2, !alias.scope !12485
  %i.aa = getelementptr inbounds nuw i8, ptr %i.a, i64 3
  store i8 %i.f, ptr %i.aa, align 1, !alias.scope !12485
  br label %"_ZN81_$LT$std..io..default_write_fmt..Adapter$LT$T$GT$$u20$as$u20$core..fmt..Write$GT$9write_str17h788128631bc5aea4E.exit"

"_ZN81_$LT$std..io..default_write_fmt..Adapter$LT$T$GT$$u20$as$u20$core..fmt..Write$GT$9write_str17h788128631bc5aea4E.exit": ; preds = %bb.c, %bb.d, %bb.f, %bb.g
  %.sroa.0.05.i = phi i64 [ 1, %bb.c ], [ 2, %bb.d ], [ 3, %bb.f ], [ 4, %bb.g ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !12486)
  %i.ab = load ptr, ptr %0, align 8, !alias.scope !12486, !nonnull !21, !align !27, !noundef !21
  %.val.i = load ptr, ptr %i.ab, align 8, !noalias !12487, !nonnull !21, !noundef !21
  call void @"_ZN74_$LT$bytes..bytes_mut..BytesMut$u20$as$u20$bytes..buf..buf_mut..BufMut$GT$9put_slice17he91f65def23323d7E"(ptr noalias noundef nonnull align 8 dereferenceable(32) %.val.i, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.a, i64 noundef range(i64 1, 0) %.sroa.0.05.i), !noalias !12486
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i1 false
}

; Function Attrs: nonlazybind uwtable
define internal noundef zeroext i1 @_ZN4core3fmt5Write9write_fmt17h27df0e07c968e79fE(ptr noalias noundef align 8 dereferenceable(16) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(48) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
"_ZN75_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write..write_fmt..SpecWriteFmt$GT$14spec_write_fmt17h9c48b5de674c6d65E.exit":
  %i.a = alloca [48 x i8], align 8                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !12492
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.a, ptr noundef nonnull readonly align 8 dereferenceable(48) %1, i64 48, i1 false), !noalias !12493
  %i.b = call noundef zeroext i1 @_ZN4core3fmt5write17h80461e1e45e4fdd2E(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) @1033, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.a), !noalias !12494, !inline_history !12491
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !12492
  ret i1 %i.b
}

; Function Attrs: nonlazybind uwtable
define internal noundef zeroext i1 @_ZN4core3fmt5Write9write_fmt17he512ce5f74f4e825E(ptr noalias noundef align 8 dereferenceable(24) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(48) %1) unnamed_addr #1 {
"_ZN75_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write..write_fmt..SpecWriteFmt$GT$14spec_write_fmt17he4f52bbdad5a93f5E.exit":
  %i.a = alloca [48 x i8], align 8                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !12499
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.a, ptr noundef nonnull readonly align 8 dereferenceable(48) %1, i64 48, i1 false), !noalias !12500
  %i.b = call noundef zeroext i1 @_ZN4core3fmt5write17h80461e1e45e4fdd2E(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) @1053, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.a), !noalias !12501, !inline_history !12498
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !12499
  ret i1 %i.b
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc noundef zeroext i1 @_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E(ptr %.0.val, ptr nofree readonly captures(address, read_provenance) %.8.val, ptr noalias noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(48) %0) unnamed_addr #0 {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 4 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val), "nonnull"(ptr %.8.val) ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.a, ptr noundef nonnull align 8 dereferenceable(48) %0, i64 48, i1 false)
  %i.b = call noundef zeroext i1 @_ZN4core3fmt5write17h80461e1e45e4fdd2E(ptr noundef nonnull align 1 %.0.val, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %.8.val, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i1 %i.b
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal void @"_ZN4core3ops8function6FnOnce40call_once$u7b$$u7b$vtable.shim$u7d$$u7d$17hc58ddb675a2ae43aE"(ptr nofree noundef readonly captures(none) %0, ptr nofree nonnull readnone align 4 captures(none) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = load ptr, ptr %0, align 8, !nonnull !21, !align !27, !noundef !21
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.b, ptr %i.a, align 8, !noalias !12504
  call void @"_ZN3std4sync6poison4once4Once15call_once_force28_$u7b$$u7b$closure$u7d$$u7d$17h47a9b900d02b6da8E"(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.a, ptr nonnull readnone align 4 poison)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal void @_ZN4core3ops8function6FnOnce9call_once17h39a95578889b43d0E(ptr noundef %0, ptr noundef nonnull align 8 %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 5 uses
  %i.b = icmp eq ptr %0, null
  br i1 %i.b, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load i64, ptr %0, align 8, !noundef !21
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.sroa.0.0.i = phi i64 [ %i.c, %bb.b ], [ 0, %bb.a ]
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 120
  %.val.i.i = load ptr, ptr %i.d, align 8, !noundef !21 ; 2 uses
  %i.e = icmp eq ptr %.val.i.i, null
  br i1 %i.e, label %"_ZN6papaya3raw24HashMap$LT$K$C$V$C$S$GT$11try_promote28_$u7b$$u7b$closure$u7d$$u7d$17h20b399738d292621E.exit", label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.c
  %i.f = tail call noundef nonnull align 8 ptr @llvm.threadlocal.address.p0(ptr @"_ZN5seize3raw3tls9thread_id6THREAD29_$u7b$$u7b$constant$u7d$$u7d$28_$u7b$$u7b$closure$u7d$$u7d$3VAL17hb0ffe1e3a992a583E") ; 3 uses
  %.sroa.4.0..sroa_idx.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  br label %bb.d

bb.d:                                             ; preds = %bb.g, %.lr.ph.i.i.i
  %.sroa.0.03.i.i.i = phi ptr [ %.val.i.i, %.lr.ph.i.i.i ], [ %i.j, %bb.g ] ; 4 uses
  %i.g = load ptr, ptr %.sroa.0.03.i.i.i, align 8, !noundef !21
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %.sroa.0.0.copyload.i.i.i.i.i.i.i = load i64, ptr %i.f, align 8, !noalias !12511
  %i.h = trunc nuw i64 %.sroa.0.0.copyload.i.i.i.i.i.i.i to i1
  br i1 %i.h, label %bb.e, label %bb.f, !prof !49

bb.e:                                             ; preds = %bb.d
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.4.0..sroa_idx.i.i.i.i.i.i.i, i64 24, i1 false)
  br label %"_ZN3std6thread5local17LocalKey$LT$T$GT$4with17hf62a9631c34d085bE.exit.i.i.i.i"

bb.f:                                             ; preds = %bb.d
  invoke void @_ZN5seize3raw3tls9thread_id6Thread9init_slow17h7da54b82a5c2c906E(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.a, ptr noundef nonnull align 8 %i.f)
          to label %"_ZN3std6thread5local17LocalKey$LT$T$GT$4with17hf62a9631c34d085bE.exit.i.i.i.i" unwind label %bb.h

"_ZN3std6thread5local17LocalKey$LT$T$GT$4with17hf62a9631c34d085bE.exit.i.i.i.i": ; preds = %bb.f, %bb.e
  invoke fastcc void @_ZN5seize3raw9collector9Collector3add17h853fdbcd914f1854E(ptr noundef nonnull align 8 %1, ptr noundef %i.g, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.a)
          to label %bb.g unwind label %bb.h

bb.g:                                             ; preds = %"_ZN3std6thread5local17LocalKey$LT$T$GT$4with17hf62a9631c34d085bE.exit.i.i.i.i"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.i = getelementptr inbounds nuw i8, ptr %.sroa.0.03.i.i.i, i64 8
  %i.j = load ptr, ptr %i.i, align 8, !noundef !21 ; 2 uses
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.0.03.i.i.i, i64 noundef 16, i64 noundef 8) #52
  %i.k = icmp eq ptr %i.j, null
  br i1 %i.k, label %"_ZN6papaya3raw24HashMap$LT$K$C$V$C$S$GT$11try_promote28_$u7b$$u7b$closure$u7d$$u7d$17h20b399738d292621E.exit", label %bb.d

bb.h:                                             ; preds = %"_ZN3std6thread5local17LocalKey$LT$T$GT$4with17hf62a9631c34d085bE.exit.i.i.i.i", %bb.f
  %i.l = landingpad { ptr, i32 }
          cleanup
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.0.03.i.i.i, i64 noundef 16, i64 noundef 8) #52
  resume { ptr, i32 } %i.l

"_ZN6papaya3raw24HashMap$LT$K$C$V$C$S$GT$11try_promote28_$u7b$$u7b$closure$u7d$$u7d$17h20b399738d292621E.exit": ; preds = %bb.g, %bb.c
  call fastcc void @"_ZN6papaya3raw5alloc14Table$LT$T$GT$7dealloc17hae452f0be1b33f23E"(i64 %.sroa.0.0.i, ptr %0)
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @"_ZN4core3ptr100drop_in_place$LT$smallvec..SmallVec$LT$$u5b$http..header..value..HeaderValue$u3b$$u20$4$u5d$$GT$$GT$17h8564742e4e0d2bfeE"(ptr noalias noundef nonnull align 8 dereferenceable(168) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !12544)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.b = load i64, ptr %i.a, align 8, !alias.scope !12544, !noundef !21 ; 7 uses
  %i.c = icmp ugt i64 %i.b, 4
  br i1 %i.c, label %bb.d, label %"_ZN4core3ptr53drop_in_place$LT$http..header..value..HeaderValue$GT$17h58e446f60adaffecE.exit.i.i.preheader"

"_ZN4core3ptr53drop_in_place$LT$http..header..value..HeaderValue$GT$17h58e446f60adaffecE.exit.i.i.preheader": ; preds = %bb.a
  %i.d = icmp eq i64 %i.b, 0
  br i1 %i.d, label %"_ZN69_$LT$smallvec..SmallVec$LT$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h8a8e2bd3a6f2193fE.exit", label %.lr.ph

"_ZN4core3ptr53drop_in_place$LT$http..header..value..HeaderValue$GT$17h58e446f60adaffecE.exit.i.i": ; preds = %.lr.ph
  %i.e = icmp eq i64 %i.g, %i.b
  br i1 %i.e, label %"_ZN69_$LT$smallvec..SmallVec$LT$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h8a8e2bd3a6f2193fE.exit", label %.lr.ph

.lr.ph:                                           ; preds = %"_ZN4core3ptr53drop_in_place$LT$http..header..value..HeaderValue$GT$17h58e446f60adaffecE.exit.i.i.preheader", %"_ZN4core3ptr53drop_in_place$LT$http..header..value..HeaderValue$GT$17h58e446f60adaffecE.exit.i.i"
  %.sroa.0.0.i.i6 = phi i64 [ %i.g, %"_ZN4core3ptr53drop_in_place$LT$http..header..value..HeaderValue$GT$17h58e446f60adaffecE.exit.i.i" ], [ 0, %"_ZN4core3ptr53drop_in_place$LT$http..header..value..HeaderValue$GT$17h58e446f60adaffecE.exit.i.i.preheader" ] ; 2 uses
  %i.f = getelementptr inbounds nuw [40 x i8], ptr %0, i64 %.sroa.0.0.i.i6 ; 4 uses
  %i.g = add nuw nsw i64 %.sroa.0.0.i.i6, 1       ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !12545)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !12546)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !12547)
  %i.h = load ptr, ptr %i.f, align 8, !alias.scope !12548, !nonnull !21, !align !27, !noundef !21
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 32
  %i.j = load ptr, ptr %i.i, align 8, !noalias !12549, !nonnull !21, !noundef !21
  %i.k = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  %i.l = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.m = load ptr, ptr %i.l, align 8, !alias.scope !12548, !noundef !21
  %i.n = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.o = load i64, ptr %i.n, align 8, !alias.scope !12548, !noundef !21
  invoke void %i.j(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.k, ptr noundef %i.m, i64 noundef %i.o)
          to label %"_ZN4core3ptr53drop_in_place$LT$http..header..value..HeaderValue$GT$17h58e446f60adaffecE.exit.i.i" unwind label %bb.b, !inline_history !6

"_ZN4core3ptr53drop_in_place$LT$http..header..value..HeaderValue$GT$17h58e446f60adaffecE.exit7.i.i": ; preds = %.lr.ph8
  %i.p = add nuw nsw i64 %.sroa.0.1.i.i7, 1       ; 2 uses
  %i.q = icmp eq i64 %i.p, %i.b
  br i1 %i.q, label %common.resume.i, label %.lr.ph8

bb.b:                                             ; preds = %.lr.ph
  %i.r = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.s = icmp eq i64 %i.g, %i.b
  br i1 %i.s, label %common.resume.i, label %.lr.ph8

.lr.ph8:                                          ; preds = %bb.b, %"_ZN4core3ptr53drop_in_place$LT$http..header..value..HeaderValue$GT$17h58e446f60adaffecE.exit7.i.i"
  %.sroa.0.1.i.i7 = phi i64 [ %i.p, %"_ZN4core3ptr53drop_in_place$LT$http..header..value..HeaderValue$GT$17h58e446f60adaffecE.exit7.i.i" ], [ %i.g, %bb.b ] ; 2 uses
  %i.t = getelementptr inbounds nuw [40 x i8], ptr %0, i64 %.sroa.0.1.i.i7 ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !12550)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !12551)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !12552)
  %i.u = load ptr, ptr %i.t, align 8, !alias.scope !12553, !nonnull !21, !align !27, !noundef !21
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 32
  %i.w = load ptr, ptr %i.v, align 8, !noalias !12554, !nonnull !21, !noundef !21
  %i.x = getelementptr inbounds nuw i8, ptr %i.t, i64 24
  %i.y = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  %i.z = load ptr, ptr %i.y, align 8, !alias.scope !12553, !noundef !21
  %i.aa = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  %i.ab = load i64, ptr %i.aa, align 8, !alias.scope !12553, !noundef !21
  invoke void %i.w(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.x, ptr noundef %i.z, i64 noundef %i.ab)
          to label %"_ZN4core3ptr53drop_in_place$LT$http..header..value..HeaderValue$GT$17h58e446f60adaffecE.exit7.i.i" unwind label %bb.c, !inline_history !6

common.resume.i:                                  ; preds = %"_ZN4core3ptr53drop_in_place$LT$http..header..value..HeaderValue$GT$17h58e446f60adaffecE.exit7.i.i", %bb.b, %"_ZN4core3ptr83drop_in_place$LT$alloc..raw_vec..RawVec$LT$http..header..value..HeaderValue$GT$$GT$17h4e55723613b54c50E.exit.i.i"
  %common.resume.op.i = phi { ptr, i32 } [ %i.au, %"_ZN4core3ptr83drop_in_place$LT$alloc..raw_vec..RawVec$LT$http..header..value..HeaderValue$GT$$GT$17h4e55723613b54c50E.exit.i.i" ], [ %i.r, %bb.b ], [ %i.r, %"_ZN4core3ptr53drop_in_place$LT$http..header..value..HeaderValue$GT$17h58e446f60adaffecE.exit7.i.i" ]
  resume { ptr, i32 } %common.resume.op.i

bb.c:                                             ; preds = %.lr.ph8
  %i.ac = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #56
  unreachable

bb.d:                                             ; preds = %bb.a
  %i.ad = load ptr, ptr %0, align 8, !alias.scope !12544, !nonnull !21, !noundef !21 ; 4 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.af = load i64, ptr %i.ae, align 8, !alias.scope !12544, !noundef !21 ; 4 uses
  %i.ag = icmp eq i64 %i.af, 0
  br i1 %i.ag, label %"_ZN4core3ptr76drop_in_place$LT$alloc..vec..Vec$LT$http..header..value..HeaderValue$GT$$GT$17h54f5c05866476831E.exit.i", label %.lr.ph10

"_ZN4core3ptr53drop_in_place$LT$http..header..value..HeaderValue$GT$17h58e446f60adaffecE.exit.i.i.i.i": ; preds = %.lr.ph10
  %i.ah = icmp eq i64 %i.aj, %i.af
  br i1 %i.ah, label %"_ZN4core3ptr76drop_in_place$LT$alloc..vec..Vec$LT$http..header..value..HeaderValue$GT$$GT$17h54f5c05866476831E.exit.i", label %.lr.ph10

.lr.ph10:                                         ; preds = %bb.d, %"_ZN4core3ptr53drop_in_place$LT$http..header..value..HeaderValue$GT$17h58e446f60adaffecE.exit.i.i.i.i"
  %.sroa.0.0.i.i.i.i9 = phi i64 [ %i.aj, %"_ZN4core3ptr53drop_in_place$LT$http..header..value..HeaderValue$GT$17h58e446f60adaffecE.exit.i.i.i.i" ], [ 0, %bb.d ] ; 2 uses
  %i.ai = getelementptr inbounds nuw [40 x i8], ptr %i.ad, i64 %.sroa.0.0.i.i.i.i9 ; 4 uses
  %i.aj = add i64 %.sroa.0.0.i.i.i.i9, 1          ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !12555)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !12556)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !12557)
  %i.ak = load ptr, ptr %i.ai, align 8, !alias.scope !12558, !noalias !12559, !nonnull !21, !align !27, !noundef !21
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 32
  %i.am = load ptr, ptr %i.al, align 8, !noalias !12560, !nonnull !21, !noundef !21
  %i.an = getelementptr inbounds nuw i8, ptr %i.ai, i64 24
  %i.ao = getelementptr inbounds nuw i8, ptr %i.ai, i64 8
  %i.ap = load ptr, ptr %i.ao, align 8, !alias.scope !12558, !noalias !12559, !noundef !21
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ai, i64 16
  %i.ar = load i64, ptr %i.aq, align 8, !alias.scope !12558, !noalias !12559, !noundef !21
  invoke void %i.am(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.an, ptr noundef %i.ap, i64 noundef %i.ar)
          to label %"_ZN4core3ptr53drop_in_place$LT$http..header..value..HeaderValue$GT$17h58e446f60adaffecE.exit.i.i.i.i" unwind label %bb.e, !noalias !12559, !inline_history !6

"_ZN4core3ptr53drop_in_place$LT$http..header..value..HeaderValue$GT$17h58e446f60adaffecE.exit7.i.i.i.i": ; preds = %.lr.ph12
  %i.as = add i64 %.sroa.0.1.i.i.i.i11, 1         ; 2 uses
  %i.at = icmp eq i64 %i.as, %i.af
  br i1 %i.at, label %"_ZN4core3ptr83drop_in_place$LT$alloc..raw_vec..RawVec$LT$http..header..value..HeaderValue$GT$$GT$17h4e55723613b54c50E.exit.i.i", label %.lr.ph12

bb.e:                                             ; preds = %.lr.ph10
  %i.au = landingpad { ptr, i32 }
          cleanup
  %i.av = icmp eq i64 %i.aj, %i.af
  br i1 %i.av, label %"_ZN4core3ptr83drop_in_place$LT$alloc..raw_vec..RawVec$LT$http..header..value..HeaderValue$GT$$GT$17h4e55723613b54c50E.exit.i.i", label %.lr.ph12

.lr.ph12:                                         ; preds = %bb.e, %"_ZN4core3ptr53drop_in_place$LT$http..header..value..HeaderValue$GT$17h58e446f60adaffecE.exit7.i.i.i.i"
  %.sroa.0.1.i.i.i.i11 = phi i64 [ %i.as, %"_ZN4core3ptr53drop_in_place$LT$http..header..value..HeaderValue$GT$17h58e446f60adaffecE.exit7.i.i.i.i" ], [ %i.aj, %bb.e ] ; 2 uses
  %i.aw = getelementptr inbounds nuw [40 x i8], ptr %i.ad, i64 %.sroa.0.1.i.i.i.i11 ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !12561)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !12562)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !12563)
end_hunk_4
begin_hunk_5_@_ZN4core4iter6traits8iterator8Iterator7collect17hb54f208b3e986fb4E:bb.a
  %i.cq = phi i16 [ %i.cz, %"_ZN4core3ptr102drop_in_place$LT$$LP$alloc..string..String$C$milli..search..facet..facet_distribution..OrderBy$RP$$GT$17h76d7ec06363a1eaeE.exit.i.i.i.i.i.i.i.i.i.i" ], [ %i.p, %bb.q ] ; 2 uses
  %.not13.i.i.i.i.i.i.i1.i.i.i.i = icmp eq i16 %i.cq, 0
  br i1 %.not13.i.i.i.i.i.i.i1.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i4.i.i.i.i, label %"_ZN9hashbrown3raw21RawIterRange$LT$T$GT$9next_impl17haf0036b21ae44685E.exit.i.i.i.i.i.i.i.i.i.i"

.lr.ph.i.i.i.i.i.i.i4.i.i.i.i:                    ; preds = %.preheader.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i4.i.i.i.i
  %i.cr = phi ptr [ %i.cv, %.lr.ph.i.i.i.i.i.i.i4.i.i.i.i ], [ %.lcssa14.i.i.i.i.i.i.i.i.i.i, %.preheader.i.i.i.i.i.i.i.i.i.i ] ; 2 uses
  %i.cs = phi ptr [ %i.cu, %.lr.ph.i.i.i.i.i.i.i4.i.i.i.i ], [ %.lcssa710.i.i.i.i.i.i.i.i.i.i, %.preheader.i.i.i.i.i.i.i.i.i.i ]
  %.val11.i.i.i.i.i.i.i5.i.i.i.i = load <16 x i8>, ptr %i.cr, align 16, !noalias !18221
  %i.ct = icmp sgt <16 x i8> %.val11.i.i.i.i.i.i.i5.i.i.i.i, splat (i8 -1)
  %i.cu = getelementptr inbounds i8, ptr %i.cs, i64 -512 ; 2 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cr, i64 16 ; 2 uses
  %.cast.i.i.i.i.i.i.i6.i.i.i.i = bitcast <16 x i1> %i.ct to i16 ; 2 uses
  %.not.i.i.i.i.i.i.i7.i.i.i.i = icmp eq i16 %.cast.i.i.i.i.i.i.i6.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i.i.i7.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i4.i.i.i.i, label %"_ZN9hashbrown3raw21RawIterRange$LT$T$GT$9next_impl17haf0036b21ae44685E.exit.i.i.i.i.i.i.i.i.i.i"

"_ZN9hashbrown3raw21RawIterRange$LT$T$GT$9next_impl17haf0036b21ae44685E.exit.i.i.i.i.i.i.i.i.i.i": ; preds = %.lr.ph.i.i.i.i.i.i.i4.i.i.i.i, %.preheader.i.i.i.i.i.i.i.i.i.i
  %.lcssa13.i.i.i.i.i.i.i.i.i.i = phi ptr [ %.lcssa14.i.i.i.i.i.i.i.i.i.i, %.preheader.i.i.i.i.i.i.i.i.i.i ], [ %i.cv, %.lr.ph.i.i.i.i.i.i.i4.i.i.i.i ]
  %.lcssa79.i.i.i.i.i.i.i.i.i.i = phi ptr [ %.lcssa710.i.i.i.i.i.i.i.i.i.i, %.preheader.i.i.i.i.i.i.i.i.i.i ], [ %i.cu, %.lr.ph.i.i.i.i.i.i.i4.i.i.i.i ] ; 2 uses
  %.lcssa.i.i.i.i.i.i.i2.i.i.i.i = phi i16 [ %i.cq, %.preheader.i.i.i.i.i.i.i.i.i.i ], [ %.cast.i.i.i.i.i.i.i6.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i4.i.i.i.i ] ; 3 uses
  %i.cw = add i16 %.lcssa.i.i.i.i.i.i.i2.i.i.i.i, -1
  %i.cx = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i.i.i.i.i.i.i2.i.i.i.i, i1 true)
  %i.cy = zext nneg i16 %i.cx to i64
  %i.cz = and i16 %i.cw, %.lcssa.i.i.i.i.i.i.i2.i.i.i.i
  %i.da = sub nsw i64 0, %i.cy
  %i.db = getelementptr inbounds [32 x i8], ptr %.lcssa79.i.i.i.i.i.i.i.i.i.i, i64 %i.da ; 2 uses
  %i.dc = add i64 %i.cp, -1                       ; 2 uses
  %i.dd = getelementptr inbounds i8, ptr %i.db, i64 -32
  %.val.i.i.i.i.i.i.i.i.i.i = load i64, ptr %i.dd, align 8, !alias.scope !18222, !noalias !18223 ; 2 uses
  %i.de = icmp eq i64 %.val.i.i.i.i.i.i.i.i.i.i, 0
  br i1 %i.de, label %"_ZN4core3ptr102drop_in_place$LT$$LP$alloc..string..String$C$milli..search..facet..facet_distribution..OrderBy$RP$$GT$17h76d7ec06363a1eaeE.exit.i.i.i.i.i.i.i.i.i.i", label %bb.r

bb.r:                                             ; preds = %"_ZN9hashbrown3raw21RawIterRange$LT$T$GT$9next_impl17haf0036b21ae44685E.exit.i.i.i.i.i.i.i.i.i.i"
  %i.df = getelementptr i8, ptr %i.db, i64 -24
  %.val6.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.df, align 8, !noalias !18223, !nonnull !21, !noundef !21
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val6.i.i.i.i.i.i.i.i.i.i, i64 noundef %.val.i.i.i.i.i.i.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #52, !noalias !18224
  br label %"_ZN4core3ptr102drop_in_place$LT$$LP$alloc..string..String$C$milli..search..facet..facet_distribution..OrderBy$RP$$GT$17h76d7ec06363a1eaeE.exit.i.i.i.i.i.i.i.i.i.i"

"_ZN4core3ptr102drop_in_place$LT$$LP$alloc..string..String$C$milli..search..facet..facet_distribution..OrderBy$RP$$GT$17h76d7ec06363a1eaeE.exit.i.i.i.i.i.i.i.i.i.i": ; preds = %bb.r, %"_ZN9hashbrown3raw21RawIterRange$LT$T$GT$9next_impl17haf0036b21ae44685E.exit.i.i.i.i.i.i.i.i.i.i"
  %.old5.i.i.i.i.i.i.i.i.i.i = icmp eq i64 %i.dc, 0
  br i1 %.old5.i.i.i.i.i.i.i.i.i.i, label %"_ZN9hashbrown3raw16RawIter$LT$T$GT$13drop_elements17h5cdee60b3bed5fffE.exit.i.i.i.i.i.i.i.i.i", label %.preheader.i.i.i.i.i.i.i.i.i.i

"_ZN9hashbrown3raw16RawIter$LT$T$GT$13drop_elements17h5cdee60b3bed5fffE.exit.i.i.i.i.i.i.i.i.i": ; preds = %"_ZN4core3ptr102drop_in_place$LT$$LP$alloc..string..String$C$milli..search..facet..facet_distribution..OrderBy$RP$$GT$17h76d7ec06363a1eaeE.exit.i.i.i.i.i.i.i.i.i.i", %bb.q
  %.not.i.i.i.i.i3.i.i.i.i = icmp eq i64 %.sroa.0.0.copyload, 0
  %i.dg = icmp eq i64 %.sroa.4.0.copyload, 0
  %or.cond23.i.i.i = select i1 %.not.i.i.i.i.i3.i.i.i.i, i1 true, i1 %i.dg
  br i1 %or.cond23.i.i.i, label %common.resume.i, label %bb.s

bb.s:                                             ; preds = %"_ZN9hashbrown3raw16RawIter$LT$T$GT$13drop_elements17h5cdee60b3bed5fffE.exit.i.i.i.i.i.i.i.i.i"
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.5.0.copyload) ]
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.5.0.copyload, i64 noundef %.sroa.4.0.copyload, i64 noundef range(i64 1, -9223372036854775807) %.sroa.0.0.copyload) #52, !noalias !18225
  br label %common.resume.i

_ZN4core4iter6traits8iterator8Iterator7collect17h94207433f3d2aeb7E.exit.i: ; preds = %bb.m, %"_ZN9hashbrown3raw16RawIter$LT$T$GT$13drop_elements17h5cdee60b3bed5fffE.exit.i.i.i.i.i.i.i.i.i.i.i.i"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !18186
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.f, ptr noundef nonnull align 8 dereferenceable(24) %i.e, i64 24, i1 false), !noalias !18226
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !18186
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %.pre.i = load i64, ptr %.phi.trans.insert.i, align 8, !noalias !18185 ; 7 uses
  %i.dh = icmp ult i64 %.pre.i, 288230376151711744
  tail call void @llvm.assume(i1 %i.dh)
  %i.di = icmp eq i64 %.pre.i, 0
  br i1 %i.di, label %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hf49cdb1a66ae8c55E.exit.i.i", label %bb.u

"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hf49cdb1a66ae8c55E.exit.i.i.thread": ; preds = %"_ZN9hashbrown3raw16RawIter$LT$T$GT$13drop_elements17h5cdee60b3bed5fffE.exit.i.i.i.i.i.i.i.i.i.i", %bb.e
  store ptr null, ptr %0, align 8, !alias.scope !18184
  %i.dj = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 0, ptr %i.dj, align 8, !alias.scope !18184
  br label %"_ZN136_$LT$alloc..collections..btree..map..BTreeMap$LT$K$C$V$GT$$u20$as$u20$core..iter..traits..collect..FromIterator$LT$$LP$K$C$V$RP$$GT$$GT$9from_iter17h6520147842094471E.exit"

"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hf49cdb1a66ae8c55E.exit.i.i": ; preds = %_ZN4core4iter6traits8iterator8Iterator7collect17h94207433f3d2aeb7E.exit.i
  %.val2.i.i.pre = load i64, ptr %i.f, align 8, !range !22, !alias.scope !18227, !noalias !18185 ; 2 uses
  store ptr null, ptr %0, align 8, !alias.scope !18184
  %i.dk = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 0, ptr %i.dk, align 8, !alias.scope !18184
  tail call void @llvm.experimental.noalias.scope.decl(metadata !18227)
  %i.dl = icmp eq i64 %.val2.i.i.pre, 0
  br i1 %i.dl, label %"_ZN136_$LT$alloc..collections..btree..map..BTreeMap$LT$K$C$V$GT$$u20$as$u20$core..iter..traits..collect..FromIterator$LT$$LP$K$C$V$RP$$GT$$GT$9from_iter17h6520147842094471E.exit", label %bb.t

bb.t:                                             ; preds = %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hf49cdb1a66ae8c55E.exit.i.i"
  %i.dm = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %.val.i.i = load ptr, ptr %i.dm, align 8, !alias.scope !18227, !noalias !18185, !nonnull !21, !noundef !21
  %i.dn = shl nuw i64 %.val2.i.i.pre, 5
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i, i64 noundef %i.dn, i64 noundef range(i64 1, -9223372036854775807) 8) #52, !noalias !18228
  br label %"_ZN136_$LT$alloc..collections..btree..map..BTreeMap$LT$K$C$V$GT$$u20$as$u20$core..iter..traits..collect..FromIterator$LT$$LP$K$C$V$RP$$GT$$GT$9from_iter17h6520147842094471E.exit"

bb.u:                                             ; preds = %_ZN4core4iter6traits8iterator8Iterator7collect17h94207433f3d2aeb7E.exit.i
  %i.do = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.dp = load ptr, ptr %i.do, align 8, !noalias !18185, !nonnull !21, !noundef !21 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !18229
  %i.dq = icmp eq i64 %.pre.i, 1
  br i1 %i.dq, label %bb.y, label %bb.v, !prof !49

bb.v:                                             ; preds = %bb.u
  %i.dr = icmp samesign ult i64 %.pre.i, 21
  br i1 %i.dr, label %bb.x, label %bb.w, !prof !49

bb.w:                                             ; preds = %bb.v
  invoke void @_ZN4core5slice4sort6stable14driftsort_main17h2cb1e55e71d1b383E(ptr noalias noundef nonnull align 8 %i.dp, i64 noundef range(i64 1, 288230376151711744) %.pre.i, ptr noalias noundef nonnull align 8 dereferenceable(8) %i.c)
          to label %bb.y unwind label %bb.az, !noalias !18185

bb.x:                                             ; preds = %bb.v
  tail call fastcc void @_ZN4core5slice4sort6shared9smallsort25insertion_sort_shift_left17h023ba63ee1f2f7ccE(ptr noalias noundef nonnull align 8 %i.dp, i64 noundef range(i64 1, 288230376151711744) %.pre.i)
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.w, %bb.u
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !18229
  %.sroa.01.0.copyload = load i64, ptr %i.f, align 8, !noalias !18185 ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !18230)
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #52, !noalias !18231
  %i.ds = tail call noalias noundef align 8 dereferenceable_or_null(288) ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef 288, i64 noundef range(i64 1, -9223372036854775807) 8) #52, !noalias !18231 ; 5 uses
  %i.dt = icmp eq ptr %i.ds, null
  br i1 %i.dt, label %bb.z, label %.loopexit87.i.i.i, !prof !23

bb.z:                                             ; preds = %bb.y
  invoke void @_ZN5alloc5alloc18handle_alloc_error17h8f86e24af4223f3dE(i64 noundef 8, i64 noundef 288) #57
          to label %.noexc.i.i unwind label %bb.ay, !noalias !18231

.noexc.i.i:                                       ; preds = %bb.z
  unreachable

.loopexit87.i.i.i:                                ; preds = %bb.y
  store ptr null, ptr %i.ds, align 8, !noalias !18231
  %i.du = getelementptr inbounds nuw i8, ptr %i.ds, i64 274
  store i16 0, ptr %i.du, align 2, !noalias !18231
  %i.dv = getelementptr inbounds nuw [32 x i8], ptr %i.dp, i64 %.pre.i ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !18232
  %.sroa.4.0..sroa_idx.i2.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 3 uses
  %.sroa.494.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  store ptr %i.dp, ptr %.sroa.494.0..sroa_idx.i.i, align 8, !noalias !18233
  %.sroa.5.0..sroa_idx.i3.i = getelementptr inbounds nuw i8, ptr %i.b, i64 40 ; 3 uses
  store ptr %i.dp, ptr %.sroa.5.0..sroa_idx.i3.i, align 8, !noalias !18233
  %.sroa.6.0..sroa_idx.i4.i = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  store i64 %.sroa.01.0.copyload, ptr %.sroa.6.0..sroa_idx.i4.i, align 8, !noalias !18233
  %.sroa.7.0..sroa_idx95.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  store ptr %i.dv, ptr %.sroa.7.0..sroa_idx95.i.i, align 8, !noalias !18233
  %.sroa.5.sroa.4.0..sroa.5.0..sroa_idx.sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  %.sroa.5.sroa.5.0..sroa.5.0..sroa_idx.sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  br label %bb.aa

bb.aa:                                            ; preds = %.loopexit.i.i.i, %.loopexit87.i.i.i
  %.promoted75.i.i100.i.i = phi ptr [ %i.dp, %.loopexit87.i.i.i ], [ %.promoted75.i.i97.i.i, %.loopexit.i.i.i ]
  %.sroa.012.0.i.i = phi i64 [ 0, %.loopexit87.i.i.i ], [ %i.le, %.loopexit.i.i.i ] ; 2 uses
  %.sroa.8.0.i.i = phi i64 [ 0, %.loopexit87.i.i.i ], [ %.sroa.8.2.i.i, %.loopexit.i.i.i ] ; 6 uses
  %.sroa.0.0.i.i = phi ptr [ %i.ds, %.loopexit87.i.i.i ], [ %.sroa.0.2.i.i, %.loopexit.i.i.i ] ; 8 uses
  %.promoted.i.i.i.i = phi i64 [ -9223372036854775807, %.loopexit87.i.i.i ], [ %.promoted.i.pre145.i96.i.i, %.loopexit.i.i.i ]
  %.sroa.0.070.i.i.i = phi ptr [ %i.ds, %.loopexit87.i.i.i ], [ %.sroa.0.1.i.i.i, %.loopexit.i.i.i ] ; 6 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !18234)
  %.sroa.5.sroa.0.0.copyload.pre.i.i.i.i = load ptr, ptr %.sroa.4.0..sroa_idx.i2.i, align 8, !alias.scope !18234, !noalias !18232
  %.sroa.5.sroa.4.0.copyload.i.pre.i.i.i = load i64, ptr %.sroa.5.sroa.4.0..sroa.5.0..sroa_idx.sroa_idx.i.i.i.i, align 8, !alias.scope !18234, !noalias !18232
  br label %"_ZN4core3ptr106drop_in_place$LT$$LP$alloc..string..String$C$meilisearch_types..facet_values_sort..FacetValuesSort$RP$$GT$17h6f82c279537632b2E.exit18.i.i.i.i"

"_ZN4core3ptr106drop_in_place$LT$$LP$alloc..string..String$C$meilisearch_types..facet_values_sort..FacetValuesSort$RP$$GT$17h6f82c279537632b2E.exit18.i.i.i.i": ; preds = %"_ZN4core3ptr106drop_in_place$LT$$LP$alloc..string..String$C$meilisearch_types..facet_values_sort..FacetValuesSort$RP$$GT$17h6f82c279537632b2E.exit18.i.i.i.i.backedge", %bb.aa
  %.promoted75.i.i99.i.i = phi ptr [ %.promoted75.i.i100.i.i, %bb.aa ], [ %i.dz, %"_ZN4core3ptr106drop_in_place$LT$$LP$alloc..string..String$C$meilisearch_types..facet_values_sort..FacetValuesSort$RP$$GT$17h6f82c279537632b2E.exit18.i.i.i.i.backedge" ] ; 7 uses
  %.sroa.5.sroa.4.0.copyload.i.i.i.i = phi i64 [ %.sroa.5.sroa.4.0.copyload.i.pre.i.i.i, %bb.aa ], [ %.sroa.835.sroa.6.0.i.i.i.i, %"_ZN4core3ptr106drop_in_place$LT$$LP$alloc..string..String$C$meilisearch_types..facet_values_sort..FacetValuesSort$RP$$GT$17h6f82c279537632b2E.exit18.i.i.i.i.backedge" ]
  %.sroa.5.sroa.0.0.copyload.i.i.i.i = phi ptr [ %.sroa.5.sroa.0.0.copyload.pre.i.i.i.i, %bb.aa ], [ %.val12.i.i.i.i, %"_ZN4core3ptr106drop_in_place$LT$$LP$alloc..string..String$C$meilisearch_types..facet_values_sort..FacetValuesSort$RP$$GT$17h6f82c279537632b2E.exit18.i.i.i.i.backedge" ]
  %.sroa.0.0.copyload5.i74.i.i.i.i = phi i64 [ %.promoted.i.i.i.i, %bb.aa ], [ %.sroa.0.0.copyload5.i.i.i.i.i, %"_ZN4core3ptr106drop_in_place$LT$$LP$alloc..string..String$C$meilisearch_types..facet_values_sort..FacetValuesSort$RP$$GT$17h6f82c279537632b2E.exit18.i.i.i.i.backedge" ] ; 2 uses
  %.sroa.5.sroa.5.0.copyload.i.i.i.i = load i64, ptr %.sroa.5.sroa.5.0..sroa.5.0..sroa_idx.sroa_idx.i.i.i.i, align 8, !alias.scope !18234, !noalias !18232
  store i64 -9223372036854775807, ptr %i.b, align 8, !alias.scope !18234, !noalias !18232
  %.not.i.i.i.i = icmp eq i64 %.sroa.0.0.copyload5.i74.i.i.i.i, -9223372036854775807
  br i1 %.not.i.i.i.i, label %bb.ab, label %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h8309819958936269E.exit.i.i.i.i"

bb.ab:                                            ; preds = %"_ZN4core3ptr106drop_in_place$LT$$LP$alloc..string..String$C$meilisearch_types..facet_values_sort..FacetValuesSort$RP$$GT$17h6f82c279537632b2E.exit18.i.i.i.i"
  tail call void @llvm.experimental.noalias.scope.decl(metadata !18235)
  %i.dw = icmp eq ptr %.promoted75.i.i99.i.i, %i.dv
  br i1 %i.dw, label %"_ZN4core3ptr116drop_in_place$LT$$u5b$$LP$alloc..string..String$C$meilisearch_types..facet_values_sort..FacetValuesSort$RP$$u5d$$GT$17h6d8e04d08b74c123E.exit.i.i.i.i.i.i.i", label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.dx = getelementptr inbounds nuw i8, ptr %.promoted75.i.i99.i.i, i64 32 ; 2 uses
  store ptr %i.dx, ptr %.sroa.5.0..sroa_idx.i3.i, align 8, !alias.scope !18236, !noalias !18232
  %.sroa.033.0.copyload34.i.i.i.i = load i64, ptr %.promoted75.i.i99.i.i, align 8, !noalias !18237
  %.sroa.835.0..sroa_idx36.i.i.i.i = getelementptr inbounds nuw i8, ptr %.promoted75.i.i99.i.i, i64 8
  %.sroa.835.sroa.0.0.copyload.i.i.i.i = load ptr, ptr %.sroa.835.0..sroa_idx36.i.i.i.i, align 8, !noalias !18237
  %.sroa.835.sroa.6.0..sroa.835.0..sroa_idx36.sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %.promoted75.i.i99.i.i, i64 16
  %.sroa.835.sroa.6.0.copyload.i.i.i.i = load i64, ptr %.sroa.835.sroa.6.0..sroa.835.0..sroa_idx36.sroa_idx.i.i.i.i, align 8, !noalias !18237
  %.sroa.835.sroa.7.0..sroa.835.0..sroa_idx36.sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %.promoted75.i.i99.i.i, i64 24
  %.sroa.835.sroa.7.0.copyload.i.i.i.i = load i64, ptr %.sroa.835.sroa.7.0..sroa.835.0..sroa_idx36.sroa_idx.i.i.i.i, align 8, !noalias !18237
  br label %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h8309819958936269E.exit.i.i.i.i"

"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h8309819958936269E.exit.i.i.i.i": ; preds = %bb.ac, %"_ZN4core3ptr106drop_in_place$LT$$LP$alloc..string..String$C$meilisearch_types..facet_values_sort..FacetValuesSort$RP$$GT$17h6f82c279537632b2E.exit18.i.i.i.i"
  %.promoted75.i.i98.i.i = phi ptr [ %.promoted75.i.i99.i.i, %"_ZN4core3ptr106drop_in_place$LT$$LP$alloc..string..String$C$meilisearch_types..facet_values_sort..FacetValuesSort$RP$$GT$17h6f82c279537632b2E.exit18.i.i.i.i" ], [ %i.dx, %bb.ac ] ; 7 uses
  %.sroa.835.sroa.6.0.i.i.i.i = phi i64 [ %.sroa.5.sroa.4.0.copyload.i.i.i.i, %"_ZN4core3ptr106drop_in_place$LT$$LP$alloc..string..String$C$meilisearch_types..facet_values_sort..FacetValuesSort$RP$$GT$17h6f82c279537632b2E.exit18.i.i.i.i" ], [ %.sroa.835.sroa.6.0.copyload.i.i.i.i, %bb.ac ] ; 5 uses
  %.sroa.835.sroa.0.0.i.i.i.i = phi ptr [ %.sroa.5.sroa.0.0.copyload.i.i.i.i, %"_ZN4core3ptr106drop_in_place$LT$$LP$alloc..string..String$C$meilisearch_types..facet_values_sort..FacetValuesSort$RP$$GT$17h6f82c279537632b2E.exit18.i.i.i.i" ], [ %.sroa.835.sroa.0.0.copyload.i.i.i.i, %bb.ac ] ; 7 uses
  %.sroa.835.sroa.7.0.i.i.i.i = phi i64 [ %.sroa.5.sroa.5.0.copyload.i.i.i.i, %"_ZN4core3ptr106drop_in_place$LT$$LP$alloc..string..String$C$meilisearch_types..facet_values_sort..FacetValuesSort$RP$$GT$17h6f82c279537632b2E.exit18.i.i.i.i" ], [ %.sroa.835.sroa.7.0.copyload.i.i.i.i, %bb.ac ]
  %.sroa.033.0.i.i.i.i = phi i64 [ %.sroa.0.0.copyload5.i74.i.i.i.i, %"_ZN4core3ptr106drop_in_place$LT$$LP$alloc..string..String$C$meilisearch_types..facet_values_sort..FacetValuesSort$RP$$GT$17h6f82c279537632b2E.exit18.i.i.i.i" ], [ %.sroa.033.0.copyload34.i.i.i.i, %bb.ac ] ; 8 uses
  %.not9.i.i.i.i = icmp eq i64 %.sroa.033.0.i.i.i.i, -9223372036854775808
  br i1 %.not9.i.i.i.i, label %"_ZN137_$LT$alloc..collections..btree..dedup_sorted_iter..DedupSortedIter$LT$K$C$V$C$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hee815e5a514fab2aE.exit.i.i.i", label %bb.ad

bb.ad:                                            ; preds = %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h8309819958936269E.exit.i.i.i.i"
  tail call void @llvm.experimental.noalias.scope.decl(metadata !18238)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !18239)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !18240)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !18241)
  %i.dy = icmp eq ptr %.promoted75.i.i98.i.i, %i.dv
  br i1 %i.dy, label %.thread.i.i.i.i, label %bb.ae

.thread.i.i.i.i:                                  ; preds = %bb.ad
  store i64 -9223372036854775808, ptr %i.b, align 8, !alias.scope !18242, !noalias !18232
  br label %.loopexit86.i.i.i

bb.ae:                                            ; preds = %bb.ad
  %i.dz = getelementptr inbounds nuw i8, ptr %.promoted75.i.i98.i.i, i64 32 ; 4 uses
  store ptr %i.dz, ptr %.sroa.5.0..sroa_idx.i3.i, align 8, !alias.scope !18243, !noalias !18232
  %.sroa.0.0.copyload5.i.i.i.i.i = load i64, ptr %.promoted75.i.i98.i.i, align 8, !noalias !18244 ; 6 uses
  %.sroa.5.0..sroa_idx6.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.promoted75.i.i98.i.i, i64 8
  store i64 %.sroa.0.0.copyload5.i.i.i.i.i, ptr %i.b, align 8, !alias.scope !18242, !noalias !18232
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.4.0..sroa_idx.i2.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.5.0..sroa_idx6.i.i.i.i.i, i64 24, i1 false), !noalias !18245
  %i.ea = icmp ne i64 %.sroa.0.0.copyload5.i.i.i.i.i, -9223372036854775807
  tail call void @llvm.assume(i1 %i.ea)
  %.not10.i.i.i.i = icmp ne i64 %.sroa.0.0.copyload5.i.i.i.i.i, -9223372036854775808
  %.val13.i.i.i.i = load i64, ptr %.sroa.5.sroa.4.0..sroa.5.0..sroa_idx.sroa_idx.i.i.i.i, align 8, !noalias !18232
  %.not10.i.i.i.i.a = icmp eq i64 %.sroa.835.sroa.6.0.i.i.i.i, %.val13.i.i.i.i
  %or.cond.i.i6.i = select i1 %.not10.i.i.i.i, i1 %.not10.i.i.i.i.a, i1 false
  br i1 %or.cond.i.i6.i, label %_ZN4core3cmp9PartialEq2ne17hbe4cb7e26b86de13E.exit.i.i.i.i, label %.loopexit86.i.i.i

_ZN4core3cmp9PartialEq2ne17hbe4cb7e26b86de13E.exit.i.i.i.i: ; preds = %bb.ae
  %.val12.i.i.i.i = load ptr, ptr %.sroa.4.0..sroa_idx.i2.i, align 8, !alias.scope !18234, !noalias !18232, !nonnull !21, !noundef !21 ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.835.sroa.0.0.i.i.i.i) ]
  %bcmp.i.i.i.i.i.i.i.i = tail call i32 @bcmp(ptr nonnull readonly align 1 %.sroa.835.sroa.0.0.i.i.i.i, ptr nonnull readonly align 1 %.val12.i.i.i.i, i64 %.sroa.835.sroa.6.0.i.i.i.i), !alias.scope !18246, !noalias !18247
  %.not58.i.i.i.i = icmp eq i32 %bcmp.i.i.i.i.i.i.i.i, 0
  br i1 %.not58.i.i.i.i, label %bb.af, label %.loopexit86.i.i.i

bb.af:                                            ; preds = %_ZN4core3cmp9PartialEq2ne17hbe4cb7e26b86de13E.exit.i.i.i.i
  %i.eb = icmp eq i64 %.sroa.033.0.i.i.i.i, 0
  br i1 %i.eb, label %"_ZN4core3ptr106drop_in_place$LT$$LP$alloc..string..String$C$meilisearch_types..facet_values_sort..FacetValuesSort$RP$$GT$17h6f82c279537632b2E.exit18.i.i.i.i.backedge", label %bb.ag

bb.ag:                                            ; preds = %bb.af
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.835.sroa.0.0.i.i.i.i, i64 noundef %.sroa.033.0.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #52, !noalias !18248
  br label %"_ZN4core3ptr106drop_in_place$LT$$LP$alloc..string..String$C$meilisearch_types..facet_values_sort..FacetValuesSort$RP$$GT$17h6f82c279537632b2E.exit18.i.i.i.i.backedge"

"_ZN4core3ptr106drop_in_place$LT$$LP$alloc..string..String$C$meilisearch_types..facet_values_sort..FacetValuesSort$RP$$GT$17h6f82c279537632b2E.exit18.i.i.i.i.backedge": ; preds = %bb.ag, %bb.af
  br label %"_ZN4core3ptr106drop_in_place$LT$$LP$alloc..string..String$C$meilisearch_types..facet_values_sort..FacetValuesSort$RP$$GT$17h6f82c279537632b2E.exit18.i.i.i.i"

.body.i.i.i.sink.split:                           ; preds = %bb.ax, %bb.as
  %.pn.i.i.i.ph = phi { ptr, i32 } [ %i.ib, %bb.as ], [ %i.ls, %bb.ax ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.835.sroa.0.0.i.i.i.i) ]
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.835.sroa.0.0.i.i.i.i, i64 noundef %.sroa.033.0.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #52, !noalias !18232
  br label %.body.i.i.i

.body.i.i.i:                                      ; preds = %.body.i.i.i.sink.split, %bb.ax, %bb.as
  %.pn.i.i.i = phi { ptr, i32 } [ %i.ib, %bb.as ], [ %i.ls, %bb.ax ], [ %.pn.i.i.i.ph, %.body.i.i.i.sink.split ]
  call fastcc void @"_ZN4core3ptr294drop_in_place$LT$alloc..collections..btree..dedup_sorted_iter..DedupSortedIter$LT$alloc..string..String$C$meilisearch_types..facet_values_sort..FacetValuesSort$C$alloc..vec..into_iter..IntoIter$LT$$LP$alloc..string..String$C$meilisearch_types..facet_values_sort..FacetValuesSort$RP$$GT$$GT$$GT$17hca16fda25f1d5b32E"(ptr noalias noundef align 8 dereferenceable(64) %i.b) #55, !noalias !18232
  br label %common.resume.i

.loopexit86.i.i.i:                                ; preds = %_ZN4core3cmp9PartialEq2ne17hbe4cb7e26b86de13E.exit.i.i.i.i, %bb.ae, %.thread.i.i.i.i
  %.promoted75.i.i97.i.i = phi ptr [ %i.dv, %.thread.i.i.i.i ], [ %i.dz, %bb.ae ], [ %i.dz, %_ZN4core3cmp9PartialEq2ne17hbe4cb7e26b86de13E.exit.i.i.i.i ]
  %.promoted.i.pre145.i96.i.i = phi i64 [ -9223372036854775808, %.thread.i.i.i.i ], [ %.sroa.0.0.copyload5.i.i.i.i.i, %bb.ae ], [ %.sroa.0.0.copyload5.i.i.i.i.i, %_ZN4core3cmp9PartialEq2ne17hbe4cb7e26b86de13E.exit.i.i.i.i ]
  %.sroa.12.24.extract.trunc.i.i.i = trunc i64 %.sroa.835.sroa.7.0.i.i.i.i to i8 ; 2 uses
  %i.ec = getelementptr inbounds nuw i8, ptr %.sroa.0.070.i.i.i, i64 274 ; 2 uses
  %i.ed = load i16, ptr %i.ec, align 2, !noalias !18232, !noundef !21 ; 3 uses
  %i.ee = icmp ult i16 %i.ed, 11
  br i1 %i.ee, label %bb.aw, label %.preheader.i.i.i

"_ZN137_$LT$alloc..collections..btree..dedup_sorted_iter..DedupSortedIter$LT$K$C$V$C$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hee815e5a514fab2aE.exit.i.i.i": ; preds = %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h8309819958936269E.exit.i.i.i.i"
  %i.ef = ptrtoint ptr %i.dv to i64
  %i.eg = ptrtoint ptr %.promoted75.i.i98.i.i to i64
  %i.eh = sub nuw i64 %i.ef, %i.eg
  %i.ei = lshr exact i64 %i.eh, 5
  tail call void @llvm.experimental.noalias.scope.decl(metadata !18249)
  %i.ej = icmp eq ptr %i.dv, %.promoted75.i.i98.i.i
  br i1 %i.ej, label %"_ZN4core3ptr116drop_in_place$LT$$u5b$$LP$alloc..string..String$C$meilisearch_types..facet_values_sort..FacetValuesSort$RP$$u5d$$GT$17h6d8e04d08b74c123E.exit.i.i.i.i.i.i.i", label %.lr.ph.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i:                           ; preds = %"_ZN137_$LT$alloc..collections..btree..dedup_sorted_iter..DedupSortedIter$LT$K$C$V$C$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hee815e5a514fab2aE.exit.i.i.i", %"_ZN4core3ptr106drop_in_place$LT$$LP$alloc..string..String$C$meilisearch_types..facet_values_sort..FacetValuesSort$RP$$GT$17h6f82c279537632b2E.exit.i.i.i.i.i.i.i.i"
  %.sroa.0.011.i.i.i.i.i.i.i.i = phi i64 [ %i.el, %"_ZN4core3ptr106drop_in_place$LT$$LP$alloc..string..String$C$meilisearch_types..facet_values_sort..FacetValuesSort$RP$$GT$17h6f82c279537632b2E.exit.i.i.i.i.i.i.i.i" ], [ 0, %"_ZN137_$LT$alloc..collections..btree..dedup_sorted_iter..DedupSortedIter$LT$K$C$V$C$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hee815e5a514fab2aE.exit.i.i.i" ] ; 2 uses
  %i.ek = getelementptr inbounds nuw [32 x i8], ptr %.promoted75.i.i98.i.i, i64 %.sroa.0.011.i.i.i.i.i.i.i.i ; 2 uses
  %i.el = add nuw i64 %.sroa.0.011.i.i.i.i.i.i.i.i, 1 ; 2 uses
  %.val8.i.i.i.i.i.i.i.i = load i64, ptr %i.ek, align 8, !alias.scope !18250, !noalias !18251 ; 2 uses
  %i.em = icmp eq i64 %.val8.i.i.i.i.i.i.i.i, 0
  br i1 %i.em, label %"_ZN4core3ptr106drop_in_place$LT$$LP$alloc..string..String$C$meilisearch_types..facet_values_sort..FacetValuesSort$RP$$GT$17h6f82c279537632b2E.exit.i.i.i.i.i.i.i.i", label %bb.ah

bb.ah:                                            ; preds = %.lr.ph.i.i.i.i.i.i.i.i
  %i.en = getelementptr i8, ptr %i.ek, i64 8
  %.val9.i.i.i.i.i.i.i.i = load ptr, ptr %i.en, align 8, !alias.scope !18249, !noalias !18251, !nonnull !21, !noundef !21
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val9.i.i.i.i.i.i.i.i, i64 noundef %.val8.i.i.i.i.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #52, !noalias !18252
  br label %"_ZN4core3ptr106drop_in_place$LT$$LP$alloc..string..String$C$meilisearch_types..facet_values_sort..FacetValuesSort$RP$$GT$17h6f82c279537632b2E.exit.i.i.i.i.i.i.i.i"

"_ZN4core3ptr106drop_in_place$LT$$LP$alloc..string..String$C$meilisearch_types..facet_values_sort..FacetValuesSort$RP$$GT$17h6f82c279537632b2E.exit.i.i.i.i.i.i.i.i": ; preds = %bb.ah, %.lr.ph.i.i.i.i.i.i.i.i
  %i.eo = icmp eq i64 %i.el, %i.ei
  br i1 %i.eo, label %"_ZN4core3ptr116drop_in_place$LT$$u5b$$LP$alloc..string..String$C$meilisearch_types..facet_values_sort..FacetValuesSort$RP$$u5d$$GT$17h6d8e04d08b74c123E.exit.i.i.i.i.i.i.i", label %.lr.ph.i.i.i.i.i.i.i.i

"_ZN4core3ptr116drop_in_place$LT$$u5b$$LP$alloc..string..String$C$meilisearch_types..facet_values_sort..FacetValuesSort$RP$$u5d$$GT$17h6d8e04d08b74c123E.exit.i.i.i.i.i.i.i": ; preds = %bb.ab, %"_ZN4core3ptr106drop_in_place$LT$$LP$alloc..string..String$C$meilisearch_types..facet_values_sort..FacetValuesSort$RP$$GT$17h6f82c279537632b2E.exit.i.i.i.i.i.i.i.i", %"_ZN137_$LT$alloc..collections..btree..dedup_sorted_iter..DedupSortedIter$LT$K$C$V$C$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hee815e5a514fab2aE.exit.i.i.i"
  %i.ep = icmp eq i64 %.sroa.01.0.copyload, 0
  br i1 %i.ep, label %"_ZN4core3ptr294drop_in_place$LT$alloc..collections..btree..dedup_sorted_iter..DedupSortedIter$LT$alloc..string..String$C$meilisearch_types..facet_values_sort..FacetValuesSort$C$alloc..vec..into_iter..IntoIter$LT$$LP$alloc..string..String$C$meilisearch_types..facet_values_sort..FacetValuesSort$RP$$GT$$GT$$GT$17hca16fda25f1d5b32E.exit.i.i.i", label %bb.ai

bb.ai:                                            ; preds = %"_ZN4core3ptr116drop_in_place$LT$$u5b$$LP$alloc..string..String$C$meilisearch_types..facet_values_sort..FacetValuesSort$RP$$u5d$$GT$17h6d8e04d08b74c123E.exit.i.i.i.i.i.i.i"
  %i.eq = shl nuw i64 %.sroa.01.0.copyload, 5
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.dp, i64 noundef %i.eq, i64 noundef range(i64 1, -9223372036854775807) 8) #52, !noalias !18251
  br label %"_ZN4core3ptr294drop_in_place$LT$alloc..collections..btree..dedup_sorted_iter..DedupSortedIter$LT$alloc..string..String$C$meilisearch_types..facet_values_sort..FacetValuesSort$C$alloc..vec..into_iter..IntoIter$LT$$LP$alloc..string..String$C$meilisearch_types..facet_values_sort..FacetValuesSort$RP$$GT$$GT$$GT$17hca16fda25f1d5b32E.exit.i.i.i"

"_ZN4core3ptr294drop_in_place$LT$alloc..collections..btree..dedup_sorted_iter..DedupSortedIter$LT$alloc..string..String$C$meilisearch_types..facet_values_sort..FacetValuesSort$C$alloc..vec..into_iter..IntoIter$LT$$LP$alloc..string..String$C$meilisearch_types..facet_values_sort..FacetValuesSort$RP$$GT$$GT$$GT$17hca16fda25f1d5b32E.exit.i.i.i": ; preds = %bb.ai, %"_ZN4core3ptr116drop_in_place$LT$$u5b$$LP$alloc..string..String$C$meilisearch_types..facet_values_sort..FacetValuesSort$RP$$u5d$$GT$17h6d8e04d08b74c123E.exit.i.i.i.i.i.i.i"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !18232
  %i.er = icmp eq i64 %.sroa.8.0.i.i, 0
  br i1 %i.er, label %.loopexit.i, label %.lr.ph.i17.i.i.i

.lr.ph.i17.i.i.i:                                 ; preds = %"_ZN4core3ptr294drop_in_place$LT$alloc..collections..btree..dedup_sorted_iter..DedupSortedIter$LT$alloc..string..String$C$meilisearch_types..facet_values_sort..FacetValuesSort$C$alloc..vec..into_iter..IntoIter$LT$$LP$alloc..string..String$C$meilisearch_types..facet_values_sort..FacetValuesSort$RP$$GT$$GT$$GT$17hca16fda25f1d5b32E.exit.i.i.i", %"_ZN5alloc11collections5btree4node29BalancingContext$LT$K$C$V$GT$15bulk_steal_left17h0f69c75fc45b6594E.exit.i.i.i.i"
  %.sroa.02.010.i.i.i.i = phi i64 [ %i.ez, %"_ZN5alloc11collections5btree4node29BalancingContext$LT$K$C$V$GT$15bulk_steal_left17h0f69c75fc45b6594E.exit.i.i.i.i" ], [ %.sroa.8.0.i.i, %"_ZN4core3ptr294drop_in_place$LT$alloc..collections..btree..dedup_sorted_iter..DedupSortedIter$LT$alloc..string..String$C$meilisearch_types..facet_values_sort..FacetValuesSort$C$alloc..vec..into_iter..IntoIter$LT$$LP$alloc..string..String$C$meilisearch_types..facet_values_sort..FacetValuesSort$RP$$GT$$GT$$GT$17hca16fda25f1d5b32E.exit.i.i.i" ]
  %.sroa.03.09.i.i.i.i = phi ptr [ %i.fc, %"_ZN5alloc11collections5btree4node29BalancingContext$LT$K$C$V$GT$15bulk_steal_left17h0f69c75fc45b6594E.exit.i.i.i.i" ], [ %.sroa.0.0.i.i, %"_ZN4core3ptr294drop_in_place$LT$alloc..collections..btree..dedup_sorted_iter..DedupSortedIter$LT$alloc..string..String$C$meilisearch_types..facet_values_sort..FacetValuesSort$C$alloc..vec..into_iter..IntoIter$LT$$LP$alloc..string..String$C$meilisearch_types..facet_values_sort..FacetValuesSort$RP$$GT$$GT$$GT$17hca16fda25f1d5b32E.exit.i.i.i" ] ; 4 uses
  %i.es = getelementptr inbounds nuw i8, ptr %.sroa.03.09.i.i.i.i, i64 274
  %i.et = load i16, ptr %i.es, align 2, !noalias !18232, !noundef !21 ; 3 uses
  %.not.i18.i.i.i = icmp eq i16 %i.et, 0
  br i1 %.not.i18.i.i.i, label %.noexc.i.i.i, label %bb.aj, !prof !23

.noexc.i.i.i:                                     ; preds = %.lr.ph.i17.i.i.i
  tail call void @_ZN4core9panicking5panic17ha264d2bb233f2b69E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @1107, i64 noundef 25, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1109) #57, !noalias !18185
  unreachable

bb.aj:                                            ; preds = %.lr.ph.i17.i.i.i
  %i.eu = zext nneg i16 %i.et to i64
  %i.ev = add nsw i64 %i.eu, -1                   ; 3 uses
  %i.ew = getelementptr inbounds nuw i8, ptr %.sroa.03.09.i.i.i.i, i64 288
  %i.ex = getelementptr inbounds nuw [8 x i8], ptr %i.ew, i64 %i.ev ; 2 uses
  %i.ey = load ptr, ptr %i.ex, align 8, !noalias !18253, !nonnull !21, !noundef !21 ; 4 uses
  %i.ez = add i64 %.sroa.02.010.i.i.i.i, -1       ; 3 uses
  %i.fa = icmp ult i16 %i.et, 12
  tail call void @llvm.assume(i1 %i.fa)
  %i.fb = getelementptr inbounds nuw i8, ptr %i.ex, i64 8
  %i.fc = load ptr, ptr %i.fb, align 8, !noalias !18254, !nonnull !21, !noundef !21 ; 16 uses
  %i.fd = getelementptr inbounds nuw i8, ptr %i.fc, i64 274 ; 2 uses
  %i.fe = load i16, ptr %i.fd, align 2, !noalias !18232, !noundef !21 ; 3 uses
  %i.ff = icmp ult i16 %i.fe, 5
  br i1 %i.ff, label %bb.ak, label %"_ZN5alloc11collections5btree4node29BalancingContext$LT$K$C$V$GT$15bulk_steal_left17h0f69c75fc45b6594E.exit.i.i.i.i"

"_ZN5alloc11collections5btree4node29BalancingContext$LT$K$C$V$GT$15bulk_steal_left17h0f69c75fc45b6594E.exit.i.i.i.i": ; preds = %"_ZN5alloc11collections5btree4node29BalancingContext$LT$K$C$V$GT$15bulk_steal_left17h0f69c75fc45b6594E.exit.loopexit.i.i.i.i", %bb.aj
  %i.fg = icmp eq i64 %i.ez, 0
  br i1 %i.fg, label %.loopexit.i, label %.lr.ph.i17.i.i.i

bb.ak:                                            ; preds = %bb.aj
  %narrow.i.i.i.i = sub nuw nsw i16 5, %i.fe      ; 2 uses
  %i.fh = zext nneg i16 %narrow.i.i.i.i to i64    ; 5 uses
  %i.fi = getelementptr inbounds nuw i8, ptr %i.ey, i64 274 ; 2 uses
  %i.fj = load i16, ptr %i.fi, align 2, !noalias !18255, !noundef !21 ; 2 uses
  %i.fk = zext nneg i16 %i.fe to i64              ; 3 uses
  %.not.i.i.i.i.i = icmp ugt i16 %narrow.i.i.i.i, %i.fj
  br i1 %.not.i.i.i.i.i, label %.noexc19.i.i.i, label %_ZN5alloc11collections5btree4node13move_to_slice17h226861ec426ab000E.exit.i.i.i.i.i, !prof !23

.noexc19.i.i.i:                                   ; preds = %bb.ak
  tail call void @_ZN4core9panicking5panic17ha264d2bb233f2b69E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @1123, i64 noundef 39, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1124) #57, !noalias !18185
  unreachable

_ZN5alloc11collections5btree4node13move_to_slice17h226861ec426ab000E.exit.i.i.i.i.i: ; preds = %bb.ak
  %i.fl = zext i16 %i.fj to i64                   ; 2 uses
  %i.fm = sub nuw nsw i64 %i.fl, %i.fh            ; 4 uses
  %i.fn = trunc nuw i64 %i.fm to i16
  store i16 %i.fn, ptr %i.fi, align 2, !noalias !18255
  store i16 5, ptr %i.fd, align 2, !noalias !18255
  %i.fo = getelementptr inbounds nuw i8, ptr %i.fc, i64 8 ; 4 uses
  %i.fp = getelementptr inbounds nuw [24 x i8], ptr %i.fo, i64 %i.fh
  %i.fq = mul nuw nsw i64 %i.fk, 24
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.fp, ptr nonnull align 8 %i.fo, i64 %i.fq, i1 false), !alias.scope !18256, !noalias !18255
  %i.fr = getelementptr inbounds nuw i8, ptr %i.fc, i64 276 ; 4 uses
  %i.fs = getelementptr inbounds nuw i8, ptr %i.fr, i64 %i.fh
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.fs, ptr nonnull align 2 %i.fr, i64 %i.fk, i1 false), !alias.scope !18257, !noalias !18255
  %i.ft = add nuw nsw i64 %i.fm, 1                ; 4 uses
  %i.fu = sub nuw nsw i64 %i.fl, %i.ft            ; 4 uses
  %i.fv = getelementptr inbounds nuw i8, ptr %i.ey, i64 8 ; 2 uses
  %i.fw = getelementptr inbounds nuw [24 x i8], ptr %i.fv, i64 %i.ft
  %i.fx = mul nuw nsw i64 %i.fu, 24
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.fo, ptr nonnull readonly align 8 %i.fw, i64 %i.fx, i1 false), !alias.scope !18258, !noalias !18255
  %i.fy = getelementptr inbounds nuw i8, ptr %i.ey, i64 276 ; 2 uses
  %i.fz = getelementptr inbounds nuw i8, ptr %i.fy, i64 %i.ft
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 2 %i.fr, ptr nonnull readonly align 1 %i.fz, i64 range(i64 0, 65536) %i.fu, i1 false), !alias.scope !18259, !noalias !18255
  %i.ga = getelementptr inbounds nuw [24 x i8], ptr %i.fv, i64 %i.fm
  %i.gb = getelementptr inbounds nuw i8, ptr %i.fy, i64 %i.fm
  %i.gc = load i8, ptr %i.gb, align 1, !range !35, !noalias !18255, !noundef !21
  %i.gd = getelementptr inbounds nuw i8, ptr %.sroa.03.09.i.i.i.i, i64 8
  %i.ge = getelementptr inbounds nuw [24 x i8], ptr %i.gd, i64 %i.ev ; 2 uses
  %i.gf = getelementptr inbounds nuw i8, ptr %.sroa.03.09.i.i.i.i, i64 276
  %i.gg = getelementptr inbounds nuw i8, ptr %i.gf, i64 %i.ev ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %i.ge, i64 24, i1 false), !noalias !18255
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ge, ptr noundef nonnull align 8 dereferenceable(24) %i.ga, i64 24, i1 false), !noalias !18255
  %i.gh = load i8, ptr %i.gg, align 1, !range !35, !noalias !18260, !noundef !21
  store i8 %i.gc, ptr %i.gg, align 1, !noalias !18260
  %i.gi = getelementptr inbounds nuw [24 x i8], ptr %i.fo, i64 %i.fu
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.gi, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false), !noalias !18255
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.gj = getelementptr inbounds nuw i8, ptr %i.fr, i64 %i.fu
  store i8 %i.gh, ptr %i.gj, align 1, !noalias !18255
  %cond.i.i.i.i = icmp eq i64 %i.ez, 0
  br i1 %cond.i.i.i.i, label %.loopexit.i, label %"_ZN5alloc11collections5btree4node29BalancingContext$LT$K$C$V$GT$15bulk_steal_left17h0f69c75fc45b6594E.exit.loopexit.i.i.i.i"

"_ZN5alloc11collections5btree4node29BalancingContext$LT$K$C$V$GT$15bulk_steal_left17h0f69c75fc45b6594E.exit.loopexit.i.i.i.i": ; preds = %_ZN5alloc11collections5btree4node13move_to_slice17h226861ec426ab000E.exit.i.i.i.i.i
  %i.gk = getelementptr inbounds nuw i8, ptr %i.fc, i64 288 ; 4 uses
  %i.gl = getelementptr inbounds nuw [8 x i8], ptr %i.gk, i64 %i.fh
  %i.gm = shl nuw nsw i64 %i.fk, 3
  %i.gn = add nuw nsw i64 %i.gm, 8
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.gl, ptr noundef nonnull align 8 dereferenceable(1) %i.gk, i64 %i.gn, i1 false), !alias.scope !18261, !noalias !18255
  %i.go = getelementptr inbounds nuw i8, ptr %i.ey, i64 288
  %i.gp = getelementptr inbounds nuw [8 x i8], ptr %i.go, i64 %i.ft
  %i.gq = shl nuw nsw i64 %i.fh, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.gk, ptr noundef nonnull readonly align 8 dereferenceable(1) %i.gp, i64 %i.gq, i1 false), !alias.scope !18262, !noalias !18255
  %i.gr = load ptr, ptr %i.gk, align 8, !noalias !18263, !nonnull !21, !noundef !21 ; 2 uses
  store ptr %i.fc, ptr %i.gr, align 8, !noalias !18264
  %i.gs = getelementptr inbounds nuw i8, ptr %i.gr, i64 272
  store i16 0, ptr %i.gs, align 8, !noalias !18264
  %i.gt = getelementptr inbounds nuw i8, ptr %i.fc, i64 296
  %i.gu = load ptr, ptr %i.gt, align 8, !noalias !18263, !nonnull !21, !noundef !21 ; 2 uses
  store ptr %i.fc, ptr %i.gu, align 8, !noalias !18264
  %i.gv = getelementptr inbounds nuw i8, ptr %i.gu, i64 272
  store i16 1, ptr %i.gv, align 8, !noalias !18264
  %i.gw = getelementptr inbounds nuw i8, ptr %i.fc, i64 304
  %i.gx = load ptr, ptr %i.gw, align 8, !noalias !18263, !nonnull !21, !noundef !21 ; 2 uses
  store ptr %i.fc, ptr %i.gx, align 8, !noalias !18264
  %i.gy = getelementptr inbounds nuw i8, ptr %i.gx, i64 272
  store i16 2, ptr %i.gy, align 8, !noalias !18264
  %i.gz = getelementptr inbounds nuw i8, ptr %i.fc, i64 312
  %i.ha = load ptr, ptr %i.gz, align 8, !noalias !18263, !nonnull !21, !noundef !21 ; 2 uses
  store ptr %i.fc, ptr %i.ha, align 8, !noalias !18264
  %i.hb = getelementptr inbounds nuw i8, ptr %i.ha, i64 272
  store i16 3, ptr %i.hb, align 8, !noalias !18264
  %i.hc = getelementptr inbounds nuw i8, ptr %i.fc, i64 320
  %i.hd = load ptr, ptr %i.hc, align 8, !noalias !18263, !nonnull !21, !noundef !21 ; 2 uses
  store ptr %i.fc, ptr %i.hd, align 8, !noalias !18264
  %i.he = getelementptr inbounds nuw i8, ptr %i.hd, i64 272
  store i16 4, ptr %i.he, align 8, !noalias !18264
  %i.hf = getelementptr inbounds nuw i8, ptr %i.fc, i64 328
  %i.hg = load ptr, ptr %i.hf, align 8, !noalias !18263, !nonnull !21, !noundef !21 ; 2 uses
  store ptr %i.fc, ptr %i.hg, align 8, !noalias !18264
  %i.hh = getelementptr inbounds nuw i8, ptr %i.hg, i64 272
  store i16 5, ptr %i.hh, align 8, !noalias !18264
  br label %"_ZN5alloc11collections5btree4node29BalancingContext$LT$K$C$V$GT$15bulk_steal_left17h0f69c75fc45b6594E.exit.i.i.i.i"

.preheader.i.i.i:                                 ; preds = %.loopexit86.i.i.i, %bb.al
  %.sroa.5.0.i.i.i = phi i64 [ %i.hj, %bb.al ], [ 0, %.loopexit86.i.i.i ]
  %.sroa.0.0.i.i.i = phi ptr [ %i.hi, %bb.al ], [ %.sroa.0.070.i.i.i, %.loopexit86.i.i.i ]
  %i.hi = load ptr, ptr %.sroa.0.0.i.i.i, align 8, !noalias !18265, !noundef !21 ; 4 uses
  %.not.i22.i.i.i = icmp eq ptr %i.hi, null
  br i1 %.not.i22.i.i.i, label %bb.am, label %bb.al

bb.al:                                            ; preds = %.preheader.i.i.i
  %i.hj = add i64 %.sroa.5.0.i.i.i, 1             ; 2 uses
  %i.hk = getelementptr inbounds nuw i8, ptr %i.hi, i64 274
  %i.hl = load i16, ptr %i.hk, align 2, !noalias !18232, !noundef !21
  %i.hm = icmp ult i16 %i.hl, 11
  br i1 %i.hm, label %.loopexit85.i.i.i, label %.preheader.i.i.i

bb.am:                                            ; preds = %.preheader.i.i.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.i.i) ]
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #52, !noalias !18266
  %i.hn = tail call noalias noundef align 8 dereferenceable_or_null(384) ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef 384, i64 noundef range(i64 1, -9223372036854775807) 8) #52, !noalias !18266 ; 7 uses
  %i.ho = icmp eq ptr %i.hn, null
  br i1 %i.ho, label %bb.an, label %bb.ap, !prof !23

bb.an:                                            ; preds = %bb.am
  invoke void @_ZN5alloc5alloc18handle_alloc_error17h8f86e24af4223f3dE(i64 noundef 8, i64 noundef 384) #57
          to label %.noexc.i.i.i.i unwind label %bb.ao, !noalias !18266

end_hunk_5
begin_hunk_6_@"_ZN5alloc11collections5btree3map25IntoIter$LT$K$C$V$C$A$GT$10dying_next17hf99e4888b7c28ea3E":bb.a
  %xtraiter48 = and i64 %.sroa.5.0.lcssa.i.i.i.i, 7 ; 2 uses
  %lcmp.mod49.not = icmp eq i64 %xtraiter48, 0
  br i1 %lcmp.mod49.not, label %.prol.loopexit, label %.prol.preheader

.prol.preheader:                                  ; preds = %bb.h, %.prol.preheader
  %.pn30.in.i.i.i.i.i.prol = phi ptr [ %i.bn, %.prol.preheader ], [ %i.bm, %bb.h ]
  %.pn28.in.i.i.i.i.i.prol = phi i64 [ %.pn28.i.i.i.i.i.prol, %.prol.preheader ], [ %.sroa.5.0.lcssa.i.i.i.i, %bb.h ]
  %prol.iter50 = phi i64 [ %prol.iter50.next, %.prol.preheader ], [ 0, %bb.h ]
  %.pn28.i.i.i.i.i.prol = add i64 %.pn28.in.i.i.i.i.i.prol, -1 ; 2 uses
  %.pn30.i.i.i.i.i.prol = load ptr, ptr %.pn30.in.i.i.i.i.i.prol, align 8, !noalias !22117, !nonnull !21, !noundef !21 ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.i.prol, i64 544 ; 2 uses
  %prol.iter50.next = add i64 %prol.iter50, 1     ; 2 uses
  %prol.iter50.cmp.not = icmp eq i64 %prol.iter50.next, %xtraiter48
  br i1 %prol.iter50.cmp.not, label %.prol.loopexit, label %.prol.preheader, !llvm.loop !22102

.prol.loopexit:                                   ; preds = %.prol.preheader, %bb.h
  %.pn30.i.i.i.i.i.lcssa.unr = phi ptr [ poison, %bb.h ], [ %.pn30.i.i.i.i.i.prol, %.prol.preheader ]
  %.pn30.in.i.i.i.i.i.unr = phi ptr [ %i.bm, %bb.h ], [ %i.bn, %.prol.preheader ]
  %.pn28.in.i.i.i.i.i.unr = phi i64 [ %.sroa.5.0.lcssa.i.i.i.i, %bb.h ], [ %.pn28.i.i.i.i.i.prol, %.prol.preheader ]
  %i.bo = icmp ult i64 %.sroa.5.0.lcssa.i.i.i.i, 8
  br i1 %i.bo, label %"_ZN5alloc11collections5btree8navigate75LazyLeafRange$LT$alloc..collections..btree..node..marker..Dying$C$K$C$V$GT$27deallocating_next_unchecked17h601eeab8c5e01b2dE.exit", label %.new

.new:                                             ; preds = %.prol.loopexit, %.new
  %.pn30.in.i.i.i.i.i = phi ptr [ %i.bx, %.new ], [ %.pn30.in.i.i.i.i.i.unr, %.prol.loopexit ]
  %.pn28.in.i.i.i.i.i = phi i64 [ %.pn28.i.i.i.i.i.7, %.new ], [ %.pn28.in.i.i.i.i.i.unr, %.prol.loopexit ]
  %.pn30.i.i.i.i.i = load ptr, ptr %.pn30.in.i.i.i.i.i, align 8, !noalias !22117, !nonnull !21, !noundef !21
  %i.bp = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.i, i64 544
  %.pn30.i.i.i.i.i.1 = load ptr, ptr %i.bp, align 8, !noalias !22117, !nonnull !21, !noundef !21
  %i.bq = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.i.1, i64 544
  %.pn30.i.i.i.i.i.2 = load ptr, ptr %i.bq, align 8, !noalias !22117, !nonnull !21, !noundef !21
  %i.br = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.i.2, i64 544
  %.pn30.i.i.i.i.i.3 = load ptr, ptr %i.br, align 8, !noalias !22117, !nonnull !21, !noundef !21
  %i.bs = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.i.3, i64 544
  %.pn30.i.i.i.i.i.4 = load ptr, ptr %i.bs, align 8, !noalias !22117, !nonnull !21, !noundef !21
  %i.bt = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.i.4, i64 544
  %.pn30.i.i.i.i.i.5 = load ptr, ptr %i.bt, align 8, !noalias !22117, !nonnull !21, !noundef !21
  %i.bu = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.i.5, i64 544
  %.pn30.i.i.i.i.i.6 = load ptr, ptr %i.bu, align 8, !noalias !22117, !nonnull !21, !noundef !21
  %i.bv = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.i.6, i64 544
  %.pn28.i.i.i.i.i.7 = add i64 %.pn28.in.i.i.i.i.i, -8 ; 2 uses
  %.pn30.i.i.i.i.i.7 = load ptr, ptr %i.bv, align 8, !noalias !22117, !nonnull !21, !noundef !21 ; 2 uses
  %i.bw = icmp eq i64 %.pn28.i.i.i.i.i.7, 0
  %i.bx = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.i.7, i64 544
  br i1 %i.bw, label %"_ZN5alloc11collections5btree8navigate75LazyLeafRange$LT$alloc..collections..btree..node..marker..Dying$C$K$C$V$GT$27deallocating_next_unchecked17h601eeab8c5e01b2dE.exit", label %.new

bb.i:                                             ; preds = %.lr.ph.i.i.i.i
  %i.by = add i64 %.sroa.5.059.i.i.i.i, 1         ; 2 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %.sroa.0.060.i.i.i.i, i64 536
  %i.ca = load i16, ptr %i.bz, align 8, !noalias !22116 ; 2 uses
  %.not.i.i.i.i.i = icmp eq i64 %.sroa.5.059.i.i.i.i, 0
  %..i.i.i.i.i = select i1 %.not.i.i.i.i.i, i64 544, i64 640
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.0.060.i.i.i.i, i64 noundef %..i.i.i.i.i, i64 noundef 8) #52, !noalias !22118
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bg, i64 538
  %i.cc = load i16, ptr %i.cb, align 2, !noalias !22115, !noundef !21
  %i.cd = icmp ult i16 %i.ca, %i.cc
  br i1 %i.cd, label %._crit_edge.loopexit.i.i.i.i, label %.lr.ph.i.i.i.i

bb.j:                                             ; preds = %.lr.ph.i.i.i.i
  %.not.i54.i.i.i.i = icmp eq i64 %.sroa.5.059.i.i.i.i, 0
  %..i55.i.i.i.i = select i1 %.not.i54.i.i.i.i, i64 544, i64 640
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.0.060.i.i.i.i, i64 noundef %..i55.i.i.i.i, i64 noundef 8) #52, !noalias !22118
  invoke void @_ZN4core6option13unwrap_failed17h13b3e6f702cb1c04E(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1125) #57
          to label %.noexc.i.i unwind label %bb.k, !noalias !22119

.noexc.i.i:                                       ; preds = %bb.j
  unreachable

bb.k:                                             ; preds = %bb.j
  %i.ce = landingpad { ptr, i32 }
          cleanup                                 ; 0 uses
  tail call void @llvm.trap()
  unreachable

.critedge.i:                                      ; preds = %bb.e
  tail call void @_ZN4core6option13unwrap_failed17h13b3e6f702cb1c04E(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1128) #57, !noalias !22120
  unreachable

"_ZN5alloc11collections5btree8navigate75LazyLeafRange$LT$alloc..collections..btree..node..marker..Dying$C$K$C$V$GT$27deallocating_next_unchecked17h601eeab8c5e01b2dE.exit": ; preds = %.prol.loopexit, %.new, %._crit_edge.i.i.i.i
  %.sroa.7.0.ph.i.i.i = phi i64 [ %i.bj, %._crit_edge.i.i.i.i ], [ 0, %.new ], [ 0, %.prol.loopexit ]
  %.sroa.0.0.ph.i.i.i = phi ptr [ %.sroa.0.0.lcssa.i.i.i.i, %._crit_edge.i.i.i.i ], [ %.pn30.i.i.i.i.i.lcssa.unr, %.prol.loopexit ], [ %.pn30.i.i.i.i.i.7, %.new ]
  %.sroa.37.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %1, i64 24
  store ptr %.sroa.0.0.ph.i.i.i, ptr %i.aj, align 8, !alias.scope !22112
  store i64 0, ptr %i.al, align 8, !alias.scope !22112
  store i64 %.sroa.7.0.ph.i.i.i, ptr %.sroa.37.0..sroa_idx.i.i, align 8, !alias.scope !22112
  store ptr %.sroa.0.0.lcssa.i.i.i.i, ptr %0, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.5.0.lcssa.i.i.i.i, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.6.0.lcssa.i.i.i.i, ptr %.sroa.5.0..sroa_idx, align 8
  br label %bb.l

bb.l:                                             ; preds = %"_ZN5alloc11collections5btree8navigate75LazyLeafRange$LT$alloc..collections..btree..node..marker..Dying$C$K$C$V$GT$27deallocating_next_unchecked17h601eeab8c5e01b2dE.exit", %"_ZN5alloc11collections5btree8navigate75LazyLeafRange$LT$alloc..collections..btree..node..marker..Dying$C$K$C$V$GT$16deallocating_end17hd26830f4ec1084b2E.exit"
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @"_ZN5alloc11collections5btree3set21BTreeSet$LT$T$C$A$GT$16from_sorted_iter17hf63472e33ef286bdE"(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(32) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = alloca [56 x i8], align 8                ; 12 uses
  %.sroa.4.i = alloca [48 x i8], align 8          ; 4 uses
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #52, !noalias !22222
  %i.c = tail call noalias noundef align 8 dereferenceable_or_null(280) ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef 280, i64 noundef range(i64 1, -9223372036854775807) 8) #52, !noalias !22222 ; 5 uses
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %bb.b, label %.loopexit81.i.i, !prof !23

bb.b:                                             ; preds = %bb.a
  invoke void @_ZN5alloc5alloc18handle_alloc_error17h8f86e24af4223f3dE(i64 noundef 8, i64 noundef 280) #57
          to label %.noexc.i unwind label %bb.ab, !noalias !22222

.noexc.i:                                         ; preds = %bb.b
  unreachable

.loopexit81.i.i:                                  ; preds = %bb.a
  store ptr null, ptr %i.c, align 8, !noalias !22222
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 274
  store i16 0, ptr %i.e, align 2, !noalias !22222
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.4.i)
  %.sroa.4.24..sroa_idx.i = getelementptr inbounds nuw i8, ptr %.sroa.4.i, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.4.24..sroa_idx.i, ptr noundef nonnull readonly align 8 dereferenceable(32) %1, i64 32, i1 false), !alias.scope !22223, !noalias !22224
  %.sroa.481.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !22225
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.481.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.4.i, i64 48, i1 false), !noalias !22222
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.4.i)
  %.sroa.5.sroa.4.0..sroa.5.0..sroa_idx.sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 32 ; 3 uses
  br label %bb.c

bb.c:                                             ; preds = %.loopexit.i.i, %.loopexit81.i.i
  %.sroa.011.0.i = phi i64 [ 0, %.loopexit81.i.i ], [ %i.gl, %.loopexit.i.i ] ; 2 uses
  %.sroa.8.0.i = phi i64 [ 0, %.loopexit81.i.i ], [ %.sroa.8.2.i, %.loopexit.i.i ] ; 6 uses
  %.sroa.0.0.i = phi ptr [ %i.c, %.loopexit81.i.i ], [ %.sroa.0.2.i, %.loopexit.i.i ] ; 10 uses
  %.promoted.i.i.i = phi i64 [ -9223372036854775807, %.loopexit81.i.i ], [ %.promoted.i.pre135.i82.i, %.loopexit.i.i ]
  %.sroa.0.070.i.i = phi ptr [ %i.c, %.loopexit81.i.i ], [ %.sroa.0.1.i.i, %.loopexit.i.i ] ; 5 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !22226)
  %i.h = load ptr, ptr %i.f, align 8, !alias.scope !22226, !noalias !22225, !nonnull !21 ; 4 uses
  %.promoted62.i.i.i = load ptr, ptr %i.g, align 8, !alias.scope !22226, !noalias !22225
  %.sroa.5.sroa.0.0.copyload.pre.i.i.i = load ptr, ptr %.sroa.481.0..sroa_idx.i, align 8, !alias.scope !22226, !noalias !22225
  %.sroa.5.sroa.4.0.copyload.i.pre.i.i = load i64, ptr %.sroa.5.sroa.4.0..sroa.5.0..sroa_idx.sroa_idx.i.i.i, align 8, !alias.scope !22226, !noalias !22225
  br label %"_ZN4core3ptr98drop_in_place$LT$$LP$alloc..string..String$C$alloc..collections..btree..set_val..SetValZST$RP$$GT$17hea9e7f7f9d61f430E.exit19.i.i.i"

"_ZN4core3ptr98drop_in_place$LT$$LP$alloc..string..String$C$alloc..collections..btree..set_val..SetValZST$RP$$GT$17hea9e7f7f9d61f430E.exit19.i.i.i": ; preds = %"_ZN4core3ptr98drop_in_place$LT$$LP$alloc..string..String$C$alloc..collections..btree..set_val..SetValZST$RP$$GT$17hea9e7f7f9d61f430E.exit19.i.i.i.backedge", %bb.c
  %.sroa.5.sroa.4.0.copyload.i.i.i = phi i64 [ %.sroa.5.sroa.4.0.copyload.i.pre.i.i, %bb.c ], [ %.sroa.7.sroa.6.051.i.i.i, %"_ZN4core3ptr98drop_in_place$LT$$LP$alloc..string..String$C$alloc..collections..btree..set_val..SetValZST$RP$$GT$17hea9e7f7f9d61f430E.exit19.i.i.i.backedge" ]
  %.sroa.5.sroa.0.0.copyload.i.i.i = phi ptr [ %.sroa.5.sroa.0.0.copyload.pre.i.i.i, %bb.c ], [ %.val12.i.i.i, %"_ZN4core3ptr98drop_in_place$LT$$LP$alloc..string..String$C$alloc..collections..btree..set_val..SetValZST$RP$$GT$17hea9e7f7f9d61f430E.exit19.i.i.i.backedge" ]
  %i.i = phi ptr [ %.promoted62.i.i.i, %bb.c ], [ %i.n, %"_ZN4core3ptr98drop_in_place$LT$$LP$alloc..string..String$C$alloc..collections..btree..set_val..SetValZST$RP$$GT$17hea9e7f7f9d61f430E.exit19.i.i.i.backedge" ] ; 8 uses
  %.sroa.0.0.copyload1.i.i.i61.i.i.i = phi i64 [ %.promoted.i.i.i, %bb.c ], [ %.sroa.0.0.copyload1.i.i.i.i.i.i, %"_ZN4core3ptr98drop_in_place$LT$$LP$alloc..string..String$C$alloc..collections..btree..set_val..SetValZST$RP$$GT$17hea9e7f7f9d61f430E.exit19.i.i.i.backedge" ] ; 2 uses
  store i64 -9223372036854775807, ptr %i.b, align 8, !alias.scope !22226, !noalias !22225
  switch i64 %.sroa.0.0.copyload1.i.i.i61.i.i.i, label %bb.e [
    i64 -9223372036854775807, label %bb.d
    i64 -9223372036854775808, label %bb.j
  ]

bb.d:                                             ; preds = %"_ZN4core3ptr98drop_in_place$LT$$LP$alloc..string..String$C$alloc..collections..btree..set_val..SetValZST$RP$$GT$17hea9e7f7f9d61f430E.exit19.i.i.i"
  tail call void @llvm.experimental.noalias.scope.decl(metadata !22227)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !22228)
  %i.j = icmp eq ptr %i.i, %i.h
  br i1 %i.j, label %bb.j, label %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h8081d5ff46fe9314E.exit.i.i.i.i"

"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h8081d5ff46fe9314E.exit.i.i.i.i": ; preds = %bb.d
  %i.k = getelementptr inbounds nuw i8, ptr %i.i, i64 24 ; 3 uses
  store ptr %i.k, ptr %i.g, align 8, !alias.scope !22229, !noalias !22225
  %.sroa.0.0.copyload1.i.i.i.i = load i64, ptr %i.i, align 8, !noalias !22230 ; 2 uses
  %.not.i.i.i.i = icmp eq i64 %.sroa.0.0.copyload1.i.i.i.i, -9223372036854775808
  br i1 %.not.i.i.i.i, label %bb.j, label %"_ZN102_$LT$core..iter..adapters..map..Map$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h38ec7238def3136fE.exit.thread45.i.i.i"

"_ZN102_$LT$core..iter..adapters..map..Map$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h38ec7238def3136fE.exit.thread45.i.i.i": ; preds = %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h8081d5ff46fe9314E.exit.i.i.i.i"
  %.sroa.6.0..sroa_idx2.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %.sroa.7.sroa.0.0.copyload33.i.i.i = load ptr, ptr %.sroa.6.0..sroa_idx2.i.i.i.i, align 8, !noalias !22231
  %.sroa.7.sroa.6.0..sroa.6.0..sroa_idx2.i.sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %.sroa.7.sroa.6.0.copyload34.i.i.i = load i64, ptr %.sroa.7.sroa.6.0..sroa.6.0..sroa_idx2.i.sroa_idx.i.i.i, align 8, !noalias !22231
  br label %bb.e

bb.e:                                             ; preds = %"_ZN102_$LT$core..iter..adapters..map..Map$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h38ec7238def3136fE.exit.thread45.i.i.i", %"_ZN4core3ptr98drop_in_place$LT$$LP$alloc..string..String$C$alloc..collections..btree..set_val..SetValZST$RP$$GT$17hea9e7f7f9d61f430E.exit19.i.i.i"
  %i.l = phi ptr [ %i.k, %"_ZN102_$LT$core..iter..adapters..map..Map$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h38ec7238def3136fE.exit.thread45.i.i.i" ], [ %i.i, %"_ZN4core3ptr98drop_in_place$LT$$LP$alloc..string..String$C$alloc..collections..btree..set_val..SetValZST$RP$$GT$17hea9e7f7f9d61f430E.exit19.i.i.i" ] ; 4 uses
  %.sroa.030.052.i.i.i = phi i64 [ %.sroa.0.0.copyload1.i.i.i.i, %"_ZN102_$LT$core..iter..adapters..map..Map$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h38ec7238def3136fE.exit.thread45.i.i.i" ], [ %.sroa.0.0.copyload1.i.i.i61.i.i.i, %"_ZN4core3ptr98drop_in_place$LT$$LP$alloc..string..String$C$alloc..collections..btree..set_val..SetValZST$RP$$GT$17hea9e7f7f9d61f430E.exit19.i.i.i" ] ; 7 uses
  %.sroa.7.sroa.6.051.i.i.i = phi i64 [ %.sroa.7.sroa.6.0.copyload34.i.i.i, %"_ZN102_$LT$core..iter..adapters..map..Map$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h38ec7238def3136fE.exit.thread45.i.i.i" ], [ %.sroa.5.sroa.4.0.copyload.i.i.i, %"_ZN4core3ptr98drop_in_place$LT$$LP$alloc..string..String$C$alloc..collections..btree..set_val..SetValZST$RP$$GT$17hea9e7f7f9d61f430E.exit19.i.i.i" ] ; 5 uses
  %.sroa.7.sroa.0.050.i.i.i = phi ptr [ %.sroa.7.sroa.0.0.copyload33.i.i.i, %"_ZN102_$LT$core..iter..adapters..map..Map$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h38ec7238def3136fE.exit.thread45.i.i.i" ], [ %.sroa.5.sroa.0.0.copyload.i.i.i, %"_ZN4core3ptr98drop_in_place$LT$$LP$alloc..string..String$C$alloc..collections..btree..set_val..SetValZST$RP$$GT$17hea9e7f7f9d61f430E.exit19.i.i.i" ] ; 7 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !22232)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !22233)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !22234)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !22235)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !22236)
  %i.m = icmp eq ptr %i.l, %i.h
  br i1 %i.m, label %bb.g, label %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h8081d5ff46fe9314E.exit.i.i.i.i.i.i"

"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h8081d5ff46fe9314E.exit.i.i.i.i.i.i": ; preds = %bb.e
  %i.n = getelementptr inbounds nuw i8, ptr %i.l, i64 24 ; 2 uses
  store ptr %i.n, ptr %i.g, align 8, !alias.scope !22237, !noalias !22225
  %.sroa.0.0.copyload1.i.i.i.i.i.i = load i64, ptr %i.l, align 8, !noalias !22238 ; 6 uses
  %.not.i.i.i.i.i.i = icmp eq i64 %.sroa.0.0.copyload1.i.i.i.i.i.i, -9223372036854775808
  br i1 %.not.i.i.i.i.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h8081d5ff46fe9314E.exit.i.i.i.i.i.i"
  %.sroa.6.0..sroa_idx2.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  store i64 %.sroa.0.0.copyload1.i.i.i.i.i.i, ptr %i.b, align 8, !alias.scope !22239, !noalias !22225
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.481.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6.0..sroa_idx2.i.i.i.i.i.i, i64 16, i1 false), !noalias !22240
  %i.o = icmp ne i64 %.sroa.0.0.copyload1.i.i.i.i.i.i, -9223372036854775807
  tail call void @llvm.assume(i1 %i.o)
  %.val13.i.i.i = load i64, ptr %.sroa.5.sroa.4.0..sroa.5.0..sroa_idx.sroa_idx.i.i.i, align 8, !alias.scope !22226, !noalias !22225, !noundef !21
  %.not.i.i.i.i.i.i.i = icmp eq i64 %.sroa.7.sroa.6.051.i.i.i, %.val13.i.i.i
  br i1 %.not.i.i.i.i.i.i.i, label %_ZN4core3cmp9PartialEq2ne17hbe4cb7e26b86de13E.exit.i.i.i, label %"_ZN137_$LT$alloc..collections..btree..dedup_sorted_iter..DedupSortedIter$LT$K$C$V$C$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h4a4e6a7158bb357aE.exit.i.i"

bb.g:                                             ; preds = %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h8081d5ff46fe9314E.exit.i.i.i.i.i.i", %bb.e
  store i64 -9223372036854775808, ptr %i.b, align 8, !alias.scope !22239, !noalias !22225
  br label %"_ZN137_$LT$alloc..collections..btree..dedup_sorted_iter..DedupSortedIter$LT$K$C$V$C$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h4a4e6a7158bb357aE.exit.i.i"

_ZN4core3cmp9PartialEq2ne17hbe4cb7e26b86de13E.exit.i.i.i: ; preds = %bb.f
  %.val12.i.i.i = load ptr, ptr %.sroa.481.0..sroa_idx.i, align 8, !alias.scope !22226, !noalias !22225, !nonnull !21, !noundef !21 ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.7.sroa.0.050.i.i.i) ]
  %bcmp.i.i.i.i.i.i.i = tail call i32 @bcmp(ptr nonnull readonly align 1 %.sroa.7.sroa.0.050.i.i.i, ptr nonnull readonly align 1 %.val12.i.i.i, i64 %.sroa.7.sroa.6.051.i.i.i), !alias.scope !22241, !noalias !22242
  %.not.i.i.i = icmp eq i32 %bcmp.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i, label %bb.h, label %"_ZN137_$LT$alloc..collections..btree..dedup_sorted_iter..DedupSortedIter$LT$K$C$V$C$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h4a4e6a7158bb357aE.exit.i.i"

bb.h:                                             ; preds = %_ZN4core3cmp9PartialEq2ne17hbe4cb7e26b86de13E.exit.i.i.i
  %i.p = icmp eq i64 %.sroa.030.052.i.i.i, 0
  br i1 %i.p, label %"_ZN4core3ptr98drop_in_place$LT$$LP$alloc..string..String$C$alloc..collections..btree..set_val..SetValZST$RP$$GT$17hea9e7f7f9d61f430E.exit19.i.i.i.backedge", label %bb.i

bb.i:                                             ; preds = %bb.h
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.7.sroa.0.050.i.i.i, i64 noundef %.sroa.030.052.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #52, !noalias !22243
  br label %"_ZN4core3ptr98drop_in_place$LT$$LP$alloc..string..String$C$alloc..collections..btree..set_val..SetValZST$RP$$GT$17hea9e7f7f9d61f430E.exit19.i.i.i.backedge"

"_ZN4core3ptr98drop_in_place$LT$$LP$alloc..string..String$C$alloc..collections..btree..set_val..SetValZST$RP$$GT$17hea9e7f7f9d61f430E.exit19.i.i.i.backedge": ; preds = %bb.i, %bb.h
  br label %"_ZN4core3ptr98drop_in_place$LT$$LP$alloc..string..String$C$alloc..collections..btree..set_val..SetValZST$RP$$GT$17hea9e7f7f9d61f430E.exit19.i.i.i"

.body.i.i.sink.split:                             ; preds = %bb.aa, %bb.v
  %.pn.i.i.ph = phi { ptr, i32 } [ %i.dk, %bb.v ], [ %i.gx, %bb.aa ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.7.sroa.0.050.i.i.i) ]
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.7.sroa.0.050.i.i.i, i64 noundef %.sroa.030.052.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #52, !noalias !22225
  br label %.body.i.i

.body.i.i:                                        ; preds = %.body.i.i.sink.split, %bb.aa, %bb.v
  %.pn.i.i = phi { ptr, i32 } [ %i.dk, %bb.v ], [ %i.gx, %bb.aa ], [ %.pn.i.i.ph, %.body.i.i.sink.split ]
  call fastcc void @"_ZN4core3ptr447drop_in_place$LT$alloc..collections..btree..dedup_sorted_iter..DedupSortedIter$LT$alloc..string..String$C$alloc..collections..btree..set_val..SetValZST$C$core..iter..adapters..map..Map$LT$alloc..vec..into_iter..IntoIter$LT$alloc..string..String$GT$$C$alloc..collections..btree..set..BTreeSet$LT$alloc..string..String$GT$..from_sorted_iter$LT$alloc..vec..into_iter..IntoIter$LT$alloc..string..String$GT$$GT$..$u7b$$u7b$closure$u7d$$u7d$$GT$$GT$$GT$17hd451880c6e26889fE"(ptr noalias noundef align 8 dereferenceable(56) %i.b) #55, !noalias !22225
  br label %.thread.i

"_ZN137_$LT$alloc..collections..btree..dedup_sorted_iter..DedupSortedIter$LT$K$C$V$C$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h4a4e6a7158bb357aE.exit.i.i": ; preds = %_ZN4core3cmp9PartialEq2ne17hbe4cb7e26b86de13E.exit.i.i.i, %bb.f, %bb.g
  %.promoted.i.pre135.i82.i = phi i64 [ -9223372036854775808, %bb.g ], [ %.sroa.0.0.copyload1.i.i.i.i.i.i, %bb.f ], [ %.sroa.0.0.copyload1.i.i.i.i.i.i, %_ZN4core3cmp9PartialEq2ne17hbe4cb7e26b86de13E.exit.i.i.i ]
  %i.q = getelementptr inbounds nuw i8, ptr %.sroa.0.070.i.i, i64 274 ; 2 uses
  %i.r = load i16, ptr %i.q, align 2, !noalias !22225, !noundef !21 ; 3 uses
  %i.s = icmp ult i16 %i.r, 11
  br i1 %i.s, label %bb.z, label %.preheader.i.i

bb.j:                                             ; preds = %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h8081d5ff46fe9314E.exit.i.i.i.i", %bb.d, %"_ZN4core3ptr98drop_in_place$LT$$LP$alloc..string..String$C$alloc..collections..btree..set_val..SetValZST$RP$$GT$17hea9e7f7f9d61f430E.exit19.i.i.i"
  %i.t = phi ptr [ %i.i, %"_ZN4core3ptr98drop_in_place$LT$$LP$alloc..string..String$C$alloc..collections..btree..set_val..SetValZST$RP$$GT$17hea9e7f7f9d61f430E.exit19.i.i.i" ], [ %i.k, %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h8081d5ff46fe9314E.exit.i.i.i.i" ], [ %i.i, %bb.d ] ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !22244)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !22245)
  %i.u = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  tail call void @llvm.experimental.noalias.scope.decl(metadata !22246)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !22247)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !22248)
  %i.v = ptrtoint ptr %i.h to i64
  %i.w = ptrtoint ptr %i.t to i64
  %i.x = sub nuw i64 %i.v, %i.w
  %i.y = udiv exact i64 %i.x, 24
  tail call void @llvm.experimental.noalias.scope.decl(metadata !22249)
  %i.z = icmp eq ptr %i.h, %i.t
  br i1 %i.z, label %"_ZN4core3ptr52drop_in_place$LT$$u5b$alloc..string..String$u5d$$GT$17he7981b1f2e627a9aE.exit.i.i.i.i.i.i.i", label %.lr.ph.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i:                           ; preds = %bb.j, %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17hfb8d17e84375b72dE.exit.i.i.i.i.i.i.i.i"
  %.sroa.0.010.i.i.i.i.i.i.i.i = phi i64 [ %i.ab, %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17hfb8d17e84375b72dE.exit.i.i.i.i.i.i.i.i" ], [ 0, %bb.j ] ; 2 uses
  %i.aa = getelementptr inbounds nuw [24 x i8], ptr %i.t, i64 %.sroa.0.010.i.i.i.i.i.i.i.i ; 2 uses
  %i.ab = add nuw i64 %.sroa.0.010.i.i.i.i.i.i.i.i, 1 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !22250)
  %.val.i.i.i.i.i.i.i.i.i = load i64, ptr %i.aa, align 8, !alias.scope !22251, !noalias !22252 ; 2 uses
  %i.ac = icmp eq i64 %.val.i.i.i.i.i.i.i.i.i, 0
  br i1 %i.ac, label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17hfb8d17e84375b72dE.exit.i.i.i.i.i.i.i.i", label %bb.k

bb.k:                                             ; preds = %.lr.ph.i.i.i.i.i.i.i.i
  %i.ad = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  %.val1.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.ad, align 8, !alias.scope !22251, !noalias !22252, !nonnull !21, !noundef !21
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i.i.i.i.i.i.i, i64 noundef %.val.i.i.i.i.i.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #52, !noalias !22253
  br label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17hfb8d17e84375b72dE.exit.i.i.i.i.i.i.i.i"

"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17hfb8d17e84375b72dE.exit.i.i.i.i.i.i.i.i": ; preds = %bb.k, %.lr.ph.i.i.i.i.i.i.i.i
  %i.ae = icmp eq i64 %i.ab, %i.y
  br i1 %i.ae, label %"_ZN4core3ptr52drop_in_place$LT$$u5b$alloc..string..String$u5d$$GT$17he7981b1f2e627a9aE.exit.i.i.i.i.i.i.i", label %.lr.ph.i.i.i.i.i.i.i.i

"_ZN4core3ptr52drop_in_place$LT$$u5b$alloc..string..String$u5d$$GT$17he7981b1f2e627a9aE.exit.i.i.i.i.i.i.i": ; preds = %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17hfb8d17e84375b72dE.exit.i.i.i.i.i.i.i.i", %bb.j
  %i.af = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  %i.ag = load i64, ptr %i.af, align 8, !alias.scope !22254, !noalias !22225, !noundef !21 ; 2 uses
  %i.ah = icmp eq i64 %i.ag, 0
  br i1 %i.ah, label %"_ZN4core3ptr447drop_in_place$LT$alloc..collections..btree..dedup_sorted_iter..DedupSortedIter$LT$alloc..string..String$C$alloc..collections..btree..set_val..SetValZST$C$core..iter..adapters..map..Map$LT$alloc..vec..into_iter..IntoIter$LT$alloc..string..String$GT$$C$alloc..collections..btree..set..BTreeSet$LT$alloc..string..String$GT$..from_sorted_iter$LT$alloc..vec..into_iter..IntoIter$LT$alloc..string..String$GT$$GT$..$u7b$$u7b$closure$u7d$$u7d$$GT$$GT$$GT$17hd451880c6e26889fE.exit.i.i", label %bb.l

bb.l:                                             ; preds = %"_ZN4core3ptr52drop_in_place$LT$$u5b$alloc..string..String$u5d$$GT$17he7981b1f2e627a9aE.exit.i.i.i.i.i.i.i"
  %i.ai = load ptr, ptr %i.u, align 8, !alias.scope !22254, !noalias !22225, !nonnull !21, !noundef !21
  %i.aj = mul nuw i64 %i.ag, 24
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.ai, i64 noundef %i.aj, i64 noundef range(i64 1, -9223372036854775807) 8) #52, !noalias !22252
  br label %"_ZN4core3ptr447drop_in_place$LT$alloc..collections..btree..dedup_sorted_iter..DedupSortedIter$LT$alloc..string..String$C$alloc..collections..btree..set_val..SetValZST$C$core..iter..adapters..map..Map$LT$alloc..vec..into_iter..IntoIter$LT$alloc..string..String$GT$$C$alloc..collections..btree..set..BTreeSet$LT$alloc..string..String$GT$..from_sorted_iter$LT$alloc..vec..into_iter..IntoIter$LT$alloc..string..String$GT$$GT$..$u7b$$u7b$closure$u7d$$u7d$$GT$$GT$$GT$17hd451880c6e26889fE.exit.i.i"

"_ZN4core3ptr447drop_in_place$LT$alloc..collections..btree..dedup_sorted_iter..DedupSortedIter$LT$alloc..string..String$C$alloc..collections..btree..set_val..SetValZST$C$core..iter..adapters..map..Map$LT$alloc..vec..into_iter..IntoIter$LT$alloc..string..String$GT$$C$alloc..collections..btree..set..BTreeSet$LT$alloc..string..String$GT$..from_sorted_iter$LT$alloc..vec..into_iter..IntoIter$LT$alloc..string..String$GT$$GT$..$u7b$$u7b$closure$u7d$$u7d$$GT$$GT$$GT$17hd451880c6e26889fE.exit.i.i": ; preds = %bb.l, %"_ZN4core3ptr52drop_in_place$LT$$u5b$alloc..string..String$u5d$$GT$17he7981b1f2e627a9aE.exit.i.i.i.i.i.i.i"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !22225
  %i.ak = icmp eq i64 %.sroa.8.0.i, 0
  br i1 %i.ak, label %"_ZN5alloc11collections5btree3map25BTreeMap$LT$K$C$V$C$A$GT$27bulk_build_from_sorted_iter17h123d9a9ecc2ad12cE.exit", label %.lr.ph.i16.preheader.i.i

.lr.ph.i16.preheader.i.i:                         ; preds = %"_ZN4core3ptr447drop_in_place$LT$alloc..collections..btree..dedup_sorted_iter..DedupSortedIter$LT$alloc..string..String$C$alloc..collections..btree..set_val..SetValZST$C$core..iter..adapters..map..Map$LT$alloc..vec..into_iter..IntoIter$LT$alloc..string..String$GT$$C$alloc..collections..btree..set..BTreeSet$LT$alloc..string..String$GT$..from_sorted_iter$LT$alloc..vec..into_iter..IntoIter$LT$alloc..string..String$GT$$GT$..$u7b$$u7b$closure$u7d$$u7d$$GT$$GT$$GT$17hd451880c6e26889fE.exit.i.i"
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.i) ]
  br label %.lr.ph.i16.i.i

.lr.ph.i16.i.i:                                   ; preds = %"_ZN5alloc11collections5btree4node29BalancingContext$LT$K$C$V$GT$15bulk_steal_left17he7fb483450147a16E.exit.i.i.i", %.lr.ph.i16.preheader.i.i
  %.sroa.02.010.i.i.i = phi i64 [ %i.as, %"_ZN5alloc11collections5btree4node29BalancingContext$LT$K$C$V$GT$15bulk_steal_left17he7fb483450147a16E.exit.i.i.i" ], [ %.sroa.8.0.i, %.lr.ph.i16.preheader.i.i ]
  %.sroa.03.09.i.i.i = phi ptr [ %i.av, %"_ZN5alloc11collections5btree4node29BalancingContext$LT$K$C$V$GT$15bulk_steal_left17he7fb483450147a16E.exit.i.i.i" ], [ %.sroa.0.0.i, %.lr.ph.i16.preheader.i.i ] ; 3 uses
  %i.al = getelementptr inbounds nuw i8, ptr %.sroa.03.09.i.i.i, i64 274
  %i.am = load i16, ptr %i.al, align 2, !noalias !22225, !noundef !21 ; 3 uses
  %.not.i17.i.i = icmp eq i16 %i.am, 0
  br i1 %.not.i17.i.i, label %.noexc.i.i, label %bb.m, !prof !23

.noexc.i.i:                                       ; preds = %.lr.ph.i16.i.i
  tail call void @_ZN4core9panicking5panic17ha264d2bb233f2b69E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @1107, i64 noundef 25, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1109) #57, !noalias !22222
  unreachable

bb.m:                                             ; preds = %.lr.ph.i16.i.i
  %i.an = zext nneg i16 %i.am to i64
  %i.ao = add nsw i64 %i.an, -1                   ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %.sroa.03.09.i.i.i, i64 280
  %i.aq = getelementptr inbounds nuw [8 x i8], ptr %i.ap, i64 %i.ao ; 2 uses
  %i.ar = load ptr, ptr %i.aq, align 8, !noalias !22255, !nonnull !21, !noundef !21 ; 3 uses
  %i.as = add i64 %.sroa.02.010.i.i.i, -1         ; 3 uses
  %i.at = icmp ult i16 %i.am, 12
  tail call void @llvm.assume(i1 %i.at)
  %i.au = getelementptr inbounds nuw i8, ptr %i.aq, i64 8
  %i.av = load ptr, ptr %i.au, align 8, !noalias !22256, !nonnull !21, !noundef !21 ; 15 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 274 ; 2 uses
  %i.ax = load i16, ptr %i.aw, align 2, !noalias !22225, !noundef !21 ; 3 uses
  %i.ay = icmp ult i16 %i.ax, 5
  br i1 %i.ay, label %bb.n, label %"_ZN5alloc11collections5btree4node29BalancingContext$LT$K$C$V$GT$15bulk_steal_left17he7fb483450147a16E.exit.i.i.i"

"_ZN5alloc11collections5btree4node29BalancingContext$LT$K$C$V$GT$15bulk_steal_left17he7fb483450147a16E.exit.i.i.i": ; preds = %"_ZN5alloc11collections5btree4node29BalancingContext$LT$K$C$V$GT$15bulk_steal_left17he7fb483450147a16E.exit.loopexit.i.i.i", %bb.m
  %i.az = icmp eq i64 %i.as, 0
  br i1 %i.az, label %"_ZN5alloc11collections5btree3map25BTreeMap$LT$K$C$V$C$A$GT$27bulk_build_from_sorted_iter17h123d9a9ecc2ad12cE.exit", label %.lr.ph.i16.i.i

bb.n:                                             ; preds = %bb.m
  %narrow.i.i.i = sub nuw nsw i16 5, %i.ax        ; 2 uses
  %i.ba = zext nneg i16 %narrow.i.i.i to i64      ; 4 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ar, i64 274 ; 2 uses
  %i.bc = load i16, ptr %i.bb, align 2, !noalias !22257, !noundef !21 ; 2 uses
  %i.bd = zext nneg i16 %i.ax to i64              ; 2 uses
  %.not.i.i18.i.i = icmp ugt i16 %narrow.i.i.i, %i.bc
  br i1 %.not.i.i18.i.i, label %.noexc19.i.i, label %_ZN5alloc11collections5btree4node13move_to_slice17h6914cd5935d51edbE.exit.i.i.i.i, !prof !23

.noexc19.i.i:                                     ; preds = %bb.n
  tail call void @_ZN4core9panicking5panic17ha264d2bb233f2b69E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @1123, i64 noundef 39, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1124) #57, !noalias !22222
  unreachable

_ZN5alloc11collections5btree4node13move_to_slice17h6914cd5935d51edbE.exit.i.i.i.i: ; preds = %bb.n
  %i.be = zext i16 %i.bc to i64                   ; 2 uses
  %i.bf = sub nuw nsw i64 %i.be, %i.ba            ; 3 uses
  %i.bg = trunc nuw i64 %i.bf to i16
  store i16 %i.bg, ptr %i.bb, align 2, !noalias !22257
  store i16 5, ptr %i.aw, align 2, !noalias !22257
  %i.bh = getelementptr inbounds nuw i8, ptr %i.av, i64 8 ; 4 uses
  %i.bi = getelementptr inbounds nuw [24 x i8], ptr %i.bh, i64 %i.ba
  %i.bj = mul nuw nsw i64 %i.bd, 24
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.bi, ptr nonnull align 8 %i.bh, i64 %i.bj, i1 false), !alias.scope !22258, !noalias !22257
  %i.bk = add nuw nsw i64 %i.bf, 1                ; 3 uses
  %i.bl = sub nuw nsw i64 %i.be, %i.bk            ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %i.ar, i64 8 ; 2 uses
  %i.bn = getelementptr inbounds nuw [24 x i8], ptr %i.bm, i64 %i.bk
  %i.bo = mul nuw nsw i64 %i.bl, 24
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.bh, ptr nonnull readonly align 8 %i.bn, i64 %i.bo, i1 false), !alias.scope !22259, !noalias !22257
  %i.bp = getelementptr inbounds nuw [24 x i8], ptr %i.bm, i64 %i.bf
  %i.bq = getelementptr inbounds nuw i8, ptr %.sroa.03.09.i.i.i, i64 8
  %i.br = getelementptr inbounds nuw [24 x i8], ptr %i.bq, i64 %i.ao ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %i.br, i64 24, i1 false), !noalias !22257
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.br, ptr noundef nonnull align 8 dereferenceable(24) %i.bp, i64 24, i1 false), !noalias !22257
  %i.bs = getelementptr inbounds nuw [24 x i8], ptr %i.bh, i64 %i.bl
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bs, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false), !noalias !22257
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %cond.i.i.i = icmp eq i64 %i.as, 0
  br i1 %cond.i.i.i, label %"_ZN5alloc11collections5btree3map25BTreeMap$LT$K$C$V$C$A$GT$27bulk_build_from_sorted_iter17h123d9a9ecc2ad12cE.exit", label %"_ZN5alloc11collections5btree4node29BalancingContext$LT$K$C$V$GT$15bulk_steal_left17he7fb483450147a16E.exit.loopexit.i.i.i"

"_ZN5alloc11collections5btree4node29BalancingContext$LT$K$C$V$GT$15bulk_steal_left17he7fb483450147a16E.exit.loopexit.i.i.i": ; preds = %_ZN5alloc11collections5btree4node13move_to_slice17h6914cd5935d51edbE.exit.i.i.i.i
  %i.bt = getelementptr inbounds nuw i8, ptr %i.av, i64 280 ; 4 uses
  %i.bu = getelementptr inbounds nuw [8 x i8], ptr %i.bt, i64 %i.ba
  %i.bv = shl nuw nsw i64 %i.bd, 3
  %i.bw = add nuw nsw i64 %i.bv, 8
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.bu, ptr noundef nonnull align 8 dereferenceable(1) %i.bt, i64 %i.bw, i1 false), !alias.scope !22260, !noalias !22257
  %i.bx = getelementptr inbounds nuw i8, ptr %i.ar, i64 280
  %i.by = getelementptr inbounds nuw [8 x i8], ptr %i.bx, i64 %i.bk
  %i.bz = shl nuw nsw i64 %i.ba, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.bt, ptr noundef nonnull readonly align 8 dereferenceable(1) %i.by, i64 %i.bz, i1 false), !alias.scope !22261, !noalias !22257
  %i.ca = load ptr, ptr %i.bt, align 8, !noalias !22262, !nonnull !21, !noundef !21 ; 2 uses
  store ptr %i.av, ptr %i.ca, align 8, !noalias !22263
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 272
  store i16 0, ptr %i.cb, align 8, !noalias !22263
  %i.cc = getelementptr inbounds nuw i8, ptr %i.av, i64 288
  %i.cd = load ptr, ptr %i.cc, align 8, !noalias !22262, !nonnull !21, !noundef !21 ; 2 uses
  store ptr %i.av, ptr %i.cd, align 8, !noalias !22263
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 272
  store i16 1, ptr %i.ce, align 8, !noalias !22263
  %i.cf = getelementptr inbounds nuw i8, ptr %i.av, i64 296
  %i.cg = load ptr, ptr %i.cf, align 8, !noalias !22262, !nonnull !21, !noundef !21 ; 2 uses
  store ptr %i.av, ptr %i.cg, align 8, !noalias !22263
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cg, i64 272
  store i16 2, ptr %i.ch, align 8, !noalias !22263
  %i.ci = getelementptr inbounds nuw i8, ptr %i.av, i64 304
  %i.cj = load ptr, ptr %i.ci, align 8, !noalias !22262, !nonnull !21, !noundef !21 ; 2 uses
  store ptr %i.av, ptr %i.cj, align 8, !noalias !22263
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cj, i64 272
  store i16 3, ptr %i.ck, align 8, !noalias !22263
  %i.cl = getelementptr inbounds nuw i8, ptr %i.av, i64 312
  %i.cm = load ptr, ptr %i.cl, align 8, !noalias !22262, !nonnull !21, !noundef !21 ; 2 uses
  store ptr %i.av, ptr %i.cm, align 8, !noalias !22263
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cm, i64 272
  store i16 4, ptr %i.cn, align 8, !noalias !22263
  %i.co = getelementptr inbounds nuw i8, ptr %i.av, i64 320
  %i.cp = load ptr, ptr %i.co, align 8, !noalias !22262, !nonnull !21, !noundef !21 ; 2 uses
  store ptr %i.av, ptr %i.cp, align 8, !noalias !22263
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cp, i64 272
end_hunk_6
begin_hunk_7_@_ZN5alloc3str17join_generic_copy17hb65833a9b1fceafeE:bb.a
"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17ha088480bacd8bb9dE.exit": ; preds = %bb.i, %bb.h
  resume { ptr, i32 } %i.af
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_ZN5alloc3str17join_generic_copy17hf0e31f8a13e4f9c9E(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef nonnull readonly align 8 captures(address) %1, i64 noundef %2) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 6 uses
  %i.b = alloca [48 x i8], align 8                ; 6 uses
  %i.c = alloca [24 x i8], align 8                ; 8 uses
  %.idx = mul nuw nsw i64 %2, 24                  ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 %.idx ; 2 uses
  %i.e = icmp eq i64 %2, 0
  %.sink.sroa.gep = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.sink.sroa.gep6 = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.sink.sroa.gep8 = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %.sink.sroa.gep9 = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %.sink.sroa.gep11 = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %.sink.sroa.gep12 = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %.sink.sroa.gep14 = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %.sink.sroa.gep15 = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  br i1 %i.e, label %bb.d, label %.lr.ph3

.lr.ph3:                                          ; preds = %bb.a
  %gepdiff = add nsw i64 %.idx, -24
  %i.f = udiv exact i64 %gepdiff, 24
  br label %bb.c

bb.b:                                             ; preds = %bb.c
  %i.g = getelementptr inbounds nuw i8, ptr %i.i, i64 24 ; 2 uses
  %i.h = icmp eq ptr %i.g, %i.d
  br i1 %i.h, label %._crit_edge, label %bb.c

bb.c:                                             ; preds = %.lr.ph3, %bb.b
  %.sroa.01.0.i2 = phi i64 [ %i.f, %.lr.ph3 ], [ %i.k, %bb.b ] ; 2 uses
  %i.i = phi ptr [ %1, %.lr.ph3 ], [ %i.g, %bb.b ] ; 2 uses
  %i.j = getelementptr i8, ptr %i.i, i64 16
  %.val9.i = load i64, ptr %i.j, align 8, !alias.scope !22408, !noalias !22409, !noundef !21
  %i.k = add i64 %.val9.i, %.sroa.01.0.i2         ; 10 uses
  %i.l = icmp ult i64 %i.k, %.sroa.01.0.i2
  br i1 %i.l, label %bb.g, label %bb.b

bb.d:                                             ; preds = %bb.a
  store i64 0, ptr %0, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr inttoptr (i64 1 to ptr), ptr %i.m, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 0, ptr %i.n, align 8
  br label %bb.e

bb.e:                                             ; preds = %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hb80856f9b2fb7563E.exit88.thread", %bb.d
  ret void

._crit_edge:                                      ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %i.o = icmp slt i64 %i.k, 0
  br i1 %i.o, label %bb.f, label %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i, !prof !30

_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i: ; preds = %._crit_edge
  %i.p = icmp eq i64 %i.k, 0
  br i1 %i.p, label %bb.j, label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h2c5e185936086779E.exit.i.i"

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h2c5e185936086779E.exit.i.i": ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #52, !noalias !22410
  %i.q = tail call noundef ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef %i.k, i64 noundef range(i64 1, 9) 1) #52, !noalias !22410 ; 2 uses
  %i.r = icmp eq ptr %i.q, null
  br i1 %i.r, label %bb.f, label %bb.j

bb.f:                                             ; preds = %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h2c5e185936086779E.exit.i.i", %._crit_edge
  %.sroa.4.0.ph.i = phi i64 [ 1, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h2c5e185936086779E.exit.i.i" ], [ 0, %._crit_edge ]
  tail call void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef %.sroa.4.0.ph.i, i64 %i.k, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @1133) #57
  unreachable

bb.g:                                             ; preds = %bb.c
  tail call void @_ZN4core6option13expect_failed17h1729d0bd73171c50E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @1130, i64 noundef 53, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1132) #57
  unreachable

bb.h:                                             ; preds = %.invoke, %bb.k
  %i.s = landingpad { ptr, i32 }
          cleanup
  %.val = load i64, ptr %i.c, align 8             ; 2 uses
  %i.t = icmp eq i64 %.val, 0
  br i1 %i.t, label %"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17ha088480bacd8bb9dE.exit", label %bb.i

bb.i:                                             ; preds = %bb.h
  %.val83 = load ptr, ptr %i.u, align 8, !nonnull !21, !noundef !21
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val83, i64 noundef %.val, i64 noundef range(i64 1, -9223372036854775807) 1) #52
  br label %"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17ha088480bacd8bb9dE.exit"

bb.j:                                             ; preds = %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h2c5e185936086779E.exit.i.i", %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i
  %.sroa.10.0.i = phi ptr [ inttoptr (i64 1 to ptr), %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i ], [ %i.q, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h2c5e185936086779E.exit.i.i" ] ; 2 uses
  store i64 %i.k, ptr %i.c, align 8
  %i.u = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 3 uses
  store ptr %.sroa.10.0.i, ptr %i.u, align 8
  %i.v = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 3 uses
  store i64 0, ptr %i.v, align 8
  %.val1.pn.in.i = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.val1.pn.i = load i64, ptr %.val1.pn.in.i, align 8, !alias.scope !22411, !noundef !21 ; 4 uses
  %.val.pn.in.i = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val.pn.i = load ptr, ptr %.val.pn.in.i, align 8, !alias.scope !22411, !nonnull !21, !noundef !21
  tail call void @llvm.experimental.noalias.scope.decl(metadata !22412)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !22413)
  %i.w = icmp ugt i64 %.val1.pn.i, %i.k
  br i1 %i.w, label %bb.k, label %bb.l, !prof !23

bb.k:                                             ; preds = %bb.j
  invoke fastcc void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$7reserve21do_reserve_and_handle17h45307a5a03ebcc73E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c, i64 noundef 0, i64 noundef %.val1.pn.i, i64 noundef 1, i64 noundef 1)
          to label %.noexc unwind label %bb.h

.noexc:                                           ; preds = %bb.k
  %.pre.i.i = load i64, ptr %i.v, align 8, !alias.scope !22414
  %.pre = load ptr, ptr %i.u, align 8, !alias.scope !22414
  br label %bb.l

bb.l:                                             ; preds = %.noexc, %bb.j
  %i.x = phi ptr [ %.sroa.10.0.i, %bb.j ], [ %.pre, %.noexc ] ; 2 uses
  %i.y = phi i64 [ 0, %bb.j ], [ %.pre.i.i, %.noexc ] ; 3 uses
  %i.z = icmp sgt i64 %i.y, -1
  tail call void @llvm.assume(i1 %i.z)
  %i.aa = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.y
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.aa, ptr nonnull readonly align 1 %.val.pn.i, i64 %.val1.pn.i, i1 false), !noalias !22414
  %i.ab = add i64 %i.y, %.val1.pn.i               ; 3 uses
  %i.ac = icmp sgt i64 %i.ab, -1
  tail call void @llvm.assume(i1 %i.ac)
  %i.ad = sub nsw i64 %i.k, %i.ab                 ; 2 uses
  %i.ae = icmp eq i64 %2, 1
  br i1 %i.ae, label %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hb80856f9b2fb7563E.exit88.thread", label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.l
  %.sroa.05.028 = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.af = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.ab
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$15copy_from_slice17h182fcc4be6f43594E.exit92"
  %.sroa.05.032 = phi ptr [ %.sroa.05.0, %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$15copy_from_slice17h182fcc4be6f43594E.exit92" ], [ %.sroa.05.028, %.lr.ph.preheader ] ; 2 uses
  %.sroa.08.231 = phi ptr [ %i.al, %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$15copy_from_slice17h182fcc4be6f43594E.exit92" ], [ %i.af, %.lr.ph.preheader ] ; 2 uses
  %.sroa.28.230 = phi i64 [ %i.am, %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$15copy_from_slice17h182fcc4be6f43594E.exit92" ], [ %i.ad, %.lr.ph.preheader ] ; 2 uses
  %.pn29 = phi ptr [ %.sroa.05.032, %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$15copy_from_slice17h182fcc4be6f43594E.exit92" ], [ %1, %.lr.ph.preheader ] ; 2 uses
  %i.ag = getelementptr i8, ptr %.pn29, i64 32
  %.val84 = load ptr, ptr %i.ag, align 8, !alias.scope !22415, !nonnull !21, !noundef !21
  %i.ah = getelementptr i8, ptr %.pn29, i64 40
  %.val85 = load i64, ptr %i.ah, align 8, !alias.scope !22415, !noundef !21 ; 4 uses
  %.not81 = icmp eq i64 %.sroa.28.230, 0
  br i1 %.not81, label %bb.m, label %bb.n, !prof !23

"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hb80856f9b2fb7563E.exit88.thread": ; preds = %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$15copy_from_slice17h182fcc4be6f43594E.exit92", %bb.l
  %.sroa.28.2.lcssa = phi i64 [ %i.ad, %bb.l ], [ %i.am, %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$15copy_from_slice17h182fcc4be6f43594E.exit92" ]
  %i.ai = sub i64 %i.k, %.sroa.28.2.lcssa
  store i64 %i.ai, ptr %i.v, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %bb.e

bb.m:                                             ; preds = %.lr.ph
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  br label %.invoke

bb.n:                                             ; preds = %.lr.ph
  %i.aj = add i64 %.sroa.28.230, -1               ; 2 uses
  store i8 95, ptr %.sroa.08.231, align 1, !alias.scope !22416
  %.not82 = icmp ugt i64 %.val85, %i.aj
  br i1 %.not82, label %bb.o, label %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$15copy_from_slice17h182fcc4be6f43594E.exit92", !prof !23

bb.o:                                             ; preds = %bb.n
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  br label %.invoke

.invoke:                                          ; preds = %bb.m, %bb.o
  %.sink.sroa.phi = phi ptr [ %.sink.sroa.gep, %bb.m ], [ %.sink.sroa.gep6, %bb.o ]
  %.sink.sroa.phi7 = phi ptr [ %.sink.sroa.gep8, %bb.m ], [ %.sink.sroa.gep9, %bb.o ]
  %.sink.sroa.phi10 = phi ptr [ %.sink.sroa.gep11, %bb.m ], [ %.sink.sroa.gep12, %bb.o ]
  %.sink.sroa.phi13 = phi ptr [ %.sink.sroa.gep14, %bb.m ], [ %.sink.sroa.gep15, %bb.o ]
  %.sink = phi ptr [ %i.b, %bb.m ], [ %i.a, %bb.o ] ; 2 uses
  store ptr @95, ptr %.sink, align 8
  store i64 1, ptr %.sink.sroa.phi, align 8
  store ptr null, ptr %.sink.sroa.phi7, align 8
  store ptr inttoptr (i64 8 to ptr), ptr %.sink.sroa.phi10, align 8
  store i64 0, ptr %.sink.sroa.phi13, align 8
  invoke void @_ZN4core9panicking9panic_fmt17h92c8e5abe71dd8d1E(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %.sink, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1134) #57
          to label %.cont unwind label %bb.h

.cont:                                            ; preds = %.invoke
  unreachable

"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$15copy_from_slice17h182fcc4be6f43594E.exit92": ; preds = %bb.n
  %i.ak = getelementptr inbounds nuw i8, ptr %.sroa.08.231, i64 1 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 %.val85
  %i.am = sub nuw i64 %i.aj, %.val85              ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ak, ptr nonnull readonly align 1 %.val84, i64 %.val85, i1 false), !alias.scope !22417
  %.sroa.05.0 = getelementptr inbounds nuw i8, ptr %.sroa.05.032, i64 24 ; 2 uses
  %i.an = icmp eq ptr %.sroa.05.0, %i.d
  br i1 %i.an, label %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hb80856f9b2fb7563E.exit88.thread", label %.lr.ph

"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17ha088480bacd8bb9dE.exit": ; preds = %bb.i, %bb.h
  resume { ptr, i32 } %i.s
}

; Function Attrs: inlinehint nofree norecurse nosync nounwind nonlazybind memory(read, inaccessiblemem: readwrite, target_mem: none) uwtable
define internal fastcc noundef zeroext i1 @"_ZN5alloc3vec10partial_eq117_$LT$impl$u20$core..cmp..PartialEq$LT$alloc..vec..Vec$LT$U$C$A2$GT$$GT$$u20$for$u20$alloc..vec..Vec$LT$T$C$A1$GT$$GT$2eq17h1db6872fa6f027a4E"(ptr nofree readonly captures(none) %.8.val, i64 %.16.val, ptr nofree readonly captures(none) %.8.val1, i64 %.16.val3) unnamed_addr #26 {
bb.a:
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.8.val), "nonnull"(ptr %.8.val1) ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !22433)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !22434)
  %.not.i = icmp eq i64 %.16.val, %.16.val3
  br i1 %.not.i, label %.preheader.split.i, label %"_ZN73_$LT$$u5b$A$u5d$$u20$as$u20$core..slice..cmp..SlicePartialEq$LT$B$GT$$GT$5equal17h92678b0699189462E.exit"

.preheader.split.i:                               ; preds = %bb.a
  %.not18.i = icmp eq i64 %.16.val, 0
  br i1 %.not18.i, label %"_ZN73_$LT$$u5b$A$u5d$$u20$as$u20$core..slice..cmp..SlicePartialEq$LT$B$GT$$GT$5equal17h92678b0699189462E.exit", label %.lr.ph.i

bb.b:                                             ; preds = %_ZN4core3cmp9PartialEq2ne17hb053209c262ad649E.exit.i
  %i.a = add nuw i64 %.sroa.01.09.i, 1            ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.a, %.16.val
  br i1 %exitcond.not.i, label %"_ZN73_$LT$$u5b$A$u5d$$u20$as$u20$core..slice..cmp..SlicePartialEq$LT$B$GT$$GT$5equal17h92678b0699189462E.exit", label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.preheader.split.i, %bb.b
  %.sroa.01.09.i = phi i64 [ %i.a, %bb.b ], [ 0, %.preheader.split.i ] ; 3 uses
  %i.b = getelementptr inbounds nuw [56 x i8], ptr %.8.val, i64 %.sroa.01.09.i ; 5 uses
  %i.c = getelementptr inbounds nuw [56 x i8], ptr %.8.val1, i64 %.sroa.01.09.i ; 5 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !22435)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !22436)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !22437)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !22438)
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  %i.e = load i8, ptr %i.d, align 8, !range !35, !alias.scope !22439, !noundef !21
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 48
  %i.g = load i8, ptr %i.f, align 8, !range !35, !alias.scope !22440, !noundef !21
  %i.h = icmp eq i8 %i.e, %i.g
  br i1 %i.h, label %bb.c, label %"_ZN73_$LT$$u5b$A$u5d$$u20$as$u20$core..slice..cmp..SlicePartialEq$LT$B$GT$$GT$5equal17h92678b0699189462E.exit"

bb.c:                                             ; preds = %.lr.ph.i
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %.val5.i.i.i = load i64, ptr %i.i, align 8, !alias.scope !22439, !noundef !21 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %.val7.i.i.i = load i64, ptr %i.j, align 8, !alias.scope !22440, !noundef !21
  %.not.i.i.i.i.i = icmp eq i64 %.val5.i.i.i, %.val7.i.i.i
  br i1 %.not.i.i.i.i.i, label %"_ZN5alloc3vec10partial_eq117_$LT$impl$u20$core..cmp..PartialEq$LT$alloc..vec..Vec$LT$U$C$A2$GT$$GT$$u20$for$u20$alloc..vec..Vec$LT$T$C$A1$GT$$GT$2eq17h5a70cfe5f9203f90E.exit.i.i.i", label %"_ZN73_$LT$$u5b$A$u5d$$u20$as$u20$core..slice..cmp..SlicePartialEq$LT$B$GT$$GT$5equal17h92678b0699189462E.exit"

"_ZN5alloc3vec10partial_eq117_$LT$impl$u20$core..cmp..PartialEq$LT$alloc..vec..Vec$LT$U$C$A2$GT$$GT$$u20$for$u20$alloc..vec..Vec$LT$T$C$A1$GT$$GT$2eq17h5a70cfe5f9203f90E.exit.i.i.i": ; preds = %bb.c
  %i.k = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %.val6.i.i.i = load ptr, ptr %i.k, align 8, !alias.scope !22440, !nonnull !21, !noundef !21
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.val4.i.i.i = load ptr, ptr %i.l, align 8, !alias.scope !22439, !nonnull !21, !noundef !21
  %bcmp.i.i.i.i.i = tail call i32 @bcmp(ptr nonnull readonly align 1 %.val4.i.i.i, ptr nonnull readonly align 1 %.val6.i.i.i, i64 %.val5.i.i.i), !alias.scope !22441, !noalias !22442
  %i.m = icmp eq i32 %bcmp.i.i.i.i.i, 0
  br i1 %i.m, label %bb.d, label %"_ZN73_$LT$$u5b$A$u5d$$u20$as$u20$core..slice..cmp..SlicePartialEq$LT$B$GT$$GT$5equal17h92678b0699189462E.exit"

bb.d:                                             ; preds = %"_ZN5alloc3vec10partial_eq117_$LT$impl$u20$core..cmp..PartialEq$LT$alloc..vec..Vec$LT$U$C$A2$GT$$GT$$u20$for$u20$alloc..vec..Vec$LT$T$C$A1$GT$$GT$2eq17h5a70cfe5f9203f90E.exit.i.i.i"
  %i.n = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  %.val1.i.i.i = load i64, ptr %i.n, align 8, !alias.scope !22439, !noundef !21 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  %.val3.i.i.i = load i64, ptr %i.o, align 8, !alias.scope !22440, !noundef !21
  %.not.i.i8.i.i.i = icmp eq i64 %.val1.i.i.i, %.val3.i.i.i
  br i1 %.not.i.i8.i.i.i, label %_ZN4core3cmp9PartialEq2ne17hb053209c262ad649E.exit.i, label %"_ZN73_$LT$$u5b$A$u5d$$u20$as$u20$core..slice..cmp..SlicePartialEq$LT$B$GT$$GT$5equal17h92678b0699189462E.exit"

_ZN4core3cmp9PartialEq2ne17hb053209c262ad649E.exit.i: ; preds = %bb.d
  %i.p = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %.val2.i.i.i = load ptr, ptr %i.p, align 8, !alias.scope !22440, !nonnull !21, !noundef !21
  %i.q = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %.val.i.i.i = load ptr, ptr %i.q, align 8, !alias.scope !22439, !nonnull !21, !noundef !21
  %bcmp.i.i10.i.i.i = tail call i32 @bcmp(ptr nonnull readonly align 1 %.val.i.i.i, ptr nonnull readonly align 1 %.val2.i.i.i, i64 %.val1.i.i.i), !alias.scope !22443, !noalias !22442
  %.not7.i = icmp eq i32 %bcmp.i.i10.i.i.i, 0
  br i1 %.not7.i, label %bb.b, label %"_ZN73_$LT$$u5b$A$u5d$$u20$as$u20$core..slice..cmp..SlicePartialEq$LT$B$GT$$GT$5equal17h92678b0699189462E.exit"

"_ZN73_$LT$$u5b$A$u5d$$u20$as$u20$core..slice..cmp..SlicePartialEq$LT$B$GT$$GT$5equal17h92678b0699189462E.exit": ; preds = %bb.b, %.lr.ph.i, %bb.c, %"_ZN5alloc3vec10partial_eq117_$LT$impl$u20$core..cmp..PartialEq$LT$alloc..vec..Vec$LT$U$C$A2$GT$$GT$$u20$for$u20$alloc..vec..Vec$LT$T$C$A1$GT$$GT$2eq17h5a70cfe5f9203f90E.exit.i.i.i", %bb.d, %_ZN4core3cmp9PartialEq2ne17hb053209c262ad649E.exit.i, %bb.a, %.preheader.split.i
  %.sroa.0.0.i = phi i1 [ false, %bb.a ], [ true, %.preheader.split.i ], [ false, %bb.c ], [ true, %bb.b ], [ false, %_ZN4core3cmp9PartialEq2ne17hb053209c262ad649E.exit.i ], [ false, %bb.d ], [ false, %.lr.ph.i ], [ false, %"_ZN5alloc3vec10partial_eq117_$LT$impl$u20$core..cmp..PartialEq$LT$alloc..vec..Vec$LT$U$C$A2$GT$$GT$$u20$for$u20$alloc..vec..Vec$LT$T$C$A1$GT$$GT$2eq17h5a70cfe5f9203f90E.exit.i.i.i" ]
  ret i1 %.sroa.0.0.i
}

; Function Attrs: inlinehint nofree norecurse nosync nounwind nonlazybind memory(read, inaccessiblemem: readwrite, target_mem: none) uwtable
define internal fastcc noundef zeroext i1 @"_ZN5alloc3vec10partial_eq117_$LT$impl$u20$core..cmp..PartialEq$LT$alloc..vec..Vec$LT$U$C$A2$GT$$GT$$u20$for$u20$alloc..vec..Vec$LT$T$C$A1$GT$$GT$2eq17h69b249c13c66e844E"(ptr nofree readonly captures(none) %.8.val, i64 %.16.val, ptr nofree readonly captures(none) %.8.val1, i64 %.16.val3) unnamed_addr #26 {
bb.a:
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.8.val), "nonnull"(ptr %.8.val1) ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !22462)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !22463)
  %.not.i = icmp eq i64 %.16.val, %.16.val3
  br i1 %.not.i, label %.preheader.split.i, label %"_ZN73_$LT$$u5b$A$u5d$$u20$as$u20$core..slice..cmp..SlicePartialEq$LT$B$GT$$GT$5equal17h6e0aafd2365d1aa1E.exit"

.preheader.split.i:                               ; preds = %bb.a
  %.not20.i = icmp eq i64 %.16.val, 0
  br i1 %.not20.i, label %"_ZN73_$LT$$u5b$A$u5d$$u20$as$u20$core..slice..cmp..SlicePartialEq$LT$B$GT$$GT$5equal17h6e0aafd2365d1aa1E.exit", label %.lr.ph.i

bb.b:                                             ; preds = %_ZN4core3cmp9PartialEq2ne17h7c987b1442c155f5E.exit.i
  %i.a = add nuw i64 %.sroa.01.09.i, 1            ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.a, %.16.val
  br i1 %exitcond.not.i, label %"_ZN73_$LT$$u5b$A$u5d$$u20$as$u20$core..slice..cmp..SlicePartialEq$LT$B$GT$$GT$5equal17h6e0aafd2365d1aa1E.exit", label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.preheader.split.i, %bb.b
  %.sroa.01.09.i = phi i64 [ %i.a, %bb.b ], [ 0, %.preheader.split.i ] ; 3 uses
  %i.b = getelementptr inbounds nuw [56 x i8], ptr %.8.val, i64 %.sroa.01.09.i ; 6 uses
  %i.c = getelementptr inbounds nuw [56 x i8], ptr %.8.val1, i64 %.sroa.01.09.i ; 6 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !22464)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !22465)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !22466)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !22467)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !22468)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !22469)
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.e = load i64, ptr %i.d, align 8, !range !25, !alias.scope !22470, !noundef !21
  %.not.i.i.i.i = icmp eq i64 %i.e, -9223372036854775808
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %i.g = load i64, ptr %i.f, align 8, !range !25, !alias.scope !22471, !noundef !21
  %i.h = icmp eq i64 %i.g, -9223372036854775808   ; 2 uses
  br i1 %.not.i.i.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %.lr.ph.i
  br i1 %i.h, label %"_ZN73_$LT$$u5b$A$u5d$$u20$as$u20$core..slice..cmp..SlicePartialEq$LT$B$GT$$GT$5equal17h6e0aafd2365d1aa1E.exit", label %bb.e

bb.d:                                             ; preds = %.lr.ph.i
  br i1 %i.h, label %bb.f, label %"_ZN73_$LT$$u5b$A$u5d$$u20$as$u20$core..slice..cmp..SlicePartialEq$LT$B$GT$$GT$5equal17h6e0aafd2365d1aa1E.exit"

bb.e:                                             ; preds = %bb.c
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  %.val7.i.i.i.i = load i64, ptr %i.i, align 8, !alias.scope !22470, !noundef !21 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  %.val9.i.i.i.i = load i64, ptr %i.j, align 8, !alias.scope !22471, !noundef !21
  %.not.i.i.i.i.i.i = icmp eq i64 %.val7.i.i.i.i, %.val9.i.i.i.i
  br i1 %.not.i.i.i.i.i.i, label %"_ZN5alloc3vec10partial_eq117_$LT$impl$u20$core..cmp..PartialEq$LT$alloc..vec..Vec$LT$U$C$A2$GT$$GT$$u20$for$u20$alloc..vec..Vec$LT$T$C$A1$GT$$GT$2eq17h5a70cfe5f9203f90E.exit.i.i.i.i", label %"_ZN73_$LT$$u5b$A$u5d$$u20$as$u20$core..slice..cmp..SlicePartialEq$LT$B$GT$$GT$5equal17h6e0aafd2365d1aa1E.exit"

"_ZN5alloc3vec10partial_eq117_$LT$impl$u20$core..cmp..PartialEq$LT$alloc..vec..Vec$LT$U$C$A2$GT$$GT$$u20$for$u20$alloc..vec..Vec$LT$T$C$A1$GT$$GT$2eq17h5a70cfe5f9203f90E.exit.i.i.i.i": ; preds = %bb.e
  %i.k = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %.val8.i.i.i.i = load ptr, ptr %i.k, align 8, !alias.scope !22471, !nonnull !21, !noundef !21
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %.val6.i.i.i.i = load ptr, ptr %i.l, align 8, !alias.scope !22470, !nonnull !21, !noundef !21
  %bcmp.i.i.i.i.i.i = tail call i32 @bcmp(ptr nonnull readonly align 1 %.val6.i.i.i.i, ptr nonnull readonly align 1 %.val8.i.i.i.i, i64 %.val7.i.i.i.i), !alias.scope !22472, !noalias !22473
  %i.m = icmp eq i32 %bcmp.i.i.i.i.i.i, 0
  br i1 %i.m, label %bb.f, label %"_ZN73_$LT$$u5b$A$u5d$$u20$as$u20$core..slice..cmp..SlicePartialEq$LT$B$GT$$GT$5equal17h6e0aafd2365d1aa1E.exit"

bb.f:                                             ; preds = %"_ZN5alloc3vec10partial_eq117_$LT$impl$u20$core..cmp..PartialEq$LT$alloc..vec..Vec$LT$U$C$A2$GT$$GT$$u20$for$u20$alloc..vec..Vec$LT$T$C$A1$GT$$GT$2eq17h5a70cfe5f9203f90E.exit.i.i.i.i", %bb.d
  %i.n = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %.val3.i.i.i.i = load i64, ptr %i.n, align 8, !alias.scope !22470, !noundef !21 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %.val5.i.i.i.i = load i64, ptr %i.o, align 8, !alias.scope !22471, !noundef !21
  %.not.i.i10.i.i.i.i = icmp eq i64 %.val3.i.i.i.i, %.val5.i.i.i.i
  br i1 %.not.i.i10.i.i.i.i, label %_ZN4core3cmp9PartialEq2ne17h7c987b1442c155f5E.exit.i, label %"_ZN73_$LT$$u5b$A$u5d$$u20$as$u20$core..slice..cmp..SlicePartialEq$LT$B$GT$$GT$5equal17h6e0aafd2365d1aa1E.exit"

_ZN4core3cmp9PartialEq2ne17h7c987b1442c155f5E.exit.i: ; preds = %bb.f
  %i.p = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %.val4.i.i.i.i = load ptr, ptr %i.p, align 8, !alias.scope !22471, !nonnull !21, !noundef !21
  %i.q = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.val.i.i.i.i = load ptr, ptr %i.q, align 8, !alias.scope !22470, !nonnull !21, !noundef !21
  %bcmp.i.i12.i.i.i.i = tail call i32 @bcmp(ptr nonnull readonly align 1 %.val.i.i.i.i, ptr nonnull readonly align 1 %.val4.i.i.i.i, i64 %.val3.i.i.i.i), !alias.scope !22474, !noalias !22473
  %i.r = icmp ne i32 %bcmp.i.i12.i.i.i.i, 0
  %i.s = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  %i.t = load i32, ptr %i.s, align 8, !alias.scope !22475
  %i.u = getelementptr inbounds nuw i8, ptr %i.c, i64 48
  %i.v = load i32, ptr %i.u, align 8, !alias.scope !22476
  %i.w = icmp ne i32 %i.t, %i.v
  %.sroa.0.0.i.i.i = select i1 %i.r, i1 true, i1 %i.w
  br i1 %.sroa.0.0.i.i.i, label %"_ZN73_$LT$$u5b$A$u5d$$u20$as$u20$core..slice..cmp..SlicePartialEq$LT$B$GT$$GT$5equal17h6e0aafd2365d1aa1E.exit", label %bb.b

"_ZN73_$LT$$u5b$A$u5d$$u20$as$u20$core..slice..cmp..SlicePartialEq$LT$B$GT$$GT$5equal17h6e0aafd2365d1aa1E.exit": ; preds = %bb.b, %bb.c, %bb.d, %bb.e, %"_ZN5alloc3vec10partial_eq117_$LT$impl$u20$core..cmp..PartialEq$LT$alloc..vec..Vec$LT$U$C$A2$GT$$GT$$u20$for$u20$alloc..vec..Vec$LT$T$C$A1$GT$$GT$2eq17h5a70cfe5f9203f90E.exit.i.i.i.i", %bb.f, %_ZN4core3cmp9PartialEq2ne17h7c987b1442c155f5E.exit.i, %bb.a, %.preheader.split.i
  %.sroa.0.0.i = phi i1 [ false, %bb.a ], [ true, %.preheader.split.i ], [ false, %bb.e ], [ true, %bb.b ], [ false, %_ZN4core3cmp9PartialEq2ne17h7c987b1442c155f5E.exit.i ], [ false, %bb.f ], [ false, %bb.c ], [ false, %bb.d ], [ false, %"_ZN5alloc3vec10partial_eq117_$LT$impl$u20$core..cmp..PartialEq$LT$alloc..vec..Vec$LT$U$C$A2$GT$$GT$$u20$for$u20$alloc..vec..Vec$LT$T$C$A1$GT$$GT$2eq17h5a70cfe5f9203f90E.exit.i.i.i.i" ]
  ret i1 %.sroa.0.0.i
}

; Function Attrs: inlinehint nofree norecurse nosync nounwind nonlazybind memory(read, inaccessiblemem: readwrite, target_mem: none) uwtable
define internal fastcc noundef zeroext i1 @"_ZN5alloc3vec10partial_eq117_$LT$impl$u20$core..cmp..PartialEq$LT$alloc..vec..Vec$LT$U$C$A2$GT$$GT$$u20$for$u20$alloc..vec..Vec$LT$T$C$A1$GT$$GT$2eq17h6dfee67475506807E"(ptr nofree readonly captures(none) %.8.val, i64 %.16.val, ptr nofree readonly captures(none) %.8.val1, i64 %.16.val3) unnamed_addr #26 {
bb.a:
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.8.val), "nonnull"(ptr %.8.val1) ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !22483)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !22484)
  %.not.i = icmp eq i64 %.16.val, %.16.val3
  br i1 %.not.i, label %.preheader.split.i, label %"_ZN73_$LT$$u5b$A$u5d$$u20$as$u20$core..slice..cmp..SlicePartialEq$LT$B$GT$$GT$5equal17h494d6567cf8bda05E.exit"

.preheader.split.i:                               ; preds = %bb.a
  %.not16.i = icmp eq i64 %.16.val, 0
  br i1 %.not16.i, label %"_ZN73_$LT$$u5b$A$u5d$$u20$as$u20$core..slice..cmp..SlicePartialEq$LT$B$GT$$GT$5equal17h494d6567cf8bda05E.exit", label %.lr.ph.i

bb.b:                                             ; preds = %_ZN4core3cmp9PartialEq2ne17hbe4cb7e26b86de13E.exit.i
  %i.a = add nuw i64 %.sroa.01.012.i, 1           ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.a, %.16.val
  br i1 %exitcond.not.i, label %"_ZN73_$LT$$u5b$A$u5d$$u20$as$u20$core..slice..cmp..SlicePartialEq$LT$B$GT$$GT$5equal17h494d6567cf8bda05E.exit", label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.preheader.split.i, %bb.b
  %.sroa.01.012.i = phi i64 [ %i.a, %bb.b ], [ 0, %.preheader.split.i ] ; 3 uses
  %i.b = getelementptr inbounds nuw [24 x i8], ptr %.8.val, i64 %.sroa.01.012.i ; 2 uses
  %i.c = getelementptr inbounds nuw [24 x i8], ptr %.8.val1, i64 %.sroa.01.012.i ; 2 uses
  %i.d = getelementptr i8, ptr %i.b, i64 16
  %.val6.i = load i64, ptr %i.d, align 8, !alias.scope !22483, !noundef !21 ; 2 uses
  %i.e = getelementptr i8, ptr %i.c, i64 16
  %.val8.i = load i64, ptr %i.e, align 8, !alias.scope !22484, !noundef !21
  %.not.i.i.i.i.i = icmp eq i64 %.val6.i, %.val8.i
  br i1 %.not.i.i.i.i.i, label %_ZN4core3cmp9PartialEq2ne17hbe4cb7e26b86de13E.exit.i, label %"_ZN73_$LT$$u5b$A$u5d$$u20$as$u20$core..slice..cmp..SlicePartialEq$LT$B$GT$$GT$5equal17h494d6567cf8bda05E.exit"

_ZN4core3cmp9PartialEq2ne17hbe4cb7e26b86de13E.exit.i: ; preds = %.lr.ph.i
  %i.f = getelementptr i8, ptr %i.c, i64 8
  %.val7.i = load ptr, ptr %i.f, align 8, !alias.scope !22484, !nonnull !21, !noundef !21
  %i.g = getelementptr i8, ptr %i.b, i64 8
  %.val.i = load ptr, ptr %i.g, align 8, !alias.scope !22483, !nonnull !21, !noundef !21
  %bcmp.i.i.i.i.i = tail call i32 @bcmp(ptr nonnull readonly align 1 %.val.i, ptr nonnull readonly align 1 %.val7.i, i64 %.val6.i), !alias.scope !22485, !noalias !22486
  %.not10.i = icmp eq i32 %bcmp.i.i.i.i.i, 0
  br i1 %.not10.i, label %bb.b, label %"_ZN73_$LT$$u5b$A$u5d$$u20$as$u20$core..slice..cmp..SlicePartialEq$LT$B$GT$$GT$5equal17h494d6567cf8bda05E.exit"

"_ZN73_$LT$$u5b$A$u5d$$u20$as$u20$core..slice..cmp..SlicePartialEq$LT$B$GT$$GT$5equal17h494d6567cf8bda05E.exit": ; preds = %bb.b, %.lr.ph.i, %_ZN4core3cmp9PartialEq2ne17hbe4cb7e26b86de13E.exit.i, %bb.a, %.preheader.split.i
  %.sroa.0.0.i = phi i1 [ false, %bb.a ], [ true, %.preheader.split.i ], [ false, %.lr.ph.i ], [ true, %bb.b ], [ false, %_ZN4core3cmp9PartialEq2ne17hbe4cb7e26b86de13E.exit.i ]
  ret i1 %.sroa.0.0.i
}

; Function Attrs: inlinehint nofree norecurse nosync nounwind nonlazybind memory(read, inaccessiblemem: readwrite, target_mem: none) uwtable
define internal fastcc noundef zeroext i1 @"_ZN5alloc3vec10partial_eq117_$LT$impl$u20$core..cmp..PartialEq$LT$alloc..vec..Vec$LT$U$C$A2$GT$$GT$$u20$for$u20$alloc..vec..Vec$LT$T$C$A1$GT$$GT$2eq17hb54e4a5f71b413aeE"(ptr nofree readonly captures(none) %.8.val, i64 %.16.val, ptr nofree readonly captures(none) %.8.val1, i64 %.16.val3) unnamed_addr #26 {
bb.a:
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.8.val), "nonnull"(ptr %.8.val1) ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !22496)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !22497)
  %.not.i = icmp eq i64 %.16.val, %.16.val3
  br i1 %.not.i, label %.preheader.split.i, label %"_ZN73_$LT$$u5b$A$u5d$$u20$as$u20$core..slice..cmp..SlicePartialEq$LT$B$GT$$GT$5equal17h1d5e4888cbc553d3E.exit"

.preheader.split.i:                               ; preds = %bb.a
  %.not19.i = icmp eq i64 %.16.val, 0
  br i1 %.not19.i, label %"_ZN73_$LT$$u5b$A$u5d$$u20$as$u20$core..slice..cmp..SlicePartialEq$LT$B$GT$$GT$5equal17h1d5e4888cbc553d3E.exit", label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.preheader.split.i, %_ZN4core3cmp9PartialEq2ne17h3586ff9d40af51efE.exit.thread7.i
  %.sroa.01.011.i = phi i64 [ %i.l, %_ZN4core3cmp9PartialEq2ne17h3586ff9d40af51efE.exit.thread7.i ], [ 0, %.preheader.split.i ] ; 3 uses
  %i.a = getelementptr inbounds nuw [32 x i8], ptr %.8.val, i64 %.sroa.01.011.i ; 4 uses
  %i.b = getelementptr inbounds nuw [32 x i8], ptr %.8.val1, i64 %.sroa.01.011.i ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !22498)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !22499)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !22500)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !22501)
  %i.c = load i64, ptr %i.a, align 8, !range !90, !alias.scope !22502, !noundef !21 ; 2 uses
  %i.d = load i64, ptr %i.b, align 8, !range !90, !alias.scope !22503, !noundef !21
  %i.e = icmp eq i64 %i.c, %i.d
  br i1 %i.e, label %bb.b, label %"_ZN73_$LT$$u5b$A$u5d$$u20$as$u20$core..slice..cmp..SlicePartialEq$LT$B$GT$$GT$5equal17h1d5e4888cbc553d3E.exit"

bb.b:                                             ; preds = %.lr.ph.i
  switch i64 %i.c, label %_ZN4core3cmp9PartialEq2ne17h3586ff9d40af51efE.exit.thread7.i [
    i64 8, label %bb.c
    i64 9, label %bb.d
  ]

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %.val6.i.i.i = load i64, ptr %i.f, align 8, !alias.scope !22502, !noundef !21 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %.val8.i.i.i = load i64, ptr %i.g, align 8, !alias.scope !22503, !noundef !21
  %.not.i.i.i.i.i = icmp eq i64 %.val6.i.i.i, %.val8.i.i.i
  br i1 %.not.i.i.i.i.i, label %_ZN4core3cmp9PartialEq2ne17h3586ff9d40af51efE.exit.i, label %"_ZN73_$LT$$u5b$A$u5d$$u20$as$u20$core..slice..cmp..SlicePartialEq$LT$B$GT$$GT$5equal17h1d5e4888cbc553d3E.exit"

bb.d:                                             ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %.val2.i.i.i = load i64, ptr %i.h, align 8, !alias.scope !22502, !noundef !21 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %.val4.i.i.i = load i64, ptr %i.i, align 8, !alias.scope !22503, !noundef !21
  %.not.i.i9.i.i.i = icmp eq i64 %.val2.i.i.i, %.val4.i.i.i
  br i1 %.not.i.i9.i.i.i, label %_ZN4core3cmp9PartialEq2ne17h3586ff9d40af51efE.exit.i, label %"_ZN73_$LT$$u5b$A$u5d$$u20$as$u20$core..slice..cmp..SlicePartialEq$LT$B$GT$$GT$5equal17h1d5e4888cbc553d3E.exit"

_ZN4core3cmp9PartialEq2ne17h3586ff9d40af51efE.exit.i: ; preds = %bb.d, %bb.c
  %.val2.sink.i.i.i = phi i64 [ %.val6.i.i.i, %bb.c ], [ %.val2.i.i.i, %bb.d ]
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %.val3.i.i.i = load ptr, ptr %i.j, align 8, !alias.scope !22503, !nonnull !21, !noundef !21
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %.val.i.i.i = load ptr, ptr %i.k, align 8, !alias.scope !22502, !nonnull !21, !noundef !21
  %bcmp.i.i11.i.i.i = tail call i32 @bcmp(ptr nonnull readonly align 1 %.val.i.i.i, ptr nonnull readonly align 1 %.val3.i.i.i, i64 %.val2.sink.i.i.i), !noalias !22504
  %.not9.i = icmp eq i32 %bcmp.i.i11.i.i.i, 0
  br i1 %.not9.i, label %_ZN4core3cmp9PartialEq2ne17h3586ff9d40af51efE.exit.thread7.i, label %"_ZN73_$LT$$u5b$A$u5d$$u20$as$u20$core..slice..cmp..SlicePartialEq$LT$B$GT$$GT$5equal17h1d5e4888cbc553d3E.exit"

_ZN4core3cmp9PartialEq2ne17h3586ff9d40af51efE.exit.thread7.i: ; preds = %_ZN4core3cmp9PartialEq2ne17h3586ff9d40af51efE.exit.i, %bb.b
  %i.l = add nuw i64 %.sroa.01.011.i, 1           ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.l, %.16.val
  br i1 %exitcond.not.i, label %"_ZN73_$LT$$u5b$A$u5d$$u20$as$u20$core..slice..cmp..SlicePartialEq$LT$B$GT$$GT$5equal17h1d5e4888cbc553d3E.exit", label %.lr.ph.i

"_ZN73_$LT$$u5b$A$u5d$$u20$as$u20$core..slice..cmp..SlicePartialEq$LT$B$GT$$GT$5equal17h1d5e4888cbc553d3E.exit": ; preds = %.lr.ph.i, %bb.c, %bb.d, %_ZN4core3cmp9PartialEq2ne17h3586ff9d40af51efE.exit.i, %_ZN4core3cmp9PartialEq2ne17h3586ff9d40af51efE.exit.thread7.i, %bb.a, %.preheader.split.i
  %.sroa.0.0.i = phi i1 [ false, %bb.a ], [ true, %.preheader.split.i ], [ false, %bb.d ], [ true, %_ZN4core3cmp9PartialEq2ne17h3586ff9d40af51efE.exit.thread7.i ], [ false, %_ZN4core3cmp9PartialEq2ne17h3586ff9d40af51efE.exit.i ], [ false, %.lr.ph.i ], [ false, %bb.c ]
  ret i1 %.sroa.0.0.i
}

; Function Attrs: inlinehint nofree norecurse nosync nounwind nonlazybind memory(read, inaccessiblemem: readwrite, target_mem: none) uwtable
define internal fastcc noundef zeroext i1 @"_ZN5alloc3vec10partial_eq117_$LT$impl$u20$core..cmp..PartialEq$LT$alloc..vec..Vec$LT$U$C$A2$GT$$GT$$u20$for$u20$alloc..vec..Vec$LT$T$C$A1$GT$$GT$2eq17hc1a92d777e55ed8dE"(ptr nofree readonly captures(none) %.8.val, i64 %.16.val, ptr nofree readonly captures(none) %.8.val1, i64 %.16.val3) unnamed_addr #26 {
bb.a:
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.8.val), "nonnull"(ptr %.8.val1) ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !22520)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !22521)
  %.not.i = icmp eq i64 %.16.val, %.16.val3
  br i1 %.not.i, label %.preheader.split.i, label %"_ZN73_$LT$$u5b$A$u5d$$u20$as$u20$core..slice..cmp..SlicePartialEq$LT$B$GT$$GT$5equal17h9ded28f068bd26afE.exit"

.preheader.split.i:                               ; preds = %bb.a
  %.not16.i = icmp eq i64 %.16.val, 0
  br i1 %.not16.i, label %"_ZN73_$LT$$u5b$A$u5d$$u20$as$u20$core..slice..cmp..SlicePartialEq$LT$B$GT$$GT$5equal17h9ded28f068bd26afE.exit", label %.lr.ph.i

bb.b:                                             ; preds = %_ZN4core3cmp9PartialEq2ne17h08a8426a5ec52a2eE.exit.i
  %i.a = add nuw i64 %.sroa.01.09.i, 1            ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.a, %.16.val
  br i1 %exitcond.not.i, label %"_ZN73_$LT$$u5b$A$u5d$$u20$as$u20$core..slice..cmp..SlicePartialEq$LT$B$GT$$GT$5equal17h9ded28f068bd26afE.exit", label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.preheader.split.i, %bb.b
  %.sroa.01.09.i = phi i64 [ %i.a, %bb.b ], [ 0, %.preheader.split.i ] ; 3 uses
  %i.b = getelementptr inbounds nuw [48 x i8], ptr %.8.val, i64 %.sroa.01.09.i ; 4 uses
  %i.c = getelementptr inbounds nuw [48 x i8], ptr %.8.val1, i64 %.sroa.01.09.i ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !22522)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !22523)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !22524)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !22525)
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %.val5.i.i.i = load i64, ptr %i.d, align 8, !alias.scope !22526, !noundef !21 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %.val7.i.i.i = load i64, ptr %i.e, align 8, !alias.scope !22527, !noundef !21
  %.not.i.i.i.i.i = icmp eq i64 %.val5.i.i.i, %.val7.i.i.i
  br i1 %.not.i.i.i.i.i, label %"_ZN5alloc3vec10partial_eq117_$LT$impl$u20$core..cmp..PartialEq$LT$alloc..vec..Vec$LT$U$C$A2$GT$$GT$$u20$for$u20$alloc..vec..Vec$LT$T$C$A1$GT$$GT$2eq17h5a70cfe5f9203f90E.exit.i.i.i", label %"_ZN73_$LT$$u5b$A$u5d$$u20$as$u20$core..slice..cmp..SlicePartialEq$LT$B$GT$$GT$5equal17h9ded28f068bd26afE.exit"

"_ZN5alloc3vec10partial_eq117_$LT$impl$u20$core..cmp..PartialEq$LT$alloc..vec..Vec$LT$U$C$A2$GT$$GT$$u20$for$u20$alloc..vec..Vec$LT$T$C$A1$GT$$GT$2eq17h5a70cfe5f9203f90E.exit.i.i.i": ; preds = %.lr.ph.i
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %.val6.i.i.i = load ptr, ptr %i.f, align 8, !alias.scope !22527, !nonnull !21, !noundef !21
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.val4.i.i.i = load ptr, ptr %i.g, align 8, !alias.scope !22526, !nonnull !21, !noundef !21
  %bcmp.i.i.i.i.i = tail call i32 @bcmp(ptr nonnull readonly align 1 %.val4.i.i.i, ptr nonnull readonly align 1 %.val6.i.i.i, i64 %.val5.i.i.i), !alias.scope !22528, !noalias !22529
  %i.h = icmp eq i32 %bcmp.i.i.i.i.i, 0
  br i1 %i.h, label %bb.c, label %"_ZN73_$LT$$u5b$A$u5d$$u20$as$u20$core..slice..cmp..SlicePartialEq$LT$B$GT$$GT$5equal17h9ded28f068bd26afE.exit"

bb.c:                                             ; preds = %"_ZN5alloc3vec10partial_eq117_$LT$impl$u20$core..cmp..PartialEq$LT$alloc..vec..Vec$LT$U$C$A2$GT$$GT$$u20$for$u20$alloc..vec..Vec$LT$T$C$A1$GT$$GT$2eq17h5a70cfe5f9203f90E.exit.i.i.i"
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  %.val1.i.i.i = load i64, ptr %i.i, align 8, !alias.scope !22526, !noundef !21 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  %.val3.i.i.i = load i64, ptr %i.j, align 8, !alias.scope !22527, !noundef !21
  %.not.i.i8.i.i.i = icmp eq i64 %.val1.i.i.i, %.val3.i.i.i
  br i1 %.not.i.i8.i.i.i, label %_ZN4core3cmp9PartialEq2ne17h08a8426a5ec52a2eE.exit.i, label %"_ZN73_$LT$$u5b$A$u5d$$u20$as$u20$core..slice..cmp..SlicePartialEq$LT$B$GT$$GT$5equal17h9ded28f068bd26afE.exit"

_ZN4core3cmp9PartialEq2ne17h08a8426a5ec52a2eE.exit.i: ; preds = %bb.c
  %i.k = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %.val2.i.i.i = load ptr, ptr %i.k, align 8, !alias.scope !22527, !nonnull !21, !noundef !21
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %.val.i.i.i = load ptr, ptr %i.l, align 8, !alias.scope !22526, !nonnull !21, !noundef !21
  %bcmp.i.i10.i.i.i = tail call i32 @bcmp(ptr nonnull readonly align 1 %.val.i.i.i, ptr nonnull readonly align 1 %.val2.i.i.i, i64 %.val1.i.i.i), !alias.scope !22530, !noalias !22529
  %.not7.i = icmp eq i32 %bcmp.i.i10.i.i.i, 0
  br i1 %.not7.i, label %bb.b, label %"_ZN73_$LT$$u5b$A$u5d$$u20$as$u20$core..slice..cmp..SlicePartialEq$LT$B$GT$$GT$5equal17h9ded28f068bd26afE.exit"

"_ZN73_$LT$$u5b$A$u5d$$u20$as$u20$core..slice..cmp..SlicePartialEq$LT$B$GT$$GT$5equal17h9ded28f068bd26afE.exit": ; preds = %bb.b, %.lr.ph.i, %"_ZN5alloc3vec10partial_eq117_$LT$impl$u20$core..cmp..PartialEq$LT$alloc..vec..Vec$LT$U$C$A2$GT$$GT$$u20$for$u20$alloc..vec..Vec$LT$T$C$A1$GT$$GT$2eq17h5a70cfe5f9203f90E.exit.i.i.i", %bb.c, %_ZN4core3cmp9PartialEq2ne17h08a8426a5ec52a2eE.exit.i, %bb.a, %.preheader.split.i
  %.sroa.0.0.i = phi i1 [ false, %bb.a ], [ true, %.preheader.split.i ], [ false, %.lr.ph.i ], [ true, %bb.b ], [ false, %_ZN4core3cmp9PartialEq2ne17h08a8426a5ec52a2eE.exit.i ], [ false, %bb.c ], [ false, %"_ZN5alloc3vec10partial_eq117_$LT$impl$u20$core..cmp..PartialEq$LT$alloc..vec..Vec$LT$U$C$A2$GT$$GT$$u20$for$u20$alloc..vec..Vec$LT$T$C$A1$GT$$GT$2eq17h5a70cfe5f9203f90E.exit.i.i.i" ]
  ret i1 %.sroa.0.0.i
}

; Function Attrs: inlinehint nofree norecurse nosync nounwind nonlazybind memory(read, inaccessiblemem: readwrite, target_mem: none) uwtable
define internal fastcc noundef zeroext i1 @"_ZN5alloc3vec10partial_eq117_$LT$impl$u20$core..cmp..PartialEq$LT$alloc..vec..Vec$LT$U$C$A2$GT$$GT$$u20$for$u20$alloc..vec..Vec$LT$T$C$A1$GT$$GT$2eq17hdfd485f3900883c7E"(ptr nofree readonly captures(none) %.8.val, i64 %.16.val, ptr nofree readonly captures(none) %.8.val1, i64 %.16.val3) unnamed_addr #26 {
bb.a:
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.8.val), "nonnull"(ptr %.8.val1) ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !22549)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !22550)
  %.not.i = icmp eq i64 %.16.val, %.16.val3
  br i1 %.not.i, label %.preheader.split.i, label %"_ZN73_$LT$$u5b$A$u5d$$u20$as$u20$core..slice..cmp..SlicePartialEq$LT$B$GT$$GT$5equal17ha0a11ac88eaf5f93E.exit"

.preheader.split.i:                               ; preds = %bb.a
  %.not15.i = icmp eq i64 %.16.val, 0
  br i1 %.not15.i, label %"_ZN73_$LT$$u5b$A$u5d$$u20$as$u20$core..slice..cmp..SlicePartialEq$LT$B$GT$$GT$5equal17ha0a11ac88eaf5f93E.exit", label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.preheader.split.i, %_ZN4core3cmp9PartialEq2ne17he1b72387c24d3d18E.exit.i
  %.sroa.01.011.i = phi i64 [ %i.u, %_ZN4core3cmp9PartialEq2ne17he1b72387c24d3d18E.exit.i ], [ 0, %.preheader.split.i ] ; 3 uses
  %i.a = getelementptr inbounds nuw [48 x i8], ptr %.8.val, i64 %.sroa.01.011.i ; 4 uses
  %i.b = getelementptr inbounds nuw [48 x i8], ptr %.8.val1, i64 %.sroa.01.011.i ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !22551)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !22552)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !22553)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !22554)
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.val.i.i.i = load ptr, ptr %i.c, align 8, !alias.scope !22555, !nonnull !21, !noundef !21
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %.val1.i.i.i = load i64, ptr %i.d, align 8, !alias.scope !22555, !noundef !21 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.val2.i.i.i = load ptr, ptr %i.e, align 8, !alias.scope !22556, !nonnull !21, !noundef !21
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %.val3.i.i.i = load i64, ptr %i.f, align 8, !alias.scope !22556, !noundef !21
  tail call void @llvm.experimental.noalias.scope.decl(metadata !22557)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !22558)
  %.not.i.i.i.i.i = icmp eq i64 %.val1.i.i.i, %.val3.i.i.i
  br i1 %.not.i.i.i.i.i, label %.preheader.split.i.i.i.i.i, label %"_ZN73_$LT$$u5b$A$u5d$$u20$as$u20$core..slice..cmp..SlicePartialEq$LT$B$GT$$GT$5equal17ha0a11ac88eaf5f93E.exit"

.preheader.split.i.i.i.i.i:                       ; preds = %.lr.ph.i
  %.not16.i.i.i.i.i = icmp eq i64 %.val1.i.i.i, 0
  br i1 %.not16.i.i.i.i.i, label %"_ZN5alloc3vec10partial_eq117_$LT$impl$u20$core..cmp..PartialEq$LT$alloc..vec..Vec$LT$U$C$A2$GT$$GT$$u20$for$u20$alloc..vec..Vec$LT$T$C$A1$GT$$GT$2eq17h6dfee67475506807E.exit.i.i.i", label %.lr.ph.i.i.i.i.i

bb.b:                                             ; preds = %_ZN4core3cmp9PartialEq2ne17hbe4cb7e26b86de13E.exit.i.i.i.i.i
  %i.g = add nuw i64 %.sroa.01.012.i.i.i.i.i, 1   ; 2 uses
  %exitcond.not.i.i.i.i.i = icmp eq i64 %i.g, %.val1.i.i.i
  br i1 %exitcond.not.i.i.i.i.i, label %"_ZN5alloc3vec10partial_eq117_$LT$impl$u20$core..cmp..PartialEq$LT$alloc..vec..Vec$LT$U$C$A2$GT$$GT$$u20$for$u20$alloc..vec..Vec$LT$T$C$A1$GT$$GT$2eq17h6dfee67475506807E.exit.i.i.i", label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.preheader.split.i.i.i.i.i, %bb.b
  %.sroa.01.012.i.i.i.i.i = phi i64 [ %i.g, %bb.b ], [ 0, %.preheader.split.i.i.i.i.i ] ; 3 uses
  %i.h = getelementptr inbounds nuw [24 x i8], ptr %.val.i.i.i, i64 %.sroa.01.012.i.i.i.i.i ; 2 uses
  %i.i = getelementptr inbounds nuw [24 x i8], ptr %.val2.i.i.i, i64 %.sroa.01.012.i.i.i.i.i ; 2 uses
  %i.j = getelementptr i8, ptr %i.h, i64 16
  %.val6.i.i.i.i.i = load i64, ptr %i.j, align 8, !alias.scope !22557, !noalias !22559, !noundef !21 ; 2 uses
  %i.k = getelementptr i8, ptr %i.i, i64 16
  %.val8.i.i.i.i.i = load i64, ptr %i.k, align 8, !alias.scope !22558, !noalias !22559, !noundef !21
  %.not.i.i.i.i.i.i.i.i.i = icmp eq i64 %.val6.i.i.i.i.i, %.val8.i.i.i.i.i
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %_ZN4core3cmp9PartialEq2ne17hbe4cb7e26b86de13E.exit.i.i.i.i.i, label %"_ZN73_$LT$$u5b$A$u5d$$u20$as$u20$core..slice..cmp..SlicePartialEq$LT$B$GT$$GT$5equal17ha0a11ac88eaf5f93E.exit"

_ZN4core3cmp9PartialEq2ne17hbe4cb7e26b86de13E.exit.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i
  %i.l = getelementptr i8, ptr %i.i, i64 8
  %.val7.i.i.i.i.i = load ptr, ptr %i.l, align 8, !alias.scope !22558, !noalias !22559, !nonnull !21, !noundef !21
  %i.m = getelementptr i8, ptr %i.h, i64 8
  %.val.i.i.i.i.i = load ptr, ptr %i.m, align 8, !alias.scope !22557, !noalias !22559, !nonnull !21, !noundef !21
  %bcmp.i.i.i.i.i.i.i.i.i = tail call i32 @bcmp(ptr nonnull readonly align 1 %.val.i.i.i.i.i, ptr nonnull readonly align 1 %.val7.i.i.i.i.i, i64 %.val6.i.i.i.i.i), !alias.scope !22560, !noalias !22561
  %.not10.i.i.i.i.i = icmp eq i32 %bcmp.i.i.i.i.i.i.i.i.i, 0
  br i1 %.not10.i.i.i.i.i, label %bb.b, label %"_ZN73_$LT$$u5b$A$u5d$$u20$as$u20$core..slice..cmp..SlicePartialEq$LT$B$GT$$GT$5equal17ha0a11ac88eaf5f93E.exit"

"_ZN5alloc3vec10partial_eq117_$LT$impl$u20$core..cmp..PartialEq$LT$alloc..vec..Vec$LT$U$C$A2$GT$$GT$$u20$for$u20$alloc..vec..Vec$LT$T$C$A1$GT$$GT$2eq17h6dfee67475506807E.exit.i.i.i": ; preds = %bb.b, %.preheader.split.i.i.i.i.i
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %.val4.i.i.i = load ptr, ptr %i.n, align 8, !alias.scope !22555, !nonnull !21, !noundef !21
  %i.o = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  %.val5.i.i.i = load i64, ptr %i.o, align 8, !alias.scope !22555, !noundef !21 ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %.val6.i.i.i = load ptr, ptr %i.p, align 8, !alias.scope !22556, !nonnull !21, !noundef !21
  %i.q = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  %.val7.i.i.i = load i64, ptr %i.q, align 8, !alias.scope !22556, !noundef !21
  tail call void @llvm.experimental.noalias.scope.decl(metadata !22562)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !22563)
  %.not.i.i8.i.i.i = icmp eq i64 %.val5.i.i.i, %.val7.i.i.i
  br i1 %.not.i.i8.i.i.i, label %.preheader.split.i.i10.i.i.i, label %"_ZN73_$LT$$u5b$A$u5d$$u20$as$u20$core..slice..cmp..SlicePartialEq$LT$B$GT$$GT$5equal17ha0a11ac88eaf5f93E.exit"

.preheader.split.i.i10.i.i.i:                     ; preds = %"_ZN5alloc3vec10partial_eq117_$LT$impl$u20$core..cmp..PartialEq$LT$alloc..vec..Vec$LT$U$C$A2$GT$$GT$$u20$for$u20$alloc..vec..Vec$LT$T$C$A1$GT$$GT$2eq17h6dfee67475506807E.exit.i.i.i"
  %.not12.i.i.i.i.i = icmp eq i64 %.val5.i.i.i, 0
  br i1 %.not12.i.i.i.i.i, label %_ZN4core3cmp9PartialEq2ne17he1b72387c24d3d18E.exit.i, label %.lr.ph.i.i11.i.i.i

bb.c:                                             ; preds = %.lr.ph.i.i11.i.i.i
  %i.r = add nuw i64 %.sroa.01.09.i.i.i.i.i, 1    ; 2 uses
  %exitcond.not.i.i14.i.i.i = icmp eq i64 %i.r, %.val5.i.i.i
  br i1 %exitcond.not.i.i14.i.i.i, label %_ZN4core3cmp9PartialEq2ne17he1b72387c24d3d18E.exit.i, label %.lr.ph.i.i11.i.i.i

.lr.ph.i.i11.i.i.i:                               ; preds = %.preheader.split.i.i10.i.i.i, %bb.c
  %.sroa.01.09.i.i.i.i.i = phi i64 [ %i.r, %bb.c ], [ 0, %.preheader.split.i.i10.i.i.i ] ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %.val4.i.i.i, i64 %.sroa.01.09.i.i.i.i.i
  %i.t = getelementptr inbounds nuw i8, ptr %.val6.i.i.i, i64 %.sroa.01.09.i.i.i.i.i
  %.val.i.i12.i.i.i = load i8, ptr %i.s, align 1, !range !80, !alias.scope !22562, !noalias !22559, !noundef !21
  %.val6.i.i13.i.i.i = load i8, ptr %i.t, align 1, !range !80, !alias.scope !22563, !noalias !22559, !noundef !21
  %.not7.i.i.i.not.i.i = icmp eq i8 %.val.i.i12.i.i.i, %.val6.i.i13.i.i.i
  br i1 %.not7.i.i.i.not.i.i, label %bb.c, label %"_ZN73_$LT$$u5b$A$u5d$$u20$as$u20$core..slice..cmp..SlicePartialEq$LT$B$GT$$GT$5equal17ha0a11ac88eaf5f93E.exit"

_ZN4core3cmp9PartialEq2ne17he1b72387c24d3d18E.exit.i: ; preds = %bb.c, %.preheader.split.i.i10.i.i.i
  %i.u = add nuw i64 %.sroa.01.011.i, 1           ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.u, %.16.val
  br i1 %exitcond.not.i, label %"_ZN73_$LT$$u5b$A$u5d$$u20$as$u20$core..slice..cmp..SlicePartialEq$LT$B$GT$$GT$5equal17ha0a11ac88eaf5f93E.exit", label %.lr.ph.i

"_ZN73_$LT$$u5b$A$u5d$$u20$as$u20$core..slice..cmp..SlicePartialEq$LT$B$GT$$GT$5equal17ha0a11ac88eaf5f93E.exit": ; preds = %.lr.ph.i, %"_ZN5alloc3vec10partial_eq117_$LT$impl$u20$core..cmp..PartialEq$LT$alloc..vec..Vec$LT$U$C$A2$GT$$GT$$u20$for$u20$alloc..vec..Vec$LT$T$C$A1$GT$$GT$2eq17h6dfee67475506807E.exit.i.i.i", %_ZN4core3cmp9PartialEq2ne17he1b72387c24d3d18E.exit.i, %.lr.ph.i.i.i.i.i, %_ZN4core3cmp9PartialEq2ne17hbe4cb7e26b86de13E.exit.i.i.i.i.i, %.lr.ph.i.i11.i.i.i, %bb.a, %.preheader.split.i
  %.sroa.0.0.i = phi i1 [ false, %bb.a ], [ false, %.lr.ph.i.i.i.i.i ], [ true, %.preheader.split.i ], [ false, %.lr.ph.i.i11.i.i.i ], [ false, %_ZN4core3cmp9PartialEq2ne17hbe4cb7e26b86de13E.exit.i.i.i.i.i ], [ true, %_ZN4core3cmp9PartialEq2ne17he1b72387c24d3d18E.exit.i ], [ false, %"_ZN5alloc3vec10partial_eq117_$LT$impl$u20$core..cmp..PartialEq$LT$alloc..vec..Vec$LT$U$C$A2$GT$$GT$$u20$for$u20$alloc..vec..Vec$LT$T$C$A1$GT$$GT$2eq17h6dfee67475506807E.exit.i.i.i" ], [ false, %.lr.ph.i ]
  ret i1 %.sroa.0.0.i
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @"_ZN5alloc3vec16Vec$LT$T$C$A$GT$14extend_trusted17hb5d312ac5b9f5ba2E"(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(24) %0, ptr noundef nonnull %1, ptr noundef nonnull %2) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [752 x i8], align 8               ; 4 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %.sroa.013 = alloca [776 x i8], align 8         ; 3 uses
  %i.c = ptrtoint ptr %2 to i64
  %i.d = ptrtoint ptr %1 to i64
  %i.e = sub nuw i64 %i.c, %i.d
  %i.f = udiv exact i64 %i.e, 784                 ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  %i.h = load i64, ptr %i.g, align 8, !alias.scope !22584, !noundef !21 ; 2 uses
  %i.i = load i64, ptr %0, align 8, !range !22, !alias.scope !22584, !noundef !21
  %i.j = sub i64 %i.i, %i.h
  %i.k = icmp ugt i64 %i.f, %i.j
  br i1 %i.k, label %bb.b, label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17hccac67c279767168E.exit", !prof !23

bb.b:                                             ; preds = %bb.a
  tail call fastcc void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$7reserve21do_reserve_and_handle17h45307a5a03ebcc73E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %i.h, i64 noundef %i.f, i64 noundef 8, i64 noundef 784)
  br label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17hccac67c279767168E.exit"

"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17hccac67c279767168E.exit": ; preds = %bb.a, %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.m = load ptr, ptr %i.l, align 8, !nonnull !21, !noundef !21
  %i.n = icmp eq ptr %1, %2
  br i1 %i.n, label %"_ZN104_$LT$core..iter..adapters..cloned..Cloned$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold17ha54e492785fff6d7E.exit", label %.preheader

.preheader:                                       ; preds = %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17hccac67c279767168E.exit"
  %i.o = load i64, ptr %i.g, align 8, !noundef !21
  %.sroa.013.752..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.013, i64 752
  br label %bb.d

bb.c:                                             ; preds = %bb.d
  %i.p = landingpad { ptr, i32 }
          cleanup
  br label %bb.i

bb.d:                                             ; preds = %.preheader, %bb.g
  %.sroa.6.0 = phi i64 [ %i.y, %bb.g ], [ %i.o, %.preheader ] ; 3 uses
  %.sroa.06.0.i.i = phi i64 [ %i.z, %bb.g ], [ 0, %.preheader ] ; 2 uses
  %i.q = getelementptr inbounds nuw [784 x i8], ptr %1, i64 %.sroa.06.0.i.i ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !22585)
  call void @llvm.experimental.noalias.scope.decl(metadata !22586), !noalias !22587
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 776
  %i.s = load i64, ptr %i.r, align 8, !alias.scope !22588, !noalias !22587, !noundef !21
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !22589
  %i.t = getelementptr inbounds nuw i8, ptr %i.q, i64 752
  invoke void @"_ZN60_$LT$alloc..string..String$u20$as$u20$core..clone..Clone$GT$5clone17h123bb51dd192bfa5E"(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.b, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.t, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1183)
          to label %.noexc unwind label %bb.c, !inline_history !22576

.noexc:                                           ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !22589
  invoke fastcc void @"_ZN70_$LT$utoipa..openapi..RefOr$LT$T$GT$$u20$as$u20$core..clone..Clone$GT$5clone17hcf725460aba8e409E"(ptr noalias noundef align 8 captures(address) dereferenceable(752) %i.a, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(784) %i.q)
          to label %bb.g unwind label %bb.e, !noalias !22590, !inline_history !22577

bb.e:                                             ; preds = %.noexc
  %i.u = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !22591), !noalias !22587
  %.val.i.i.i = load i64, ptr %i.b, align 8, !alias.scope !22591, !noalias !22589 ; 2 uses
  %i.v = icmp eq i64 %.val.i.i.i, 0
  br i1 %i.v, label %bb.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.w = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.val1.i.i.i = load ptr, ptr %i.w, align 8, !alias.scope !22591, !noalias !22589, !nonnull !21, !noundef !21
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i, i64 noundef %.val.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #52, !noalias !22592, !inline_history !22577
  br label %bb.i

bb.g:                                             ; preds = %.noexc
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.013.752..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(752) %.sroa.013, ptr noundef nonnull align 8 dereferenceable(752) %i.a, i64 752, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !22589
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !22589
  %i.x = getelementptr inbounds nuw [784 x i8], ptr %i.m, i64 %.sroa.6.0 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(776) %i.x, ptr noundef nonnull align 8 dereferenceable(776) %.sroa.013, i64 776, i1 false)
  %.sroa.416.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.x, i64 776
  store i64 %i.s, ptr %.sroa.416.0..sroa_idx, align 8, !noalias !22593
  %i.y = add i64 %.sroa.6.0, 1                    ; 2 uses
  %i.z = add nuw i64 %.sroa.06.0.i.i, 1           ; 2 uses
  %i.aa = icmp eq i64 %i.z, %i.f
  br i1 %i.aa, label %bb.h, label %bb.d

bb.h:                                             ; preds = %bb.g
  store i64 %i.y, ptr %i.g, align 8, !noalias !22587
  br label %"_ZN104_$LT$core..iter..adapters..cloned..Cloned$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold17ha54e492785fff6d7E.exit"

bb.i:                                             ; preds = %bb.c, %bb.f, %bb.e
  %eh.lpad-body = phi { ptr, i32 } [ %i.p, %bb.c ], [ %i.u, %bb.f ], [ %i.u, %bb.e ]
  store i64 %.sroa.6.0, ptr %i.g, align 8, !noalias !22587
  resume { ptr, i32 } %eh.lpad-body

"_ZN104_$LT$core..iter..adapters..cloned..Cloned$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold17ha54e492785fff6d7E.exit": ; preds = %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17hccac67c279767168E.exit", %bb.h
  ret void
}

; Function Attrs: cold nounwind nonlazybind uwtable
define internal fastcc void @_ZN5alloc7raw_vec11finish_grow17he9176bbf9c75297bE(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(24) initializes((0, 24)) %0, i64 noundef range(i64 1, -9223372036854775807) %1, i64 noundef %2, ptr noalias noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(24) %3) unnamed_addr #27 {
bb.a:
end_hunk_7
