Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/anki-rs/original/anki-0407df152365de94.anki.49bf70e6e198d769-cgu.10?download=true
inline.NumInlined: 5637
inline.NumDeleted: 1815
loop-unroll.NumCompletelyUnrolled: 8
loop-unroll.NumUnrolled: 8
begin_hunk_0_@"_ZN4anki4sync10collection6normal12NormalSyncer4sync28_$u7b$$u7b$closure$u7d$$u7d$17h168f69c992a042f0E":bb.a
  call void @llvm.experimental.noalias.scope.decl(metadata !3659)
  %i.aaz = getelementptr inbounds nuw i8, ptr %i.aax, i64 56
  %i.aba = load i64, ptr %i.aaz, align 8, !alias.scope !3660, !noalias !3661, !noundef !13 ; 4 uses
  %.sroa.0479.0.copyload.i = load ptr, ptr %i.aay, align 8, !alias.scope !3662, !noalias !3562 ; 3 uses
  %.sroa.15483.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.aax, i64 64
  %.sroa.15483.0.copyload.i = load ptr, ptr %.sroa.15483.0..sroa_idx.i, align 8, !alias.scope !3662, !noalias !3562 ; 3 uses
  %.sroa.17485.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.aax, i64 72
  %.sroa.17485.0.copyload.i = load ptr, ptr %.sroa.17485.0..sroa_idx.i, align 8, !alias.scope !3662, !noalias !3562 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bg), !noalias !3555
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bf), !noalias !3555
  %.not855.i = icmp eq i64 %i.aba, 0
  br i1 %.not855.i, label %bb.lw, label %bb.ly

bb.lw:                                            ; preds = %bb.lv
  invoke void @_ZN4core6option13expect_failed17h40dde8b63ee0f843E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @233, i64 noundef 34, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @396) #44
          to label %.noexc281.i unwind label %bb.lx, !noalias !3562

.noexc281.i:                                      ; preds = %bb.lw
  unreachable

bb.lx:                                            ; preds = %bb.lw
  %i.abb = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bh), !noalias !3555
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bi), !noalias !3555
  br label %bb.mm

bb.ly:                                            ; preds = %bb.lv
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0479.0.copyload.i) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.15483.0.copyload.i) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.17485.0.copyload.i) ]
  store ptr %.sroa.0479.0.copyload.i, ptr %i.bf, align 8, !alias.scope !3663, !noalias !3664
  %.sroa.7492.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bf, i64 8
  store i64 %i.aba, ptr %.sroa.7492.0..sroa_idx.i, align 8, !alias.scope !3663, !noalias !3664
  %.sroa.8493.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bf, i64 16
  store ptr %.sroa.15483.0.copyload.i, ptr %.sroa.8493.0..sroa_idx.i, align 8, !alias.scope !3663, !noalias !3664
  %.sroa.9494.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bf, i64 24
  store ptr %.sroa.17485.0.copyload.i, ptr %.sroa.9494.0..sroa_idx.i, align 8, !alias.scope !3663, !noalias !3664
  %.sroa.10495.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bf, i64 32
  store i64 0, ptr %.sroa.10495.0..sroa_idx.i, align 8, !alias.scope !3663, !noalias !3664
  call void @llvm.lifetime.start.p0(ptr nonnull %i.be), !noalias !3555
  store ptr @398, ptr %i.be, align 8, !alias.scope !3665, !noalias !3666
  %i.abc = getelementptr inbounds nuw i8, ptr %i.be, i64 8
  store i64 1, ptr %i.abc, align 8, !alias.scope !3665, !noalias !3666
  %i.abd = getelementptr inbounds nuw i8, ptr %i.be, i64 32
  store ptr null, ptr %i.abd, align 8, !alias.scope !3665, !noalias !3666
  %i.abe = getelementptr inbounds nuw i8, ptr %i.be, i64 16
  store ptr inttoptr (i64 8 to ptr), ptr %i.abe, align 8, !alias.scope !3665, !noalias !3666
  %i.abf = getelementptr inbounds nuw i8, ptr %i.be, i64 24
  store i64 0, ptr %i.abf, align 8, !alias.scope !3665, !noalias !3666
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bd), !noalias !3555
  %.not856.i = icmp eq i64 %i.aba, 1
  br i1 %.not856.i, label %bb.lz, label %bb.mb

