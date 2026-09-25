Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/meilisearch-rs/original/procfs_core-dc56baf12c63c20b.procfs_core.8462dd57f6c2f723-cgu.0?download=true
inline.NumInlined: 2766
inline.NumDeleted: 776
loop-unroll.NumCompletelyUnrolled: 20
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 21
begin_hunk_0_@_ZN11procfs_core3net21parse_addressport_str17h364c7279e8c964ebE:.lr.ph.split.i.i
  br label %"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17ha21832cf276f63f7E.exit287"

bb.q:                                             ; preds = %bb.o
  %.sroa.4316.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  %.sroa.4316.0.copyload = load ptr, ptr %.sroa.4316.0..sroa_idx, align 8 ; 5 uses
  %.sroa.5317.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  %.sroa.5317.0.copyload = load i64, ptr %.sroa.5317.0..sroa_idx, align 8 ; 2 uses
  %i.dd = icmp ugt i64 %.sroa.5317.0.copyload, 3
  br i1 %i.dd, label %"_ZN4core6result19Result$LT$T$C$E$GT$6unwrap17h397c910180e990c0E.exit238", label %bb.r, !prof !9

bb.r:                                             ; preds = %bb.q
  invoke void @_ZN4core5slice5index16slice_index_fail17hfe436548ecebea33E(i64 noundef 0, i64 noundef 4, i64 noundef %.sroa.5317.0.copyload, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @37) #37
          to label %bb.u unwind label %bb.s

"_ZN4core6result19Result$LT$T$C$E$GT$6unwrap17h397c910180e990c0E.exit238": ; preds = %bb.q
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.4316.0.copyload) ]
  %.sroa.0147.0.copyload = load i32, ptr %.sroa.4316.0.copyload, align 1
  %i.de = invoke noundef i32 %"_ZN4core3num21_$LT$impl$u20$u32$GT$13from_le_bytes17h78c96324db6491b7E._ZN4core3num21_$LT$impl$u20$u32$GT$13from_be_bytes17h8258789deec27a58E"(i32 %.sroa.0147.0.copyload)
          to label %bb.v unwind label %bb.s, !callees !581

bb.s:                                             ; preds = %"_ZN4core6result19Result$LT$T$C$E$GT$6unwrap17h397c910180e990c0E.exit238", %bb.r
  %i.df = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.dg = icmp eq i64 %i.da, 0
  br i1 %i.dg, label %"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17ha21832cf276f63f7E.exit", label %bb.t

bb.t:                                             ; preds = %bb.s
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.4316.0.copyload) ]
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.4316.0.copyload, i64 noundef %i.da, i64 noundef range(i64 1, -9223372036854775807) 1) #38
  br label %"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17ha21832cf276f63f7E.exit"

bb.u:                                             ; preds = %bb.r
  unreachable

bb.v:                                             ; preds = %"_ZN4core6result19Result$LT$T$C$E$GT$6unwrap17h397c910180e990c0E.exit238"
  %i.dh = tail call i32 @llvm.bswap.i32(i32 %i.de)
  %i.di = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i16 0, ptr %i.di, align 8
  %.sroa.465.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 10
  store i32 %i.dh, ptr %.sroa.465.0..sroa_idx, align 2
  %.sroa.465.sroa.4.0..sroa.465.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 14
  store i16 %.sroa.5193.0.extract.trunc, ptr %.sroa.465.sroa.4.0..sroa.465.0..sroa_idx.sroa_idx, align 2
  store i64 -9223372036854775803, ptr %0, align 8
  %i.dj = icmp eq i64 %i.da, 0
  br i1 %i.dj, label %"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17ha21832cf276f63f7E.exit287", label %bb.w

bb.w:                                             ; preds = %bb.v
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.4316.0.copyload, i64 noundef %i.da, i64 noundef range(i64 1, -9223372036854775807) 1) #38
  br label %"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17ha21832cf276f63f7E.exit287"

"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17ha21832cf276f63f7E.exit": ; preds = %bb.an, %bb.am, %bb.aj, %bb.ai, %bb.ac, %bb.ab, %bb.t, %bb.s
  %.pn = phi { ptr, i32 } [ %i.fa, %bb.aj ], [ %i.dp, %bb.ac ], [ %i.df, %bb.t ], [ %i.df, %bb.s ], [ %i.dp, %bb.ab ], [ %i.fa, %bb.ai ], [ %i.ff, %bb.am ], [ %i.ff, %bb.an ]
  resume { ptr, i32 } %.pn

