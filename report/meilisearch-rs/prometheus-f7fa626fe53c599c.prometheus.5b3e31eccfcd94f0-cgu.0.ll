Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/meilisearch-rs/original/prometheus-f7fa626fe53c599c.prometheus.5b3e31eccfcd94f0-cgu.0?download=true
inline.NumInlined: 2378
inline.NumDeleted: 1121
loop-unroll.NumCompletelyUnrolled: 8
loop-unroll.NumRuntimeUnrolled: 30
loop-unroll.NumUnrolled: 38
begin_hunk_0_@"_ZN102_$LT$core..iter..adapters..map..Map$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h9f2e54504fe62546E":bb.a

bb.d:                                             ; preds = %"_ZN118_$LT$alloc..collections..btree..map..IntoValues$LT$K$C$V$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h11a8e7f0954a50a3E.exit"
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 72
  %.val = load ptr, ptr %i.v, align 8, !nonnull !14, !align !15, !noundef !14 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  %i.w = load ptr, ptr %.val, align 8, !noalias !147, !nonnull !14, !align !15, !noundef !14 ; 3 uses
  %i.x = load i64, ptr %i.w, align 8, !range !16, !noalias !147, !noundef !14
  %.not.i1 = icmp eq i64 %i.x, -9223372036854775808
  br i1 %.not.i1, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !noalias !147
  store ptr %i.w, ptr %i.m, align 8, !noalias !147
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !147
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.422.0.copyload) ]
  store ptr %.sroa.422.0.copyload, ptr %i.k, align 8, !noalias !147
  %i.y = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  store i64 %.sroa.523.0.copyload, ptr %i.y, align 8, !noalias !147
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !147
  store ptr %i.m, ptr %i.j, align 8, !noalias !147
  %.sroa.44.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  store ptr @"_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17he4ff271c05f93eaeE", ptr %.sroa.44.0..sroa_idx.i, align 8, !noalias !147
  %i.z = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  store ptr %i.k, ptr %i.z, align 8, !noalias !147
  %.sroa.48.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  store ptr @"_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17ha055bba846282b71E", ptr %.sroa.48.0..sroa_idx.i, align 8, !noalias !147
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !148
  store ptr @100, ptr %i.f, align 8, !noalias !149
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store i64 2, ptr %.sroa.4.0..sroa_idx.i, align 8, !noalias !149
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  store ptr %i.j, ptr %.sroa.5.0..sroa_idx.i, align 8, !noalias !149
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  store i64 2, ptr %.sroa.6.0..sroa_idx.i, align 8, !noalias !149
  %.sroa.7.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.f, i64 32
  store ptr null, ptr %.sroa.7.0..sroa_idx.i, align 8, !noalias !149
  invoke void @_ZN5alloc3fmt6format12format_inner17hce37e7516f243f46E(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.l, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.f)
          to label %bb.k unwind label %bb.j, !noalias !150

bb.f:                                             ; preds = %bb.m, %bb.d
  %.sroa.10.0 = phi i64 [ %.sroa.523.0.copyload, %bb.d ], [ %.sroa.10.0.copyload14, %bb.m ]
  %.sroa.7.2 = phi ptr [ %.sroa.422.0.copyload, %bb.d ], [ %.sroa.7.0.copyload12, %bb.m ] ; 6 uses
  %.sroa.09.2 = phi i64 [ %.sroa.021.0.copyload, %bb.d ], [ %.sroa.09.0.copyload10, %bb.m ] ; 6 uses
  %i.aa = phi ptr [ %i.w, %bb.d ], [ %.pre.i, %bb.m ] ; 3 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 168
  %i.ac = load ptr, ptr %i.ab, align 8, !noalias !147, !noundef !14 ; 5 uses
  %.not13.i = icmp eq ptr %i.ac, null
  br i1 %.not13.i, label %"_ZN10prometheus8registry12RegistryCore6gather28_$u7b$$u7b$closure$u7d$$u7d$17hc1283afcf0553791E.exit", label %bb.n

.body.i:                                          ; preds = %bb.an, %.body.i.i.i.i.i, %bb.r, %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h7c42ccfc1fff1c35E.exit.i.i.i.i.i", %bb.j
  %.sroa.7.1 = phi ptr [ %.sroa.7.2, %bb.an ], [ %.sroa.7.2, %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h7c42ccfc1fff1c35E.exit.i.i.i.i.i" ], [ %.sroa.7.2, %bb.r ], [ %.sroa.7.2, %.body.i.i.i.i.i ], [ %.sroa.7.0, %bb.j ] ; 2 uses
  %.sroa.09.1 = phi i64 [ %.sroa.09.2, %bb.an ], [ %.sroa.09.2, %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h7c42ccfc1fff1c35E.exit.i.i.i.i.i" ], [ %.sroa.09.2, %bb.r ], [ %.sroa.09.2, %.body.i.i.i.i.i ], [ %.sroa.09.0, %bb.j ] ; 2 uses
  %.pn15.i = phi { ptr, i32 } [ %.pn.i, %bb.an ], [ %i.ay, %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h7c42ccfc1fff1c35E.exit.i.i.i.i.i" ], [ %i.ay, %bb.r ], [ %eh.lpad-body.i.i.i.i.i, %.body.i.i.i.i.i ], [ %i.al, %bb.j ]
  %i.ad = icmp eq i64 %.sroa.09.1, 0
  br i1 %i.ad, label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h7c42ccfc1fff1c35E.exit.i2", label %bb.g

bb.g:                                             ; preds = %.body.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.7.1) ]
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.7.1, i64 noundef %.sroa.09.1, i64 noundef range(i64 1, -9223372036854775807) 1) #42, !noalias !151
  br label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h7c42ccfc1fff1c35E.exit.i2"

"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h7c42ccfc1fff1c35E.exit.i2": ; preds = %bb.g, %.body.i
  %i.ae = icmp eq i64 %.sroa.624.0.copyload, 0
  br i1 %i.ae, label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h7c42ccfc1fff1c35E.exit7.i", label %bb.h

bb.h:                                             ; preds = %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h7c42ccfc1fff1c35E.exit.i2"
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.725.0.copyload) ]
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.725.0.copyload, i64 noundef %.sroa.624.0.copyload, i64 noundef range(i64 1, -9223372036854775807) 1) #42, !noalias !152
  br label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h7c42ccfc1fff1c35E.exit7.i"

"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h7c42ccfc1fff1c35E.exit7.i": ; preds = %bb.h, %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h7c42ccfc1fff1c35E.exit.i2"
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.1028.0.copyload) ]
  %i.af = icmp eq i64 %.sroa.1129.0.copyload, 0
  br i1 %i.af, label %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hbe17f4167629f79fE.exit.i.i", label %.lr.ph.i.i.i.i3

.lr.ph.i.i.i.i3:                                  ; preds = %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h7c42ccfc1fff1c35E.exit7.i", %.lr.ph.i.i.i.i3
  %.sroa.0.07.i.i.i.i4 = phi i64 [ %i.ah, %.lr.ph.i.i.i.i3 ], [ 0, %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h7c42ccfc1fff1c35E.exit7.i" ] ; 2 uses
  %i.ag = getelementptr inbounds nuw [136 x i8], ptr %.sroa.1028.0.copyload, i64 %.sroa.0.07.i.i.i.i4
  %i.ah = add nuw i64 %.sroa.0.07.i.i.i.i4, 1     ; 2 uses
  call fastcc void @"_ZN4core3ptr46drop_in_place$LT$prometheus..proto..Metric$GT$17he18995900ba8ff64E"(ptr noalias noundef readonly align 8 dereferenceable(136) %i.ag), !noalias !153
  %i.ai = icmp eq i64 %i.ah, %.sroa.1129.0.copyload
  br i1 %i.ai, label %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hbe17f4167629f79fE.exit.i.i", label %.lr.ph.i.i.i.i3

"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hbe17f4167629f79fE.exit.i.i": ; preds = %.lr.ph.i.i.i.i3, %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h7c42ccfc1fff1c35E.exit7.i"
  %i.aj = icmp eq i64 %.sroa.927.0.copyload, 0
  br i1 %i.aj, label %"_ZN4core3ptr52drop_in_place$LT$prometheus..proto..MetricFamily$GT$17h59a553868dd65940E.exit", label %bb.i

bb.i:                                             ; preds = %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hbe17f4167629f79fE.exit.i.i"
  %i.ak = mul nuw i64 %.sroa.927.0.copyload, 136
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.1028.0.copyload, i64 noundef %i.ak, i64 noundef range(i64 1, -9223372036854775807) 8) #42, !noalias !153
  br label %"_ZN4core3ptr52drop_in_place$LT$prometheus..proto..MetricFamily$GT$17h59a553868dd65940E.exit"

"_ZN4core3ptr52drop_in_place$LT$prometheus..proto..MetricFamily$GT$17h59a553868dd65940E.exit": ; preds = %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hbe17f4167629f79fE.exit.i.i", %bb.i
  resume { ptr, i32 } %.pn15.i

bb.j:                                             ; preds = %bb.n, %bb.e
  %.sroa.7.0 = phi ptr [ %.sroa.7.2, %bb.n ], [ %.sroa.422.0.copyload, %bb.e ]
  %.sroa.09.0 = phi i64 [ %.sroa.09.2, %bb.n ], [ %.sroa.021.0.copyload, %bb.e ]
  %i.al = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

