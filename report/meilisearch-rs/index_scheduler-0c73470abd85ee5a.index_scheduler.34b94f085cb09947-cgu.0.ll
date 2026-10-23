Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/meilisearch-rs/original/index_scheduler-0c73470abd85ee5a.index_scheduler.34b94f085cb09947-cgu.0?download=true
inline.NumInlined: 57300
inline.NumDeleted: 23973
loop-unroll.NumCompletelyUnrolled: 215
loop-unroll.NumRuntimeUnrolled: 564
loop-unroll.NumUnrolled: 782
loop-unroll.NumUnrolledNotLatch: 6
begin_hunk_0_@"_ZN106_$LT$core..iter..adapters..GenericShunt$LT$I$C$R$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h7c2148e46e0dc8ebE":bb.a
  %common.resume.op.i.i.i = phi { ptr, i32 } [ %i.te, %bb.gl ], [ %eh.lpad-body.i.i.i.i, %.body.i.i.i.i ], [ %i.te, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i4.i.i.i.i.i" ], [ %i.abs, %bb.is ], [ %i.wb, %bb.if ], [ %i.wb, %"_ZN4core3ptr70drop_in_place$LT$core..option..Option$LT$alloc..string..String$GT$$GT$17hd9220220a7cf1ae9E.exit242.i.i.i.i.i.i" ]
  resume { ptr, i32 } %common.resume.op.i.i.i

bb.gg:                                            ; preds = %.body.i.i.i.i
  %i.sw = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #80, !noalias !4091
  unreachable

bb.gh:                                            ; preds = %bb.gf
  call fastcc void @"_ZN4core3ptr77drop_in_place$LT$index_scheduler..upgrade..v1_49..LegacyDynamicSearchRule$GT$17ha9e4c993e5c4e1aaE"(ptr noalias noundef align 8 dereferenceable(120) %i.dz), !noalias !4091
  br label %"_ZN107_$LT$heed..iterator..iter..RoIter$LT$KC$C$DC$C$IM$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h52cab52ceeaf9a3cE.exit.thread120.i.i.i"

bb.gi:                                            ; preds = %bb.gf
  %i.sx = load ptr, ptr %i.sq, align 8, !invariant.load !57, !noalias !4292 ; 2 uses
  %.not.i41.i.i.i.i = icmp eq ptr %i.sx, null
  br i1 %.not.i41.i.i.i.i, label %bb.gk, label %bb.gj

bb.gj:                                            ; preds = %bb.gi
  invoke void %i.sx(ptr noundef nonnull %.val2.i.i.i.i.i)
          to label %bb.gk unwind label %bb.gl, !noalias !4292

bb.gk:                                            ; preds = %bb.gj, %bb.gi
  %i.sy = getelementptr inbounds nuw i8, ptr %i.sq, i64 8
  %i.sz = load i64, ptr %i.sy, align 8, !range !56, !invariant.load !57, !noalias !4292 ; 2 uses
  %i.ta = getelementptr inbounds nuw i8, ptr %i.sq, i64 16
  %i.tb = load i64, ptr %i.ta, align 8, !range !90, !invariant.load !57, !noalias !4292 ; 2 uses
  %i.tc = icmp ult i64 %i.tb, -9223372036854775807
  call void @llvm.assume(i1 %i.tc)
  %i.td = icmp eq i64 %i.sz, 0
  br i1 %i.td, label %"_ZN107_$LT$heed..iterator..iter..RoIter$LT$KC$C$DC$C$IM$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h52cab52ceeaf9a3cE.exit.thread120.i.i.i", label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i.i.i"

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i.i.i": ; preds = %bb.gk
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val2.i.i.i.i.i, i64 noundef %i.sz, i64 noundef range(i64 1, -9223372036854775807) %i.tb) #77, !noalias !4292
  br label %"_ZN107_$LT$heed..iterator..iter..RoIter$LT$KC$C$DC$C$IM$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h52cab52ceeaf9a3cE.exit.thread120.i.i.i"

bb.gl:                                            ; preds = %bb.gj
  %i.te = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.tf = getelementptr inbounds nuw i8, ptr %i.sq, i64 8
  %i.tg = load i64, ptr %i.tf, align 8, !range !56, !invariant.load !57, !noalias !4292 ; 2 uses
  %i.th = getelementptr inbounds nuw i8, ptr %i.sq, i64 16
  %i.ti = load i64, ptr %i.th, align 8, !range !90, !invariant.load !57, !noalias !4292 ; 2 uses
  %i.tj = icmp ult i64 %i.ti, -9223372036854775807
  call void @llvm.assume(i1 %i.tj)
  %i.tk = icmp eq i64 %i.tg, 0
  br i1 %i.tk, label %common.resume.i.i.i, label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i4.i.i.i.i.i"

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i4.i.i.i.i.i": ; preds = %bb.gl
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val2.i.i.i.i.i, i64 noundef %i.tg, i64 noundef range(i64 1, -9223372036854775807) %i.ti) #77, !noalias !4292
  br label %common.resume.i.i.i

"_ZN107_$LT$heed..iterator..iter..RoIter$LT$KC$C$DC$C$IM$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h52cab52ceeaf9a3cE.exit.thread120.i.i.i.loopexit": ; preds = %bb.ge
  %i.tl = insertelement <2 x ptr> poison, ptr %.val2.i.i.i.i.i, i64 0
  %i.tm = insertelement <2 x ptr> %i.tl, ptr %i.sq, i64 1
  br label %"_ZN107_$LT$heed..iterator..iter..RoIter$LT$KC$C$DC$C$IM$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h52cab52ceeaf9a3cE.exit.thread120.i.i.i"

"_ZN107_$LT$heed..iterator..iter..RoIter$LT$KC$C$DC$C$IM$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h52cab52ceeaf9a3cE.exit.thread120.i.i.i": ; preds = %"_ZN107_$LT$heed..iterator..iter..RoIter$LT$KC$C$DC$C$IM$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h52cab52ceeaf9a3cE.exit.thread120.i.i.i.loopexit", %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i.i.i", %bb.gk, %bb.gh
  %i.tn = phi <2 x ptr> [ %i.su, %bb.gk ], [ %i.su, %bb.gh ], [ %i.su, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i.i.i" ], [ %i.tm, %"_ZN107_$LT$heed..iterator..iter..RoIter$LT$KC$C$DC$C$IM$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h52cab52ceeaf9a3cE.exit.thread120.i.i.i.loopexit" ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cb), !noalias !4089
  br label %.thread.i.i.i

.thread.i.i.i:                                    ; preds = %"_ZN107_$LT$heed..iterator..iter..RoIter$LT$KC$C$DC$C$IM$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h52cab52ceeaf9a3cE.exit.thread120.i.i.i", %"_ZN107_$LT$heed..iterator..iter..RoIter$LT$KC$C$DC$C$IM$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h52cab52ceeaf9a3cE.exit.thread82.i.i.i"
  %.sroa.823.28.insert.insert.le1351.i.i.i = phi i64 [ 3, %"_ZN107_$LT$heed..iterator..iter..RoIter$LT$KC$C$DC$C$IM$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h52cab52ceeaf9a3cE.exit.thread120.i.i.i" ], [ %.sroa.13.24.copyload.i.i.i, %"_ZN107_$LT$heed..iterator..iter..RoIter$LT$KC$C$DC$C$IM$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h52cab52ceeaf9a3cE.exit.thread82.i.i.i" ] ; 2 uses
  %i.to = phi <2 x ptr> [ %i.tn, %"_ZN107_$LT$heed..iterator..iter..RoIter$LT$KC$C$DC$C$IM$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h52cab52ceeaf9a3cE.exit.thread120.i.i.i" ], [ %i.fb, %"_ZN107_$LT$heed..iterator..iter..RoIter$LT$KC$C$DC$C$IM$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h52cab52ceeaf9a3cE.exit.thread82.i.i.i" ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cc), !noalias !4089
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r), !noalias !4293
  %i.tp = ptrtoint <2 x ptr> %i.to to <2 x i64>   ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !noalias !4293
  %i.tq = load i64, ptr %i.ce, align 8, !range !80, !alias.scope !4294, !noalias !4295, !noundef !57
  %i.tr = icmp eq i64 %i.tq, 152
  br i1 %i.tr, label %"_ZN115_$LT$core..iter..adapters..filter_map..FilterMap$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$8try_fold17hceb1961079ebe3acE.exit.thread43.i", label %bb.ir

bb.gm:                                            ; preds = %bb.ge
  %i.ts = load ptr, ptr %i.ea, align 8, !noalias !4089, !nonnull !57, !align !64, !noundef !57
  %i.tt = load i64, ptr %i.eb, align 8, !noalias !4089, !noundef !57
  %.sroa.18.16.copyload.i.i.i = load ptr, ptr %.sroa.9.0..sroa_idx.i.i.i.i, align 8, !noalias !4092 ; 5 uses
  %.sroa.20.sroa.0.0.copyload.i.i.i = load i64, ptr %.sroa.20.16..sroa_idx.i.i.i, align 8, !noalias !4092
  %.sroa.20.sroa.6.0.copyload.i.i.i = load i64, ptr %.sroa.20.sroa.6.0..sroa.20.16..sroa_idx.sroa_idx.i.i.i, align 8, !noalias !4092 ; 5 uses
  %.sroa.20.sroa.7.0.copyload.i.i.i = load ptr, ptr %.sroa.20.sroa.7.0..sroa.20.16..sroa_idx.sroa_idx.i.i.i, align 8, !noalias !4092 ; 7 uses
  %.sroa.20.sroa.8.0.copyload.i.i.i = load i64, ptr %.sroa.20.sroa.8.0..sroa.20.16..sroa_idx.sroa_idx.i.i.i, align 8, !noalias !4092 ; 3 uses
  %.sroa.20.sroa.9.0.copyload.i.i.i = load i64, ptr %.sroa.20.sroa.9.0..sroa.20.16..sroa_idx.sroa_idx.i.i.i, align 8, !noalias !4092 ; 3 uses
  %.sroa.20.sroa.10.0.copyload.i.i.i = load ptr, ptr %.sroa.20.sroa.10.0..sroa.20.16..sroa_idx.sroa_idx.i.i.i, align 8, !noalias !4092 ; 10 uses
  %.sroa.20.sroa.11.0.copyload.i.i.i = load i64, ptr %.sroa.20.sroa.11.0..sroa.20.16..sroa_idx.sroa_idx.i.i.i, align 8, !noalias !4092 ; 3 uses
  %.sroa.20.sroa.12.0.copyload.i.i.i = load i64, ptr %.sroa.20.sroa.12.0..sroa.20.16..sroa_idx.sroa_idx.i.i.i, align 8, !noalias !4092 ; 5 uses
  %.sroa.20.sroa.13.0.copyload.i.i.i = load ptr, ptr %.sroa.20.sroa.13.0..sroa.20.16..sroa_idx.sroa_idx.i.i.i, align 8, !noalias !4092 ; 5 uses
  %.sroa.20.sroa.14.0.copyload.i.i.i = load i64, ptr %.sroa.20.sroa.14.0..sroa.20.16..sroa_idx.sroa_idx.i.i.i, align 8, !noalias !4092
  %.sroa.20.sroa.15.0.copyload.i.i.i = load i8, ptr %.sroa.20.sroa.15.0..sroa.20.16..sroa_idx.sroa_idx.i.i.i, align 8, !noalias !4092
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cb), !noalias !4089
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cc), !noalias !4089
  %i.tu = ptrtoint ptr %i.sq to i64               ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r), !noalias !4293
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w), !noalias !4296
  store ptr %i.ts, ptr %i.w, align 8, !noalias !4296
  store i64 %i.tt, ptr %i.ec, align 8, !noalias !4296
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !4296
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !4296
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.20.sroa.10.0.copyload.i.i.i) ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !4297
  %i.tv = icmp ult i64 %.sroa.20.sroa.11.0.copyload.i.i.i, 164703072086692426
  call void @llvm.assume(i1 %i.tv)
  %.idx.i.i.i.i.i.i = mul nuw nsw i64 %.sroa.20.sroa.11.0.copyload.i.i.i, 56
  %i.tw = getelementptr inbounds nuw i8, ptr %.sroa.20.sroa.10.0.copyload.i.i.i, i64 %.idx.i.i.i.i.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !4298)
  call void @llvm.experimental.noalias.scope.decl(metadata !4299)
  call void @llvm.experimental.noalias.scope.decl(metadata !4300)
  call void @llvm.experimental.noalias.scope.decl(metadata !4301)
  call void @llvm.experimental.noalias.scope.decl(metadata !4302)
  %.not17.i.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq i64 %.sroa.20.sroa.11.0.copyload.i.i.i, 0
  br i1 %.not17.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %.loopexit.i.i.i5.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i:               ; preds = %bb.gm, %"_ZN4core4iter8adapters10filter_map19filter_map_try_fold28_$u7b$$u7b$closure$u7d$$u7d$17h0b7cd09f103be7d3E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i"
  %i.tx = phi ptr [ %i.ty, %"_ZN4core4iter8adapters10filter_map19filter_map_try_fold28_$u7b$$u7b$closure$u7d$$u7d$17h0b7cd09f103be7d3E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i" ], [ %.sroa.20.sroa.10.0.copyload.i.i.i, %bb.gm ] ; 7 uses
  %.sroa.4.018.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi ptr [ %.pn31.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %"_ZN4core4iter8adapters10filter_map19filter_map_try_fold28_$u7b$$u7b$closure$u7d$$u7d$17h0b7cd09f103be7d3E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i" ], [ %.sroa.20.sroa.10.0.copyload.i.i.i, %bb.gm ] ; 10 uses
  %.sroa.012.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i.i.i = load i64, ptr %i.tx, align 8, !noalias !4303 ; 3 uses
  %.sroa.2.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.tx, i64 8
  %.sroa.2.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %.sroa.2.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i, align 8, !noalias !4303 ; 3 uses
  %.sroa.414.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.tx, i64 24
  %.sroa.414.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i.i.i = load i64, ptr %.sroa.414.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i, align 8, !noalias !4303 ; 2 uses
  %i.ty = getelementptr inbounds nuw i8, ptr %i.tx, i64 56 ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq i64 %.sroa.414.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i.i.i, -9223372036854775808
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %bb.gn, label %bb.gp