bb.x:                                             ; preds = %bb.n
  call fastcc void @"_ZN58_$LT$alloc..vec..Vec$LT$u8$GT$$u20$as$u20$hex..FromHex$GT$8from_hex17hfe051d0b566d86d1E"(ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.p, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %1, i64 noundef 32)
  %i.dk = load i64, ptr %i.p, align 8, !range !14, !noundef !4 ; 5 uses
  %i.dl = icmp eq i64 %i.dk, -9223372036854775808
  br i1 %i.dl, label %bb.z, label %bb.aa

bb.y:                                             ; preds = %bb.n
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  store ptr %i.ac, ptr %i.i, align 8
  %.sroa.4184.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  store ptr @"_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h247b819db7d396ecE", ptr %.sroa.4184.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !582
  store ptr @44, ptr %i.d, align 8, !noalias !583
  %.sroa.4348.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store i64 2, ptr %.sroa.4348.0..sroa_idx, align 8, !noalias !583
  %.sroa.5349.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  store ptr %i.i, ptr %.sroa.5349.0..sroa_idx, align 8, !noalias !583
  %.sroa.6350.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  store i64 1, ptr %.sroa.6350.0..sroa_idx, align 8, !noalias !583
  %.sroa.7351.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  store ptr null, ptr %.sroa.7351.0..sroa_idx, align 8, !noalias !583
  call void @_ZN5alloc3fmt6format12format_inner17hce37e7516f243f46E(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.j, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !582
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  store ptr %i.j, ptr %i.k, align 8
  %.sroa.4188.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  store ptr @"_ZN60_$LT$alloc..string..String$u20$as$u20$core..fmt..Display$GT$3fmt17h86a528f6a97fe10dE", ptr %.sroa.4188.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !584
  store ptr @31, ptr %i.c, align 8, !noalias !585
  %.sroa.4342.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store i64 1, ptr %.sroa.4342.0..sroa_idx, align 8, !noalias !585
  %.sroa.5343.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store ptr %i.k, ptr %.sroa.5343.0..sroa_idx, align 8, !noalias !585
  %.sroa.6344.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  store i64 1, ptr %.sroa.6344.0..sroa_idx, align 8, !noalias !585
  %.sroa.7345.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  store ptr null, ptr %.sroa.7345.0..sroa_idx, align 8, !noalias !585
  invoke void @_ZN5alloc3fmt6format12format_inner17hce37e7516f243f46E(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.l, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.c)
          to label %bb.ak unwind label %bb.ai

bb.z:                                             ; preds = %bb.x
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o)
  %i.dm = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.o, ptr noundef nonnull align 8 dereferenceable(16) %i.dm, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m)
  store ptr %i.o, ptr %i.m, align 8
  %.sroa.4152.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  store ptr @"_ZN63_$LT$hex..error..FromHexError$u20$as$u20$core..fmt..Display$GT$3fmt17h783229eca38a9775E", ptr %.sroa.4152.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !586
  store ptr @31, ptr %i.b, align 8, !noalias !587
  %.sroa.4336.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 1, ptr %.sroa.4336.0..sroa_idx, align 8, !noalias !587
  %.sroa.5337.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store ptr %i.m, ptr %.sroa.5337.0..sroa_idx, align 8, !noalias !587
  %.sroa.6338.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store i64 1, ptr %.sroa.6338.0..sroa_idx, align 8, !noalias !587
  %.sroa.7339.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  store ptr null, ptr %.sroa.7339.0..sroa_idx, align 8, !noalias !587
  call void @_ZN5alloc3fmt6format12format_inner17hce37e7516f243f46E(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.n, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !586
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.n, i64 24, i1 false)
  %.sroa.475.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr @33, ptr %.sroa.475.0..sroa_idx, align 8
  %.sroa.576.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 98, ptr %.sroa.576.0..sroa_idx, align 8
  %.sroa.677.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i32 205, ptr %.sroa.677.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o)
  br label %"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17ha21832cf276f63f7E.exit287"