bb.k:                                             ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !148
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !147
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !147
  call void @llvm.experimental.noalias.scope.decl(metadata !154)
  call void @llvm.experimental.noalias.scope.decl(metadata !155)
  %i.am = icmp eq i64 %.sroa.021.0.copyload, 0
  br i1 %i.am, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.422.0.copyload, i64 noundef %.sroa.021.0.copyload, i64 noundef range(i64 1, -9223372036854775807) 1) #42, !noalias !156
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %.sroa.09.0.copyload10 = load i64, ptr %i.l, align 8, !alias.scope !157, !noalias !158
  %.sroa.7.0..sroa_idx11 = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %.sroa.7.0.copyload12 = load ptr, ptr %.sroa.7.0..sroa_idx11, align 8, !alias.scope !157, !noalias !158
  %.sroa.10.0..sroa_idx13 = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %.sroa.10.0.copyload14 = load i64, ptr %.sroa.10.0..sroa_idx13, align 8, !alias.scope !157, !noalias !158
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !147
  %.pre.i = load ptr, ptr %.val, align 8, !noalias !147
  br label %bb.f

bb.n:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !147
  call void @llvm.experimental.noalias.scope.decl(metadata !159)
  %i.an = getelementptr inbounds nuw i8, ptr %i.aa, i64 176
  %i.ao = load i64, ptr %i.an, align 8, !alias.scope !159, !noalias !147, !noundef !14
  %i.ap = getelementptr i8, ptr %i.ac, i64 %i.ao
  %i.aq = getelementptr i8, ptr %i.ap, i64 1
  %.val3.i.i.i = load <16 x i8>, ptr %i.ac, align 16, !noalias !160
  %i.ar = icmp sgt <16 x i8> %.val3.i.i.i, splat (i8 -1)
  %i.as = getelementptr inbounds nuw i8, ptr %i.ac, i64 16
  %i.at = getelementptr inbounds nuw i8, ptr %i.aa, i64 192
  %i.au = load i64, ptr %i.at, align 8, !alias.scope !159, !noalias !147, !noundef !14
  call void @llvm.experimental.noalias.scope.decl(metadata !161)
  call void @llvm.experimental.noalias.scope.decl(metadata !162)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !163
  store ptr %i.ac, ptr %i.e, align 8, !alias.scope !164, !noalias !165
  %.sroa.415.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store ptr %i.as, ptr %.sroa.415.0..sroa_idx.i, align 8, !alias.scope !164, !noalias !165
  %.sroa.516.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  store ptr %i.aq, ptr %.sroa.516.0..sroa_idx.i, align 8, !alias.scope !164, !noalias !165
  %.sroa.617.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  store <16 x i1> %i.ar, ptr %.sroa.617.0..sroa_idx.i, align 8, !alias.scope !164, !noalias !165
  %.sroa.819.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.e, i64 32 ; 2 uses
  store i64 %i.au, ptr %.sroa.819.0..sroa_idx.i, align 8, !alias.scope !164, !noalias !165
  call void @llvm.experimental.noalias.scope.decl(metadata !166)
  call void @llvm.experimental.noalias.scope.decl(metadata !167)
  call void @llvm.experimental.noalias.scope.decl(metadata !168)
  call void @llvm.experimental.noalias.scope.decl(metadata !169)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !170
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !171
  invoke fastcc void @"_ZN102_$LT$core..iter..adapters..map..Map$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hefbd81bf03ecdb04E"(ptr noalias noundef align 8 captures(address) dereferenceable(48) %i.c, ptr noalias noundef nonnull align 8 dereferenceable(40) %i.e)
          to label %.noexc.i unwind label %bb.j, !noalias !172

.noexc.i:                                         ; preds = %bb.n
  %i.av = load i64, ptr %i.c, align 8, !range !16, !noalias !171, !noundef !14 ; 3 uses
  %.not.i.i.i.i.i = icmp eq i64 %i.av, -9223372036854775808
  br i1 %.not.i.i.i.i.i, label %bb.o, label %bb.s

bb.o:                                             ; preds = %.noexc.i
  store i64 0, ptr %i.i, align 8, !alias.scope !173, !noalias !147
  %i.aw = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %i.aw, align 8, !alias.scope !173, !noalias !147
  %i.ax = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  store i64 0, ptr %i.ax, align 8, !alias.scope !173, !noalias !147
  br label %bb.z

bb.p:                                             ; preds = %bb.u
  %i.ay = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !174)
  call void @llvm.experimental.noalias.scope.decl(metadata !175), !noalias !176
  %i.az = icmp eq i64 %i.av, 0
  br i1 %i.az, label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h7c42ccfc1fff1c35E.exit.i.i.i.i.i", label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.ba = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %.val1.i.i.i.i.i.i = load ptr, ptr %i.ba, align 8, !alias.scope !177, !noalias !171, !nonnull !14, !noundef !14
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i.i.i.i, i64 noundef %i.av, i64 noundef range(i64 1, -9223372036854775807) 1) #42, !noalias !178
  br label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h7c42ccfc1fff1c35E.exit.i.i.i.i.i"

"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h7c42ccfc1fff1c35E.exit.i.i.i.i.i": ; preds = %bb.q, %bb.p
  %i.bb = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  call void @llvm.experimental.noalias.scope.decl(metadata !179), !noalias !176
  %.val.i4.i.i.i.i.i = load i64, ptr %i.bb, align 8, !alias.scope !180, !noalias !171 ; 2 uses
  %i.bc = icmp eq i64 %.val.i4.i.i.i.i.i, 0
  br i1 %i.bc, label %.body.i, label %bb.r

bb.r:                                             ; preds = %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h7c42ccfc1fff1c35E.exit.i.i.i.i.i"
  %i.bd = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %.val1.i5.i.i.i.i.i = load ptr, ptr %i.bd, align 8, !alias.scope !180, !noalias !171, !nonnull !14, !noundef !14
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i5.i.i.i.i.i, i64 noundef %.val.i4.i.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #42, !noalias !181
  br label %.body.i

bb.s:                                             ; preds = %.noexc.i
  %.val.i.i.i.i.i = load i64, ptr %.sroa.819.0..sroa_idx.i, align 8, !alias.scope !182, !noalias !163, !noundef !14 ; 2 uses
  %i.be = call i64 @llvm.uadd.sat.i64(i64 %.val.i.i.i.i.i, i64 1)
  %.sroa.0.0.i.i.i.i.i.i = call noundef i64 @llvm.umax.i64(i64 %i.be, i64 4) ; 3 uses
  %i.bf = mul i64 %.sroa.0.0.i.i.i.i.i.i, 48      ; 3 uses
  %or.cond.i.i.i.i.i.i.i.i = icmp ugt i64 %.val.i.i.i.i.i, 192153584101141161
  br i1 %or.cond.i.i.i.i.i.i.i.i, label %bb.u, label %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i.i, !prof !17

_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i.i: ; preds = %bb.s
  %i.bg = icmp eq i64 %i.bf, 0
  br i1 %i.bg, label %bb.v, label %bb.t

bb.t:                                             ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i.i
  call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #42, !noalias !183
  %i.bh = call noundef align 8 ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef %i.bf, i64 noundef range(i64 1, 9) 8) #42, !noalias !183 ; 2 uses
  %i.bi = icmp eq ptr %i.bh, null
  br i1 %i.bi, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t, %bb.s
  %.sroa.4.0.ph.i.i.i.i.i.i = phi i64 [ 8, %bb.t ], [ 0, %bb.s ]
  invoke void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef %.sroa.4.0.ph.i.i.i.i.i.i, i64 %i.bf, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @177) #45
          to label %.noexc.i.i.i.i.i unwind label %bb.p, !noalias !171

.noexc.i.i.i.i.i:                                 ; preds = %bb.u
  unreachable

bb.v:                                             ; preds = %bb.t, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i.i
  %.sroa.10.0.i.i.i.i.i.i = phi ptr [ inttoptr (i64 8 to ptr), %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i.i ], [ %i.bh, %bb.t ] ; 3 uses
  %.sroa.4.0.i.i.i.i.i.i = phi i64 [ 0, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i.i ], [ %.sroa.0.0.i.i.i.i.i.i, %bb.t ] ; 2 uses
  %i.bj = icmp ule i64 %.sroa.0.0.i.i.i.i.i.i, %.sroa.4.0.i.i.i.i.i.i
  call void @llvm.assume(i1 %i.bj)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.10.0.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(48) %i.c, i64 48, i1 false), !noalias !171
  store i64 %.sroa.4.0.i.i.i.i.i.i, ptr %i.d, align 8, !noalias !171
  %.sroa.4.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 2 uses
  store ptr %.sroa.10.0.i.i.i.i.i.i, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i, align 8, !noalias !171
  %.sroa.6.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 16 ; 2 uses
  store i64 1, ptr %.sroa.6.0..sroa_idx.i.i.i.i.i, align 8, !noalias !171
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !171
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.b, ptr noundef nonnull align 8 dereferenceable(40) %i.e, i64 40, i1 false), !noalias !172
  call void @llvm.experimental.noalias.scope.decl(metadata !184)
  call void @llvm.experimental.noalias.scope.decl(metadata !185)
  call void @llvm.experimental.noalias.scope.decl(metadata !186)
  call void @llvm.experimental.noalias.scope.decl(metadata !187)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !188
  invoke fastcc void @"_ZN102_$LT$core..iter..adapters..map..Map$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hefbd81bf03ecdb04E"(ptr noalias noundef align 8 captures(address) dereferenceable(48) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(40) %i.b)
          to label %.noexc5.i.i.i.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !189

