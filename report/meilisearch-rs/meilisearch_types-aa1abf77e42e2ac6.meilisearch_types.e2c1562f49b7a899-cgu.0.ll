Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/meilisearch-rs/original/meilisearch_types-aa1abf77e42e2ac6.meilisearch_types.e2c1562f49b7a899-cgu.0?download=true
inline.NumInlined: 11037
inline.NumDeleted: 4505
loop-unroll.NumCompletelyUnrolled: 77
loop-unroll.NumRuntimeUnrolled: 218
loop-unroll.NumUnrolled: 298
begin_hunk_0_@_ZN17meilisearch_types5tasks7network21NetworkTopologyChange3new17h3ac08b2b94f3148eE:bb.a
  %.sroa.5.sroa.0.0.copyload.i.i.i.i.i151 = phi ptr [ %.sroa.5.sroa.0.0.copyload.pre.i.i.i.i.i, %bb.db ], [ %.val12.i.i.i.i.i, %"_ZN4core3ptr97drop_in_place$LT$$LP$alloc..string..String$C$meilisearch_types..tasks..network..OutRemote$RP$$GT$17hba6689b54925ff7cE.exit18.i.i.i.i.i.backedge" ]
  %.sroa.0.0.copyload5.i74.i.i.i.i.i = phi i64 [ %.promoted.i.i.i.i.i, %bb.db ], [ %.sroa.0.0.copyload5.i.i.i.i.i.i, %"_ZN4core3ptr97drop_in_place$LT$$LP$alloc..string..String$C$meilisearch_types..tasks..network..OutRemote$RP$$GT$17hba6689b54925ff7cE.exit18.i.i.i.i.i.backedge" ] ; 2 uses
  %.sroa.5.sroa.5.0.copyload.i.i.i.i.i152 = load i64, ptr %.sroa.5.sroa.5.0..sroa.5.0..sroa_idx.sroa_idx.i.i.i.i.i147, align 8, !alias.scope !7669, !noalias !7670
  store i64 -9223372036854775807, ptr %i.b, align 8, !alias.scope !7669, !noalias !7670
  %.not.i.i.i.i.i153 = icmp eq i64 %.sroa.0.0.copyload5.i74.i.i.i.i.i, -9223372036854775807
  br i1 %.not.i.i.i.i.i153, label %bb.dc, label %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h51d2b68ebbb1f1deE.exit.i.i.i.i.i"

bb.dc:                                            ; preds = %"_ZN4core3ptr97drop_in_place$LT$$LP$alloc..string..String$C$meilisearch_types..tasks..network..OutRemote$RP$$GT$17hba6689b54925ff7cE.exit18.i.i.i.i.i"
  call void @llvm.experimental.noalias.scope.decl(metadata !7671)
  %i.xi = icmp eq ptr %.promoted75.i.i99.i.i.i, %i.xh
  br i1 %i.xi, label %"_ZN4core3ptr107drop_in_place$LT$$u5b$$LP$alloc..string..String$C$meilisearch_types..tasks..network..OutRemote$RP$$u5d$$GT$17h2bdfe137256ef869E.exit.i.i.i.i.i.i.i.i", label %bb.dd

bb.dd:                                            ; preds = %bb.dc
  %i.xj = getelementptr inbounds nuw i8, ptr %.promoted75.i.i99.i.i.i, i64 32 ; 2 uses
  store ptr %i.xj, ptr %.sroa.5.0..sroa_idx.i3.i.i, align 8, !alias.scope !7672, !noalias !7673
  %.sroa.033.0.copyload34.i.i.i.i.i = load i64, ptr %.promoted75.i.i99.i.i.i, align 8, !noalias !7674
  %.sroa.835.0..sroa_idx36.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.promoted75.i.i99.i.i.i, i64 8
  %.sroa.835.sroa.0.0.copyload.i.i.i.i.i = load ptr, ptr %.sroa.835.0..sroa_idx36.i.i.i.i.i, align 8, !noalias !7674
  %.sroa.835.sroa.6.0..sroa.835.0..sroa_idx36.sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.promoted75.i.i99.i.i.i, i64 16
  %.sroa.835.sroa.6.0.copyload.i.i.i.i.i = load i64, ptr %.sroa.835.sroa.6.0..sroa.835.0..sroa_idx36.sroa_idx.i.i.i.i.i, align 8, !noalias !7674
  %.sroa.835.sroa.7.0..sroa.835.0..sroa_idx36.sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.promoted75.i.i99.i.i.i, i64 24
  %.sroa.835.sroa.7.0.copyload.i.i.i.i.i = load i64, ptr %.sroa.835.sroa.7.0..sroa.835.0..sroa_idx36.sroa_idx.i.i.i.i.i, align 8, !noalias !7674
  br label %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h51d2b68ebbb1f1deE.exit.i.i.i.i.i"

"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h51d2b68ebbb1f1deE.exit.i.i.i.i.i": ; preds = %bb.dd, %"_ZN4core3ptr97drop_in_place$LT$$LP$alloc..string..String$C$meilisearch_types..tasks..network..OutRemote$RP$$GT$17hba6689b54925ff7cE.exit18.i.i.i.i.i"
  %.promoted75.i.i98.i.i.i = phi ptr [ %.promoted75.i.i99.i.i.i, %"_ZN4core3ptr97drop_in_place$LT$$LP$alloc..string..String$C$meilisearch_types..tasks..network..OutRemote$RP$$GT$17hba6689b54925ff7cE.exit18.i.i.i.i.i" ], [ %i.xj, %bb.dd ] ; 7 uses
  %.sroa.835.sroa.6.0.i.i.i.i.i = phi i64 [ %.sroa.5.sroa.4.0.copyload.i.i.i.i.i, %"_ZN4core3ptr97drop_in_place$LT$$LP$alloc..string..String$C$meilisearch_types..tasks..network..OutRemote$RP$$GT$17hba6689b54925ff7cE.exit18.i.i.i.i.i" ], [ %.sroa.835.sroa.6.0.copyload.i.i.i.i.i, %bb.dd ] ; 5 uses
  %.sroa.835.sroa.0.0.i.i.i.i.i = phi ptr [ %.sroa.5.sroa.0.0.copyload.i.i.i.i.i151, %"_ZN4core3ptr97drop_in_place$LT$$LP$alloc..string..String$C$meilisearch_types..tasks..network..OutRemote$RP$$GT$17hba6689b54925ff7cE.exit18.i.i.i.i.i" ], [ %.sroa.835.sroa.0.0.copyload.i.i.i.i.i, %bb.dd ] ; 7 uses
  %.sroa.835.sroa.7.0.i.i.i.i.i = phi i64 [ %.sroa.5.sroa.5.0.copyload.i.i.i.i.i152, %"_ZN4core3ptr97drop_in_place$LT$$LP$alloc..string..String$C$meilisearch_types..tasks..network..OutRemote$RP$$GT$17hba6689b54925ff7cE.exit18.i.i.i.i.i" ], [ %.sroa.835.sroa.7.0.copyload.i.i.i.i.i, %bb.dd ]
  %.sroa.033.0.i.i.i.i.i = phi i64 [ %.sroa.0.0.copyload5.i74.i.i.i.i.i, %"_ZN4core3ptr97drop_in_place$LT$$LP$alloc..string..String$C$meilisearch_types..tasks..network..OutRemote$RP$$GT$17hba6689b54925ff7cE.exit18.i.i.i.i.i" ], [ %.sroa.033.0.copyload34.i.i.i.i.i, %bb.dd ] ; 8 uses
  %.not9.i.i.i.i.i = icmp eq i64 %.sroa.033.0.i.i.i.i.i, -9223372036854775808
  br i1 %.not9.i.i.i.i.i, label %"_ZN137_$LT$alloc..collections..btree..dedup_sorted_iter..DedupSortedIter$LT$K$C$V$C$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hae616e213cf35653E.exit.i.i.i.i", label %bb.de

bb.de:                                            ; preds = %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h51d2b68ebbb1f1deE.exit.i.i.i.i.i"
  call void @llvm.experimental.noalias.scope.decl(metadata !7675)
  call void @llvm.experimental.noalias.scope.decl(metadata !7676)
  call void @llvm.experimental.noalias.scope.decl(metadata !7677)
  call void @llvm.experimental.noalias.scope.decl(metadata !7678)
  %i.xk = icmp eq ptr %.promoted75.i.i98.i.i.i, %i.xh
  br i1 %i.xk, label %.thread.i.i.i.i.i, label %bb.df

.thread.i.i.i.i.i:                                ; preds = %bb.de
  store i64 -9223372036854775808, ptr %i.b, align 8, !alias.scope !7679, !noalias !7680
  br label %.loopexit86.i.i.i.i

bb.df:                                            ; preds = %bb.de
  %i.xl = getelementptr inbounds nuw i8, ptr %.promoted75.i.i98.i.i.i, i64 32 ; 5 uses
  store ptr %i.xl, ptr %.sroa.5.0..sroa_idx.i3.i.i, align 8, !alias.scope !7681, !noalias !7682
  %.sroa.0.0.copyload5.i.i.i.i.i.i = load i64, ptr %.promoted75.i.i98.i.i.i, align 8, !noalias !7683 ; 6 uses
  %.sroa.5.0..sroa_idx6.i.i.i.i.i.i154 = getelementptr inbounds nuw i8, ptr %.promoted75.i.i98.i.i.i, i64 8
  store i64 %.sroa.0.0.copyload5.i.i.i.i.i.i, ptr %i.b, align 8, !alias.scope !7679, !noalias !7680
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.4.0..sroa_idx.i2.i.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.5.0..sroa_idx6.i.i.i.i.i.i154, i64 24, i1 false), !noalias !7670
  %i.xm = icmp ne i64 %.sroa.0.0.copyload5.i.i.i.i.i.i, -9223372036854775807
  call void @llvm.assume(i1 %i.xm)
  %.not10.i.i.i.i.i = icmp eq i64 %.sroa.0.0.copyload5.i.i.i.i.i.i, -9223372036854775808
  br i1 %.not10.i.i.i.i.i, label %.loopexit86.i.i.i.i, label %bb.dg

bb.dg:                                            ; preds = %bb.df
  %.val13.i.i.i.i.i = load i64, ptr %.sroa.5.sroa.4.0..sroa.5.0..sroa_idx.sroa_idx.i.i.i.i.i, align 8, !alias.scope !7669, !noalias !7670, !noundef !21
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.835.sroa.0.0.i.i.i.i.i) ]
  %.not.i.i.i.i.i.i.i5.i.i = icmp eq i64 %.sroa.835.sroa.6.0.i.i.i.i.i, %.val13.i.i.i.i.i
  br i1 %.not.i.i.i.i.i.i.i5.i.i, label %_ZN4core3cmp9PartialEq2ne17hbe4cb7e26b86de13E.exit.i.i.i.i.i169, label %.loopexit86.i.i.i.i

_ZN4core3cmp9PartialEq2ne17hbe4cb7e26b86de13E.exit.i.i.i.i.i169: ; preds = %bb.dg
  %.val12.i.i.i.i.i = load ptr, ptr %.sroa.4.0..sroa_idx.i2.i.i, align 8, !alias.scope !7669, !noalias !7670, !nonnull !21, !noundef !21 ; 2 uses
  %bcmp.i.i.i.i.i.i.i.i.i170 = call i32 @bcmp(ptr nonnull readonly align 1 %.sroa.835.sroa.0.0.i.i.i.i.i, ptr nonnull readonly align 1 %.val12.i.i.i.i.i, i64 %.sroa.835.sroa.6.0.i.i.i.i.i), !alias.scope !7684, !noalias !7685
  %.not58.i.i.i.i.i = icmp eq i32 %bcmp.i.i.i.i.i.i.i.i.i170, 0
  br i1 %.not58.i.i.i.i.i, label %bb.dh, label %.loopexit86.i.i.i.i

bb.dh:                                            ; preds = %_ZN4core3cmp9PartialEq2ne17hbe4cb7e26b86de13E.exit.i.i.i.i.i169
  %i.xn = icmp eq i64 %.sroa.033.0.i.i.i.i.i, 0
  br i1 %i.xn, label %"_ZN4core3ptr97drop_in_place$LT$$LP$alloc..string..String$C$meilisearch_types..tasks..network..OutRemote$RP$$GT$17hba6689b54925ff7cE.exit18.i.i.i.i.i.backedge", label %bb.di