bb.aa:                                            ; preds = %bb.x
  %.sroa.4333.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %.sroa.4333.0.copyload = load ptr, ptr %.sroa.4333.0..sroa_idx, align 8 ; 8 uses
  %.sroa.5334.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  %.sroa.5334.0.copyload = load i64, ptr %.sroa.5334.0..sroa_idx, align 8 ; 5 uses
  %i.dn = icmp ugt i64 %.sroa.5334.0.copyload, 3
  br i1 %i.dn, label %"_ZN4core6result19Result$LT$T$C$E$GT$6unwrap17h397c910180e990c0E.exit236", label %.invoke, !prof !9

"_ZN4core6result19Result$LT$T$C$E$GT$6unwrap17h397c910180e990c0E.exit236": ; preds = %bb.aa
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.4333.0.copyload) ]
  %.sroa.0155.0.copyload = load i32, ptr %.sroa.4333.0.copyload, align 1
  %i.do = invoke noundef i32 %"_ZN4core3num21_$LT$impl$u20$u32$GT$13from_le_bytes17h78c96324db6491b7E._ZN4core3num21_$LT$impl$u20$u32$GT$13from_be_bytes17h8258789deec27a58E"(i32 %.sroa.0155.0.copyload)
          to label %bb.ad unwind label %bb.ab, !callees !581 ; 2 uses

bb.ab:                                            ; preds = %.invoke, %"_ZN4core6result19Result$LT$T$C$E$GT$6unwrap17h397c910180e990c0E.exit", %"_ZN4core6result19Result$LT$T$C$E$GT$6unwrap17h397c910180e990c0E.exit232", %"_ZN4core6result19Result$LT$T$C$E$GT$6unwrap17h397c910180e990c0E.exit234", %"_ZN4core6result19Result$LT$T$C$E$GT$6unwrap17h397c910180e990c0E.exit236"
  %i.dp = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.dq = icmp eq i64 %i.dk, 0
  br i1 %i.dq, label %"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17ha21832cf276f63f7E.exit", label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.4333.0.copyload) ]
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.4333.0.copyload, i64 noundef %i.dk, i64 noundef range(i64 1, -9223372036854775807) 1) #38
  br label %"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17ha21832cf276f63f7E.exit"

bb.ad:                                            ; preds = %"_ZN4core6result19Result$LT$T$C$E$GT$6unwrap17h397c910180e990c0E.exit236"
  %i.dr = icmp ugt i64 %.sroa.5334.0.copyload, 7
  br i1 %i.dr, label %"_ZN4core6result19Result$LT$T$C$E$GT$6unwrap17h397c910180e990c0E.exit234", label %.invoke, !prof !9

"_ZN4core6result19Result$LT$T$C$E$GT$6unwrap17h397c910180e990c0E.exit234": ; preds = %bb.ad
  %i.ds = getelementptr inbounds nuw i8, ptr %.sroa.4333.0.copyload, i64 4
  %.sroa.0156.0.copyload = load i32, ptr %i.ds, align 1
  %i.dt = invoke noundef i32 %"_ZN4core3num21_$LT$impl$u20$u32$GT$13from_le_bytes17h78c96324db6491b7E._ZN4core3num21_$LT$impl$u20$u32$GT$13from_be_bytes17h8258789deec27a58E"(i32 %.sroa.0156.0.copyload)
          to label %bb.ae unwind label %bb.ab, !callees !581 ; 2 uses

bb.ae:                                            ; preds = %"_ZN4core6result19Result$LT$T$C$E$GT$6unwrap17h397c910180e990c0E.exit234"
  %i.du = icmp ugt i64 %.sroa.5334.0.copyload, 11
  br i1 %i.du, label %"_ZN4core6result19Result$LT$T$C$E$GT$6unwrap17h397c910180e990c0E.exit232", label %.invoke, !prof !9

"_ZN4core6result19Result$LT$T$C$E$GT$6unwrap17h397c910180e990c0E.exit232": ; preds = %bb.ae
  %i.dv = getelementptr inbounds nuw i8, ptr %.sroa.4333.0.copyload, i64 8
  %.sroa.0157.0.copyload = load i32, ptr %i.dv, align 1
  %i.dw = invoke noundef i32 %"_ZN4core3num21_$LT$impl$u20$u32$GT$13from_le_bytes17h78c96324db6491b7E._ZN4core3num21_$LT$impl$u20$u32$GT$13from_be_bytes17h8258789deec27a58E"(i32 %.sroa.0157.0.copyload)
          to label %bb.af unwind label %bb.ab, !callees !581 ; 2 uses