bb.lz:                                            ; preds = %bb.ly
  invoke void @_ZN4core6option13expect_failed17h40dde8b63ee0f843E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @233, i64 noundef 34, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @396) #44
          to label %.noexc290.i unwind label %bb.ma, !noalias !3562

.noexc290.i:                                      ; preds = %bb.lz
  unreachable

bb.ma:                                            ; preds = %bb.lz
  %i.abg = landingpad { ptr, i32 }
          cleanup
  br label %bb.ml

bb.mb:                                            ; preds = %bb.ly
  store ptr %.sroa.0479.0.copyload.i, ptr %i.bd, align 8, !alias.scope !3667, !noalias !3668
  %.sroa.7497.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bd, i64 8
  store i64 %i.aba, ptr %.sroa.7497.0..sroa_idx.i, align 8, !alias.scope !3667, !noalias !3668
  %.sroa.8498.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bd, i64 16
  store ptr %.sroa.15483.0.copyload.i, ptr %.sroa.8498.0..sroa_idx.i, align 8, !alias.scope !3667, !noalias !3668
  %.sroa.9499.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bd, i64 24
  store ptr %.sroa.17485.0.copyload.i, ptr %.sroa.9499.0..sroa_idx.i, align 8, !alias.scope !3667, !noalias !3668
  %.sroa.10500.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bd, i64 32
  store i64 1, ptr %.sroa.10500.0..sroa_idx.i, align 8, !alias.scope !3667, !noalias !3668
  store ptr %i.bf, ptr %i.bg, align 8, !noalias !3555
  %.sroa.9.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bg, i64 8
  store ptr %i.be, ptr %.sroa.9.0..sroa_idx.i, align 8, !noalias !3555
  %.sroa.1024.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bg, i64 16
  store ptr @237, ptr %.sroa.1024.0..sroa_idx.i, align 8, !noalias !3555
  %i.abh = getelementptr inbounds nuw i8, ptr %i.bg, i64 24
  store ptr %i.bd, ptr %i.abh, align 8, !noalias !3555
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bg, i64 32
  store ptr %i.cm, ptr %.sroa.6.0..sroa_idx.i, align 8, !noalias !3555
  %.sroa.726.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bg, i64 40
  store ptr @253, ptr %.sroa.726.0..sroa_idx.i, align 8, !noalias !3555
  invoke void @_ZN12tracing_core5field8FieldSet9value_set17h6a6ad63dde2cc91aE(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.bh, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.aay, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.bg)
          to label %bb.md unwind label %bb.mc, !noalias !3562

bb.mc:                                            ; preds = %bb.mb
  %i.abi = landingpad { ptr, i32 }
          cleanup
  br label %bb.ml

bb.md:                                            ; preds = %bb.mb
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bi, ptr noundef nonnull align 8 dereferenceable(24) %i.bh, i64 24, i1 false), !noalias !3555
  invoke fastcc void @"_ZN4anki4sync10collection6status24online_sync_status_check28_$u7b$$u7b$closure$u7d$$u7d$28_$u7b$$u7b$closure$u7d$$u7d$17he0e5e2370895e2daE"(ptr noalias noundef readonly align 8 captures(address) dereferenceable(24) %i.bi)
          to label %bb.mf unwind label %bb.me, !noalias !3562

bb.me:                                            ; preds = %bb.md
  %i.abj = landingpad { ptr, i32 }
          cleanup
  br label %bb.ml

bb.mf:                                            ; preds = %bb.md
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bh), !noalias !3555
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bi), !noalias !3555
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bd), !noalias !3555
  call void @llvm.lifetime.end.p0(ptr nonnull %i.be), !noalias !3555
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bf), !noalias !3555
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bg), !noalias !3555
  br label %bb.mg

bb.mg:                                            ; preds = %bb.mf, %bb.lt, %bb.lh, %bb.lc, %bb.lb
  %.sroa.0742.0.copyload.i = load i64, ptr %i.cm, align 8, !noalias !3555
  %.sroa.5743.0.copyload.i = load ptr, ptr %.sroa.2.0..sroa_idx.i, align 8, !noalias !3555
  %.sroa.6744.0.copyload.i = load i64, ptr %.sroa.3.0..sroa_idx.i, align 8, !noalias !3555
  br label %bb.mh