bb.di:                                            ; preds = %bb.dh
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.835.sroa.0.0.i.i.i.i.i, i64 noundef %.sroa.033.0.i.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #52, !noalias !7686
  br label %"_ZN4core3ptr97drop_in_place$LT$$LP$alloc..string..String$C$meilisearch_types..tasks..network..OutRemote$RP$$GT$17hba6689b54925ff7cE.exit18.i.i.i.i.i.backedge"

"_ZN4core3ptr97drop_in_place$LT$$LP$alloc..string..String$C$meilisearch_types..tasks..network..OutRemote$RP$$GT$17hba6689b54925ff7cE.exit18.i.i.i.i.i.backedge": ; preds = %bb.di, %bb.dh
  br label %"_ZN4core3ptr97drop_in_place$LT$$LP$alloc..string..String$C$meilisearch_types..tasks..network..OutRemote$RP$$GT$17hba6689b54925ff7cE.exit18.i.i.i.i.i"

.body.i.i.i.i.sink.split:                         ; preds = %bb.dz, %bb.du
  %.pn.i.i.i.i163.ph = phi { ptr, i32 } [ %i.abq, %bb.du ], [ %i.afh, %bb.dz ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.835.sroa.0.0.i.i.i.i.i) ]
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.835.sroa.0.0.i.i.i.i.i, i64 noundef %.sroa.033.0.i.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #52, !noalias !7667
  br label %.body.i.i.i.i

.body.i.i.i.i:                                    ; preds = %.body.i.i.i.i.sink.split, %bb.dz, %bb.du
  %.pn.i.i.i.i163 = phi { ptr, i32 } [ %i.abq, %bb.du ], [ %i.afh, %bb.dz ], [ %.pn.i.i.i.i163.ph, %.body.i.i.i.i.sink.split ]
  call fastcc void @"_ZN4core3ptr276drop_in_place$LT$alloc..collections..btree..dedup_sorted_iter..DedupSortedIter$LT$alloc..string..String$C$meilisearch_types..tasks..network..OutRemote$C$alloc..vec..into_iter..IntoIter$LT$$LP$alloc..string..String$C$meilisearch_types..tasks..network..OutRemote$RP$$GT$$GT$$GT$17h420a2cbdf22e4a28E"(ptr noalias noundef align 8 dereferenceable(64) %i.b) #55, !noalias !7667
  br label %.body185

.loopexit86.i.i.i.i:                              ; preds = %_ZN4core3cmp9PartialEq2ne17hbe4cb7e26b86de13E.exit.i.i.i.i.i169, %bb.dg, %bb.df, %.thread.i.i.i.i.i
  %.promoted75.i.i97.i.i.i = phi ptr [ %i.xh, %.thread.i.i.i.i.i ], [ %i.xl, %bb.df ], [ %i.xl, %bb.dg ], [ %i.xl, %_ZN4core3cmp9PartialEq2ne17hbe4cb7e26b86de13E.exit.i.i.i.i.i169 ]
  %.promoted.i.pre145.i96.i.i.i = phi i64 [ -9223372036854775808, %.thread.i.i.i.i.i ], [ %.sroa.0.0.copyload5.i.i.i.i.i.i, %_ZN4core3cmp9PartialEq2ne17hbe4cb7e26b86de13E.exit.i.i.i.i.i169 ], [ %.sroa.0.0.copyload5.i.i.i.i.i.i, %bb.dg ], [ -9223372036854775808, %bb.df ]
  %.sroa.12.24.extract.trunc.i.i.i.i = trunc i64 %.sroa.835.sroa.7.0.i.i.i.i.i to i8 ; 2 uses
  %i.xo = getelementptr inbounds nuw i8, ptr %.sroa.0.070.i.i.i.i, i64 274 ; 2 uses
  %i.xp = load i16, ptr %i.xo, align 2, !noalias !7667, !noundef !21 ; 3 uses
  %i.xq = icmp ult i16 %i.xp, 11
  br i1 %i.xq, label %bb.dy, label %.preheader.i.i.i.i155

"_ZN137_$LT$alloc..collections..btree..dedup_sorted_iter..DedupSortedIter$LT$K$C$V$C$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hae616e213cf35653E.exit.i.i.i.i": ; preds = %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h51d2b68ebbb1f1deE.exit.i.i.i.i.i"
  %i.xr = ptrtoint ptr %i.xh to i64
  %i.xs = ptrtoint ptr %.promoted75.i.i98.i.i.i to i64
  %i.xt = sub nuw i64 %i.xr, %i.xs
  %i.xu = lshr exact i64 %i.xt, 5
  call void @llvm.experimental.noalias.scope.decl(metadata !7687)
  %i.xv = icmp eq ptr %i.xh, %.promoted75.i.i98.i.i.i
  br i1 %i.xv, label %"_ZN4core3ptr107drop_in_place$LT$$u5b$$LP$alloc..string..String$C$meilisearch_types..tasks..network..OutRemote$RP$$u5d$$GT$17h2bdfe137256ef869E.exit.i.i.i.i.i.i.i.i", label %.lr.ph.i.i.i.i.i.i.i8.i.i

.lr.ph.i.i.i.i.i.i.i8.i.i:                        ; preds = %"_ZN137_$LT$alloc..collections..btree..dedup_sorted_iter..DedupSortedIter$LT$K$C$V$C$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hae616e213cf35653E.exit.i.i.i.i", %"_ZN4core3ptr97drop_in_place$LT$$LP$alloc..string..String$C$meilisearch_types..tasks..network..OutRemote$RP$$GT$17hba6689b54925ff7cE.exit.i.i.i.i.i.i.i.i.i"
  %.sroa.0.011.i.i.i.i.i.i.i.i.i = phi i64 [ %i.xx, %"_ZN4core3ptr97drop_in_place$LT$$LP$alloc..string..String$C$meilisearch_types..tasks..network..OutRemote$RP$$GT$17hba6689b54925ff7cE.exit.i.i.i.i.i.i.i.i.i" ], [ 0, %"_ZN137_$LT$alloc..collections..btree..dedup_sorted_iter..DedupSortedIter$LT$K$C$V$C$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hae616e213cf35653E.exit.i.i.i.i" ] ; 2 uses
  %i.xw = getelementptr inbounds nuw [32 x i8], ptr %.promoted75.i.i98.i.i.i, i64 %.sroa.0.011.i.i.i.i.i.i.i.i.i ; 2 uses
  %i.xx = add nuw i64 %.sroa.0.011.i.i.i.i.i.i.i.i.i, 1 ; 2 uses
  %.val8.i.i.i.i.i.i.i.i.i = load i64, ptr %i.xw, align 8, !alias.scope !7688, !noalias !7689 ; 2 uses
  %i.xy = icmp eq i64 %.val8.i.i.i.i.i.i.i.i.i, 0
  br i1 %i.xy, label %"_ZN4core3ptr97drop_in_place$LT$$LP$alloc..string..String$C$meilisearch_types..tasks..network..OutRemote$RP$$GT$17hba6689b54925ff7cE.exit.i.i.i.i.i.i.i.i.i", label %bb.dj

bb.dj:                                            ; preds = %.lr.ph.i.i.i.i.i.i.i8.i.i
  %i.xz = getelementptr i8, ptr %i.xw, i64 8
  %.val9.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.xz, align 8, !alias.scope !7687, !noalias !7689, !nonnull !21, !noundef !21
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val9.i.i.i.i.i.i.i.i.i, i64 noundef %.val8.i.i.i.i.i.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #52, !noalias !7690
  br label %"_ZN4core3ptr97drop_in_place$LT$$LP$alloc..string..String$C$meilisearch_types..tasks..network..OutRemote$RP$$GT$17hba6689b54925ff7cE.exit.i.i.i.i.i.i.i.i.i"

"_ZN4core3ptr97drop_in_place$LT$$LP$alloc..string..String$C$meilisearch_types..tasks..network..OutRemote$RP$$GT$17hba6689b54925ff7cE.exit.i.i.i.i.i.i.i.i.i": ; preds = %bb.dj, %.lr.ph.i.i.i.i.i.i.i8.i.i
  %i.ya = icmp eq i64 %i.xx, %i.xu
  br i1 %i.ya, label %"_ZN4core3ptr107drop_in_place$LT$$u5b$$LP$alloc..string..String$C$meilisearch_types..tasks..network..OutRemote$RP$$u5d$$GT$17h2bdfe137256ef869E.exit.i.i.i.i.i.i.i.i", label %.lr.ph.i.i.i.i.i.i.i8.i.i

"_ZN4core3ptr107drop_in_place$LT$$u5b$$LP$alloc..string..String$C$meilisearch_types..tasks..network..OutRemote$RP$$u5d$$GT$17h2bdfe137256ef869E.exit.i.i.i.i.i.i.i.i": ; preds = %bb.dc, %"_ZN4core3ptr97drop_in_place$LT$$LP$alloc..string..String$C$meilisearch_types..tasks..network..OutRemote$RP$$GT$17hba6689b54925ff7cE.exit.i.i.i.i.i.i.i.i.i", %"_ZN137_$LT$alloc..collections..btree..dedup_sorted_iter..DedupSortedIter$LT$K$C$V$C$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hae616e213cf35653E.exit.i.i.i.i"
  %i.yb = icmp eq i64 %.sroa.02.0.copyload.i, 0
  br i1 %i.yb, label %"_ZN4core3ptr276drop_in_place$LT$alloc..collections..btree..dedup_sorted_iter..DedupSortedIter$LT$alloc..string..String$C$meilisearch_types..tasks..network..OutRemote$C$alloc..vec..into_iter..IntoIter$LT$$LP$alloc..string..String$C$meilisearch_types..tasks..network..OutRemote$RP$$GT$$GT$$GT$17h420a2cbdf22e4a28E.exit.i.i.i.i", label %bb.dk

bb.dk:                                            ; preds = %"_ZN4core3ptr107drop_in_place$LT$$u5b$$LP$alloc..string..String$C$meilisearch_types..tasks..network..OutRemote$RP$$u5d$$GT$17h2bdfe137256ef869E.exit.i.i.i.i.i.i.i.i"
  %i.yc = shl nuw i64 %.sroa.02.0.copyload.i, 5
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.xb, i64 noundef %i.yc, i64 noundef range(i64 1, -9223372036854775807) 8) #52, !noalias !7689
  br label %"_ZN4core3ptr276drop_in_place$LT$alloc..collections..btree..dedup_sorted_iter..DedupSortedIter$LT$alloc..string..String$C$meilisearch_types..tasks..network..OutRemote$C$alloc..vec..into_iter..IntoIter$LT$$LP$alloc..string..String$C$meilisearch_types..tasks..network..OutRemote$RP$$GT$$GT$$GT$17h420a2cbdf22e4a28E.exit.i.i.i.i"

"_ZN4core3ptr276drop_in_place$LT$alloc..collections..btree..dedup_sorted_iter..DedupSortedIter$LT$alloc..string..String$C$meilisearch_types..tasks..network..OutRemote$C$alloc..vec..into_iter..IntoIter$LT$$LP$alloc..string..String$C$meilisearch_types..tasks..network..OutRemote$RP$$GT$$GT$$GT$17h420a2cbdf22e4a28E.exit.i.i.i.i": ; preds = %bb.dk, %"_ZN4core3ptr107drop_in_place$LT$$u5b$$LP$alloc..string..String$C$meilisearch_types..tasks..network..OutRemote$RP$$u5d$$GT$17h2bdfe137256ef869E.exit.i.i.i.i.i.i.i.i"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !7667
  %i.yd = icmp eq i64 %.sroa.8.0.i.i.i149, 0
  br i1 %i.yd, label %.loopexit, label %.lr.ph.i17.i.i.i.i171