.noexc5.i.i.i.i.i:                                ; preds = %bb.v
  %i.bk = load i64, ptr %i.a, align 8, !range !16, !noalias !190, !noundef !14
  %.not1.i.i.i.i.i.i.i = icmp eq i64 %i.bk, -9223372036854775808
  br i1 %.not1.i.i.i.i.i.i.i, label %.loopexit1.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %.noexc5.i.i.i.i.i
  %i.bl = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  br label %bb.w

bb.w:                                             ; preds = %.noexc6.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i
  %i.bm = phi ptr [ %.sroa.10.0.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i ], [ %i.br, %.noexc6.i.i.i.i.i ]
  %i.bn = phi i64 [ 1, %.lr.ph.i.i.i.i.i.i.i ], [ %i.bt, %.noexc6.i.i.i.i.i ] ; 5 uses
  %i.bo = icmp samesign ult i64 %i.bn, 192153584101141163
  call void @llvm.assume(i1 %i.bo)
  %i.bp = load i64, ptr %i.d, align 8, !range !18, !alias.scope !191, !noalias !171, !noundef !14
  %i.bq = icmp eq i64 %i.bn, %i.bp
  br i1 %i.bq, label %bb.y, label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h985766fd99823aa5E.exit.i.i.i.i.i.i.i"

"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h985766fd99823aa5E.exit.i.i.i.i.i.i.i": ; preds = %"._ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h985766fd99823aa5E.exit.i.i_crit_edge.i.i.i.i.i", %bb.w
  %i.br = phi ptr [ %.pre.i.i.i.i.i, %"._ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h985766fd99823aa5E.exit.i.i_crit_edge.i.i.i.i.i" ], [ %i.bm, %bb.w ] ; 2 uses
  %i.bs = getelementptr inbounds nuw [48 x i8], ptr %i.br, i64 %i.bn
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.bs, ptr noundef nonnull align 8 dereferenceable(48) %i.a, i64 48, i1 false), !noalias !190
  %i.bt = add nuw nsw i64 %i.bn, 1                ; 2 uses
  store i64 %i.bt, ptr %.sroa.6.0..sroa_idx.i.i.i.i.i, align 8, !alias.scope !191, !noalias !171
  invoke fastcc void @"_ZN102_$LT$core..iter..adapters..map..Map$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hefbd81bf03ecdb04E"(ptr noalias noundef align 8 captures(address) dereferenceable(48) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(40) %i.b)
          to label %.noexc6.i.i.i.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !189

.noexc6.i.i.i.i.i:                                ; preds = %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h985766fd99823aa5E.exit.i.i.i.i.i.i.i"
  %i.bu = load i64, ptr %i.a, align 8, !range !16, !noalias !190, !noundef !14
  %.not.i.i.i.i.i.i.i = icmp eq i64 %i.bu, -9223372036854775808
  br i1 %.not.i.i.i.i.i.i.i, label %.loopexit1.i.i.i.i.i, label %bb.w

bb.x:                                             ; preds = %bb.y
  %i.bv = landingpad { ptr, i32 }
          cleanup
  call fastcc void @"_ZN4core3ptr49drop_in_place$LT$prometheus..proto..LabelPair$GT$17h4ad7e82123feee92E"(ptr noalias noundef align 8 dereferenceable(48) %i.a) #46, !noalias !190
  br label %.body.i.i.i.i.i

bb.y:                                             ; preds = %bb.w
  %.val.i.i.i.i.i.i.i = load i64, ptr %i.bl, align 8, !alias.scope !192, !noalias !171, !noundef !14
  %i.bw = call i64 @llvm.uadd.sat.i64(i64 %.val.i.i.i.i.i.i.i, i64 1)
  invoke fastcc void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$7reserve21do_reserve_and_handle17heeecba0c58aac701E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.d, i64 noundef %i.bn, i64 noundef %i.bw, i64 noundef 8, i64 noundef 48)
          to label %"._ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h985766fd99823aa5E.exit.i.i_crit_edge.i.i.i.i.i" unwind label %bb.x, !noalias !193

"._ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h985766fd99823aa5E.exit.i.i_crit_edge.i.i.i.i.i": ; preds = %bb.y
  %.pre.i.i.i.i.i = load ptr, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i, align 8, !alias.scope !191, !noalias !171
  br label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h985766fd99823aa5E.exit.i.i.i.i.i.i.i"

.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h985766fd99823aa5E.exit.i.i.i.i.i.i.i", %bb.v
  %lpad.loopexit.split-lp64 = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i.i.i.i

.body.i.i.i.i.i:                                  ; preds = %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.x
  %eh.lpad-body.i.i.i.i.i = phi { ptr, i32 } [ %i.bv, %bb.x ], [ %lpad.loopexit.split-lp64, %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  call void @"_ZN4core3ptr72drop_in_place$LT$alloc..vec..Vec$LT$prometheus..proto..LabelPair$GT$$GT$17h452144939ac00129E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.d) #46, !noalias !171
  br label %.body.i

.loopexit1.i.i.i.i.i:                             ; preds = %.noexc6.i.i.i.i.i, %.noexc5.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !188
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !171
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.i, ptr noundef nonnull align 8 dereferenceable(24) %i.d, i64 24, i1 false), !noalias !194
  %.phi.trans.insert.i.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %.val.i.pre.i.pre = load ptr, ptr %.phi.trans.insert.i.phi.trans.insert, align 8, !noalias !147
  %.phi.trans.insert23.i.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %.val1.i.pre.i.pre = load i64, ptr %.phi.trans.insert23.i.phi.trans.insert, align 8, !noalias !147
  br label %bb.z

bb.z:                                             ; preds = %.loopexit1.i.i.i.i.i, %bb.o
  %.val1.i.pre.i = phi i64 [ %.val1.i.pre.i.pre, %.loopexit1.i.i.i.i.i ], [ 0, %bb.o ] ; 3 uses
  %.val.i.pre.i = phi ptr [ %.val.i.pre.i.pre, %.loopexit1.i.i.i.i.i ], [ inttoptr (i64 8 to ptr), %bb.o ] ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !171
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !170
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !163
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.1028.0.copyload) ]
  %.idx.i = mul nuw nsw i64 %.sroa.1129.0.copyload, 136
  %i.bx = getelementptr inbounds nuw i8, ptr %.sroa.1028.0.copyload, i64 %.idx.i
  %i.by = icmp eq i64 %.sroa.1129.0.copyload, 0
  br i1 %i.by, label %._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.z
  %i.bz = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.ca = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.cb = getelementptr inbounds nuw i8, ptr %i.g, i64 16 ; 3 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  br label %bb.aa

bb.aa:                                            ; preds = %bb.am, %.lr.ph.i
  %.sroa.011.020.i = phi ptr [ %.sroa.1028.0.copyload, %.lr.ph.i ], [ %i.cd, %bb.am ] ; 7 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %.sroa.011.020.i, i64 136 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.g, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.011.020.i, i64 24, i1 false), !noalias !147
  store i64 0, ptr %.sroa.011.020.i, align 8, !noalias !147
  %.sroa.410.0..sroa.0.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %.sroa.011.020.i, i64 8 ; 2 uses
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.410.0..sroa.0.0..sroa_idx.i, align 8, !noalias !147
  %.sroa.5.0..sroa.0.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %.sroa.011.020.i, i64 16 ; 2 uses
  store i64 0, ptr %.sroa.5.0..sroa.0.0..sroa_idx.i, align 8, !noalias !147
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !147
  invoke fastcc void @"_ZN67_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h6d14be9099c91ad9E"(ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.h, ptr nonnull %.val.i.pre.i, i64 %.val1.i.pre.i)
          to label %bb.af unwind label %bb.ae, !noalias !147

._crit_edge.i:                                    ; preds = %bb.am, %bb.z
  call void @llvm.experimental.noalias.scope.decl(metadata !195)
  call void @llvm.experimental.noalias.scope.decl(metadata !196)
  %i.ce = icmp eq i64 %.val1.i.pre.i, 0
  br i1 %i.ce, label %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h2e5c08286dacd60fE.exit.i.i", label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %._crit_edge.i, %"_ZN4core3ptr49drop_in_place$LT$prometheus..proto..LabelPair$GT$17h4ad7e82123feee92E.exit.i.i.i22.i"
  %.sroa.0.07.i.i.i.i = phi i64 [ %i.cg, %"_ZN4core3ptr49drop_in_place$LT$prometheus..proto..LabelPair$GT$17h4ad7e82123feee92E.exit.i.i.i22.i" ], [ 0, %._crit_edge.i ] ; 2 uses
  %i.cf = getelementptr inbounds nuw [48 x i8], ptr %.val.i.pre.i, i64 %.sroa.0.07.i.i.i.i ; 4 uses
  %i.cg = add nuw i64 %.sroa.0.07.i.i.i.i, 1      ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !197)
  call void @llvm.experimental.noalias.scope.decl(metadata !198)
  %.val.i.i.i.i.i.i = load i64, ptr %i.cf, align 8, !alias.scope !199, !noalias !200 ; 2 uses
  %i.ch = icmp eq i64 %.val.i.i.i.i.i.i, 0
  br i1 %i.ch, label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h7c42ccfc1fff1c35E.exit.i.i.i.i19.i", label %bb.ab