bb.af:                                            ; preds = %"_ZN4core6result19Result$LT$T$C$E$GT$6unwrap17h397c910180e990c0E.exit232"
  %i.dx = icmp ugt i64 %.sroa.5334.0.copyload, 15
  br i1 %i.dx, label %"_ZN4core6result19Result$LT$T$C$E$GT$6unwrap17h397c910180e990c0E.exit", label %.invoke, !prof !9

.invoke:                                          ; preds = %bb.aa, %bb.af, %bb.ae, %bb.ad
  %i.dy = phi i64 [ 8, %bb.ae ], [ 4, %bb.ad ], [ 12, %bb.af ], [ 0, %bb.aa ]
  %i.dz = phi i64 [ 12, %bb.ae ], [ 8, %bb.ad ], [ 16, %bb.af ], [ 4, %bb.aa ]
  %i.ea = phi ptr [ @40, %bb.ae ], [ @39, %bb.ad ], [ @41, %bb.af ], [ @38, %bb.aa ]
  invoke void @_ZN4core5slice5index16slice_index_fail17hfe436548ecebea33E(i64 noundef %i.dy, i64 noundef %i.dz, i64 noundef %.sroa.5334.0.copyload, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ea) #37
          to label %.cont unwind label %bb.ab

.cont:                                            ; preds = %.invoke
  unreachable

"_ZN4core6result19Result$LT$T$C$E$GT$6unwrap17h397c910180e990c0E.exit": ; preds = %bb.af
  %i.eb = getelementptr inbounds nuw i8, ptr %.sroa.4333.0.copyload, i64 12
  %.sroa.0158.0.copyload = load i32, ptr %i.eb, align 1
  %i.ec = invoke noundef i32 %"_ZN4core3num21_$LT$impl$u20$u32$GT$13from_le_bytes17h78c96324db6491b7E._ZN4core3num21_$LT$impl$u20$u32$GT$13from_be_bytes17h8258789deec27a58E"(i32 %.sroa.0158.0.copyload)
          to label %bb.ag unwind label %bb.ab, !callees !581 ; 2 uses

bb.ag:                                            ; preds = %"_ZN4core6result19Result$LT$T$C$E$GT$6unwrap17h397c910180e990c0E.exit"
  %i.ed = lshr i32 %i.do, 16
  %i.ee = lshr i32 %i.dt, 16
  %i.ef = lshr i32 %i.dw, 16
  %i.eg = lshr i32 %i.ec, 16
  %i.eh = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i16 1, ptr %i.eh, align 8
  %.sroa.496.sroa.0.sroa.3.0..sroa.496.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.ei = trunc nuw i32 %i.ed to i16
  %i.ej = trunc i32 %i.do to i16
  %i.ek = trunc nuw i32 %i.ee to i16
  %i.el = trunc i32 %i.dt to i16
  %i.em = trunc nuw i32 %i.ef to i16
  %i.en = trunc i32 %i.dw to i16
  %i.eo = trunc nuw i32 %i.eg to i16
  %i.ep = trunc i32 %i.ec to i16
  %i.eq = insertelement <8 x i16> poison, i16 %i.ei, i64 0
  %i.er = insertelement <8 x i16> %i.eq, i16 %i.ej, i64 1
  %i.es = insertelement <8 x i16> %i.er, i16 %i.ek, i64 2
  %i.et = insertelement <8 x i16> %i.es, i16 %i.el, i64 3
  %i.eu = insertelement <8 x i16> %i.et, i16 %i.em, i64 4
  %i.ev = insertelement <8 x i16> %i.eu, i16 %i.en, i64 5
  %i.ew = insertelement <8 x i16> %i.ev, i16 %i.eo, i64 6
  %i.ex = insertelement <8 x i16> %i.ew, i16 %i.ep, i64 7
  %i.ey = tail call <8 x i16> @llvm.bswap.v8i16(<8 x i16> %i.ex)
  store <8 x i16> %i.ey, ptr %.sroa.496.sroa.0.sroa.3.0..sroa.496.0..sroa_idx.sroa_idx, align 4
  %.sroa.496.sroa.4.0..sroa.496.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 28
  store i32 0, ptr %.sroa.496.sroa.4.0..sroa.496.0..sroa_idx.sroa_idx, align 4
  %.sroa.496.sroa.5.0..sroa.496.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i32 0, ptr %.sroa.496.sroa.5.0..sroa.496.0..sroa_idx.sroa_idx, align 8
  %.sroa.496.sroa.6.0..sroa.496.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 36
  store i16 %.sroa.5193.0.extract.trunc, ptr %.sroa.496.sroa.6.0..sroa.496.0..sroa_idx.sroa_idx, align 4
  store i64 -9223372036854775803, ptr %0, align 8
  %i.ez = icmp eq i64 %i.dk, 0
  br i1 %i.ez, label %"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17ha21832cf276f63f7E.exit287", label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.4333.0.copyload, i64 noundef %i.dk, i64 noundef range(i64 1, -9223372036854775807) 1) #38
  br label %"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17ha21832cf276f63f7E.exit287"