.lr.ph.i17.i.i.i.i171:                            ; preds = %"_ZN4core3ptr276drop_in_place$LT$alloc..collections..btree..dedup_sorted_iter..DedupSortedIter$LT$alloc..string..String$C$meilisearch_types..tasks..network..OutRemote$C$alloc..vec..into_iter..IntoIter$LT$$LP$alloc..string..String$C$meilisearch_types..tasks..network..OutRemote$RP$$GT$$GT$$GT$17h420a2cbdf22e4a28E.exit.i.i.i.i", %"_ZN5alloc11collections5btree4node29BalancingContext$LT$K$C$V$GT$15bulk_steal_left17hc991fbed6c4dff4bE.exit.i.i.i.i.i"
  %.sroa.02.010.i.i.i.i.i172 = phi i64 [ %i.yl, %"_ZN5alloc11collections5btree4node29BalancingContext$LT$K$C$V$GT$15bulk_steal_left17hc991fbed6c4dff4bE.exit.i.i.i.i.i" ], [ %.sroa.8.0.i.i.i149, %"_ZN4core3ptr276drop_in_place$LT$alloc..collections..btree..dedup_sorted_iter..DedupSortedIter$LT$alloc..string..String$C$meilisearch_types..tasks..network..OutRemote$C$alloc..vec..into_iter..IntoIter$LT$$LP$alloc..string..String$C$meilisearch_types..tasks..network..OutRemote$RP$$GT$$GT$$GT$17h420a2cbdf22e4a28E.exit.i.i.i.i" ]
  %.sroa.03.09.i.i.i.i.i173 = phi ptr [ %i.yo, %"_ZN5alloc11collections5btree4node29BalancingContext$LT$K$C$V$GT$15bulk_steal_left17hc991fbed6c4dff4bE.exit.i.i.i.i.i" ], [ %.sroa.0.0.i.i.i150, %"_ZN4core3ptr276drop_in_place$LT$alloc..collections..btree..dedup_sorted_iter..DedupSortedIter$LT$alloc..string..String$C$meilisearch_types..tasks..network..OutRemote$C$alloc..vec..into_iter..IntoIter$LT$$LP$alloc..string..String$C$meilisearch_types..tasks..network..OutRemote$RP$$GT$$GT$$GT$17h420a2cbdf22e4a28E.exit.i.i.i.i" ] ; 4 uses
  %i.ye = getelementptr inbounds nuw i8, ptr %.sroa.03.09.i.i.i.i.i173, i64 274
  %i.yf = load i16, ptr %i.ye, align 2, !noalias !7667, !noundef !21 ; 3 uses
  %.not.i18.i.i.i.i174 = icmp eq i16 %i.yf, 0
  br i1 %.not.i18.i.i.i.i174, label %.noexc19.i.i.i.i178.invoke, label %bb.dl, !prof !23

bb.dl:                                            ; preds = %.lr.ph.i17.i.i.i.i171
  %i.yg = zext nneg i16 %i.yf to i64
  %i.yh = add nsw i64 %i.yg, -1                   ; 3 uses
  %i.yi = getelementptr inbounds nuw i8, ptr %.sroa.03.09.i.i.i.i.i173, i64 288
  %i.yj = getelementptr inbounds nuw [8 x i8], ptr %i.yi, i64 %i.yh ; 2 uses
  %i.yk = load ptr, ptr %i.yj, align 8, !noalias !7691, !nonnull !21, !noundef !21 ; 4 uses
  %i.yl = add i64 %.sroa.02.010.i.i.i.i.i172, -1  ; 3 uses
  %i.ym = icmp ult i16 %i.yf, 12
  call void @llvm.assume(i1 %i.ym)
  %i.yn = getelementptr inbounds nuw i8, ptr %i.yj, i64 8
  %i.yo = load ptr, ptr %i.yn, align 8, !noalias !7692, !nonnull !21, !noundef !21 ; 16 uses
  %i.yp = getelementptr inbounds nuw i8, ptr %i.yo, i64 274 ; 2 uses
  %i.yq = load i16, ptr %i.yp, align 2, !noalias !7667, !noundef !21 ; 3 uses
  %i.yr = icmp ult i16 %i.yq, 5
  br i1 %i.yr, label %bb.dm, label %"_ZN5alloc11collections5btree4node29BalancingContext$LT$K$C$V$GT$15bulk_steal_left17hc991fbed6c4dff4bE.exit.i.i.i.i.i"

"_ZN5alloc11collections5btree4node29BalancingContext$LT$K$C$V$GT$15bulk_steal_left17hc991fbed6c4dff4bE.exit.i.i.i.i.i": ; preds = %"_ZN5alloc11collections5btree4node29BalancingContext$LT$K$C$V$GT$15bulk_steal_left17hc991fbed6c4dff4bE.exit.loopexit.i.i.i.i.i", %bb.dl
  %i.ys = icmp eq i64 %i.yl, 0
  br i1 %i.ys, label %.loopexit, label %.lr.ph.i17.i.i.i.i171

bb.dm:                                            ; preds = %bb.dl
  %narrow.i.i.i.i.i176 = sub nuw nsw i16 5, %i.yq ; 2 uses
  %i.yt = zext nneg i16 %narrow.i.i.i.i.i176 to i64 ; 5 uses
  %i.yu = getelementptr inbounds nuw i8, ptr %i.yk, i64 274 ; 2 uses
  %i.yv = load i16, ptr %i.yu, align 2, !noalias !7693, !noundef !21 ; 2 uses
  %i.yw = zext nneg i16 %i.yq to i64              ; 3 uses
  %.not.i.i.i.i.i.i177 = icmp ugt i16 %narrow.i.i.i.i.i176, %i.yv
  br i1 %.not.i.i.i.i.i.i177, label %.noexc19.i.i.i.i178.invoke, label %_ZN5alloc11collections5btree4node13move_to_slice17hbb331c7e7a1c7bb8E.exit.i.i.i.i.i.i, !prof !23

.noexc19.i.i.i.i178.invoke:                       ; preds = %bb.dm, %.lr.ph.i17.i.i.i.i171
  %i.yx = phi ptr [ @1107, %.lr.ph.i17.i.i.i.i171 ], [ @1123, %bb.dm ]
  %i.yy = phi i64 [ 25, %.lr.ph.i17.i.i.i.i171 ], [ 39, %bb.dm ]
  %i.yz = phi ptr [ @1109, %.lr.ph.i17.i.i.i.i171 ], [ @1124, %bb.dm ]
  invoke void @_ZN4core9panicking5panic17ha264d2bb233f2b69E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.yx, i64 noundef %i.yy, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.yz) #57
          to label %.noexc19.i.i.i.i178.cont unwind label %bb.ec

.noexc19.i.i.i.i178.cont:                         ; preds = %.noexc19.i.i.i.i178.invoke
  unreachable

_ZN5alloc11collections5btree4node13move_to_slice17hbb331c7e7a1c7bb8E.exit.i.i.i.i.i.i: ; preds = %bb.dm
  %i.za = zext i16 %i.yv to i64                   ; 2 uses
  %i.zb = sub nuw nsw i64 %i.za, %i.yt            ; 4 uses
  %i.zc = trunc nuw i64 %i.zb to i16
  store i16 %i.zc, ptr %i.yu, align 2, !noalias !7693
  store i16 5, ptr %i.yp, align 2, !noalias !7693
  %i.zd = getelementptr inbounds nuw i8, ptr %i.yo, i64 8 ; 4 uses
  %i.ze = getelementptr inbounds nuw [24 x i8], ptr %i.zd, i64 %i.yt
  %i.zf = mul nuw nsw i64 %i.yw, 24
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.ze, ptr nonnull align 8 %i.zd, i64 %i.zf, i1 false), !alias.scope !7694, !noalias !7693
  %i.zg = getelementptr inbounds nuw i8, ptr %i.yo, i64 276 ; 4 uses
  %i.zh = getelementptr inbounds nuw i8, ptr %i.zg, i64 %i.yt
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.zh, ptr nonnull align 2 %i.zg, i64 %i.yw, i1 false), !alias.scope !7695, !noalias !7693
  %i.zi = add nuw nsw i64 %i.zb, 1                ; 4 uses
  %i.zj = sub nuw nsw i64 %i.za, %i.zi            ; 4 uses
  %i.zk = getelementptr inbounds nuw i8, ptr %i.yk, i64 8 ; 2 uses
  %i.zl = getelementptr inbounds nuw [24 x i8], ptr %i.zk, i64 %i.zi
  %i.zm = mul nuw nsw i64 %i.zj, 24
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.zd, ptr nonnull readonly align 8 %i.zl, i64 %i.zm, i1 false), !alias.scope !7696, !noalias !7693
  %i.zn = getelementptr inbounds nuw i8, ptr %i.yk, i64 276 ; 2 uses
  %i.zo = getelementptr inbounds nuw i8, ptr %i.zn, i64 %i.zi
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 2 %i.zg, ptr nonnull readonly align 1 %i.zo, i64 range(i64 0, 65536) %i.zj, i1 false), !alias.scope !7697, !noalias !7693
  %i.zp = getelementptr inbounds nuw [24 x i8], ptr %i.zk, i64 %i.zb
  %i.zq = getelementptr inbounds nuw i8, ptr %i.zn, i64 %i.zb
  %i.zr = load i8, ptr %i.zq, align 1, !range !51, !noalias !7693, !noundef !21
  %i.zs = getelementptr inbounds nuw i8, ptr %.sroa.03.09.i.i.i.i.i173, i64 8
  %i.zt = getelementptr inbounds nuw [24 x i8], ptr %i.zs, i64 %i.yh ; 2 uses
  %i.zu = getelementptr inbounds nuw i8, ptr %.sroa.03.09.i.i.i.i.i173, i64 276
  %i.zv = getelementptr inbounds nuw i8, ptr %i.zu, i64 %i.yh ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %i.zt, i64 24, i1 false), !noalias !7693
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.zt, ptr noundef nonnull align 8 dereferenceable(24) %i.zp, i64 24, i1 false), !noalias !7693
  %i.zw = load i8, ptr %i.zv, align 1, !range !51, !noalias !7698, !noundef !21
  store i8 %i.zr, ptr %i.zv, align 1, !noalias !7698
  %i.zx = getelementptr inbounds nuw [24 x i8], ptr %i.zd, i64 %i.zj
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.zx, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false), !noalias !7693
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.zy = getelementptr inbounds nuw i8, ptr %i.zg, i64 %i.zj
  store i8 %i.zw, ptr %i.zy, align 1, !noalias !7693
  %cond.i.i.i.i.i = icmp eq i64 %i.yl, 0
  br i1 %cond.i.i.i.i.i, label %.loopexit, label %"_ZN5alloc11collections5btree4node29BalancingContext$LT$K$C$V$GT$15bulk_steal_left17hc991fbed6c4dff4bE.exit.loopexit.i.i.i.i.i"