bb.mh:                                            ; preds = %bb.ol, %bb.mg
  %.sroa.9618.0.i = phi i32 [ 7, %bb.ol ], [ 6, %bb.mg ]
  %.sroa.8614.0.i = phi i64 [ 0, %bb.ol ], [ %.sroa.6744.0.copyload.i, %bb.mg ]
  %.sroa.5610.0.i = phi ptr [ %i.aey, %bb.ol ], [ %.sroa.5743.0.copyload.i, %bb.mg ]
  %.sroa.0608.0.i = phi i64 [ %i.aeh, %bb.ol ], [ %.sroa.0742.0.copyload.i, %bb.mg ]
  %i.abk = load i64, ptr %i.cl, align 8, !range !12, !alias.scope !3669, !noalias !3555, !noundef !13
  %i.abl = icmp eq i64 %i.abk, -9223372036854775808
  br i1 %i.abl, label %"_ZN4core3ptr70drop_in_place$LT$core..option..Option$LT$alloc..string..String$GT$$GT$17habb54241869b686dE.exit.i", label %bb.mi

bb.mi:                                            ; preds = %bb.mh
  invoke void @"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h06a2762e5e8eee94E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.cl)
          to label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h155aa8008e550a6bE.exit.i292.i" unwind label %bb.mj, !noalias !3562

bb.mj:                                            ; preds = %bb.mi
  %i.abm = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hd53fd36962195c26E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.cl)
          to label %.body293.i unwind label %bb.mk, !noalias !3562

bb.mk:                                            ; preds = %bb.mj
  %i.abn = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #43, !noalias !3562
  unreachable

"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h155aa8008e550a6bE.exit.i292.i": ; preds = %bb.mi
  invoke void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hd53fd36962195c26E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.cl)
          to label %"_ZN4core3ptr70drop_in_place$LT$core..option..Option$LT$alloc..string..String$GT$$GT$17habb54241869b686dE.exit.i" unwind label %bb.om, !noalias !3562

bb.ml:                                            ; preds = %bb.me, %bb.mc, %bb.ma
  %.pn95.pn.i = phi { ptr, i32 } [ %i.abg, %bb.ma ], [ %i.abj, %bb.me ], [ %i.abi, %bb.mc ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bh), !noalias !3555
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bi), !noalias !3555
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bd), !noalias !3555
  call void @llvm.lifetime.end.p0(ptr nonnull %i.be), !noalias !3555
  br label %bb.mm

bb.mm:                                            ; preds = %bb.ml, %bb.lx
  %.pn95.pn.pn.pn.i = phi { ptr, i32 } [ %.pn95.pn.i, %bb.ml ], [ %i.abb, %bb.lx ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bf), !noalias !3555
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bg), !noalias !3555
  br label %bb.pa

bb.mn:                                            ; preds = %bb.kg
  %i.abo = getelementptr inbounds nuw i8, ptr %i.cm, i64 40
  %i.abp = load i64, ptr %i.abo, align 8, !noalias !3555, !noundef !13
  %i.abq = getelementptr inbounds nuw i8, ptr %1, i64 288 ; 3 uses
  %i.abr = getelementptr inbounds nuw i8, ptr %1, i64 328
  %i.abs = load i64, ptr %i.abr, align 8, !noalias !3555, !noundef !13
  %i.abt = sub i64 %i.abp, %i.abs                 ; 2 uses
  store i64 %i.abt, ptr %i.aw, align 8, !noalias !3555
  %.sroa.0.0.i250.i = call noundef range(i64 0, -9223372036854775807) i64 @llvm.abs.i64(i64 %i.abt, i1 false)
  %i.abu = icmp sgt i64 %.sroa.0.0.i250.i, 300
  br i1 %i.abu, label %bb.mv, label %bb.mo