bb.gn:                                            ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  switch i64 %.sroa.012.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %bb.go [
    i64 -9223372036854775808, label %"_ZN4core4iter8adapters10filter_map19filter_map_try_fold28_$u7b$$u7b$closure$u7d$$u7d$17h0b7cd09f103be7d3E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i"
    i64 0, label %"_ZN4core4iter8adapters10filter_map19filter_map_try_fold28_$u7b$$u7b$closure$u7d$$u7d$17h0b7cd09f103be7d3E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i"
  ]

bb.go:                                            ; preds = %bb.gn
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.2.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i.i.i) ]
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.2.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 noundef %.sroa.012.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #77, !noalias !4304
  br label %"_ZN4core4iter8adapters10filter_map19filter_map_try_fold28_$u7b$$u7b$closure$u7d$$u7d$17h0b7cd09f103be7d3E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i"

bb.gp:                                            ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %.sroa.615.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.tx, i64 48
  %.sroa.615.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i.i.i = load i32, ptr %.sroa.615.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i, align 8, !noalias !4303
  %.sroa.313.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.tx, i64 16
  %.sroa.313.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i.i.i = load i64, ptr %.sroa.313.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i, align 8, !noalias !4303
  %.sroa.5.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.tx, i64 32
  %.sroa.618.16..sroa.4.8..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.4.018.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 8
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.618.16..sroa.4.8..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 16, i1 false), !noalias !4305
  store i64 %.sroa.414.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i.i.i, ptr %.sroa.4.018.i.i.i.i.i.i.i.i.i.i.i.i.i.i, align 8, !noalias !4306
  %.sroa.719.16..sroa.4.8..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.4.018.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 24
  store i64 %.sroa.012.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i.i.i, ptr %.sroa.719.16..sroa.4.8..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, align 8, !noalias !4306
  %.sroa.820.16..sroa.4.8..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.4.018.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 32
  store ptr %.sroa.2.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i.i.i, ptr %.sroa.820.16..sroa.4.8..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, align 8, !noalias !4306
  %.sroa.921.16..sroa.4.8..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.4.018.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 40
  store i64 %.sroa.313.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i.i.i, ptr %.sroa.921.16..sroa.4.8..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, align 8, !noalias !4306
  %.sroa.1022.16..sroa.4.8..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.4.018.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 48
  store i32 %.sroa.615.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i.i.i, ptr %.sroa.1022.16..sroa.4.8..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, align 8, !noalias !4306
  %i.tz = getelementptr inbounds nuw i8, ptr %.sroa.4.018.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 56
  br label %"_ZN4core4iter8adapters10filter_map19filter_map_try_fold28_$u7b$$u7b$closure$u7d$$u7d$17h0b7cd09f103be7d3E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i"

"_ZN4core4iter8adapters10filter_map19filter_map_try_fold28_$u7b$$u7b$closure$u7d$$u7d$17h0b7cd09f103be7d3E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i": ; preds = %bb.gp, %bb.go, %bb.gn, %bb.gn
  %.pn31.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.tz, %bb.gp ], [ %.sroa.4.018.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.go ], [ %.sroa.4.018.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.gn ], [ %.sroa.4.018.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.gn ] ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.ty, %i.tw
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %.loopexit.i.i.i5.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i

bb.gq:                                            ; preds = %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17he52df50a9b2815cbE.exit.i.i.i.i.i.i"
  %.val1.i.i.i.i.i.i.i = load ptr, ptr %.sroa.gep271.i.i.i.i.i.i, align 8, !alias.scope !4307, !noalias !4297, !nonnull !57, !noundef !57
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i.i.i.i.i, i64 noundef %i.uh, i64 noundef range(i64 1, -9223372036854775807) 1) #77, !noalias !4308
  br label %"_ZN4core3ptr104drop_in_place$LT$core..option..Option$LT$meilisearch_types..dynamic_search_rules..QueryCondition$GT$$GT$17h0dc41291d74c1903E.exit.i.i.i.i.i.i"

.loopexit.i.i.i5.i.i.i:                           ; preds = %"_ZN4core4iter8adapters10filter_map19filter_map_try_fold28_$u7b$$u7b$closure$u7d$$u7d$17h0b7cd09f103be7d3E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i", %bb.gm
  %.sroa.4.0.lcssa.i.i.i.i.i.i.i.i603.i.i.i.i.i.i = phi ptr [ %.sroa.20.sroa.10.0.copyload.i.i.i, %bb.gm ], [ %.pn31.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %"_ZN4core4iter8adapters10filter_map19filter_map_try_fold28_$u7b$$u7b$closure$u7d$$u7d$17h0b7cd09f103be7d3E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i" ] ; 2 uses
  %i.ua = ptrtoint ptr %.sroa.4.0.lcssa.i.i.i.i.i.i.i.i603.i.i.i.i.i.i to i64
  %i.ub = ptrtoint ptr %.sroa.20.sroa.10.0.copyload.i.i.i to i64
  %i.uc = sub nuw i64 %i.ua, %i.ub
  %i.ud = udiv exact i64 %i.uc, 56                ; 2 uses
  store i64 %.sroa.20.sroa.9.0.copyload.i.i.i, ptr %i.l, align 8, !alias.scope !4309, !noalias !4297
  store ptr %.sroa.20.sroa.10.0.copyload.i.i.i, ptr %i.ed, align 8, !alias.scope !4309, !noalias !4297
  store i64 %i.ud, ptr %i.ee, align 8, !alias.scope !4309, !noalias !4297
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !4297
  store i64 -9223372036854775807, ptr %i.k, align 8, !noalias !4297
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.20.sroa.7.0.copyload.i.i.i) ]
  %i.ue = icmp ult i64 %.sroa.20.sroa.8.0.copyload.i.i.i, 230584300921369396
  call void @llvm.assume(i1 %i.ue)
  %.idx510.i.i.i.i.i.i = mul nuw nsw i64 %.sroa.20.sroa.8.0.copyload.i.i.i, 40
  %i.uf = getelementptr inbounds nuw i8, ptr %.sroa.20.sroa.7.0.copyload.i.i.i, i64 %.idx510.i.i.i.i.i.i ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !4297
  store ptr %.sroa.20.sroa.7.0.copyload.i.i.i, ptr %i.j, align 8, !noalias !4297
  store i64 %.sroa.20.sroa.6.0.copyload.i.i.i, ptr %.sroa.6279.0..sroa_idx.i.i.i.i.i.i, align 8, !noalias !4297
  store ptr %i.uf, ptr %.sroa.7280.0..sroa_idx.i.i.i.i.i.i, align 8, !noalias !4297
  %i.ug = icmp eq i64 %.sroa.20.sroa.8.0.copyload.i.i.i, 0
  br i1 %i.ug, label %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hded5e640afe2e52fE.exit.thread.i.i.i.i.i.i", label %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hded5e640afe2e52fE.exit.i.i.i.i.i.i"

"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17he52df50a9b2815cbE.exit.i.i.i.i.i.i": ; preds = %bb.hm, %bb.hl
  call fastcc void @"_ZN4core3ptr102drop_in_place$LT$alloc..vec..into_iter..IntoIter$LT$index_scheduler..upgrade..v1_49..Condition$GT$$GT$17h3ab466132a000645E"(ptr noalias noundef align 8 dereferenceable(32) %i.j) #79, !noalias !4310
  call void @llvm.experimental.noalias.scope.decl(metadata !4307)
  %i.uh = load i64, ptr %i.k, align 8, !range !84, !alias.scope !4307, !noalias !4297, !noundef !57 ; 2 uses
  %switch.i.i.i.i.i.i.i = icmp sgt i64 %i.uh, 0
  br i1 %switch.i.i.i.i.i.i.i, label %bb.gq, label %"_ZN4core3ptr104drop_in_place$LT$core..option..Option$LT$meilisearch_types..dynamic_search_rules..QueryCondition$GT$$GT$17h0dc41291d74c1903E.exit.i.i.i.i.i.i"