"_ZN5alloc11collections5btree4node29BalancingContext$LT$K$C$V$GT$15bulk_steal_left17hc991fbed6c4dff4bE.exit.loopexit.i.i.i.i.i": ; preds = %_ZN5alloc11collections5btree4node13move_to_slice17hbb331c7e7a1c7bb8E.exit.i.i.i.i.i.i
  %i.zz = getelementptr inbounds nuw i8, ptr %i.yo, i64 288 ; 4 uses
  %i.aaa = getelementptr inbounds nuw [8 x i8], ptr %i.zz, i64 %i.yt
  %i.aab = shl nuw nsw i64 %i.yw, 3
  %i.aac = add nuw nsw i64 %i.aab, 8
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.aaa, ptr noundef nonnull align 8 dereferenceable(1) %i.zz, i64 %i.aac, i1 false), !alias.scope !7699, !noalias !7693
  %i.aad = getelementptr inbounds nuw i8, ptr %i.yk, i64 288
  %i.aae = getelementptr inbounds nuw [8 x i8], ptr %i.aad, i64 %i.zi
  %i.aaf = shl nuw nsw i64 %i.yt, 3
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.zz, ptr noundef nonnull readonly align 8 dereferenceable(1) %i.aae, i64 %i.aaf, i1 false), !alias.scope !7700, !noalias !7693
  %i.aag = load ptr, ptr %i.zz, align 8, !noalias !7701, !nonnull !21, !noundef !21 ; 2 uses
  store ptr %i.yo, ptr %i.aag, align 8, !noalias !7702
  %i.aah = getelementptr inbounds nuw i8, ptr %i.aag, i64 272
  store i16 0, ptr %i.aah, align 8, !noalias !7702
  %i.aai = getelementptr inbounds nuw i8, ptr %i.yo, i64 296
  %i.aaj = load ptr, ptr %i.aai, align 8, !noalias !7701, !nonnull !21, !noundef !21 ; 2 uses
  store ptr %i.yo, ptr %i.aaj, align 8, !noalias !7702
  %i.aak = getelementptr inbounds nuw i8, ptr %i.aaj, i64 272
  store i16 1, ptr %i.aak, align 8, !noalias !7702
  %i.aal = getelementptr inbounds nuw i8, ptr %i.yo, i64 304
  %i.aam = load ptr, ptr %i.aal, align 8, !noalias !7701, !nonnull !21, !noundef !21 ; 2 uses
  store ptr %i.yo, ptr %i.aam, align 8, !noalias !7702
  %i.aan = getelementptr inbounds nuw i8, ptr %i.aam, i64 272
  store i16 2, ptr %i.aan, align 8, !noalias !7702
  %i.aao = getelementptr inbounds nuw i8, ptr %i.yo, i64 312
  %i.aap = load ptr, ptr %i.aao, align 8, !noalias !7701, !nonnull !21, !noundef !21 ; 2 uses
  store ptr %i.yo, ptr %i.aap, align 8, !noalias !7702
  %i.aaq = getelementptr inbounds nuw i8, ptr %i.aap, i64 272
  store i16 3, ptr %i.aaq, align 8, !noalias !7702
  %i.aar = getelementptr inbounds nuw i8, ptr %i.yo, i64 320
  %i.aas = load ptr, ptr %i.aar, align 8, !noalias !7701, !nonnull !21, !noundef !21 ; 2 uses
  store ptr %i.yo, ptr %i.aas, align 8, !noalias !7702
  %i.aat = getelementptr inbounds nuw i8, ptr %i.aas, i64 272
  store i16 4, ptr %i.aat, align 8, !noalias !7702
  %i.aau = getelementptr inbounds nuw i8, ptr %i.yo, i64 328
  %i.aav = load ptr, ptr %i.aau, align 8, !noalias !7701, !nonnull !21, !noundef !21 ; 2 uses
  store ptr %i.yo, ptr %i.aav, align 8, !noalias !7702
  %i.aaw = getelementptr inbounds nuw i8, ptr %i.aav, i64 272
  store i16 5, ptr %i.aaw, align 8, !noalias !7702
  br label %"_ZN5alloc11collections5btree4node29BalancingContext$LT$K$C$V$GT$15bulk_steal_left17hc991fbed6c4dff4bE.exit.i.i.i.i.i"

.preheader.i.i.i.i155:                            ; preds = %.loopexit86.i.i.i.i, %bb.dn
  %.sroa.5.0.i.i.i.i156 = phi i64 [ %i.aay, %bb.dn ], [ 0, %.loopexit86.i.i.i.i ]
  %.sroa.0.0.i.i6.i.i = phi ptr [ %i.aax, %bb.dn ], [ %.sroa.0.070.i.i.i.i, %.loopexit86.i.i.i.i ]
  %i.aax = load ptr, ptr %.sroa.0.0.i.i6.i.i, align 8, !noalias !7703, !noundef !21 ; 4 uses
  %.not.i22.i.i.i.i = icmp eq ptr %i.aax, null
  br i1 %.not.i22.i.i.i.i, label %bb.do, label %bb.dn

bb.dn:                                            ; preds = %.preheader.i.i.i.i155
  %i.aay = add i64 %.sroa.5.0.i.i.i.i156, 1       ; 2 uses
  %i.aaz = getelementptr inbounds nuw i8, ptr %i.aax, i64 274
  %i.aba = load i16, ptr %i.aaz, align 2, !noalias !7667, !noundef !21
  %i.abb = icmp ult i16 %i.aba, 11
  br i1 %i.abb, label %.loopexit85.i.i.i.i, label %.preheader.i.i.i.i155

bb.do:                                            ; preds = %.preheader.i.i.i.i155
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.i.i.i150) ]
  call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #52, !noalias !7704
  %i.abc = call noalias noundef align 8 dereferenceable_or_null(384) ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef 384, i64 noundef range(i64 1, -9223372036854775807) 8) #52, !noalias !7704 ; 7 uses
  %i.abd = icmp eq ptr %i.abc, null
  br i1 %i.abd, label %bb.dp, label %bb.dr, !prof !23

bb.dp:                                            ; preds = %bb.do
  invoke void @_ZN5alloc5alloc18handle_alloc_error17h8f86e24af4223f3dE(i64 noundef 8, i64 noundef 384) #57
          to label %.noexc.i.i.i.i.i168 unwind label %bb.dq, !noalias !7704

.noexc.i.i.i.i.i168:                              ; preds = %bb.dp
  unreachable

bb.dq:                                            ; preds = %bb.dp
  %i.abe = landingpad { ptr, i32 }
          cleanup                                 ; 0 uses
  call void @llvm.trap()
  unreachable

bb.dr:                                            ; preds = %bb.do
  store ptr null, ptr %i.abc, align 8, !noalias !7704
  %i.abf = getelementptr inbounds nuw i8, ptr %i.abc, i64 274
  store i16 0, ptr %i.abf, align 2, !noalias !7704
  %i.abg = getelementptr inbounds nuw i8, ptr %i.abc, i64 288
  store ptr %.sroa.0.0.i.i.i150, ptr %i.abg, align 8, !noalias !7704
  %i.abh = add i64 %.sroa.8.0.i.i.i149, 1         ; 2 uses
  store ptr %i.abc, ptr %.sroa.0.0.i.i.i150, align 8, !noalias !7705
  %i.abi = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i150, i64 272
  store i16 0, ptr %i.abi, align 8, !noalias !7706
  br label %.loopexit85.i.i.i.i

.loopexit85.i.i.i.i:                              ; preds = %bb.dn, %bb.dr
  %.sroa.8.1.i.i.i157 = phi i64 [ %i.abh, %bb.dr ], [ %.sroa.8.0.i.i.i149, %bb.dn ] ; 3 uses
  %.sroa.0.1.i.i.i158 = phi ptr [ %i.abc, %bb.dr ], [ %.sroa.0.0.i.i.i150, %bb.dn ] ; 3 uses
  %.sroa.651.0.i.i.i.i = phi i64 [ %i.abh, %bb.dr ], [ %i.aay, %bb.dn ] ; 6 uses
  %.sroa.050.0.i.i.i.i = phi ptr [ %i.abc, %bb.dr ], [ %i.aax, %bb.dn ] ; 8 uses
  %i.abj = add i64 %.sroa.651.0.i.i.i.i, -1       ; 2 uses
  call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #52, !noalias !7667
  %i.abk = call noalias noundef align 8 dereferenceable_or_null(288) ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef 288, i64 noundef range(i64 1, -9223372036854775807) 8) #52, !noalias !7667 ; 5 uses
  %i.abl = icmp eq ptr %i.abk, null
  br i1 %i.abl, label %bb.ds, label %bb.dt, !prof !23

bb.ds:                                            ; preds = %.loopexit85.i.i.i.i
  invoke void @_ZN5alloc5alloc18handle_alloc_error17h8f86e24af4223f3dE(i64 noundef 8, i64 noundef 288) #57
          to label %.noexc23.i.i.i.i unwind label %bb.dz, !noalias !7667

.noexc23.i.i.i.i:                                 ; preds = %bb.ds
  unreachable

bb.dt:                                            ; preds = %.loopexit85.i.i.i.i
  store ptr null, ptr %i.abk, align 8, !noalias !7667
  %i.abm = getelementptr inbounds nuw i8, ptr %i.abk, i64 274
  store i16 0, ptr %i.abm, align 2, !noalias !7667
  %.not.i.i.i.i159 = icmp eq i64 %i.abj, 0
  br i1 %.not.i.i.i.i159, label %._crit_edge.i.i.i.i, label %.lr.ph.i.i.i.i160

.invoke.i.i.i.i.i162:                             ; preds = %._crit_edge.i.i.i.i
  invoke void @_ZN4core9panicking5panic17ha264d2bb233f2b69E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @1112, i64 noundef 32, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @1116) #57
          to label %.cont.i.i.i.i.i164 unwind label %bb.du, !noalias !7707

.cont.i.i.i.i.i164:                               ; preds = %.invoke.i.i.i.i.i162
  unreachable

._crit_edge.i.i.i.i:                              ; preds = %_ZN5alloc11collections5btree3mem7replace17h9cb3b1504e9c9f38E.exit35.i.i.i.i, %bb.dt
  %.sroa.057.0.lcssa.i.i.i.i = phi ptr [ %i.abk, %bb.dt ], [ %i.aeu, %_ZN5alloc11collections5btree3mem7replace17h9cb3b1504e9c9f38E.exit35.i.i.i.i ] ; 3 uses
  %i.abn = getelementptr inbounds nuw i8, ptr %.sroa.050.0.i.i.i.i, i64 274 ; 2 uses
  %i.abo = load i16, ptr %i.abn, align 2, !noalias !7707, !noundef !21 ; 3 uses
  %i.abp = icmp ult i16 %i.abo, 11
  br i1 %i.abp, label %bb.dv, label %.invoke.i.i.i.i.i162, !prof !49

bb.du:                                            ; preds = %.invoke.i.i.i.i.i162
  %i.abq = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.abr = icmp eq i64 %.sroa.033.0.i.i.i.i.i, 0
  br i1 %i.abr, label %.body.i.i.i.i, label %.body.i.i.i.i.sink.split

bb.dv:                                            ; preds = %._crit_edge.i.i.i.i
  %i.abs = zext nneg i16 %i.abo to i64            ; 3 uses
  %i.abt = add nuw nsw i16 %i.abo, 1
  store i16 %i.abt, ptr %i.abn, align 2, !noalias !7707
  %i.abu = getelementptr inbounds nuw i8, ptr %.sroa.050.0.i.i.i.i, i64 8
  %i.abv = getelementptr inbounds nuw [24 x i8], ptr %i.abu, i64 %i.abs ; 3 uses
  store i64 %.sroa.033.0.i.i.i.i.i, ptr %i.abv, align 8, !noalias !7667
  %.sroa.562.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.abv, i64 8
  store ptr %.sroa.835.sroa.0.0.i.i.i.i.i, ptr %.sroa.562.0..sroa_idx.i.i.i.i, align 8, !noalias !7667
  %.sroa.763.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.abv, i64 16
  store i64 %.sroa.835.sroa.6.0.i.i.i.i.i, ptr %.sroa.763.0..sroa_idx.i.i.i.i, align 8, !noalias !7667
  %i.abw = getelementptr inbounds nuw i8, ptr %.sroa.050.0.i.i.i.i, i64 276
  %i.abx = getelementptr inbounds nuw i8, ptr %i.abw, i64 %i.abs
  store i8 %.sroa.12.24.extract.trunc.i.i.i.i, ptr %i.abx, align 1, !noalias !7707
  %i.aby = add nuw nsw i64 %i.abs, 1              ; 2 uses
  %i.abz = getelementptr inbounds nuw i8, ptr %.sroa.050.0.i.i.i.i, i64 288
  %i.aca = getelementptr inbounds nuw [8 x i8], ptr %i.abz, i64 %i.aby
  store ptr %.sroa.057.0.lcssa.i.i.i.i, ptr %i.aca, align 8, !noalias !7707
  store ptr %.sroa.050.0.i.i.i.i, ptr %.sroa.057.0.lcssa.i.i.i.i, align 8, !noalias !7708
  %i.acb = trunc nuw nsw i64 %i.aby to i16
  %i.acc = getelementptr inbounds nuw i8, ptr %.sroa.057.0.lcssa.i.i.i.i, i64 272
  store i16 %i.acb, ptr %i.acc, align 8, !noalias !7708
  %i.acd = icmp eq i64 %.sroa.651.0.i.i.i.i, 0
  br i1 %i.acd, label %.loopexit.i.i7.i.i, label %.lr.ph.i29.i.i.i.i.preheader