bb.ab:                                            ; preds = %.lr.ph.i.i.i.i
  %i.ci = getelementptr inbounds nuw i8, ptr %i.cf, i64 8
  %.val1.i.i.i.i.i18.i = load ptr, ptr %i.ci, align 8, !alias.scope !199, !noalias !200, !nonnull !14, !noundef !14
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i.i.i18.i, i64 noundef %.val.i.i.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #42, !noalias !201
  br label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h7c42ccfc1fff1c35E.exit.i.i.i.i19.i"

"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h7c42ccfc1fff1c35E.exit.i.i.i.i19.i": ; preds = %bb.ab, %.lr.ph.i.i.i.i
  %i.cj = getelementptr inbounds nuw i8, ptr %i.cf, i64 24
  call void @llvm.experimental.noalias.scope.decl(metadata !202)
  %.val.i4.i.i.i.i20.i = load i64, ptr %i.cj, align 8, !alias.scope !203, !noalias !200 ; 2 uses
  %i.ck = icmp eq i64 %.val.i4.i.i.i.i20.i, 0
  br i1 %i.ck, label %"_ZN4core3ptr49drop_in_place$LT$prometheus..proto..LabelPair$GT$17h4ad7e82123feee92E.exit.i.i.i22.i", label %bb.ac

bb.ac:                                            ; preds = %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h7c42ccfc1fff1c35E.exit.i.i.i.i19.i"
  %i.cl = getelementptr inbounds nuw i8, ptr %i.cf, i64 32
  %.val1.i5.i.i.i.i21.i = load ptr, ptr %i.cl, align 8, !alias.scope !203, !noalias !200, !nonnull !14, !noundef !14
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i5.i.i.i.i21.i, i64 noundef %.val.i4.i.i.i.i20.i, i64 noundef range(i64 1, -9223372036854775807) 1) #42, !noalias !204
  br label %"_ZN4core3ptr49drop_in_place$LT$prometheus..proto..LabelPair$GT$17h4ad7e82123feee92E.exit.i.i.i22.i"

"_ZN4core3ptr49drop_in_place$LT$prometheus..proto..LabelPair$GT$17h4ad7e82123feee92E.exit.i.i.i22.i": ; preds = %bb.ac, %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h7c42ccfc1fff1c35E.exit.i.i.i.i19.i"
  %i.cm = icmp eq i64 %i.cg, %.val1.i.pre.i
  br i1 %i.cm, label %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h2e5c08286dacd60fE.exit.i.i", label %.lr.ph.i.i.i.i

"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h2e5c08286dacd60fE.exit.i.i": ; preds = %"_ZN4core3ptr49drop_in_place$LT$prometheus..proto..LabelPair$GT$17h4ad7e82123feee92E.exit.i.i.i22.i", %._crit_edge.i
  %.val2.i.i = load i64, ptr %i.i, align 8, !range !18, !alias.scope !195, !noalias !147, !noundef !14 ; 2 uses
  %i.cn = icmp eq i64 %.val2.i.i, 0
  br i1 %i.cn, label %"_ZN4core3ptr72drop_in_place$LT$alloc..vec..Vec$LT$prometheus..proto..LabelPair$GT$$GT$17h452144939ac00129E.exit.i", label %bb.ad

bb.ad:                                            ; preds = %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h2e5c08286dacd60fE.exit.i.i"
  %i.co = mul nuw i64 %.val2.i.i, 48
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.pre.i, i64 noundef %i.co, i64 noundef range(i64 1, -9223372036854775807) 8) #42, !noalias !200
  br label %"_ZN4core3ptr72drop_in_place$LT$alloc..vec..Vec$LT$prometheus..proto..LabelPair$GT$$GT$17h452144939ac00129E.exit.i"

bb.ae:                                            ; preds = %bb.aa
  %i.cp = landingpad { ptr, i32 }
          cleanup
  br label %bb.an

bb.af:                                            ; preds = %bb.aa
  call void @llvm.experimental.noalias.scope.decl(metadata !205)
  %i.cq = load ptr, ptr %i.bz, align 8, !alias.scope !205, !noalias !147, !nonnull !14, !noundef !14 ; 2 uses
  %i.cr = load i64, ptr %i.ca, align 8, !alias.scope !205, !noalias !147, !noundef !14 ; 4 uses
  %i.cs = load i64, ptr %i.cb, align 8, !noalias !147, !noundef !14 ; 3 uses
end_hunk_0
begin_hunk_1_@_ZN10prometheus8registry8Registry6gather17had40677d0ec96b8cE:bb.a
  %.pn30.i.i.i.i.i.i.lcssa.unr = phi ptr [ poison, %bb.g ], [ %.pn30.i.i.i.i.i.i.prol, %.prol.preheader ]
  %.pn30.in.i.i.i.i.i.i.unr = phi ptr [ %i.da, %bb.g ], [ %i.db, %.prol.preheader ]
  %.pn28.in.i.i.i.i.i.i.unr = phi i64 [ %.sroa.6.sroa.0.0.ph.i.i.i.i.i, %bb.g ], [ %.pn28.i.i.i.i.i.i.prol, %.prol.preheader ]
  %i.dc = icmp ult i64 %.sroa.6.sroa.0.0.ph.i.i.i.i.i, 8
  br i1 %i.dc, label %.loopexit1073.i, label %.new

.new:                                             ; preds = %.prol.loopexit, %.new
  %.pn30.in.i.i.i.i.i.i = phi ptr [ %i.dl, %.new ], [ %.pn30.in.i.i.i.i.i.i.unr, %.prol.loopexit ]
  %.pn28.in.i.i.i.i.i.i = phi i64 [ %.pn28.i.i.i.i.i.i.7, %.new ], [ %.pn28.in.i.i.i.i.i.i.unr, %.prol.loopexit ]
  %.pn30.i.i.i.i.i.i = load ptr, ptr %.pn30.in.i.i.i.i.i.i, align 8, !noalias !2021, !nonnull !14, !noundef !14
  %i.dd = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.i.i, i64 1160
  %.pn30.i.i.i.i.i.i.1 = load ptr, ptr %i.dd, align 8, !noalias !2021, !nonnull !14, !noundef !14
  %i.de = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.i.i.1, i64 1160
  %.pn30.i.i.i.i.i.i.2 = load ptr, ptr %i.de, align 8, !noalias !2021, !nonnull !14, !noundef !14
  %i.df = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.i.i.2, i64 1160
  %.pn30.i.i.i.i.i.i.3 = load ptr, ptr %i.df, align 8, !noalias !2021, !nonnull !14, !noundef !14
  %i.dg = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.i.i.3, i64 1160
  %.pn30.i.i.i.i.i.i.4 = load ptr, ptr %i.dg, align 8, !noalias !2021, !nonnull !14, !noundef !14
  %i.dh = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.i.i.4, i64 1160
  %.pn30.i.i.i.i.i.i.5 = load ptr, ptr %i.dh, align 8, !noalias !2021, !nonnull !14, !noundef !14
  %i.di = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.i.i.5, i64 1160
  %.pn30.i.i.i.i.i.i.6 = load ptr, ptr %i.di, align 8, !noalias !2021, !nonnull !14, !noundef !14
  %i.dj = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.i.i.6, i64 1160
  %.pn28.i.i.i.i.i.i.7 = add i64 %.pn28.in.i.i.i.i.i.i, -8 ; 2 uses
  %.pn30.i.i.i.i.i.i.7 = load ptr, ptr %i.dj, align 8, !noalias !2021, !nonnull !14, !noundef !14 ; 2 uses
  %i.dk = icmp eq i64 %.pn28.i.i.i.i.i.i.7, 0
  %i.dl = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.i.i.7, i64 1160
  br i1 %i.dk, label %.loopexit1073.i, label %.new

bb.h:                                             ; preds = %.lr.ph.i.i.i.i.i.i
  invoke void @_ZN4core6option13unwrap_failed17h13b3e6f702cb1c04E(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @222) #45
          to label %.noexc.i.i.i.i unwind label %bb.i, !noalias !2022

.noexc.i.i.i.i:                                   ; preds = %bb.h
  unreachable

bb.i:                                             ; preds = %bb.h
  %i.dm = landingpad { ptr, i32 }
          cleanup                                 ; 0 uses
  call void @llvm.trap()
  unreachable