"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hded5e640afe2e52fE.exit.i.i.i.i.i.i": ; preds = %.loopexit.i.i.i5.i.i.i, %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17he52df50a9b2815cbE.exit223.i.i.i.i.i.i"
  %.sroa.14.0.copyload506.i.i.i.i.i.i.a = phi i64 [ %.sroa.14.0.copyload505.i.i.i.i.i.i, %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17he52df50a9b2815cbE.exit223.i.i.i.i.i.i" ], [ undef, %.loopexit.i.i.i5.i.i.i ] ; 9 uses
  %.sroa.13.0.copyload501.i.i.i.i.i.i.a = phi i8 [ %.sroa.13.0.copyload500.i.i.i.i.i.i, %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17he52df50a9b2815cbE.exit223.i.i.i.i.i.i" ], [ undef, %.loopexit.i.i.i5.i.i.i ] ; 7 uses
  %.sroa.12.sroa.6.sroa.0.0.copyload496.i.i.i.i.i.i.a = phi i24 [ %.sroa.12.sroa.6.sroa.0.0.copyload495.i.i.i.i.i.i, %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17he52df50a9b2815cbE.exit223.i.i.i.i.i.i" ], [ undef, %.loopexit.i.i.i5.i.i.i ] ; 9 uses
  %.sroa.12.sroa.0.0.copyload491.i.i.i.i.i.i.a = phi i32 [ %.sroa.12.sroa.0.0.copyload490.i.i.i.i.i.i, %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17he52df50a9b2815cbE.exit223.i.i.i.i.i.i" ], [ undef, %.loopexit.i.i.i5.i.i.i ] ; 9 uses
  %.sroa.0156.sroa.4.0.copyload486.i.i.i.i.i.i.a = phi i24 [ %.sroa.0156.sroa.4.0.copyload485.i.i.i.i.i.i, %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17he52df50a9b2815cbE.exit223.i.i.i.i.i.i" ], [ undef, %.loopexit.i.i.i5.i.i.i ] ; 9 uses
  %i.ui = phi ptr [ %i.uj, %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17he52df50a9b2815cbE.exit223.i.i.i.i.i.i" ], [ %.sroa.20.sroa.7.0.copyload.i.i.i, %.loopexit.i.i.i5.i.i.i ] ; 11 uses
  %.sroa.4157.0.copyload457475.i.i.i.i.i.i = phi i8 [ %.sroa.4157.0.copyload456.i.i.i.i.i.i, %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17he52df50a9b2815cbE.exit223.i.i.i.i.i.i" ], [ 2, %.loopexit.i.i.i5.i.i.i ] ; 7 uses
  %.sroa.0156.sroa.0.0.copyload462474.i.i.i.i.i.i = phi i32 [ %.sroa.0156.sroa.0.0.copyload461.i.i.i.i.i.i, %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17he52df50a9b2815cbE.exit223.i.i.i.i.i.i" ], [ undef, %.loopexit.i.i.i5.i.i.i ] ; 9 uses
  %.sroa.5158.0.copyload467473.i.i.i.i.i.i = phi i64 [ %.sroa.5158.0.copyload466.i.i.i.i.i.i, %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17he52df50a9b2815cbE.exit223.i.i.i.i.i.i" ], [ undef, %.loopexit.i.i.i5.i.i.i ] ; 9 uses
  %i.uj = getelementptr inbounds nuw i8, ptr %i.ui, i64 40 ; 7 uses
  %.sroa.0284.0.copyload.i.i.i.i.i.i = load i8, ptr %i.ui, align 8, !noalias !4311 ; 2 uses
  %.sroa.8285.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ui, i64 1
  %.sroa.8285.0.copyload.i.i.i.i.i.i = load i8, ptr %.sroa.8285.0..sroa_idx.i.i.i.i.i.i, align 1, !noalias !4311 ; 3 uses
  %.sroa.9286.sroa.0.sroa.6.0..sroa.9286.0..sroa_idx.sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ui, i64 4
  %.sroa.9286.sroa.0.sroa.6.0.copyload.i.i.i.i.i.i = load i32, ptr %.sroa.9286.sroa.0.sroa.6.0..sroa.9286.0..sroa_idx.sroa_idx.i.i.i.i.i.i, align 4, !noalias !4311 ; 4 uses
  %.sroa.9286.sroa.6.0..sroa.9286.0..sroa_idx.sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ui, i64 8
  %.sroa.9286.sroa.6.0.copyload.i.i.i.i.i.i = load i24, ptr %.sroa.9286.sroa.6.0..sroa.9286.0..sroa_idx.sroa_idx.i.i.i.i.i.i, align 8, !noalias !4311 ; 7 uses
  %.sroa.10287.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ui, i64 11
  %.sroa.10287.0.copyload.i.i.i.i.i.i = load i8, ptr %.sroa.10287.0..sroa_idx.i.i.i.i.i.i, align 1, !noalias !4311 ; 6 uses
  %.sroa.12.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ui, i64 20
  %.sroa.12.sroa.0.0.copyload.i.i.i.i.i.i = load i32, ptr %.sroa.12.0..sroa_idx.i.i.i.i.i.i, align 4, !noalias !4311 ; 5 uses
  %.sroa.12.sroa.6.0..sroa.12.0..sroa_idx.sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ui, i64 24
  %.sroa.12.sroa.6.sroa.0.0.copyload.i.i.i.i.i.i = load i24, ptr %.sroa.12.sroa.6.0..sroa.12.0..sroa_idx.sroa_idx.i.i.i.i.i.i, align 8, !noalias !4311 ; 7 uses
  %.sroa.13.0..sroa_idx289.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ui, i64 27
  %.sroa.13.0.copyload.i.i.i.i.i.i = load i8, ptr %.sroa.13.0..sroa_idx289.i.i.i.i.i.i, align 1, !noalias !4311 ; 5 uses
  %.sroa.14.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ui, i64 28
  %.sroa.14.0.copyload.i.i.i.i.i.i = load i64, ptr %.sroa.14.0..sroa_idx.i.i.i.i.i.i, align 4, !noalias !4311 ; 8 uses
  %.not.i.i.i.i.i.i = icmp eq i8 %.sroa.0284.0.copyload.i.i.i.i.i.i, 2
  br i1 %.not.i.i.i.i.i.i, label %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hded5e640afe2e52fE.exit.thread.i.i.i.i.i.i", label %bb.gr

bb.gr:                                            ; preds = %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hded5e640afe2e52fE.exit.i.i.i.i.i.i"
  %.sroa.11288.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ui, i64 12
  %.sroa.11288.0.copyload.i.i.i.i.i.i = load i64, ptr %.sroa.11288.0..sroa_idx.i.i.i.i.i.i, align 4, !noalias !4311 ; 8 uses
  %.sroa.11288.sroa.0.0.insert.ext.i.i.i.i.i.i = and i64 %.sroa.11288.0.copyload.i.i.i.i.i.i, 4294967295 ; 3 uses
  %i.uk = trunc nuw i8 %.sroa.0284.0.copyload.i.i.i.i.i.i to i1
  br i1 %i.uk, label %bb.gw, label %bb.gx

"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hded5e640afe2e52fE.exit.thread.i.i.i.i.i.i": ; preds = %.loopexit.i.i.i5.i.i.i, %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hded5e640afe2e52fE.exit.i.i.i.i.i.i"
  %.sroa.44.0.i.i.i.i.i.i = phi i64 [ %.sroa.14.0.copyload506.i.i.i.i.i.i.a, %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hded5e640afe2e52fE.exit.i.i.i.i.i.i" ], [ undef, %.loopexit.i.i.i5.i.i.i ] ; 2 uses
  %.sroa.38.0.i.i.i.i.i.i = phi i8 [ %.sroa.13.0.copyload501.i.i.i.i.i.i.a, %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hded5e640afe2e52fE.exit.i.i.i.i.i.i" ], [ undef, %.loopexit.i.i.i5.i.i.i ] ; 2 uses
  %.sroa.32.0.i.i.i.i.i.i = phi i24 [ %.sroa.12.sroa.6.sroa.0.0.copyload496.i.i.i.i.i.i.a, %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hded5e640afe2e52fE.exit.i.i.i.i.i.i" ], [ undef, %.loopexit.i.i.i5.i.i.i ] ; 2 uses
  %.sroa.26.0.i.i.i.i.i.i = phi i32 [ %.sroa.12.sroa.0.0.copyload491.i.i.i.i.i.i.a, %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hded5e640afe2e52fE.exit.i.i.i.i.i.i" ], [ undef, %.loopexit.i.i.i5.i.i.i ] ; 2 uses
  %.sroa.9.0.i.i.i.i.i.i = phi i24 [ %.sroa.0156.sroa.4.0.copyload486.i.i.i.i.i.i.a, %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hded5e640afe2e52fE.exit.i.i.i.i.i.i" ], [ undef, %.loopexit.i.i.i5.i.i.i ] ; 2 uses
  %.sroa.5158.0.copyload467.lcssa.i.i.i.i.i.i = phi i64 [ %.sroa.5158.0.copyload467473.i.i.i.i.i.i, %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hded5e640afe2e52fE.exit.i.i.i.i.i.i" ], [ undef, %.loopexit.i.i.i5.i.i.i ] ; 2 uses
  %.sroa.0156.sroa.0.0.copyload462.lcssa.i.i.i.i.i.i = phi i32 [ %.sroa.0156.sroa.0.0.copyload462474.i.i.i.i.i.i, %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hded5e640afe2e52fE.exit.i.i.i.i.i.i" ], [ undef, %.loopexit.i.i.i5.i.i.i ] ; 2 uses
  %.sroa.4157.0.copyload457.lcssa.i.i.i.i.i.i = phi i8 [ %.sroa.4157.0.copyload457475.i.i.i.i.i.i, %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hded5e640afe2e52fE.exit.i.i.i.i.i.i" ], [ 2, %.loopexit.i.i.i5.i.i.i ] ; 2 uses
  %i.ul = phi ptr [ %i.uj, %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hded5e640afe2e52fE.exit.i.i.i.i.i.i" ], [ %.sroa.20.sroa.7.0.copyload.i.i.i, %.loopexit.i.i.i5.i.i.i ] ; 3 uses
  %i.um = ptrtoint ptr %i.uf to i64
  %i.un = ptrtoint ptr %i.ul to i64
  %i.uo = sub nuw i64 %i.um, %i.un
  %i.up = udiv exact i64 %i.uo, 40
  call void @llvm.experimental.noalias.scope.decl(metadata !4312)
  %i.uq = icmp eq ptr %i.uf, %i.ul
  br i1 %i.uq, label %"_ZN4core3ptr73drop_in_place$LT$$u5b$index_scheduler..upgrade..v1_49..Condition$u5d$$GT$17hfd688ac8d6eb5359E.exit.i.i.i.i.i.i.i.i", label %.lr.ph.i.i.i.i.i.i8.i.i.i

.lr.ph.i.i.i.i.i.i8.i.i.i:                        ; preds = %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hded5e640afe2e52fE.exit.thread.i.i.i.i.i.i", %"_ZN4core3ptr63drop_in_place$LT$index_scheduler..upgrade..v1_49..Condition$GT$17hd6f211b27a7409e7E.exit.i.i.i.i.i.i.i.i.i"
  %.sroa.0.07.i.i.i.i.i.i.i.i.i = phi i64 [ %i.us, %"_ZN4core3ptr63drop_in_place$LT$index_scheduler..upgrade..v1_49..Condition$GT$17hd6f211b27a7409e7E.exit.i.i.i.i.i.i.i.i.i" ], [ 0, %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hded5e640afe2e52fE.exit.thread.i.i.i.i.i.i" ] ; 2 uses
  %i.ur = getelementptr inbounds nuw [40 x i8], ptr %i.ul, i64 %.sroa.0.07.i.i.i.i.i.i.i.i.i ; 3 uses
  %i.us = add nuw i64 %.sroa.0.07.i.i.i.i.i.i.i.i.i, 1 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !4313)
  %i.ut = load i8, ptr %i.ur, align 8, !range !74, !alias.scope !4314, !noalias !4315, !noundef !57
  %i.uu = icmp eq i8 %i.ut, 0
  br i1 %i.uu, label %bb.gs, label %"_ZN4core3ptr63drop_in_place$LT$index_scheduler..upgrade..v1_49..Condition$GT$17hd6f211b27a7409e7E.exit.i.i.i.i.i.i.i.i.i"

bb.gs:                                            ; preds = %.lr.ph.i.i.i.i.i.i8.i.i.i
  %i.uv = getelementptr inbounds nuw i8, ptr %i.ur, i64 8
  call void @llvm.experimental.noalias.scope.decl(metadata !4316)
  %i.uw = load i64, ptr %i.uv, align 8, !range !83, !alias.scope !4317, !noalias !4315, !noundef !57 ; 3 uses
  %i.ux = icmp eq i64 %i.uw, -9223372036854775808
  br i1 %i.ux, label %"_ZN4core3ptr63drop_in_place$LT$index_scheduler..upgrade..v1_49..Condition$GT$17hd6f211b27a7409e7E.exit.i.i.i.i.i.i.i.i.i", label %bb.gt

bb.gt:                                            ; preds = %bb.gs
  call void @llvm.experimental.noalias.scope.decl(metadata !4318)
  call void @llvm.experimental.noalias.scope.decl(metadata !4319)
  %i.uy = icmp eq i64 %i.uw, 0
  br i1 %i.uy, label %"_ZN4core3ptr63drop_in_place$LT$index_scheduler..upgrade..v1_49..Condition$GT$17hd6f211b27a7409e7E.exit.i.i.i.i.i.i.i.i.i", label %bb.gu

bb.gu:                                            ; preds = %bb.gt
  %i.uz = getelementptr inbounds nuw i8, ptr %i.ur, i64 16
  %.val1.i.i.i.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.uz, align 8, !alias.scope !4320, !noalias !4315, !nonnull !57, !noundef !57
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 noundef %i.uw, i64 noundef range(i64 1, -9223372036854775807) 1) #77, !noalias !4321
  br label %"_ZN4core3ptr63drop_in_place$LT$index_scheduler..upgrade..v1_49..Condition$GT$17hd6f211b27a7409e7E.exit.i.i.i.i.i.i.i.i.i"

"_ZN4core3ptr63drop_in_place$LT$index_scheduler..upgrade..v1_49..Condition$GT$17hd6f211b27a7409e7E.exit.i.i.i.i.i.i.i.i.i": ; preds = %bb.gu, %bb.gt, %bb.gs, %.lr.ph.i.i.i.i.i.i8.i.i.i
  %i.va = icmp eq i64 %i.us, %i.up
  br i1 %i.va, label %"_ZN4core3ptr73drop_in_place$LT$$u5b$index_scheduler..upgrade..v1_49..Condition$u5d$$GT$17hfd688ac8d6eb5359E.exit.i.i.i.i.i.i.i.i", label %.lr.ph.i.i.i.i.i.i8.i.i.i

"_ZN4core3ptr73drop_in_place$LT$$u5b$index_scheduler..upgrade..v1_49..Condition$u5d$$GT$17hfd688ac8d6eb5359E.exit.i.i.i.i.i.i.i.i": ; preds = %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17he52df50a9b2815cbE.exit223.i.i.i.i.i.i", %"_ZN4core3ptr63drop_in_place$LT$index_scheduler..upgrade..v1_49..Condition$GT$17hd6f211b27a7409e7E.exit.i.i.i.i.i.i.i.i.i", %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hded5e640afe2e52fE.exit.thread.i.i.i.i.i.i"
  %.sroa.4157.0.copyload457.lcssa619.i.i.i.i.i.i = phi i8 [ %.sroa.4157.0.copyload457.lcssa.i.i.i.i.i.i, %"_ZN4core3ptr63drop_in_place$LT$index_scheduler..upgrade..v1_49..Condition$GT$17hd6f211b27a7409e7E.exit.i.i.i.i.i.i.i.i.i" ], [ %.sroa.4157.0.copyload457.lcssa.i.i.i.i.i.i, %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hded5e640afe2e52fE.exit.thread.i.i.i.i.i.i" ], [ %.sroa.4157.0.copyload456.i.i.i.i.i.i, %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17he52df50a9b2815cbE.exit223.i.i.i.i.i.i" ]
  %.sroa.0156.sroa.0.0.copyload462.lcssa618.i.i.i.i.i.i = phi i32 [ %.sroa.0156.sroa.0.0.copyload462.lcssa.i.i.i.i.i.i, %"_ZN4core3ptr63drop_in_place$LT$index_scheduler..upgrade..v1_49..Condition$GT$17hd6f211b27a7409e7E.exit.i.i.i.i.i.i.i.i.i" ], [ %.sroa.0156.sroa.0.0.copyload462.lcssa.i.i.i.i.i.i, %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hded5e640afe2e52fE.exit.thread.i.i.i.i.i.i" ], [ %.sroa.0156.sroa.0.0.copyload461.i.i.i.i.i.i, %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17he52df50a9b2815cbE.exit223.i.i.i.i.i.i" ]
  %.sroa.5158.0.copyload467.lcssa617.i.i.i.i.i.i = phi i64 [ %.sroa.5158.0.copyload467.lcssa.i.i.i.i.i.i, %"_ZN4core3ptr63drop_in_place$LT$index_scheduler..upgrade..v1_49..Condition$GT$17hd6f211b27a7409e7E.exit.i.i.i.i.i.i.i.i.i" ], [ %.sroa.5158.0.copyload467.lcssa.i.i.i.i.i.i, %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hded5e640afe2e52fE.exit.thread.i.i.i.i.i.i" ], [ %.sroa.5158.0.copyload466.i.i.i.i.i.i, %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17he52df50a9b2815cbE.exit223.i.i.i.i.i.i" ]
  %.sroa.9.0616.i.i.i.i.i.i = phi i24 [ %.sroa.9.0.i.i.i.i.i.i, %"_ZN4core3ptr63drop_in_place$LT$index_scheduler..upgrade..v1_49..Condition$GT$17hd6f211b27a7409e7E.exit.i.i.i.i.i.i.i.i.i" ], [ %.sroa.9.0.i.i.i.i.i.i, %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hded5e640afe2e52fE.exit.thread.i.i.i.i.i.i" ], [ %.sroa.0156.sroa.4.0.copyload485.i.i.i.i.i.i, %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17he52df50a9b2815cbE.exit223.i.i.i.i.i.i" ]
  %.sroa.26.0615.i.i.i.i.i.i = phi i32 [ %.sroa.26.0.i.i.i.i.i.i, %"_ZN4core3ptr63drop_in_place$LT$index_scheduler..upgrade..v1_49..Condition$GT$17hd6f211b27a7409e7E.exit.i.i.i.i.i.i.i.i.i" ], [ %.sroa.26.0.i.i.i.i.i.i, %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hded5e640afe2e52fE.exit.thread.i.i.i.i.i.i" ], [ %.sroa.12.sroa.0.0.copyload490.i.i.i.i.i.i, %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17he52df50a9b2815cbE.exit223.i.i.i.i.i.i" ]
  %.sroa.32.0614.i.i.i.i.i.i = phi i24 [ %.sroa.32.0.i.i.i.i.i.i, %"_ZN4core3ptr63drop_in_place$LT$index_scheduler..upgrade..v1_49..Condition$GT$17hd6f211b27a7409e7E.exit.i.i.i.i.i.i.i.i.i" ], [ %.sroa.32.0.i.i.i.i.i.i, %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hded5e640afe2e52fE.exit.thread.i.i.i.i.i.i" ], [ %.sroa.12.sroa.6.sroa.0.0.copyload495.i.i.i.i.i.i, %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17he52df50a9b2815cbE.exit223.i.i.i.i.i.i" ]
  %.sroa.38.0613.i.i.i.i.i.i = phi i8 [ %.sroa.38.0.i.i.i.i.i.i, %"_ZN4core3ptr63drop_in_place$LT$index_scheduler..upgrade..v1_49..Condition$GT$17hd6f211b27a7409e7E.exit.i.i.i.i.i.i.i.i.i" ], [ %.sroa.38.0.i.i.i.i.i.i, %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hded5e640afe2e52fE.exit.thread.i.i.i.i.i.i" ], [ %.sroa.13.0.copyload500.i.i.i.i.i.i, %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17he52df50a9b2815cbE.exit223.i.i.i.i.i.i" ]
  %.sroa.44.0612.i.i.i.i.i.i = phi i64 [ %.sroa.44.0.i.i.i.i.i.i, %"_ZN4core3ptr63drop_in_place$LT$index_scheduler..upgrade..v1_49..Condition$GT$17hd6f211b27a7409e7E.exit.i.i.i.i.i.i.i.i.i" ], [ %.sroa.44.0.i.i.i.i.i.i, %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hded5e640afe2e52fE.exit.thread.i.i.i.i.i.i" ], [ %.sroa.14.0.copyload505.i.i.i.i.i.i, %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17he52df50a9b2815cbE.exit223.i.i.i.i.i.i" ]
  %.in.i.i.i = ptrtoint ptr %.val2.i.i.i.i.i to i64
  %i.vb = icmp eq i64 %.sroa.20.sroa.6.0.copyload.i.i.i, 0
  br i1 %i.vb, label %"_ZN115_$LT$core..iter..adapters..filter_map..FilterMap$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$8try_fold17hceb1961079ebe3acE.exit.i", label %bb.gv

bb.gv:                                            ; preds = %"_ZN4core3ptr73drop_in_place$LT$$u5b$index_scheduler..upgrade..v1_49..Condition$u5d$$GT$17hfd688ac8d6eb5359E.exit.i.i.i.i.i.i.i.i"
  %i.vc = mul nuw i64 %.sroa.20.sroa.6.0.copyload.i.i.i, 40
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.20.sroa.7.0.copyload.i.i.i, i64 noundef %i.vc, i64 noundef range(i64 1, -9223372036854775807) 8) #77, !noalias !4315
  br label %"_ZN115_$LT$core..iter..adapters..filter_map..FilterMap$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$8try_fold17hceb1961079ebe3acE.exit.i"

bb.gw:                                            ; preds = %bb.gr
  switch i8 %.sroa.4157.0.copyload457475.i.i.i.i.i.i, label %.thread.i.i.i.i.i.i [
    i8 2, label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17he52df50a9b2815cbE.exit223.i.i.i.i.i.i"
    i8 0, label %bb.hr
  ]

bb.gx:                                            ; preds = %bb.gr
  %.sroa.9293.4.insert.ext.i.i.i.i.i.i = zext i32 %.sroa.12.sroa.0.0.copyload.i.i.i.i.i.i to i64
  %.sroa.9293.4.insert.insert.i.i.i.i.i.i = call i64 @llvm.fshl.i64(i64 %.sroa.9293.4.insert.ext.i.i.i.i.i.i, i64 %.sroa.11288.0.copyload.i.i.i.i.i.i, i64 32) ; 3 uses
  %i.vd = inttoptr i64 %.sroa.9293.4.insert.insert.i.i.i.i.i.i to ptr ; 7 uses
  %.sroa.6.sroa.8.sroa.7.0.extract.trunc.i.i.i.i.i.i = trunc i64 %.sroa.14.0.copyload.i.i.i.i.i.i to i32 ; 2 uses
  %i.ve = load i64, ptr %i.k, align 8, !range !84, !noalias !4297, !noundef !57 ; 5 uses
  %.not173.i.i.i.i.i.i = icmp eq i64 %i.ve, -9223372036854775807
  br i1 %.not173.i.i.i.i.i.i, label %bb.gz, label %bb.gy

bb.gy:                                            ; preds = %bb.gx
  %i.vf = load i8, ptr %i.ef, align 8, !range !65, !noalias !4297, !noundef !57 ; 2 uses
  %.not174.i.i.i.i.i.i = icmp eq i8 %i.vf, 2
  %.not175.i.i.i.i.i.i = icmp eq i8 %.sroa.8285.0.copyload.i.i.i.i.i.i, 2
  %.not176.i.i.i.i.i.i = icmp eq i8 %i.vf, %.sroa.8285.0.copyload.i.i.i.i.i.i
  %i.vg = or i1 %.not175.i.i.i.i.i.i, %.not176.i.i.i.i.i.i
  %or.cond194.i.i.i.i.i.i = select i1 %.not174.i.i.i.i.i.i, i1 true, i1 %i.vg
  br i1 %or.cond194.i.i.i.i.i.i, label %bb.ha, label %bb.hb

bb.gz:                                            ; preds = %bb.gx
  %.sroa.0292.sroa.8.0.insert.shift317.i.i.i.i.i.i = shl nuw i64 %.sroa.11288.sroa.0.0.insert.ext.i.i.i.i.i.i, 32
  %.sroa.0292.sroa.7.0.insert.ext308.i.i.i.i.i.i = zext i8 %.sroa.10287.0.copyload.i.i.i.i.i.i to i64
  %.sroa.0292.sroa.7.0.insert.shift309.i.i.i.i.i.i = shl nuw nsw i64 %.sroa.0292.sroa.7.0.insert.ext308.i.i.i.i.i.i, 24
  %.sroa.0292.sroa.7.0.insert.insert311.i.i.i.i.i.i = or disjoint i64 %.sroa.0292.sroa.8.0.insert.shift317.i.i.i.i.i.i, %.sroa.0292.sroa.7.0.insert.shift309.i.i.i.i.i.i
  %.sroa.0292.sroa.0.0.insert.ext301.i.i.i.i.i.i = zext i24 %.sroa.9286.sroa.6.0.copyload.i.i.i.i.i.i to i64
  %.sroa.0292.sroa.0.0.insert.insert303.i.i.i.i.i.i = or disjoint i64 %.sroa.0292.sroa.7.0.insert.insert311.i.i.i.i.i.i, %.sroa.0292.sroa.0.0.insert.ext301.i.i.i.i.i.i
  store i64 %.sroa.0292.sroa.0.0.insert.insert303.i.i.i.i.i.i, ptr %i.k, align 8, !noalias !4297
  store ptr %i.vd, ptr %.sroa.gep271.i.i.i.i.i.i, align 8, !noalias !4297
  store i24 %.sroa.12.sroa.6.sroa.0.0.copyload.i.i.i.i.i.i, ptr %.sroa.gep270.i.i.i.i.i.i, align 8, !noalias !4297
  store i8 %.sroa.13.0.copyload.i.i.i.i.i.i, ptr %.sroa.59.sroa.5.0..sroa.59.0..sroa_idx11.sroa_idx.i.i.i.i.i.i, align 1, !noalias !4297
  store i32 %.sroa.6.sroa.8.sroa.7.0.extract.trunc.i.i.i.i.i.i, ptr %.sroa.59.sroa.6.0..sroa.59.0..sroa_idx11.sroa_idx.i.i.i.i.i.i, align 4, !noalias !4297
  store i8 %.sroa.8285.0.copyload.i.i.i.i.i.i, ptr %i.ef, align 8, !noalias !4297
  br label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17he52df50a9b2815cbE.exit223.i.i.i.i.i.i"

bb.ha:                                            ; preds = %bb.gy
  %.not177.i.i.i.i.i.i = icmp eq i64 %i.ve, -9223372036854775808
  %.sroa.0292.sroa.8.0.insert.shift.i.i.i.i.i.i = shl nuw i64 %.sroa.11288.sroa.0.0.insert.ext.i.i.i.i.i.i, 32
  %.sroa.0292.sroa.7.0.insert.ext.i.i.i.i.i.i = zext i8 %.sroa.10287.0.copyload.i.i.i.i.i.i to i64
  %.sroa.0292.sroa.7.0.insert.shift.i.i.i.i.i.i = shl nuw nsw i64 %.sroa.0292.sroa.7.0.insert.ext.i.i.i.i.i.i, 24
  %.sroa.0292.sroa.7.0.insert.insert.i.i.i.i.i.i = or disjoint i64 %.sroa.0292.sroa.8.0.insert.shift.i.i.i.i.i.i, %.sroa.0292.sroa.7.0.insert.shift.i.i.i.i.i.i
  %.sroa.0292.sroa.0.0.insert.ext.i.i.i.i.i.i = zext i24 %.sroa.9286.sroa.6.0.copyload.i.i.i.i.i.i to i64
  %.sroa.0292.sroa.0.0.insert.insert.i.i.i.i.i.i = or disjoint i64 %.sroa.0292.sroa.7.0.insert.insert.i.i.i.i.i.i, %.sroa.0292.sroa.0.0.insert.ext.i.i.i.i.i.i ; 6 uses
  br i1 %.not177.i.i.i.i.i.i, label %bb.hi, label %bb.hh

bb.hb:                                            ; preds = %bb.gy
  %.sroa.0292.sroa.8.0.insert.shift313.i.i.i.i.i.i = shl nuw i64 %.sroa.11288.sroa.0.0.insert.ext.i.i.i.i.i.i, 32
  %.sroa.0292.sroa.7.0.insert.ext304.i.i.i.i.i.i = zext i8 %.sroa.10287.0.copyload.i.i.i.i.i.i to i64
  %.sroa.0292.sroa.7.0.insert.shift305.i.i.i.i.i.i = shl nuw nsw i64 %.sroa.0292.sroa.7.0.insert.ext304.i.i.i.i.i.i, 24
  %.sroa.0292.sroa.7.0.insert.insert307.i.i.i.i.i.i = or disjoint i64 %.sroa.0292.sroa.8.0.insert.shift313.i.i.i.i.i.i, %.sroa.0292.sroa.7.0.insert.shift305.i.i.i.i.i.i
  %.sroa.0292.sroa.0.0.insert.ext298.i.i.i.i.i.i = zext i24 %.sroa.9286.sroa.6.0.copyload.i.i.i.i.i.i to i64
  %.sroa.0292.sroa.0.0.insert.insert300.i.i.i.i.i.i = or disjoint i64 %.sroa.0292.sroa.7.0.insert.insert307.i.i.i.i.i.i, %.sroa.0292.sroa.0.0.insert.ext298.i.i.i.i.i.i ; 2 uses
  switch i64 %.sroa.0292.sroa.0.0.insert.insert300.i.i.i.i.i.i, label %bb.hc [
    i64 -9223372036854775808, label %"_ZN4core3ptr70drop_in_place$LT$core..option..Option$LT$alloc..string..String$GT$$GT$17hd9220220a7cf1ae9E.exit.i.i.i.i.i.i"
    i64 0, label %"_ZN4core3ptr70drop_in_place$LT$core..option..Option$LT$alloc..string..String$GT$$GT$17hd9220220a7cf1ae9E.exit.i.i.i.i.i.i"
  ]

bb.hc:                                            ; preds = %bb.hb
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.vd, i64 noundef %.sroa.0292.sroa.0.0.insert.insert300.i.i.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #77, !noalias !4322
  br label %"_ZN4core3ptr70drop_in_place$LT$core..option..Option$LT$alloc..string..String$GT$$GT$17hd9220220a7cf1ae9E.exit.i.i.i.i.i.i"

"_ZN4core3ptr70drop_in_place$LT$core..option..Option$LT$alloc..string..String$GT$$GT$17hd9220220a7cf1ae9E.exit.i.i.i.i.i.i": ; preds = %bb.hy, %bb.hc, %bb.hb, %bb.hb
  %i.vh = ptrtoint ptr %i.uf to i64
  %i.vi = ptrtoint ptr %i.uj to i64
  %i.vj = sub nuw i64 %i.vh, %i.vi
  %i.vk = udiv exact i64 %i.vj, 40
  call void @llvm.experimental.noalias.scope.decl(metadata !4323)
  %i.vl = icmp eq ptr %i.uf, %i.uj
  br i1 %i.vl, label %"_ZN4core3ptr73drop_in_place$LT$$u5b$index_scheduler..upgrade..v1_49..Condition$u5d$$GT$17hfd688ac8d6eb5359E.exit.i.i215.i.i.i.i.i.i", label %.lr.ph.i.i.i212.i.i.i.i.i.i

.lr.ph.i.i.i212.i.i.i.i.i.i:                      ; preds = %"_ZN4core3ptr70drop_in_place$LT$core..option..Option$LT$alloc..string..String$GT$$GT$17hd9220220a7cf1ae9E.exit.i.i.i.i.i.i", %"_ZN4core3ptr63drop_in_place$LT$index_scheduler..upgrade..v1_49..Condition$GT$17hd6f211b27a7409e7E.exit.i.i.i214.i.i.i.i.i.i"
  %.sroa.0.07.i.i.i213.i.i.i.i.i.i = phi i64 [ %i.vn, %"_ZN4core3ptr63drop_in_place$LT$index_scheduler..upgrade..v1_49..Condition$GT$17hd6f211b27a7409e7E.exit.i.i.i214.i.i.i.i.i.i" ], [ 0, %"_ZN4core3ptr70drop_in_place$LT$core..option..Option$LT$alloc..string..String$GT$$GT$17hd9220220a7cf1ae9E.exit.i.i.i.i.i.i" ] ; 2 uses
  %i.vm = getelementptr inbounds nuw [40 x i8], ptr %i.uj, i64 %.sroa.0.07.i.i.i213.i.i.i.i.i.i ; 3 uses
  %i.vn = add nuw i64 %.sroa.0.07.i.i.i213.i.i.i.i.i.i, 1 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !4324)
  %i.vo = load i8, ptr %i.vm, align 8, !range !74, !alias.scope !4325, !noalias !4326, !noundef !57
  %i.vp = icmp eq i8 %i.vo, 0
  br i1 %i.vp, label %bb.hd, label %"_ZN4core3ptr63drop_in_place$LT$index_scheduler..upgrade..v1_49..Condition$GT$17hd6f211b27a7409e7E.exit.i.i.i214.i.i.i.i.i.i"

bb.hd:                                            ; preds = %.lr.ph.i.i.i212.i.i.i.i.i.i
  %i.vq = getelementptr inbounds nuw i8, ptr %i.vm, i64 8
  call void @llvm.experimental.noalias.scope.decl(metadata !4327)
  %i.vr = load i64, ptr %i.vq, align 8, !range !83, !alias.scope !4328, !noalias !4326, !noundef !57 ; 3 uses
  %i.vs = icmp eq i64 %i.vr, -9223372036854775808
  br i1 %i.vs, label %"_ZN4core3ptr63drop_in_place$LT$index_scheduler..upgrade..v1_49..Condition$GT$17hd6f211b27a7409e7E.exit.i.i.i214.i.i.i.i.i.i", label %bb.he

bb.he:                                            ; preds = %bb.hd
  call void @llvm.experimental.noalias.scope.decl(metadata !4329)
  call void @llvm.experimental.noalias.scope.decl(metadata !4330)
  %i.vt = icmp eq i64 %i.vr, 0
  br i1 %i.vt, label %"_ZN4core3ptr63drop_in_place$LT$index_scheduler..upgrade..v1_49..Condition$GT$17hd6f211b27a7409e7E.exit.i.i.i214.i.i.i.i.i.i", label %bb.hf

bb.hf:                                            ; preds = %bb.he
  %i.vu = getelementptr inbounds nuw i8, ptr %i.vm, i64 16
  %.val1.i.i.i.i.i.i.i216.i.i.i.i.i.i = load ptr, ptr %i.vu, align 8, !alias.scope !4331, !noalias !4326, !nonnull !57, !noundef !57
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i.i.i.i.i216.i.i.i.i.i.i, i64 noundef %i.vr, i64 noundef range(i64 1, -9223372036854775807) 1) #77, !noalias !4332
  br label %"_ZN4core3ptr63drop_in_place$LT$index_scheduler..upgrade..v1_49..Condition$GT$17hd6f211b27a7409e7E.exit.i.i.i214.i.i.i.i.i.i"

"_ZN4core3ptr63drop_in_place$LT$index_scheduler..upgrade..v1_49..Condition$GT$17hd6f211b27a7409e7E.exit.i.i.i214.i.i.i.i.i.i": ; preds = %bb.hf, %bb.he, %bb.hd, %.lr.ph.i.i.i212.i.i.i.i.i.i
  %i.vv = icmp eq i64 %i.vn, %i.vk
  br i1 %i.vv, label %"_ZN4core3ptr73drop_in_place$LT$$u5b$index_scheduler..upgrade..v1_49..Condition$u5d$$GT$17hfd688ac8d6eb5359E.exit.i.i215.i.i.i.i.i.i", label %.lr.ph.i.i.i212.i.i.i.i.i.i

"_ZN4core3ptr73drop_in_place$LT$$u5b$index_scheduler..upgrade..v1_49..Condition$u5d$$GT$17hfd688ac8d6eb5359E.exit.i.i215.i.i.i.i.i.i": ; preds = %"_ZN4core3ptr63drop_in_place$LT$index_scheduler..upgrade..v1_49..Condition$GT$17hd6f211b27a7409e7E.exit.i.i.i214.i.i.i.i.i.i", %"_ZN4core3ptr70drop_in_place$LT$core..option..Option$LT$alloc..string..String$GT$$GT$17hd9220220a7cf1ae9E.exit.i.i.i.i.i.i"
  %i.vw = icmp eq i64 %.sroa.20.sroa.6.0.copyload.i.i.i, 0
  br i1 %i.vw, label %"_ZN4core3ptr102drop_in_place$LT$alloc..vec..into_iter..IntoIter$LT$index_scheduler..upgrade..v1_49..Condition$GT$$GT$17h3ab466132a000645E.exit217.i.i.i.i.i.i", label %bb.hg

bb.hg:                                            ; preds = %"_ZN4core3ptr73drop_in_place$LT$$u5b$index_scheduler..upgrade..v1_49..Condition$u5d$$GT$17hfd688ac8d6eb5359E.exit.i.i215.i.i.i.i.i.i"
  %i.vx = mul nuw i64 %.sroa.20.sroa.6.0.copyload.i.i.i, 40
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.20.sroa.7.0.copyload.i.i.i, i64 noundef %i.vx, i64 noundef range(i64 1, -9223372036854775807) 8) #77, !noalias !4326
  br label %"_ZN4core3ptr102drop_in_place$LT$alloc..vec..into_iter..IntoIter$LT$index_scheduler..upgrade..v1_49..Condition$GT$$GT$17h3ab466132a000645E.exit217.i.i.i.i.i.i"

bb.hh:                                            ; preds = %bb.ha
  %.not179.i.i.i.i.i.i = icmp eq i64 %.sroa.0292.sroa.0.0.insert.insert.i.i.i.i.i.i, -9223372036854775808
  br i1 %.not179.i.i.i.i.i.i, label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17he52df50a9b2815cbE.exit223.i.i.i.i.i.i", label %bb.hj

bb.hi:                                            ; preds = %bb.ha
  store i64 %.sroa.0292.sroa.0.0.insert.insert.i.i.i.i.i.i, ptr %i.k, align 8, !noalias !4297
  store ptr %i.vd, ptr %.sroa.gep271.i.i.i.i.i.i, align 8, !noalias !4297
  store i24 %.sroa.12.sroa.6.sroa.0.0.copyload.i.i.i.i.i.i, ptr %.sroa.gep270.i.i.i.i.i.i, align 8, !noalias !4297
  store i8 %.sroa.13.0.copyload.i.i.i.i.i.i, ptr %.sroa.59.sroa.5.0..sroa.59.0..sroa_idx11.sroa_idx.i.i.i.i.i.i, align 1, !noalias !4297
  store i32 %.sroa.6.sroa.8.sroa.7.0.extract.trunc.i.i.i.i.i.i, ptr %.sroa.59.sroa.6.0..sroa.59.0..sroa_idx11.sroa_idx.i.i.i.i.i.i, align 4, !noalias !4297
  br label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17he52df50a9b2815cbE.exit223.i.i.i.i.i.i"

bb.hj:                                            ; preds = %bb.hh
  %.sroa.9331.16.insert.ext.i.i.i.i.i.i = zext i24 %.sroa.12.sroa.6.sroa.0.0.copyload.i.i.i.i.i.i to i64
  %.sroa.9331.19.insert.ext.i.i.i.i.i.i = zext i8 %.sroa.13.0.copyload.i.i.i.i.i.i to i64
  %.sroa.9331.19.insert.shift.i.i.i.i.i.i = shl nuw nsw i64 %.sroa.9331.19.insert.ext.i.i.i.i.i.i, 24
  %.sroa.9331.20.insert.ext.i.i.i.i.i.i = shl i64 %.sroa.14.0.copyload.i.i.i.i.i.i, 32
  call void @llvm.experimental.noalias.scope.decl(metadata !4333)
  %i.vy = load i64, ptr %.sroa.gep270.i.i.i.i.i.i, align 8, !alias.scope !4333, !noalias !4297, !noundef !57 ; 4 uses
  %i.vz = icmp sgt i64 %i.vy, -1
  call void @llvm.assume(i1 %i.vz)
  %i.wa = icmp eq i64 %i.ve, %i.vy
  br i1 %i.wa, label %bb.hk, label %bb.hn, !prof !60

bb.hk:                                            ; preds = %bb.hj
  invoke fastcc void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$7reserve21do_reserve_and_handle17h57a1a48961a3f6a0E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.k, i64 noundef %i.ve, i64 noundef 1, i64 noundef 1, i64 noundef 1)
          to label %.noexc.i.i.i.i.i.i unwind label %bb.hl, !noalias !4310

.noexc.i.i.i.i.i.i:                               ; preds = %bb.hk
  %.pre.i.i.i.i.i.i.i = load i64, ptr %.sroa.gep270.i.i.i.i.i.i, align 8, !alias.scope !4333, !noalias !4297
  %.pre.i.i.i.i.i.i = load i64, ptr %i.k, align 8, !range !56, !alias.scope !4334, !noalias !4297
  br label %bb.hn

bb.hl:                                            ; preds = %bb.ho, %bb.hk
  %i.wb = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.sroa.5278.0..sroa_idx.i.i.i.le.i.i.i = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  store ptr %i.uj, ptr %.sroa.5278.0..sroa_idx.i.i.i.le.i.i.i, align 8, !noalias !4297
  %i.wc = icmp eq i64 %.sroa.0292.sroa.0.0.insert.insert.i.i.i.i.i.i, 0
  br i1 %i.wc, label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17he52df50a9b2815cbE.exit.i.i.i.i.i.i", label %bb.hm

bb.hm:                                            ; preds = %bb.hl
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.vd, i64 noundef %.sroa.0292.sroa.0.0.insert.insert.i.i.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #77, !noalias !4335
  br label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17he52df50a9b2815cbE.exit.i.i.i.i.i.i"

bb.hn:                                            ; preds = %.noexc.i.i.i.i.i.i, %bb.hj
  %i.wd = phi i64 [ %i.ve, %bb.hj ], [ %.pre.i.i.i.i.i.i, %.noexc.i.i.i.i.i.i ]
  %i.we = phi i64 [ %i.vy, %bb.hj ], [ %.pre.i.i.i.i.i.i.i, %.noexc.i.i.i.i.i.i ] ; 2 uses
  %i.wf = load ptr, ptr %.sroa.gep271.i.i.i.i.i.i, align 8, !alias.scope !4333, !noalias !4297, !nonnull !57, !noundef !57 ; 2 uses
  %i.wg = icmp sgt i64 %i.we, -1
  call void @llvm.assume(i1 %i.wg)
  %i.wh = getelementptr inbounds nuw i8, ptr %i.wf, i64 %i.we
  store i8 32, ptr %i.wh, align 1, !noalias !4336
  %i.wi = add nuw i64 %i.vy, 1                    ; 4 uses
  store i64 %i.wi, ptr %.sroa.gep270.i.i.i.i.i.i, align 8, !alias.scope !4333, !noalias !4297
  %i.wj = icmp ne i64 %.sroa.9293.4.insert.insert.i.i.i.i.i.i, 0
  call void @llvm.assume(i1 %i.wj)
  %i.wk = getelementptr inbounds nuw i8, ptr %i.vd, i64 %.sroa.9331.19.insert.shift.i.i.i.i.i.i
  %i.wl = getelementptr inbounds nuw i8, ptr %i.wk, i64 %.sroa.9331.16.insert.ext.i.i.i.i.i.i
  %i.wm = getelementptr inbounds nuw i8, ptr %i.wl, i64 %.sroa.9331.20.insert.ext.i.i.i.i.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !4337)
  %i.wn = ptrtoint ptr %i.wm to i64
  %i.wo = sub nuw i64 %i.wn, %.sroa.9293.4.insert.insert.i.i.i.i.i.i ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !4338)
  %i.wp = sub i64 %i.wd, %i.wi
  %i.wq = icmp ugt i64 %i.wo, %i.wp
  br i1 %i.wq, label %bb.ho, label %bb.hp, !prof !60

bb.ho:                                            ; preds = %bb.hn
  invoke fastcc void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$7reserve21do_reserve_and_handle17h57a1a48961a3f6a0E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.k, i64 noundef %i.wi, i64 noundef %i.wo, i64 noundef 1, i64 noundef 1)
          to label %.noexc220.i.i.i.i.i.i unwind label %bb.hl, !noalias !4310

.noexc220.i.i.i.i.i.i:                            ; preds = %bb.ho
  %.pre.i.i.i.i.i.i.i.i = load i64, ptr %.sroa.gep270.i.i.i.i.i.i, align 8, !alias.scope !4339, !noalias !4297
  %.pre581.i.i.i.i.i.i = load ptr, ptr %.sroa.gep271.i.i.i.i.i.i, align 8, !alias.scope !4339, !noalias !4297
  br label %bb.hp

bb.hp:                                            ; preds = %.noexc220.i.i.i.i.i.i, %bb.hn
  %i.wr = phi ptr [ %i.wf, %bb.hn ], [ %.pre581.i.i.i.i.i.i, %.noexc220.i.i.i.i.i.i ]
  %i.ws = phi i64 [ %i.wi, %bb.hn ], [ %.pre.i.i.i.i.i.i.i.i, %.noexc220.i.i.i.i.i.i ] ; 3 uses
  %i.wt = icmp sgt i64 %i.ws, -1
  call void @llvm.assume(i1 %i.wt)
  %i.wu = getelementptr inbounds nuw i8, ptr %i.wr, i64 %i.ws
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.wu, ptr nonnull readonly align 1 %i.vd, i64 %i.wo, i1 false), !noalias !4340
  %i.wv = add i64 %i.ws, %i.wo
  store i64 %i.wv, ptr %.sroa.gep270.i.i.i.i.i.i, align 8, !alias.scope !4339, !noalias !4297
  %i.ww = icmp eq i64 %.sroa.0292.sroa.0.0.insert.insert.i.i.i.i.i.i, 0
  br i1 %i.ww, label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17he52df50a9b2815cbE.exit223.i.i.i.i.i.i", label %bb.hq

bb.hq:                                            ; preds = %bb.hp
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.vd, i64 noundef %.sroa.0292.sroa.0.0.insert.insert.i.i.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #77, !noalias !4341
  br label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17he52df50a9b2815cbE.exit223.i.i.i.i.i.i"

"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17he52df50a9b2815cbE.exit223.i.i.i.i.i.i": ; preds = %bb.hy, %bb.hw, %.thread423.i.i.i.i.i.i, %bb.hq, %bb.hp, %bb.hi, %bb.hh, %bb.gz, %bb.gw
  %.sroa.14.0.copyload505.i.i.i.i.i.i = phi i64 [ %.sroa.14.0.copyload506.i.i.i.i.i.i.a, %bb.hp ], [ %.sroa.14.0.copyload506.i.i.i.i.i.i.a, %bb.hq ], [ %.sroa.14.0.copyload506.i.i.i.i.i.i.a, %bb.gz ], [ %.sroa.14.0.copyload506.i.i.i.i.i.i.a, %bb.hi ], [ %.sroa.14.0.copyload506.i.i.i.i.i.i.a, %bb.hh ], [ %.sroa.14.0.copyload.i.i.i.i.i.i, %bb.gw ], [ %.sroa.890.0.i.i.i.i.i.i, %bb.hw ], [ undef, %.thread423.i.i.i.i.i.i ], [ %.sroa.890.0.i.i.i.i.i.i, %bb.hy ] ; 2 uses
  %.sroa.13.0.copyload500.i.i.i.i.i.i = phi i8 [ %.sroa.13.0.copyload501.i.i.i.i.i.i.a, %bb.hp ], [ %.sroa.13.0.copyload501.i.i.i.i.i.i.a, %bb.hq ], [ %.sroa.13.0.copyload501.i.i.i.i.i.i.a, %bb.gz ], [ %.sroa.13.0.copyload501.i.i.i.i.i.i.a, %bb.hi ], [ %.sroa.13.0.copyload501.i.i.i.i.i.i.a, %bb.hh ], [ %.sroa.13.0.copyload.i.i.i.i.i.i, %bb.gw ], [ 0, %bb.hw ], [ 1, %.thread423.i.i.i.i.i.i ], [ 0, %bb.hy ] ; 2 uses
  %.sroa.12.sroa.6.sroa.0.0.copyload495.i.i.i.i.i.i = phi i24 [ %.sroa.12.sroa.6.sroa.0.0.copyload496.i.i.i.i.i.i.a, %bb.hp ], [ %.sroa.12.sroa.6.sroa.0.0.copyload496.i.i.i.i.i.i.a, %bb.hq ], [ %.sroa.12.sroa.6.sroa.0.0.copyload496.i.i.i.i.i.i.a, %bb.gz ], [ %.sroa.12.sroa.6.sroa.0.0.copyload496.i.i.i.i.i.i.a, %bb.hi ], [ %.sroa.12.sroa.6.sroa.0.0.copyload496.i.i.i.i.i.i.a, %bb.hh ], [ %.sroa.12.sroa.6.sroa.0.0.copyload.i.i.i.i.i.i, %bb.gw ], [ %.sroa.082.sroa.7.0.i.i.i.i.i.i, %bb.hw ], [ undef, %.thread423.i.i.i.i.i.i ], [ %.sroa.082.sroa.7.0.i.i.i.i.i.i, %bb.hy ] ; 2 uses
  %.sroa.12.sroa.0.0.copyload490.i.i.i.i.i.i = phi i32 [ %.sroa.12.sroa.0.0.copyload491.i.i.i.i.i.i.a, %bb.hp ], [ %.sroa.12.sroa.0.0.copyload491.i.i.i.i.i.i.a, %bb.hq ], [ %.sroa.12.sroa.0.0.copyload491.i.i.i.i.i.i.a, %bb.gz ], [ %.sroa.12.sroa.0.0.copyload491.i.i.i.i.i.i.a, %bb.hi ], [ %.sroa.12.sroa.0.0.copyload491.i.i.i.i.i.i.a, %bb.hh ], [ %.sroa.12.sroa.0.0.copyload.i.i.i.i.i.i, %bb.gw ], [ %.sroa.082.sroa.0.0.i.i.i.i.i.i, %bb.hw ], [ undef, %.thread423.i.i.i.i.i.i ], [ %.sroa.082.sroa.0.0.i.i.i.i.i.i, %bb.hy ] ; 2 uses
  %.sroa.0156.sroa.4.0.copyload485.i.i.i.i.i.i = phi i24 [ %.sroa.0156.sroa.4.0.copyload486.i.i.i.i.i.i.a, %bb.hp ], [ %.sroa.0156.sroa.4.0.copyload486.i.i.i.i.i.i.a, %bb.hq ], [ %.sroa.0156.sroa.4.0.copyload486.i.i.i.i.i.i.a, %bb.gz ], [ %.sroa.0156.sroa.4.0.copyload486.i.i.i.i.i.i.a, %bb.hi ], [ %.sroa.0156.sroa.4.0.copyload486.i.i.i.i.i.i.a, %bb.hh ], [ %.sroa.9286.sroa.6.0.copyload.i.i.i.i.i.i, %bb.gw ], [ %.sroa.050.sroa.7.0.i.i.i.i.i.i, %bb.hw ], [ %.sroa.050.sroa.7.0.i.i.i.i.i.i, %.thread423.i.i.i.i.i.i ], [ %.sroa.050.sroa.7.0.i.i.i.i.i.i, %bb.hy ] ; 2 uses
  %.sroa.5158.0.copyload466.i.i.i.i.i.i = phi i64 [ %.sroa.5158.0.copyload467473.i.i.i.i.i.i, %bb.hp ], [ %.sroa.5158.0.copyload467473.i.i.i.i.i.i, %bb.hq ], [ %.sroa.5158.0.copyload467473.i.i.i.i.i.i, %bb.gz ], [ %.sroa.5158.0.copyload467473.i.i.i.i.i.i, %bb.hi ], [ %.sroa.5158.0.copyload467473.i.i.i.i.i.i, %bb.hh ], [ %.sroa.11288.0.copyload.i.i.i.i.i.i, %bb.gw ], [ %.sroa.8.0.i.i.i.i.i.i, %bb.hw ], [ %.sroa.8.0.i.i.i.i.i.i, %.thread423.i.i.i.i.i.i ], [ %.sroa.8.0.i.i.i.i.i.i, %bb.hy ] ; 2 uses
  %.sroa.0156.sroa.0.0.copyload461.i.i.i.i.i.i = phi i32 [ %.sroa.0156.sroa.0.0.copyload462474.i.i.i.i.i.i, %bb.hp ], [ %.sroa.0156.sroa.0.0.copyload462474.i.i.i.i.i.i, %bb.hq ], [ %.sroa.0156.sroa.0.0.copyload462474.i.i.i.i.i.i, %bb.gz ], [ %.sroa.0156.sroa.0.0.copyload462474.i.i.i.i.i.i, %bb.hi ], [ %.sroa.0156.sroa.0.0.copyload462474.i.i.i.i.i.i, %bb.hh ], [ %.sroa.9286.sroa.0.sroa.6.0.copyload.i.i.i.i.i.i, %bb.gw ], [ %.sroa.050.sroa.0.0.i.i.i.i.i.i, %bb.hw ], [ %.sroa.050.sroa.0.0.i.i.i.i.i.i, %.thread423.i.i.i.i.i.i ], [ %.sroa.050.sroa.0.0.i.i.i.i.i.i, %bb.hy ] ; 2 uses
  %.sroa.4157.0.copyload456.i.i.i.i.i.i = phi i8 [ %.sroa.4157.0.copyload457475.i.i.i.i.i.i, %bb.hp ], [ %.sroa.4157.0.copyload457475.i.i.i.i.i.i, %bb.hq ], [ %.sroa.4157.0.copyload457475.i.i.i.i.i.i, %bb.gz ], [ %.sroa.4157.0.copyload457475.i.i.i.i.i.i, %bb.hi ], [ %.sroa.4157.0.copyload457475.i.i.i.i.i.i, %bb.hh ], [ %.sroa.10287.0.copyload.i.i.i.i.i.i, %bb.gw ], [ 1, %bb.hw ], [ %.sroa.7.0.i.i.i.i.i.i, %.thread423.i.i.i.i.i.i ], [ 0, %bb.hy ] ; 2 uses
  %i.wx = icmp eq ptr %i.uj, %i.uf
  br i1 %i.wx, label %"_ZN4core3ptr73drop_in_place$LT$$u5b$index_scheduler..upgrade..v1_49..Condition$u5d$$GT$17hfd688ac8d6eb5359E.exit.i.i.i.i.i.i.i.i", label %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hded5e640afe2e52fE.exit.i.i.i.i.i.i"

bb.hr:                                            ; preds = %bb.gw
  %i.wy = trunc nuw i8 %.sroa.10287.0.copyload.i.i.i.i.i.i to i1
  br i1 %i.wy, label %bb.hs, label %bb.hu

.thread.i.i.i.i.i.i:                              ; preds = %bb.gw
  %i.wz = trunc nuw i8 %.sroa.10287.0.copyload.i.i.i.i.i.i to i1
  br i1 %i.wz, label %bb.hs, label %bb.ht

bb.hs:                                            ; preds = %bb.hu, %bb.ht, %.thread.i.i.i.i.i.i, %bb.hr
  %.sroa.050.sroa.7.0.i.i.i.i.i.i = phi i24 [ undef, %.thread.i.i.i.i.i.i ], [ %.sroa.4366.0.copyload.i.i.i.i.i.i, %bb.hu ], [ %.sroa.9286.sroa.6.0.copyload.i.i.i.i.i.i, %bb.ht ], [ %.sroa.0156.sroa.4.0.copyload486.i.i.i.i.i.i.a, %bb.hr ] ; 4 uses
  %.sroa.050.sroa.0.0.i.i.i.i.i.i = phi i32 [ undef, %.thread.i.i.i.i.i.i ], [ %.sroa.0365.0.copyload.i.i.i.i.i.i, %bb.hu ], [ %.sroa.9286.sroa.0.sroa.6.0.copyload.i.i.i.i.i.i, %bb.ht ], [ %.sroa.0156.sroa.0.0.copyload462474.i.i.i.i.i.i, %bb.hr ] ; 4 uses
  %.sroa.8.0.i.i.i.i.i.i = phi i64 [ undef, %.thread.i.i.i.i.i.i ], [ %.sroa.6368.0.copyload.i.i.i.i.i.i, %bb.hu ], [ %.sroa.11288.0.copyload.i.i.i.i.i.i, %bb.ht ], [ %.sroa.5158.0.copyload467473.i.i.i.i.i.i, %bb.hr ] ; 6 uses
  %.sroa.7.0.i.i.i.i.i.i = phi i8 [ 1, %.thread.i.i.i.i.i.i ], [ 0, %bb.hu ], [ 0, %bb.ht ], [ 0, %bb.hr ] ; 2 uses
  %i.xa = trunc nuw i8 %.sroa.13.0.copyload501.i.i.i.i.i.i.a to i1
  %i.xb = trunc nuw i8 %.sroa.13.0.copyload.i.i.i.i.i.i to i1 ; 2 uses
  br i1 %i.xa, label %.thread423.i.i.i.i.i.i, label %bb.hv

bb.ht:                                            ; preds = %.thread.i.i.i.i.i.i
  br label %bb.hs

bb.hu:                                            ; preds = %bb.hr
  store i32 %.sroa.0156.sroa.0.0.copyload462474.i.i.i.i.i.i, ptr %i.i, align 4, !noalias !4297
  store i24 %.sroa.0156.sroa.4.0.copyload486.i.i.i.i.i.i.a, ptr %.sroa.0164.sroa.5.0..sroa_idx.i.i.i.i.i.i, align 4, !noalias !4297
  store i8 0, ptr %.sroa.5165.0..sroa_idx.i.i.i.i.i.i, align 1, !noalias !4297
  store i64 %.sroa.5158.0.copyload467473.i.i.i.i.i.i, ptr %.sroa.8166.0..sroa_idx.i.i.i.i.i.i, align 4, !noalias !4297
  %.sroa.7.8.extract.trunc.i.i.i.i.i.i = trunc i64 %.sroa.11288.0.copyload.i.i.i.i.i.i to i32
  %.sroa.10568.8.extract.shift.i.i.i.i.i.i = lshr i64 %.sroa.11288.0.copyload.i.i.i.i.i.i, 32
  %.sroa.10568.8.extract.trunc.i.i.i.i.i.i = trunc i64 %.sroa.10568.8.extract.shift.i.i.i.i.i.i to i24
  %i.xc = ashr i32 %.sroa.7.8.extract.trunc.i.i.i.i.i.i, 10
  %i.xd = trunc i64 %.sroa.11288.0.copyload.i.i.i.i.i.i to i16
  %i.xe = and i16 %i.xd, 511
  %.sroa.3566.0.insert.ext.i.i.i.i.i.i = zext i24 %.sroa.9286.sroa.6.0.copyload.i.i.i.i.i.i to i64
  %.sroa.3566.0.insert.shift.i.i.i.i.i.i = shl nuw nsw i64 %.sroa.3566.0.insert.ext.i.i.i.i.i.i, 32
  %.sroa.0565.0.insert.ext.i.i.i.i.i.i = zext i32 %.sroa.9286.sroa.0.sroa.6.0.copyload.i.i.i.i.i.i to i64
  %.sroa.0565.0.insert.insert.i.i.i.i.i.i = or disjoint i64 %.sroa.3566.0.insert.shift.i.i.i.i.i.i, %.sroa.0565.0.insert.ext.i.i.i.i.i.i
  %i.xf = sext i32 %i.xc to i128
  %i.xg = shl nsw i128 %i.xf, 74
  %i.xh = zext nneg i16 %i.xe to i128
  %i.xi = shl nuw nsw i128 %i.xh, 64
  %i.xj = or disjoint i128 %i.xi, %i.xg
  %i.xk = zext nneg i64 %.sroa.0565.0.insert.insert.i.i.i.i.i.i to i128
  %i.xl = or disjoint i128 %i.xj, %i.xk
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !4342
  call fastcc void @_ZN4time16offset_date_time14OffsetDateTime13to_offset_raw17h28295743bf0bcc34E(ptr noalias noundef align 4 captures(address) dereferenceable(16) %i.f, ptr noalias noundef nonnull readonly align 4 captures(address) dereferenceable(16) %i.i, i24 %.sroa.10568.8.extract.trunc.i.i.i.i.i.i), !noalias !4343
  %i.xm = load i32, ptr %i.f, align 4, !noalias !4342, !noundef !57
  %i.xn = load i16, ptr %i.eg, align 4, !noalias !4342, !noundef !57
  %.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i.i = load i64, ptr %i.eh, align 4, !noalias !4342
  %i.xo = sext i32 %i.xm to i128
  %i.xp = shl nsw i128 %i.xo, 74
  %i.xq = zext i16 %i.xn to i128
  %i.xr = shl nuw nsw i128 %i.xq, 64
  %i.xs = or i128 %i.xr, %i.xp
  %i.xt = zext i64 %.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i.i to i128
  %i.xu = or disjoint i128 %i.xs, %i.xt
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !4342
  %i.xv = icmp slt i128 %i.xl, %i.xu              ; 3 uses
  %.sroa.0365.0.copyload.i.i.i.i.i.i = select i1 %i.xv, i32 %.sroa.0156.sroa.0.0.copyload462474.i.i.i.i.i.i, i32 %.sroa.9286.sroa.0.sroa.6.0.copyload.i.i.i.i.i.i
  %.sroa.4366.0.copyload.i.i.i.i.i.i = select i1 %i.xv, i24 %.sroa.0156.sroa.4.0.copyload486.i.i.i.i.i.i.a, i24 %.sroa.9286.sroa.6.0.copyload.i.i.i.i.i.i
  %.sroa.6368.0.copyload.i.i.i.i.i.i = select i1 %i.xv, i64 %.sroa.5158.0.copyload467473.i.i.i.i.i.i, i64 %.sroa.11288.0.copyload.i.i.i.i.i.i
  br label %bb.hs

bb.hv:                                            ; preds = %bb.hs
  br i1 %i.xb, label %bb.hw, label %bb.hx

.thread423.i.i.i.i.i.i:                           ; preds = %bb.hs
  br i1 %i.xb, label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17he52df50a9b2815cbE.exit223.i.i.i.i.i.i", label %bb.hw

bb.hw:                                            ; preds = %bb.hx, %.thread423.i.i.i.i.i.i, %bb.hv
  %.sroa.082.sroa.0.0.i.i.i.i.i.i = phi i32 [ %.sroa.0375.0.copyload.i.i.i.i.i.i, %bb.hx ], [ %.sroa.12.sroa.0.0.copyload.i.i.i.i.i.i, %.thread423.i.i.i.i.i.i ], [ %.sroa.12.sroa.0.0.copyload491.i.i.i.i.i.i.a, %bb.hv ] ; 3 uses
  %.sroa.082.sroa.7.0.i.i.i.i.i.i = phi i24 [ %.sroa.4376.0.copyload.i.i.i.i.i.i, %bb.hx ], [ %.sroa.12.sroa.6.sroa.0.0.copyload.i.i.i.i.i.i, %.thread423.i.i.i.i.i.i ], [ %.sroa.12.sroa.6.sroa.0.0.copyload496.i.i.i.i.i.i.a, %bb.hv ] ; 3 uses
  %.sroa.890.0.i.i.i.i.i.i = phi i64 [ %.sroa.6378.0.copyload.i.i.i.i.i.i, %bb.hx ], [ %.sroa.14.0.copyload.i.i.i.i.i.i, %.thread423.i.i.i.i.i.i ], [ %.sroa.14.0.copyload506.i.i.i.i.i.i.a, %bb.hv ] ; 3 uses
  %i.xw = trunc nuw i8 %.sroa.7.0.i.i.i.i.i.i to i1
  br i1 %i.xw, label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17he52df50a9b2815cbE.exit223.i.i.i.i.i.i", label %bb.hy

bb.hx:                                            ; preds = %bb.hv
  store i32 %.sroa.12.sroa.0.0.copyload491.i.i.i.i.i.i.a, ptr %i.h, align 4, !noalias !4297
  store i24 %.sroa.12.sroa.6.sroa.0.0.copyload496.i.i.i.i.i.i.a, ptr %.sroa.0167.sroa.5.0..sroa_idx.i.i.i.i.i.i, align 4, !noalias !4297
  store i8 0, ptr %.sroa.5168.0..sroa_idx.i.i.i.i.i.i, align 1, !noalias !4297
  store i64 %.sroa.14.0.copyload506.i.i.i.i.i.i.a, ptr %.sroa.8169.0..sroa_idx.i.i.i.i.i.i, align 4, !noalias !4297
  %.sroa.7572.8.extract.trunc.i.i.i.i.i.i = trunc i64 %.sroa.14.0.copyload.i.i.i.i.i.i to i32
  %.sroa.10573.8.extract.shift.i.i.i.i.i.i = lshr i64 %.sroa.14.0.copyload.i.i.i.i.i.i, 32
  %.sroa.10573.8.extract.trunc.i.i.i.i.i.i = trunc i64 %.sroa.10573.8.extract.shift.i.i.i.i.i.i to i24
  %i.xx = ashr i32 %.sroa.7572.8.extract.trunc.i.i.i.i.i.i, 10
  %i.xy = trunc i64 %.sroa.14.0.copyload.i.i.i.i.i.i to i16
  %i.xz = and i16 %i.xy, 511
  %.sroa.3570.0.insert.ext.i.i.i.i.i.i = zext i24 %.sroa.12.sroa.6.sroa.0.0.copyload.i.i.i.i.i.i to i64
  %.sroa.3570.0.insert.shift.i.i.i.i.i.i = shl nuw nsw i64 %.sroa.3570.0.insert.ext.i.i.i.i.i.i, 32
  %.sroa.0569.0.insert.ext.i.i.i.i.i.i = zext i32 %.sroa.12.sroa.0.0.copyload.i.i.i.i.i.i to i64
  %.sroa.0569.0.insert.insert.i.i.i.i.i.i = or disjoint i64 %.sroa.3570.0.insert.shift.i.i.i.i.i.i, %.sroa.0569.0.insert.ext.i.i.i.i.i.i
  %i.ya = sext i32 %i.xx to i128
  %i.yb = shl nsw i128 %i.ya, 74
  %i.yc = zext nneg i16 %i.xz to i128
  %i.yd = shl nuw nsw i128 %i.yc, 64
  %i.ye = or disjoint i128 %i.yd, %i.yb
  %i.yf = zext nneg i64 %.sroa.0569.0.insert.insert.i.i.i.i.i.i to i128
  %i.yg = or disjoint i128 %i.ye, %i.yf
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !4344
  call fastcc void @_ZN4time16offset_date_time14OffsetDateTime13to_offset_raw17h28295743bf0bcc34E(ptr noalias noundef align 4 captures(address) dereferenceable(16) %i.e, ptr noalias noundef nonnull readonly align 4 captures(address) dereferenceable(16) %i.h, i24 %.sroa.10573.8.extract.trunc.i.i.i.i.i.i), !noalias !4345
  %i.yh = load i32, ptr %i.e, align 4, !noalias !4344, !noundef !57
  %i.yi = load i16, ptr %i.ei, align 4, !noalias !4344, !noundef !57
  %.sroa.0.0.copyload.i.i.i.i226.i.i.i.i.i.i = load i64, ptr %i.ej, align 4, !noalias !4344
  %i.yj = sext i32 %i.yh to i128
  %i.yk = shl nsw i128 %i.yj, 74
  %i.yl = zext i16 %i.yi to i128
  %i.ym = shl nuw nsw i128 %i.yl, 64
  %i.yn = or i128 %i.ym, %i.yk
  %i.yo = zext i64 %.sroa.0.0.copyload.i.i.i.i226.i.i.i.i.i.i to i128
  %i.yp = or disjoint i128 %i.yn, %i.yo
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !4344
  %i.yq = icmp slt i128 %i.yg, %i.yp              ; 3 uses
  %.sroa.0375.0.copyload.i.i.i.i.i.i = select i1 %i.yq, i32 %.sroa.12.sroa.0.0.copyload.i.i.i.i.i.i, i32 %.sroa.12.sroa.0.0.copyload491.i.i.i.i.i.i.a
  %.sroa.4376.0.copyload.i.i.i.i.i.i = select i1 %i.yq, i24 %.sroa.12.sroa.6.sroa.0.0.copyload.i.i.i.i.i.i, i24 %.sroa.12.sroa.6.sroa.0.0.copyload496.i.i.i.i.i.i.a
  %.sroa.6378.0.copyload.i.i.i.i.i.i = select i1 %i.yq, i64 %.sroa.14.0.copyload.i.i.i.i.i.i, i64 %.sroa.14.0.copyload506.i.i.i.i.i.i.a
  br label %bb.hw

bb.hy:                                            ; preds = %bb.hw
  %.sroa.0379.0.insert.ext.i.i.i.i.i.i = zext i32 %.sroa.050.sroa.0.0.i.i.i.i.i.i to i64
  %.sroa.0379.4.insert.ext.i.i.i.i.i.i = zext i24 %.sroa.050.sroa.7.0.i.i.i.i.i.i to i64
  %.sroa.0379.4.insert.shift.i.i.i.i.i.i = shl nuw nsw i64 %.sroa.0379.4.insert.ext.i.i.i.i.i.i, 32
  %.sroa.0379.4.insert.insert.i.i.i.i.i.i = or disjoint i64 %.sroa.0379.4.insert.shift.i.i.i.i.i.i, %.sroa.0379.0.insert.ext.i.i.i.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !4297
  store i32 %.sroa.082.sroa.0.0.i.i.i.i.i.i, ptr %i.g, align 4, !noalias !4297
  store i24 %.sroa.082.sroa.7.0.i.i.i.i.i.i, ptr %.sroa.0118.sroa.2.0..sroa_idx.i.i.i.i.i.i, align 4, !noalias !4297
  store i8 0, ptr %.sroa.2119.0..sroa_idx.i.i.i.i.i.i, align 1, !noalias !4297
  store i64 %.sroa.890.0.i.i.i.i.i.i, ptr %.sroa.4120.0..sroa_idx.i.i.i.i.i.i, align 4, !noalias !4297
  %.sroa.7380.8.extract.trunc.i.i.i.i.i.i = trunc i64 %.sroa.8.0.i.i.i.i.i.i to i32
  %i.yr = ashr i32 %.sroa.7380.8.extract.trunc.i.i.i.i.i.i, 10
  %i.ys = trunc i64 %.sroa.8.0.i.i.i.i.i.i to i16
  %i.yt = and i16 %i.ys, 511
  %i.yu = sext i32 %i.yr to i128
  %i.yv = shl nsw i128 %i.yu, 74
  %i.yw = zext nneg i16 %i.yt to i128
  %i.yx = shl nuw nsw i128 %i.yw, 64
  %i.yy = or disjoint i128 %i.yx, %i.yv
  %i.yz = zext nneg i64 %.sroa.0379.4.insert.insert.i.i.i.i.i.i to i128
  %i.za = or disjoint i128 %i.yy, %i.yz
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !4346
  %.sroa.7380.12.extract.shift.i.i.i.i.i.i = lshr i64 %.sroa.8.0.i.i.i.i.i.i, 32
  %.sroa.7380.12.extract.trunc.i.i.i.i.i.i = trunc i64 %.sroa.7380.12.extract.shift.i.i.i.i.i.i to i24
  call fastcc void @_ZN4time16offset_date_time14OffsetDateTime13to_offset_raw17h28295743bf0bcc34E(ptr noalias noundef align 4 captures(address) dereferenceable(16) %i.d, ptr noalias noundef nonnull readonly align 4 captures(address) dereferenceable(16) %i.g, i24 %.sroa.7380.12.extract.trunc.i.i.i.i.i.i), !noalias !4347
  %i.zb = load i32, ptr %i.d, align 4, !noalias !4346, !noundef !57
  %i.zc = load i16, ptr %i.ek, align 4, !noalias !4346, !noundef !57
  %.sroa.0.0.copyload.i228.i.i.i.i.i.i = load i64, ptr %i.el, align 4, !noalias !4346
  %i.zd = sext i32 %i.zb to i128
  %i.ze = shl nsw i128 %i.zd, 74
  %i.zf = zext i16 %i.zc to i128
  %i.zg = shl nuw nsw i128 %i.zf, 64
  %i.zh = or i128 %i.zg, %i.ze
  %i.zi = zext i64 %.sroa.0.0.copyload.i228.i.i.i.i.i.i to i128
  %i.zj = or disjoint i128 %i.zh, %i.zi
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !4346
  %i.zk = icmp sgt i128 %i.za, %i.zj
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !4297
  br i1 %i.zk, label %"_ZN4core3ptr70drop_in_place$LT$core..option..Option$LT$alloc..string..String$GT$$GT$17hd9220220a7cf1ae9E.exit.i.i.i.i.i.i", label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17he52df50a9b2815cbE.exit223.i.i.i.i.i.i"

"_ZN4core3ptr102drop_in_place$LT$alloc..vec..into_iter..IntoIter$LT$index_scheduler..upgrade..v1_49..Condition$GT$$GT$17h3ab466132a000645E.exit217.i.i.i.i.i.i": ; preds = %bb.hg, %"_ZN4core3ptr73drop_in_place$LT$$u5b$index_scheduler..upgrade..v1_49..Condition$u5d$$GT$17hfd688ac8d6eb5359E.exit.i.i215.i.i.i.i.i.i"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !4297
  call void @llvm.experimental.noalias.scope.decl(metadata !4348)
  %i.zl = load i64, ptr %i.k, align 8, !range !84, !alias.scope !4348, !noalias !4297, !noundef !57 ; 2 uses
  %switch.i229.i.i.i.i.i.i = icmp sgt i64 %i.zl, 0
  br i1 %switch.i229.i.i.i.i.i.i, label %bb.hz, label %"_ZN4core3ptr104drop_in_place$LT$core..option..Option$LT$meilisearch_types..dynamic_search_rules..QueryCondition$GT$$GT$17h0dc41291d74c1903E.exit231.i.i.i.i.i.i"

bb.hz:                                            ; preds = %"_ZN4core3ptr102drop_in_place$LT$alloc..vec..into_iter..IntoIter$LT$index_scheduler..upgrade..v1_49..Condition$GT$$GT$17h3ab466132a000645E.exit217.i.i.i.i.i.i"
  %.val1.i230.i.i.i.i.i.i = load ptr, ptr %.sroa.gep271.i.i.i.i.i.i, align 8, !alias.scope !4348, !noalias !4297, !nonnull !57, !noundef !57
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i230.i.i.i.i.i.i, i64 noundef %i.zl, i64 noundef range(i64 1, -9223372036854775807) 1) #77, !noalias !4349
  br label %"_ZN4core3ptr104drop_in_place$LT$core..option..Option$LT$meilisearch_types..dynamic_search_rules..QueryCondition$GT$$GT$17h0dc41291d74c1903E.exit231.i.i.i.i.i.i"

"_ZN4core3ptr104drop_in_place$LT$core..option..Option$LT$meilisearch_types..dynamic_search_rules..QueryCondition$GT$$GT$17h0dc41291d74c1903E.exit.i.i.i.i.i.i": ; preds = %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17he52df50a9b2815cbE.exit.i.i.i.i.i.i", %bb.gq
  call fastcc void @"_ZN4core3ptr95drop_in_place$LT$alloc..vec..Vec$LT$meilisearch_types..dynamic_search_rules..RuleAction$GT$$GT$17h781396e195c6eafaE"(ptr noalias noundef align 8 dereferenceable(24) %i.l) #79, !noalias !4310
  switch i64 %.sroa.20.sroa.12.0.copyload.i.i.i, label %bb.ih [
    i64 -9223372036854775808, label %"_ZN4core3ptr70drop_in_place$LT$core..option..Option$LT$alloc..string..String$GT$$GT$17hd9220220a7cf1ae9E.exit242.i.i.i.i.i.i"
    i64 0, label %"_ZN4core3ptr70drop_in_place$LT$core..option..Option$LT$alloc..string..String$GT$$GT$17hd9220220a7cf1ae9E.exit242.i.i.i.i.i.i"
  ]

"_ZN4core3ptr104drop_in_place$LT$core..option..Option$LT$meilisearch_types..dynamic_search_rules..QueryCondition$GT$$GT$17h0dc41291d74c1903E.exit231.i.i.i.i.i.i": ; preds = %bb.hz, %"_ZN4core3ptr102drop_in_place$LT$alloc..vec..into_iter..IntoIter$LT$index_scheduler..upgrade..v1_49..Condition$GT$$GT$17h3ab466132a000645E.exit217.i.i.i.i.i.i"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !4297
  call void @llvm.experimental.noalias.scope.decl(metadata !4350)
  %i.zm = icmp eq ptr %.sroa.4.0.lcssa.i.i.i.i.i.i.i.i603.i.i.i.i.i.i, %.sroa.20.sroa.10.0.copyload.i.i.i
  br i1 %i.zm, label %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h5038a6c2982f6c82E.exit.i.i.i.i.i.i.i", label %.lr.ph.i.i.i233.i.i.i.i.i.i

.lr.ph.i.i.i233.i.i.i.i.i.i:                      ; preds = %"_ZN4core3ptr104drop_in_place$LT$core..option..Option$LT$meilisearch_types..dynamic_search_rules..QueryCondition$GT$$GT$17h0dc41291d74c1903E.exit231.i.i.i.i.i.i", %"_ZN4core3ptr72drop_in_place$LT$meilisearch_types..dynamic_search_rules..RuleAction$GT$17hd4db808d71ca7ac6E.exit.i.i.i.i.i.i.i.i.i"
  %.sroa.0.07.i.i.i234.i.i.i.i.i.i = phi i64 [ %i.zo, %"_ZN4core3ptr72drop_in_place$LT$meilisearch_types..dynamic_search_rules..RuleAction$GT$17hd4db808d71ca7ac6E.exit.i.i.i.i.i.i.i.i.i" ], [ 0, %"_ZN4core3ptr104drop_in_place$LT$core..option..Option$LT$meilisearch_types..dynamic_search_rules..QueryCondition$GT$$GT$17h0dc41291d74c1903E.exit231.i.i.i.i.i.i" ] ; 2 uses
  %i.zn = getelementptr inbounds nuw [56 x i8], ptr %.sroa.20.sroa.10.0.copyload.i.i.i, i64 %.sroa.0.07.i.i.i234.i.i.i.i.i.i ; 4 uses
  %i.zo = add nuw i64 %.sroa.0.07.i.i.i234.i.i.i.i.i.i, 1 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !4351)
  call void @llvm.experimental.noalias.scope.decl(metadata !4352)
  %i.zp = getelementptr inbounds nuw i8, ptr %i.zn, i64 24
  call void @llvm.experimental.noalias.scope.decl(metadata !4353)
  %i.zq = load i64, ptr %i.zp, align 8, !range !83, !alias.scope !4354, !noalias !4355, !noundef !57 ; 3 uses
  %i.zr = icmp eq i64 %i.zq, -9223372036854775808
  br i1 %i.zr, label %"_ZN4core3ptr87drop_in_place$LT$core..option..Option$LT$meilisearch_types..index_uid..IndexUid$GT$$GT$17hcad2dbd4c610fbf3E.exit.i.i.i.i.i.i.i.i.i.i.i", label %bb.ia

bb.ia:                                            ; preds = %.lr.ph.i.i.i233.i.i.i.i.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !4356)
  call void @llvm.experimental.noalias.scope.decl(metadata !4357)
  call void @llvm.experimental.noalias.scope.decl(metadata !4358)
  %i.zs = icmp eq i64 %i.zq, 0
  br i1 %i.zs, label %"_ZN4core3ptr87drop_in_place$LT$core..option..Option$LT$meilisearch_types..index_uid..IndexUid$GT$$GT$17hcad2dbd4c610fbf3E.exit.i.i.i.i.i.i.i.i.i.i.i", label %bb.ib

bb.ib:                                            ; preds = %bb.ia
  %i.zt = getelementptr inbounds nuw i8, ptr %i.zn, i64 32
  %.val1.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.zt, align 8, !alias.scope !4359, !noalias !4355, !nonnull !57, !noundef !57
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 noundef %i.zq, i64 noundef range(i64 1, -9223372036854775807) 1) #77, !noalias !4360
  br label %"_ZN4core3ptr87drop_in_place$LT$core..option..Option$LT$meilisearch_types..index_uid..IndexUid$GT$$GT$17hcad2dbd4c610fbf3E.exit.i.i.i.i.i.i.i.i.i.i.i"

"_ZN4core3ptr87drop_in_place$LT$core..option..Option$LT$meilisearch_types..index_uid..IndexUid$GT$$GT$17hcad2dbd4c610fbf3E.exit.i.i.i.i.i.i.i.i.i.i.i": ; preds = %bb.ib, %bb.ia, %.lr.ph.i.i.i233.i.i.i.i.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !4361)
  call void @llvm.experimental.noalias.scope.decl(metadata !4362)
  %.val.i.i1.i.i.i.i.i.i.i.i.i.i.i = load i64, ptr %i.zn, align 8, !range !56, !alias.scope !4363, !noalias !4355, !noundef !57 ; 2 uses
  %i.zu = icmp eq i64 %.val.i.i1.i.i.i.i.i.i.i.i.i.i.i, 0
  br i1 %i.zu, label %"_ZN4core3ptr72drop_in_place$LT$meilisearch_types..dynamic_search_rules..RuleAction$GT$17hd4db808d71ca7ac6E.exit.i.i.i.i.i.i.i.i.i", label %bb.ic

bb.ic:                                            ; preds = %"_ZN4core3ptr87drop_in_place$LT$core..option..Option$LT$meilisearch_types..index_uid..IndexUid$GT$$GT$17hcad2dbd4c610fbf3E.exit.i.i.i.i.i.i.i.i.i.i.i"
  %i.zv = getelementptr inbounds nuw i8, ptr %i.zn, i64 8
  %.val1.i.i2.i.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.zv, align 8, !alias.scope !4363, !noalias !4355, !nonnull !57, !noundef !57
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i2.i.i.i.i.i.i.i.i.i.i.i, i64 noundef %.val.i.i1.i.i.i.i.i.i.i.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #77, !noalias !4364
  br label %"_ZN4core3ptr72drop_in_place$LT$meilisearch_types..dynamic_search_rules..RuleAction$GT$17hd4db808d71ca7ac6E.exit.i.i.i.i.i.i.i.i.i"

"_ZN4core3ptr72drop_in_place$LT$meilisearch_types..dynamic_search_rules..RuleAction$GT$17hd4db808d71ca7ac6E.exit.i.i.i.i.i.i.i.i.i": ; preds = %bb.ic, %"_ZN4core3ptr87drop_in_place$LT$core..option..Option$LT$meilisearch_types..index_uid..IndexUid$GT$$GT$17hcad2dbd4c610fbf3E.exit.i.i.i.i.i.i.i.i.i.i.i"
  %i.zw = icmp eq i64 %i.zo, %i.ud
  br i1 %i.zw, label %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h5038a6c2982f6c82E.exit.i.i.i.i.i.i.i", label %.lr.ph.i.i.i233.i.i.i.i.i.i

"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h5038a6c2982f6c82E.exit.i.i.i.i.i.i.i": ; preds = %"_ZN4core3ptr72drop_in_place$LT$meilisearch_types..dynamic_search_rules..RuleAction$GT$17hd4db808d71ca7ac6E.exit.i.i.i.i.i.i.i.i.i", %"_ZN4core3ptr104drop_in_place$LT$core..option..Option$LT$meilisearch_types..dynamic_search_rules..QueryCondition$GT$$GT$17h0dc41291d74c1903E.exit231.i.i.i.i.i.i"
  %i.zx = icmp eq i64 %.sroa.20.sroa.9.0.copyload.i.i.i, 0
  br i1 %i.zx, label %"_ZN4core3ptr95drop_in_place$LT$alloc..vec..Vec$LT$meilisearch_types..dynamic_search_rules..RuleAction$GT$$GT$17h781396e195c6eafaE.exit.i.i.i.i.i.i", label %bb.id

bb.id:                                            ; preds = %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h5038a6c2982f6c82E.exit.i.i.i.i.i.i.i"
  %i.zy = mul nuw i64 %.sroa.20.sroa.9.0.copyload.i.i.i, 56
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.20.sroa.10.0.copyload.i.i.i, i64 noundef %i.zy, i64 noundef range(i64 1, -9223372036854775807) 8) #77, !noalias !4355
  br label %"_ZN4core3ptr95drop_in_place$LT$alloc..vec..Vec$LT$meilisearch_types..dynamic_search_rules..RuleAction$GT$$GT$17h781396e195c6eafaE.exit.i.i.i.i.i.i"

"_ZN4core3ptr95drop_in_place$LT$alloc..vec..Vec$LT$meilisearch_types..dynamic_search_rules..RuleAction$GT$$GT$17h781396e195c6eafaE.exit.i.i.i.i.i.i": ; preds = %bb.id, %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h5038a6c2982f6c82E.exit.i.i.i.i.i.i.i"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !4297
  switch i64 %.sroa.20.sroa.12.0.copyload.i.i.i, label %bb.ie [
    i64 -9223372036854775808, label %"_ZN4core3ptr70drop_in_place$LT$core..option..Option$LT$alloc..string..String$GT$$GT$17hd9220220a7cf1ae9E.exit236.i.i.i.i.i.i"
    i64 0, label %"_ZN4core3ptr70drop_in_place$LT$core..option..Option$LT$alloc..string..String$GT$$GT$17hd9220220a7cf1ae9E.exit236.i.i.i.i.i.i"
  ]

bb.ie:                                            ; preds = %"_ZN4core3ptr95drop_in_place$LT$alloc..vec..Vec$LT$meilisearch_types..dynamic_search_rules..RuleAction$GT$$GT$17h781396e195c6eafaE.exit.i.i.i.i.i.i"
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.20.sroa.13.0.copyload.i.i.i) ]
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.20.sroa.13.0.copyload.i.i.i, i64 noundef %.sroa.20.sroa.12.0.copyload.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #77, !noalias !4365
  br label %"_ZN4core3ptr70drop_in_place$LT$core..option..Option$LT$alloc..string..String$GT$$GT$17hd9220220a7cf1ae9E.exit236.i.i.i.i.i.i"