.lr.ph.i29.i.i.i.i.preheader:                     ; preds = %bb.dv
  %xtraiter1078 = and i64 %.sroa.651.0.i.i.i.i, 7 ; 2 uses
  %lcmp.mod1079.not = icmp eq i64 %xtraiter1078, 0
  br i1 %lcmp.mod1079.not, label %.lr.ph.i29.i.i.i.i.prol.loopexit, label %.lr.ph.i29.i.i.i.i.prol

.lr.ph.i29.i.i.i.i.prol:                          ; preds = %.lr.ph.i29.i.i.i.i.preheader, %.lr.ph.i29.i.i.i.i.prol
  %.sroa.03.06.i30.i.i.i.i.prol = phi i64 [ %i.acl, %.lr.ph.i29.i.i.i.i.prol ], [ %.sroa.651.0.i.i.i.i, %.lr.ph.i29.i.i.i.i.preheader ]
  %.sroa.04.05.i31.i.i.i.i.prol = phi ptr [ %i.ack, %.lr.ph.i29.i.i.i.i.prol ], [ %.sroa.050.0.i.i.i.i, %.lr.ph.i29.i.i.i.i.preheader ] ; 2 uses
  %prol.iter1080 = phi i64 [ %prol.iter1080.next, %.lr.ph.i29.i.i.i.i.prol ], [ 0, %.lr.ph.i29.i.i.i.i.preheader ]
  %i.ace = getelementptr inbounds nuw i8, ptr %.sroa.04.05.i31.i.i.i.i.prol, i64 274
  %i.acf = load i16, ptr %i.ace, align 2, !noalias !7709, !noundef !21 ; 2 uses
  %i.acg = zext nneg i16 %i.acf to i64
  %i.ach = getelementptr inbounds nuw i8, ptr %.sroa.04.05.i31.i.i.i.i.prol, i64 288
  %i.aci = icmp ult i16 %i.acf, 12
  call void @llvm.assume(i1 %i.aci)
  %i.acj = getelementptr inbounds nuw [8 x i8], ptr %i.ach, i64 %i.acg
  %i.ack = load ptr, ptr %i.acj, align 8, !noalias !7710, !nonnull !21, !noundef !21 ; 3 uses
  %i.acl = add i64 %.sroa.03.06.i30.i.i.i.i.prol, -1 ; 2 uses
  %prol.iter1080.next = add i64 %prol.iter1080, 1 ; 2 uses
  %prol.iter1080.cmp.not = icmp eq i64 %prol.iter1080.next, %xtraiter1078
  br i1 %prol.iter1080.cmp.not, label %.lr.ph.i29.i.i.i.i.prol.loopexit, label %.lr.ph.i29.i.i.i.i.prol, !llvm.loop !7516

.lr.ph.i29.i.i.i.i.prol.loopexit:                 ; preds = %.lr.ph.i29.i.i.i.i.prol, %.lr.ph.i29.i.i.i.i.preheader
end_hunk_0
begin_hunk_1_@_ZN4core4iter6traits8iterator8Iterator7collect17hb54f208b3e986fb4E:bb.a
  %.promoted75.i.i99.i.i = phi ptr [ %.promoted75.i.i100.i.i, %bb.aa ], [ %i.dz, %"_ZN4core3ptr106drop_in_place$LT$$LP$alloc..string..String$C$meilisearch_types..facet_values_sort..FacetValuesSort$RP$$GT$17h6f82c279537632b2E.exit18.i.i.i.i.backedge" ] ; 7 uses
  %.sroa.5.sroa.4.0.copyload.i.i.i.i = phi i64 [ %.sroa.5.sroa.4.0.copyload.i.pre.i.i.i, %bb.aa ], [ %.sroa.835.sroa.6.0.i.i.i.i, %"_ZN4core3ptr106drop_in_place$LT$$LP$alloc..string..String$C$meilisearch_types..facet_values_sort..FacetValuesSort$RP$$GT$17h6f82c279537632b2E.exit18.i.i.i.i.backedge" ]
  %.sroa.5.sroa.0.0.copyload.i.i.i.i = phi ptr [ %.sroa.5.sroa.0.0.copyload.pre.i.i.i.i, %bb.aa ], [ %.val12.i.i.i.i, %"_ZN4core3ptr106drop_in_place$LT$$LP$alloc..string..String$C$meilisearch_types..facet_values_sort..FacetValuesSort$RP$$GT$17h6f82c279537632b2E.exit18.i.i.i.i.backedge" ]
  %.sroa.0.0.copyload5.i74.i.i.i.i = phi i64 [ %.promoted.i.i.i.i, %bb.aa ], [ %.sroa.0.0.copyload5.i.i.i.i.i, %"_ZN4core3ptr106drop_in_place$LT$$LP$alloc..string..String$C$meilisearch_types..facet_values_sort..FacetValuesSort$RP$$GT$17h6f82c279537632b2E.exit18.i.i.i.i.backedge" ] ; 2 uses
  %.sroa.5.sroa.5.0.copyload.i.i.i.i = load i64, ptr %.sroa.5.sroa.5.0..sroa.5.0..sroa_idx.sroa_idx.i.i.i.i, align 8, !alias.scope !18850, !noalias !18851
  store i64 -9223372036854775807, ptr %i.b, align 8, !alias.scope !18850, !noalias !18851
  %.not.i.i.i.i = icmp eq i64 %.sroa.0.0.copyload5.i74.i.i.i.i, -9223372036854775807
  br i1 %.not.i.i.i.i, label %bb.ab, label %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h8309819958936269E.exit.i.i.i.i"

bb.ab:                                            ; preds = %"_ZN4core3ptr106drop_in_place$LT$$LP$alloc..string..String$C$meilisearch_types..facet_values_sort..FacetValuesSort$RP$$GT$17h6f82c279537632b2E.exit18.i.i.i.i"
  tail call void @llvm.experimental.noalias.scope.decl(metadata !18852)
  %i.dw = icmp eq ptr %.promoted75.i.i99.i.i, %i.dv
  br i1 %i.dw, label %"_ZN4core3ptr116drop_in_place$LT$$u5b$$LP$alloc..string..String$C$meilisearch_types..facet_values_sort..FacetValuesSort$RP$$u5d$$GT$17h6d8e04d08b74c123E.exit.i.i.i.i.i.i.i", label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.dx = getelementptr inbounds nuw i8, ptr %.promoted75.i.i99.i.i, i64 32 ; 2 uses
  store ptr %i.dx, ptr %.sroa.5.0..sroa_idx.i3.i, align 8, !alias.scope !18853, !noalias !18854
  %.sroa.033.0.copyload34.i.i.i.i = load i64, ptr %.promoted75.i.i99.i.i, align 8, !noalias !18855
  %.sroa.835.0..sroa_idx36.i.i.i.i = getelementptr inbounds nuw i8, ptr %.promoted75.i.i99.i.i, i64 8
  %.sroa.835.sroa.0.0.copyload.i.i.i.i = load ptr, ptr %.sroa.835.0..sroa_idx36.i.i.i.i, align 8, !noalias !18855
  %.sroa.835.sroa.6.0..sroa.835.0..sroa_idx36.sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %.promoted75.i.i99.i.i, i64 16
  %.sroa.835.sroa.6.0.copyload.i.i.i.i = load i64, ptr %.sroa.835.sroa.6.0..sroa.835.0..sroa_idx36.sroa_idx.i.i.i.i, align 8, !noalias !18855
  %.sroa.835.sroa.7.0..sroa.835.0..sroa_idx36.sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %.promoted75.i.i99.i.i, i64 24
  %.sroa.835.sroa.7.0.copyload.i.i.i.i = load i64, ptr %.sroa.835.sroa.7.0..sroa.835.0..sroa_idx36.sroa_idx.i.i.i.i, align 8, !noalias !18855
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
  tail call void @llvm.experimental.noalias.scope.decl(metadata !18856)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !18857)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !18858)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !18859)
  %i.dy = icmp eq ptr %.promoted75.i.i98.i.i, %i.dv
  br i1 %i.dy, label %.thread.i.i.i.i, label %bb.ae

.thread.i.i.i.i:                                  ; preds = %bb.ad
  store i64 -9223372036854775808, ptr %i.b, align 8, !alias.scope !18860, !noalias !18861
  br label %.loopexit86.i.i.i

bb.ae:                                            ; preds = %bb.ad
  %i.dz = getelementptr inbounds nuw i8, ptr %.promoted75.i.i98.i.i, i64 32 ; 5 uses
  store ptr %i.dz, ptr %.sroa.5.0..sroa_idx.i3.i, align 8, !alias.scope !18862, !noalias !18863
  %.sroa.0.0.copyload5.i.i.i.i.i = load i64, ptr %.promoted75.i.i98.i.i, align 8, !noalias !18864 ; 6 uses
  %.sroa.5.0..sroa_idx6.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.promoted75.i.i98.i.i, i64 8
  store i64 %.sroa.0.0.copyload5.i.i.i.i.i, ptr %i.b, align 8, !alias.scope !18860, !noalias !18861
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.4.0..sroa_idx.i2.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.5.0..sroa_idx6.i.i.i.i.i, i64 24, i1 false), !noalias !18851
  %i.ea = icmp ne i64 %.sroa.0.0.copyload5.i.i.i.i.i, -9223372036854775807
  tail call void @llvm.assume(i1 %i.ea)
  %.not10.i.i.i.i = icmp eq i64 %.sroa.0.0.copyload5.i.i.i.i.i, -9223372036854775808
  br i1 %.not10.i.i.i.i, label %.loopexit86.i.i.i, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %.val13.i.i.i.i = load i64, ptr %.sroa.5.sroa.4.0..sroa.5.0..sroa_idx.sroa_idx.i.i.i.i, align 8, !alias.scope !18850, !noalias !18851, !noundef !21
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.835.sroa.0.0.i.i.i.i) ]
  %.not.i.i.i.i.i.i.i5.i = icmp eq i64 %.sroa.835.sroa.6.0.i.i.i.i, %.val13.i.i.i.i
  br i1 %.not.i.i.i.i.i.i.i5.i, label %_ZN4core3cmp9PartialEq2ne17hbe4cb7e26b86de13E.exit.i.i.i.i, label %.loopexit86.i.i.i

_ZN4core3cmp9PartialEq2ne17hbe4cb7e26b86de13E.exit.i.i.i.i: ; preds = %bb.af
  %.val12.i.i.i.i = load ptr, ptr %.sroa.4.0..sroa_idx.i2.i, align 8, !alias.scope !18850, !noalias !18851, !nonnull !21, !noundef !21 ; 2 uses
  %bcmp.i.i.i.i.i.i.i.i = tail call i32 @bcmp(ptr nonnull readonly align 1 %.sroa.835.sroa.0.0.i.i.i.i, ptr nonnull readonly align 1 %.val12.i.i.i.i, i64 %.sroa.835.sroa.6.0.i.i.i.i), !alias.scope !18865, !noalias !18866
  %.not58.i.i.i.i = icmp eq i32 %bcmp.i.i.i.i.i.i.i.i, 0
  br i1 %.not58.i.i.i.i, label %bb.ag, label %.loopexit86.i.i.i

bb.ag:                                            ; preds = %_ZN4core3cmp9PartialEq2ne17hbe4cb7e26b86de13E.exit.i.i.i.i
  %i.eb = icmp eq i64 %.sroa.033.0.i.i.i.i, 0
  br i1 %i.eb, label %"_ZN4core3ptr106drop_in_place$LT$$LP$alloc..string..String$C$meilisearch_types..facet_values_sort..FacetValuesSort$RP$$GT$17h6f82c279537632b2E.exit18.i.i.i.i.backedge", label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.835.sroa.0.0.i.i.i.i, i64 noundef %.sroa.033.0.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #52, !noalias !18867
  br label %"_ZN4core3ptr106drop_in_place$LT$$LP$alloc..string..String$C$meilisearch_types..facet_values_sort..FacetValuesSort$RP$$GT$17h6f82c279537632b2E.exit18.i.i.i.i.backedge"