bb.mo:                                            ; preds = %bb.mn
  %.sroa.0598.sroa.0.0.copyload.i = load ptr, ptr %i.cm, align 8, !noalias !3555
  %.sroa.0598.sroa.5.0.copyload.i = load i64, ptr %.sroa.2.0..sroa_idx.i, align 8, !noalias !3555
  %i.abv = load <2 x i32>, ptr %.sroa.3.0..sroa_idx.i, align 8, !noalias !3555
  %.sroa.5599.0.copyload.i = load i64, ptr %.sroa.5698.0..sroa_idx.i, align 8, !noalias !3555 ; 2 uses
  %.sroa.7602.0.copyload.i = load i32, ptr %.sroa.8701.0..sroa_idx.i, align 8, !noalias !3555
  %.sroa.8603.0.copyload.i = load i32, ptr %.sroa.9702.0..sroa_idx.i, align 4, !noalias !3555
  %.sroa.9604.0.copyload.i = load i32, ptr %.sroa.10.0..sroa_idx703.i, align 8, !noalias !3555
  %.sroa.10606.0.copyload.i = load i8, ptr %.sroa.12705.0..sroa_idx.i, align 1, !noalias !3555 ; 2 uses
  %i.abw = getelementptr inbounds nuw i8, ptr %1, i64 312
  %i.abx = load i64, ptr %i.abw, align 8, !alias.scope !3670, !noalias !3671, !noundef !13 ; 2 uses
  %i.aby = icmp eq i64 %.sroa.5599.0.copyload.i, %i.abx
  br i1 %i.aby, label %bb.mr, label %bb.mp

bb.mp:                                            ; preds = %bb.mo
  %.sroa.6600.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.cm, i64 32
  %.sroa.6600.0.copyload.i = load i64, ptr %.sroa.6600.0..sroa_idx.i, align 8, !noalias !3555
  %i.abz = getelementptr inbounds nuw i8, ptr %1, i64 320
  %i.aca = load i64, ptr %i.abz, align 8, !alias.scope !3670, !noalias !3671, !noundef !13
  %.not.i296.i = icmp eq i64 %.sroa.6600.0.copyload.i, %i.aca
  br i1 %.not.i296.i, label %bb.mr, label %bb.mq

bb.mq:                                            ; preds = %bb.mp
  %i.acb = getelementptr inbounds nuw i8, ptr %1, i64 357
  %i.acc = load i8, ptr %i.acb, align 1, !range !19, !alias.scope !3670, !noalias !3671, !noundef !13 ; 2 uses
  %i.acd = trunc nuw i8 %i.acc to i1
  %.sroa.01.0.i.i = select i1 %i.acd, i8 %.sroa.10606.0.copyload.i, i8 1
  %3 = trunc nuw i8 %.sroa.10606.0.copyload.i to i1
  %.sroa.02.0.i.i = select i1 %3, i8 %i.acc, i8 1
  %i.ace = insertelement <2 x i8> poison, i8 %.sroa.01.0.i.i, i64 0
  %i.acf = insertelement <2 x i8> %i.ace, i8 %.sroa.02.0.i.i, i64 1
  %i.acg = shufflevector <2 x i8> %i.acf, <2 x i8> <i8 undef, i8 poison>, <4 x i32> <i32 0, i32 1, i32 poison, i32 2>
  br label %bb.mr

bb.mr:                                            ; preds = %bb.mq, %bb.mp, %bb.mo
  %i.ach = phi <4 x i8> [ <i8 2, i8 undef, i8 undef, i8 undef>, %bb.mo ], [ %i.acg, %bb.mq ], [ <i8 4, i8 undef, i8 undef, i8 undef>, %bb.mp ]
  %i.aci = getelementptr inbounds nuw i8, ptr %1, i64 344
  %i.acj = load i32, ptr %i.aci, align 8, !alias.scope !3670, !noalias !3671, !noundef !13
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.10622.sroa.5.i, ptr noundef nonnull align 8 dereferenceable(24) %i.cl, i64 24, i1 false), !noalias !3555
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cl), !noalias !3555
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cm), !noalias !3555
  invoke void @"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h06a2762e5e8eee94E"(ptr noalias noundef nonnull align 8 dereferenceable(72) %i.abq)
          to label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h155aa8008e550a6bE.exit.i299.i" unwind label %bb.ms, !noalias !3562

bb.ms:                                            ; preds = %bb.mr
  %i.ack = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hd53fd36962195c26E"(ptr noalias noundef nonnull align 8 dereferenceable(72) %i.abq)
          to label %.body300.i unwind label %bb.mt, !noalias !3562