.loopexit1073.i:                                  ; preds = %.prol.loopexit, %.new, %bb.f
  %.sroa.7.0.i.i.i.i.i = phi i64 [ %i.cx, %bb.f ], [ 0, %.new ], [ 0, %.prol.loopexit ]
  %.sroa.010.0.i.i.i.i.i = phi ptr [ %.sroa.0.0.ph.i.i.i.i.i, %bb.f ], [ %.pn30.i.i.i.i.i.i.lcssa.unr, %.prol.loopexit ], [ %.pn30.i.i.i.i.i.i.7, %.new ]
  %i.dn = icmp samesign ult i64 %.sroa.6.sroa.4.0.ph.i.i.i.i.i, 11
  call void @llvm.assume(i1 %i.dn)
  %i.do = getelementptr inbounds nuw [80 x i8], ptr %.sroa.0.0.ph.i.i.i.i.i, i64 %.sroa.6.sroa.4.0.ph.i.i.i.i.i ; 2 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %i.do, i64 56
  %i.dq = load ptr, ptr %i.dp, align 8, !noalias !2011, !nonnull !14, !noundef !14 ; 4 uses
  %i.dr = getelementptr inbounds nuw i8, ptr %i.do, i64 64
  %i.ds = load i64, ptr %i.dr, align 8, !noalias !2011, !noundef !14 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !noalias !2023
  %i.dt = icmp ult i64 %i.ds, 2
  br i1 %i.dt, label %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by17h8d5b96bc3120be2dE.exit.i", label %bb.j, !prof !22

bb.j:                                             ; preds = %.loopexit1073.i
  %i.du = icmp ult i64 %i.ds, 21
  br i1 %i.du, label %bb.l, label %bb.k, !prof !22

bb.k:                                             ; preds = %bb.j
  invoke void @_ZN4core5slice4sort6stable14driftsort_main17hef0e4f12323776caE(ptr noalias noundef nonnull align 8 %i.dq, i64 noundef %i.ds, ptr noalias noundef nonnull align 8 dereferenceable(8) %i.m)
          to label %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by17h8d5b96bc3120be2dE.exit.i" unwind label %.thread502.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit, !noalias !2011

bb.l:                                             ; preds = %bb.j
  %.idx.i.i.i.i = mul nuw nsw i64 %i.ds, 136
  %i.dv = getelementptr inbounds nuw i8, ptr %i.dq, i64 %.idx.i.i.i.i
  %.sroa.0.01.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.dq, i64 136
  br label %.lr.ph.i.i.i51.i

.lr.ph.i.i.i51.i:                                 ; preds = %.lr.ph.i.i.i51.i, %bb.l
  %.sroa.0.03.i.i.i.i = phi ptr [ %.sroa.0.0.i.i.i.i, %.lr.ph.i.i.i51.i ], [ %.sroa.0.01.i.i.i.i, %bb.l ] ; 2 uses
  call fastcc void @_ZN4core5slice4sort6shared9smallsort11insert_tail17hc9f094d554a45734E(ptr noundef nonnull align 8 %i.dq, ptr noundef %.sroa.0.03.i.i.i.i), !noalias !2011
  %.sroa.0.0.i.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.0.03.i.i.i.i, i64 136 ; 2 uses
  %.not.i.i.i52.i = icmp eq ptr %.sroa.0.0.i.i.i.i, %i.dv
  br i1 %.not.i.i.i52.i, label %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by17h8d5b96bc3120be2dE.exit.i", label %.lr.ph.i.i.i51.i

"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by17h8d5b96bc3120be2dE.exit.i": ; preds = %.lr.ph.i.i.i51.i, %bb.k, %.loopexit1073.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !2023
  %i.dw = icmp eq i64 %i.bt, 0
  br i1 %i.dw, label %"_ZN113_$LT$alloc..collections..btree..map..ValuesMut$LT$K$C$V$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h9bf98bc6c26d2454E.exit.thread.i", label %.lr.ph808.split.i

"_ZN113_$LT$alloc..collections..btree..map..ValuesMut$LT$K$C$V$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h9bf98bc6c26d2454E.exit.thread.i": ; preds = %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by17h8d5b96bc3120be2dE.exit.i", %._crit_edge.i
  %.not41.not.not.i = xor i1 %.not41.not.i, true
  %.sink23.i.i = zext i1 %.not41.not.not.i to i64
  %spec.select.i = select i1 %.not41.not.i, i64 0, i64 %i.gf
  br label %.thread1065.i

.thread1065.i:                                    ; preds = %"_ZN113_$LT$alloc..collections..btree..map..ValuesMut$LT$K$C$V$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h9bf98bc6c26d2454E.exit.thread.i", %bb.b
  %.sink23.i1070.i = phi i64 [ %.sink23.i.i, %"_ZN113_$LT$alloc..collections..btree..map..ValuesMut$LT$K$C$V$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h9bf98bc6c26d2454E.exit.thread.i" ], [ 0, %bb.b ] ; 2 uses
  %i.dx = phi i64 [ %i.gg, %"_ZN113_$LT$alloc..collections..btree..map..ValuesMut$LT$K$C$V$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h9bf98bc6c26d2454E.exit.thread.i" ], [ undef, %bb.b ] ; 2 uses
  %i.dy = phi ptr [ %.fr.i, %"_ZN113_$LT$alloc..collections..btree..map..ValuesMut$LT$K$C$V$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h9bf98bc6c26d2454E.exit.thread.i" ], [ null, %bb.b ] ; 2 uses
  %i.dz = phi i64 [ %spec.select.i, %"_ZN113_$LT$alloc..collections..btree..map..ValuesMut$LT$K$C$V$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h9bf98bc6c26d2454E.exit.thread.i" ], [ 0, %bb.b ]
  call void @llvm.experimental.noalias.scope.decl(metadata !2024)
  call void @llvm.experimental.noalias.scope.decl(metadata !2025)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !2026
  store i64 %.sink23.i1070.i, ptr %i.l, align 8, !alias.scope !2027, !noalias !2028
  %.sroa.0269.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  store ptr null, ptr %.sroa.0269.sroa.4.0..sroa_idx.i, align 8, !alias.scope !2027, !noalias !2028
  %.sroa.0269.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  store ptr %i.dy, ptr %.sroa.0269.sroa.5.0..sroa_idx.i, align 8, !alias.scope !2027, !noalias !2028
  %.sroa.0269.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.l, i64 24
  store i64 %i.dx, ptr %.sroa.0269.sroa.6.0..sroa_idx.i, align 8, !alias.scope !2027, !noalias !2028
  %.sroa.0269.sroa.7.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.l, i64 32
  store i64 %.sink23.i1070.i, ptr %.sroa.0269.sroa.7.0..sroa_idx.i, align 8, !alias.scope !2027, !noalias !2028
  %.sroa.0269.sroa.8.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.l, i64 40
  store ptr null, ptr %.sroa.0269.sroa.8.0..sroa_idx.i, align 8, !alias.scope !2027, !noalias !2028
  %.sroa.0269.sroa.9.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.l, i64 48
  store ptr %i.dy, ptr %.sroa.0269.sroa.9.0..sroa_idx.i, align 8, !alias.scope !2027, !noalias !2028
  %.sroa.0269.sroa.10.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.l, i64 56
  store i64 %i.dx, ptr %.sroa.0269.sroa.10.0..sroa_idx.i, align 8, !alias.scope !2027, !noalias !2028
  %.sroa.0269.sroa.11.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.l, i64 64 ; 2 uses
  store i64 %i.dz, ptr %.sroa.0269.sroa.11.0..sroa_idx.i, align 8, !alias.scope !2027, !noalias !2028
  %.sroa.4270.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.l, i64 72
  store ptr %i.r, ptr %.sroa.4270.0..sroa_idx.i, align 8, !alias.scope !2027, !noalias !2028
  call void @llvm.experimental.noalias.scope.decl(metadata !2029)
  call void @llvm.experimental.noalias.scope.decl(metadata !2030)
  call void @llvm.experimental.noalias.scope.decl(metadata !2031)
  call void @llvm.experimental.noalias.scope.decl(metadata !2032)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !2033
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !2034
  invoke fastcc void @"_ZN102_$LT$core..iter..adapters..map..Map$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h9f2e54504fe62546E"(ptr noalias noundef align 8 captures(address) dereferenceable(80) %i.j, ptr noalias noundef nonnull align 8 dereferenceable(80) %i.l)
          to label %bb.n unwind label %bb.m, !noalias !2035

bb.m:                                             ; preds = %.thread1065.i
  %i.ea = landingpad { ptr, i32 }
          cleanup
  br label %"_ZN4core3ptr52drop_in_place$LT$prometheus..proto..MetricFamily$GT$17h59a553868dd65940E.exit.i.i.i.i"

bb.n:                                             ; preds = %.thread1065.i
  %i.eb = load i64, ptr %i.j, align 8, !range !16, !noalias !2034, !noundef !14 ; 3 uses
  %.not.i.i.i.i.i = icmp eq i64 %i.eb, -9223372036854775808
  br i1 %.not.i.i.i.i.i, label %bb.o, label %bb.t

bb.o:                                             ; preds = %bb.n
  store i64 0, ptr %0, align 8, !alias.scope !2036
  %i.ec = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %i.ec, align 8, !alias.scope !2036
  %i.ed = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 0, ptr %i.ed, align 8, !alias.scope !2036
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !2034
  invoke fastcc void @"_ZN4core3ptr124drop_in_place$LT$alloc..collections..btree..map..IntoIter$LT$alloc..string..String$C$prometheus..proto..MetricFamily$GT$$GT$17h1f7e07d840e921f7E"(ptr noalias noundef nonnull align 8 dereferenceable(80) %i.l)
          to label %bb.eh unwind label %bb.ef, !noalias !2035