"_ZN4core3ptr106drop_in_place$LT$$LP$alloc..string..String$C$meilisearch_types..facet_values_sort..FacetValuesSort$RP$$GT$17h6f82c279537632b2E.exit18.i.i.i.i.backedge": ; preds = %bb.ah, %bb.ag
  br label %"_ZN4core3ptr106drop_in_place$LT$$LP$alloc..string..String$C$meilisearch_types..facet_values_sort..FacetValuesSort$RP$$GT$17h6f82c279537632b2E.exit18.i.i.i.i"

.body.i.i.i.sink.split:                           ; preds = %bb.ay, %bb.at
  %.pn.i.i.i.ph = phi { ptr, i32 } [ %i.ib, %bb.at ], [ %i.ls, %bb.ay ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.835.sroa.0.0.i.i.i.i) ]
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.835.sroa.0.0.i.i.i.i, i64 noundef %.sroa.033.0.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #52, !noalias !18848
  br label %.body.i.i.i

.body.i.i.i:                                      ; preds = %.body.i.i.i.sink.split, %bb.ay, %bb.at
  %.pn.i.i.i = phi { ptr, i32 } [ %i.ib, %bb.at ], [ %i.ls, %bb.ay ], [ %.pn.i.i.i.ph, %.body.i.i.i.sink.split ]
  call fastcc void @"_ZN4core3ptr294drop_in_place$LT$alloc..collections..btree..dedup_sorted_iter..DedupSortedIter$LT$alloc..string..String$C$meilisearch_types..facet_values_sort..FacetValuesSort$C$alloc..vec..into_iter..IntoIter$LT$$LP$alloc..string..String$C$meilisearch_types..facet_values_sort..FacetValuesSort$RP$$GT$$GT$$GT$17hca16fda25f1d5b32E"(ptr noalias noundef align 8 dereferenceable(64) %i.b) #55, !noalias !18848
  br label %common.resume.i

.loopexit86.i.i.i:                                ; preds = %_ZN4core3cmp9PartialEq2ne17hbe4cb7e26b86de13E.exit.i.i.i.i, %bb.af, %bb.ae, %.thread.i.i.i.i
  %.promoted75.i.i97.i.i = phi ptr [ %i.dv, %.thread.i.i.i.i ], [ %i.dz, %bb.ae ], [ %i.dz, %bb.af ], [ %i.dz, %_ZN4core3cmp9PartialEq2ne17hbe4cb7e26b86de13E.exit.i.i.i.i ]
  %.promoted.i.pre145.i96.i.i = phi i64 [ -9223372036854775808, %.thread.i.i.i.i ], [ %.sroa.0.0.copyload5.i.i.i.i.i, %_ZN4core3cmp9PartialEq2ne17hbe4cb7e26b86de13E.exit.i.i.i.i ], [ %.sroa.0.0.copyload5.i.i.i.i.i, %bb.af ], [ -9223372036854775808, %bb.ae ]
  %.sroa.12.24.extract.trunc.i.i.i = trunc i64 %.sroa.835.sroa.7.0.i.i.i.i to i8 ; 2 uses
  %i.ec = getelementptr inbounds nuw i8, ptr %.sroa.0.070.i.i.i, i64 274 ; 2 uses
  %i.ed = load i16, ptr %i.ec, align 2, !noalias !18848, !noundef !21 ; 3 uses
  %i.ee = icmp ult i16 %i.ed, 11
  br i1 %i.ee, label %bb.ax, label %.preheader.i.i.i

"_ZN137_$LT$alloc..collections..btree..dedup_sorted_iter..DedupSortedIter$LT$K$C$V$C$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hee815e5a514fab2aE.exit.i.i.i": ; preds = %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h8309819958936269E.exit.i.i.i.i"
  %i.ef = ptrtoint ptr %i.dv to i64
  %i.eg = ptrtoint ptr %.promoted75.i.i98.i.i to i64
  %i.eh = sub nuw i64 %i.ef, %i.eg
  %i.ei = lshr exact i64 %i.eh, 5
  tail call void @llvm.experimental.noalias.scope.decl(metadata !18868)
  %i.ej = icmp eq ptr %i.dv, %.promoted75.i.i98.i.i
  br i1 %i.ej, label %"_ZN4core3ptr116drop_in_place$LT$$u5b$$LP$alloc..string..String$C$meilisearch_types..facet_values_sort..FacetValuesSort$RP$$u5d$$GT$17h6d8e04d08b74c123E.exit.i.i.i.i.i.i.i", label %.lr.ph.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i:                           ; preds = %"_ZN137_$LT$alloc..collections..btree..dedup_sorted_iter..DedupSortedIter$LT$K$C$V$C$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hee815e5a514fab2aE.exit.i.i.i", %"_ZN4core3ptr106drop_in_place$LT$$LP$alloc..string..String$C$meilisearch_types..facet_values_sort..FacetValuesSort$RP$$GT$17h6f82c279537632b2E.exit.i.i.i.i.i.i.i.i"
  %.sroa.0.011.i.i.i.i.i.i.i.i = phi i64 [ %i.el, %"_ZN4core3ptr106drop_in_place$LT$$LP$alloc..string..String$C$meilisearch_types..facet_values_sort..FacetValuesSort$RP$$GT$17h6f82c279537632b2E.exit.i.i.i.i.i.i.i.i" ], [ 0, %"_ZN137_$LT$alloc..collections..btree..dedup_sorted_iter..DedupSortedIter$LT$K$C$V$C$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hee815e5a514fab2aE.exit.i.i.i" ] ; 2 uses
  %i.ek = getelementptr inbounds nuw [32 x i8], ptr %.promoted75.i.i98.i.i, i64 %.sroa.0.011.i.i.i.i.i.i.i.i ; 2 uses
  %i.el = add nuw i64 %.sroa.0.011.i.i.i.i.i.i.i.i, 1 ; 2 uses
  %.val8.i.i.i.i.i.i.i.i = load i64, ptr %i.ek, align 8, !alias.scope !18869, !noalias !18870 ; 2 uses
  %i.em = icmp eq i64 %.val8.i.i.i.i.i.i.i.i, 0
  br i1 %i.em, label %"_ZN4core3ptr106drop_in_place$LT$$LP$alloc..string..String$C$meilisearch_types..facet_values_sort..FacetValuesSort$RP$$GT$17h6f82c279537632b2E.exit.i.i.i.i.i.i.i.i", label %bb.ai

bb.ai:                                            ; preds = %.lr.ph.i.i.i.i.i.i.i.i
  %i.en = getelementptr i8, ptr %i.ek, i64 8
  %.val9.i.i.i.i.i.i.i.i = load ptr, ptr %i.en, align 8, !alias.scope !18868, !noalias !18870, !nonnull !21, !noundef !21
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val9.i.i.i.i.i.i.i.i, i64 noundef %.val8.i.i.i.i.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #52, !noalias !18871
  br label %"_ZN4core3ptr106drop_in_place$LT$$LP$alloc..string..String$C$meilisearch_types..facet_values_sort..FacetValuesSort$RP$$GT$17h6f82c279537632b2E.exit.i.i.i.i.i.i.i.i"

"_ZN4core3ptr106drop_in_place$LT$$LP$alloc..string..String$C$meilisearch_types..facet_values_sort..FacetValuesSort$RP$$GT$17h6f82c279537632b2E.exit.i.i.i.i.i.i.i.i": ; preds = %bb.ai, %.lr.ph.i.i.i.i.i.i.i.i
  %i.eo = icmp eq i64 %i.el, %i.ei
  br i1 %i.eo, label %"_ZN4core3ptr116drop_in_place$LT$$u5b$$LP$alloc..string..String$C$meilisearch_types..facet_values_sort..FacetValuesSort$RP$$u5d$$GT$17h6d8e04d08b74c123E.exit.i.i.i.i.i.i.i", label %.lr.ph.i.i.i.i.i.i.i.i

"_ZN4core3ptr116drop_in_place$LT$$u5b$$LP$alloc..string..String$C$meilisearch_types..facet_values_sort..FacetValuesSort$RP$$u5d$$GT$17h6d8e04d08b74c123E.exit.i.i.i.i.i.i.i": ; preds = %bb.ab, %"_ZN4core3ptr106drop_in_place$LT$$LP$alloc..string..String$C$meilisearch_types..facet_values_sort..FacetValuesSort$RP$$GT$17h6f82c279537632b2E.exit.i.i.i.i.i.i.i.i", %"_ZN137_$LT$alloc..collections..btree..dedup_sorted_iter..DedupSortedIter$LT$K$C$V$C$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hee815e5a514fab2aE.exit.i.i.i"
  %i.ep = icmp eq i64 %.sroa.01.0.copyload, 0
  br i1 %i.ep, label %"_ZN4core3ptr294drop_in_place$LT$alloc..collections..btree..dedup_sorted_iter..DedupSortedIter$LT$alloc..string..String$C$meilisearch_types..facet_values_sort..FacetValuesSort$C$alloc..vec..into_iter..IntoIter$LT$$LP$alloc..string..String$C$meilisearch_types..facet_values_sort..FacetValuesSort$RP$$GT$$GT$$GT$17hca16fda25f1d5b32E.exit.i.i.i", label %bb.aj

bb.aj:                                            ; preds = %"_ZN4core3ptr116drop_in_place$LT$$u5b$$LP$alloc..string..String$C$meilisearch_types..facet_values_sort..FacetValuesSort$RP$$u5d$$GT$17h6d8e04d08b74c123E.exit.i.i.i.i.i.i.i"
  %i.eq = shl nuw i64 %.sroa.01.0.copyload, 5
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.dp, i64 noundef %i.eq, i64 noundef range(i64 1, -9223372036854775807) 8) #52, !noalias !18870
  br label %"_ZN4core3ptr294drop_in_place$LT$alloc..collections..btree..dedup_sorted_iter..DedupSortedIter$LT$alloc..string..String$C$meilisearch_types..facet_values_sort..FacetValuesSort$C$alloc..vec..into_iter..IntoIter$LT$$LP$alloc..string..String$C$meilisearch_types..facet_values_sort..FacetValuesSort$RP$$GT$$GT$$GT$17hca16fda25f1d5b32E.exit.i.i.i"

"_ZN4core3ptr294drop_in_place$LT$alloc..collections..btree..dedup_sorted_iter..DedupSortedIter$LT$alloc..string..String$C$meilisearch_types..facet_values_sort..FacetValuesSort$C$alloc..vec..into_iter..IntoIter$LT$$LP$alloc..string..String$C$meilisearch_types..facet_values_sort..FacetValuesSort$RP$$GT$$GT$$GT$17hca16fda25f1d5b32E.exit.i.i.i": ; preds = %bb.aj, %"_ZN4core3ptr116drop_in_place$LT$$u5b$$LP$alloc..string..String$C$meilisearch_types..facet_values_sort..FacetValuesSort$RP$$u5d$$GT$17h6d8e04d08b74c123E.exit.i.i.i.i.i.i.i"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !18848
  %i.er = icmp eq i64 %.sroa.8.0.i.i, 0
  br i1 %i.er, label %.loopexit.i, label %.lr.ph.i17.i.i.i