bb.mt:                                            ; preds = %bb.ms
  %i.acl = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #43, !noalias !3562
  unreachable

"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h155aa8008e550a6bE.exit.i299.i": ; preds = %bb.mr
  invoke void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hd53fd36962195c26E"(ptr noalias noundef nonnull align 8 dereferenceable(72) %i.abq)
          to label %.thread1083 unwind label %bb.mu, !noalias !3562

.thread1083:                                      ; preds = %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h155aa8008e550a6bE.exit.i299.i"
  %i.acm = icmp sgt i64 %i.abx, %.sroa.5599.0.copyload.i
  %i.acn = zext i1 %i.acm to i8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.12405, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.10622.sroa.5.i, i64 24, i1 false), !noalias !3672
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.22, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.20.i, i64 24, i1 false), !noalias !3672
  store i8 1, ptr %i.va, align 8, !noalias !3555
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.10622.sroa.5.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.20.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ap)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aw)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bc)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bp)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cd)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.3.sroa.9.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.3.sroa.29.i)
  %i.aco = insertelement <4 x i8> %i.ach, i8 %i.acn, i64 2
  br label %bb.pi

.body300.i:                                       ; preds = %bb.pd, %bb.os, %bb.mu, %bb.ms
  %i.acp = phi ptr [ %i.afk, %bb.pd ], [ %i.va, %bb.ms ], [ %i.va, %bb.mu ], [ %i.va, %bb.os ]
  %i.acq = phi ptr [ %i.afl, %bb.pd ], [ %i.vb, %bb.ms ], [ %i.vb, %bb.mu ], [ %i.vb, %bb.os ]
  %.pn122.i = phi { ptr, i32 } [ %.pn119.pn.i, %bb.pd ], [ %i.ack, %bb.ms ], [ %i.acr, %bb.mu ], [ %i.afh, %bb.os ]
  store i8 2, ptr %i.acp, align 8, !noalias !3555
  br label %.body

bb.mu:                                            ; preds = %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h155aa8008e550a6bE.exit.i351.i", %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h155aa8008e550a6bE.exit.i299.i"
  %i.acr = landingpad { ptr, i32 }
          cleanup
  br label %.body300.i

bb.mv:                                            ; preds = %bb.mn
  %i.acs = load atomic i64, ptr @_ZN12tracing_core8metadata9MAX_LEVEL17he6f6358534555047E monotonic, align 8, !noalias !3555
  %i.act = icmp samesign ult i64 %i.acs, 2
  br i1 %i.act, label %bb.mw, label %bb.nd

bb.mw:                                            ; preds = %bb.mv
  %i.acu = load atomic i8, ptr getelementptr inbounds nuw (i8, ptr @"_ZN4anki4sync10collection6status24online_sync_status_check28_$u7b$$u7b$closure$u7d$$u7d$10__CALLSITE17h8e9f789d45cf788dE", i64 16) monotonic, align 8, !noalias !3555 ; 2 uses
  %i.acv = icmp ult i8 %i.acu, 3
  br i1 %i.acv, label %bb.mz, label %bb.mx, !prof !55

bb.mx:                                            ; preds = %bb.mw
  %i.acw = invoke noundef i8 @_ZN12tracing_core8callsite15DefaultCallsite8register17h04e030585b2863adE(ptr noundef nonnull align 8 @"_ZN4anki4sync10collection6status24online_sync_status_check28_$u7b$$u7b$closure$u7d$$u7d$10__CALLSITE17h8e9f789d45cf788dE")
          to label %bb.mz unwind label %bb.my, !noalias !3562

bb.my:                                            ; preds = %bb.mx
  %i.acx = landingpad { ptr, i32 }
          cleanup
  br label %bb.pa

bb.mz:                                            ; preds = %bb.mx, %bb.mw
  %.sroa.0.0.i303.i = phi i8 [ %i.acu, %bb.mw ], [ %i.acw, %bb.mx ] ; 2 uses
  %i.acy = icmp eq i8 %.sroa.0.0.i303.i, 0
  br i1 %i.acy, label %bb.nd, label %bb.nb

bb.na:                                            ; preds = %bb.nb
  %i.acz = landingpad { ptr, i32 }
          cleanup
  br label %bb.pa