bb.p:                                             ; preds = %bb.v
  %i.ee = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !2037)
  call void @llvm.experimental.noalias.scope.decl(metadata !2038), !noalias !2039
  %i.ef = icmp eq i64 %i.eb, 0
  br i1 %i.ef, label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h7c42ccfc1fff1c35E.exit.i.i.i.i.i", label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.eg = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %.val1.i.i.i.i.i.i = load ptr, ptr %i.eg, align 8, !alias.scope !2040, !noalias !2034, !nonnull !14, !noundef !14
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i.i.i.i, i64 noundef %i.eb, i64 noundef range(i64 1, -9223372036854775807) 1) #42, !noalias !2041
  br label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h7c42ccfc1fff1c35E.exit.i.i.i.i.i"

"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h7c42ccfc1fff1c35E.exit.i.i.i.i.i": ; preds = %bb.q, %bb.p
  %i.eh = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  call void @llvm.experimental.noalias.scope.decl(metadata !2042), !noalias !2039
  %.val.i5.i.i.i.i.i = load i64, ptr %i.eh, align 8, !alias.scope !2043, !noalias !2034 ; 2 uses
  %i.ei = icmp eq i64 %.val.i5.i.i.i.i.i, 0
  br i1 %i.ei, label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h7c42ccfc1fff1c35E.exit7.i.i.i.i.i", label %bb.r

bb.r:                                             ; preds = %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h7c42ccfc1fff1c35E.exit.i.i.i.i.i"
  %i.ej = getelementptr inbounds nuw i8, ptr %i.j, i64 32
  %.val1.i6.i.i.i.i.i = load ptr, ptr %i.ej, align 8, !alias.scope !2043, !noalias !2034, !nonnull !14, !noundef !14
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i6.i.i.i.i.i, i64 noundef %.val.i5.i.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #42, !noalias !2044
  br label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h7c42ccfc1fff1c35E.exit7.i.i.i.i.i"

"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h7c42ccfc1fff1c35E.exit7.i.i.i.i.i": ; preds = %bb.r, %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h7c42ccfc1fff1c35E.exit.i.i.i.i.i"
  %i.ek = getelementptr inbounds nuw i8, ptr %i.j, i64 48
  call void @llvm.experimental.noalias.scope.decl(metadata !2045), !noalias !2039
  %i.el = getelementptr inbounds nuw i8, ptr %i.j, i64 56
  %.val.i8.i.i.i.i.i = load ptr, ptr %i.el, align 8, !alias.scope !2046, !noalias !2034, !nonnull !14, !noundef !14 ; 2 uses
  %i.em = getelementptr inbounds nuw i8, ptr %i.j, i64 64
  %.val1.i9.i.i.i.i.i = load i64, ptr %i.em, align 8, !alias.scope !2046, !noalias !2034, !noundef !14 ; 2 uses
  %i.en = icmp eq i64 %.val1.i9.i.i.i.i.i, 0
  br i1 %i.en, label %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hbe17f4167629f79fE.exit.i.i.i.i.i.i", label %.lr.ph.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i:                           ; preds = %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h7c42ccfc1fff1c35E.exit7.i.i.i.i.i", %.lr.ph.i.i.i.i.i.i.i.i
  %.sroa.0.07.i.i.i.i.i.i.i.i = phi i64 [ %i.ep, %.lr.ph.i.i.i.i.i.i.i.i ], [ 0, %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h7c42ccfc1fff1c35E.exit7.i.i.i.i.i" ] ; 2 uses
  %i.eo = getelementptr inbounds nuw [136 x i8], ptr %.val.i8.i.i.i.i.i, i64 %.sroa.0.07.i.i.i.i.i.i.i.i
  %i.ep = add nuw i64 %.sroa.0.07.i.i.i.i.i.i.i.i, 1 ; 2 uses
  call fastcc void @"_ZN4core3ptr46drop_in_place$LT$prometheus..proto..Metric$GT$17he18995900ba8ff64E"(ptr noalias noundef readonly align 8 dereferenceable(136) %i.eo), !noalias !2047
  %i.eq = icmp eq i64 %i.ep, %.val1.i9.i.i.i.i.i
  br i1 %i.eq, label %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hbe17f4167629f79fE.exit.i.i.i.i.i.i", label %.lr.ph.i.i.i.i.i.i.i.i

"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hbe17f4167629f79fE.exit.i.i.i.i.i.i": ; preds = %.lr.ph.i.i.i.i.i.i.i.i, %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h7c42ccfc1fff1c35E.exit7.i.i.i.i.i"
  %.val2.i.i.i.i.i.i = load i64, ptr %i.ek, align 8, !range !18, !alias.scope !2046, !noalias !2034, !noundef !14 ; 2 uses
  %i.er = icmp eq i64 %.val2.i.i.i.i.i.i, 0
  br i1 %i.er, label %"_ZN4core3ptr52drop_in_place$LT$prometheus..proto..MetricFamily$GT$17h59a553868dd65940E.exit.i.i.i.i", label %bb.s

bb.s:                                             ; preds = %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hbe17f4167629f79fE.exit.i.i.i.i.i.i"
  %i.es = mul nuw i64 %.val2.i.i.i.i.i.i, 136
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i8.i.i.i.i.i, i64 noundef %i.es, i64 noundef range(i64 1, -9223372036854775807) 8) #42, !noalias !2047
  br label %"_ZN4core3ptr52drop_in_place$LT$prometheus..proto..MetricFamily$GT$17h59a553868dd65940E.exit.i.i.i.i"

bb.t:                                             ; preds = %bb.n
  %.val.i.i.i.i.i = load i64, ptr %.sroa.0269.sroa.11.0..sroa_idx.i, align 8, !alias.scope !2048, !noalias !2026, !noundef !14 ; 2 uses
  %i.et = call i64 @llvm.uadd.sat.i64(i64 %.val.i.i.i.i.i, i64 1)
  %.sroa.0.0.i.i.i.i.i.i = call noundef i64 @llvm.umax.i64(i64 %i.et, i64 4) ; 3 uses
  %i.eu = mul i64 %.sroa.0.0.i.i.i.i.i.i, 80      ; 3 uses
  %or.cond.i.i.i.i.i.i.i.i = icmp ugt i64 %.val.i.i.i.i.i, 115292150460684696
  br i1 %or.cond.i.i.i.i.i.i.i.i, label %bb.v, label %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i.i, !prof !17

_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i.i: ; preds = %bb.t
  %i.ev = icmp eq i64 %i.eu, 0
  br i1 %i.ev, label %bb.w, label %bb.u

bb.u:                                             ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i.i
  call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #42, !noalias !2049
  %i.ew = call noundef align 8 ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef %i.eu, i64 noundef range(i64 1, 9) 8) #42, !noalias !2049 ; 2 uses
  %i.ex = icmp eq ptr %i.ew, null
  br i1 %i.ex, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u, %bb.t
  %.sroa.4.0.ph.i.i.i.i.i.i = phi i64 [ 8, %bb.u ], [ 0, %bb.t ]
  invoke void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef %.sroa.4.0.ph.i.i.i.i.i.i, i64 %i.eu, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @177) #45
          to label %.noexc.i.i.i.i.i unwind label %bb.p, !noalias !2050

.noexc.i.i.i.i.i:                                 ; preds = %bb.v
  unreachable

bb.w:                                             ; preds = %bb.u, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i.i
  %.sroa.10.0.i.i.i.i.i.i = phi ptr [ inttoptr (i64 8 to ptr), %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i.i ], [ %i.ew, %bb.u ] ; 3 uses
  %.sroa.4.0.i.i.i.i.i.i = phi i64 [ 0, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i.i ], [ %.sroa.0.0.i.i.i.i.i.i, %bb.u ] ; 2 uses
  %i.ey = icmp ule i64 %.sroa.0.0.i.i.i.i.i.i, %.sroa.4.0.i.i.i.i.i.i
  call void @llvm.assume(i1 %i.ey)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %.sroa.10.0.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(80) %i.j, i64 80, i1 false), !noalias !2050
  store i64 %.sroa.4.0.i.i.i.i.i.i, ptr %i.k, align 8, !noalias !2034
  %.sroa.4.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.k, i64 8 ; 2 uses
  store ptr %.sroa.10.0.i.i.i.i.i.i, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i, align 8, !noalias !2034
  %.sroa.6.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.k, i64 16 ; 2 uses
  store i64 1, ptr %.sroa.6.0..sroa_idx.i.i.i.i.i, align 8, !noalias !2034
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !2034
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.i, ptr noundef nonnull align 8 dereferenceable(80) %i.l, i64 80, i1 false), !noalias !2051
  call void @llvm.experimental.noalias.scope.decl(metadata !2052)
  call void @llvm.experimental.noalias.scope.decl(metadata !2053)
  call void @llvm.experimental.noalias.scope.decl(metadata !2054)
  call void @llvm.experimental.noalias.scope.decl(metadata !2055)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !2056
  %i.ez = getelementptr inbounds nuw i8, ptr %i.i, i64 64
  br label %bb.x