"_ZN4core3ptr70drop_in_place$LT$core..option..Option$LT$alloc..string..String$GT$$GT$17hd9220220a7cf1ae9E.exit242.i.i.i.i.i.i": ; preds = %bb.ih, %"_ZN4core3ptr104drop_in_place$LT$core..option..Option$LT$meilisearch_types..dynamic_search_rules..QueryCondition$GT$$GT$17h0dc41291d74c1903E.exit.i.i.i.i.i.i", %"_ZN4core3ptr104drop_in_place$LT$core..option..Option$LT$meilisearch_types..dynamic_search_rules..QueryCondition$GT$$GT$17h0dc41291d74c1903E.exit.i.i.i.i.i.i"
  %i.zz = icmp eq ptr %i.sq, null
  br i1 %i.zz, label %common.resume.i.i.i, label %bb.if

bb.if:                                            ; preds = %"_ZN4core3ptr70drop_in_place$LT$core..option..Option$LT$alloc..string..String$GT$$GT$17hd9220220a7cf1ae9E.exit242.i.i.i.i.i.i"
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.18.16.copyload.i.i.i) ]
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.18.16.copyload.i.i.i, i64 noundef %i.tu, i64 noundef range(i64 1, -9223372036854775807) 1) #77, !noalias !4366
  br label %common.resume.i.i.i