bb.nb:                                            ; preds = %bb.mz
  %i.ada = load ptr, ptr @"_ZN4anki4sync10collection6status24online_sync_status_check28_$u7b$$u7b$closure$u7d$$u7d$10__CALLSITE17h8e9f789d45cf788dE", align 8, !noalias !3555, !nonnull !13, !align !14, !noundef !13
  %i.adb = invoke noundef zeroext i1 @_ZN7tracing15__macro_support12__is_enabled17h7ea8ceed54f5561bE(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.ada, i8 noundef %.sroa.0.0.i303.i)
          to label %bb.nc unwind label %bb.na, !noalias !3562

bb.nc:                                            ; preds = %bb.nb
  br i1 %i.adb, label %bb.nz, label %bb.nd

bb.nd:                                            ; preds = %bb.nc, %bb.mz, %bb.mv
  %i.adc = load atomic i8, ptr @_ZN12tracing_core10dispatcher6EXISTS17h9325306da66b02e3E monotonic, align 1, !noalias !3555
  %.not862.i = icmp eq i8 %i.adc, 0
  br i1 %.not862.i, label %bb.ne, label %bb.nx

bb.ne:                                            ; preds = %bb.nd
  %i.add = load atomic i64, ptr @_ZN3log20MAX_LOG_LEVEL_FILTER17hb57afb2b1cb16849E monotonic, align 8, !noalias !3555 ; 2 uses
  %i.ade = icmp ult i64 %i.add, 6
  call void @llvm.assume(i1 %i.ade)
  %i.adf = icmp samesign ugt i64 %i.add, 3
  br i1 %i.adf, label %bb.ng, label %bb.nx

bb.nf:                                            ; preds = %bb.ng
  %i.adg = landingpad { ptr, i32 }
          cleanup
  br label %bb.pa

bb.ng:                                            ; preds = %bb.ne
  %i.adh = load ptr, ptr @"_ZN4anki4sync10collection6status24online_sync_status_check28_$u7b$$u7b$closure$u7d$$u7d$10__CALLSITE17h8e9f789d45cf788dE", align 8, !noalias !3555, !nonnull !13, !align !14, !noundef !13 ; 3 uses
  %i.adi = getelementptr i8, ptr %i.adh, i64 32
  %.val164.i = load ptr, ptr %i.adi, align 8, !noalias !3562, !nonnull !13, !align !22, !noundef !13
  %i.adj = getelementptr i8, ptr %i.adh, i64 40
  %.val165.i = load i64, ptr %i.adj, align 8, !noalias !3562, !noundef !13
  store i64 4, ptr %i.ap, align 8, !alias.scope !3673, !noalias !3555
  %.sroa.6559.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ap, i64 8
  store ptr %.val164.i, ptr %.sroa.6559.0..sroa_idx.i, align 8, !alias.scope !3673, !noalias !3555
  %.sroa.8560.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ap, i64 16
  store i64 %.val165.i, ptr %.sroa.8560.0..sroa_idx.i, align 8, !alias.scope !3673, !noalias !3555
  %i.adk = invoke { ptr, ptr } @_ZN3log6logger17hef834f2fd8d55c8dE()
          to label %bb.nh unwind label %bb.nf, !noalias !3562 ; 2 uses

bb.nh:                                            ; preds = %bb.ng
  %i.adl = extractvalue { ptr, ptr } %i.adk, 0    ; 2 uses
  %i.adm = extractvalue { ptr, ptr } %i.adk, 1    ; 2 uses
  %i.adn = getelementptr inbounds nuw i8, ptr %i.adm, i64 24
  %i.ado = load ptr, ptr %i.adn, align 8, !invariant.load !13, !noalias !3562, !nonnull !13
  %i.adp = invoke noundef zeroext i1 %i.ado(ptr noundef align 1 %i.adl, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ap)
          to label %bb.nj unwind label %bb.ni, !noalias !3562

bb.ni:                                            ; preds = %bb.nh
  %i.adq = landingpad { ptr, i32 }
          cleanup
  br label %bb.pa

bb.nj:                                            ; preds = %bb.nh
  br i1 %i.adp, label %bb.nk, label %bb.nx