bb.ai:                                            ; preds = %bb.y
  %i.fa = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.val252 = load i64, ptr %i.j, align 8          ; 2 uses
  %i.fb = icmp eq i64 %.val252, 0
  br i1 %i.fb, label %"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17ha21832cf276f63f7E.exit", label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.fc = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %.val253 = load ptr, ptr %i.fc, align 8, !nonnull !4, !noundef !4
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val253, i64 noundef %.val252, i64 noundef range(i64 1, -9223372036854775807) 1) #38
  br label %"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17ha21832cf276f63f7E.exit"

bb.ak:                                            ; preds = %bb.y
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !584
  %.val250 = load i64, ptr %i.j, align 8          ; 2 uses
  %i.fd = icmp eq i64 %.val250, 0
  br i1 %i.fd, label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h1ed881ed470345dfE.exit292", label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.fe = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %.val251 = load ptr, ptr %i.fe, align 8, !nonnull !4, !noundef !4
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val251, i64 noundef %.val250, i64 noundef range(i64 1, -9223372036854775807) 1) #38
  br label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h1ed881ed470345dfE.exit292"

"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h1ed881ed470345dfE.exit292": ; preds = %bb.ak, %bb.al
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.l, i64 24, i1 false)
  %.sroa.4108.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr @33, ptr %.sroa.4108.0..sroa_idx, align 8
  %.sroa.5109.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 98, ptr %.sroa.5109.0..sroa_idx, align 8
  %.sroa.6110.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i32 225, ptr %.sroa.6110.0..sroa_idx, align 8
  br label %"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17ha21832cf276f63f7E.exit287"

"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17ha21832cf276f63f7E.exit287": ; preds = %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h1ed881ed470345dfE.exit292", %bb.v, %bb.w, %bb.ag, %bb.ah, %_ZN4core5slice6memchr6memchr17h42eb1bd28cc17905E.exit.thread.i.i, %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h1ed881ed470345dfE.exit294", %bb.z, %bb.p
  ret void

bb.am:                                            ; preds = %"_ZN4core3num21_$LT$impl$u20$u16$GT$16from_ascii_radix17hc54ff9b205fe9008E.exit.thread"
  %i.ff = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.val248 = load i64, ptr %i.w, align 8          ; 2 uses
  %i.fg = icmp eq i64 %.val248, 0
  br i1 %i.fg, label %"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17ha21832cf276f63f7E.exit", label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.fh = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  %.val249 = load ptr, ptr %i.fh, align 8, !nonnull !4, !noundef !4
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val249, i64 noundef %.val248, i64 noundef range(i64 1, -9223372036854775807) 1) #38
  br label %"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17ha21832cf276f63f7E.exit"

bb.ao:                                            ; preds = %"_ZN4core3num21_$LT$impl$u20$u16$GT$16from_ascii_radix17hc54ff9b205fe9008E.exit.thread"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !577
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u)
  %.val246 = load i64, ptr %i.w, align 8          ; 2 uses
  %i.fi = icmp eq i64 %.val246, 0
  br i1 %i.fi, label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h1ed881ed470345dfE.exit294", label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.fj = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  %.val247 = load ptr, ptr %i.fj, align 8, !nonnull !4, !noundef !4
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val247, i64 noundef %.val246, i64 noundef range(i64 1, -9223372036854775807) 1) #38
  br label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h1ed881ed470345dfE.exit294"