"_ZN4core3ptr70drop_in_place$LT$core..option..Option$LT$alloc..string..String$GT$$GT$17hd9220220a7cf1ae9E.exit236.i.i.i.i.i.i": ; preds = %bb.ie, %"_ZN4core3ptr95drop_in_place$LT$alloc..vec..Vec$LT$meilisearch_types..dynamic_search_rules..RuleAction$GT$$GT$17h781396e195c6eafaE.exit.i.i.i.i.i.i", %"_ZN4core3ptr95drop_in_place$LT$alloc..vec..Vec$LT$meilisearch_types..dynamic_search_rules..RuleAction$GT$$GT$17h781396e195c6eafaE.exit.i.i.i.i.i.i"
  %i.aaa = icmp eq ptr %i.sq, null
  br i1 %i.aaa, label %_ZN15index_scheduler7upgrade5v1_4923LegacyDynamicSearchRule24into_dynamic_search_rule17h90e73507fbac9778E.exit.thread.i.i.i.i.i, label %bb.ig

bb.ig:                                            ; preds = %"_ZN4core3ptr70drop_in_place$LT$core..option..Option$LT$alloc..string..String$GT$$GT$17hd9220220a7cf1ae9E.exit236.i.i.i.i.i.i"
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.18.16.copyload.i.i.i) ]
end_hunk_0