bb.x:                                             ; preds = %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h63cd97e5fff1cf28E.exit.i.i.i.i.i.i.i", %bb.w
  %i.fa = phi ptr [ %i.fh, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h63cd97e5fff1cf28E.exit.i.i.i.i.i.i.i" ], [ %.sroa.10.0.i.i.i.i.i.i, %bb.w ]
  %i.fb = phi i64 [ %i.fj, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h63cd97e5fff1cf28E.exit.i.i.i.i.i.i.i" ], [ 1, %bb.w ] ; 5 uses
  invoke fastcc void @"_ZN102_$LT$core..iter..adapters..map..Map$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h9f2e54504fe62546E"(ptr noalias noundef align 8 captures(address) dereferenceable(80) %i.h, ptr noalias noundef nonnull align 8 dereferenceable(80) %i.i)
          to label %bb.aa unwind label %bb.z, !noalias !2057

bb.y:                                             ; preds = %bb.ac, %bb.z
  %.pn.i.i.i.i.i.i.i = phi { ptr, i32 } [ %i.fk, %bb.ac ], [ %i.fc, %bb.z ]
  invoke fastcc void @"_ZN4core3ptr124drop_in_place$LT$alloc..collections..btree..map..IntoIter$LT$alloc..string..String$C$prometheus..proto..MetricFamily$GT$$GT$17h1f7e07d840e921f7E"(ptr noalias noundef nonnull align 8 dereferenceable(80) %i.i)
          to label %.body.i.i.i.i.i unwind label %bb.ae, !noalias !2057

bb.z:                                             ; preds = %bb.x
  %i.fc = landingpad { ptr, i32 }
          cleanup
  br label %bb.y

bb.aa:                                            ; preds = %bb.x
  %i.fd = load i64, ptr %i.h, align 8, !range !16, !noalias !2058, !noundef !14
  %.not.i.i.i.i.i.i55.i = icmp eq i64 %i.fd, -9223372036854775808
  br i1 %.not.i.i.i.i.i.i55.i, label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$16extend_desugared17h83dfdb95e9b3ba7dE.exit.i.i.i.i.i.i", label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.fe = icmp samesign ult i64 %i.fb, 115292150460684698
  call void @llvm.assume(i1 %i.fe)
  %i.ff = load i64, ptr %i.k, align 8, !range !18, !alias.scope !2059, !noalias !2034, !noundef !14
  %i.fg = icmp eq i64 %i.fb, %i.ff
  br i1 %i.fg, label %bb.ad, label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h63cd97e5fff1cf28E.exit.i.i.i.i.i.i.i"

"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h63cd97e5fff1cf28E.exit.i.i.i.i.i.i.i": ; preds = %"._ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h63cd97e5fff1cf28E.exit.i.i_crit_edge.i.i.i.i.i", %bb.ab
  %i.fh = phi ptr [ %.pre.i.i.i.i.i, %"._ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h63cd97e5fff1cf28E.exit.i.i_crit_edge.i.i.i.i.i" ], [ %i.fa, %bb.ab ] ; 2 uses
  %i.fi = getelementptr inbounds nuw [80 x i8], ptr %i.fh, i64 %i.fb
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.fi, ptr noundef nonnull align 8 dereferenceable(80) %i.h, i64 80, i1 false), !noalias !2060
  %i.fj = add nuw nsw i64 %i.fb, 1                ; 2 uses
  store i64 %i.fj, ptr %.sroa.6.0..sroa_idx.i.i.i.i.i, align 8, !alias.scope !2059, !noalias !2034
  br label %bb.x

bb.ac:                                            ; preds = %bb.ad
  %i.fk = landingpad { ptr, i32 }
          cleanup
  call fastcc void @"_ZN4core3ptr52drop_in_place$LT$prometheus..proto..MetricFamily$GT$17h59a553868dd65940E"(ptr noalias noundef align 8 dereferenceable(80) %i.h) #46, !noalias !2060
  br label %bb.y

bb.ad:                                            ; preds = %bb.ab
  %.val.i.i.i.i.i.i.i = load i64, ptr %i.ez, align 8, !alias.scope !2061, !noalias !2034, !noundef !14
  %i.fl = call i64 @llvm.uadd.sat.i64(i64 %.val.i.i.i.i.i.i.i, i64 1)
  invoke fastcc void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$7reserve21do_reserve_and_handle17heeecba0c58aac701E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.k, i64 noundef %i.fb, i64 noundef %i.fl, i64 noundef 8, i64 noundef 80)
          to label %"._ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h63cd97e5fff1cf28E.exit.i.i_crit_edge.i.i.i.i.i" unwind label %bb.ac, !noalias !2062

"._ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h63cd97e5fff1cf28E.exit.i.i_crit_edge.i.i.i.i.i": ; preds = %bb.ad
  %.pre.i.i.i.i.i = load ptr, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i, align 8, !alias.scope !2059, !noalias !2034
  br label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h63cd97e5fff1cf28E.exit.i.i.i.i.i.i.i"

bb.ae:                                            ; preds = %bb.y
  %i.fm = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #47, !noalias !2060
  unreachable

"_ZN5alloc3vec16Vec$LT$T$C$A$GT$16extend_desugared17h83dfdb95e9b3ba7dE.exit.i.i.i.i.i.i": ; preds = %bb.aa
  invoke fastcc void @"_ZN4core3ptr124drop_in_place$LT$alloc..collections..btree..map..IntoIter$LT$alloc..string..String$C$prometheus..proto..MetricFamily$GT$$GT$17h1f7e07d840e921f7E"(ptr noalias noundef nonnull align 8 dereferenceable(80) %i.i)
          to label %bb.ag unwind label %bb.af, !noalias !2057

bb.af:                                            ; preds = %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$16extend_desugared17h83dfdb95e9b3ba7dE.exit.i.i.i.i.i.i"
  %i.fn = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i.i.i.i

.body.i.i.i.i.i:                                  ; preds = %bb.af, %bb.y
  %eh.lpad-body.i.i.i.i.i = phi { ptr, i32 } [ %i.fn, %bb.af ], [ %.pn.i.i.i.i.i.i.i, %bb.y ]
  call fastcc void @"_ZN4core3ptr75drop_in_place$LT$alloc..vec..Vec$LT$prometheus..proto..MetricFamily$GT$$GT$17h9ea4378102ccfcf3E"(ptr noalias noundef align 8 dereferenceable(24) %i.k) #46, !noalias !2050
  br label %.body

bb.ag:                                            ; preds = %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$16extend_desugared17h83dfdb95e9b3ba7dE.exit.i.i.i.i.i.i"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !2056
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !2034
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.k, i64 24, i1 false), !noalias !2063
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !2034
  br label %bb.eh

bb.ah:                                            ; preds = %"_ZN4core3ptr52drop_in_place$LT$prometheus..proto..MetricFamily$GT$17h59a553868dd65940E.exit.i.i.i.i"
  %i.fo = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #47, !noalias !2050
  unreachable