"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h1ed881ed470345dfE.exit294": ; preds = %bb.ao, %bb.ap
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.x, i64 24, i1 false)
  %.sroa.439.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr @33, ptr %.sroa.439.0..sroa_idx, align 8
  %.sroa.540.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 98, ptr %.sroa.540.0..sroa_idx, align 8
  %.sroa.641.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i32 187, ptr %.sroa.641.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z)
  br label %"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17ha21832cf276f63f7E.exit287"
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @"_ZN11procfs_core3sys6kernel1_89_$LT$impl$u20$core..fmt..Octal$u20$for$u20$procfs_core..sys..kernel..AllowedFunctions$GT$3fmt17h2bb11721983cfbf9E"(ptr noalias noundef readonly align 2 captures(none) dereferenceable(2) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [2 x i8], align 2                 ; 4 uses
  %i.b = load i16, ptr %0, align 2, !noundef !4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !591
  store i16 %i.b, ptr %i.a, align 2, !noalias !591
  %i.c = call noundef zeroext i1 @"_ZN4core3fmt3num50_$LT$impl$u20$core..fmt..Octal$u20$for$u20$u16$GT$3fmt17h67f4e3110ad583bbE"(ptr noalias noundef nonnull readonly align 2 captures(address, read_provenance) dereferenceable(2) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(24) %1), !noalias !592
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !591
  ret i1 %i.c
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @"_ZN11procfs_core3sys6kernel1_90_$LT$impl$u20$core..fmt..Binary$u20$for$u20$procfs_core..sys..kernel..AllowedFunctions$GT$3fmt17ha0633353861b2984E"(ptr noalias noundef readonly align 2 captures(none) dereferenceable(2) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [2 x i8], align 2                 ; 4 uses
  %i.b = load i16, ptr %0, align 2, !noundef !4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !596
  store i16 %i.b, ptr %i.a, align 2, !noalias !596
  %i.c = call noundef zeroext i1 @"_ZN4core3fmt3num51_$LT$impl$u20$core..fmt..Binary$u20$for$u20$u16$GT$3fmt17h4d15c251d4fbbf20E"(ptr noalias noundef nonnull readonly align 2 captures(address, read_provenance) dereferenceable(2) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(24) %1), !noalias !597
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !596
  ret i1 %i.c
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @"_ZN11procfs_core3sys6kernel1_92_$LT$impl$u20$core..fmt..LowerHex$u20$for$u20$procfs_core..sys..kernel..AllowedFunctions$GT$3fmt17hd8b9bc6904dd2a7eE"(ptr noalias noundef readonly align 2 captures(none) dereferenceable(2) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [2 x i8], align 2                 ; 4 uses
  %i.b = load i16, ptr %0, align 2, !noundef !4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !601
  store i16 %i.b, ptr %i.a, align 2, !noalias !601
  %i.c = call noundef zeroext i1 @"_ZN4core3fmt3num53_$LT$impl$u20$core..fmt..LowerHex$u20$for$u20$u16$GT$3fmt17h53de4c1af350953cE"(ptr noalias noundef nonnull readonly align 2 captures(address, read_provenance) dereferenceable(2) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(24) %1), !noalias !602
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !601
  ret i1 %i.c
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @"_ZN11procfs_core3sys6kernel1_92_$LT$impl$u20$core..fmt..UpperHex$u20$for$u20$procfs_core..sys..kernel..AllowedFunctions$GT$3fmt17h149045ddd3ef69bbE"(ptr noalias noundef readonly align 2 captures(none) dereferenceable(2) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [2 x i8], align 2                 ; 4 uses
  %i.b = load i16, ptr %0, align 2, !noundef !4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !606
  store i16 %i.b, ptr %i.a, align 2, !noalias !606
  %i.c = call noundef zeroext i1 @"_ZN4core3fmt3num53_$LT$impl$u20$core..fmt..UpperHex$u20$for$u20$u16$GT$3fmt17h1a6d6988b6104a81E"(ptr noalias noundef nonnull readonly align 2 captures(address, read_provenance) dereferenceable(2) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(24) %1), !noalias !607
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !606
  ret i1 %i.c
}

; Function Attrs: nonlazybind uwtable
define void @_ZN11procfs_core3sys6kernel7Version8from_str17h9872cb7e42a5d291E(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) %0, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %1, i64 noundef %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 %2 ; 4 uses
  br label %bb.b

bb.b:                                             ; preds = %"_ZN97_$LT$core..str..pattern..MultiCharEqSearcher$LT$C$GT$$u20$as$u20$core..str..pattern..Searcher$GT$4next17h9acd52bd0bf00f19E.exit.i.i.i", %bb.a
  %i.b = phi i64 [ %i.aq, %"_ZN97_$LT$core..str..pattern..MultiCharEqSearcher$LT$C$GT$$u20$as$u20$core..str..pattern..Searcher$GT$4next17h9acd52bd0bf00f19E.exit.i.i.i" ], [ 0, %bb.a ] ; 7 uses
  %i.c = phi ptr [ %i.am, %"_ZN97_$LT$core..str..pattern..MultiCharEqSearcher$LT$C$GT$$u20$as$u20$core..str..pattern..Searcher$GT$4next17h9acd52bd0bf00f19E.exit.i.i.i" ], [ %1, %bb.a ] ; 7 uses
  %i.d = ptrtoint ptr %i.c to i64
  %.not.not.not.not.i.not = icmp eq ptr %i.c, %i.a
  br i1 %.not.not.not.not.i.not, label %.lr.ph.split.i.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 1 ; 3 uses
  %i.f = load i8, ptr %i.c, align 1, !alias.scope !653, !noalias !654, !noundef !4 ; 5 uses
  %i.g = icmp sgt i8 %i.f, -1
  br i1 %i.g, label %bb.d, label %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h3d79301cf90414f7E.exit12.i.i.i.i.i.i"

"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h3d79301cf90414f7E.exit12.i.i.i.i.i.i": ; preds = %bb.c
  %i.h = and i8 %i.f, 31
  %i.i = zext nneg i8 %i.h to i32                 ; 3 uses
  %i.j = icmp ne ptr %i.e, %i.a
  tail call void @llvm.assume(i1 %i.j)
  %i.k = getelementptr inbounds nuw i8, ptr %i.c, i64 2 ; 3 uses
  %i.l = load i8, ptr %i.e, align 1, !alias.scope !653, !noalias !654, !noundef !4
  %i.m = shl nuw nsw i32 %i.i, 6
  %i.n = and i8 %i.l, 63
  %i.o = zext nneg i8 %i.n to i32                 ; 2 uses
  %i.p = or disjoint i32 %i.m, %i.o
  %i.q = icmp samesign ugt i8 %i.f, -33
  br i1 %i.q, label %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h3d79301cf90414f7E.exit14.i.i.i.i.i.i", label %"_ZN97_$LT$core..str..pattern..MultiCharEqSearcher$LT$C$GT$$u20$as$u20$core..str..pattern..Searcher$GT$4next17h9acd52bd0bf00f19E.exit.i.i.i"

bb.d:                                             ; preds = %bb.c
  %i.r = zext nneg i8 %i.f to i32
  br label %"_ZN97_$LT$core..str..pattern..MultiCharEqSearcher$LT$C$GT$$u20$as$u20$core..str..pattern..Searcher$GT$4next17h9acd52bd0bf00f19E.exit.i.i.i"

"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h3d79301cf90414f7E.exit14.i.i.i.i.i.i": ; preds = %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h3d79301cf90414f7E.exit12.i.i.i.i.i.i"
  %i.s = icmp ne ptr %i.k, %i.a
  tail call void @llvm.assume(i1 %i.s)
  %i.t = getelementptr inbounds nuw i8, ptr %i.c, i64 3 ; 3 uses
  %i.u = load i8, ptr %i.k, align 1, !alias.scope !653, !noalias !654, !noundef !4
  %i.v = shl nuw nsw i32 %i.o, 6
  %i.w = and i8 %i.u, 63
  %i.x = zext nneg i8 %i.w to i32
  %i.y = or disjoint i32 %i.v, %i.x               ; 2 uses
  %i.z = shl nuw nsw i32 %i.i, 12
  %i.aa = or disjoint i32 %i.y, %i.z
  %i.ab = icmp samesign ugt i8 %i.f, -17
  br i1 %i.ab, label %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h3d79301cf90414f7E.exit16.i.i.i.i.i.i", label %"_ZN97_$LT$core..str..pattern..MultiCharEqSearcher$LT$C$GT$$u20$as$u20$core..str..pattern..Searcher$GT$4next17h9acd52bd0bf00f19E.exit.i.i.i"

"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h3d79301cf90414f7E.exit16.i.i.i.i.i.i": ; preds = %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h3d79301cf90414f7E.exit14.i.i.i.i.i.i"
  %i.ac = icmp ne ptr %i.t, %i.a
  tail call void @llvm.assume(i1 %i.ac)
  %i.ad = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  %i.ae = load i8, ptr %i.t, align 1, !alias.scope !653, !noalias !654, !noundef !4
end_hunk_0