bb.nk:                                            ; preds = %bb.nj
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ao), !noalias !3555
  %i.adr = load ptr, ptr @"_ZN4anki4sync10collection6status24online_sync_status_check28_$u7b$$u7b$closure$u7d$$u7d$10__CALLSITE17h8e9f789d45cf788dE", align 8, !noalias !3555, !nonnull !13, !align !14, !noundef !13 ; 4 uses
  %i.ads = getelementptr inbounds nuw i8, ptr %i.adr, i64 48 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !3674)
  %i.adt = getelementptr inbounds nuw i8, ptr %i.adr, i64 56
  %i.adu = load i64, ptr %i.adt, align 8, !alias.scope !3675, !noalias !3676, !noundef !13 ; 4 uses
  %.sroa.0561.0.copyload.i = load ptr, ptr %i.ads, align 8, !alias.scope !3677, !noalias !3562 ; 3 uses
  %.sroa.15565.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.adr, i64 64
  %.sroa.15565.0.copyload.i = load ptr, ptr %.sroa.15565.0..sroa_idx.i, align 8, !alias.scope !3677, !noalias !3562 ; 3 uses
  %.sroa.17567.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.adr, i64 72
  %.sroa.17567.0.copyload.i = load ptr, ptr %.sroa.17567.0..sroa_idx.i, align 8, !alias.scope !3677, !noalias !3562 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.an), !noalias !3555
  call void @llvm.lifetime.start.p0(ptr nonnull %i.am), !noalias !3555
  %.not863.i = icmp eq i64 %i.adu, 0
  br i1 %.not863.i, label %bb.nl, label %bb.nn

bb.nl:                                            ; preds = %bb.nk
  invoke void @_ZN4core6option13expect_failed17h40dde8b63ee0f843E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @233, i64 noundef 34, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @399) #44
          to label %.noexc315.i unwind label %bb.nm, !noalias !3562

.noexc315.i:                                      ; preds = %bb.nl
  unreachable

bb.nm:                                            ; preds = %bb.nl
  %i.adv = landingpad { ptr, i32 }
          cleanup
  br label %bb.nw

bb.nn:                                            ; preds = %bb.nk
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0561.0.copyload.i) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.15565.0.copyload.i) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.17567.0.copyload.i) ]
  store ptr %.sroa.0561.0.copyload.i, ptr %i.am, align 8, !alias.scope !3678, !noalias !3679
  %.sroa.7574.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.am, i64 8
  store i64 %i.adu, ptr %.sroa.7574.0..sroa_idx.i, align 8, !alias.scope !3678, !noalias !3679
  %.sroa.8575.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.am, i64 16
  store ptr %.sroa.15565.0.copyload.i, ptr %.sroa.8575.0..sroa_idx.i, align 8, !alias.scope !3678, !noalias !3679
  %.sroa.9576.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.am, i64 24
  store ptr %.sroa.17567.0.copyload.i, ptr %.sroa.9576.0..sroa_idx.i, align 8, !alias.scope !3678, !noalias !3679
  %.sroa.10577.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.am, i64 32
  store i64 0, ptr %.sroa.10577.0..sroa_idx.i, align 8, !alias.scope !3678, !noalias !3679
  call void @llvm.lifetime.start.p0(ptr nonnull %i.al), !noalias !3555
  store ptr @401, ptr %i.al, align 8, !alias.scope !3680, !noalias !3681
  %i.adw = getelementptr inbounds nuw i8, ptr %i.al, i64 8
  store i64 1, ptr %i.adw, align 8, !alias.scope !3680, !noalias !3681
  %i.adx = getelementptr inbounds nuw i8, ptr %i.al, i64 32
  store ptr null, ptr %i.adx, align 8, !alias.scope !3680, !noalias !3681
  %i.ady = getelementptr inbounds nuw i8, ptr %i.al, i64 16
  store ptr inttoptr (i64 8 to ptr), ptr %i.ady, align 8, !alias.scope !3680, !noalias !3681
  %i.adz = getelementptr inbounds nuw i8, ptr %i.al, i64 24
  store i64 0, ptr %i.adz, align 8, !alias.scope !3680, !noalias !3681
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ak), !noalias !3555
  %.not864.i = icmp eq i64 %i.adu, 1
  br i1 %.not864.i, label %bb.no, label %bb.nq
end_hunk_0