.lr.ph.i17.i.i.i:                                 ; preds = %"_ZN4core3ptr294drop_in_place$LT$alloc..collections..btree..dedup_sorted_iter..DedupSortedIter$LT$alloc..string..String$C$meilisearch_types..facet_values_sort..FacetValuesSort$C$alloc..vec..into_iter..IntoIter$LT$$LP$alloc..string..String$C$meilisearch_types..facet_values_sort..FacetValuesSort$RP$$GT$$GT$$GT$17hca16fda25f1d5b32E.exit.i.i.i", %"_ZN5alloc11collections5btree4node29BalancingContext$LT$K$C$V$GT$15bulk_steal_left17h0f69c75fc45b6594E.exit.i.i.i.i"
  %.sroa.02.010.i.i.i.i = phi i64 [ %i.ez, %"_ZN5alloc11collections5btree4node29BalancingContext$LT$K$C$V$GT$15bulk_steal_left17h0f69c75fc45b6594E.exit.i.i.i.i" ], [ %.sroa.8.0.i.i, %"_ZN4core3ptr294drop_in_place$LT$alloc..collections..btree..dedup_sorted_iter..DedupSortedIter$LT$alloc..string..String$C$meilisearch_types..facet_values_sort..FacetValuesSort$C$alloc..vec..into_iter..IntoIter$LT$$LP$alloc..string..String$C$meilisearch_types..facet_values_sort..FacetValuesSort$RP$$GT$$GT$$GT$17hca16fda25f1d5b32E.exit.i.i.i" ]
  %.sroa.03.09.i.i.i.i = phi ptr [ %i.fc, %"_ZN5alloc11collections5btree4node29BalancingContext$LT$K$C$V$GT$15bulk_steal_left17h0f69c75fc45b6594E.exit.i.i.i.i" ], [ %.sroa.0.0.i.i, %"_ZN4core3ptr294drop_in_place$LT$alloc..collections..btree..dedup_sorted_iter..DedupSortedIter$LT$alloc..string..String$C$meilisearch_types..facet_values_sort..FacetValuesSort$C$alloc..vec..into_iter..IntoIter$LT$$LP$alloc..string..String$C$meilisearch_types..facet_values_sort..FacetValuesSort$RP$$GT$$GT$$GT$17hca16fda25f1d5b32E.exit.i.i.i" ] ; 4 uses
  %i.es = getelementptr inbounds nuw i8, ptr %.sroa.03.09.i.i.i.i, i64 274
  %i.et = load i16, ptr %i.es, align 2, !noalias !18848, !noundef !21 ; 3 uses
  %.not.i18.i.i.i = icmp eq i16 %i.et, 0
  br i1 %.not.i18.i.i.i, label %.noexc.i.i.i, label %bb.ak, !prof !23

.noexc.i.i.i:                                     ; preds = %.lr.ph.i17.i.i.i
  tail call void @_ZN4core9panicking5panic17ha264d2bb233f2b69E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @1107, i64 noundef 25, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1109) #57, !noalias !18799
  unreachable

bb.ak:                                            ; preds = %.lr.ph.i17.i.i.i
  %i.eu = zext nneg i16 %i.et to i64
  %i.ev = add nsw i64 %i.eu, -1                   ; 3 uses
  %i.ew = getelementptr inbounds nuw i8, ptr %.sroa.03.09.i.i.i.i, i64 288
  %i.ex = getelementptr inbounds nuw [8 x i8], ptr %i.ew, i64 %i.ev ; 2 uses
  %i.ey = load ptr, ptr %i.ex, align 8, !noalias !18872, !nonnull !21, !noundef !21 ; 4 uses
  %i.ez = add i64 %.sroa.02.010.i.i.i.i, -1       ; 3 uses
  %i.fa = icmp ult i16 %i.et, 12
  tail call void @llvm.assume(i1 %i.fa)
  %i.fb = getelementptr inbounds nuw i8, ptr %i.ex, i64 8
  %i.fc = load ptr, ptr %i.fb, align 8, !noalias !18873, !nonnull !21, !noundef !21 ; 16 uses
  %i.fd = getelementptr inbounds nuw i8, ptr %i.fc, i64 274 ; 2 uses
  %i.fe = load i16, ptr %i.fd, align 2, !noalias !18848, !noundef !21 ; 3 uses
  %i.ff = icmp ult i16 %i.fe, 5
  br i1 %i.ff, label %bb.al, label %"_ZN5alloc11collections5btree4node29BalancingContext$LT$K$C$V$GT$15bulk_steal_left17h0f69c75fc45b6594E.exit.i.i.i.i"

"_ZN5alloc11collections5btree4node29BalancingContext$LT$K$C$V$GT$15bulk_steal_left17h0f69c75fc45b6594E.exit.i.i.i.i": ; preds = %"_ZN5alloc11collections5btree4node29BalancingContext$LT$K$C$V$GT$15bulk_steal_left17h0f69c75fc45b6594E.exit.loopexit.i.i.i.i", %bb.ak
  %i.fg = icmp eq i64 %i.ez, 0
  br i1 %i.fg, label %.loopexit.i, label %.lr.ph.i17.i.i.i

bb.al:                                            ; preds = %bb.ak
  %narrow.i.i.i.i = sub nuw nsw i16 5, %i.fe      ; 2 uses
  %i.fh = zext nneg i16 %narrow.i.i.i.i to i64    ; 5 uses
  %i.fi = getelementptr inbounds nuw i8, ptr %i.ey, i64 274 ; 2 uses
  %i.fj = load i16, ptr %i.fi, align 2, !noalias !18874, !noundef !21 ; 2 uses
  %i.fk = zext nneg i16 %i.fe to i64              ; 3 uses
  %.not.i.i.i.i.i = icmp ugt i16 %narrow.i.i.i.i, %i.fj
  br i1 %.not.i.i.i.i.i, label %.noexc19.i.i.i, label %_ZN5alloc11collections5btree4node13move_to_slice17h226861ec426ab000E.exit.i.i.i.i.i, !prof !23

.noexc19.i.i.i:                                   ; preds = %bb.al
  tail call void @_ZN4core9panicking5panic17ha264d2bb233f2b69E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @1123, i64 noundef 39, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1124) #57, !noalias !18799
  unreachable

_ZN5alloc11collections5btree4node13move_to_slice17h226861ec426ab000E.exit.i.i.i.i.i: ; preds = %bb.al
  %i.fl = zext i16 %i.fj to i64                   ; 2 uses
  %i.fm = sub nuw nsw i64 %i.fl, %i.fh            ; 4 uses
  %i.fn = trunc nuw i64 %i.fm to i16
  store i16 %i.fn, ptr %i.fi, align 2, !noalias !18874
  store i16 5, ptr %i.fd, align 2, !noalias !18874
  %i.fo = getelementptr inbounds nuw i8, ptr %i.fc, i64 8 ; 4 uses
  %i.fp = getelementptr inbounds nuw [24 x i8], ptr %i.fo, i64 %i.fh
  %i.fq = mul nuw nsw i64 %i.fk, 24
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.fp, ptr nonnull align 8 %i.fo, i64 %i.fq, i1 false), !alias.scope !18875, !noalias !18874
  %i.fr = getelementptr inbounds nuw i8, ptr %i.fc, i64 276 ; 4 uses
  %i.fs = getelementptr inbounds nuw i8, ptr %i.fr, i64 %i.fh
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.fs, ptr nonnull align 2 %i.fr, i64 %i.fk, i1 false), !alias.scope !18876, !noalias !18874
  %i.ft = add nuw nsw i64 %i.fm, 1                ; 4 uses
  %i.fu = sub nuw nsw i64 %i.fl, %i.ft            ; 4 uses
  %i.fv = getelementptr inbounds nuw i8, ptr %i.ey, i64 8 ; 2 uses
  %i.fw = getelementptr inbounds nuw [24 x i8], ptr %i.fv, i64 %i.ft
  %i.fx = mul nuw nsw i64 %i.fu, 24
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.fo, ptr nonnull readonly align 8 %i.fw, i64 %i.fx, i1 false), !alias.scope !18877, !noalias !18874
  %i.fy = getelementptr inbounds nuw i8, ptr %i.ey, i64 276 ; 2 uses
  %i.fz = getelementptr inbounds nuw i8, ptr %i.fy, i64 %i.ft
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 2 %i.fr, ptr nonnull readonly align 1 %i.fz, i64 range(i64 0, 65536) %i.fu, i1 false), !alias.scope !18878, !noalias !18874
  %i.ga = getelementptr inbounds nuw [24 x i8], ptr %i.fv, i64 %i.fm
  %i.gb = getelementptr inbounds nuw i8, ptr %i.fy, i64 %i.fm
  %i.gc = load i8, ptr %i.gb, align 1, !range !35, !noalias !18874, !noundef !21
  %i.gd = getelementptr inbounds nuw i8, ptr %.sroa.03.09.i.i.i.i, i64 8
  %i.ge = getelementptr inbounds nuw [24 x i8], ptr %i.gd, i64 %i.ev ; 2 uses
  %i.gf = getelementptr inbounds nuw i8, ptr %.sroa.03.09.i.i.i.i, i64 276
  %i.gg = getelementptr inbounds nuw i8, ptr %i.gf, i64 %i.ev ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %i.ge, i64 24, i1 false), !noalias !18874
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ge, ptr noundef nonnull align 8 dereferenceable(24) %i.ga, i64 24, i1 false), !noalias !18874
  %i.gh = load i8, ptr %i.gg, align 1, !range !35, !noalias !18879, !noundef !21
  store i8 %i.gc, ptr %i.gg, align 1, !noalias !18879
  %i.gi = getelementptr inbounds nuw [24 x i8], ptr %i.fo, i64 %i.fu
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.gi, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false), !noalias !18874
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.gj = getelementptr inbounds nuw i8, ptr %i.fr, i64 %i.fu
  store i8 %i.gh, ptr %i.gj, align 1, !noalias !18874
  %cond.i.i.i.i = icmp eq i64 %i.ez, 0
  br i1 %cond.i.i.i.i, label %.loopexit.i, label %"_ZN5alloc11collections5btree4node29BalancingContext$LT$K$C$V$GT$15bulk_steal_left17h0f69c75fc45b6594E.exit.loopexit.i.i.i.i"

"_ZN5alloc11collections5btree4node29BalancingContext$LT$K$C$V$GT$15bulk_steal_left17h0f69c75fc45b6594E.exit.loopexit.i.i.i.i": ; preds = %_ZN5alloc11collections5btree4node13move_to_slice17h226861ec426ab000E.exit.i.i.i.i.i
  %i.gk = getelementptr inbounds nuw i8, ptr %i.fc, i64 288 ; 4 uses
  %i.gl = getelementptr inbounds nuw [8 x i8], ptr %i.gk, i64 %i.fh
  %i.gm = shl nuw nsw i64 %i.fk, 3
  %i.gn = add nuw nsw i64 %i.gm, 8
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.gl, ptr noundef nonnull align 8 dereferenceable(1) %i.gk, i64 %i.gn, i1 false), !alias.scope !18880, !noalias !18874
  %i.go = getelementptr inbounds nuw i8, ptr %i.ey, i64 288
  %i.gp = getelementptr inbounds nuw [8 x i8], ptr %i.go, i64 %i.ft
  %i.gq = shl nuw nsw i64 %i.fh, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.gk, ptr noundef nonnull readonly align 8 dereferenceable(1) %i.gp, i64 %i.gq, i1 false), !alias.scope !18881, !noalias !18874
  %i.gr = load ptr, ptr %i.gk, align 8, !noalias !18882, !nonnull !21, !noundef !21 ; 2 uses
  store ptr %i.fc, ptr %i.gr, align 8, !noalias !18883
  %i.gs = getelementptr inbounds nuw i8, ptr %i.gr, i64 272
  store i16 0, ptr %i.gs, align 8, !noalias !18883
  %i.gt = getelementptr inbounds nuw i8, ptr %i.fc, i64 296
  %i.gu = load ptr, ptr %i.gt, align 8, !noalias !18882, !nonnull !21, !noundef !21 ; 2 uses
  store ptr %i.fc, ptr %i.gu, align 8, !noalias !18883
  %i.gv = getelementptr inbounds nuw i8, ptr %i.gu, i64 272
  store i16 1, ptr %i.gv, align 8, !noalias !18883
  %i.gw = getelementptr inbounds nuw i8, ptr %i.fc, i64 304
  %i.gx = load ptr, ptr %i.gw, align 8, !noalias !18882, !nonnull !21, !noundef !21 ; 2 uses
  store ptr %i.fc, ptr %i.gx, align 8, !noalias !18883
  %i.gy = getelementptr inbounds nuw i8, ptr %i.gx, i64 272
  store i16 2, ptr %i.gy, align 8, !noalias !18883
  %i.gz = getelementptr inbounds nuw i8, ptr %i.fc, i64 312
  %i.ha = load ptr, ptr %i.gz, align 8, !noalias !18882, !nonnull !21, !noundef !21 ; 2 uses
  store ptr %i.fc, ptr %i.ha, align 8, !noalias !18883
  %i.hb = getelementptr inbounds nuw i8, ptr %i.ha, i64 272
  store i16 3, ptr %i.hb, align 8, !noalias !18883
  %i.hc = getelementptr inbounds nuw i8, ptr %i.fc, i64 320
  %i.hd = load ptr, ptr %i.hc, align 8, !noalias !18882, !nonnull !21, !noundef !21 ; 2 uses
  store ptr %i.fc, ptr %i.hd, align 8, !noalias !18883
  %i.he = getelementptr inbounds nuw i8, ptr %i.hd, i64 272
  store i16 4, ptr %i.he, align 8, !noalias !18883
  %i.hf = getelementptr inbounds nuw i8, ptr %i.fc, i64 328
  %i.hg = load ptr, ptr %i.hf, align 8, !noalias !18882, !nonnull !21, !noundef !21 ; 2 uses
  store ptr %i.fc, ptr %i.hg, align 8, !noalias !18883
  %i.hh = getelementptr inbounds nuw i8, ptr %i.hg, i64 272
  store i16 5, ptr %i.hh, align 8, !noalias !18883
  br label %"_ZN5alloc11collections5btree4node29BalancingContext$LT$K$C$V$GT$15bulk_steal_left17h0f69c75fc45b6594E.exit.i.i.i.i"