"_ZN4core3ptr52drop_in_place$LT$prometheus..proto..MetricFamily$GT$17h59a553868dd65940E.exit.i.i.i.i": ; preds = %bb.s, %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hbe17f4167629f79fE.exit.i.i.i.i.i.i", %bb.m
  %.pn.ph.i.i.i.i.i = phi { ptr, i32 } [ %i.ea, %bb.m ], [ %i.ee, %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hbe17f4167629f79fE.exit.i.i.i.i.i.i" ], [ %i.ee, %bb.s ]
  invoke fastcc void @"_ZN4core3ptr124drop_in_place$LT$alloc..collections..btree..map..IntoIter$LT$alloc..string..String$C$prometheus..proto..MetricFamily$GT$$GT$17h1f7e07d840e921f7E"(ptr noalias noundef nonnull align 8 dereferenceable(80) %i.l)
          to label %.body unwind label %bb.ah, !noalias !2035

bb.ai:                                            ; preds = %.loopexit583.i
  %.sroa.0.0.copyload.i57.i = load i64, ptr %i.q, align 8, !alias.scope !2064, !noalias !2013 ; 4 uses
  %.sroa.4.0.copyload.i.i = load ptr, ptr %.sroa.4.0..sroa_idx.i58.i, align 8, !alias.scope !2064, !noalias !2013, !nonnull !14, !noundef !14 ; 5 uses
  %.sroa.5.0.copyload.i60.i = load i64, ptr %.sroa.5.0..sroa_idx.i59.i, align 8, !alias.scope !2064, !noalias !2013 ; 3 uses
  %i.fp = icmp ult i64 %.sroa.5.0.copyload.i60.i, 115292150460684698
  call void @llvm.assume(i1 %i.fp)
  %.idx.i = mul nuw nsw i64 %.sroa.5.0.copyload.i60.i, 80
  %i.fq = getelementptr inbounds nuw i8, ptr %.sroa.4.0.copyload.i.i, i64 %.idx.i ; 4 uses
  %i.fr = icmp eq i64 %.sroa.5.0.copyload.i60.i, 0
  br i1 %i.fr, label %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h076703637467af9cE.exit.thread.i", label %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h076703637467af9cE.exit.i"

"_ZN4core3ptr52drop_in_place$LT$prometheus..proto..MetricFamily$GT$17h59a553868dd65940E.exit": ; preds = %bb.ed, %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hbe17f4167629f79fE.exit.i.i", %bb.di, %"_ZN4core3ptr52drop_in_place$LT$prometheus..proto..MetricFamily$GT$17h59a553868dd65940E.exit130.i", %bb.da, %"_ZN4core3ptr52drop_in_place$LT$prometheus..proto..MetricFamily$GT$17h59a553868dd65940E.exit143.i", %bb.cc, %bb.cb, %bb.bv, %.body148.i
  %.sroa.6.6 = phi i64 [ %.sroa.6.3, %bb.da ], [ %.sroa.6.3, %"_ZN4core3ptr52drop_in_place$LT$prometheus..proto..MetricFamily$GT$17h59a553868dd65940E.exit130.i" ], [ %.sroa.6.3, %bb.di ], [ %.sroa.6.3, %.body148.i ], [ %.sroa.6.3, %bb.bv ], [ %i.kt, %bb.cb ], [ %i.kt, %bb.cc ], [ %.sroa.6.3, %"_ZN4core3ptr52drop_in_place$LT$prometheus..proto..MetricFamily$GT$17h59a553868dd65940E.exit143.i" ], [ %.sroa.6.3, %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hbe17f4167629f79fE.exit.i.i" ], [ %.sroa.6.3, %bb.ed ] ; 2 uses
  %.sroa.010.6 = phi ptr [ %.sroa.010.3, %bb.da ], [ %.sroa.010.3, %"_ZN4core3ptr52drop_in_place$LT$prometheus..proto..MetricFamily$GT$17h59a553868dd65940E.exit130.i" ], [ %.sroa.010.3, %bb.di ], [ %.sroa.010.3, %.body148.i ], [ %.sroa.010.3, %bb.bv ], [ %i.kn, %bb.cb ], [ %i.kn, %bb.cc ], [ %.sroa.010.3, %"_ZN4core3ptr52drop_in_place$LT$prometheus..proto..MetricFamily$GT$17h59a553868dd65940E.exit143.i" ], [ %.sroa.010.3, %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hbe17f4167629f79fE.exit.i.i" ], [ %.sroa.010.3, %bb.ed ] ; 2 uses
  %.pn46.i = phi { ptr, i32 } [ %lpad.loopexit.split-lp1481, %bb.da ], [ %i.sy, %"_ZN4core3ptr52drop_in_place$LT$prometheus..proto..MetricFamily$GT$17h59a553868dd65940E.exit130.i" ], [ %i.sy, %bb.di ], [ %eh.lpad-body149.i, %.body148.i ], [ %eh.lpad-body149.i, %bb.bv ], [ %i.kx, %bb.cb ], [ %i.kx, %bb.cc ], [ %lpad.loopexit.split-lp1481, %"_ZN4core3ptr52drop_in_place$LT$prometheus..proto..MetricFamily$GT$17h59a553868dd65940E.exit143.i" ], [ %.pn534.i, %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hbe17f4167629f79fE.exit.i.i" ], [ %.pn534.i, %bb.ed ] ; 2 uses
  %i.fs = ptrtoint ptr %i.fq to i64
  %i.ft = ptrtoint ptr %i.gb to i64
  %i.fu = sub nuw i64 %i.fs, %i.ft
  %i.fv = udiv exact i64 %i.fu, 80
  call fastcc void @"_ZN4core3ptr62drop_in_place$LT$$u5b$prometheus..proto..MetricFamily$u5d$$GT$17h369642af7fe39a94E"(ptr noalias noundef nonnull align 8 %i.gb, i64 noundef %i.fv), !noalias !2065
  %i.fw = icmp eq i64 %.sroa.0.0.copyload.i57.i, 0
  br i1 %i.fw, label %.thread.i, label %bb.aj

bb.aj:                                            ; preds = %"_ZN4core3ptr52drop_in_place$LT$prometheus..proto..MetricFamily$GT$17h59a553868dd65940E.exit"
  %i.fx = mul nuw i64 %.sroa.0.0.copyload.i57.i, 80
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.4.0.copyload.i.i, i64 noundef %i.fx, i64 noundef range(i64 1, -9223372036854775807) 8) #42, !noalias !2065
  br label %.thread.i

"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h076703637467af9cE.exit.i": ; preds = %bb.ai, %.backedge.i
  %.sroa.9.3 = phi i64 [ %.sroa.9.4, %.backedge.i ], [ %.sroa.9.0, %bb.ai ] ; 7 uses
  %.sroa.6.3 = phi i64 [ %.sroa.6.4, %.backedge.i ], [ %.sroa.6.0, %bb.ai ] ; 17 uses
  %.sroa.010.3 = phi ptr [ %.sroa.010.4, %.backedge.i ], [ %.sroa.010.0, %bb.ai ] ; 17 uses
  %i.fy = phi i64 [ %i.gy, %.backedge.i ], [ %i.av, %bb.ai ] ; 6 uses
  %i.fz = phi i64 [ %i.gz, %.backedge.i ], [ %i.aw, %bb.ai ] ; 12 uses
  %i.ga = phi ptr [ %i.ha, %.backedge.i ], [ %i.ax, %bb.ai ] ; 14 uses
  %.sroa.5226.0796.i = phi ptr [ %i.gb, %.backedge.i ], [ %.sroa.4.0.copyload.i.i, %bb.ai ] ; 3 uses
  %i.gb = getelementptr inbounds nuw i8, ptr %.sroa.5226.0796.i, i64 80 ; 5 uses
  %.sroa.0231.0.copyload232.i = load i64, ptr %.sroa.5226.0796.i, align 8, !noalias !2066 ; 8 uses
  %.not43.i = icmp eq i64 %.sroa.0231.0.copyload232.i, -9223372036854775808
  br i1 %.not43.i, label %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h076703637467af9cE.exit.thread.i.loopexit", label %bb.ak

bb.ak:                                            ; preds = %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h076703637467af9cE.exit.i"
  %.sroa.8233.0..sroa.5226.8..sroa_idx.i = getelementptr inbounds nuw i8, ptr %.sroa.5226.0796.i, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p), !noalias !2013
  store i64 %.sroa.0231.0.copyload232.i, ptr %i.p, align 8, !noalias !2013
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %.sroa.8233.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(72) %.sroa.8233.0..sroa.5226.8..sroa_idx.i, i64 72, i1 false), !noalias !2011
  %i.gc = load i64, ptr %i.am, align 8, !noalias !2013, !noundef !14 ; 5 uses
  %i.gd = icmp eq i64 %i.gc, 0
  br i1 %i.gd, label %bb.am, label %bb.aq

"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h076703637467af9cE.exit.thread.i.loopexit": ; preds = %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h076703637467af9cE.exit.i", %.backedge.i
  %.sroa.9.5.ph = phi i64 [ %.sroa.9.3, %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h076703637467af9cE.exit.i" ], [ %.sroa.9.4, %.backedge.i ]
  %.sroa.6.5.ph = phi i64 [ %.sroa.6.3, %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h076703637467af9cE.exit.i" ], [ %.sroa.6.4, %.backedge.i ]
  %.sroa.010.5.ph = phi ptr [ %.sroa.010.3, %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h076703637467af9cE.exit.i" ], [ %.sroa.010.4, %.backedge.i ]
  %.ph = phi i64 [ %i.fy, %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h076703637467af9cE.exit.i" ], [ %i.gy, %.backedge.i ]
  %.ph432 = phi i64 [ %i.fz, %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h076703637467af9cE.exit.i" ], [ %i.gz, %.backedge.i ]
  %.ph433 = phi ptr [ %i.ga, %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h076703637467af9cE.exit.i" ], [ %i.ha, %.backedge.i ]
  %.sroa.5226.1522.i.ph = phi ptr [ %i.gb, %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h076703637467af9cE.exit.i" ], [ %i.fq, %.backedge.i ]
  %i.ge = freeze ptr %.ph433
  br label %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h076703637467af9cE.exit.thread.i"

"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h076703637467af9cE.exit.thread.i": ; preds = %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h076703637467af9cE.exit.thread.i.loopexit", %bb.ai
  %.sroa.9.5 = phi i64 [ %.sroa.9.0, %bb.ai ], [ %.sroa.9.5.ph, %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h076703637467af9cE.exit.thread.i.loopexit" ] ; 2 uses
  %.sroa.6.5 = phi i64 [ %.sroa.6.0, %bb.ai ], [ %.sroa.6.5.ph, %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h076703637467af9cE.exit.thread.i.loopexit" ] ; 2 uses
  %.sroa.010.5 = phi ptr [ %.sroa.010.0, %bb.ai ], [ %.sroa.010.5.ph, %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h076703637467af9cE.exit.thread.i.loopexit" ] ; 2 uses
  %i.gf = phi i64 [ %i.av, %bb.ai ], [ %.ph, %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h076703637467af9cE.exit.thread.i.loopexit" ] ; 4 uses
  %i.gg = phi i64 [ %i.aw, %bb.ai ], [ %.ph432, %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h076703637467af9cE.exit.thread.i.loopexit" ] ; 3 uses
  %.fr.i = phi ptr [ %i.ax, %bb.ai ], [ %i.ge, %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h076703637467af9cE.exit.thread.i.loopexit" ] ; 4 uses
  %.sroa.5226.1522.i = phi ptr [ %.sroa.4.0.copyload.i.i, %bb.ai ], [ %.sroa.5226.1522.i.ph, %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h076703637467af9cE.exit.thread.i.loopexit" ] ; 2 uses
end_hunk_1