.preheader.i.i.i:                                 ; preds = %.loopexit86.i.i.i, %bb.am
  %.sroa.5.0.i.i.i = phi i64 [ %i.hj, %bb.am ], [ 0, %.loopexit86.i.i.i ]
  %.sroa.0.0.i.i.i = phi ptr [ %i.hi, %bb.am ], [ %.sroa.0.070.i.i.i, %.loopexit86.i.i.i ]
  %i.hi = load ptr, ptr %.sroa.0.0.i.i.i, align 8, !noalias !18884, !noundef !21 ; 4 uses
  %.not.i22.i.i.i = icmp eq ptr %i.hi, null
  br i1 %.not.i22.i.i.i, label %bb.an, label %bb.am

bb.am:                                            ; preds = %.preheader.i.i.i
  %i.hj = add i64 %.sroa.5.0.i.i.i, 1             ; 2 uses
  %i.hk = getelementptr inbounds nuw i8, ptr %i.hi, i64 274
  %i.hl = load i16, ptr %i.hk, align 2, !noalias !18848, !noundef !21
  %i.hm = icmp ult i16 %i.hl, 11
  br i1 %i.hm, label %.loopexit85.i.i.i, label %.preheader.i.i.i

bb.an:                                            ; preds = %.preheader.i.i.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.i.i) ]
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #52, !noalias !18885
  %i.hn = tail call noalias noundef align 8 dereferenceable_or_null(384) ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef 384, i64 noundef range(i64 1, -9223372036854775807) 8) #52, !noalias !18885 ; 7 uses
  %i.ho = icmp eq ptr %i.hn, null
  br i1 %i.ho, label %bb.ao, label %bb.aq, !prof !23

bb.ao:                                            ; preds = %bb.an
  invoke void @_ZN5alloc5alloc18handle_alloc_error17h8f86e24af4223f3dE(i64 noundef 8, i64 noundef 384) #57
          to label %.noexc.i.i.i.i unwind label %bb.ap, !noalias !18885

.noexc.i.i.i.i:                                   ; preds = %bb.ao
  unreachable

bb.ap:                                            ; preds = %bb.ao
  %i.hp = landingpad { ptr, i32 }
          cleanup                                 ; 0 uses
  tail call void @llvm.trap()
  unreachable

bb.aq:                                            ; preds = %bb.an
  store ptr null, ptr %i.hn, align 8, !noalias !18885
  %i.hq = getelementptr inbounds nuw i8, ptr %i.hn, i64 274
  store i16 0, ptr %i.hq, align 2, !noalias !18885
  %i.hr = getelementptr inbounds nuw i8, ptr %i.hn, i64 288
  store ptr %.sroa.0.0.i.i, ptr %i.hr, align 8, !noalias !18885
  %i.hs = add i64 %.sroa.8.0.i.i, 1               ; 2 uses
  store ptr %i.hn, ptr %.sroa.0.0.i.i, align 8, !noalias !18886
  %i.ht = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i, i64 272
  store i16 0, ptr %i.ht, align 8, !noalias !18887
  br label %.loopexit85.i.i.i

.loopexit85.i.i.i:                                ; preds = %bb.am, %bb.aq
  %.sroa.8.1.i.i = phi i64 [ %i.hs, %bb.aq ], [ %.sroa.8.0.i.i, %bb.am ] ; 3 uses
  %.sroa.0.1.i.i = phi ptr [ %i.hn, %bb.aq ], [ %.sroa.0.0.i.i, %bb.am ] ; 3 uses
  %.sroa.651.0.i.i.i = phi i64 [ %i.hs, %bb.aq ], [ %i.hj, %bb.am ] ; 6 uses
  %.sroa.050.0.i.i.i = phi ptr [ %i.hn, %bb.aq ], [ %i.hi, %bb.am ] ; 8 uses
  %i.hu = add i64 %.sroa.651.0.i.i.i, -1          ; 2 uses
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #52, !noalias !18848
  %i.hv = tail call noalias noundef align 8 dereferenceable_or_null(288) ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef 288, i64 noundef range(i64 1, -9223372036854775807) 8) #52, !noalias !18848 ; 5 uses
  %i.hw = icmp eq ptr %i.hv, null
  br i1 %i.hw, label %bb.ar, label %bb.as, !prof !23

bb.ar:                                            ; preds = %.loopexit85.i.i.i
  invoke void @_ZN5alloc5alloc18handle_alloc_error17h8f86e24af4223f3dE(i64 noundef 8, i64 noundef 288) #57
          to label %.noexc23.i.i.i unwind label %bb.ay, !noalias !18848

.noexc23.i.i.i:                                   ; preds = %bb.ar
  unreachable

bb.as:                                            ; preds = %.loopexit85.i.i.i
  store ptr null, ptr %i.hv, align 8, !noalias !18848
  %i.hx = getelementptr inbounds nuw i8, ptr %i.hv, i64 274
  store i16 0, ptr %i.hx, align 2, !noalias !18848
  %.not.i.i.i = icmp eq i64 %i.hu, 0
  br i1 %.not.i.i.i, label %._crit_edge.i.i.i, label %.lr.ph.i.i.i

.invoke.i.i.i.i:                                  ; preds = %._crit_edge.i.i.i
  invoke void @_ZN4core9panicking5panic17ha264d2bb233f2b69E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @1112, i64 noundef 32, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @1116) #57
          to label %.cont.i.i.i.i unwind label %bb.at, !noalias !18888

.cont.i.i.i.i:                                    ; preds = %.invoke.i.i.i.i
  unreachable

._crit_edge.i.i.i:                                ; preds = %_ZN5alloc11collections5btree3mem7replace17h0d89ec3fbd90fde1E.exit35.i.i.i, %bb.as
  %.sroa.057.0.lcssa.i.i.i = phi ptr [ %i.hv, %bb.as ], [ %i.lf, %_ZN5alloc11collections5btree3mem7replace17h0d89ec3fbd90fde1E.exit35.i.i.i ] ; 3 uses
  %i.hy = getelementptr inbounds nuw i8, ptr %.sroa.050.0.i.i.i, i64 274 ; 2 uses
  %i.hz = load i16, ptr %i.hy, align 2, !noalias !18888, !noundef !21 ; 3 uses
  %i.ia = icmp ult i16 %i.hz, 11
  br i1 %i.ia, label %bb.au, label %.invoke.i.i.i.i, !prof !49

bb.at:                                            ; preds = %.invoke.i.i.i.i
  %i.ib = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ic = icmp eq i64 %.sroa.033.0.i.i.i.i, 0
  br i1 %i.ic, label %.body.i.i.i, label %.body.i.i.i.sink.split

bb.au:                                            ; preds = %._crit_edge.i.i.i
  %i.id = zext nneg i16 %i.hz to i64              ; 3 uses
  %i.ie = add nuw nsw i16 %i.hz, 1
  store i16 %i.ie, ptr %i.hy, align 2, !noalias !18888
  %i.if = getelementptr inbounds nuw i8, ptr %.sroa.050.0.i.i.i, i64 8
  %i.ig = getelementptr inbounds nuw [24 x i8], ptr %i.if, i64 %i.id ; 3 uses
  store i64 %.sroa.033.0.i.i.i.i, ptr %i.ig, align 8, !noalias !18848
  %.sroa.562.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.ig, i64 8
  store ptr %.sroa.835.sroa.0.0.i.i.i.i, ptr %.sroa.562.0..sroa_idx.i.i.i, align 8, !noalias !18848
  %.sroa.763.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.ig, i64 16
  store i64 %.sroa.835.sroa.6.0.i.i.i.i, ptr %.sroa.763.0..sroa_idx.i.i.i, align 8, !noalias !18848
  %i.ih = getelementptr inbounds nuw i8, ptr %.sroa.050.0.i.i.i, i64 276
  %i.ii = getelementptr inbounds nuw i8, ptr %i.ih, i64 %i.id
  store i8 %.sroa.12.24.extract.trunc.i.i.i, ptr %i.ii, align 1, !noalias !18888
  %i.ij = add nuw nsw i64 %i.id, 1                ; 2 uses
  %i.ik = getelementptr inbounds nuw i8, ptr %.sroa.050.0.i.i.i, i64 288
  %i.il = getelementptr inbounds nuw [8 x i8], ptr %i.ik, i64 %i.ij
  store ptr %.sroa.057.0.lcssa.i.i.i, ptr %i.il, align 8, !noalias !18888
  store ptr %.sroa.050.0.i.i.i, ptr %.sroa.057.0.lcssa.i.i.i, align 8, !noalias !18889
  %i.im = trunc nuw nsw i64 %i.ij to i16
  %i.in = getelementptr inbounds nuw i8, ptr %.sroa.057.0.lcssa.i.i.i, i64 272
  store i16 %i.im, ptr %i.in, align 8, !noalias !18889
  %i.io = icmp eq i64 %.sroa.651.0.i.i.i, 0
  br i1 %i.io, label %.loopexit.i.i.i, label %.lr.ph.i29.i.i.i.preheader

.lr.ph.i29.i.i.i.preheader:                       ; preds = %bb.au
  %xtraiter = and i64 %.sroa.651.0.i.i.i, 7       ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i29.i.i.i.prol.loopexit, label %.lr.ph.i29.i.i.i.prol

.lr.ph.i29.i.i.i.prol:                            ; preds = %.lr.ph.i29.i.i.i.preheader, %.lr.ph.i29.i.i.i.prol
  %.sroa.03.06.i30.i.i.i.prol = phi i64 [ %i.iw, %.lr.ph.i29.i.i.i.prol ], [ %.sroa.651.0.i.i.i, %.lr.ph.i29.i.i.i.preheader ]
  %.sroa.04.05.i31.i.i.i.prol = phi ptr [ %i.iv, %.lr.ph.i29.i.i.i.prol ], [ %.sroa.050.0.i.i.i, %.lr.ph.i29.i.i.i.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i29.i.i.i.prol ], [ 0, %.lr.ph.i29.i.i.i.preheader ]
  %i.ip = getelementptr inbounds nuw i8, ptr %.sroa.04.05.i31.i.i.i.prol, i64 274
  %i.iq = load i16, ptr %i.ip, align 2, !noalias !18890, !noundef !21 ; 2 uses
  %i.ir = zext nneg i16 %i.iq to i64
  %i.is = getelementptr inbounds nuw i8, ptr %.sroa.04.05.i31.i.i.i.prol, i64 288
  %i.it = icmp ult i16 %i.iq, 12
  tail call void @llvm.assume(i1 %i.it)
  %i.iu = getelementptr inbounds nuw [8 x i8], ptr %i.is, i64 %i.ir
  %i.iv = load ptr, ptr %i.iu, align 8, !noalias !18891, !nonnull !21, !noundef !21 ; 3 uses
  %i.iw = add i64 %.sroa.03.06.i30.i.i.i.prol, -1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i29.i.i.i.prol.loopexit, label %.lr.ph.i29.i.i.i.prol, !llvm.loop !18786

.lr.ph.i29.i.i.i.prol.loopexit:                   ; preds = %.lr.ph.i29.i.i.i.prol, %.lr.ph.i29.i.i.i.preheader
end_hunk_1
