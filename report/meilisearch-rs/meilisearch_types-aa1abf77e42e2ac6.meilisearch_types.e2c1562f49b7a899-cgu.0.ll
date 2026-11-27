Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/meilisearch-rs/original/meilisearch_types-aa1abf77e42e2ac6.meilisearch_types.e2c1562f49b7a899-cgu.0?download=true
inline.NumInlined: 11037
inline.NumDeleted: 4505
loop-unroll.NumCompletelyUnrolled: 77
loop-unroll.NumRuntimeUnrolled: 226
loop-unroll.NumUnrolled: 306
begin_hunk_0_@"_ZN122_$LT$meilisearch_types..task_view..DetailsView$u20$as$u20$core..convert..From$LT$meilisearch_types..tasks..Details$GT$$GT$4from17ha09003cebeb22cbfE":bb.a
  %.sroa.41562.0.copyload = load ptr, ptr %.sroa.489.0..sroa_idx, align 8, !alias.scope !4112
  %.sroa.51563.0.copyload = load i64, ptr %i.tf, align 8, !alias.scope !4112
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ah)
  br label %bb.ba

bb.bc:                                            ; preds = %bb.ba
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ae)
  store i64 %i.gh, ptr %i.ae, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ad)
  %i.uo = invoke { double, i8 } @"_ZN9byte_unit4byte8adjusted39_$LT$impl$u20$byte_unit..byte..Byte$GT$20get_appropriate_unit17h021fe075e9877c3aE"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.ae, i8 noundef 2)
          to label %bb.bf unwind label %bb.be     ; 2 uses

"_ZN119_$LT$alloc..collections..btree..map..BTreeMap$LT$K$C$V$C$A$GT$$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17h2a998fe52ded0a26E.exit": ; preds = %bb.ba, %bb.bk
  %.sroa.71329.0 = phi i64 [ %.sroa.51566.0.copyload, %bb.bk ], [ undef, %bb.ba ]
  %.sroa.61326.0 = phi ptr [ %.sroa.41565.0.copyload, %bb.bk ], [ undef, %bb.ba ] ; 3 uses
  %.sroa.01324.0 = phi i64 [ %.sroa.01564.0.copyload, %bb.bk ], [ -9223372036854775808, %bb.ba ] ; 3 uses
  %.sroa.01353.0.copyload = load ptr, ptr %i.aq, align 8 ; 3 uses
  %.sroa.41354.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aq, i64 8
  %.sroa.41354.0.copyload = load i64, ptr %.sroa.41354.0..sroa_idx, align 8
  %.sroa.51355.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aq, i64 16
  %.sroa.51355.0.copyload = load i64, ptr %.sroa.51355.0..sroa_idx, align 8
  %.not.i = icmp ne ptr %.sroa.01353.0.copyload, null ; 3 uses
  %.sroa.101342.0 = select i1 %.not.i, i64 %.sroa.41354.0.copyload, i64 undef ; 2 uses
  %.sink23.i = zext i1 %.not.i to i64             ; 2 uses
  %.sroa.7.0.copyload.sink.i = select i1 %.not.i, i64 %.sroa.51355.0.copyload, i64 0
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t), !noalias !4113
  call void @llvm.experimental.noalias.scope.decl(metadata !4114)
  call void @llvm.experimental.noalias.scope.decl(metadata !4115)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s), !noalias !4116
  store i64 %.sink23.i, ptr %i.s, align 8, !alias.scope !4117, !noalias !4118
  %.sroa.41345.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  store ptr null, ptr %.sroa.41345.0..sroa_idx, align 8, !alias.scope !4117, !noalias !4118
  %.sroa.51346.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  store ptr %.sroa.01353.0.copyload, ptr %.sroa.51346.0..sroa_idx, align 8, !alias.scope !4117, !noalias !4118
  %.sroa.61347.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.s, i64 24
  store i64 %.sroa.101342.0, ptr %.sroa.61347.0..sroa_idx, align 8, !alias.scope !4117, !noalias !4118
  %.sroa.71348.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.s, i64 32
  store i64 %.sink23.i, ptr %.sroa.71348.0..sroa_idx, align 8, !alias.scope !4117, !noalias !4118
  %.sroa.81349.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.s, i64 40
  store ptr null, ptr %.sroa.81349.0..sroa_idx, align 8, !alias.scope !4117, !noalias !4118
  %.sroa.91350.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.s, i64 48
  store ptr %.sroa.01353.0.copyload, ptr %.sroa.91350.0..sroa_idx, align 8, !alias.scope !4117, !noalias !4118
  %.sroa.101351.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.s, i64 56
  store i64 %.sroa.101342.0, ptr %.sroa.101351.0..sroa_idx, align 8, !alias.scope !4117, !noalias !4118
  %.sroa.111352.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.s, i64 64 ; 2 uses
  store i64 %.sroa.7.0.copyload.sink.i, ptr %.sroa.111352.0..sroa_idx, align 8, !alias.scope !4117, !noalias !4118
  call void @llvm.experimental.noalias.scope.decl(metadata !4119)
  call void @llvm.experimental.noalias.scope.decl(metadata !4120)
  call void @llvm.experimental.noalias.scope.decl(metadata !4121)
  call void @llvm.experimental.noalias.scope.decl(metadata !4122)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q), !noalias !4123
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r), !noalias !4124
  invoke fastcc void @"_ZN102_$LT$core..iter..adapters..map..Map$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h97a53cc9b4aca3f7E"(ptr noalias noundef align 8 captures(address) dereferenceable(120) %i.q, ptr noalias noundef nonnull align 8 dereferenceable(72) %i.s)
          to label %bb.bo unwind label %bb.bn, !noalias !4125

.body797:                                         ; preds = %bb.bm, %.body810, %.body810, %bb.bg, %bb.bh, %bb.be
  %.sroa.048.1 = phi i1 [ true, %bb.bg ], [ true, %bb.be ], [ true, %bb.bh ], [ false, %.body810 ], [ false, %.body810 ], [ false, %bb.bm ] ; 3 uses
  %.pn = phi { ptr, i32 } [ %i.uw, %bb.bg ], [ %i.up, %bb.be ], [ %i.uw, %bb.bh ], [ %eh.lpad-body811, %.body810 ], [ %eh.lpad-body811, %.body810 ], [ %eh.lpad-body811, %bb.bm ] ; 3 uses
  switch i64 %.sroa.01316.0, label %bb.bd [
    i64 -9223372036854775808, label %.body785
    i64 0, label %.body785
  ]

bb.bd:                                            ; preds = %.body797
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.61318.0) ]
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.61318.0, i64 noundef %.sroa.01316.0, i64 noundef range(i64 1, -9223372036854775807) 1) #52, !noalias !4126
  br label %.body785

bb.be:                                            ; preds = %bb.bc
  %i.up = landingpad { ptr, i32 }
          cleanup
  br label %.body797

bb.bf:                                            ; preds = %bb.bc
  %i.uq = extractvalue { double, i8 } %i.uo, 0
  %i.ur = extractvalue { double, i8 } %i.uo, 1
  store double %i.uq, ptr %i.ad, align 8
  %i.us = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  store i8 %i.ur, ptr %i.us, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v), !noalias !4127
  store i64 0, ptr %i.v, align 8, !noalias !4127
  %.sroa.42.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.v, i64 8 ; 3 uses
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.42.0..sroa_idx.i, align 8, !noalias !4127
  %.sroa.53.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.v, i64 16 ; 2 uses
  store i64 0, ptr %.sroa.53.0..sroa_idx.i, align 8, !noalias !4127
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u), !noalias !4127
  %i.ut = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  store i32 -536870880, ptr %i.ut, align 8, !noalias !4127
  %.sroa.4.0..sroa_idx.i791 = getelementptr inbounds nuw i8, ptr %i.u, i64 20
  store i16 0, ptr %.sroa.4.0..sroa_idx.i791, align 4, !noalias !4127
  %.sroa.5.0..sroa_idx.i792 = getelementptr inbounds nuw i8, ptr %i.u, i64 22
  store i16 0, ptr %.sroa.5.0..sroa_idx.i792, align 2, !noalias !4127
  store ptr %i.v, ptr %i.u, align 8, !noalias !4127
  %i.uu = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  store ptr @1053, ptr %i.uu, align 8, !noalias !4127
  %i.uv = invoke noundef zeroext i1 @"_ZN78_$LT$byte_unit..byte..adjusted..AdjustedByte$u20$as$u20$core..fmt..Display$GT$3fmt17h67a053cc523cb52dE"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.ad, ptr noalias noundef nonnull align 8 dereferenceable(24) %i.u)
          to label %bb.bi unwind label %bb.bg, !noalias !4128

bb.bg:                                            ; preds = %bb.bj, %bb.bf
  %i.uw = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !4129)
  %.val.i.i793 = load i64, ptr %i.v, align 8, !alias.scope !4129, !noalias !4127 ; 2 uses
  %i.ux = icmp eq i64 %.val.i.i793, 0
  br i1 %i.ux, label %.body797, label %bb.bh

bb.bh:                                            ; preds = %bb.bg
  %.val1.i.i794 = load ptr, ptr %.sroa.42.0..sroa_idx.i, align 8, !alias.scope !4129, !noalias !4127, !nonnull !23, !noundef !23
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i794, i64 noundef %.val.i.i793, i64 noundef range(i64 1, -9223372036854775807) 1) #52, !noalias !4130
  br label %.body797

bb.bi:                                            ; preds = %bb.bf
  br i1 %i.uv, label %bb.bj, label %bb.bk, !prof !25

bb.bj:                                            ; preds = %bb.bi
  invoke void @_ZN4core6result13unwrap_failed17h0501379eaec3e720E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @1054, i64 noundef 55, ptr noundef nonnull align 1 %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @1075, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1056) #57
          to label %.noexc.i796 unwind label %bb.bg, !noalias !4128

.noexc.i796:                                      ; preds = %bb.bj
  unreachable

bb.bk:                                            ; preds = %bb.bi
  %.sroa.01564.0.copyload = load i64, ptr %i.v, align 8, !noalias !4131
  %.sroa.41565.0.copyload = load ptr, ptr %.sroa.42.0..sroa_idx.i, align 8, !noalias !4131
  %.sroa.51566.0.copyload = load i64, ptr %.sroa.53.0..sroa_idx.i, align 8, !noalias !4131
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u), !noalias !4127
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v), !noalias !4127
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ad)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ae)
  br label %"_ZN119_$LT$alloc..collections..btree..map..BTreeMap$LT$K$C$V$C$A$GT$$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17h2a998fe52ded0a26E.exit"

bb.bl:                                            ; preds = %.noexc20.i.i.i.i.invoke, %.noexc5.i.i.i, %bb.cf, %_ZN4core4iter6traits8iterator8Iterator7collect17h6443ccb2e0accf32E.exit.thread.i.i
  %i.uy = landingpad { ptr, i32 }
          cleanup
  br label %.body810

.body810:                                         ; preds = %.body.i.i.i.i.i.i, %"_ZN4core3ptr105drop_in_place$LT$$LP$alloc..string..String$C$meilisearch_types..tasks..DetailsExportIndexSettings$RP$$GT$17h6d784526f7e67e61E.exit.i.i.i.i.i", %.critedge.i.i.i.i, %bb.dw, %bb.dx, %bb.bl
  %eh.lpad-body811 = phi { ptr, i32 } [ %i.uy, %bb.bl ], [ %.pn.ph.i.i.i.i.i.i, %"_ZN4core3ptr105drop_in_place$LT$$LP$alloc..string..String$C$meilisearch_types..tasks..DetailsExportIndexSettings$RP$$GT$17h6d784526f7e67e61E.exit.i.i.i.i.i" ], [ %eh.lpad-body.i.i.i.i.i.i, %.body.i.i.i.i.i.i ], [ %.pn.i.i.i.i, %.critedge.i.i.i.i ], [ %lpad.thr_comm.split-lp.i.i, %bb.dx ], [ %i.afk, %bb.dw ] ; 3 uses
  switch i64 %.sroa.01324.0, label %bb.bm [
    i64 -9223372036854775808, label %.body797
    i64 0, label %.body797
  ]

bb.bm:                                            ; preds = %.body810
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.61326.0) ]
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.61326.0, i64 noundef %.sroa.01324.0, i64 noundef range(i64 1, -9223372036854775807) 1) #52, !noalias !4132
  br label %.body797

bb.bn:                                            ; preds = %"_ZN119_$LT$alloc..collections..btree..map..BTreeMap$LT$K$C$V$C$A$GT$$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17h2a998fe52ded0a26E.exit"
  %i.uz = landingpad { ptr, i32 }
          cleanup
  br label %"_ZN4core3ptr105drop_in_place$LT$$LP$alloc..string..String$C$meilisearch_types..tasks..DetailsExportIndexSettings$RP$$GT$17h6d784526f7e67e61E.exit.i.i.i.i.i"

bb.bo:                                            ; preds = %"_ZN119_$LT$alloc..collections..btree..map..BTreeMap$LT$K$C$V$C$A$GT$$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17h2a998fe52ded0a26E.exit"
  %i.va = getelementptr inbounds nuw i8, ptr %i.q, i64 24
  %i.vb = load i64, ptr %i.va, align 8, !range !38, !noalias !4124, !noundef !23
  %.not.i.i.i.i.i.i = icmp eq i64 %i.vb, 2
  br i1 %.not.i.i.i.i.i.i, label %_ZN4core4iter6traits8iterator8Iterator7collect17h6443ccb2e0accf32E.exit.thread.i.i, label %bb.bs

_ZN4core4iter6traits8iterator8Iterator7collect17h6443ccb2e0accf32E.exit.thread.i.i: ; preds = %bb.bo
  store i64 0, ptr %i.t, align 8, !alias.scope !4133, !noalias !4113
  %i.vc = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %i.vc, align 8, !alias.scope !4133, !noalias !4113
  %i.vd = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  store i64 0, ptr %i.vd, align 8, !alias.scope !4133, !noalias !4113
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !noalias !4124
  invoke fastcc void @"_ZN4core3ptr177drop_in_place$LT$alloc..collections..btree..map..IntoIter$LT$meilisearch_types..index_uid_pattern..IndexUidPattern$C$meilisearch_types..tasks..DetailsExportIndexSettings$GT$$GT$17he29f386f39ee8497E"(ptr noalias noundef nonnull align 8 dereferenceable(72) %i.s)
          to label %.noexc809 unwind label %bb.bl, !noalias !4125

.noexc809:                                        ; preds = %_ZN4core4iter6traits8iterator8Iterator7collect17h6443ccb2e0accf32E.exit.thread.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !noalias !4123
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !noalias !4116
  br label %bb.cf

bb.bp:                                            ; preds = %bb.bt
  %i.ve = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !4134)
  call void @llvm.experimental.noalias.scope.decl(metadata !4135), !noalias !4136
  %.val.i.i.i.i.i.i.i806 = load i64, ptr %i.q, align 8, !alias.scope !4137, !noalias !4124 ; 2 uses
  %i.vf = icmp eq i64 %.val.i.i.i.i.i.i.i806, 0
  br i1 %i.vf, label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17hfb8d17e84375b72dE.exit.i.i.i.i.i.i808", label %bb.bq

bb.bq:                                            ; preds = %bb.bp
  %i.vg = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %.val1.i.i.i.i.i.i.i807 = load ptr, ptr %i.vg, align 8, !alias.scope !4137, !noalias !4124, !nonnull !23, !noundef !23
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i.i.i.i.i807, i64 noundef %.val.i.i.i.i.i.i.i806, i64 noundef range(i64 1, -9223372036854775807) 1) #52, !noalias !4138
  br label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17hfb8d17e84375b72dE.exit.i.i.i.i.i.i808"

"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17hfb8d17e84375b72dE.exit.i.i.i.i.i.i808": ; preds = %bb.bq, %bb.bp
  %i.vh = getelementptr inbounds nuw i8, ptr %i.q, i64 40 ; 2 uses
  %i.vi = load i64, ptr %i.vh, align 8, !range !36, !alias.scope !4139, !noalias !4124, !noundef !23
  %i.vj = icmp eq i64 %i.vi, -9223372036854775803
  br i1 %i.vj, label %"_ZN4core3ptr105drop_in_place$LT$$LP$alloc..string..String$C$meilisearch_types..tasks..DetailsExportIndexSettings$RP$$GT$17h6d784526f7e67e61E.exit.i.i.i.i.i", label %bb.br

bb.br:                                            ; preds = %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17hfb8d17e84375b72dE.exit.i.i.i.i.i.i808"
  invoke fastcc void @"_ZN4core3ptr45drop_in_place$LT$serde_json..value..Value$GT$17h2555f1380cedc520E"(ptr noalias noundef nonnull readonly align 8 dereferenceable(80) %i.vh)
          to label %"_ZN4core3ptr105drop_in_place$LT$$LP$alloc..string..String$C$meilisearch_types..tasks..DetailsExportIndexSettings$RP$$GT$17h6d784526f7e67e61E.exit.i.i.i.i.i" unwind label %bb.ce, !noalias !4124

bb.bs:                                            ; preds = %bb.bo
  %.val.i.i.i.i.i.i = load i64, ptr %.sroa.111352.0..sroa_idx, align 8, !alias.scope !4140, !noalias !4116, !noundef !23 ; 2 uses
  %i.vk = call i64 @llvm.uadd.sat.i64(i64 %.val.i.i.i.i.i.i, i64 1)
  %.sroa.0.0.i.i.i.i.i.i.i = call noundef i64 @llvm.umax.i64(i64 %i.vk, i64 4) ; 3 uses
  %i.vl = mul i64 %.sroa.0.0.i.i.i.i.i.i.i, 120   ; 3 uses
  %or.cond.i.i.i.i.i.i.i.i.i801 = icmp ugt i64 %.val.i.i.i.i.i.i, 76861433640456464
  br i1 %or.cond.i.i.i.i.i.i.i.i.i801, label %bb.bt, label %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i.i.i, !prof !32

_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i.i.i: ; preds = %bb.bs
  %i.vm = icmp eq i64 %i.vl, 0
  br i1 %i.vm, label %bb.bu, label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h2c5e185936086779E.exit.i.i.i.i.i.i.i.i"

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h2c5e185936086779E.exit.i.i.i.i.i.i.i.i": ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i.i.i
  call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #52, !noalias !4141
  %i.vn = call noundef align 8 ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef %i.vl, i64 noundef range(i64 1, 9) 8) #52, !noalias !4141 ; 2 uses
  %i.vo = icmp eq ptr %i.vn, null
  br i1 %i.vo, label %bb.bt, label %bb.bu

bb.bt:                                            ; preds = %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h2c5e185936086779E.exit.i.i.i.i.i.i.i.i", %bb.bs
  %.sroa.4.0.ph.i.i.i.i.i.i.i = phi i64 [ 8, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h2c5e185936086779E.exit.i.i.i.i.i.i.i.i" ], [ 0, %bb.bs ]
  invoke void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef %.sroa.4.0.ph.i.i.i.i.i.i.i, i64 %i.vl, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @1063) #57
          to label %.noexc.i.i.i.i.i.i unwind label %bb.bp, !noalias !4124

.noexc.i.i.i.i.i.i:                               ; preds = %bb.bt
  unreachable

bb.bu:                                            ; preds = %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h2c5e185936086779E.exit.i.i.i.i.i.i.i.i", %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i.i.i
  %.sroa.10.0.i.i.i.i.i.i.i = phi ptr [ inttoptr (i64 8 to ptr), %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i.i.i ], [ %i.vn, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h2c5e185936086779E.exit.i.i.i.i.i.i.i.i" ] ; 3 uses
  %.sroa.4.0.i.i.i.i.i.i.i = phi i64 [ 0, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i.i.i ], [ %.sroa.0.0.i.i.i.i.i.i.i, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h2c5e185936086779E.exit.i.i.i.i.i.i.i.i" ] ; 2 uses
  %i.vp = icmp ule i64 %.sroa.0.0.i.i.i.i.i.i.i, %.sroa.4.0.i.i.i.i.i.i.i
  call void @llvm.assume(i1 %i.vp)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(120) %.sroa.10.0.i.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(120) %i.q, i64 120, i1 false), !noalias !4124
  store i64 %.sroa.4.0.i.i.i.i.i.i.i, ptr %i.r, align 8, !noalias !4124
  %.sroa.4.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.r, i64 8 ; 2 uses
  store ptr %.sroa.10.0.i.i.i.i.i.i.i, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i.i, align 8, !noalias !4124
  %.sroa.6.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.r, i64 16 ; 2 uses
  store i64 1, ptr %.sroa.6.0..sroa_idx.i.i.i.i.i.i, align 8, !noalias !4124
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p), !noalias !4124
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.p, ptr noundef nonnull align 8 dereferenceable(72) %i.s, i64 72, i1 false), !noalias !4125
  call void @llvm.experimental.noalias.scope.decl(metadata !4142)
  call void @llvm.experimental.noalias.scope.decl(metadata !4143)
  call void @llvm.experimental.noalias.scope.decl(metadata !4144)
  call void @llvm.experimental.noalias.scope.decl(metadata !4145)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !noalias !4146
  %i.vq = getelementptr inbounds nuw i8, ptr %i.o, i64 24
  %i.vr = getelementptr inbounds nuw i8, ptr %i.p, i64 64
  br label %bb.bv

bb.bv:                                            ; preds = %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17hac0e9b7826590ea3E.exit.i.i.i.i.i.i.i.i", %bb.bu
  %i.vs = phi ptr [ %i.vz, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17hac0e9b7826590ea3E.exit.i.i.i.i.i.i.i.i" ], [ %.sroa.10.0.i.i.i.i.i.i.i, %bb.bu ]
  %i.vt = phi i64 [ %i.wb, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17hac0e9b7826590ea3E.exit.i.i.i.i.i.i.i.i" ], [ 1, %bb.bu ] ; 5 uses
  invoke fastcc void @"_ZN102_$LT$core..iter..adapters..map..Map$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h97a53cc9b4aca3f7E"(ptr noalias noundef align 8 captures(address) dereferenceable(120) %i.o, ptr noalias noundef nonnull align 8 dereferenceable(72) %i.p)
          to label %bb.by unwind label %bb.bx, !noalias !4147

bb.bw:                                            ; preds = %bb.ca, %bb.bx
  %.pn.i.i.i.i.i.i.i.i = phi { ptr, i32 } [ %i.wc, %bb.ca ], [ %i.vu, %bb.bx ]
  invoke fastcc void @"_ZN4core3ptr177drop_in_place$LT$alloc..collections..btree..map..IntoIter$LT$meilisearch_types..index_uid_pattern..IndexUidPattern$C$meilisearch_types..tasks..DetailsExportIndexSettings$GT$$GT$17he29f386f39ee8497E"(ptr noalias noundef nonnull align 8 dereferenceable(72) %i.p)
          to label %.body.i.i.i.i.i.i unwind label %bb.cc, !noalias !4147

bb.bx:                                            ; preds = %bb.bv
  %i.vu = landingpad { ptr, i32 }
          cleanup
  br label %bb.bw

bb.by:                                            ; preds = %bb.bv
  %i.vv = load i64, ptr %i.vq, align 8, !range !38, !noalias !4148, !noundef !23
  %.not.i.i.i.i.i.i.i.i = icmp eq i64 %i.vv, 2
  br i1 %.not.i.i.i.i.i.i.i.i, label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$16extend_desugared17h4e38e2929d32806fE.exit.i.i.i.i.i.i.i", label %bb.bz

bb.bz:                                            ; preds = %bb.by
  %i.vw = icmp samesign ult i64 %i.vt, 76861433640456466
  call void @llvm.assume(i1 %i.vw)
  %i.vx = load i64, ptr %i.r, align 8, !range !24, !alias.scope !4149, !noalias !4124, !noundef !23
  %i.vy = icmp eq i64 %i.vt, %i.vx
  br i1 %i.vy, label %bb.cb, label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17hac0e9b7826590ea3E.exit.i.i.i.i.i.i.i.i"

"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17hac0e9b7826590ea3E.exit.i.i.i.i.i.i.i.i": ; preds = %"._ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17hac0e9b7826590ea3E.exit.i.i_crit_edge.i.i.i.i.i.i", %bb.bz
  %i.vz = phi ptr [ %.pre.i.i.i.i.i.i, %"._ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17hac0e9b7826590ea3E.exit.i.i_crit_edge.i.i.i.i.i.i" ], [ %i.vs, %bb.bz ] ; 2 uses
  %i.wa = getelementptr inbounds nuw [120 x i8], ptr %i.vz, i64 %i.vt
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(120) %i.wa, ptr noundef nonnull align 8 dereferenceable(120) %i.o, i64 120, i1 false), !noalias !4148
  %i.wb = add nuw nsw i64 %i.vt, 1                ; 2 uses
  store i64 %i.wb, ptr %.sroa.6.0..sroa_idx.i.i.i.i.i.i, align 8, !alias.scope !4149, !noalias !4124
  br label %bb.bv

bb.ca:                                            ; preds = %bb.cb
  %i.wc = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr105drop_in_place$LT$$LP$alloc..string..String$C$meilisearch_types..tasks..DetailsExportIndexSettings$RP$$GT$17h6d784526f7e67e61E"(ptr noalias noundef align 8 dereferenceable(120) %i.o) #55
          to label %bb.bw unwind label %bb.cc, !noalias !4148

bb.cb:                                            ; preds = %bb.bz
  %.val.i.i.i.i.i.i.i.i = load i64, ptr %i.vr, align 8, !alias.scope !4150, !noalias !4124, !noundef !23
  %i.wd = call i64 @llvm.uadd.sat.i64(i64 %.val.i.i.i.i.i.i.i.i, i64 1)
  invoke fastcc void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$7reserve21do_reserve_and_handle17h45307a5a03ebcc73E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.r, i64 noundef %i.vt, i64 noundef range(i64 1, 0) %i.wd, i64 noundef 8, i64 noundef 120)
          to label %"._ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17hac0e9b7826590ea3E.exit.i.i_crit_edge.i.i.i.i.i.i" unwind label %bb.ca, !noalias !4151

"._ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17hac0e9b7826590ea3E.exit.i.i_crit_edge.i.i.i.i.i.i": ; preds = %bb.cb
  %.pre.i.i.i.i.i.i = load ptr, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i.i, align 8, !alias.scope !4149, !noalias !4124
  br label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17hac0e9b7826590ea3E.exit.i.i.i.i.i.i.i.i"

bb.cc:                                            ; preds = %bb.ca, %bb.bw
  %i.we = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #56, !noalias !4148
  unreachable

"_ZN5alloc3vec16Vec$LT$T$C$A$GT$16extend_desugared17h4e38e2929d32806fE.exit.i.i.i.i.i.i.i": ; preds = %bb.by
  invoke fastcc void @"_ZN4core3ptr177drop_in_place$LT$alloc..collections..btree..map..IntoIter$LT$meilisearch_types..index_uid_pattern..IndexUidPattern$C$meilisearch_types..tasks..DetailsExportIndexSettings$GT$$GT$17he29f386f39ee8497E"(ptr noalias noundef nonnull align 8 dereferenceable(72) %i.p)
          to label %_ZN4core4iter6traits8iterator8Iterator7collect17h6443ccb2e0accf32E.exit.i.i unwind label %bb.cd, !noalias !4147

bb.cd:                                            ; preds = %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$16extend_desugared17h4e38e2929d32806fE.exit.i.i.i.i.i.i.i"
  %i.wf = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i.i.i.i.i

.body.i.i.i.i.i.i:                                ; preds = %bb.cd, %bb.bw
  %eh.lpad-body.i.i.i.i.i.i = phi { ptr, i32 } [ %i.wf, %bb.cd ], [ %.pn.i.i.i.i.i.i.i.i, %bb.bw ]
  invoke fastcc void @"_ZN4core3ptr128drop_in_place$LT$alloc..vec..Vec$LT$$LP$alloc..string..String$C$meilisearch_types..tasks..DetailsExportIndexSettings$RP$$GT$$GT$17h73bdec3c6cbb8077E"(ptr noalias noundef align 8 dereferenceable(24) %i.r) #55
          to label %.body810 unwind label %bb.ce, !noalias !4124

bb.ce:                                            ; preds = %"_ZN4core3ptr105drop_in_place$LT$$LP$alloc..string..String$C$meilisearch_types..tasks..DetailsExportIndexSettings$RP$$GT$17h6d784526f7e67e61E.exit.i.i.i.i.i", %.body.i.i.i.i.i.i, %bb.br
  %i.wg = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #56, !noalias !4124
  unreachable

"_ZN4core3ptr105drop_in_place$LT$$LP$alloc..string..String$C$meilisearch_types..tasks..DetailsExportIndexSettings$RP$$GT$17h6d784526f7e67e61E.exit.i.i.i.i.i": ; preds = %bb.br, %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17hfb8d17e84375b72dE.exit.i.i.i.i.i.i808", %bb.bn
  %.pn.ph.i.i.i.i.i.i = phi { ptr, i32 } [ %i.uz, %bb.bn ], [ %i.ve, %bb.br ], [ %i.ve, %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17hfb8d17e84375b72dE.exit.i.i.i.i.i.i808" ]
  invoke fastcc void @"_ZN4core3ptr177drop_in_place$LT$alloc..collections..btree..map..IntoIter$LT$meilisearch_types..index_uid_pattern..IndexUidPattern$C$meilisearch_types..tasks..DetailsExportIndexSettings$GT$$GT$17he29f386f39ee8497E"(ptr noalias noundef nonnull align 8 dereferenceable(72) %i.s)
          to label %.body810 unwind label %bb.ce, !noalias !4125

_ZN4core4iter6traits8iterator8Iterator7collect17h6443ccb2e0accf32E.exit.i.i: ; preds = %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$16extend_desugared17h4e38e2929d32806fE.exit.i.i.i.i.i.i.i"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !noalias !4146
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !noalias !4124
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.t, ptr noundef nonnull align 8 dereferenceable(24) %i.r, i64 24, i1 false), !noalias !4152
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !noalias !4124
  %.phi.trans.insert.i.i = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  %.pre.i.i = load i64, ptr %.phi.trans.insert.i.i, align 8, !noalias !4113 ; 7 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !noalias !4123
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !noalias !4116
  %i.wh = icmp ult i64 %.pre.i.i, 76861433640456466
  call void @llvm.assume(i1 %i.wh)
  %i.wi = icmp eq i64 %.pre.i.i, 0
  br i1 %i.wi, label %bb.cf, label %bb.cg

bb.cf:                                            ; preds = %_ZN4core4iter6traits8iterator8Iterator7collect17h6443ccb2e0accf32E.exit.i.i, %.noexc809
  invoke fastcc void @"_ZN4core3ptr128drop_in_place$LT$alloc..vec..Vec$LT$$LP$alloc..string..String$C$meilisearch_types..tasks..DetailsExportIndexSettings$RP$$GT$$GT$17h73bdec3c6cbb8077E"(ptr noalias noundef align 8 dereferenceable(24) %i.t)
          to label %.loopexit1590 unwind label %bb.bl, !noalias !4113

bb.cg:                                            ; preds = %_ZN4core4iter6traits8iterator8Iterator7collect17h6443ccb2e0accf32E.exit.i.i
  %i.wj = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  %i.wk = load ptr, ptr %i.wj, align 8, !noalias !4113, !nonnull !23, !noundef !23 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !noalias !4153
  %i.wl = icmp eq i64 %.pre.i.i, 1
  br i1 %i.wl, label %bb.ck, label %bb.ch, !prof !51

bb.ch:                                            ; preds = %bb.cg
  %i.wm = icmp samesign ult i64 %.pre.i.i, 21
  br i1 %i.wm, label %bb.cj, label %bb.ci, !prof !51

bb.ci:                                            ; preds = %bb.ch
  invoke void @_ZN4core5slice4sort6stable14driftsort_main17h10030f297b969351E(ptr noalias noundef nonnull align 8 %i.wk, i64 noundef range(i64 1, 76861433640456466) %.pre.i.i, ptr noalias noundef nonnull align 8 dereferenceable(8) %i.n)
          to label %bb.ck unwind label %bb.dx, !noalias !4113

bb.cj:                                            ; preds = %bb.ch
  call fastcc void @_ZN4core5slice4sort6shared9smallsort25insertion_sort_shift_left17h514e5f8fcf6b6a94E(ptr noalias noundef nonnull align 8 %i.wk, i64 noundef range(i64 1, 76861433640456466) %.pre.i.i)
  br label %bb.ck

bb.ck:                                            ; preds = %bb.cj, %bb.ci, %bb.cg
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !4153
  %.sroa.0.0.copyload.i802 = load i64, ptr %i.t, align 8, !noalias !4113
  call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #52, !noalias !4154
  %i.wn = call noalias noundef align 8 dereferenceable_or_null(1336) ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef 1336, i64 noundef range(i64 1, -9223372036854775807) 8) #52, !noalias !4154 ; 5 uses
  %i.wo = icmp eq ptr %i.wn, null
  br i1 %i.wo, label %bb.cl, label %.loopexit101.i.i.i.i, !prof !25

bb.cl:                                            ; preds = %bb.ck
  invoke void @_ZN5alloc5alloc18handle_alloc_error17h8f86e24af4223f3dE(i64 noundef 8, i64 noundef 1336) #57
          to label %.noexc.i.i.i unwind label %bb.dw, !noalias !4154

.noexc.i.i.i:                                     ; preds = %bb.cl
  unreachable

.loopexit101.i.i.i.i:                             ; preds = %bb.ck
  %i.wp = getelementptr inbounds nuw i8, ptr %i.wn, i64 1056
  store ptr null, ptr %i.wp, align 8, !noalias !4154
  %i.wq = getelementptr inbounds nuw i8, ptr %i.wn, i64 1330
  store i16 0, ptr %i.wq, align 2, !noalias !4154
  %i.wr = getelementptr inbounds nuw [120 x i8], ptr %i.wk, i64 %.pre.i.i ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !noalias !4155
  %.sroa.3.0..sroa_idx85.i.i.i = getelementptr inbounds nuw i8, ptr %i.m, i64 24 ; 3 uses
  %.sroa.4.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.m, i64 32 ; 2 uses
  %.sroa.486.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.m, i64 120
  store ptr %i.wk, ptr %.sroa.486.0..sroa_idx.i.i.i, align 8, !noalias !4156
  %.sroa.5.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.m, i64 128 ; 4 uses
  store ptr %i.wk, ptr %.sroa.5.0..sroa_idx.i.i.i, align 8, !noalias !4156
  %.sroa.6.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.m, i64 136
  store i64 %.sroa.0.0.copyload.i802, ptr %.sroa.6.0..sroa_idx.i.i.i, align 8, !noalias !4156
  %.sroa.7.0..sroa_idx87.i.i.i = getelementptr inbounds nuw i8, ptr %i.m, i64 144 ; 2 uses
  store ptr %i.wr, ptr %.sroa.7.0..sroa_idx87.i.i.i, align 8, !noalias !4156
  %.sroa.4.0..sroa_idx21.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.i, i64 24
  %.sroa.523.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.i, i64 32 ; 2 uses
  %i.ws = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.wt = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %i.wu = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  %i.wv = getelementptr inbounds nuw i8, ptr %i.m, i64 8
end_hunk_0
begin_hunk_1_@_ZN17meilisearch_types5tasks15KindWithContent15default_details17h4ec11c65310acdebE:bb.a
  invoke void @"_ZN60_$LT$alloc..string..String$u20$as$u20$core..clone..Clone$GT$5clone17h123bb51dd192bfa5E"(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.aa, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.as, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @747)
          to label %bb.aw unwind label %bb.av

.body:                                            ; preds = %bb.ap, %bb.av
  %.pn138 = phi { ptr, i32 } [ %i.fj, %bb.av ], [ %i.ff, %bb.ap ] ; 3 uses
  switch i64 %.sroa.0.0, label %bb.at [
    i64 -9223372036854775808, label %common.resume
    i64 0, label %common.resume
  ]

bb.at:                                            ; preds = %.body
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.6.0) ]
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.6.0, i64 noundef %.sroa.0.0, i64 noundef range(i64 1, -9223372036854775807) 1) #52, !noalias !6423
  br label %common.resume

bb.au:                                            ; preds = %.noexc3.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.ab, ptr noundef nonnull align 8 dereferenceable(56) %i.k, i64 56, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !6417
  %i.fh = getelementptr inbounds nuw i8, ptr %1, i64 112
  %.sroa.4229.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ab, i64 56
  %i.fi = load <2 x i64>, ptr %i.fh, align 8, !alias.scope !6415
  store <2 x i64> %i.fi, ptr %.sroa.4229.0..sroa_idx, align 8
  br label %bb.as

bb.av:                                            ; preds = %bb.as
  %i.fj = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr125drop_in_place$LT$core..option..Option$LT$serde_json..map..Map$LT$alloc..string..String$C$serde_json..value..Value$GT$$GT$$GT$17hbf9de7de7cfbc133E"(ptr noalias noundef align 8 dereferenceable(72) %i.ab) #55
          to label %.body unwind label %bb.ax

bb.aw:                                            ; preds = %bb.as
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 88
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %.sroa.10.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(72) %i.ab, i64 72, i1 false)
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.8.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %i.aa, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab)
  store i64 9, ptr %0, align 8
  %.sroa.42.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %.sroa.42.0..sroa_idx, align 8
  %.sroa.64.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 0, ptr %.sroa.64.0..sroa_idx, align 8
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 64
  store i64 %.sroa.0.0, ptr %.sroa.9.0..sroa_idx, align 8
  %.sroa.9.sroa.4.0..sroa.9.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 72
  store ptr %.sroa.6.0, ptr %.sroa.9.sroa.4.0..sroa.9.0..sroa_idx.sroa_idx, align 8
  %.sroa.9.sroa.5.0..sroa.9.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 80
  store i64 %.sroa.7.0, ptr %.sroa.9.sroa.5.0..sroa.9.0..sroa_idx.sroa_idx, align 8
  br label %bb.ag

bb.ax:                                            ; preds = %bb.av
  %i.fk = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #56
  unreachable

bb.ay:                                            ; preds = %bb.m
  call void @"_ZN60_$LT$alloc..string..String$u20$as$u20$core..clone..Clone$GT$5clone17h123bb51dd192bfa5E"(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.u, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ax, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @106)
  %.sroa.030.0.copyload = load i64, ptr %i.u, align 8
  br label %bb.az

bb.az:                                            ; preds = %bb.m, %bb.ay
  %.sroa.030.0 = phi i64 [ %.sroa.030.0.copyload, %bb.ay ], [ -9223372036854775808, %bb.m ]
  store i64 6, ptr %0, align 8
  %.sroa.426.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.030.0, ptr %.sroa.426.0..sroa_idx, align 8
  %.sroa.426.sroa.4.0..sroa.426.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.426.sroa.4.0..sroa.426.0..sroa_idx.sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %i.z, i64 16, i1 false)
  %.sroa.527.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 -9223372036854775808, ptr %.sroa.527.0..sroa_idx, align 8
  %.sroa.628.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i64 -9223372036854775808, ptr %.sroa.628.0..sroa_idx, align 8
  br label %bb.ag

bb.ba:                                            ; preds = %bb.n
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v)
  call void @"_ZN60_$LT$alloc..string..String$u20$as$u20$core..clone..Clone$GT$5clone17h123bb51dd192bfa5E"(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.v, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ba, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @106)
  %.sroa.0195.0.copyload = load i64, ptr %i.v, align 8
  %.sroa.6197.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  %.sroa.6197.0.copyload = load ptr, ptr %.sroa.6197.0..sroa_idx, align 8
  %.sroa.7199.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.v, i64 16
  %.sroa.7199.0.copyload = load i64, ptr %.sroa.7199.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v)
  br label %bb.bb

bb.bb:                                            ; preds = %bb.n, %bb.ba
  %.sroa.7199.0 = phi i64 [ %.sroa.7199.0.copyload, %bb.ba ], [ undef, %bb.n ]
  %.sroa.6197.0 = phi ptr [ %.sroa.6197.0.copyload, %bb.ba ], [ undef, %bb.n ] ; 3 uses
  %.sroa.0195.0 = phi i64 [ %.sroa.0195.0.copyload, %bb.ba ], [ -9223372036854775808, %bb.n ] ; 3 uses
  %i.fl = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 2 uses
  %i.fm = load i64, ptr %i.fl, align 8, !range !27, !noundef !23
  %.not130.not = icmp eq i64 %i.fm, -9223372036854775808
  br i1 %.not130.not, label %.thread, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t)
  invoke void @"_ZN60_$LT$alloc..string..String$u20$as$u20$core..clone..Clone$GT$5clone17h123bb51dd192bfa5E"(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.t, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.az, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @748)
          to label %bb.bf unwind label %bb.be

"_ZN4core3ptr70drop_in_place$LT$core..option..Option$LT$alloc..string..String$GT$$GT$17h872ea489019ac5c6E.exit175": ; preds = %bb.bh, %bb.bg, %bb.bg, %bb.be
  %.pn132 = phi { ptr, i32 } [ %i.fn, %bb.be ], [ %i.fo, %bb.bg ], [ %i.fo, %bb.bg ], [ %i.fo, %bb.bh ] ; 3 uses
  switch i64 %.sroa.0195.0, label %bb.bd [
    i64 -9223372036854775808, label %common.resume
    i64 0, label %common.resume
  ]

bb.bd:                                            ; preds = %"_ZN4core3ptr70drop_in_place$LT$core..option..Option$LT$alloc..string..String$GT$$GT$17h872ea489019ac5c6E.exit175"
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.6197.0) ]
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.6197.0, i64 noundef %.sroa.0195.0, i64 noundef range(i64 1, -9223372036854775807) 1) #52, !noalias !6424
  br label %common.resume

bb.be:                                            ; preds = %bb.bc
  %i.fn = landingpad { ptr, i32 }
          cleanup
  br label %"_ZN4core3ptr70drop_in_place$LT$core..option..Option$LT$alloc..string..String$GT$$GT$17h872ea489019ac5c6E.exit175"

bb.bf:                                            ; preds = %bb.bc
  %.sroa.0201.0.copyload = load i64, ptr %i.t, align 8 ; 3 uses
  %.sroa.6203.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  %.sroa.6203.0.copyload = load ptr, ptr %.sroa.6203.0..sroa_idx, align 8 ; 3 uses
  %.sroa.7205.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  %.sroa.7205.0.copyload = load i64, ptr %.sroa.7205.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s)
  invoke void @"_ZN60_$LT$alloc..string..String$u20$as$u20$core..clone..Clone$GT$5clone17h123bb51dd192bfa5E"(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.s, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.fl, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @106)
          to label %bb.bi unwind label %bb.bg

.thread:                                          ; preds = %bb.bb, %bb.bi
  %.sroa.0201.0236 = phi i64 [ %.sroa.0201.0.copyload, %bb.bi ], [ -9223372036854775808, %bb.bb ]
  %.sroa.6203.0235 = phi ptr [ %.sroa.6203.0.copyload, %bb.bi ], [ undef, %bb.bb ]
  %.sroa.7205.0234 = phi i64 [ %.sroa.7205.0.copyload, %bb.bi ], [ undef, %bb.bb ]
  %.sroa.041.0 = phi i64 [ %.sroa.041.0.copyload, %bb.bi ], [ -9223372036854775808, %bb.bb ]
  store i64 6, ptr %0, align 8
  %.sroa.436.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.0195.0, ptr %.sroa.436.0..sroa_idx, align 8
  %.sroa.436.sroa.4.0..sroa.436.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %.sroa.6197.0, ptr %.sroa.436.sroa.4.0..sroa.436.0..sroa_idx.sroa_idx, align 8
  %.sroa.436.sroa.5.0..sroa.436.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %.sroa.7199.0, ptr %.sroa.436.sroa.5.0..sroa.436.0..sroa_idx.sroa_idx, align 8
  %.sroa.537.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 %.sroa.041.0, ptr %.sroa.537.0..sroa_idx, align 8
  %.sroa.537.sroa.4.0..sroa.537.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.537.sroa.4.0..sroa.537.0..sroa_idx.sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.543, i64 16, i1 false)
  %.sroa.638.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i64 %.sroa.0201.0236, ptr %.sroa.638.0..sroa_idx, align 8
  %.sroa.638.sroa.4.0..sroa.638.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 64
  store ptr %.sroa.6203.0235, ptr %.sroa.638.sroa.4.0..sroa.638.0..sroa_idx.sroa_idx, align 8
  %.sroa.638.sroa.5.0..sroa.638.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 72
  store i64 %.sroa.7205.0234, ptr %.sroa.638.sroa.5.0..sroa.638.0..sroa_idx.sroa_idx, align 8
  br label %bb.ag

bb.bg:                                            ; preds = %bb.bf
  %i.fo = landingpad { ptr, i32 }
          cleanup                                 ; 3 uses
  switch i64 %.sroa.0201.0.copyload, label %bb.bh [
    i64 -9223372036854775808, label %"_ZN4core3ptr70drop_in_place$LT$core..option..Option$LT$alloc..string..String$GT$$GT$17h872ea489019ac5c6E.exit175"
    i64 0, label %"_ZN4core3ptr70drop_in_place$LT$core..option..Option$LT$alloc..string..String$GT$$GT$17h872ea489019ac5c6E.exit175"
  ]

bb.bh:                                            ; preds = %bb.bg
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.6203.0.copyload) ]
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.6203.0.copyload, i64 noundef %.sroa.0201.0.copyload, i64 noundef range(i64 1, -9223372036854775807) 1) #52, !noalias !6425
  br label %"_ZN4core3ptr70drop_in_place$LT$core..option..Option$LT$alloc..string..String$GT$$GT$17h872ea489019ac5c6E.exit175"

bb.bi:                                            ; preds = %bb.bf
  %.sroa.041.0.copyload = load i64, ptr %i.s, align 8
  %.sroa.543.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.543, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.543.0..sroa_idx, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s)
  br label %.thread

bb.bj:                                            ; preds = %bb.v
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r)
  invoke void @"_ZN60_$LT$alloc..string..String$u20$as$u20$core..clone..Clone$GT$5clone17h123bb51dd192bfa5E"(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.r, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.dz, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @106)
          to label %bb.df unwind label %bb.de

bb.bk:                                            ; preds = %bb.v, %bb.df
  %.sroa.7211.0 = phi i64 [ %.sroa.7211.0.copyload, %bb.df ], [ undef, %bb.v ]
  %.sroa.6209.0 = phi ptr [ %.sroa.6209.0.copyload, %bb.df ], [ undef, %bb.v ] ; 3 uses
  %.sroa.0207.0 = phi i64 [ %.sroa.0207.0.copyload, %bb.df ], [ -9223372036854775808, %bb.v ] ; 3 uses
  %i.fp = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.fq = load <2 x i64>, ptr %i.fp, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x)
  %i.fr = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.fs = load ptr, ptr %i.fr, align 8, !noundef !23 ; 4 uses
  %.not127 = icmp ne ptr %i.fs, null
  %i.ft = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.fu = load i64, ptr %i.ft, align 8            ; 5 uses
  %i.fv = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.fw = load i64, ptr %i.fv, align 8            ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !6426)
  call void @llvm.experimental.noalias.scope.decl(metadata !6427)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !6428
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !6429
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5.i.i.i.i.i.i.i.i)
  %i.fx = icmp ne i64 %i.fw, 0
  %.not244 = select i1 %.not127, i1 %i.fx, i1 false
  br i1 %.not244, label %bb.bl, label %_ZN4core4iter6traits8iterator8Iterator7collect17h5ed20f7d496585e2E.exit.thread.i.i

bb.bl:                                            ; preds = %bb.bk
  %i.fy = add i64 %i.fw, -1                       ; 4 uses
  %i.fz = icmp eq i64 %i.fu, 0
  br i1 %i.fz, label %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h20a4ab2999dc9765E.exit.i.i.i.i.i", label %.lr.ph.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.preheader:                     ; preds = %bb.bl
  %xtraiter = and i64 %i.fu, 7                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.prol

.lr.ph.i.i.i.i.i.i.prol:                          ; preds = %.lr.ph.i.i.i.i.i.i.preheader, %.lr.ph.i.i.i.i.i.i.prol
  %.sroa.012.015.i.i.i.i.i.i.prol = phi ptr [ %.sroa.012.0.i.i.i.i.i.i.prol, %.lr.ph.i.i.i.i.i.i.prol ], [ %i.fs, %.lr.ph.i.i.i.i.i.i.preheader ]
  %.sroa.011.014.i.i.i.i.i.i.prol = phi i64 [ %i.gb, %.lr.ph.i.i.i.i.i.i.prol ], [ %i.fu, %.lr.ph.i.i.i.i.i.i.preheader ]
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.i.i.i.i.prol ], [ 0, %.lr.ph.i.i.i.i.i.i.preheader ]
  %i.ga = getelementptr inbounds nuw i8, ptr %.sroa.012.015.i.i.i.i.i.i.prol, i64 1160
  %i.gb = add i64 %.sroa.011.014.i.i.i.i.i.i.prol, -1 ; 2 uses
  %.sroa.012.0.i.i.i.i.i.i.prol = load ptr, ptr %i.ga, align 8, !noalias !6430, !nonnull !23, !noundef !23 ; 3 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.prol, !llvm.loop !6315

.lr.ph.i.i.i.i.i.i.prol.loopexit:                 ; preds = %.lr.ph.i.i.i.i.i.i.prol, %.lr.ph.i.i.i.i.i.i.preheader
  %.sroa.012.0.i.i.i.i.i.i.lcssa.unr = phi ptr [ poison, %.lr.ph.i.i.i.i.i.i.preheader ], [ %.sroa.012.0.i.i.i.i.i.i.prol, %.lr.ph.i.i.i.i.i.i.prol ]
  %.sroa.012.015.i.i.i.i.i.i.unr = phi ptr [ %i.fs, %.lr.ph.i.i.i.i.i.i.preheader ], [ %.sroa.012.0.i.i.i.i.i.i.prol, %.lr.ph.i.i.i.i.i.i.prol ]
  %.sroa.011.014.i.i.i.i.i.i.unr = phi i64 [ %i.fu, %.lr.ph.i.i.i.i.i.i.preheader ], [ %i.gb, %.lr.ph.i.i.i.i.i.i.prol ]
  %i.gc = icmp ult i64 %i.fu, 8
  br i1 %i.gc, label %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h20a4ab2999dc9765E.exit.i.i.i.i.i", label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %.lr.ph.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i
  %.sroa.012.015.i.i.i.i.i.i = phi ptr [ %.sroa.012.0.i.i.i.i.i.i.7, %.lr.ph.i.i.i.i.i.i ], [ %.sroa.012.015.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.i.prol.loopexit ]
  %.sroa.011.014.i.i.i.i.i.i = phi i64 [ %i.gl, %.lr.ph.i.i.i.i.i.i ], [ %.sroa.011.014.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.i.prol.loopexit ]
  %i.gd = getelementptr inbounds nuw i8, ptr %.sroa.012.015.i.i.i.i.i.i, i64 1160
  %.sroa.012.0.i.i.i.i.i.i = load ptr, ptr %i.gd, align 8, !noalias !6430, !nonnull !23, !noundef !23
  %i.ge = getelementptr inbounds nuw i8, ptr %.sroa.012.0.i.i.i.i.i.i, i64 1160
  %.sroa.012.0.i.i.i.i.i.i.1 = load ptr, ptr %i.ge, align 8, !noalias !6430, !nonnull !23, !noundef !23
  %i.gf = getelementptr inbounds nuw i8, ptr %.sroa.012.0.i.i.i.i.i.i.1, i64 1160
  %.sroa.012.0.i.i.i.i.i.i.2 = load ptr, ptr %i.gf, align 8, !noalias !6430, !nonnull !23, !noundef !23
  %i.gg = getelementptr inbounds nuw i8, ptr %.sroa.012.0.i.i.i.i.i.i.2, i64 1160
  %.sroa.012.0.i.i.i.i.i.i.3 = load ptr, ptr %i.gg, align 8, !noalias !6430, !nonnull !23, !noundef !23
  %i.gh = getelementptr inbounds nuw i8, ptr %.sroa.012.0.i.i.i.i.i.i.3, i64 1160
  %.sroa.012.0.i.i.i.i.i.i.4 = load ptr, ptr %i.gh, align 8, !noalias !6430, !nonnull !23, !noundef !23
  %i.gi = getelementptr inbounds nuw i8, ptr %.sroa.012.0.i.i.i.i.i.i.4, i64 1160
  %.sroa.012.0.i.i.i.i.i.i.5 = load ptr, ptr %i.gi, align 8, !noalias !6430, !nonnull !23, !noundef !23
  %i.gj = getelementptr inbounds nuw i8, ptr %.sroa.012.0.i.i.i.i.i.i.5, i64 1160
  %.sroa.012.0.i.i.i.i.i.i.6 = load ptr, ptr %i.gj, align 8, !noalias !6430, !nonnull !23, !noundef !23
  %i.gk = getelementptr inbounds nuw i8, ptr %.sroa.012.0.i.i.i.i.i.i.6, i64 1160
  %i.gl = add i64 %.sroa.011.014.i.i.i.i.i.i, -8  ; 2 uses
  %.sroa.012.0.i.i.i.i.i.i.7 = load ptr, ptr %i.gk, align 8, !noalias !6430, !nonnull !23, !noundef !23 ; 2 uses
  %i.gm = icmp eq i64 %i.gl, 0
  br i1 %i.gm, label %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h20a4ab2999dc9765E.exit.i.i.i.i.i", label %.lr.ph.i.i.i.i.i.i

"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h20a4ab2999dc9765E.exit.i.i.i.i.i": ; preds = %.lr.ph.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i, %bb.bl
  %.sroa.05.0.copyload.i.i1.i.i.i.i = phi ptr [ %i.fs, %bb.bl ], [ %.sroa.012.0.i.i.i.i.i.i.lcssa.unr, %.lr.ph.i.i.i.i.i.i.prol.loopexit ], [ %.sroa.012.0.i.i.i.i.i.i.7, %.lr.ph.i.i.i.i.i.i ] ; 4 uses
  %i.gn = getelementptr inbounds nuw i8, ptr %.sroa.05.0.copyload.i.i1.i.i.i.i, i64 1154
  %i.go = load i16, ptr %i.gn, align 2, !noalias !6431, !noundef !23
  %.not245 = icmp eq i16 %i.go, 0
  br i1 %.not245, label %.lr.ph.i.i.i.i2.i.i.i.i, label %.loopexit.i.i.i.i

.lr.ph.i.i.i.i2.i.i.i.i:                          ; preds = %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h20a4ab2999dc9765E.exit.i.i.i.i.i", %bb.bm
  %.sroa.0.038.i.i.i.i.i.i.i.i = phi ptr [ %i.gq, %bb.bm ], [ %.sroa.05.0.copyload.i.i1.i.i.i.i, %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h20a4ab2999dc9765E.exit.i.i.i.i.i" ] ; 2 uses
  %.sroa.5.037.i.i.i.i.i.i.i.i = phi i64 [ %i.gr, %bb.bm ], [ 0, %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h20a4ab2999dc9765E.exit.i.i.i.i.i" ] ; 2 uses
  %i.gp = getelementptr inbounds nuw i8, ptr %.sroa.0.038.i.i.i.i.i.i.i.i, i64 880
  %i.gq = load ptr, ptr %i.gp, align 8, !noalias !6432, !noundef !23 ; 8 uses
  %.not.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.gq, null
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %bb.bp, label %bb.bm

bb.bm:                                            ; preds = %.lr.ph.i.i.i.i2.i.i.i.i
  %i.gr = add i64 %.sroa.5.037.i.i.i.i.i.i.i.i, 1 ; 5 uses
  %i.gs = getelementptr inbounds nuw i8, ptr %.sroa.0.038.i.i.i.i.i.i.i.i, i64 1152
  %i.gt = load i16, ptr %i.gs, align 8, !noalias !6432 ; 3 uses
  %i.gu = getelementptr inbounds nuw i8, ptr %i.gq, i64 1154
  %i.gv = load i16, ptr %i.gu, align 2, !noalias !6431, !noundef !23
  %i.gw = icmp ult i16 %i.gt, %i.gv
  br i1 %i.gw, label %bb.bn, label %.lr.ph.i.i.i.i2.i.i.i.i

bb.bn:                                            ; preds = %bb.bm
  %i.gx = zext i16 %i.gt to i64                   ; 4 uses
  %i.gy = icmp eq i64 %i.gr, 0
  %i.gz = add nuw nsw i64 %i.gx, 1                ; 2 uses
  br i1 %i.gy, label %.loopexit.i.i.i.i, label %bb.bo

bb.bo:                                            ; preds = %bb.bn
  %i.ha = getelementptr inbounds nuw i8, ptr %i.gq, i64 1160
  %i.hb = icmp ult i16 %i.gt, 11
  call void @llvm.assume(i1 %i.hb), !noalias !6433
  %i.hc = getelementptr inbounds nuw [8 x i8], ptr %i.ha, i64 %i.gz ; 2 uses
  %xtraiter385 = and i64 %i.gr, 7                 ; 2 uses
  %lcmp.mod386.not = icmp eq i64 %xtraiter385, 0
  br i1 %lcmp.mod386.not, label %.prol.loopexit, label %.prol.preheader

.prol.preheader:                                  ; preds = %bb.bo, %.prol.preheader
  %.pn30.in.i.i.i.i.i.i.i.i.prol = phi ptr [ %i.hd, %.prol.preheader ], [ %i.hc, %bb.bo ]
  %.pn28.in.i.i.i.i.i.i.i.i.prol = phi i64 [ %.pn28.i.i.i.i.i.i.i.i.prol, %.prol.preheader ], [ %i.gr, %bb.bo ]
  %prol.iter387 = phi i64 [ %prol.iter387.next, %.prol.preheader ], [ 0, %bb.bo ]
  %.pn28.i.i.i.i.i.i.i.i.prol = add i64 %.pn28.in.i.i.i.i.i.i.i.i.prol, -1 ; 2 uses
  %.pn30.i.i.i.i.i.i.i.i.prol = load ptr, ptr %.pn30.in.i.i.i.i.i.i.i.i.prol, align 8, !noalias !6434, !nonnull !23, !noundef !23 ; 2 uses
  %i.hd = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.i.i.i.i.prol, i64 1160 ; 2 uses
  %prol.iter387.next = add i64 %prol.iter387, 1   ; 2 uses
  %prol.iter387.cmp.not = icmp eq i64 %prol.iter387.next, %xtraiter385
  br i1 %prol.iter387.cmp.not, label %.prol.loopexit, label %.prol.preheader, !llvm.loop !6329

.prol.loopexit:                                   ; preds = %.prol.preheader, %bb.bo
  %.pn30.i.i.i.i.i.i.i.i.lcssa.unr = phi ptr [ poison, %bb.bo ], [ %.pn30.i.i.i.i.i.i.i.i.prol, %.prol.preheader ]
  %.pn30.in.i.i.i.i.i.i.i.i.unr = phi ptr [ %i.hc, %bb.bo ], [ %i.hd, %.prol.preheader ]
  %.pn28.in.i.i.i.i.i.i.i.i.unr = phi i64 [ %i.gr, %bb.bo ], [ %.pn28.i.i.i.i.i.i.i.i.prol, %.prol.preheader ]
  %i.he = icmp ult i64 %.sroa.5.037.i.i.i.i.i.i.i.i, 7
  br i1 %i.he, label %.loopexit.i.i.i.i, label %.new

.new:                                             ; preds = %.prol.loopexit, %.new
  %.pn30.in.i.i.i.i.i.i.i.i = phi ptr [ %i.hn, %.new ], [ %.pn30.in.i.i.i.i.i.i.i.i.unr, %.prol.loopexit ]
  %.pn28.in.i.i.i.i.i.i.i.i = phi i64 [ %.pn28.i.i.i.i.i.i.i.i.7, %.new ], [ %.pn28.in.i.i.i.i.i.i.i.i.unr, %.prol.loopexit ]
  %.pn30.i.i.i.i.i.i.i.i = load ptr, ptr %.pn30.in.i.i.i.i.i.i.i.i, align 8, !noalias !6434, !nonnull !23, !noundef !23
  %i.hf = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.i.i.i.i, i64 1160
  %.pn30.i.i.i.i.i.i.i.i.1 = load ptr, ptr %i.hf, align 8, !noalias !6434, !nonnull !23, !noundef !23
  %i.hg = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.i.i.i.i.1, i64 1160
  %.pn30.i.i.i.i.i.i.i.i.2 = load ptr, ptr %i.hg, align 8, !noalias !6434, !nonnull !23, !noundef !23
  %i.hh = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.i.i.i.i.2, i64 1160
  %.pn30.i.i.i.i.i.i.i.i.3 = load ptr, ptr %i.hh, align 8, !noalias !6434, !nonnull !23, !noundef !23
  %i.hi = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.i.i.i.i.3, i64 1160
  %.pn30.i.i.i.i.i.i.i.i.4 = load ptr, ptr %i.hi, align 8, !noalias !6434, !nonnull !23, !noundef !23
  %i.hj = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.i.i.i.i.4, i64 1160
  %.pn30.i.i.i.i.i.i.i.i.5 = load ptr, ptr %i.hj, align 8, !noalias !6434, !nonnull !23, !noundef !23
  %i.hk = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.i.i.i.i.5, i64 1160
  %.pn30.i.i.i.i.i.i.i.i.6 = load ptr, ptr %i.hk, align 8, !noalias !6434, !nonnull !23, !noundef !23
  %i.hl = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.i.i.i.i.6, i64 1160
  %.pn28.i.i.i.i.i.i.i.i.7 = add i64 %.pn28.in.i.i.i.i.i.i.i.i, -8 ; 2 uses
  %.pn30.i.i.i.i.i.i.i.i.7 = load ptr, ptr %i.hl, align 8, !noalias !6434, !nonnull !23, !noundef !23 ; 2 uses
  %i.hm = icmp eq i64 %.pn28.i.i.i.i.i.i.i.i.7, 0
  %i.hn = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.i.i.i.i.7, i64 1160
  br i1 %i.hm, label %.loopexit.i.i.i.i, label %.new

bb.bp:                                            ; preds = %.lr.ph.i.i.i.i2.i.i.i.i
  invoke void @_ZN4core6option13unwrap_failed17h13b3e6f702cb1c04E(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1126) #57
          to label %.noexc.i.i3.i.i.i.i unwind label %bb.bq, !noalias !6435

.noexc.i.i3.i.i.i.i:                              ; preds = %bb.bp
  unreachable

bb.bq:                                            ; preds = %bb.bp
  %i.ho = landingpad { ptr, i32 }
          cleanup                                 ; 0 uses
  call void @llvm.trap(), !noalias !6433
  unreachable

.loopexit.i.i.i.i:                                ; preds = %.prol.loopexit, %.new, %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h20a4ab2999dc9765E.exit.i.i.i.i.i", %bb.bn
  %.sroa.0.0.ph.i.i.i.i.i.i.i242 = phi ptr [ %i.gq, %bb.bn ], [ %.sroa.05.0.copyload.i.i1.i.i.i.i, %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h20a4ab2999dc9765E.exit.i.i.i.i.i" ], [ %i.gq, %.new ], [ %i.gq, %.prol.loopexit ] ; 3 uses
  %.sroa.6.sroa.4.0.ph.i.i.i.i.i.i.i241 = phi i64 [ %i.gx, %bb.bn ], [ 0, %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h20a4ab2999dc9765E.exit.i.i.i.i.i" ], [ %i.gx, %.new ], [ %i.gx, %.prol.loopexit ] ; 3 uses
  %.sroa.7.0.i.i.i.i.i.i.i = phi i64 [ %i.gz, %bb.bn ], [ 1, %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h20a4ab2999dc9765E.exit.i.i.i.i.i" ], [ 0, %.new ], [ 0, %.prol.loopexit ] ; 3 uses
  %.sroa.07.0.i.i.i.i.i.i.i = phi ptr [ %i.gq, %bb.bn ], [ %.sroa.05.0.copyload.i.i1.i.i.i.i, %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h20a4ab2999dc9765E.exit.i.i.i.i.i" ], [ %.pn30.i.i.i.i.i.i.i.i.lcssa.unr, %.prol.loopexit ], [ %.pn30.i.i.i.i.i.i.i.i.7, %.new ] ; 4 uses
  %i.hp = getelementptr inbounds nuw i8, ptr %.sroa.0.0.ph.i.i.i.i.i.i.i242, i64 888
  %i.hq = icmp samesign ult i64 %.sroa.6.sroa.4.0.ph.i.i.i.i.i.i.i241, 11
  call void @llvm.assume(i1 %i.hq), !noalias !6433
  %i.hr = getelementptr inbounds nuw [24 x i8], ptr %i.hp, i64 %.sroa.6.sroa.4.0.ph.i.i.i.i.i.i.i241
  %i.hs = getelementptr inbounds nuw [80 x i8], ptr %.sroa.0.0.ph.i.i.i.i.i.i.i242, i64 %.sroa.6.sroa.4.0.ph.i.i.i.i.i.i.i241 ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.ph.i.i.i.i.i.i.i242) ]
  call void @llvm.experimental.noalias.scope.decl(metadata !6436)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !6437
  invoke void @"_ZN60_$LT$alloc..string..String$u20$as$u20$core..clone..Clone$GT$5clone17h123bb51dd192bfa5E"(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.g, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.hr, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @754)
          to label %.noexc182 unwind label %bb.dg, !noalias !6438

.noexc182:                                        ; preds = %.loopexit.i.i.i.i
  %.sroa.0.0.copyload.i.i.i.i.i.i.i.i = load i64, ptr %i.g, align 8, !noalias !6437 ; 5 uses
  %.sroa.52.0..sroa_idx.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %.sroa.52.0.copyload.i.i.i.i.i.i.i.i = load ptr, ptr %.sroa.52.0..sroa_idx.i.i.i.i.i.i.i.i, align 8, !noalias !6437 ; 4 uses
  %.sroa.6.0..sroa_idx.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %.sroa.6.0.copyload.i.i.i.i.i.i.i.i = load i64, ptr %.sroa.6.0..sroa_idx.i.i.i.i.i.i.i.i, align 8, !noalias !6437
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !6437
  %i.ht = load i64, ptr %i.hs, align 8, !range !36, !alias.scope !6436, !noalias !6439, !noundef !23
  %.not.i.i.i.i.i.i.i.i = icmp eq i64 %i.ht, -9223372036854775803
  br i1 %.not.i.i.i.i.i.i.i.i, label %bb.by, label %bb.br

bb.br:                                            ; preds = %.noexc182
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !6437
  invoke fastcc void @"_ZN63_$LT$serde_json..value..Value$u20$as$u20$core..clone..Clone$GT$5clone17h065ff73d52a9cb78E"(ptr noalias noundef align 8 captures(address) dereferenceable(72) %i.f, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(80) %i.hs)
          to label %bb.bu unwind label %bb.bs, !noalias !6440

bb.bs:                                            ; preds = %bb.br
  %i.hu = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.hv = icmp eq i64 %.sroa.0.0.copyload.i.i.i.i.i.i.i.i, 0
  br i1 %i.hv, label %.body183, label %bb.bt

bb.bt:                                            ; preds = %bb.bs
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.52.0.copyload.i.i.i.i.i.i.i.i) ]
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.52.0.copyload.i.i.i.i.i.i.i.i, i64 noundef %.sroa.0.0.copyload.i.i.i.i.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #52, !noalias !6441
  br label %.body183

bb.bu:                                            ; preds = %bb.br
  %.sroa.04.0.copyload.i.i.i.i.i.i.i.i = load i64, ptr %i.f, align 8, !noalias !6437
  %.sroa.5.0..sroa_idx6.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.5.i.i.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(64) %.sroa.5.0..sroa_idx6.i.i.i.i.i.i.i.i, i64 64, i1 false), !noalias !6439
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !6437
  br label %bb.by

_ZN4core4iter6traits8iterator8Iterator7collect17h5ed20f7d496585e2E.exit.thread.i.i: ; preds = %bb.bk
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5.i.i.i.i.i.i.i.i)
  store i64 0, ptr %i.j, align 8, !noalias !6442
  %i.hw = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %i.hw, align 8, !noalias !6442
  %i.hx = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  store i64 0, ptr %i.hx, align 8, !noalias !6442
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !6429
  br label %bb.cv

bb.bv:                                            ; preds = %bb.bz
  %i.hy = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.hz = icmp eq i64 %.sroa.0.0.copyload.i.i.i.i.i.i.i.i, 0
  br i1 %i.hz, label %"_ZN4core3ptr74drop_in_place$LT$meilisearch_types..index_uid_pattern..IndexUidPattern$GT$17h92e42dae38041cddE.exit.i.i.i.i.i.i", label %bb.bw

bb.bw:                                            ; preds = %bb.bv
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.52.0.copyload.i.i.i.i.i.i.i.i, i64 noundef %.sroa.0.0.copyload.i.i.i.i.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #52, !noalias !6443
  br label %"_ZN4core3ptr74drop_in_place$LT$meilisearch_types..index_uid_pattern..IndexUidPattern$GT$17h92e42dae38041cddE.exit.i.i.i.i.i.i"

"_ZN4core3ptr74drop_in_place$LT$meilisearch_types..index_uid_pattern..IndexUidPattern$GT$17h92e42dae38041cddE.exit.i.i.i.i.i.i": ; preds = %bb.bw, %bb.bv
  %i.ia = icmp eq i64 %.sroa.04.0.i.i.i.i.i.i.i.i, -9223372036854775803
  br i1 %i.ia, label %.body183, label %bb.bx

bb.bx:                                            ; preds = %"_ZN4core3ptr74drop_in_place$LT$meilisearch_types..index_uid_pattern..IndexUidPattern$GT$17h92e42dae38041cddE.exit.i.i.i.i.i.i"
  invoke fastcc void @"_ZN4core3ptr45drop_in_place$LT$serde_json..value..Value$GT$17h2555f1380cedc520E"(ptr noalias noundef nonnull readonly align 8 dereferenceable(80) %.sroa.102.0..sroa_idx.i.i.i.i.i.i)
          to label %.body183 unwind label %bb.cu, !noalias !6429

bb.by:                                            ; preds = %bb.bu, %.noexc182
  %.sroa.04.0.i.i.i.i.i.i.i.i = phi i64 [ %.sroa.04.0.copyload.i.i.i.i.i.i.i.i, %bb.bu ], [ -9223372036854775803, %.noexc182 ] ; 2 uses
  %i.ib = getelementptr inbounds nuw i8, ptr %i.hs, i64 72
  %i.ic = load i8, ptr %i.ib, align 8, !range !37, !alias.scope !6436, !noalias !6439, !noundef !23
  %.sroa.11.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 48
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !6429
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.11.0..sroa_idx.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(64) %.sroa.5.i.i.i.i.i.i.i.i, i64 64, i1 false), !noalias !6429
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5.i.i.i.i.i.i.i.i)
  store i64 %.sroa.0.0.copyload.i.i.i.i.i.i.i.i, ptr %i.h, align 8, !noalias !6429
  %.sroa.5.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  store ptr %.sroa.52.0.copyload.i.i.i.i.i.i.i.i, ptr %.sroa.5.0..sroa_idx.i.i.i.i.i.i, align 8, !noalias !6429
  %.sroa.6.0..sroa_idx1.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  store i64 %.sroa.6.0.copyload.i.i.i.i.i.i.i.i, ptr %.sroa.6.0..sroa_idx1.i.i.i.i.i.i, align 8, !noalias !6429
  %.sroa.7.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  store i64 0, ptr %.sroa.7.0..sroa_idx.i.i.i.i.i.i, align 8, !noalias !6429
  %.sroa.102.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 40 ; 2 uses
  store i64 %.sroa.04.0.i.i.i.i.i.i.i.i, ptr %.sroa.102.0..sroa_idx.i.i.i.i.i.i, align 8, !noalias !6429
  %.sroa.12.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 112
  store i8 %i.ic, ptr %.sroa.12.0..sroa_idx.i.i.i.i.i.i, align 8, !noalias !6429
  %i.id = call i64 @llvm.uadd.sat.i64(i64 %i.fy, i64 1)
  %.sroa.0.0.i.i.i.i.i.i.i = call noundef i64 @llvm.umax.i64(i64 %i.id, i64 4) ; 3 uses
  %i.ie = mul i64 %.sroa.0.0.i.i.i.i.i.i.i, 120   ; 3 uses
  %or.cond.i.i.i.i.i.i.i.i.i = icmp ugt i64 %i.fy, 76861433640456464
  br i1 %or.cond.i.i.i.i.i.i.i.i.i, label %bb.bz, label %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i.i.i, !prof !32

_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i.i.i: ; preds = %bb.by
  %i.if = icmp eq i64 %i.ie, 0
  br i1 %i.if, label %bb.ca, label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h2c5e185936086779E.exit.i.i.i.i.i.i.i.i"

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h2c5e185936086779E.exit.i.i.i.i.i.i.i.i": ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i.i.i
  call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #52, !noalias !6444
  %i.ig = call noundef align 8 ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef %i.ie, i64 noundef range(i64 1, 9) 8) #52, !noalias !6444 ; 2 uses
  %i.ih = icmp eq ptr %i.ig, null
  br i1 %i.ih, label %bb.bz, label %bb.ca

bb.bz:                                            ; preds = %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h2c5e185936086779E.exit.i.i.i.i.i.i.i.i", %bb.by
  %.sroa.4.0.ph.i.i.i.i.i.i.i = phi i64 [ 8, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h2c5e185936086779E.exit.i.i.i.i.i.i.i.i" ], [ 0, %bb.by ]
  invoke void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef %.sroa.4.0.ph.i.i.i.i.i.i.i, i64 %i.ie, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @1063) #57
          to label %.noexc.i.i.i.i.i.i unwind label %bb.bv, !noalias !6429

.noexc.i.i.i.i.i.i:                               ; preds = %bb.bz
  unreachable

bb.ca:                                            ; preds = %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h2c5e185936086779E.exit.i.i.i.i.i.i.i.i", %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i.i.i
  %.sroa.10.0.i.i.i.i.i.i.i = phi ptr [ inttoptr (i64 8 to ptr), %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i.i.i ], [ %i.ig, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h2c5e185936086779E.exit.i.i.i.i.i.i.i.i" ] ; 3 uses
  %.sroa.4.0.i.i.i.i.i.i.i = phi i64 [ 0, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i.i.i ], [ %.sroa.0.0.i.i.i.i.i.i.i, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h2c5e185936086779E.exit.i.i.i.i.i.i.i.i" ] ; 2 uses
  %i.ii = icmp ule i64 %.sroa.0.0.i.i.i.i.i.i.i, %.sroa.4.0.i.i.i.i.i.i.i
  call void @llvm.assume(i1 %i.ii)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(120) %.sroa.10.0.i.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(120) %i.h, i64 120, i1 false), !noalias !6429
  store i64 %.sroa.4.0.i.i.i.i.i.i.i, ptr %i.i, align 8, !noalias !6429
  %.sroa.4.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.i, i64 8 ; 2 uses
  store ptr %.sroa.10.0.i.i.i.i.i.i.i, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i.i, align 8, !noalias !6429
  %.sroa.6.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.i, i64 16 ; 2 uses
  store i64 1, ptr %.sroa.6.0..sroa_idx.i.i.i.i.i.i, align 8, !noalias !6429
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !6429
  call void @llvm.experimental.noalias.scope.decl(metadata !6445)
  call void @llvm.experimental.noalias.scope.decl(metadata !6446)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5.i.i.i.i.i.i.i.i.i.i)
  %i.ij = icmp eq i64 %i.fy, 0
  br i1 %i.ij, label %_ZN4core4iter6traits8iterator8Iterator7collect17h5ed20f7d496585e2E.exit.i.i, label %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h20a4ab2999dc9765E.exit.i19.i.i.i.i.i.i"

"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h20a4ab2999dc9765E.exit.i19.i.i.i.i.i.i": ; preds = %bb.ca
  %i.ik = getelementptr inbounds nuw i8, ptr %.sroa.07.0.i.i.i.i.i.i.i, i64 1154
  %i.il = load i16, ptr %i.ik, align 2, !noalias !6447, !noundef !23
  %i.im = zext i16 %i.il to i64
  %i.in = icmp samesign ult i64 %.sroa.7.0.i.i.i.i.i.i.i, %i.im
  br i1 %i.in, label %.thread.i.i.i.i, label %.lr.ph.i.i.i.i25.i.i.i.i.i.i

.thread.i.i.i.i:                                  ; preds = %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h20a4ab2999dc9765E.exit.i19.i.i.i.i.i.i"
  %i.io = add nuw nsw i64 %.sroa.7.0.i.i.i.i.i.i.i, 1
  br label %.lr.ph.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i25.i.i.i.i.i.i:                     ; preds = %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h20a4ab2999dc9765E.exit.i19.i.i.i.i.i.i", %bb.cb
  %.sroa.0.038.i.i.i.i26.i.i.i.i.i.i = phi ptr [ %i.iq, %bb.cb ], [ %.sroa.07.0.i.i.i.i.i.i.i, %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h20a4ab2999dc9765E.exit.i19.i.i.i.i.i.i" ] ; 2 uses
  %.sroa.5.037.i.i.i.i27.i.i.i.i.i.i = phi i64 [ %i.ir, %bb.cb ], [ 0, %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h20a4ab2999dc9765E.exit.i19.i.i.i.i.i.i" ] ; 2 uses
  %i.ip = getelementptr inbounds nuw i8, ptr %.sroa.0.038.i.i.i.i26.i.i.i.i.i.i, i64 880
  %i.iq = load ptr, ptr %i.ip, align 8, !noalias !6448, !noundef !23 ; 8 uses
  %.not.i.i.i.i.i28.i.i.i.i.i.i = icmp eq ptr %i.iq, null
  br i1 %.not.i.i.i.i.i28.i.i.i.i.i.i, label %bb.ce, label %bb.cb

bb.cb:                                            ; preds = %.lr.ph.i.i.i.i25.i.i.i.i.i.i
  %i.ir = add i64 %.sroa.5.037.i.i.i.i27.i.i.i.i.i.i, 1 ; 5 uses
  %i.is = getelementptr inbounds nuw i8, ptr %.sroa.0.038.i.i.i.i26.i.i.i.i.i.i, i64 1152
  %i.it = load i16, ptr %i.is, align 8, !noalias !6448 ; 3 uses
  %i.iu = getelementptr inbounds nuw i8, ptr %i.iq, i64 1154
  %i.iv = load i16, ptr %i.iu, align 2, !noalias !6447, !noundef !23
  %i.iw = icmp ult i16 %i.it, %i.iv
  br i1 %i.iw, label %bb.cc, label %.lr.ph.i.i.i.i25.i.i.i.i.i.i

bb.cc:                                            ; preds = %bb.cb
  %i.ix = zext i16 %i.it to i64                   ; 4 uses
  %i.iy = icmp eq i64 %i.ir, 0
  %i.iz = add nuw nsw i64 %i.ix, 1                ; 2 uses
  br i1 %i.iy, label %.lr.ph.i.i.i.i.i.i.i.i, label %bb.cd

bb.cd:                                            ; preds = %bb.cc
  %i.ja = getelementptr inbounds nuw i8, ptr %i.iq, i64 1160
  %i.jb = icmp ult i16 %i.it, 11
  call void @llvm.assume(i1 %i.jb), !noalias !6449
  %i.jc = getelementptr inbounds nuw [8 x i8], ptr %i.ja, i64 %i.iz ; 2 uses
  %xtraiter392 = and i64 %i.ir, 7                 ; 2 uses
  %lcmp.mod393.not = icmp eq i64 %xtraiter392, 0
  br i1 %lcmp.mod393.not, label %.prol.loopexit389, label %.prol.preheader388

.prol.preheader388:                               ; preds = %bb.cd, %.prol.preheader388
  %.pn30.in.i.i.i.i33.i.i.i.i.i.i.prol = phi ptr [ %i.jd, %.prol.preheader388 ], [ %i.jc, %bb.cd ]
  %.pn28.in.i.i.i.i34.i.i.i.i.i.i.prol = phi i64 [ %.pn28.i.i.i.i35.i.i.i.i.i.i.prol, %.prol.preheader388 ], [ %i.ir, %bb.cd ]
  %prol.iter394 = phi i64 [ %prol.iter394.next, %.prol.preheader388 ], [ 0, %bb.cd ]
  %.pn28.i.i.i.i35.i.i.i.i.i.i.prol = add i64 %.pn28.in.i.i.i.i34.i.i.i.i.i.i.prol, -1 ; 2 uses
  %.pn30.i.i.i.i36.i.i.i.i.i.i.prol = load ptr, ptr %.pn30.in.i.i.i.i33.i.i.i.i.i.i.prol, align 8, !noalias !6450, !nonnull !23, !noundef !23 ; 2 uses
  %i.jd = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i36.i.i.i.i.i.i.prol, i64 1160 ; 2 uses
  %prol.iter394.next = add i64 %prol.iter394, 1   ; 2 uses
  %prol.iter394.cmp.not = icmp eq i64 %prol.iter394.next, %xtraiter392
  br i1 %prol.iter394.cmp.not, label %.prol.loopexit389, label %.prol.preheader388, !llvm.loop !6366

.prol.loopexit389:                                ; preds = %.prol.preheader388, %bb.cd
  %.pn30.i.i.i.i36.i.i.i.i.i.i.lcssa.unr = phi ptr [ poison, %bb.cd ], [ %.pn30.i.i.i.i36.i.i.i.i.i.i.prol, %.prol.preheader388 ]
  %.pn30.in.i.i.i.i33.i.i.i.i.i.i.unr = phi ptr [ %i.jc, %bb.cd ], [ %i.jd, %.prol.preheader388 ]
  %.pn28.in.i.i.i.i34.i.i.i.i.i.i.unr = phi i64 [ %i.ir, %bb.cd ], [ %.pn28.i.i.i.i35.i.i.i.i.i.i.prol, %.prol.preheader388 ]
  %i.je = icmp ult i64 %.sroa.5.037.i.i.i.i27.i.i.i.i.i.i, 7
  br i1 %i.je, label %.lr.ph.i.i.i.i.i.i.i.i, label %.new390

.new390:                                          ; preds = %.prol.loopexit389, %.new390
  %.pn30.in.i.i.i.i33.i.i.i.i.i.i = phi ptr [ %i.jn, %.new390 ], [ %.pn30.in.i.i.i.i33.i.i.i.i.i.i.unr, %.prol.loopexit389 ]
  %.pn28.in.i.i.i.i34.i.i.i.i.i.i = phi i64 [ %.pn28.i.i.i.i35.i.i.i.i.i.i.7, %.new390 ], [ %.pn28.in.i.i.i.i34.i.i.i.i.i.i.unr, %.prol.loopexit389 ]
  %.pn30.i.i.i.i36.i.i.i.i.i.i = load ptr, ptr %.pn30.in.i.i.i.i33.i.i.i.i.i.i, align 8, !noalias !6450, !nonnull !23, !noundef !23
  %i.jf = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i36.i.i.i.i.i.i, i64 1160
  %.pn30.i.i.i.i36.i.i.i.i.i.i.1 = load ptr, ptr %i.jf, align 8, !noalias !6450, !nonnull !23, !noundef !23
  %i.jg = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i36.i.i.i.i.i.i.1, i64 1160
  %.pn30.i.i.i.i36.i.i.i.i.i.i.2 = load ptr, ptr %i.jg, align 8, !noalias !6450, !nonnull !23, !noundef !23
  %i.jh = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i36.i.i.i.i.i.i.2, i64 1160
  %.pn30.i.i.i.i36.i.i.i.i.i.i.3 = load ptr, ptr %i.jh, align 8, !noalias !6450, !nonnull !23, !noundef !23
  %i.ji = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i36.i.i.i.i.i.i.3, i64 1160
  %.pn30.i.i.i.i36.i.i.i.i.i.i.4 = load ptr, ptr %i.ji, align 8, !noalias !6450, !nonnull !23, !noundef !23
  %i.jj = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i36.i.i.i.i.i.i.4, i64 1160
  %.pn30.i.i.i.i36.i.i.i.i.i.i.5 = load ptr, ptr %i.jj, align 8, !noalias !6450, !nonnull !23, !noundef !23
  %i.jk = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i36.i.i.i.i.i.i.5, i64 1160
  %.pn30.i.i.i.i36.i.i.i.i.i.i.6 = load ptr, ptr %i.jk, align 8, !noalias !6450, !nonnull !23, !noundef !23
  %i.jl = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i36.i.i.i.i.i.i.6, i64 1160
  %.pn28.i.i.i.i35.i.i.i.i.i.i.7 = add i64 %.pn28.in.i.i.i.i34.i.i.i.i.i.i, -8 ; 2 uses
  %.pn30.i.i.i.i36.i.i.i.i.i.i.7 = load ptr, ptr %i.jl, align 8, !noalias !6450, !nonnull !23, !noundef !23 ; 2 uses
  %i.jm = icmp eq i64 %.pn28.i.i.i.i35.i.i.i.i.i.i.7, 0
  %i.jn = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i36.i.i.i.i.i.i.7, i64 1160
  br i1 %i.jm, label %.lr.ph.i.i.i.i.i.i.i.i, label %.new390

bb.ce:                                            ; preds = %.lr.ph.i.i.i.i25.i.i.i.i.i.i
  invoke void @_ZN4core6option13unwrap_failed17h13b3e6f702cb1c04E(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1126) #57
          to label %.noexc.i.i42.i.i.i.i.i.i unwind label %bb.cf, !noalias !6451

.noexc.i.i42.i.i.i.i.i.i:                         ; preds = %bb.ce
  unreachable

bb.cf:                                            ; preds = %bb.ce
  %i.jo = landingpad { ptr, i32 }
          cleanup                                 ; 0 uses
  call void @llvm.trap(), !noalias !6449
  unreachable

.lr.ph.i.i.i.i.i.i.i.i:                           ; preds = %.prol.loopexit389, %.new390, %bb.cc, %.thread.i.i.i.i
  %.sroa.0.0.ph.i.i.i32.i.i18.i.i.i.i = phi ptr [ %i.iq, %bb.cc ], [ %.sroa.07.0.i.i.i.i.i.i.i, %.thread.i.i.i.i ], [ %i.iq, %.new390 ], [ %i.iq, %.prol.loopexit389 ] ; 2 uses
  %.sroa.6.sroa.4.0.ph.i.i.i30.i.i17.i.i.i.i = phi i64 [ %i.ix, %bb.cc ], [ %.sroa.7.0.i.i.i.i.i.i.i, %.thread.i.i.i.i ], [ %i.ix, %.new390 ], [ %i.ix, %.prol.loopexit389 ] ; 3 uses
  %.sroa.7.0.i.i.i38.i.i.i.i.i.i = phi i64 [ %i.iz, %bb.cc ], [ %i.io, %.thread.i.i.i.i ], [ 0, %.new390 ], [ 0, %.prol.loopexit389 ]
  %.sroa.07.0.i.i.i39.i.i.i.i.i.i = phi ptr [ %i.iq, %bb.cc ], [ %.sroa.07.0.i.i.i.i.i.i.i, %.thread.i.i.i.i ], [ %.pn30.i.i.i.i36.i.i.i.i.i.i.lcssa.unr, %.prol.loopexit389 ], [ %.pn30.i.i.i.i36.i.i.i.i.i.i.7, %.new390 ]
  %i.jp = getelementptr inbounds nuw i8, ptr %.sroa.0.0.ph.i.i.i32.i.i18.i.i.i.i, i64 888
  %i.jq = icmp samesign ult i64 %.sroa.6.sroa.4.0.ph.i.i.i30.i.i17.i.i.i.i, 11
  call void @llvm.assume(i1 %i.jq), !noalias !6449
  %i.jr = getelementptr inbounds nuw [24 x i8], ptr %i.jp, i64 %.sroa.6.sroa.4.0.ph.i.i.i30.i.i17.i.i.i.i
  %i.js = getelementptr inbounds nuw [80 x i8], ptr %.sroa.0.0.ph.i.i.i32.i.i18.i.i.i.i, i64 %.sroa.6.sroa.4.0.ph.i.i.i30.i.i17.i.i.i.i
  %.sroa.52.0..sroa_idx.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %.sroa.6.0..sroa_idx.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %.sroa.5.0..sroa_idx6.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %.sroa.5.0..sroa_idx.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %.sroa.6.0..sroa_idx.i.i5.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %.sroa.7.0..sroa_idx.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  %.sroa.101.0..sroa_idx.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 40
  %.sroa.11.0..sroa_idx.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 48
  %.sroa.12.0..sroa_idx.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 112
  br label %bb.cg

bb.cg:                                            ; preds = %.noexc8.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i
  %i.jt = phi ptr [ %.sroa.10.0.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i ], [ %i.kd, %.noexc8.i.i.i.i.i.i ]
  %i.ju = phi i64 [ 1, %.lr.ph.i.i.i.i.i.i.i.i ], [ %i.kf, %.noexc8.i.i.i.i.i.i ] ; 4 uses
  %.sroa.19.1.i.i.i.i.i.i = phi i64 [ %.sroa.7.0.i.i.i38.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i ], [ %.sroa.7.0.i.i.i.i.i.i.i.i.i, %.noexc8.i.i.i.i.i.i ] ; 3 uses
  %.sroa.2511.1.in.i.i.i.i.i.i = phi i64 [ %i.fy, %.lr.ph.i.i.i.i.i.i.i.i ], [ %.sroa.2511.1.i.i.i.i.i.i, %.noexc8.i.i.i.i.i.i ]
  %.sroa.57.1.i.i.i.i.i.i = phi ptr [ %.sroa.07.0.i.i.i39.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i ], [ %.sroa.07.0.i.i.i.i.i.i.i.i.i, %.noexc8.i.i.i.i.i.i ] ; 5 uses
  %i.jv = phi ptr [ %i.jr, %.lr.ph.i.i.i.i.i.i.i.i ], [ %i.lo, %.noexc8.i.i.i.i.i.i ]
  %.pn46.i.i.i.i.i.i = phi ptr [ %i.js, %.lr.ph.i.i.i.i.i.i.i.i ], [ %i.lp, %.noexc8.i.i.i.i.i.i ] ; 4 uses
  %.sroa.2511.1.i.i.i.i.i.i = add nsw i64 %.sroa.2511.1.in.i.i.i.i.i.i, -1 ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.pn46.i.i.i.i.i.i) ]
  call void @llvm.experimental.noalias.scope.decl(metadata !6452)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !6453
  invoke void @"_ZN60_$LT$alloc..string..String$u20$as$u20$core..clone..Clone$GT$5clone17h123bb51dd192bfa5E"(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.d, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.jv, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @754)
          to label %.noexc7.i.i.i.i.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.i.i.i.i, !noalias !6454

.noexc7.i.i.i.i.i.i:                              ; preds = %bb.cg
  %.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i.i = load i64, ptr %i.d, align 8, !noalias !6453 ; 3 uses
  %.sroa.52.0.copyload.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %.sroa.52.0..sroa_idx.i.i.i.i.i.i.i.i.i.i, align 8, !noalias !6453 ; 3 uses
  %.sroa.6.0.copyload.i.i.i.i.i.i.i.i.i.i = load i64, ptr %.sroa.6.0..sroa_idx.i.i.i.i.i.i.i.i.i.i, align 8, !noalias !6453
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !6453
  %i.jw = load i64, ptr %.pn46.i.i.i.i.i.i, align 8, !range !36, !alias.scope !6452, !noalias !6455, !noundef !23
  %.not.i.i.i.i.i.i.i.i.i.i = icmp eq i64 %i.jw, -9223372036854775803
  br i1 %.not.i.i.i.i.i.i.i.i.i.i, label %bb.cl, label %bb.ch

bb.ch:                                            ; preds = %.noexc7.i.i.i.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !6453
  invoke fastcc void @"_ZN63_$LT$serde_json..value..Value$u20$as$u20$core..clone..Clone$GT$5clone17h065ff73d52a9cb78E"(ptr noalias noundef align 8 captures(address) dereferenceable(72) %i.c, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(80) %.pn46.i.i.i.i.i.i)
          to label %bb.ck unwind label %bb.ci, !noalias !6456

bb.ci:                                            ; preds = %bb.ch
  %i.jx = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.jy = icmp eq i64 %.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i.i, 0
  br i1 %i.jy, label %.body.i.i.i.i.i.i, label %bb.cj

bb.cj:                                            ; preds = %bb.ci
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.52.0.copyload.i.i.i.i.i.i.i.i.i.i) ]
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.52.0.copyload.i.i.i.i.i.i.i.i.i.i, i64 noundef %.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #52, !noalias !6457
  br label %.body.i.i.i.i.i.i

bb.ck:                                            ; preds = %bb.ch
  %.sroa.04.0.copyload.i.i.i.i.i.i.i.i.i.i = load i64, ptr %i.c, align 8, !noalias !6453
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.5.i.i.i.i.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(64) %.sroa.5.0..sroa_idx6.i.i.i.i.i.i.i.i.i.i, i64 64, i1 false), !noalias !6455
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !6453
  br label %bb.cl

bb.cl:                                            ; preds = %bb.ck, %.noexc7.i.i.i.i.i.i
  %.sroa.04.0.i.i.i.i.i.i.i.i.i.i = phi i64 [ %.sroa.04.0.copyload.i.i.i.i.i.i.i.i.i.i, %bb.ck ], [ -9223372036854775803, %.noexc7.i.i.i.i.i.i ]
  %i.jz = getelementptr inbounds nuw i8, ptr %.pn46.i.i.i.i.i.i, i64 72
  %i.ka = load i8, ptr %i.jz, align 8, !range !37, !alias.scope !6452, !noalias !6455, !noundef !23
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !6458
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.11.0..sroa_idx.i.i.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(64) %.sroa.5.i.i.i.i.i.i.i.i.i.i, i64 64, i1 false), !noalias !6458
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5.i.i.i.i.i.i.i.i.i.i)
  store i64 %.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i.i, ptr %i.e, align 8, !noalias !6458
  store ptr %.sroa.52.0.copyload.i.i.i.i.i.i.i.i.i.i, ptr %.sroa.5.0..sroa_idx.i.i.i.i.i.i.i.i, align 8, !noalias !6458
  store i64 %.sroa.6.0.copyload.i.i.i.i.i.i.i.i.i.i, ptr %.sroa.6.0..sroa_idx.i.i5.i.i.i.i.i.i, align 8, !noalias !6458
  store i64 0, ptr %.sroa.7.0..sroa_idx.i.i.i.i.i.i.i.i, align 8, !noalias !6458
  store i64 %.sroa.04.0.i.i.i.i.i.i.i.i.i.i, ptr %.sroa.101.0..sroa_idx.i.i.i.i.i.i.i.i, align 8, !noalias !6458
  store i8 %i.ka, ptr %.sroa.12.0..sroa_idx.i.i.i.i.i.i.i.i, align 8, !noalias !6458
  %i.kb = load i64, ptr %i.i, align 8, !range !24, !alias.scope !6459, !noalias !6429, !noundef !23
  %i.kc = icmp eq i64 %i.ju, %i.kb
  br i1 %i.kc, label %bb.cs, label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17hf1963ec138bb5c2aE.exit.i.i.i.i.i.i.i.i"

"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17hf1963ec138bb5c2aE.exit.i.i.i.i.i.i.i.i": ; preds = %"._ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17hf1963ec138bb5c2aE.exit.i.i_crit_edge.i.i.i.i.i.i", %bb.cl
  %i.kd = phi ptr [ %.pre.i.i.i.i.i.i, %"._ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17hf1963ec138bb5c2aE.exit.i.i_crit_edge.i.i.i.i.i.i" ], [ %i.jt, %bb.cl ] ; 2 uses
  %i.ke = getelementptr inbounds nuw [120 x i8], ptr %i.kd, i64 %i.ju
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(120) %i.ke, ptr noundef nonnull align 8 dereferenceable(120) %i.e, i64 120, i1 false), !noalias !6458
  %i.kf = add nuw nsw i64 %i.ju, 1                ; 2 uses
  store i64 %i.kf, ptr %.sroa.6.0..sroa_idx.i.i.i.i.i.i, align 8, !alias.scope !6459, !noalias !6429
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !6458
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5.i.i.i.i.i.i.i.i.i.i)
  %i.kg = icmp eq i64 %.sroa.2511.1.i.i.i.i.i.i, 0
  br i1 %i.kg, label %_ZN4core4iter6traits8iterator8Iterator7collect17h5ed20f7d496585e2E.exit.i.i, label %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h20a4ab2999dc9765E.exit.i.i.i.i.i.i.i"

"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h20a4ab2999dc9765E.exit.i.i.i.i.i.i.i": ; preds = %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17hf1963ec138bb5c2aE.exit.i.i.i.i.i.i.i.i"
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.57.1.i.i.i.i.i.i) ]
  %i.kh = getelementptr inbounds nuw i8, ptr %.sroa.57.1.i.i.i.i.i.i, i64 1154
  %i.ki = load i16, ptr %i.kh, align 2, !noalias !6460, !noundef !23
  %i.kj = zext i16 %i.ki to i64
  %i.kk = icmp ult i64 %.sroa.19.1.i.i.i.i.i.i, %i.kj
  br i1 %i.kk, label %.thread.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i

.thread.i.i.i.i.i.i:                              ; preds = %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h20a4ab2999dc9765E.exit.i.i.i.i.i.i.i"
  %i.kl = add nuw nsw i64 %.sroa.19.1.i.i.i.i.i.i, 1
  br label %.noexc8.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i:                       ; preds = %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h20a4ab2999dc9765E.exit.i.i.i.i.i.i.i", %bb.cm
  %.sroa.0.038.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.kn, %bb.cm ], [ %.sroa.57.1.i.i.i.i.i.i, %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h20a4ab2999dc9765E.exit.i.i.i.i.i.i.i" ] ; 2 uses
  %.sroa.5.037.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.ko, %bb.cm ], [ 0, %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h20a4ab2999dc9765E.exit.i.i.i.i.i.i.i" ] ; 2 uses
  %i.km = getelementptr inbounds nuw i8, ptr %.sroa.0.038.i.i.i.i.i.i.i.i.i.i, i64 880
  %i.kn = load ptr, ptr %i.km, align 8, !noalias !6461, !noundef !23 ; 8 uses
  %.not.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.kn, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i, label %bb.cp, label %bb.cm

bb.cm:                                            ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i
  %i.ko = add i64 %.sroa.5.037.i.i.i.i.i.i.i.i.i.i, 1 ; 5 uses
  %i.kp = getelementptr inbounds nuw i8, ptr %.sroa.0.038.i.i.i.i.i.i.i.i.i.i, i64 1152
  %i.kq = load i16, ptr %i.kp, align 8, !noalias !6461 ; 3 uses
  %i.kr = getelementptr inbounds nuw i8, ptr %i.kn, i64 1154
  %i.ks = load i16, ptr %i.kr, align 2, !noalias !6460, !noundef !23
  %i.kt = icmp ult i16 %i.kq, %i.ks
  br i1 %i.kt, label %bb.cn, label %.lr.ph.i.i.i.i.i.i.i.i.i.i

bb.cn:                                            ; preds = %bb.cm
  %i.ku = zext i16 %i.kq to i64                   ; 4 uses
  %i.kv = icmp eq i64 %i.ko, 0
  %i.kw = add nuw nsw i64 %i.ku, 1                ; 2 uses
  br i1 %i.kv, label %.noexc8.i.i.i.i.i.i, label %bb.co

bb.co:                                            ; preds = %bb.cn
  %i.kx = getelementptr inbounds nuw i8, ptr %i.kn, i64 1160
  %i.ky = icmp ult i16 %i.kq, 11
  call void @llvm.assume(i1 %i.ky), !noalias !6449
  %i.kz = getelementptr inbounds nuw [8 x i8], ptr %i.kx, i64 %i.kw ; 2 uses
  %xtraiter399 = and i64 %i.ko, 7                 ; 2 uses
  %lcmp.mod400.not = icmp eq i64 %xtraiter399, 0
  br i1 %lcmp.mod400.not, label %.prol.loopexit396, label %.prol.preheader395

.prol.preheader395:                               ; preds = %bb.co, %.prol.preheader395
  %.pn30.in.i.i.i.i.i.i.i.i.i.i.prol = phi ptr [ %i.la, %.prol.preheader395 ], [ %i.kz, %bb.co ]
  %.pn28.in.i.i.i.i.i.i.i.i.i.i.prol = phi i64 [ %.pn28.i.i.i.i.i.i.i.i.i.i.prol, %.prol.preheader395 ], [ %i.ko, %bb.co ]
  %prol.iter401 = phi i64 [ %prol.iter401.next, %.prol.preheader395 ], [ 0, %bb.co ]
  %.pn28.i.i.i.i.i.i.i.i.i.i.prol = add i64 %.pn28.in.i.i.i.i.i.i.i.i.i.i.prol, -1 ; 2 uses
  %.pn30.i.i.i.i.i.i.i.i.i.i.prol = load ptr, ptr %.pn30.in.i.i.i.i.i.i.i.i.i.i.prol, align 8, !noalias !6462, !nonnull !23, !noundef !23 ; 2 uses
  %i.la = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.i.i.i.i.i.i.prol, i64 1160 ; 2 uses
  %prol.iter401.next = add i64 %prol.iter401, 1   ; 2 uses
  %prol.iter401.cmp.not = icmp eq i64 %prol.iter401.next, %xtraiter399
  br i1 %prol.iter401.cmp.not, label %.prol.loopexit396, label %.prol.preheader395, !llvm.loop !6391

.prol.loopexit396:                                ; preds = %.prol.preheader395, %bb.co
  %.pn30.i.i.i.i.i.i.i.i.i.i.lcssa.unr = phi ptr [ poison, %bb.co ], [ %.pn30.i.i.i.i.i.i.i.i.i.i.prol, %.prol.preheader395 ]
  %.pn30.in.i.i.i.i.i.i.i.i.i.i.unr = phi ptr [ %i.kz, %bb.co ], [ %i.la, %.prol.preheader395 ]
  %.pn28.in.i.i.i.i.i.i.i.i.i.i.unr = phi i64 [ %i.ko, %bb.co ], [ %.pn28.i.i.i.i.i.i.i.i.i.i.prol, %.prol.preheader395 ]
  %i.lb = icmp ult i64 %.sroa.5.037.i.i.i.i.i.i.i.i.i.i, 7
  br i1 %i.lb, label %.noexc8.i.i.i.i.i.i, label %.new397

.new397:                                          ; preds = %.prol.loopexit396, %.new397
  %.pn30.in.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.lk, %.new397 ], [ %.pn30.in.i.i.i.i.i.i.i.i.i.i.unr, %.prol.loopexit396 ]
  %.pn28.in.i.i.i.i.i.i.i.i.i.i = phi i64 [ %.pn28.i.i.i.i.i.i.i.i.i.i.7, %.new397 ], [ %.pn28.in.i.i.i.i.i.i.i.i.i.i.unr, %.prol.loopexit396 ]
  %.pn30.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %.pn30.in.i.i.i.i.i.i.i.i.i.i, align 8, !noalias !6462, !nonnull !23, !noundef !23
  %i.lc = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.i.i.i.i.i.i, i64 1160
  %.pn30.i.i.i.i.i.i.i.i.i.i.1 = load ptr, ptr %i.lc, align 8, !noalias !6462, !nonnull !23, !noundef !23
  %i.ld = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.i.i.i.i.i.i.1, i64 1160
  %.pn30.i.i.i.i.i.i.i.i.i.i.2 = load ptr, ptr %i.ld, align 8, !noalias !6462, !nonnull !23, !noundef !23
  %i.le = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.i.i.i.i.i.i.2, i64 1160
  %.pn30.i.i.i.i.i.i.i.i.i.i.3 = load ptr, ptr %i.le, align 8, !noalias !6462, !nonnull !23, !noundef !23
  %i.lf = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.i.i.i.i.i.i.3, i64 1160
  %.pn30.i.i.i.i.i.i.i.i.i.i.4 = load ptr, ptr %i.lf, align 8, !noalias !6462, !nonnull !23, !noundef !23
  %i.lg = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.i.i.i.i.i.i.4, i64 1160
  %.pn30.i.i.i.i.i.i.i.i.i.i.5 = load ptr, ptr %i.lg, align 8, !noalias !6462, !nonnull !23, !noundef !23
  %i.lh = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.i.i.i.i.i.i.5, i64 1160
  %.pn30.i.i.i.i.i.i.i.i.i.i.6 = load ptr, ptr %i.lh, align 8, !noalias !6462, !nonnull !23, !noundef !23
  %i.li = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.i.i.i.i.i.i.6, i64 1160
  %.pn28.i.i.i.i.i.i.i.i.i.i.7 = add i64 %.pn28.in.i.i.i.i.i.i.i.i.i.i, -8 ; 2 uses
  %.pn30.i.i.i.i.i.i.i.i.i.i.7 = load ptr, ptr %i.li, align 8, !noalias !6462, !nonnull !23, !noundef !23 ; 2 uses
  %i.lj = icmp eq i64 %.pn28.i.i.i.i.i.i.i.i.i.i.7, 0
  %i.lk = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.i.i.i.i.i.i.7, i64 1160
  br i1 %i.lj, label %.noexc8.i.i.i.i.i.i, label %.new397

bb.cp:                                            ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i
  invoke void @_ZN4core6option13unwrap_failed17h13b3e6f702cb1c04E(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1126) #57
          to label %.noexc.i.i.i.i.i.i.i.i unwind label %bb.cq, !noalias !6463

.noexc.i.i.i.i.i.i.i.i:                           ; preds = %bb.cp
  unreachable

bb.cq:                                            ; preds = %bb.cp
  %i.ll = landingpad { ptr, i32 }
          cleanup                                 ; 0 uses
  call void @llvm.trap(), !noalias !6449
  unreachable

.noexc8.i.i.i.i.i.i:                              ; preds = %.prol.loopexit396, %.new397, %bb.cn, %.thread.i.i.i.i.i.i
  %.sroa.0.0.ph.i.i.i45.i.i.i.i.i.i = phi ptr [ %i.kn, %bb.cn ], [ %.sroa.57.1.i.i.i.i.i.i, %.thread.i.i.i.i.i.i ], [ %i.kn, %.new397 ], [ %i.kn, %.prol.loopexit396 ] ; 2 uses
  %.sroa.6.sroa.4.0.ph.i.i.i44.i.i.i.i.i.i = phi i64 [ %i.ku, %bb.cn ], [ %.sroa.19.1.i.i.i.i.i.i, %.thread.i.i.i.i.i.i ], [ %i.ku, %.new397 ], [ %i.ku, %.prol.loopexit396 ] ; 3 uses
  %.sroa.7.0.i.i.i.i.i.i.i.i.i = phi i64 [ %i.kw, %bb.cn ], [ %i.kl, %.thread.i.i.i.i.i.i ], [ 0, %.new397 ], [ 0, %.prol.loopexit396 ]
  %.sroa.07.0.i.i.i.i.i.i.i.i.i = phi ptr [ %i.kn, %bb.cn ], [ %.sroa.57.1.i.i.i.i.i.i, %.thread.i.i.i.i.i.i ], [ %.pn30.i.i.i.i.i.i.i.i.i.i.lcssa.unr, %.prol.loopexit396 ], [ %.pn30.i.i.i.i.i.i.i.i.i.i.7, %.new397 ]
  %i.lm = getelementptr inbounds nuw i8, ptr %.sroa.0.0.ph.i.i.i45.i.i.i.i.i.i, i64 888
  %i.ln = icmp samesign ult i64 %.sroa.6.sroa.4.0.ph.i.i.i44.i.i.i.i.i.i, 11
  call void @llvm.assume(i1 %i.ln), !noalias !6449
  %i.lo = getelementptr inbounds nuw [24 x i8], ptr %i.lm, i64 %.sroa.6.sroa.4.0.ph.i.i.i44.i.i.i.i.i.i
  %i.lp = getelementptr inbounds nuw [80 x i8], ptr %.sroa.0.0.ph.i.i.i45.i.i.i.i.i.i, i64 %.sroa.6.sroa.4.0.ph.i.i.i44.i.i.i.i.i.i
  br label %bb.cg

bb.cr:                                            ; preds = %bb.cs
  %i.lq = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr137drop_in_place$LT$$LP$meilisearch_types..index_uid_pattern..IndexUidPattern$C$meilisearch_types..tasks..DetailsExportIndexSettings$RP$$GT$17hb88229aaa070dd0dE"(ptr noalias noundef align 8 dereferenceable(120) %i.e) #55
          to label %.body.i.i.i.i.i.i unwind label %bb.ct, !noalias !6458

bb.cs:                                            ; preds = %bb.cl
  %i.lr = call i64 @llvm.uadd.sat.i64(i64 %.sroa.2511.1.i.i.i.i.i.i, i64 1)
  invoke fastcc void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$7reserve21do_reserve_and_handle17h45307a5a03ebcc73E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.i, i64 noundef %i.ju, i64 noundef range(i64 1, 0) %i.lr, i64 noundef 8, i64 noundef 120)
          to label %"._ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17hf1963ec138bb5c2aE.exit.i.i_crit_edge.i.i.i.i.i.i" unwind label %bb.cr, !noalias !6464

"._ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17hf1963ec138bb5c2aE.exit.i.i_crit_edge.i.i.i.i.i.i": ; preds = %bb.cs
  %.pre.i.i.i.i.i.i = load ptr, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i.i, align 8, !alias.scope !6459, !noalias !6429
  br label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17hf1963ec138bb5c2aE.exit.i.i.i.i.i.i.i.i"

bb.ct:                                            ; preds = %bb.cr
  %i.ls = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #56, !noalias !6458
  unreachable

.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.i.i.i.i: ; preds = %bb.cg
  %lpad.loopexit.split-lp13.i.i.i.i.i = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i.i.i.i.i

.body.i.i.i.i.i.i:                                ; preds = %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.i.i.i.i, %bb.cr, %bb.cj, %bb.ci
  %eh.lpad-body.i.i.i.i.i.i = phi { ptr, i32 } [ %i.lq, %bb.cr ], [ %i.jx, %bb.ci ], [ %i.jx, %bb.cj ], [ %lpad.loopexit.split-lp13.i.i.i.i.i, %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.i.i.i.i ]
  invoke fastcc void @"_ZN4core3ptr160drop_in_place$LT$alloc..vec..Vec$LT$$LP$meilisearch_types..index_uid_pattern..IndexUidPattern$C$meilisearch_types..tasks..DetailsExportIndexSettings$RP$$GT$$GT$17hf2a3a2187c5a0726E"(ptr noalias noundef align 8 dereferenceable(24) %i.i) #55
          to label %.body183 unwind label %bb.cu, !noalias !6429

bb.cu:                                            ; preds = %.body.i.i.i.i.i.i, %bb.bx
  %i.lt = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #56, !noalias !6429
  unreachable

_ZN4core4iter6traits8iterator8Iterator7collect17h5ed20f7d496585e2E.exit.i.i: ; preds = %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17hf1963ec138bb5c2aE.exit.i.i.i.i.i.i.i.i", %bb.ca
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5.i.i.i.i.i.i.i.i.i.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.j, ptr noundef nonnull align 8 dereferenceable(24) %i.i, i64 24, i1 false), !noalias !6442
  %.phi.trans.insert.i.i = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %.pre.i.i = load i64, ptr %.phi.trans.insert.i.i, align 8, !noalias !6442 ; 6 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !6429
  %i.lu = icmp ult i64 %.pre.i.i, 76861433640456466
  call void @llvm.assume(i1 %i.lu)
  %i.lv = icmp eq i64 %.pre.i.i, 0
  br i1 %i.lv, label %bb.cv, label %bb.cw

bb.cv:                                            ; preds = %_ZN4core4iter6traits8iterator8Iterator7collect17h5ed20f7d496585e2E.exit.i.i, %_ZN4core4iter6traits8iterator8Iterator7collect17h5ed20f7d496585e2E.exit.thread.i.i
  store ptr null, ptr %i.x, align 8, !alias.scope !6465
  %i.lw = getelementptr inbounds nuw i8, ptr %i.x, i64 16
  store i64 0, ptr %i.lw, align 8, !alias.scope !6465
  invoke fastcc void @"_ZN4core3ptr160drop_in_place$LT$alloc..vec..Vec$LT$$LP$meilisearch_types..index_uid_pattern..IndexUidPattern$C$meilisearch_types..tasks..DetailsExportIndexSettings$RP$$GT$$GT$17hf2a3a2187c5a0726E"(ptr noalias noundef align 8 dereferenceable(24) %i.j)
          to label %bb.di unwind label %bb.dg, !noalias !6442

bb.cw:                                            ; preds = %_ZN4core4iter6traits8iterator8Iterator7collect17h5ed20f7d496585e2E.exit.i.i
  %i.lx = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.ly = load ptr, ptr %i.lx, align 8, !noalias !6442, !nonnull !23, !noundef !23 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !6466
  %i.lz = icmp eq i64 %.pre.i.i, 1
  br i1 %i.lz, label %bb.da, label %bb.cx, !prof !51

bb.cx:                                            ; preds = %bb.cw
  %i.ma = icmp samesign ult i64 %.pre.i.i, 21
  br i1 %i.ma, label %bb.cz, label %bb.cy, !prof !51

bb.cy:                                            ; preds = %bb.cx
  invoke void @_ZN4core5slice4sort6stable14driftsort_main17h84772f8b730dda4fE(ptr noalias noundef nonnull align 8 %i.ly, i64 noundef range(i64 1, 76861433640456466) %.pre.i.i, ptr noalias noundef nonnull align 8 dereferenceable(8) %i.b)
          to label %bb.da unwind label %bb.db, !noalias !6442

bb.cz:                                            ; preds = %bb.cx
  call fastcc void @_ZN4core5slice4sort6shared9smallsort25insertion_sort_shift_left17hdd8d9a3158f53e76E(ptr noalias noundef nonnull align 8 %i.ly, i64 noundef range(i64 1, 76861433640456466) %.pre.i.i)
  br label %bb.da

bb.da:                                            ; preds = %bb.cz, %bb.cy, %bb.cw
end_hunk_1
begin_hunk_2_@_ZN17meilisearch_types5tasks15KindWithContent24default_finished_details17h07250cd6a9f22733E:bb.a
  %.pn131 = phi { ptr, i32 } [ %i.fk, %bb.av ], [ %i.fg, %bb.ap ] ; 3 uses
  switch i64 %.sroa.0.0, label %bb.at [
    i64 -9223372036854775808, label %common.resume
    i64 0, label %common.resume
  ]

bb.at:                                            ; preds = %.body
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.6.0) ]
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.6.0, i64 noundef %.sroa.0.0, i64 noundef range(i64 1, -9223372036854775807) 1) #52, !noalias !6634
  br label %common.resume

bb.au:                                            ; preds = %.noexc3.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.ac, ptr noundef nonnull align 8 dereferenceable(56) %i.k, i64 56, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !6628
  %i.fi = getelementptr inbounds nuw i8, ptr %1, i64 112
  %.sroa.4213.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ac, i64 56
  %i.fj = load <2 x i64>, ptr %i.fi, align 8, !alias.scope !6626
  store <2 x i64> %i.fj, ptr %.sroa.4213.0..sroa_idx, align 8
  br label %bb.as

bb.av:                                            ; preds = %bb.as
  %i.fk = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr125drop_in_place$LT$core..option..Option$LT$serde_json..map..Map$LT$alloc..string..String$C$serde_json..value..Value$GT$$GT$$GT$17hbf9de7de7cfbc133E"(ptr noalias noundef align 8 dereferenceable(72) %i.ac) #55
          to label %.body unwind label %bb.ax

bb.aw:                                            ; preds = %bb.as
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 88
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %.sroa.10.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(72) %i.ac, i64 72, i1 false)
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.8.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %i.ab, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ac)
  store i64 9, ptr %0, align 8
  %.sroa.42.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 1, ptr %.sroa.42.0..sroa_idx, align 8
  %.sroa.53.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 0, ptr %.sroa.53.0..sroa_idx, align 8
  %.sroa.64.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 1, ptr %.sroa.64.0..sroa_idx, align 8
  %.sroa.75.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 0, ptr %.sroa.75.0..sroa_idx, align 8
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 64
  store i64 %.sroa.0.0, ptr %.sroa.9.0..sroa_idx, align 8
  %.sroa.9.sroa.4.0..sroa.9.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 72
  store ptr %.sroa.6.0, ptr %.sroa.9.sroa.4.0..sroa.9.0..sroa_idx.sroa_idx, align 8
  %.sroa.9.sroa.5.0..sroa.9.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 80
  store i64 %.sroa.7.0, ptr %.sroa.9.sroa.5.0..sroa.9.0..sroa_idx.sroa_idx, align 8
  br label %bb.ag

bb.ax:                                            ; preds = %bb.av
  %i.fl = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #56
  unreachable

bb.ay:                                            ; preds = %bb.n
  call void @"_ZN60_$LT$alloc..string..String$u20$as$u20$core..clone..Clone$GT$5clone17h123bb51dd192bfa5E"(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.u, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ay, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @106)
  %.sroa.030.0.copyload = load i64, ptr %i.u, align 8
  br label %bb.az

bb.az:                                            ; preds = %bb.n, %bb.ay
  %.sroa.030.0 = phi i64 [ %.sroa.030.0.copyload, %bb.ay ], [ -9223372036854775808, %bb.n ]
  store i64 6, ptr %0, align 8
  %.sroa.426.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.030.0, ptr %.sroa.426.0..sroa_idx, align 8
  %.sroa.426.sroa.4.0..sroa.426.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.426.sroa.4.0..sroa.426.0..sroa_idx.sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %i.aa, i64 16, i1 false)
  %.sroa.527.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 -9223372036854775808, ptr %.sroa.527.0..sroa_idx, align 8
  %.sroa.628.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i64 -9223372036854775808, ptr %.sroa.628.0..sroa_idx, align 8
  br label %bb.ag

bb.ba:                                            ; preds = %bb.o
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v)
  call void @"_ZN60_$LT$alloc..string..String$u20$as$u20$core..clone..Clone$GT$5clone17h123bb51dd192bfa5E"(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.v, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.bb, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @106)
  %.sroa.0184.0.copyload = load i64, ptr %i.v, align 8
  %.sroa.6186.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  %.sroa.6186.0.copyload = load ptr, ptr %.sroa.6186.0..sroa_idx, align 8
  %.sroa.7188.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.v, i64 16
  %.sroa.7188.0.copyload = load i64, ptr %.sroa.7188.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v)
  br label %bb.bb

bb.bb:                                            ; preds = %bb.o, %bb.ba
  %.sroa.7188.0 = phi i64 [ %.sroa.7188.0.copyload, %bb.ba ], [ undef, %bb.o ]
  %.sroa.6186.0 = phi ptr [ %.sroa.6186.0.copyload, %bb.ba ], [ undef, %bb.o ] ; 3 uses
  %.sroa.0184.0 = phi i64 [ %.sroa.0184.0.copyload, %bb.ba ], [ -9223372036854775808, %bb.o ] ; 3 uses
  %i.fm = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 2 uses
  %i.fn = load i64, ptr %i.fm, align 8, !range !27, !noundef !23
  %.not123.not = icmp eq i64 %i.fn, -9223372036854775808
  br i1 %.not123.not, label %.thread, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t)
  invoke void @"_ZN60_$LT$alloc..string..String$u20$as$u20$core..clone..Clone$GT$5clone17h123bb51dd192bfa5E"(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.t, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ba, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @756)
          to label %bb.bf unwind label %bb.be

"_ZN4core3ptr70drop_in_place$LT$core..option..Option$LT$alloc..string..String$GT$$GT$17h872ea489019ac5c6E.exit164": ; preds = %bb.bh, %bb.bg, %bb.bg, %bb.be
  %.pn125 = phi { ptr, i32 } [ %i.fo, %bb.be ], [ %i.fp, %bb.bg ], [ %i.fp, %bb.bg ], [ %i.fp, %bb.bh ] ; 3 uses
  switch i64 %.sroa.0184.0, label %bb.bd [
    i64 -9223372036854775808, label %common.resume
    i64 0, label %common.resume
  ]

bb.bd:                                            ; preds = %"_ZN4core3ptr70drop_in_place$LT$core..option..Option$LT$alloc..string..String$GT$$GT$17h872ea489019ac5c6E.exit164"
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.6186.0) ]
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.6186.0, i64 noundef %.sroa.0184.0, i64 noundef range(i64 1, -9223372036854775807) 1) #52, !noalias !6635
  br label %common.resume

bb.be:                                            ; preds = %bb.bc
  %i.fo = landingpad { ptr, i32 }
          cleanup
  br label %"_ZN4core3ptr70drop_in_place$LT$core..option..Option$LT$alloc..string..String$GT$$GT$17h872ea489019ac5c6E.exit164"

bb.bf:                                            ; preds = %bb.bc
  %.sroa.0190.0.copyload = load i64, ptr %i.t, align 8 ; 3 uses
  %.sroa.6192.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  %.sroa.6192.0.copyload = load ptr, ptr %.sroa.6192.0..sroa_idx, align 8 ; 3 uses
  %.sroa.7194.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  %.sroa.7194.0.copyload = load i64, ptr %.sroa.7194.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s)
  invoke void @"_ZN60_$LT$alloc..string..String$u20$as$u20$core..clone..Clone$GT$5clone17h123bb51dd192bfa5E"(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.s, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.fm, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @106)
          to label %bb.bi unwind label %bb.bg

.thread:                                          ; preds = %bb.bb, %bb.bi
  %.sroa.0190.0220 = phi i64 [ %.sroa.0190.0.copyload, %bb.bi ], [ -9223372036854775808, %bb.bb ]
  %.sroa.6192.0219 = phi ptr [ %.sroa.6192.0.copyload, %bb.bi ], [ undef, %bb.bb ]
  %.sroa.7194.0218 = phi i64 [ %.sroa.7194.0.copyload, %bb.bi ], [ undef, %bb.bb ]
  %.sroa.041.0 = phi i64 [ %.sroa.041.0.copyload, %bb.bi ], [ -9223372036854775808, %bb.bb ]
  store i64 6, ptr %0, align 8
  %.sroa.436.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.0184.0, ptr %.sroa.436.0..sroa_idx, align 8
  %.sroa.436.sroa.4.0..sroa.436.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %.sroa.6186.0, ptr %.sroa.436.sroa.4.0..sroa.436.0..sroa_idx.sroa_idx, align 8
  %.sroa.436.sroa.5.0..sroa.436.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %.sroa.7188.0, ptr %.sroa.436.sroa.5.0..sroa.436.0..sroa_idx.sroa_idx, align 8
  %.sroa.537.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 %.sroa.041.0, ptr %.sroa.537.0..sroa_idx, align 8
  %.sroa.537.sroa.4.0..sroa.537.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.537.sroa.4.0..sroa.537.0..sroa_idx.sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.543, i64 16, i1 false)
  %.sroa.638.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i64 %.sroa.0190.0220, ptr %.sroa.638.0..sroa_idx, align 8
  %.sroa.638.sroa.4.0..sroa.638.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 64
  store ptr %.sroa.6192.0219, ptr %.sroa.638.sroa.4.0..sroa.638.0..sroa_idx.sroa_idx, align 8
  %.sroa.638.sroa.5.0..sroa.638.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 72
  store i64 %.sroa.7194.0218, ptr %.sroa.638.sroa.5.0..sroa.638.0..sroa_idx.sroa_idx, align 8
  br label %bb.ag

bb.bg:                                            ; preds = %bb.bf
  %i.fp = landingpad { ptr, i32 }
          cleanup                                 ; 3 uses
  switch i64 %.sroa.0190.0.copyload, label %bb.bh [
    i64 -9223372036854775808, label %"_ZN4core3ptr70drop_in_place$LT$core..option..Option$LT$alloc..string..String$GT$$GT$17h872ea489019ac5c6E.exit164"
    i64 0, label %"_ZN4core3ptr70drop_in_place$LT$core..option..Option$LT$alloc..string..String$GT$$GT$17h872ea489019ac5c6E.exit164"
  ]

bb.bh:                                            ; preds = %bb.bg
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.6192.0.copyload) ]
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.6192.0.copyload, i64 noundef %.sroa.0190.0.copyload, i64 noundef range(i64 1, -9223372036854775807) 1) #52, !noalias !6636
  br label %"_ZN4core3ptr70drop_in_place$LT$core..option..Option$LT$alloc..string..String$GT$$GT$17h872ea489019ac5c6E.exit164"

bb.bi:                                            ; preds = %bb.bf
  %.sroa.041.0.copyload = load i64, ptr %i.s, align 8
  %.sroa.543.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.543, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.543.0..sroa_idx, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s)
  br label %.thread

bb.bj:                                            ; preds = %bb.w
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r)
  invoke void @"_ZN60_$LT$alloc..string..String$u20$as$u20$core..clone..Clone$GT$5clone17h123bb51dd192bfa5E"(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.r, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ec, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @106)
          to label %bb.df unwind label %bb.de

bb.bk:                                            ; preds = %bb.w, %bb.df
  %.sroa.7200.0 = phi i64 [ %.sroa.7200.0.copyload, %bb.df ], [ undef, %bb.w ]
  %.sroa.6198.0 = phi ptr [ %.sroa.6198.0.copyload, %bb.df ], [ undef, %bb.w ] ; 3 uses
  %.sroa.0196.0 = phi i64 [ %.sroa.0196.0.copyload, %bb.df ], [ -9223372036854775808, %bb.w ] ; 3 uses
  %i.fq = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.fr = load <2 x i64>, ptr %i.fq, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x)
  %i.fs = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.ft = load ptr, ptr %i.fs, align 8, !noundef !23 ; 4 uses
  %.not120 = icmp ne ptr %i.ft, null
  %i.fu = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.fv = load i64, ptr %i.fu, align 8            ; 5 uses
  %i.fw = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.fx = load i64, ptr %i.fw, align 8            ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !6637)
  call void @llvm.experimental.noalias.scope.decl(metadata !6638)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !6639
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !6640
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5.i.i.i.i.i.i.i.i)
  %i.fy = icmp ne i64 %i.fx, 0
  %.not228 = select i1 %.not120, i1 %i.fy, i1 false
  br i1 %.not228, label %bb.bl, label %_ZN4core4iter6traits8iterator8Iterator7collect17hcc7fb88fa1b2f05eE.exit.thread.i.i

bb.bl:                                            ; preds = %bb.bk
  %i.fz = add i64 %i.fx, -1                       ; 4 uses
  %i.ga = icmp eq i64 %i.fv, 0
  br i1 %i.ga, label %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h20a4ab2999dc9765E.exit.i.i.i.i.i", label %.lr.ph.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.preheader:                     ; preds = %bb.bl
  %xtraiter = and i64 %i.fv, 7                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.prol

.lr.ph.i.i.i.i.i.i.prol:                          ; preds = %.lr.ph.i.i.i.i.i.i.preheader, %.lr.ph.i.i.i.i.i.i.prol
  %.sroa.012.015.i.i.i.i.i.i.prol = phi ptr [ %.sroa.012.0.i.i.i.i.i.i.prol, %.lr.ph.i.i.i.i.i.i.prol ], [ %i.ft, %.lr.ph.i.i.i.i.i.i.preheader ]
  %.sroa.011.014.i.i.i.i.i.i.prol = phi i64 [ %i.gc, %.lr.ph.i.i.i.i.i.i.prol ], [ %i.fv, %.lr.ph.i.i.i.i.i.i.preheader ]
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.i.i.i.i.prol ], [ 0, %.lr.ph.i.i.i.i.i.i.preheader ]
  %i.gb = getelementptr inbounds nuw i8, ptr %.sroa.012.015.i.i.i.i.i.i.prol, i64 1160
  %i.gc = add i64 %.sroa.011.014.i.i.i.i.i.i.prol, -1 ; 2 uses
  %.sroa.012.0.i.i.i.i.i.i.prol = load ptr, ptr %i.gb, align 8, !noalias !6641, !nonnull !23, !noundef !23 ; 3 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.prol, !llvm.loop !6528

.lr.ph.i.i.i.i.i.i.prol.loopexit:                 ; preds = %.lr.ph.i.i.i.i.i.i.prol, %.lr.ph.i.i.i.i.i.i.preheader
  %.sroa.012.0.i.i.i.i.i.i.lcssa.unr = phi ptr [ poison, %.lr.ph.i.i.i.i.i.i.preheader ], [ %.sroa.012.0.i.i.i.i.i.i.prol, %.lr.ph.i.i.i.i.i.i.prol ]
  %.sroa.012.015.i.i.i.i.i.i.unr = phi ptr [ %i.ft, %.lr.ph.i.i.i.i.i.i.preheader ], [ %.sroa.012.0.i.i.i.i.i.i.prol, %.lr.ph.i.i.i.i.i.i.prol ]
  %.sroa.011.014.i.i.i.i.i.i.unr = phi i64 [ %i.fv, %.lr.ph.i.i.i.i.i.i.preheader ], [ %i.gc, %.lr.ph.i.i.i.i.i.i.prol ]
  %i.gd = icmp ult i64 %i.fv, 8
  br i1 %i.gd, label %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h20a4ab2999dc9765E.exit.i.i.i.i.i", label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %.lr.ph.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i
  %.sroa.012.015.i.i.i.i.i.i = phi ptr [ %.sroa.012.0.i.i.i.i.i.i.7, %.lr.ph.i.i.i.i.i.i ], [ %.sroa.012.015.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.i.prol.loopexit ]
  %.sroa.011.014.i.i.i.i.i.i = phi i64 [ %i.gm, %.lr.ph.i.i.i.i.i.i ], [ %.sroa.011.014.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.i.prol.loopexit ]
  %i.ge = getelementptr inbounds nuw i8, ptr %.sroa.012.015.i.i.i.i.i.i, i64 1160
  %.sroa.012.0.i.i.i.i.i.i = load ptr, ptr %i.ge, align 8, !noalias !6641, !nonnull !23, !noundef !23
  %i.gf = getelementptr inbounds nuw i8, ptr %.sroa.012.0.i.i.i.i.i.i, i64 1160
  %.sroa.012.0.i.i.i.i.i.i.1 = load ptr, ptr %i.gf, align 8, !noalias !6641, !nonnull !23, !noundef !23
  %i.gg = getelementptr inbounds nuw i8, ptr %.sroa.012.0.i.i.i.i.i.i.1, i64 1160
  %.sroa.012.0.i.i.i.i.i.i.2 = load ptr, ptr %i.gg, align 8, !noalias !6641, !nonnull !23, !noundef !23
  %i.gh = getelementptr inbounds nuw i8, ptr %.sroa.012.0.i.i.i.i.i.i.2, i64 1160
  %.sroa.012.0.i.i.i.i.i.i.3 = load ptr, ptr %i.gh, align 8, !noalias !6641, !nonnull !23, !noundef !23
  %i.gi = getelementptr inbounds nuw i8, ptr %.sroa.012.0.i.i.i.i.i.i.3, i64 1160
  %.sroa.012.0.i.i.i.i.i.i.4 = load ptr, ptr %i.gi, align 8, !noalias !6641, !nonnull !23, !noundef !23
  %i.gj = getelementptr inbounds nuw i8, ptr %.sroa.012.0.i.i.i.i.i.i.4, i64 1160
  %.sroa.012.0.i.i.i.i.i.i.5 = load ptr, ptr %i.gj, align 8, !noalias !6641, !nonnull !23, !noundef !23
  %i.gk = getelementptr inbounds nuw i8, ptr %.sroa.012.0.i.i.i.i.i.i.5, i64 1160
  %.sroa.012.0.i.i.i.i.i.i.6 = load ptr, ptr %i.gk, align 8, !noalias !6641, !nonnull !23, !noundef !23
  %i.gl = getelementptr inbounds nuw i8, ptr %.sroa.012.0.i.i.i.i.i.i.6, i64 1160
  %i.gm = add i64 %.sroa.011.014.i.i.i.i.i.i, -8  ; 2 uses
  %.sroa.012.0.i.i.i.i.i.i.7 = load ptr, ptr %i.gl, align 8, !noalias !6641, !nonnull !23, !noundef !23 ; 2 uses
  %i.gn = icmp eq i64 %i.gm, 0
  br i1 %i.gn, label %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h20a4ab2999dc9765E.exit.i.i.i.i.i", label %.lr.ph.i.i.i.i.i.i

"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h20a4ab2999dc9765E.exit.i.i.i.i.i": ; preds = %.lr.ph.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i, %bb.bl
  %.sroa.05.0.copyload.i.i1.i.i.i.i = phi ptr [ %i.ft, %bb.bl ], [ %.sroa.012.0.i.i.i.i.i.i.lcssa.unr, %.lr.ph.i.i.i.i.i.i.prol.loopexit ], [ %.sroa.012.0.i.i.i.i.i.i.7, %.lr.ph.i.i.i.i.i.i ] ; 4 uses
  %i.go = getelementptr inbounds nuw i8, ptr %.sroa.05.0.copyload.i.i1.i.i.i.i, i64 1154
  %i.gp = load i16, ptr %i.go, align 2, !noalias !6642, !noundef !23
  %.not229 = icmp eq i16 %i.gp, 0
  br i1 %.not229, label %.lr.ph.i.i.i.i2.i.i.i.i, label %.loopexit.i.i.i.i

.lr.ph.i.i.i.i2.i.i.i.i:                          ; preds = %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h20a4ab2999dc9765E.exit.i.i.i.i.i", %bb.bm
  %.sroa.0.038.i.i.i.i.i.i.i.i = phi ptr [ %i.gr, %bb.bm ], [ %.sroa.05.0.copyload.i.i1.i.i.i.i, %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h20a4ab2999dc9765E.exit.i.i.i.i.i" ] ; 2 uses
  %.sroa.5.037.i.i.i.i.i.i.i.i = phi i64 [ %i.gs, %bb.bm ], [ 0, %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h20a4ab2999dc9765E.exit.i.i.i.i.i" ] ; 2 uses
  %i.gq = getelementptr inbounds nuw i8, ptr %.sroa.0.038.i.i.i.i.i.i.i.i, i64 880
  %i.gr = load ptr, ptr %i.gq, align 8, !noalias !6643, !noundef !23 ; 8 uses
  %.not.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.gr, null
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %bb.bp, label %bb.bm

bb.bm:                                            ; preds = %.lr.ph.i.i.i.i2.i.i.i.i
  %i.gs = add i64 %.sroa.5.037.i.i.i.i.i.i.i.i, 1 ; 5 uses
  %i.gt = getelementptr inbounds nuw i8, ptr %.sroa.0.038.i.i.i.i.i.i.i.i, i64 1152
  %i.gu = load i16, ptr %i.gt, align 8, !noalias !6643 ; 3 uses
  %i.gv = getelementptr inbounds nuw i8, ptr %i.gr, i64 1154
  %i.gw = load i16, ptr %i.gv, align 2, !noalias !6642, !noundef !23
  %i.gx = icmp ult i16 %i.gu, %i.gw
  br i1 %i.gx, label %bb.bn, label %.lr.ph.i.i.i.i2.i.i.i.i

bb.bn:                                            ; preds = %bb.bm
  %i.gy = zext i16 %i.gu to i64                   ; 4 uses
  %i.gz = icmp eq i64 %i.gs, 0
  %i.ha = add nuw nsw i64 %i.gy, 1                ; 2 uses
  br i1 %i.gz, label %.loopexit.i.i.i.i, label %bb.bo

bb.bo:                                            ; preds = %bb.bn
  %i.hb = getelementptr inbounds nuw i8, ptr %i.gr, i64 1160
  %i.hc = icmp ult i16 %i.gu, 11
  call void @llvm.assume(i1 %i.hc), !noalias !6644
  %i.hd = getelementptr inbounds nuw [8 x i8], ptr %i.hb, i64 %i.ha ; 2 uses
  %xtraiter368 = and i64 %i.gs, 7                 ; 2 uses
  %lcmp.mod369.not = icmp eq i64 %xtraiter368, 0
  br i1 %lcmp.mod369.not, label %.prol.loopexit, label %.prol.preheader

.prol.preheader:                                  ; preds = %bb.bo, %.prol.preheader
  %.pn30.in.i.i.i.i.i.i.i.i.prol = phi ptr [ %i.he, %.prol.preheader ], [ %i.hd, %bb.bo ]
  %.pn28.in.i.i.i.i.i.i.i.i.prol = phi i64 [ %.pn28.i.i.i.i.i.i.i.i.prol, %.prol.preheader ], [ %i.gs, %bb.bo ]
  %prol.iter370 = phi i64 [ %prol.iter370.next, %.prol.preheader ], [ 0, %bb.bo ]
  %.pn28.i.i.i.i.i.i.i.i.prol = add i64 %.pn28.in.i.i.i.i.i.i.i.i.prol, -1 ; 2 uses
  %.pn30.i.i.i.i.i.i.i.i.prol = load ptr, ptr %.pn30.in.i.i.i.i.i.i.i.i.prol, align 8, !noalias !6645, !nonnull !23, !noundef !23 ; 2 uses
  %i.he = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.i.i.i.i.prol, i64 1160 ; 2 uses
  %prol.iter370.next = add i64 %prol.iter370, 1   ; 2 uses
  %prol.iter370.cmp.not = icmp eq i64 %prol.iter370.next, %xtraiter368
  br i1 %prol.iter370.cmp.not, label %.prol.loopexit, label %.prol.preheader, !llvm.loop !6542

.prol.loopexit:                                   ; preds = %.prol.preheader, %bb.bo
  %.pn30.i.i.i.i.i.i.i.i.lcssa.unr = phi ptr [ poison, %bb.bo ], [ %.pn30.i.i.i.i.i.i.i.i.prol, %.prol.preheader ]
  %.pn30.in.i.i.i.i.i.i.i.i.unr = phi ptr [ %i.hd, %bb.bo ], [ %i.he, %.prol.preheader ]
  %.pn28.in.i.i.i.i.i.i.i.i.unr = phi i64 [ %i.gs, %bb.bo ], [ %.pn28.i.i.i.i.i.i.i.i.prol, %.prol.preheader ]
  %i.hf = icmp ult i64 %.sroa.5.037.i.i.i.i.i.i.i.i, 7
  br i1 %i.hf, label %.loopexit.i.i.i.i, label %.new

.new:                                             ; preds = %.prol.loopexit, %.new
  %.pn30.in.i.i.i.i.i.i.i.i = phi ptr [ %i.ho, %.new ], [ %.pn30.in.i.i.i.i.i.i.i.i.unr, %.prol.loopexit ]
  %.pn28.in.i.i.i.i.i.i.i.i = phi i64 [ %.pn28.i.i.i.i.i.i.i.i.7, %.new ], [ %.pn28.in.i.i.i.i.i.i.i.i.unr, %.prol.loopexit ]
  %.pn30.i.i.i.i.i.i.i.i = load ptr, ptr %.pn30.in.i.i.i.i.i.i.i.i, align 8, !noalias !6645, !nonnull !23, !noundef !23
  %i.hg = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.i.i.i.i, i64 1160
  %.pn30.i.i.i.i.i.i.i.i.1 = load ptr, ptr %i.hg, align 8, !noalias !6645, !nonnull !23, !noundef !23
  %i.hh = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.i.i.i.i.1, i64 1160
  %.pn30.i.i.i.i.i.i.i.i.2 = load ptr, ptr %i.hh, align 8, !noalias !6645, !nonnull !23, !noundef !23
  %i.hi = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.i.i.i.i.2, i64 1160
  %.pn30.i.i.i.i.i.i.i.i.3 = load ptr, ptr %i.hi, align 8, !noalias !6645, !nonnull !23, !noundef !23
  %i.hj = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.i.i.i.i.3, i64 1160
  %.pn30.i.i.i.i.i.i.i.i.4 = load ptr, ptr %i.hj, align 8, !noalias !6645, !nonnull !23, !noundef !23
  %i.hk = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.i.i.i.i.4, i64 1160
  %.pn30.i.i.i.i.i.i.i.i.5 = load ptr, ptr %i.hk, align 8, !noalias !6645, !nonnull !23, !noundef !23
  %i.hl = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.i.i.i.i.5, i64 1160
  %.pn30.i.i.i.i.i.i.i.i.6 = load ptr, ptr %i.hl, align 8, !noalias !6645, !nonnull !23, !noundef !23
  %i.hm = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.i.i.i.i.6, i64 1160
  %.pn28.i.i.i.i.i.i.i.i.7 = add i64 %.pn28.in.i.i.i.i.i.i.i.i, -8 ; 2 uses
  %.pn30.i.i.i.i.i.i.i.i.7 = load ptr, ptr %i.hm, align 8, !noalias !6645, !nonnull !23, !noundef !23 ; 2 uses
  %i.hn = icmp eq i64 %.pn28.i.i.i.i.i.i.i.i.7, 0
  %i.ho = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.i.i.i.i.7, i64 1160
  br i1 %i.hn, label %.loopexit.i.i.i.i, label %.new

bb.bp:                                            ; preds = %.lr.ph.i.i.i.i2.i.i.i.i
  invoke void @_ZN4core6option13unwrap_failed17h13b3e6f702cb1c04E(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1126) #57
          to label %.noexc.i.i3.i.i.i.i unwind label %bb.bq, !noalias !6646

.noexc.i.i3.i.i.i.i:                              ; preds = %bb.bp
  unreachable

bb.bq:                                            ; preds = %bb.bp
  %i.hp = landingpad { ptr, i32 }
          cleanup                                 ; 0 uses
  call void @llvm.trap(), !noalias !6644
  unreachable

.loopexit.i.i.i.i:                                ; preds = %.prol.loopexit, %.new, %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h20a4ab2999dc9765E.exit.i.i.i.i.i", %bb.bn
  %.sroa.0.0.ph.i.i.i.i.i.i.i226 = phi ptr [ %i.gr, %bb.bn ], [ %.sroa.05.0.copyload.i.i1.i.i.i.i, %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h20a4ab2999dc9765E.exit.i.i.i.i.i" ], [ %i.gr, %.new ], [ %i.gr, %.prol.loopexit ] ; 3 uses
  %.sroa.6.sroa.4.0.ph.i.i.i.i.i.i.i225 = phi i64 [ %i.gy, %bb.bn ], [ 0, %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h20a4ab2999dc9765E.exit.i.i.i.i.i" ], [ %i.gy, %.new ], [ %i.gy, %.prol.loopexit ] ; 3 uses
  %.sroa.7.0.i.i.i.i.i.i.i = phi i64 [ %i.ha, %bb.bn ], [ 1, %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h20a4ab2999dc9765E.exit.i.i.i.i.i" ], [ 0, %.new ], [ 0, %.prol.loopexit ] ; 3 uses
  %.sroa.07.0.i.i.i.i.i.i.i = phi ptr [ %i.gr, %bb.bn ], [ %.sroa.05.0.copyload.i.i1.i.i.i.i, %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h20a4ab2999dc9765E.exit.i.i.i.i.i" ], [ %.pn30.i.i.i.i.i.i.i.i.lcssa.unr, %.prol.loopexit ], [ %.pn30.i.i.i.i.i.i.i.i.7, %.new ] ; 4 uses
  %i.hq = getelementptr inbounds nuw i8, ptr %.sroa.0.0.ph.i.i.i.i.i.i.i226, i64 888
  %i.hr = icmp samesign ult i64 %.sroa.6.sroa.4.0.ph.i.i.i.i.i.i.i225, 11
  call void @llvm.assume(i1 %i.hr), !noalias !6644
  %i.hs = getelementptr inbounds nuw [24 x i8], ptr %i.hq, i64 %.sroa.6.sroa.4.0.ph.i.i.i.i.i.i.i225
  %i.ht = getelementptr inbounds nuw [80 x i8], ptr %.sroa.0.0.ph.i.i.i.i.i.i.i226, i64 %.sroa.6.sroa.4.0.ph.i.i.i.i.i.i.i225 ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.ph.i.i.i.i.i.i.i226) ]
  call void @llvm.experimental.noalias.scope.decl(metadata !6647)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !6648
  invoke void @"_ZN60_$LT$alloc..string..String$u20$as$u20$core..clone..Clone$GT$5clone17h123bb51dd192bfa5E"(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.g, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.hs, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @754)
          to label %.noexc171 unwind label %bb.dg, !noalias !6649

.noexc171:                                        ; preds = %.loopexit.i.i.i.i
  %.sroa.0.0.copyload.i.i.i.i.i.i.i.i = load i64, ptr %i.g, align 8, !noalias !6648 ; 5 uses
  %.sroa.52.0..sroa_idx.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %.sroa.52.0.copyload.i.i.i.i.i.i.i.i = load ptr, ptr %.sroa.52.0..sroa_idx.i.i.i.i.i.i.i.i, align 8, !noalias !6648 ; 4 uses
  %.sroa.6.0..sroa_idx.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %.sroa.6.0.copyload.i.i.i.i.i.i.i.i = load i64, ptr %.sroa.6.0..sroa_idx.i.i.i.i.i.i.i.i, align 8, !noalias !6648
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !6648
  %i.hu = load i64, ptr %i.ht, align 8, !range !36, !alias.scope !6647, !noalias !6650, !noundef !23
  %.not.i.i.i.i.i.i.i.i = icmp eq i64 %i.hu, -9223372036854775803
  br i1 %.not.i.i.i.i.i.i.i.i, label %bb.by, label %bb.br

bb.br:                                            ; preds = %.noexc171
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !6648
  invoke fastcc void @"_ZN63_$LT$serde_json..value..Value$u20$as$u20$core..clone..Clone$GT$5clone17h065ff73d52a9cb78E"(ptr noalias noundef align 8 captures(address) dereferenceable(72) %i.f, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(80) %i.ht)
          to label %bb.bu unwind label %bb.bs, !noalias !6651

bb.bs:                                            ; preds = %bb.br
  %i.hv = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.hw = icmp eq i64 %.sroa.0.0.copyload.i.i.i.i.i.i.i.i, 0
  br i1 %i.hw, label %.body172, label %bb.bt

bb.bt:                                            ; preds = %bb.bs
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.52.0.copyload.i.i.i.i.i.i.i.i) ]
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.52.0.copyload.i.i.i.i.i.i.i.i, i64 noundef %.sroa.0.0.copyload.i.i.i.i.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #52, !noalias !6652
  br label %.body172

bb.bu:                                            ; preds = %bb.br
  %.sroa.04.0.copyload.i.i.i.i.i.i.i.i = load i64, ptr %i.f, align 8, !noalias !6648
  %.sroa.5.0..sroa_idx6.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.5.i.i.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(64) %.sroa.5.0..sroa_idx6.i.i.i.i.i.i.i.i, i64 64, i1 false), !noalias !6650
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !6648
  br label %bb.by

_ZN4core4iter6traits8iterator8Iterator7collect17hcc7fb88fa1b2f05eE.exit.thread.i.i: ; preds = %bb.bk
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5.i.i.i.i.i.i.i.i)
  store i64 0, ptr %i.j, align 8, !noalias !6653
  %i.hx = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %i.hx, align 8, !noalias !6653
  %i.hy = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  store i64 0, ptr %i.hy, align 8, !noalias !6653
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !6640
  br label %bb.cv

bb.bv:                                            ; preds = %bb.bz
  %i.hz = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ia = icmp eq i64 %.sroa.0.0.copyload.i.i.i.i.i.i.i.i, 0
  br i1 %i.ia, label %"_ZN4core3ptr74drop_in_place$LT$meilisearch_types..index_uid_pattern..IndexUidPattern$GT$17h92e42dae38041cddE.exit.i.i.i.i.i.i", label %bb.bw

bb.bw:                                            ; preds = %bb.bv
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.52.0.copyload.i.i.i.i.i.i.i.i, i64 noundef %.sroa.0.0.copyload.i.i.i.i.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #52, !noalias !6654
  br label %"_ZN4core3ptr74drop_in_place$LT$meilisearch_types..index_uid_pattern..IndexUidPattern$GT$17h92e42dae38041cddE.exit.i.i.i.i.i.i"

"_ZN4core3ptr74drop_in_place$LT$meilisearch_types..index_uid_pattern..IndexUidPattern$GT$17h92e42dae38041cddE.exit.i.i.i.i.i.i": ; preds = %bb.bw, %bb.bv
  %i.ib = icmp eq i64 %.sroa.04.0.i.i.i.i.i.i.i.i, -9223372036854775803
  br i1 %i.ib, label %.body172, label %bb.bx

bb.bx:                                            ; preds = %"_ZN4core3ptr74drop_in_place$LT$meilisearch_types..index_uid_pattern..IndexUidPattern$GT$17h92e42dae38041cddE.exit.i.i.i.i.i.i"
  invoke fastcc void @"_ZN4core3ptr45drop_in_place$LT$serde_json..value..Value$GT$17h2555f1380cedc520E"(ptr noalias noundef nonnull readonly align 8 dereferenceable(80) %.sroa.102.0..sroa_idx.i.i.i.i.i.i)
          to label %.body172 unwind label %bb.cu, !noalias !6640

bb.by:                                            ; preds = %bb.bu, %.noexc171
  %.sroa.04.0.i.i.i.i.i.i.i.i = phi i64 [ %.sroa.04.0.copyload.i.i.i.i.i.i.i.i, %bb.bu ], [ -9223372036854775803, %.noexc171 ] ; 2 uses
  %i.ic = getelementptr inbounds nuw i8, ptr %i.ht, i64 72
  %i.id = load i8, ptr %i.ic, align 8, !range !37, !alias.scope !6647, !noalias !6650, !noundef !23
  %.sroa.11.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 48
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !6640
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.11.0..sroa_idx.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(64) %.sroa.5.i.i.i.i.i.i.i.i, i64 64, i1 false), !noalias !6640
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5.i.i.i.i.i.i.i.i)
  store i64 %.sroa.0.0.copyload.i.i.i.i.i.i.i.i, ptr %i.h, align 8, !noalias !6640
  %.sroa.5.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  store ptr %.sroa.52.0.copyload.i.i.i.i.i.i.i.i, ptr %.sroa.5.0..sroa_idx.i.i.i.i.i.i, align 8, !noalias !6640
  %.sroa.6.0..sroa_idx1.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  store i64 %.sroa.6.0.copyload.i.i.i.i.i.i.i.i, ptr %.sroa.6.0..sroa_idx1.i.i.i.i.i.i, align 8, !noalias !6640
  %.sroa.7.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  store i64 0, ptr %.sroa.7.0..sroa_idx.i.i.i.i.i.i, align 8, !noalias !6640
  %.sroa.102.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 40 ; 2 uses
  store i64 %.sroa.04.0.i.i.i.i.i.i.i.i, ptr %.sroa.102.0..sroa_idx.i.i.i.i.i.i, align 8, !noalias !6640
  %.sroa.12.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 112
  store i8 %i.id, ptr %.sroa.12.0..sroa_idx.i.i.i.i.i.i, align 8, !noalias !6640
  %i.ie = call i64 @llvm.uadd.sat.i64(i64 %i.fz, i64 1)
  %.sroa.0.0.i.i.i.i.i.i.i = call noundef i64 @llvm.umax.i64(i64 %i.ie, i64 4) ; 3 uses
  %i.if = mul i64 %.sroa.0.0.i.i.i.i.i.i.i, 120   ; 3 uses
  %or.cond.i.i.i.i.i.i.i.i.i = icmp ugt i64 %i.fz, 76861433640456464
  br i1 %or.cond.i.i.i.i.i.i.i.i.i, label %bb.bz, label %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i.i.i, !prof !32

_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i.i.i: ; preds = %bb.by
  %i.ig = icmp eq i64 %i.if, 0
  br i1 %i.ig, label %bb.ca, label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h2c5e185936086779E.exit.i.i.i.i.i.i.i.i"

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h2c5e185936086779E.exit.i.i.i.i.i.i.i.i": ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i.i.i
  call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #52, !noalias !6655
  %i.ih = call noundef align 8 ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef %i.if, i64 noundef range(i64 1, 9) 8) #52, !noalias !6655 ; 2 uses
  %i.ii = icmp eq ptr %i.ih, null
  br i1 %i.ii, label %bb.bz, label %bb.ca

bb.bz:                                            ; preds = %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h2c5e185936086779E.exit.i.i.i.i.i.i.i.i", %bb.by
  %.sroa.4.0.ph.i.i.i.i.i.i.i = phi i64 [ 8, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h2c5e185936086779E.exit.i.i.i.i.i.i.i.i" ], [ 0, %bb.by ]
  invoke void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef %.sroa.4.0.ph.i.i.i.i.i.i.i, i64 %i.if, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @1063) #57
          to label %.noexc.i.i.i.i.i.i unwind label %bb.bv, !noalias !6640

.noexc.i.i.i.i.i.i:                               ; preds = %bb.bz
  unreachable

bb.ca:                                            ; preds = %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h2c5e185936086779E.exit.i.i.i.i.i.i.i.i", %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i.i.i
  %.sroa.10.0.i.i.i.i.i.i.i = phi ptr [ inttoptr (i64 8 to ptr), %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i.i.i ], [ %i.ih, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h2c5e185936086779E.exit.i.i.i.i.i.i.i.i" ] ; 3 uses
  %.sroa.4.0.i.i.i.i.i.i.i = phi i64 [ 0, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i.i.i ], [ %.sroa.0.0.i.i.i.i.i.i.i, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h2c5e185936086779E.exit.i.i.i.i.i.i.i.i" ] ; 2 uses
  %i.ij = icmp ule i64 %.sroa.0.0.i.i.i.i.i.i.i, %.sroa.4.0.i.i.i.i.i.i.i
  call void @llvm.assume(i1 %i.ij)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(120) %.sroa.10.0.i.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(120) %i.h, i64 120, i1 false), !noalias !6640
  store i64 %.sroa.4.0.i.i.i.i.i.i.i, ptr %i.i, align 8, !noalias !6640
  %.sroa.4.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.i, i64 8 ; 2 uses
  store ptr %.sroa.10.0.i.i.i.i.i.i.i, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i.i, align 8, !noalias !6640
  %.sroa.6.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.i, i64 16 ; 2 uses
  store i64 1, ptr %.sroa.6.0..sroa_idx.i.i.i.i.i.i, align 8, !noalias !6640
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !6640
  call void @llvm.experimental.noalias.scope.decl(metadata !6656)
  call void @llvm.experimental.noalias.scope.decl(metadata !6657)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5.i.i.i.i.i.i.i.i.i.i)
  %i.ik = icmp eq i64 %i.fz, 0
  br i1 %i.ik, label %_ZN4core4iter6traits8iterator8Iterator7collect17hcc7fb88fa1b2f05eE.exit.i.i, label %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h20a4ab2999dc9765E.exit.i19.i.i.i.i.i.i"

"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h20a4ab2999dc9765E.exit.i19.i.i.i.i.i.i": ; preds = %bb.ca
  %i.il = getelementptr inbounds nuw i8, ptr %.sroa.07.0.i.i.i.i.i.i.i, i64 1154
  %i.im = load i16, ptr %i.il, align 2, !noalias !6658, !noundef !23
  %i.in = zext i16 %i.im to i64
  %i.io = icmp samesign ult i64 %.sroa.7.0.i.i.i.i.i.i.i, %i.in
  br i1 %i.io, label %.thread.i.i.i.i, label %.lr.ph.i.i.i.i25.i.i.i.i.i.i

.thread.i.i.i.i:                                  ; preds = %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h20a4ab2999dc9765E.exit.i19.i.i.i.i.i.i"
  %i.ip = add nuw nsw i64 %.sroa.7.0.i.i.i.i.i.i.i, 1
  br label %.lr.ph.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i25.i.i.i.i.i.i:                     ; preds = %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h20a4ab2999dc9765E.exit.i19.i.i.i.i.i.i", %bb.cb
  %.sroa.0.038.i.i.i.i26.i.i.i.i.i.i = phi ptr [ %i.ir, %bb.cb ], [ %.sroa.07.0.i.i.i.i.i.i.i, %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h20a4ab2999dc9765E.exit.i19.i.i.i.i.i.i" ] ; 2 uses
  %.sroa.5.037.i.i.i.i27.i.i.i.i.i.i = phi i64 [ %i.is, %bb.cb ], [ 0, %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h20a4ab2999dc9765E.exit.i19.i.i.i.i.i.i" ] ; 2 uses
  %i.iq = getelementptr inbounds nuw i8, ptr %.sroa.0.038.i.i.i.i26.i.i.i.i.i.i, i64 880
  %i.ir = load ptr, ptr %i.iq, align 8, !noalias !6659, !noundef !23 ; 8 uses
  %.not.i.i.i.i.i28.i.i.i.i.i.i = icmp eq ptr %i.ir, null
  br i1 %.not.i.i.i.i.i28.i.i.i.i.i.i, label %bb.ce, label %bb.cb

bb.cb:                                            ; preds = %.lr.ph.i.i.i.i25.i.i.i.i.i.i
  %i.is = add i64 %.sroa.5.037.i.i.i.i27.i.i.i.i.i.i, 1 ; 5 uses
  %i.it = getelementptr inbounds nuw i8, ptr %.sroa.0.038.i.i.i.i26.i.i.i.i.i.i, i64 1152
  %i.iu = load i16, ptr %i.it, align 8, !noalias !6659 ; 3 uses
  %i.iv = getelementptr inbounds nuw i8, ptr %i.ir, i64 1154
  %i.iw = load i16, ptr %i.iv, align 2, !noalias !6658, !noundef !23
  %i.ix = icmp ult i16 %i.iu, %i.iw
  br i1 %i.ix, label %bb.cc, label %.lr.ph.i.i.i.i25.i.i.i.i.i.i

bb.cc:                                            ; preds = %bb.cb
  %i.iy = zext i16 %i.iu to i64                   ; 4 uses
  %i.iz = icmp eq i64 %i.is, 0
  %i.ja = add nuw nsw i64 %i.iy, 1                ; 2 uses
  br i1 %i.iz, label %.lr.ph.i.i.i.i.i.i.i.i, label %bb.cd

bb.cd:                                            ; preds = %bb.cc
  %i.jb = getelementptr inbounds nuw i8, ptr %i.ir, i64 1160
  %i.jc = icmp ult i16 %i.iu, 11
  call void @llvm.assume(i1 %i.jc), !noalias !6660
  %i.jd = getelementptr inbounds nuw [8 x i8], ptr %i.jb, i64 %i.ja ; 2 uses
  %xtraiter375 = and i64 %i.is, 7                 ; 2 uses
  %lcmp.mod376.not = icmp eq i64 %xtraiter375, 0
  br i1 %lcmp.mod376.not, label %.prol.loopexit372, label %.prol.preheader371

.prol.preheader371:                               ; preds = %bb.cd, %.prol.preheader371
  %.pn30.in.i.i.i.i33.i.i.i.i.i.i.prol = phi ptr [ %i.je, %.prol.preheader371 ], [ %i.jd, %bb.cd ]
  %.pn28.in.i.i.i.i34.i.i.i.i.i.i.prol = phi i64 [ %.pn28.i.i.i.i35.i.i.i.i.i.i.prol, %.prol.preheader371 ], [ %i.is, %bb.cd ]
  %prol.iter377 = phi i64 [ %prol.iter377.next, %.prol.preheader371 ], [ 0, %bb.cd ]
  %.pn28.i.i.i.i35.i.i.i.i.i.i.prol = add i64 %.pn28.in.i.i.i.i34.i.i.i.i.i.i.prol, -1 ; 2 uses
  %.pn30.i.i.i.i36.i.i.i.i.i.i.prol = load ptr, ptr %.pn30.in.i.i.i.i33.i.i.i.i.i.i.prol, align 8, !noalias !6661, !nonnull !23, !noundef !23 ; 2 uses
  %i.je = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i36.i.i.i.i.i.i.prol, i64 1160 ; 2 uses
  %prol.iter377.next = add i64 %prol.iter377, 1   ; 2 uses
  %prol.iter377.cmp.not = icmp eq i64 %prol.iter377.next, %xtraiter375
  br i1 %prol.iter377.cmp.not, label %.prol.loopexit372, label %.prol.preheader371, !llvm.loop !6579

.prol.loopexit372:                                ; preds = %.prol.preheader371, %bb.cd
  %.pn30.i.i.i.i36.i.i.i.i.i.i.lcssa.unr = phi ptr [ poison, %bb.cd ], [ %.pn30.i.i.i.i36.i.i.i.i.i.i.prol, %.prol.preheader371 ]
  %.pn30.in.i.i.i.i33.i.i.i.i.i.i.unr = phi ptr [ %i.jd, %bb.cd ], [ %i.je, %.prol.preheader371 ]
  %.pn28.in.i.i.i.i34.i.i.i.i.i.i.unr = phi i64 [ %i.is, %bb.cd ], [ %.pn28.i.i.i.i35.i.i.i.i.i.i.prol, %.prol.preheader371 ]
  %i.jf = icmp ult i64 %.sroa.5.037.i.i.i.i27.i.i.i.i.i.i, 7
  br i1 %i.jf, label %.lr.ph.i.i.i.i.i.i.i.i, label %.new373

.new373:                                          ; preds = %.prol.loopexit372, %.new373
  %.pn30.in.i.i.i.i33.i.i.i.i.i.i = phi ptr [ %i.jo, %.new373 ], [ %.pn30.in.i.i.i.i33.i.i.i.i.i.i.unr, %.prol.loopexit372 ]
  %.pn28.in.i.i.i.i34.i.i.i.i.i.i = phi i64 [ %.pn28.i.i.i.i35.i.i.i.i.i.i.7, %.new373 ], [ %.pn28.in.i.i.i.i34.i.i.i.i.i.i.unr, %.prol.loopexit372 ]
  %.pn30.i.i.i.i36.i.i.i.i.i.i = load ptr, ptr %.pn30.in.i.i.i.i33.i.i.i.i.i.i, align 8, !noalias !6661, !nonnull !23, !noundef !23
  %i.jg = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i36.i.i.i.i.i.i, i64 1160
  %.pn30.i.i.i.i36.i.i.i.i.i.i.1 = load ptr, ptr %i.jg, align 8, !noalias !6661, !nonnull !23, !noundef !23
  %i.jh = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i36.i.i.i.i.i.i.1, i64 1160
  %.pn30.i.i.i.i36.i.i.i.i.i.i.2 = load ptr, ptr %i.jh, align 8, !noalias !6661, !nonnull !23, !noundef !23
  %i.ji = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i36.i.i.i.i.i.i.2, i64 1160
  %.pn30.i.i.i.i36.i.i.i.i.i.i.3 = load ptr, ptr %i.ji, align 8, !noalias !6661, !nonnull !23, !noundef !23
  %i.jj = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i36.i.i.i.i.i.i.3, i64 1160
  %.pn30.i.i.i.i36.i.i.i.i.i.i.4 = load ptr, ptr %i.jj, align 8, !noalias !6661, !nonnull !23, !noundef !23
  %i.jk = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i36.i.i.i.i.i.i.4, i64 1160
  %.pn30.i.i.i.i36.i.i.i.i.i.i.5 = load ptr, ptr %i.jk, align 8, !noalias !6661, !nonnull !23, !noundef !23
  %i.jl = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i36.i.i.i.i.i.i.5, i64 1160
  %.pn30.i.i.i.i36.i.i.i.i.i.i.6 = load ptr, ptr %i.jl, align 8, !noalias !6661, !nonnull !23, !noundef !23
  %i.jm = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i36.i.i.i.i.i.i.6, i64 1160
  %.pn28.i.i.i.i35.i.i.i.i.i.i.7 = add i64 %.pn28.in.i.i.i.i34.i.i.i.i.i.i, -8 ; 2 uses
  %.pn30.i.i.i.i36.i.i.i.i.i.i.7 = load ptr, ptr %i.jm, align 8, !noalias !6661, !nonnull !23, !noundef !23 ; 2 uses
  %i.jn = icmp eq i64 %.pn28.i.i.i.i35.i.i.i.i.i.i.7, 0
  %i.jo = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i36.i.i.i.i.i.i.7, i64 1160
  br i1 %i.jn, label %.lr.ph.i.i.i.i.i.i.i.i, label %.new373

bb.ce:                                            ; preds = %.lr.ph.i.i.i.i25.i.i.i.i.i.i
  invoke void @_ZN4core6option13unwrap_failed17h13b3e6f702cb1c04E(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1126) #57
          to label %.noexc.i.i42.i.i.i.i.i.i unwind label %bb.cf, !noalias !6662

.noexc.i.i42.i.i.i.i.i.i:                         ; preds = %bb.ce
  unreachable

bb.cf:                                            ; preds = %bb.ce
  %i.jp = landingpad { ptr, i32 }
          cleanup                                 ; 0 uses
  call void @llvm.trap(), !noalias !6660
  unreachable

.lr.ph.i.i.i.i.i.i.i.i:                           ; preds = %.prol.loopexit372, %.new373, %bb.cc, %.thread.i.i.i.i
  %.sroa.0.0.ph.i.i.i32.i.i18.i.i.i.i = phi ptr [ %i.ir, %bb.cc ], [ %.sroa.07.0.i.i.i.i.i.i.i, %.thread.i.i.i.i ], [ %i.ir, %.new373 ], [ %i.ir, %.prol.loopexit372 ] ; 2 uses
  %.sroa.6.sroa.4.0.ph.i.i.i30.i.i17.i.i.i.i = phi i64 [ %i.iy, %bb.cc ], [ %.sroa.7.0.i.i.i.i.i.i.i, %.thread.i.i.i.i ], [ %i.iy, %.new373 ], [ %i.iy, %.prol.loopexit372 ] ; 3 uses
  %.sroa.7.0.i.i.i38.i.i.i.i.i.i = phi i64 [ %i.ja, %bb.cc ], [ %i.ip, %.thread.i.i.i.i ], [ 0, %.new373 ], [ 0, %.prol.loopexit372 ]
  %.sroa.07.0.i.i.i39.i.i.i.i.i.i = phi ptr [ %i.ir, %bb.cc ], [ %.sroa.07.0.i.i.i.i.i.i.i, %.thread.i.i.i.i ], [ %.pn30.i.i.i.i36.i.i.i.i.i.i.lcssa.unr, %.prol.loopexit372 ], [ %.pn30.i.i.i.i36.i.i.i.i.i.i.7, %.new373 ]
  %i.jq = getelementptr inbounds nuw i8, ptr %.sroa.0.0.ph.i.i.i32.i.i18.i.i.i.i, i64 888
  %i.jr = icmp samesign ult i64 %.sroa.6.sroa.4.0.ph.i.i.i30.i.i17.i.i.i.i, 11
  call void @llvm.assume(i1 %i.jr), !noalias !6660
  %i.js = getelementptr inbounds nuw [24 x i8], ptr %i.jq, i64 %.sroa.6.sroa.4.0.ph.i.i.i30.i.i17.i.i.i.i
  %i.jt = getelementptr inbounds nuw [80 x i8], ptr %.sroa.0.0.ph.i.i.i32.i.i18.i.i.i.i, i64 %.sroa.6.sroa.4.0.ph.i.i.i30.i.i17.i.i.i.i
  %.sroa.52.0..sroa_idx.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %.sroa.6.0..sroa_idx.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %.sroa.5.0..sroa_idx6.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %.sroa.5.0..sroa_idx.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %.sroa.6.0..sroa_idx.i.i5.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %.sroa.7.0..sroa_idx.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  %.sroa.101.0..sroa_idx.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 40
  %.sroa.11.0..sroa_idx.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 48
  %.sroa.12.0..sroa_idx.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 112
  br label %bb.cg

bb.cg:                                            ; preds = %.noexc8.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i
  %i.ju = phi ptr [ %.sroa.10.0.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i ], [ %i.ke, %.noexc8.i.i.i.i.i.i ]
  %i.jv = phi i64 [ 1, %.lr.ph.i.i.i.i.i.i.i.i ], [ %i.kg, %.noexc8.i.i.i.i.i.i ] ; 4 uses
  %.sroa.19.1.i.i.i.i.i.i = phi i64 [ %.sroa.7.0.i.i.i38.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i ], [ %.sroa.7.0.i.i.i.i.i.i.i.i.i, %.noexc8.i.i.i.i.i.i ] ; 3 uses
  %.sroa.2511.1.in.i.i.i.i.i.i = phi i64 [ %i.fz, %.lr.ph.i.i.i.i.i.i.i.i ], [ %.sroa.2511.1.i.i.i.i.i.i, %.noexc8.i.i.i.i.i.i ]
  %.sroa.57.1.i.i.i.i.i.i = phi ptr [ %.sroa.07.0.i.i.i39.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i ], [ %.sroa.07.0.i.i.i.i.i.i.i.i.i, %.noexc8.i.i.i.i.i.i ] ; 5 uses
  %i.jw = phi ptr [ %i.js, %.lr.ph.i.i.i.i.i.i.i.i ], [ %i.lp, %.noexc8.i.i.i.i.i.i ]
  %.pn46.i.i.i.i.i.i = phi ptr [ %i.jt, %.lr.ph.i.i.i.i.i.i.i.i ], [ %i.lq, %.noexc8.i.i.i.i.i.i ] ; 4 uses
  %.sroa.2511.1.i.i.i.i.i.i = add nsw i64 %.sroa.2511.1.in.i.i.i.i.i.i, -1 ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.pn46.i.i.i.i.i.i) ]
  call void @llvm.experimental.noalias.scope.decl(metadata !6663)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !6664
  invoke void @"_ZN60_$LT$alloc..string..String$u20$as$u20$core..clone..Clone$GT$5clone17h123bb51dd192bfa5E"(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.d, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.jw, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @754)
          to label %.noexc7.i.i.i.i.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.i.i.i.i, !noalias !6665

.noexc7.i.i.i.i.i.i:                              ; preds = %bb.cg
  %.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i.i = load i64, ptr %i.d, align 8, !noalias !6664 ; 3 uses
  %.sroa.52.0.copyload.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %.sroa.52.0..sroa_idx.i.i.i.i.i.i.i.i.i.i, align 8, !noalias !6664 ; 3 uses
  %.sroa.6.0.copyload.i.i.i.i.i.i.i.i.i.i = load i64, ptr %.sroa.6.0..sroa_idx.i.i.i.i.i.i.i.i.i.i, align 8, !noalias !6664
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !6664
  %i.jx = load i64, ptr %.pn46.i.i.i.i.i.i, align 8, !range !36, !alias.scope !6663, !noalias !6666, !noundef !23
  %.not.i.i.i.i.i.i.i.i.i.i = icmp eq i64 %i.jx, -9223372036854775803
  br i1 %.not.i.i.i.i.i.i.i.i.i.i, label %bb.cl, label %bb.ch

bb.ch:                                            ; preds = %.noexc7.i.i.i.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !6664
  invoke fastcc void @"_ZN63_$LT$serde_json..value..Value$u20$as$u20$core..clone..Clone$GT$5clone17h065ff73d52a9cb78E"(ptr noalias noundef align 8 captures(address) dereferenceable(72) %i.c, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(80) %.pn46.i.i.i.i.i.i)
          to label %bb.ck unwind label %bb.ci, !noalias !6667

bb.ci:                                            ; preds = %bb.ch
  %i.jy = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.jz = icmp eq i64 %.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i.i, 0
  br i1 %i.jz, label %.body.i.i.i.i.i.i, label %bb.cj

bb.cj:                                            ; preds = %bb.ci
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.52.0.copyload.i.i.i.i.i.i.i.i.i.i) ]
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.52.0.copyload.i.i.i.i.i.i.i.i.i.i, i64 noundef %.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #52, !noalias !6668
  br label %.body.i.i.i.i.i.i

bb.ck:                                            ; preds = %bb.ch
  %.sroa.04.0.copyload.i.i.i.i.i.i.i.i.i.i = load i64, ptr %i.c, align 8, !noalias !6664
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.5.i.i.i.i.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(64) %.sroa.5.0..sroa_idx6.i.i.i.i.i.i.i.i.i.i, i64 64, i1 false), !noalias !6666
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !6664
  br label %bb.cl

bb.cl:                                            ; preds = %bb.ck, %.noexc7.i.i.i.i.i.i
  %.sroa.04.0.i.i.i.i.i.i.i.i.i.i = phi i64 [ %.sroa.04.0.copyload.i.i.i.i.i.i.i.i.i.i, %bb.ck ], [ -9223372036854775803, %.noexc7.i.i.i.i.i.i ]
  %i.ka = getelementptr inbounds nuw i8, ptr %.pn46.i.i.i.i.i.i, i64 72
  %i.kb = load i8, ptr %i.ka, align 8, !range !37, !alias.scope !6663, !noalias !6666, !noundef !23
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !6669
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.11.0..sroa_idx.i.i.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(64) %.sroa.5.i.i.i.i.i.i.i.i.i.i, i64 64, i1 false), !noalias !6669
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5.i.i.i.i.i.i.i.i.i.i)
  store i64 %.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i.i, ptr %i.e, align 8, !noalias !6669
  store ptr %.sroa.52.0.copyload.i.i.i.i.i.i.i.i.i.i, ptr %.sroa.5.0..sroa_idx.i.i.i.i.i.i.i.i, align 8, !noalias !6669
  store i64 %.sroa.6.0.copyload.i.i.i.i.i.i.i.i.i.i, ptr %.sroa.6.0..sroa_idx.i.i5.i.i.i.i.i.i, align 8, !noalias !6669
  store i64 0, ptr %.sroa.7.0..sroa_idx.i.i.i.i.i.i.i.i, align 8, !noalias !6669
  store i64 %.sroa.04.0.i.i.i.i.i.i.i.i.i.i, ptr %.sroa.101.0..sroa_idx.i.i.i.i.i.i.i.i, align 8, !noalias !6669
  store i8 %i.kb, ptr %.sroa.12.0..sroa_idx.i.i.i.i.i.i.i.i, align 8, !noalias !6669
  %i.kc = load i64, ptr %i.i, align 8, !range !24, !alias.scope !6670, !noalias !6640, !noundef !23
  %i.kd = icmp eq i64 %i.jv, %i.kc
  br i1 %i.kd, label %bb.cs, label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17hf1963ec138bb5c2aE.exit.i.i.i.i.i.i.i.i"

"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17hf1963ec138bb5c2aE.exit.i.i.i.i.i.i.i.i": ; preds = %"._ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17hf1963ec138bb5c2aE.exit.i.i_crit_edge.i.i.i.i.i.i", %bb.cl
  %i.ke = phi ptr [ %.pre.i.i.i.i.i.i, %"._ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17hf1963ec138bb5c2aE.exit.i.i_crit_edge.i.i.i.i.i.i" ], [ %i.ju, %bb.cl ] ; 2 uses
  %i.kf = getelementptr inbounds nuw [120 x i8], ptr %i.ke, i64 %i.jv
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(120) %i.kf, ptr noundef nonnull align 8 dereferenceable(120) %i.e, i64 120, i1 false), !noalias !6669
  %i.kg = add nuw nsw i64 %i.jv, 1                ; 2 uses
  store i64 %i.kg, ptr %.sroa.6.0..sroa_idx.i.i.i.i.i.i, align 8, !alias.scope !6670, !noalias !6640
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !6669
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5.i.i.i.i.i.i.i.i.i.i)
  %i.kh = icmp eq i64 %.sroa.2511.1.i.i.i.i.i.i, 0
  br i1 %i.kh, label %_ZN4core4iter6traits8iterator8Iterator7collect17hcc7fb88fa1b2f05eE.exit.i.i, label %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h20a4ab2999dc9765E.exit.i.i.i.i.i.i.i"

"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h20a4ab2999dc9765E.exit.i.i.i.i.i.i.i": ; preds = %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17hf1963ec138bb5c2aE.exit.i.i.i.i.i.i.i.i"
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.57.1.i.i.i.i.i.i) ]
  %i.ki = getelementptr inbounds nuw i8, ptr %.sroa.57.1.i.i.i.i.i.i, i64 1154
  %i.kj = load i16, ptr %i.ki, align 2, !noalias !6671, !noundef !23
  %i.kk = zext i16 %i.kj to i64
  %i.kl = icmp ult i64 %.sroa.19.1.i.i.i.i.i.i, %i.kk
  br i1 %i.kl, label %.thread.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i

.thread.i.i.i.i.i.i:                              ; preds = %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h20a4ab2999dc9765E.exit.i.i.i.i.i.i.i"
  %i.km = add nuw nsw i64 %.sroa.19.1.i.i.i.i.i.i, 1
  br label %.noexc8.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i:                       ; preds = %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h20a4ab2999dc9765E.exit.i.i.i.i.i.i.i", %bb.cm
  %.sroa.0.038.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.ko, %bb.cm ], [ %.sroa.57.1.i.i.i.i.i.i, %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h20a4ab2999dc9765E.exit.i.i.i.i.i.i.i" ] ; 2 uses
  %.sroa.5.037.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.kp, %bb.cm ], [ 0, %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h20a4ab2999dc9765E.exit.i.i.i.i.i.i.i" ] ; 2 uses
  %i.kn = getelementptr inbounds nuw i8, ptr %.sroa.0.038.i.i.i.i.i.i.i.i.i.i, i64 880
  %i.ko = load ptr, ptr %i.kn, align 8, !noalias !6672, !noundef !23 ; 8 uses
  %.not.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.ko, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i, label %bb.cp, label %bb.cm

bb.cm:                                            ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i
  %i.kp = add i64 %.sroa.5.037.i.i.i.i.i.i.i.i.i.i, 1 ; 5 uses
  %i.kq = getelementptr inbounds nuw i8, ptr %.sroa.0.038.i.i.i.i.i.i.i.i.i.i, i64 1152
  %i.kr = load i16, ptr %i.kq, align 8, !noalias !6672 ; 3 uses
  %i.ks = getelementptr inbounds nuw i8, ptr %i.ko, i64 1154
  %i.kt = load i16, ptr %i.ks, align 2, !noalias !6671, !noundef !23
  %i.ku = icmp ult i16 %i.kr, %i.kt
  br i1 %i.ku, label %bb.cn, label %.lr.ph.i.i.i.i.i.i.i.i.i.i

bb.cn:                                            ; preds = %bb.cm
  %i.kv = zext i16 %i.kr to i64                   ; 4 uses
  %i.kw = icmp eq i64 %i.kp, 0
  %i.kx = add nuw nsw i64 %i.kv, 1                ; 2 uses
  br i1 %i.kw, label %.noexc8.i.i.i.i.i.i, label %bb.co

bb.co:                                            ; preds = %bb.cn
  %i.ky = getelementptr inbounds nuw i8, ptr %i.ko, i64 1160
  %i.kz = icmp ult i16 %i.kr, 11
  call void @llvm.assume(i1 %i.kz), !noalias !6660
  %i.la = getelementptr inbounds nuw [8 x i8], ptr %i.ky, i64 %i.kx ; 2 uses
  %xtraiter382 = and i64 %i.kp, 7                 ; 2 uses
  %lcmp.mod383.not = icmp eq i64 %xtraiter382, 0
  br i1 %lcmp.mod383.not, label %.prol.loopexit379, label %.prol.preheader378

.prol.preheader378:                               ; preds = %bb.co, %.prol.preheader378
  %.pn30.in.i.i.i.i.i.i.i.i.i.i.prol = phi ptr [ %i.lb, %.prol.preheader378 ], [ %i.la, %bb.co ]
  %.pn28.in.i.i.i.i.i.i.i.i.i.i.prol = phi i64 [ %.pn28.i.i.i.i.i.i.i.i.i.i.prol, %.prol.preheader378 ], [ %i.kp, %bb.co ]
  %prol.iter384 = phi i64 [ %prol.iter384.next, %.prol.preheader378 ], [ 0, %bb.co ]
  %.pn28.i.i.i.i.i.i.i.i.i.i.prol = add i64 %.pn28.in.i.i.i.i.i.i.i.i.i.i.prol, -1 ; 2 uses
  %.pn30.i.i.i.i.i.i.i.i.i.i.prol = load ptr, ptr %.pn30.in.i.i.i.i.i.i.i.i.i.i.prol, align 8, !noalias !6673, !nonnull !23, !noundef !23 ; 2 uses
  %i.lb = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.i.i.i.i.i.i.prol, i64 1160 ; 2 uses
  %prol.iter384.next = add i64 %prol.iter384, 1   ; 2 uses
  %prol.iter384.cmp.not = icmp eq i64 %prol.iter384.next, %xtraiter382
  br i1 %prol.iter384.cmp.not, label %.prol.loopexit379, label %.prol.preheader378, !llvm.loop !6604

.prol.loopexit379:                                ; preds = %.prol.preheader378, %bb.co
  %.pn30.i.i.i.i.i.i.i.i.i.i.lcssa.unr = phi ptr [ poison, %bb.co ], [ %.pn30.i.i.i.i.i.i.i.i.i.i.prol, %.prol.preheader378 ]
  %.pn30.in.i.i.i.i.i.i.i.i.i.i.unr = phi ptr [ %i.la, %bb.co ], [ %i.lb, %.prol.preheader378 ]
  %.pn28.in.i.i.i.i.i.i.i.i.i.i.unr = phi i64 [ %i.kp, %bb.co ], [ %.pn28.i.i.i.i.i.i.i.i.i.i.prol, %.prol.preheader378 ]
  %i.lc = icmp ult i64 %.sroa.5.037.i.i.i.i.i.i.i.i.i.i, 7
  br i1 %i.lc, label %.noexc8.i.i.i.i.i.i, label %.new380

.new380:                                          ; preds = %.prol.loopexit379, %.new380
  %.pn30.in.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.ll, %.new380 ], [ %.pn30.in.i.i.i.i.i.i.i.i.i.i.unr, %.prol.loopexit379 ]
  %.pn28.in.i.i.i.i.i.i.i.i.i.i = phi i64 [ %.pn28.i.i.i.i.i.i.i.i.i.i.7, %.new380 ], [ %.pn28.in.i.i.i.i.i.i.i.i.i.i.unr, %.prol.loopexit379 ]
  %.pn30.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %.pn30.in.i.i.i.i.i.i.i.i.i.i, align 8, !noalias !6673, !nonnull !23, !noundef !23
  %i.ld = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.i.i.i.i.i.i, i64 1160
  %.pn30.i.i.i.i.i.i.i.i.i.i.1 = load ptr, ptr %i.ld, align 8, !noalias !6673, !nonnull !23, !noundef !23
  %i.le = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.i.i.i.i.i.i.1, i64 1160
  %.pn30.i.i.i.i.i.i.i.i.i.i.2 = load ptr, ptr %i.le, align 8, !noalias !6673, !nonnull !23, !noundef !23
  %i.lf = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.i.i.i.i.i.i.2, i64 1160
  %.pn30.i.i.i.i.i.i.i.i.i.i.3 = load ptr, ptr %i.lf, align 8, !noalias !6673, !nonnull !23, !noundef !23
  %i.lg = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.i.i.i.i.i.i.3, i64 1160
  %.pn30.i.i.i.i.i.i.i.i.i.i.4 = load ptr, ptr %i.lg, align 8, !noalias !6673, !nonnull !23, !noundef !23
  %i.lh = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.i.i.i.i.i.i.4, i64 1160
  %.pn30.i.i.i.i.i.i.i.i.i.i.5 = load ptr, ptr %i.lh, align 8, !noalias !6673, !nonnull !23, !noundef !23
  %i.li = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.i.i.i.i.i.i.5, i64 1160
  %.pn30.i.i.i.i.i.i.i.i.i.i.6 = load ptr, ptr %i.li, align 8, !noalias !6673, !nonnull !23, !noundef !23
  %i.lj = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.i.i.i.i.i.i.6, i64 1160
  %.pn28.i.i.i.i.i.i.i.i.i.i.7 = add i64 %.pn28.in.i.i.i.i.i.i.i.i.i.i, -8 ; 2 uses
  %.pn30.i.i.i.i.i.i.i.i.i.i.7 = load ptr, ptr %i.lj, align 8, !noalias !6673, !nonnull !23, !noundef !23 ; 2 uses
  %i.lk = icmp eq i64 %.pn28.i.i.i.i.i.i.i.i.i.i.7, 0
  %i.ll = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.i.i.i.i.i.i.7, i64 1160
  br i1 %i.lk, label %.noexc8.i.i.i.i.i.i, label %.new380

bb.cp:                                            ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i
  invoke void @_ZN4core6option13unwrap_failed17h13b3e6f702cb1c04E(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1126) #57
          to label %.noexc.i.i.i.i.i.i.i.i unwind label %bb.cq, !noalias !6674

.noexc.i.i.i.i.i.i.i.i:                           ; preds = %bb.cp
  unreachable

bb.cq:                                            ; preds = %bb.cp
  %i.lm = landingpad { ptr, i32 }
          cleanup                                 ; 0 uses
  call void @llvm.trap(), !noalias !6660
  unreachable

.noexc8.i.i.i.i.i.i:                              ; preds = %.prol.loopexit379, %.new380, %bb.cn, %.thread.i.i.i.i.i.i
  %.sroa.0.0.ph.i.i.i45.i.i.i.i.i.i = phi ptr [ %i.ko, %bb.cn ], [ %.sroa.57.1.i.i.i.i.i.i, %.thread.i.i.i.i.i.i ], [ %i.ko, %.new380 ], [ %i.ko, %.prol.loopexit379 ] ; 2 uses
  %.sroa.6.sroa.4.0.ph.i.i.i44.i.i.i.i.i.i = phi i64 [ %i.kv, %bb.cn ], [ %.sroa.19.1.i.i.i.i.i.i, %.thread.i.i.i.i.i.i ], [ %i.kv, %.new380 ], [ %i.kv, %.prol.loopexit379 ] ; 3 uses
  %.sroa.7.0.i.i.i.i.i.i.i.i.i = phi i64 [ %i.kx, %bb.cn ], [ %i.km, %.thread.i.i.i.i.i.i ], [ 0, %.new380 ], [ 0, %.prol.loopexit379 ]
  %.sroa.07.0.i.i.i.i.i.i.i.i.i = phi ptr [ %i.ko, %bb.cn ], [ %.sroa.57.1.i.i.i.i.i.i, %.thread.i.i.i.i.i.i ], [ %.pn30.i.i.i.i.i.i.i.i.i.i.lcssa.unr, %.prol.loopexit379 ], [ %.pn30.i.i.i.i.i.i.i.i.i.i.7, %.new380 ]
  %i.ln = getelementptr inbounds nuw i8, ptr %.sroa.0.0.ph.i.i.i45.i.i.i.i.i.i, i64 888
  %i.lo = icmp samesign ult i64 %.sroa.6.sroa.4.0.ph.i.i.i44.i.i.i.i.i.i, 11
  call void @llvm.assume(i1 %i.lo), !noalias !6660
  %i.lp = getelementptr inbounds nuw [24 x i8], ptr %i.ln, i64 %.sroa.6.sroa.4.0.ph.i.i.i44.i.i.i.i.i.i
  %i.lq = getelementptr inbounds nuw [80 x i8], ptr %.sroa.0.0.ph.i.i.i45.i.i.i.i.i.i, i64 %.sroa.6.sroa.4.0.ph.i.i.i44.i.i.i.i.i.i
  br label %bb.cg

bb.cr:                                            ; preds = %bb.cs
  %i.lr = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr137drop_in_place$LT$$LP$meilisearch_types..index_uid_pattern..IndexUidPattern$C$meilisearch_types..tasks..DetailsExportIndexSettings$RP$$GT$17hb88229aaa070dd0dE"(ptr noalias noundef align 8 dereferenceable(120) %i.e) #55
          to label %.body.i.i.i.i.i.i unwind label %bb.ct, !noalias !6669

bb.cs:                                            ; preds = %bb.cl
  %i.ls = call i64 @llvm.uadd.sat.i64(i64 %.sroa.2511.1.i.i.i.i.i.i, i64 1)
  invoke fastcc void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$7reserve21do_reserve_and_handle17h45307a5a03ebcc73E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.i, i64 noundef %i.jv, i64 noundef range(i64 1, 0) %i.ls, i64 noundef 8, i64 noundef 120)
          to label %"._ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17hf1963ec138bb5c2aE.exit.i.i_crit_edge.i.i.i.i.i.i" unwind label %bb.cr, !noalias !6675

"._ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17hf1963ec138bb5c2aE.exit.i.i_crit_edge.i.i.i.i.i.i": ; preds = %bb.cs
  %.pre.i.i.i.i.i.i = load ptr, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i.i, align 8, !alias.scope !6670, !noalias !6640
  br label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17hf1963ec138bb5c2aE.exit.i.i.i.i.i.i.i.i"

bb.ct:                                            ; preds = %bb.cr
  %i.lt = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #56, !noalias !6669
  unreachable

.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.i.i.i.i: ; preds = %bb.cg
  %lpad.loopexit.split-lp13.i.i.i.i.i = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i.i.i.i.i

.body.i.i.i.i.i.i:                                ; preds = %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.i.i.i.i, %bb.cr, %bb.cj, %bb.ci
  %eh.lpad-body.i.i.i.i.i.i = phi { ptr, i32 } [ %i.lr, %bb.cr ], [ %i.jy, %bb.ci ], [ %i.jy, %bb.cj ], [ %lpad.loopexit.split-lp13.i.i.i.i.i, %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.i.i.i.i ]
  invoke fastcc void @"_ZN4core3ptr160drop_in_place$LT$alloc..vec..Vec$LT$$LP$meilisearch_types..index_uid_pattern..IndexUidPattern$C$meilisearch_types..tasks..DetailsExportIndexSettings$RP$$GT$$GT$17hf2a3a2187c5a0726E"(ptr noalias noundef align 8 dereferenceable(24) %i.i) #55
          to label %.body172 unwind label %bb.cu, !noalias !6640

bb.cu:                                            ; preds = %.body.i.i.i.i.i.i, %bb.bx
  %i.lu = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #56, !noalias !6640
  unreachable

_ZN4core4iter6traits8iterator8Iterator7collect17hcc7fb88fa1b2f05eE.exit.i.i: ; preds = %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17hf1963ec138bb5c2aE.exit.i.i.i.i.i.i.i.i", %bb.ca
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5.i.i.i.i.i.i.i.i.i.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.j, ptr noundef nonnull align 8 dereferenceable(24) %i.i, i64 24, i1 false), !noalias !6653
  %.phi.trans.insert.i.i = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %.pre.i.i = load i64, ptr %.phi.trans.insert.i.i, align 8, !noalias !6653 ; 6 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !6640
  %i.lv = icmp ult i64 %.pre.i.i, 76861433640456466
  call void @llvm.assume(i1 %i.lv)
  %i.lw = icmp eq i64 %.pre.i.i, 0
  br i1 %i.lw, label %bb.cv, label %bb.cw

bb.cv:                                            ; preds = %_ZN4core4iter6traits8iterator8Iterator7collect17hcc7fb88fa1b2f05eE.exit.i.i, %_ZN4core4iter6traits8iterator8Iterator7collect17hcc7fb88fa1b2f05eE.exit.thread.i.i
  store ptr null, ptr %i.x, align 8, !alias.scope !6676
  %i.lx = getelementptr inbounds nuw i8, ptr %i.x, i64 16
  store i64 0, ptr %i.lx, align 8, !alias.scope !6676
  invoke fastcc void @"_ZN4core3ptr160drop_in_place$LT$alloc..vec..Vec$LT$$LP$meilisearch_types..index_uid_pattern..IndexUidPattern$C$meilisearch_types..tasks..DetailsExportIndexSettings$RP$$GT$$GT$17hf2a3a2187c5a0726E"(ptr noalias noundef align 8 dereferenceable(24) %i.j)
          to label %bb.di unwind label %bb.dg, !noalias !6653

bb.cw:                                            ; preds = %_ZN4core4iter6traits8iterator8Iterator7collect17hcc7fb88fa1b2f05eE.exit.i.i
  %i.ly = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.lz = load ptr, ptr %i.ly, align 8, !noalias !6653, !nonnull !23, !noundef !23 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !6677
  %i.ma = icmp eq i64 %.pre.i.i, 1
  br i1 %i.ma, label %bb.da, label %bb.cx, !prof !51

bb.cx:                                            ; preds = %bb.cw
  %i.mb = icmp samesign ult i64 %.pre.i.i, 21
  br i1 %i.mb, label %bb.cz, label %bb.cy, !prof !51

bb.cy:                                            ; preds = %bb.cx
  invoke void @_ZN4core5slice4sort6stable14driftsort_main17ha3c65a8bb46fd0bbE(ptr noalias noundef nonnull align 8 %i.lz, i64 noundef range(i64 1, 76861433640456466) %.pre.i.i, ptr noalias noundef nonnull align 8 dereferenceable(8) %i.b)
          to label %bb.da unwind label %bb.db, !noalias !6653

bb.cz:                                            ; preds = %bb.cx
  call fastcc void @_ZN4core5slice4sort6shared9smallsort25insertion_sort_shift_left17h0122afcfd1380e52E(ptr noalias noundef nonnull align 8 %i.lz, i64 noundef range(i64 1, 76861433640456466) %.pre.i.i)
  br label %bb.da

bb.da:                                            ; preds = %bb.cz, %bb.cy, %bb.cw
end_hunk_2
begin_hunk_3_@_ZN17meilisearch_types5tasks15KindWithContent24default_finished_details17h07250cd6a9f22733E:bb.a
  store <2 x i64> %i.fr, ptr %.sroa.462.0..sroa_idx, align 8
  %.sroa.765.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i64 %.sroa.0196.0, ptr %.sroa.765.0..sroa_idx, align 8
  %.sroa.765.sroa.4.0..sroa.765.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 56
  store ptr %.sroa.6198.0, ptr %.sroa.765.sroa.4.0..sroa.765.0..sroa_idx.sroa_idx, align 8
  %.sroa.765.sroa.5.0..sroa.765.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 64
  store i64 %.sroa.7200.0, ptr %.sroa.765.sroa.5.0..sroa.765.0..sroa_idx.sroa_idx, align 8
  br label %bb.ag
}

; Function Attrs: nonlazybind uwtable
define void @_ZN17meilisearch_types5tasks15KindWithContent7indexes17hb7b8618582f64dc2E(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(288) %1) unnamed_addr #1 personality ptr @rust_eh_personality !guid !6784 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 10 uses
  %i.b = alloca [48 x i8], align 8                ; 12 uses
  %i.c = alloca [24 x i8], align 8                ; 8 uses
  %i.d = load i64, ptr %1, align 8, !range !76, !noundef !23 ; 3 uses
  %i.e = icmp ne i64 %i.d, -9223372036854775790
  tail call void @llvm.assume(i1 %i.e)
  %i.f = add nsw i64 %i.d, 9223372036854775807
  %i.g = icmp ugt i64 %i.d, -9223372036854775808
  %i.h = select i1 %i.g, i64 %i.f, i64 17
  switch i64 %i.h, label %bb.b [
    i64 0, label %bb.g
    i64 1, label %bb.g
    i64 2, label %bb.g
    i64 3, label %bb.g
    i64 4, label %bb.g
    i64 5, label %bb.g
    i64 6, label %bb.g
    i64 7, label %bb.g
    i64 8, label %bb.c
    i64 9, label %bb.d
    i64 10, label %bb.e
    i64 11, label %bb.e
    i64 12, label %bb.e
    i64 13, label %bb.e
    i64 14, label %bb.e
    i64 15, label %bb.e
    i64 16, label %bb.g
    i64 17, label %bb.e
    i64 18, label %bb.f
    i64 19, label %bb.f
  ]

bb.b:                                             ; preds = %bb.a
  unreachable

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #52
  %i.i = tail call noundef align 8 dereferenceable_or_null(16) ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef 16, i64 noundef 8) #52 ; 4 uses
  %i.j = icmp eq ptr %i.i, null
  br i1 %i.j, label %bb.h, label %bb.i, !prof !25

bb.d:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.k = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr @"_ZN3std4hash6random11RandomState3new4KEYS29_$u7b$$u7b$constant$u7d$$u7d$28_$u7b$$u7b$closure$u7d$$u7d$3VAL17h3d0bd8071983845cE") ; 5 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 16 ; 2 uses
  %i.m = load i8, ptr %i.l, align 8, !range !37, !noalias !6785, !noundef !23
  %i.n = trunc nuw i8 %i.m to i1
  br i1 %i.n, label %._ZN4core3ops8function6FnOnce9call_once17h509f5781770b379dE.exit_crit_edge.i.i.i.i, label %"_ZN3std3sys12thread_local6native4lazy20Storage$LT$T$C$D$GT$16get_or_init_slow17h9fc7dcac0097dd06E.exit.i.i.i.i", !prof !51

._ZN4core3ops8function6FnOnce9call_once17h509f5781770b379dE.exit_crit_edge.i.i.i.i: ; preds = %bb.d
  %.pre.i.i.i.i = load i64, ptr %i.k, align 8, !noalias !6786
  %.phi.trans.insert.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %.pre1.i.i.i.i = load i64, ptr %.phi.trans.insert.i.i.i.i, align 8, !noalias !6786
  br label %"_ZN87_$LT$hashbrown..map..HashMap$LT$K$C$V$C$S$C$A$GT$$u20$as$u20$core..default..Default$GT$7default17hcdc94e5f3885a038E.exit"

"_ZN3std3sys12thread_local6native4lazy20Storage$LT$T$C$D$GT$16get_or_init_slow17h9fc7dcac0097dd06E.exit.i.i.i.i": ; preds = %bb.d
  %i.o = tail call { i64, i64 } @_ZN3std3sys6random5linux19hashmap_random_keys17he133c8f345d0b53aE(), !noalias !6787 ; 2 uses
  %i.p = extractvalue { i64, i64 } %i.o, 0
  %i.q = extractvalue { i64, i64 } %i.o, 1        ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  store i64 %i.q, ptr %i.r, align 8, !noalias !6787
  store i8 1, ptr %i.l, align 8, !noalias !6787
  br label %"_ZN87_$LT$hashbrown..map..HashMap$LT$K$C$V$C$S$C$A$GT$$u20$as$u20$core..default..Default$GT$7default17hcdc94e5f3885a038E.exit"

"_ZN87_$LT$hashbrown..map..HashMap$LT$K$C$V$C$S$C$A$GT$$u20$as$u20$core..default..Default$GT$7default17hcdc94e5f3885a038E.exit": ; preds = %._ZN4core3ops8function6FnOnce9call_once17h509f5781770b379dE.exit_crit_edge.i.i.i.i, %"_ZN3std3sys12thread_local6native4lazy20Storage$LT$T$C$D$GT$16get_or_init_slow17h9fc7dcac0097dd06E.exit.i.i.i.i"
  %.pre-phi.i = phi i64 [ %.pre1.i.i.i.i, %._ZN4core3ops8function6FnOnce9call_once17h509f5781770b379dE.exit_crit_edge.i.i.i.i ], [ %i.q, %"_ZN3std3sys12thread_local6native4lazy20Storage$LT$T$C$D$GT$16get_or_init_slow17h9fc7dcac0097dd06E.exit.i.i.i.i" ]
  %i.s = phi i64 [ %.pre.i.i.i.i, %._ZN4core3ops8function6FnOnce9call_once17h509f5781770b379dE.exit_crit_edge.i.i.i.i ], [ %i.p, %"_ZN3std3sys12thread_local6native4lazy20Storage$LT$T$C$D$GT$16get_or_init_slow17h9fc7dcac0097dd06E.exit.i.i.i.i" ] ; 2 uses
  %i.t = add i64 %i.s, 1
  store i64 %i.t, ptr %i.k, align 8, !noalias !6786
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.b, ptr noundef nonnull align 8 dereferenceable(32) @23, i64 32, i1 false)
  %.sroa.432.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  store i64 %i.s, ptr %.sroa.432.0..sroa_idx, align 8
  %.sroa.533.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  store i64 %.pre-phi.i, ptr %.sroa.533.0..sroa_idx, align 8
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.v = load ptr, ptr %i.u, align 8, !nonnull !23, !noundef !23 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.x = load i64, ptr %i.w, align 8, !noundef !23 ; 2 uses
  %.idx = mul nuw nsw i64 %i.x, 56
  %i.y = getelementptr inbounds nuw i8, ptr %i.v, i64 %.idx
  %.not74 = icmp eq i64 %i.x, 0
  br i1 %.not74, label %._crit_edge, label %.lr.ph

bb.e:                                             ; preds = %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a
  store i64 0, ptr %0, align 8
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %i.z, align 8
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 0, ptr %i.aa, align 8
  br label %bb.n

bb.f:                                             ; preds = %bb.a, %bb.a
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #52
  %i.ab = tail call noundef align 8 dereferenceable_or_null(16) ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef 16, i64 noundef 8) #52 ; 4 uses
  %i.ac = icmp eq ptr %i.ab, null
  br i1 %i.ac, label %bb.af, label %bb.ag, !prof !25

bb.g:                                             ; preds = %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #52
  %i.ad = tail call noundef align 8 dereferenceable_or_null(16) ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef 16, i64 noundef 8) #52 ; 4 uses
  %i.ae = icmp eq ptr %i.ad, null
  br i1 %i.ae, label %bb.ad, label %bb.ae, !prof !25

bb.h:                                             ; preds = %bb.c
  tail call void @_ZN5alloc5alloc18handle_alloc_error17h8f86e24af4223f3dE(i64 noundef 8, i64 noundef 16) #57
  unreachable

bb.i:                                             ; preds = %bb.c
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ag = load ptr, ptr %i.af, align 8, !nonnull !23, !noundef !23
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.ai = load i64, ptr %i.ah, align 8, !noundef !23
  store ptr %i.ag, ptr %i.i, align 8
  %i.aj = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  store i64 %i.ai, ptr %i.aj, align 8
  store i64 1, ptr %i.c, align 8, !alias.scope !6788
  %i.ak = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 3 uses
  store ptr %i.i, ptr %i.ak, align 8, !alias.scope !6788
  %i.al = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 2 uses
  store i64 1, ptr %i.al, align 8, !alias.scope !6788
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.an = load i64, ptr %i.am, align 8, !range !27, !noundef !23
  %.not16 = icmp eq i64 %i.an, -9223372036854775808
  br i1 %.not16, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ao = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.ap = load ptr, ptr %i.ao, align 8, !nonnull !23, !noundef !23
  %i.aq = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.ar = load i64, ptr %i.aq, align 8, !noundef !23
  invoke void @"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$8grow_one17h19b0ca4e4289fc08E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @764)
          to label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17h9861665d17727bedE.exit" unwind label %bb.l, !noalias !6789

"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17h9861665d17727bedE.exit": ; preds = %bb.j
  %i.as = load ptr, ptr %i.ak, align 8, !alias.scope !6790, !nonnull !23, !noundef !23 ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 16
  store ptr %i.ap, ptr %i.at, align 8, !noalias !6789
  %i.au = getelementptr inbounds nuw i8, ptr %i.as, i64 24
  store i64 %i.ar, ptr %i.au, align 8
  store i64 2, ptr %i.al, align 8, !alias.scope !6790
  br label %bb.k

bb.k:                                             ; preds = %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17h9861665d17727bedE.exit", %bb.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %bb.n

bb.l:                                             ; preds = %bb.j
  %i.av = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.val = load i64, ptr %i.c, align 8             ; 2 uses
  %i.aw = icmp eq i64 %.val, 0
  br i1 %i.aw, label %"_ZN4core3ptr51drop_in_place$LT$alloc..vec..Vec$LT$$RF$str$GT$$GT$17h58378993665cf9eaE.exit", label %bb.m

bb.m:                                             ; preds = %bb.l
  %.val18 = load ptr, ptr %i.ak, align 8, !nonnull !23, !noundef !23
  %i.ax = shl nuw i64 %.val, 4
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val18, i64 noundef %i.ax, i64 noundef range(i64 1, -9223372036854775807) 8) #52
  br label %"_ZN4core3ptr51drop_in_place$LT$alloc..vec..Vec$LT$$RF$str$GT$$GT$17h58378993665cf9eaE.exit"

"_ZN4core3ptr51drop_in_place$LT$alloc..vec..Vec$LT$$RF$str$GT$$GT$17h58378993665cf9eaE.exit": ; preds = %bb.aa, %.body.i.i.i.i, %.body.thread, %bb.ac, %bb.ab, %bb.m, %bb.l
  %.pn = phi { ptr, i32 } [ %i.ed, %bb.ac ], [ %i.bn, %.body.thread ], [ %i.av, %bb.l ], [ %i.av, %bb.m ], [ %i.ed, %bb.ab ], [ %i.dz, %.body.i.i.i.i ], [ %i.dz, %bb.aa ]
  resume { ptr, i32 } %.pn

bb.n:                                             ; preds = %bb.ag, %bb.ae, %_ZN4core4iter6traits8iterator8Iterator7collect17hea56e1ddcd7bbae7E.exit, %bb.k, %bb.e
  ret void

bb.o:                                             ; preds = %bb.p
  %i.ay = getelementptr inbounds nuw i8, ptr %.sroa.014.075, i64 56 ; 2 uses
  %.not = icmp eq ptr %i.ay, %i.y
  br i1 %.not, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %"_ZN87_$LT$hashbrown..map..HashMap$LT$K$C$V$C$S$C$A$GT$$u20$as$u20$core..default..Default$GT$7default17hcdc94e5f3885a038E.exit", %bb.o
  %.sroa.014.075 = phi ptr [ %i.ay, %bb.o ], [ %i.v, %"_ZN87_$LT$hashbrown..map..HashMap$LT$K$C$V$C$S$C$A$GT$$u20$as$u20$core..default..Default$GT$7default17hcdc94e5f3885a038E.exit" ] ; 5 uses
  %i.az = getelementptr inbounds nuw i8, ptr %.sroa.014.075, i64 8
  %i.ba = load ptr, ptr %i.az, align 8, !nonnull !23, !noundef !23
  %i.bb = getelementptr inbounds nuw i8, ptr %.sroa.014.075, i64 16
  %i.bc = load i64, ptr %i.bb, align 8, !noundef !23
  invoke fastcc void @"_ZN9hashbrown3map28HashMap$LT$K$C$V$C$S$C$A$GT$6insert17hde9aefb15bf8e790E"(ptr noalias noundef align 8 dereferenceable(48) %i.b, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.ba, i64 noundef %i.bc)
          to label %bb.p unwind label %.body.thread

._crit_edge:                                      ; preds = %bb.o, %"_ZN87_$LT$hashbrown..map..HashMap$LT$K$C$V$C$S$C$A$GT$$u20$as$u20$core..default..Default$GT$7default17hcdc94e5f3885a038E.exit"
  %.sroa.046.0.copyload = load ptr, ptr %i.b, align 8, !nonnull !23, !noundef !23 ; 5 uses
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.sroa.2.0.copyload = load i64, ptr %.sroa.2.0..sroa_idx, align 8 ; 4 uses
  %.sroa.347.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %.sroa.347.0.copyload = load i64, ptr %.sroa.347.0..sroa_idx, align 8 ; 3 uses
  %.val3.i.i.i = load <16 x i8>, ptr %.sroa.046.0.copyload, align 16, !noalias !6791
  %i.bd = icmp eq i64 %.sroa.2.0.copyload, 0      ; 5 uses
  br i1 %i.bd, label %bb.q, label %_ZN9hashbrown3raw11TableLayout20calculate_layout_for17hb76643e6316511fcE.exit.i.i.i.i

_ZN9hashbrown3raw11TableLayout20calculate_layout_for17hb76643e6316511fcE.exit.i.i.i.i: ; preds = %._crit_edge
  %i.be = icmp slt i64 %.sroa.2.0.copyload, 1152921504606846975
  call void @llvm.assume(i1 %i.be)
  %i.bf = shl i64 %.sroa.2.0.copyload, 4          ; 2 uses
  %i.bg = add i64 %i.bf, 16                       ; 2 uses
  %i.bh = add nsw i64 %.sroa.2.0.copyload, 17
  %i.bi = add i64 %i.bh, %i.bg                    ; 3 uses
  %i.bj = icmp uge i64 %i.bi, %i.bg
  call void @llvm.assume(i1 %i.bj)
  %i.bk = icmp ult i64 %i.bi, 9223372036854775793
  call void @llvm.assume(i1 %i.bk)
  %i.bl = sub nuw nsw i64 -16, %i.bf
  %i.bm = getelementptr inbounds i8, ptr %.sroa.046.0.copyload, i64 %i.bl
  br label %bb.q

.body.thread:                                     ; preds = %.lr.ph, %bb.p
  %i.bn = landingpad { ptr, i32 }
          cleanup
  %.val19 = load ptr, ptr %i.b, align 8
  %i.bo = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.val20 = load i64, ptr %i.bo, align 8, !noundef !23
  call fastcc void @"_ZN4core3ptr72drop_in_place$LT$std..collections..hash..set..HashSet$LT$$RF$str$GT$$GT$17hd7e6328b3e5b4870E"(ptr %.val19, i64 %.val20) #55
  br label %"_ZN4core3ptr51drop_in_place$LT$alloc..vec..Vec$LT$$RF$str$GT$$GT$17h58378993665cf9eaE.exit"

bb.p:                                             ; preds = %.lr.ph
  %i.bp = getelementptr inbounds nuw i8, ptr %.sroa.014.075, i64 32
  %i.bq = load ptr, ptr %i.bp, align 8, !nonnull !23, !noundef !23
  %i.br = getelementptr inbounds nuw i8, ptr %.sroa.014.075, i64 40
  %i.bs = load i64, ptr %i.br, align 8, !noundef !23
  invoke fastcc void @"_ZN9hashbrown3map28HashMap$LT$K$C$V$C$S$C$A$GT$6insert17hde9aefb15bf8e790E"(ptr noalias noundef align 8 dereferenceable(48) %i.b, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.bq, i64 noundef %i.bs)
          to label %bb.o unwind label %.body.thread

bb.q:                                             ; preds = %_ZN9hashbrown3raw11TableLayout20calculate_layout_for17hb76643e6316511fcE.exit.i.i.i.i, %._crit_edge
  %.sroa.5.sroa.0.0.i.i.i.i = phi i64 [ %i.bi, %_ZN9hashbrown3raw11TableLayout20calculate_layout_for17hb76643e6316511fcE.exit.i.i.i.i ], [ undef, %._crit_edge ] ; 8 uses
  %.sroa.5.sroa.4.0.i.i.i.i = phi ptr [ %i.bm, %_ZN9hashbrown3raw11TableLayout20calculate_layout_for17hb76643e6316511fcE.exit.i.i.i.i ], [ undef, %._crit_edge ] ; 8 uses
  %.sroa.0.0.i.i.i.i = phi i64 [ 16, %_ZN9hashbrown3raw11TableLayout20calculate_layout_for17hb76643e6316511fcE.exit.i.i.i.i ], [ 0, %._crit_edge ] ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !6792)
  call void @llvm.experimental.noalias.scope.decl(metadata !6793)
  call void @llvm.experimental.noalias.scope.decl(metadata !6794)
  call void @llvm.experimental.noalias.scope.decl(metadata !6795)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !6796
  %i.bt = icmp eq i64 %.sroa.347.0.copyload, 0
  br i1 %i.bt, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.bu = icmp sgt <16 x i8> %.val3.i.i.i, splat (i8 -1)
  %i.bv = bitcast <16 x i1> %i.bu to i16          ; 2 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %.sroa.046.0.copyload, i64 16 ; 2 uses
  %.not13.i.i.i.i.i.i.i = icmp eq i16 %i.bv, 0
  br i1 %.not13.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i, label %._crit_edge20.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %bb.r, %.lr.ph.i.i.i.i.i.i.i
  %i.bx = phi ptr [ %i.cb, %.lr.ph.i.i.i.i.i.i.i ], [ %i.bw, %bb.r ] ; 2 uses
  %i.by = phi ptr [ %i.ca, %.lr.ph.i.i.i.i.i.i.i ], [ %.sroa.046.0.copyload, %bb.r ]
  %.val11.i.i.i.i.i.i.i = load <16 x i8>, ptr %i.bx, align 16, !noalias !6797
  %i.bz = icmp sgt <16 x i8> %.val11.i.i.i.i.i.i.i, splat (i8 -1)
  %i.ca = getelementptr inbounds i8, ptr %i.by, i64 -256 ; 2 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bx, i64 16 ; 2 uses
  %.cast.i.i.i.i.i.i.i = bitcast <16 x i1> %i.bz to i16 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq i16 %.cast.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i, label %._crit_edge20.i.i.i.i.i.i.i

bb.s:                                             ; preds = %bb.q
  store i64 0, ptr %0, align 8, !alias.scope !6798
  %i.cc = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %i.cc, align 8, !alias.scope !6798
  %i.cd = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 0, ptr %i.cd, align 8, !alias.scope !6798
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !6796
  %i.ce = icmp eq i64 %.sroa.5.sroa.0.0.i.i.i.i, 0
  %or.cond.i.i = or i1 %i.bd, %i.ce
  br i1 %or.cond.i.i, label %_ZN4core4iter6traits8iterator8Iterator7collect17hea56e1ddcd7bbae7E.exit, label %bb.t

bb.t:                                             ; preds = %bb.s
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.5.sroa.4.0.i.i.i.i) ]
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.5.sroa.4.0.i.i.i.i, i64 noundef %.sroa.5.sroa.0.0.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) %.sroa.0.0.i.i.i.i) #52, !noalias !6799
  br label %_ZN4core4iter6traits8iterator8Iterator7collect17hea56e1ddcd7bbae7E.exit

._crit_edge20.i.i.i.i.i.i.i:                      ; preds = %.lr.ph.i.i.i.i.i.i.i, %bb.r
  %.sroa.14.0.i.i = phi ptr [ %i.bw, %bb.r ], [ %i.cb, %.lr.ph.i.i.i.i.i.i.i ]
  %.sroa.9.0.copyload.i.i.i.i = phi ptr [ %.sroa.046.0.copyload, %bb.r ], [ %i.ca, %.lr.ph.i.i.i.i.i.i.i ] ; 2 uses
  %.lcssa.i.i.i.i.i.i.i = phi i16 [ %i.bv, %bb.r ], [ %.cast.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i ] ; 3 uses
  %i.cf = add i16 %.lcssa.i.i.i.i.i.i.i, -1
  %i.cg = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i.i.i.i.i.i.i, i1 true)
  %i.ch = zext nneg i16 %i.cg to i64
  %i.ci = and i16 %i.cf, %.lcssa.i.i.i.i.i.i.i
  %i.cj = sub nsw i64 0, %i.ch
  %i.ck = getelementptr inbounds [16 x i8], ptr %.sroa.9.0.copyload.i.i.i.i, i64 %i.cj ; 2 uses
  %i.cl = add i64 %.sroa.347.0.copyload, -1       ; 3 uses
  %i.cm = getelementptr inbounds i8, ptr %i.ck, i64 -16
  %i.cn = load ptr, ptr %i.cm, align 8, !noalias !6800, !nonnull !23, !align !39, !noundef !23
  %i.co = getelementptr inbounds i8, ptr %i.ck, i64 -8
  %i.cp = load i64, ptr %i.co, align 8, !noalias !6800, !noundef !23
  %.sroa.0.0.i.i.i.i.i = call noundef i64 @llvm.umax.i64(i64 %.sroa.347.0.copyload, i64 4) ; 2 uses
  %i.cq = shl i64 %.sroa.0.0.i.i.i.i.i, 4         ; 3 uses
  %i.cr = icmp ugt i64 %i.cl, 1152921504606846974
  %i.cs = icmp ugt i64 %i.cq, 9223372036854775800
  %or.cond.i.i.i.i.i.i.i = or i1 %i.cr, %i.cs
  br i1 %or.cond.i.i.i.i.i.i.i, label %bb.u, label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h2c5e185936086779E.exit.i.i.i.i.i.i", !prof !32

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h2c5e185936086779E.exit.i.i.i.i.i.i": ; preds = %._crit_edge20.i.i.i.i.i.i.i
  call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #52, !noalias !6801
  %i.ct = call noundef align 8 ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef %i.cq, i64 noundef range(i64 1, 9) 8) #52, !noalias !6801 ; 5 uses
  %i.cu = icmp eq ptr %i.ct, null
  br i1 %i.cu, label %bb.u, label %bb.v

bb.u:                                             ; preds = %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h2c5e185936086779E.exit.i.i.i.i.i.i", %._crit_edge20.i.i.i.i.i.i.i
  %.sroa.4.0.ph.i.i.i.i.i = phi i64 [ 8, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h2c5e185936086779E.exit.i.i.i.i.i.i" ], [ 0, %._crit_edge20.i.i.i.i.i.i.i ]
  invoke void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef %.sroa.4.0.ph.i.i.i.i.i, i64 %i.cq, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @1063) #57
          to label %.noexc.i.i.i.i unwind label %bb.ab, !noalias !6796

.noexc.i.i.i.i:                                   ; preds = %bb.u
  unreachable

bb.v:                                             ; preds = %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h2c5e185936086779E.exit.i.i.i.i.i.i"
  store ptr %i.cn, ptr %i.ct, align 8, !noalias !6796
  %i.cv = getelementptr inbounds nuw i8, ptr %i.ct, i64 8
  store i64 %i.cp, ptr %i.cv, align 8, !noalias !6796
  store i64 %.sroa.0.0.i.i.i.i.i, ptr %i.a, align 8, !noalias !6796
  %.sroa.4.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 3 uses
  store ptr %i.ct, ptr %.sroa.4.0..sroa_idx.i.i.i.i, align 8, !noalias !6796
  %.sroa.64.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  store i64 1, ptr %.sroa.64.0..sroa_idx.i.i.i.i, align 8, !noalias !6796
  call void @llvm.experimental.noalias.scope.decl(metadata !6802)
  call void @llvm.experimental.noalias.scope.decl(metadata !6803)
  %i.cw = icmp eq i64 %i.cl, 0
  br i1 %i.cw, label %._crit_edge.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %bb.v, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17hd6c54bab08b088a6E.exit.i.i.i.i.i.i"
  %i.cx = phi ptr [ %i.du, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17hd6c54bab08b088a6E.exit.i.i.i.i.i.i" ], [ %i.ct, %bb.v ]
  %i.cy = phi i64 [ %i.dx, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17hd6c54bab08b088a6E.exit.i.i.i.i.i.i" ], [ 1, %bb.v ] ; 5 uses
  %.lcssa13.i.i.i.i.i.i = phi ptr [ %.lcssa12.i.i.i.i.i.i, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17hd6c54bab08b088a6E.exit.i.i.i.i.i.i" ], [ %.sroa.14.0.i.i, %bb.v ] ; 2 uses
  %.lcssa410.i.i.i.i.i.i = phi ptr [ %.lcssa49.i.i.i.i.i.i, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17hd6c54bab08b088a6E.exit.i.i.i.i.i.i" ], [ %.sroa.9.0.copyload.i.i.i.i, %bb.v ] ; 2 uses
  %i.cz = phi i16 [ %i.di, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17hd6c54bab08b088a6E.exit.i.i.i.i.i.i" ], [ %i.ci, %bb.v ] ; 2 uses
  %.val56.i.i.i.i.i.i = phi i64 [ %i.dl, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17hd6c54bab08b088a6E.exit.i.i.i.i.i.i" ], [ %i.cl, %bb.v ] ; 2 uses
  %.not13.i.i.i.i.i.i.i.i.i = icmp eq i16 %i.cz, 0
  br i1 %.not13.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i, label %._crit_edge20.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i:                         ; preds = %.lr.ph.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i
  %i.da = phi ptr [ %i.de, %.lr.ph.i.i.i.i.i.i.i.i.i ], [ %.lcssa13.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i ] ; 2 uses
  %i.db = phi ptr [ %i.dd, %.lr.ph.i.i.i.i.i.i.i.i.i ], [ %.lcssa410.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i ]
  %.val11.i.i.i.i.i.i.i.i.i = load <16 x i8>, ptr %i.da, align 16, !noalias !6804
  %i.dc = icmp sgt <16 x i8> %.val11.i.i.i.i.i.i.i.i.i, splat (i8 -1)
  %i.dd = getelementptr inbounds i8, ptr %i.db, i64 -256 ; 2 uses
  %i.de = getelementptr inbounds nuw i8, ptr %i.da, i64 16 ; 2 uses
  %.cast.i.i.i.i.i.i.i.i.i = bitcast <16 x i1> %i.dc to i16 ; 2 uses
  %.not.i.i.i.i.i11.i.i.i.i = icmp eq i16 %.cast.i.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i11.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i, label %._crit_edge20.i.i.i.i.i.i.i.i.i

._crit_edge20.i.i.i.i.i.i.i.i.i:                  ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i
  %.lcssa12.i.i.i.i.i.i = phi ptr [ %.lcssa13.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i ], [ %i.de, %.lr.ph.i.i.i.i.i.i.i.i.i ]
  %.lcssa49.i.i.i.i.i.i = phi ptr [ %.lcssa410.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i ], [ %i.dd, %.lr.ph.i.i.i.i.i.i.i.i.i ] ; 2 uses
  %.lcssa.i.i.i.i.i.i.i.i.i = phi i16 [ %i.cz, %.lr.ph.i.i.i.i.i.i ], [ %.cast.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i ] ; 3 uses
  %i.df = add i16 %.lcssa.i.i.i.i.i.i.i.i.i, -1
  %i.dg = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i.i.i.i.i.i.i.i.i, i1 true)
  %i.dh = zext nneg i16 %i.dg to i64
  %i.di = and i16 %i.df, %.lcssa.i.i.i.i.i.i.i.i.i
  %i.dj = sub nsw i64 0, %i.dh
  %i.dk = getelementptr inbounds [16 x i8], ptr %.lcssa49.i.i.i.i.i.i, i64 %i.dj ; 2 uses
  %i.dl = add nsw i64 %.val56.i.i.i.i.i.i, -1     ; 2 uses
  %i.dm = getelementptr inbounds i8, ptr %i.dk, i64 -16
  %i.dn = load ptr, ptr %i.dm, align 8, !noalias !6805, !nonnull !23, !align !39, !noundef !23
  %i.do = getelementptr inbounds i8, ptr %i.dk, i64 -8
  %i.dp = load i64, ptr %i.do, align 8, !noalias !6805, !noundef !23
  %i.dq = icmp samesign ult i64 %i.cy, 576460752303423488
  call void @llvm.assume(i1 %i.dq)
  %i.dr = load i64, ptr %i.a, align 8, !range !24, !alias.scope !6806, !noalias !6796, !noundef !23
  %i.ds = icmp eq i64 %i.cy, %i.dr
  br i1 %i.ds, label %bb.z, label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17hd6c54bab08b088a6E.exit.i.i.i.i.i.i"

._crit_edge.i.i.i.i.i.i:                          ; preds = %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17hd6c54bab08b088a6E.exit.i.i.i.i.i.i", %bb.v
  %i.dt = icmp eq i64 %.sroa.5.sroa.0.0.i.i.i.i, 0
  %or.cond.i.i.i.i = or i1 %i.bd, %i.dt
  br i1 %or.cond.i.i.i.i, label %"_ZN97_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$alloc..vec..spec_extend..SpecExtend$LT$T$C$I$GT$$GT$11spec_extend17h2dc985ebcc461eb3E.exit.i.i.i.i", label %bb.w

bb.w:                                             ; preds = %._crit_edge.i.i.i.i.i.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.5.sroa.4.0.i.i.i.i) ]
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.5.sroa.4.0.i.i.i.i, i64 noundef %.sroa.5.sroa.0.0.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) %.sroa.0.0.i.i.i.i) #52, !noalias !6807
  br label %"_ZN97_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$alloc..vec..spec_extend..SpecExtend$LT$T$C$I$GT$$GT$11spec_extend17h2dc985ebcc461eb3E.exit.i.i.i.i"

"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17hd6c54bab08b088a6E.exit.i.i.i.i.i.i": ; preds = %"._ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17hd6c54bab08b088a6E.exit.i.i_crit_edge.i.i.i.i", %._crit_edge20.i.i.i.i.i.i.i.i.i
  %i.du = phi ptr [ %.pre.i.i.i.i25, %"._ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17hd6c54bab08b088a6E.exit.i.i_crit_edge.i.i.i.i" ], [ %i.cx, %._crit_edge20.i.i.i.i.i.i.i.i.i ] ; 2 uses
  %i.dv = getelementptr inbounds nuw [16 x i8], ptr %i.du, i64 %i.cy ; 2 uses
  store ptr %i.dn, ptr %i.dv, align 8, !noalias !6808
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dv, i64 8
  store i64 %i.dp, ptr %i.dw, align 8, !noalias !6808
  %i.dx = add nuw nsw i64 %i.cy, 1                ; 2 uses
  store i64 %i.dx, ptr %.sroa.64.0..sroa_idx.i.i.i.i, align 8, !alias.scope !6806, !noalias !6796
  %i.dy = icmp eq i64 %i.dl, 0
  br i1 %i.dy, label %._crit_edge.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i

bb.x:                                             ; preds = %bb.z
  %i.dz = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ea = icmp eq i64 %.sroa.5.sroa.0.0.i.i.i.i, 0
  %or.cond16.i.i.i.i = or i1 %i.bd, %i.ea
  br i1 %or.cond16.i.i.i.i, label %.body.i.i.i.i, label %bb.y

bb.y:                                             ; preds = %bb.x
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.5.sroa.4.0.i.i.i.i) ]
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.5.sroa.4.0.i.i.i.i, i64 noundef %.sroa.5.sroa.0.0.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) %.sroa.0.0.i.i.i.i) #52, !noalias !6809
  br label %.body.i.i.i.i

bb.z:                                             ; preds = %._crit_edge20.i.i.i.i.i.i.i.i.i
  invoke fastcc void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$7reserve21do_reserve_and_handle17h45307a5a03ebcc73E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.a, i64 noundef %i.cy, i64 noundef %.val56.i.i.i.i.i.i, i64 noundef 8, i64 noundef 16)
          to label %"._ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17hd6c54bab08b088a6E.exit.i.i_crit_edge.i.i.i.i" unwind label %bb.x, !noalias !6810

"._ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17hd6c54bab08b088a6E.exit.i.i_crit_edge.i.i.i.i": ; preds = %bb.z
  %.pre.i.i.i.i25 = load ptr, ptr %.sroa.4.0..sroa_idx.i.i.i.i, align 8, !alias.scope !6806, !noalias !6796
  br label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17hd6c54bab08b088a6E.exit.i.i.i.i.i.i"

.body.i.i.i.i:                                    ; preds = %bb.y, %bb.x
  %.val.i.i.i.i = load i64, ptr %i.a, align 8, !noalias !6796 ; 2 uses
  %i.eb = icmp eq i64 %.val.i.i.i.i, 0
  br i1 %i.eb, label %"_ZN4core3ptr51drop_in_place$LT$alloc..vec..Vec$LT$$RF$str$GT$$GT$17h58378993665cf9eaE.exit", label %bb.aa

bb.aa:                                            ; preds = %.body.i.i.i.i
  %.val9.i.i.i.i = load ptr, ptr %.sroa.4.0..sroa_idx.i.i.i.i, align 8, !noalias !6796, !nonnull !23, !noundef !23
  %i.ec = shl nuw i64 %.val.i.i.i.i, 4
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val9.i.i.i.i, i64 noundef %i.ec, i64 noundef range(i64 1, -9223372036854775807) 8) #52, !noalias !6796
  br label %"_ZN4core3ptr51drop_in_place$LT$alloc..vec..Vec$LT$$RF$str$GT$$GT$17h58378993665cf9eaE.exit"

"_ZN97_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$alloc..vec..spec_extend..SpecExtend$LT$T$C$I$GT$$GT$11spec_extend17h2dc985ebcc461eb3E.exit.i.i.i.i": ; preds = %bb.w, %._crit_edge.i.i.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false), !noalias !6811
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !6796
  br label %_ZN4core4iter6traits8iterator8Iterator7collect17hea56e1ddcd7bbae7E.exit

bb.ab:                                            ; preds = %bb.u
  %i.ed = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ee = icmp eq i64 %.sroa.5.sroa.0.0.i.i.i.i, 0
  %or.cond6.i.i = or i1 %i.bd, %i.ee
  br i1 %or.cond6.i.i, label %"_ZN4core3ptr51drop_in_place$LT$alloc..vec..Vec$LT$$RF$str$GT$$GT$17h58378993665cf9eaE.exit", label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.5.sroa.4.0.i.i.i.i) ]
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.5.sroa.4.0.i.i.i.i, i64 noundef %.sroa.5.sroa.0.0.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) %.sroa.0.0.i.i.i.i) #52, !noalias !6812
  br label %"_ZN4core3ptr51drop_in_place$LT$alloc..vec..Vec$LT$$RF$str$GT$$GT$17h58378993665cf9eaE.exit"

_ZN4core4iter6traits8iterator8Iterator7collect17hea56e1ddcd7bbae7E.exit: ; preds = %"_ZN97_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$alloc..vec..spec_extend..SpecExtend$LT$T$C$I$GT$$GT$11spec_extend17h2dc985ebcc461eb3E.exit.i.i.i.i", %bb.t, %bb.s
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.n

bb.ad:                                            ; preds = %bb.g
  tail call void @_ZN5alloc5alloc18handle_alloc_error17h8f86e24af4223f3dE(i64 noundef 8, i64 noundef 16) #57
  unreachable

bb.ae:                                            ; preds = %bb.g
  %i.ef = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.eg = load ptr, ptr %i.ef, align 8, !nonnull !23, !noundef !23
  %i.eh = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.ei = load i64, ptr %i.eh, align 8, !noundef !23
  store ptr %i.eg, ptr %i.ad, align 8
  %i.ej = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  store i64 %i.ei, ptr %i.ej, align 8
  store i64 1, ptr %0, align 8, !alias.scope !6813
  %i.ek = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.ad, ptr %i.ek, align 8, !alias.scope !6813
  %i.el = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 1, ptr %i.el, align 8, !alias.scope !6813
  br label %bb.n

bb.af:                                            ; preds = %bb.f
  tail call void @_ZN5alloc5alloc18handle_alloc_error17h8f86e24af4223f3dE(i64 noundef 8, i64 noundef 16) #57
  unreachable

bb.ag:                                            ; preds = %bb.f
  store ptr @765, ptr %i.ab, align 8
  %i.em = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  store i64 10, ptr %i.em, align 8
  store i64 1, ptr %0, align 8, !alias.scope !6814
  %i.en = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.ab, ptr %i.en, align 8, !alias.scope !6814
  %i.eo = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 1, ptr %i.eo, align 8, !alias.scope !6814
  br label %bb.n
}

; Function Attrs: nonlazybind uwtable
define void @"_ZN17meilisearch_types5tasks164_$LT$impl$u20$core..convert..From$LT$$RF$meilisearch_types..tasks..KindWithContent$GT$$u20$for$u20$core..option..Option$LT$meilisearch_types..tasks..Details$GT$$GT$4from17hd95e18ec2071dc49E"(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([192 x i8]) align 8 captures(none) dereferenceable(192) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(288) %1) unnamed_addr #1 personality ptr @rust_eh_personality !guid !6877 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 3 uses
  %i.b = alloca [120 x i8], align 8               ; 7 uses
  %i.c = alloca [72 x i8], align 8                ; 6 uses
  %i.d = alloca [120 x i8], align 8               ; 9 uses
  %i.e = alloca [24 x i8], align 8                ; 10 uses
  %i.f = alloca [72 x i8], align 8                ; 14 uses
  %i.g = alloca [24 x i8], align 8                ; 11 uses
  %i.h = alloca [24 x i8], align 8                ; 6 uses
  %i.i = alloca [168 x i8], align 8               ; 4 uses
  %i.j = alloca [24 x i8], align 8                ; 6 uses
  %i.k = alloca [24 x i8], align 8                ; 5 uses
  %i.l = alloca [24 x i8], align 8                ; 6 uses
  %i.m = alloca [24 x i8], align 8                ; 3 uses
  %i.n = alloca [24 x i8], align 8                ; 6 uses
  %i.o = alloca [192 x i8], align 8               ; 7 uses
  %i.p = alloca [24 x i8], align 8                ; 6 uses
  %i.q = alloca [24 x i8], align 8                ; 6 uses
  %.sroa.521 = alloca [16 x i8], align 8          ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.s = load i64, ptr %1, align 8, !range !76, !noundef !23 ; 3 uses
  %i.t = icmp ne i64 %i.s, -9223372036854775790
  tail call void @llvm.assume(i1 %i.t)
  %i.u = add nsw i64 %i.s, 9223372036854775807
  %i.v = icmp ugt i64 %i.s, -9223372036854775808
  %i.w = select i1 %i.v, i64 %i.u, i64 17
  switch i64 %i.w, label %bb.b [
    i64 0, label %bb.c
    i64 1, label %bb.d
    i64 2, label %bb.e
    i64 3, label %bb.f
    i64 4, label %bb.g
    i64 5, label %bb.h
    i64 6, label %bb.i
    i64 7, label %bb.j
    i64 8, label %bb.k
    i64 9, label %bb.l
    i64 10, label %bb.m
    i64 11, label %bb.o
    i64 12, label %bb.q
    i64 13, label %bb.r
    i64 14, label %bb.s
    i64 15, label %bb.t
    i64 16, label %bb.u
    i64 17, label %bb.v
    i64 18, label %bb.w
    i64 19, label %bb.g
  ]

bb.b:                                             ; preds = %bb.a
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.y = load i64, ptr %i.x, align 8, !noundef !23
  store i64 4, ptr %0, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %i.y, ptr %.sroa.6.0..sroa_idx, align 8
  br label %bb.ac

bb.d:                                             ; preds = %bb.a
  store i64 19, ptr %0, align 8
  br label %bb.ac

bb.e:                                             ; preds = %bb.a
  store i64 19, ptr %0, align 8
  br label %bb.ac

bb.f:                                             ; preds = %bb.a
  store i64 19, ptr %0, align 8
  br label %bb.ac

bb.g:                                             ; preds = %bb.a, %bb.a
  store i64 19, ptr %0, align 8
  br label %bb.ac

bb.h:                                             ; preds = %bb.a
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 32
end_hunk_3
begin_hunk_4_@"_ZN17meilisearch_types5tasks164_$LT$impl$u20$core..convert..From$LT$$RF$meilisearch_types..tasks..KindWithContent$GT$$u20$for$u20$core..option..Option$LT$meilisearch_types..tasks..Details$GT$$GT$4from17hd95e18ec2071dc49E":bb.a
  store i64 6, ptr %0, align 8
  %.sroa.45.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.09.0, ptr %.sroa.45.0..sroa_idx, align 8
  %.sroa.45.sroa.4.0..sroa.45.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.45.sroa.4.0..sroa.45.0..sroa_idx.sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %i.r, i64 16, i1 false)
  %.sroa.56.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 -9223372036854775808, ptr %.sroa.56.0..sroa_idx, align 8
  %.sroa.67.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i64 -9223372036854775808, ptr %.sroa.67.0..sroa_idx, align 8
  br label %bb.ac

bb.af:                                            ; preds = %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n)
  call void @"_ZN60_$LT$alloc..string..String$u20$as$u20$core..clone..Clone$GT$5clone17h123bb51dd192bfa5E"(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.n, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ae, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @106)
  %.sroa.0.0.copyload = load i64, ptr %i.n, align 8
  %.sroa.6.0..sroa_idx124 = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %.sroa.6.0.copyload = load ptr, ptr %.sroa.6.0..sroa_idx124, align 8
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  %.sroa.7.0.copyload = load i64, ptr %.sroa.7.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n)
  br label %bb.ag

bb.ag:                                            ; preds = %bb.k, %bb.af
  %.sroa.7.0 = phi i64 [ %.sroa.7.0.copyload, %bb.af ], [ undef, %bb.k ]
  %.sroa.6.0 = phi ptr [ %.sroa.6.0.copyload, %bb.af ], [ undef, %bb.k ] ; 3 uses
  %.sroa.0.0 = phi i64 [ %.sroa.0.0.copyload, %bb.af ], [ -9223372036854775808, %bb.k ] ; 3 uses
  %i.do = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 2 uses
  %i.dp = load i64, ptr %i.do, align 8, !range !27, !noundef !23
  %.not99 = icmp eq i64 %i.dp, -9223372036854775808
  br i1 %.not99, label %.thread, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  invoke void @"_ZN60_$LT$alloc..string..String$u20$as$u20$core..clone..Clone$GT$5clone17h123bb51dd192bfa5E"(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.l, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ad, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @766)
          to label %bb.ak unwind label %bb.aj

"_ZN4core3ptr70drop_in_place$LT$core..option..Option$LT$alloc..string..String$GT$$GT$17h872ea489019ac5c6E.exit118": ; preds = %bb.am, %bb.al, %bb.al, %bb.aj
  %.pn101 = phi { ptr, i32 } [ %i.dq, %bb.aj ], [ %i.dr, %bb.al ], [ %i.dr, %bb.al ], [ %i.dr, %bb.am ] ; 3 uses
  switch i64 %.sroa.0.0, label %bb.ai [
    i64 -9223372036854775808, label %common.resume
    i64 0, label %common.resume
  ]

bb.ai:                                            ; preds = %"_ZN4core3ptr70drop_in_place$LT$core..option..Option$LT$alloc..string..String$GT$$GT$17h872ea489019ac5c6E.exit118"
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.6.0) ]
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.6.0, i64 noundef %.sroa.0.0, i64 noundef range(i64 1, -9223372036854775807) 1) #52, !noalias !6882
  br label %common.resume

bb.aj:                                            ; preds = %bb.ah
  %i.dq = landingpad { ptr, i32 }
          cleanup
  br label %"_ZN4core3ptr70drop_in_place$LT$core..option..Option$LT$alloc..string..String$GT$$GT$17h872ea489019ac5c6E.exit118"

bb.ak:                                            ; preds = %bb.ah
  %.sroa.0127.0.copyload = load i64, ptr %i.l, align 8 ; 3 uses
  %.sroa.6129.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %.sroa.6129.0.copyload = load ptr, ptr %.sroa.6129.0..sroa_idx, align 8 ; 3 uses
  %.sroa.7131.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %.sroa.7131.0.copyload = load i64, ptr %.sroa.7131.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  invoke void @"_ZN60_$LT$alloc..string..String$u20$as$u20$core..clone..Clone$GT$5clone17h123bb51dd192bfa5E"(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.k, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.do, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @106)
          to label %bb.an unwind label %bb.al

.thread:                                          ; preds = %bb.ag, %bb.an
  %.sroa.0127.0148 = phi i64 [ %.sroa.0127.0.copyload, %bb.an ], [ -9223372036854775808, %bb.ag ]
  %.sroa.6129.0147 = phi ptr [ %.sroa.6129.0.copyload, %bb.an ], [ undef, %bb.ag ]
  %.sroa.7131.0146 = phi i64 [ %.sroa.7131.0.copyload, %bb.an ], [ undef, %bb.ag ]
  %.sroa.019.0 = phi i64 [ %.sroa.019.0.copyload, %bb.an ], [ -9223372036854775808, %bb.ag ]
  store i64 6, ptr %0, align 8
  %.sroa.415.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.0.0, ptr %.sroa.415.0..sroa_idx, align 8
  %.sroa.415.sroa.4.0..sroa.415.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %.sroa.6.0, ptr %.sroa.415.sroa.4.0..sroa.415.0..sroa_idx.sroa_idx, align 8
  %.sroa.415.sroa.5.0..sroa.415.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %.sroa.7.0, ptr %.sroa.415.sroa.5.0..sroa.415.0..sroa_idx.sroa_idx, align 8
  %.sroa.516.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 %.sroa.019.0, ptr %.sroa.516.0..sroa_idx, align 8
  %.sroa.516.sroa.4.0..sroa.516.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.516.sroa.4.0..sroa.516.0..sroa_idx.sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.521, i64 16, i1 false)
  %.sroa.617.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i64 %.sroa.0127.0148, ptr %.sroa.617.0..sroa_idx, align 8
  %.sroa.617.sroa.4.0..sroa.617.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 64
  store ptr %.sroa.6129.0147, ptr %.sroa.617.sroa.4.0..sroa.617.0..sroa_idx.sroa_idx, align 8
  %.sroa.617.sroa.5.0..sroa.617.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 72
  store i64 %.sroa.7131.0146, ptr %.sroa.617.sroa.5.0..sroa.617.0..sroa_idx.sroa_idx, align 8
  br label %bb.ac

bb.al:                                            ; preds = %bb.ak
  %i.dr = landingpad { ptr, i32 }
          cleanup                                 ; 3 uses
  switch i64 %.sroa.0127.0.copyload, label %bb.am [
    i64 -9223372036854775808, label %"_ZN4core3ptr70drop_in_place$LT$core..option..Option$LT$alloc..string..String$GT$$GT$17h872ea489019ac5c6E.exit118"
    i64 0, label %"_ZN4core3ptr70drop_in_place$LT$core..option..Option$LT$alloc..string..String$GT$$GT$17h872ea489019ac5c6E.exit118"
  ]

bb.am:                                            ; preds = %bb.al
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.6129.0.copyload) ]
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.6129.0.copyload, i64 noundef %.sroa.0127.0.copyload, i64 noundef range(i64 1, -9223372036854775807) 1) #52, !noalias !6883
  br label %"_ZN4core3ptr70drop_in_place$LT$core..option..Option$LT$alloc..string..String$GT$$GT$17h872ea489019ac5c6E.exit118"

bb.an:                                            ; preds = %bb.ak
  %.sroa.019.0.copyload = load i64, ptr %i.k, align 8
  %.sroa.521.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.521, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.521.0..sroa_idx, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  br label %.thread

bb.ao:                                            ; preds = %bb.s
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  invoke void @"_ZN60_$LT$alloc..string..String$u20$as$u20$core..clone..Clone$GT$5clone17h123bb51dd192bfa5E"(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.j, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.db, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @106)
          to label %bb.bl unwind label %bb.bk

bb.ap:                                            ; preds = %bb.s, %bb.bl
  %.sroa.7137.0 = phi i64 [ %.sroa.7137.0.copyload, %bb.bl ], [ undef, %bb.s ]
  %.sroa.6135.0 = phi ptr [ %.sroa.6135.0.copyload, %bb.bl ], [ undef, %bb.s ] ; 3 uses
  %.sroa.0133.0 = phi i64 [ %.sroa.0133.0.copyload, %bb.bl ], [ -9223372036854775808, %bb.s ] ; 3 uses
  %i.ds = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.dt = load <2 x i64>, ptr %i.ds, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p)
  %i.du = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.dv = load ptr, ptr %i.du, align 8, !noundef !23 ; 3 uses
  %.not96 = icmp ne ptr %i.dv, null               ; 3 uses
  %i.dw = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.dx = load i64, ptr %i.dw, align 8
  %i.dy = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.dz = load i64, ptr %i.dy, align 8
  %.sroa.545.0 = select i1 %.not96, i64 %i.dz, i64 0
  %.sroa.044.sroa.6.0 = zext i1 %.not96 to i64    ; 2 uses
  %.sroa.044.sroa.5.sroa.6.0 = select i1 %.not96, i64 %i.dx, i64 undef ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !6884)
  call void @llvm.experimental.noalias.scope.decl(metadata !6885)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !6886
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !6887
  store i64 %.sroa.044.sroa.6.0, ptr %i.f, align 8, !alias.scope !6888, !noalias !6889
  %.sroa.4.0..sroa_idx140 = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store ptr null, ptr %.sroa.4.0..sroa_idx140, align 8, !alias.scope !6888, !noalias !6889
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  store ptr %i.dv, ptr %.sroa.5.0..sroa_idx, align 8, !alias.scope !6888, !noalias !6889
  %.sroa.6141.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  store i64 %.sroa.044.sroa.5.sroa.6.0, ptr %.sroa.6141.0..sroa_idx, align 8, !alias.scope !6888, !noalias !6889
  %.sroa.7142.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 32
  store i64 %.sroa.044.sroa.6.0, ptr %.sroa.7142.0..sroa_idx, align 8, !alias.scope !6888, !noalias !6889
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 40
  store ptr null, ptr %.sroa.8.0..sroa_idx, align 8, !alias.scope !6888, !noalias !6889
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 48
  store ptr %i.dv, ptr %.sroa.9.0..sroa_idx, align 8, !alias.scope !6888, !noalias !6889
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 56
  store i64 %.sroa.044.sroa.5.sroa.6.0, ptr %.sroa.10.0..sroa_idx, align 8, !alias.scope !6888, !noalias !6889
  %.sroa.11.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 64 ; 2 uses
  store i64 %.sroa.545.0, ptr %.sroa.11.0..sroa_idx, align 8, !alias.scope !6888, !noalias !6889
  call void @llvm.experimental.noalias.scope.decl(metadata !6890)
  call void @llvm.experimental.noalias.scope.decl(metadata !6891)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !6892
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !6893
  invoke fastcc void @"_ZN102_$LT$core..iter..adapters..map..Map$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h0486a0ca0376048fE"(ptr noalias noundef align 8 captures(address) dereferenceable(120) %i.d, ptr noalias noundef nonnull align 8 dereferenceable(72) %i.f)
          to label %.noexc unwind label %bb.bm, !noalias !6894

.noexc:                                           ; preds = %bb.ap
  %i.ea = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %i.eb = load i64, ptr %i.ea, align 8, !range !38, !noalias !6893, !noundef !23
  %.not.i.i.i.i.i.i = icmp eq i64 %i.eb, 2
  br i1 %.not.i.i.i.i.i.i, label %_ZN4core4iter6traits8iterator8Iterator7collect17hda4931278faf33c7E.exit.thread.i.i, label %bb.at

_ZN4core4iter6traits8iterator8Iterator7collect17hda4931278faf33c7E.exit.thread.i.i: ; preds = %.noexc
  store i64 0, ptr %i.g, align 8, !noalias !6895
  %i.ec = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %i.ec, align 8, !noalias !6895
  %i.ed = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  store i64 0, ptr %i.ed, align 8, !noalias !6895
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !6893
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !6892
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !6887
  br label %bb.bb

bb.aq:                                            ; preds = %bb.au
  %i.ee = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !6896)
  %.val.i1.i.i.i.i.i = load i64, ptr %i.d, align 8, !alias.scope !6897, !noalias !6893 ; 2 uses
  %i.ef = icmp eq i64 %.val.i1.i.i.i.i.i, 0
  br i1 %i.ef, label %"_ZN4core3ptr74drop_in_place$LT$meilisearch_types..index_uid_pattern..IndexUidPattern$GT$17h92e42dae38041cddE.exit.i.i.i.i.i.i", label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.eg = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %.val1.i.i.i.i.i.i = load ptr, ptr %i.eg, align 8, !alias.scope !6896, !noalias !6893, !nonnull !23, !noundef !23
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i.i.i.i, i64 noundef %.val.i1.i.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #52, !noalias !6898
  br label %"_ZN4core3ptr74drop_in_place$LT$meilisearch_types..index_uid_pattern..IndexUidPattern$GT$17h92e42dae38041cddE.exit.i.i.i.i.i.i"

"_ZN4core3ptr74drop_in_place$LT$meilisearch_types..index_uid_pattern..IndexUidPattern$GT$17h92e42dae38041cddE.exit.i.i.i.i.i.i": ; preds = %bb.ar, %bb.aq
  %i.eh = getelementptr inbounds nuw i8, ptr %i.d, i64 40 ; 2 uses
  %i.ei = load i64, ptr %i.eh, align 8, !range !36, !alias.scope !6899, !noalias !6893, !noundef !23
  %i.ej = icmp eq i64 %i.ei, -9223372036854775803
  br i1 %i.ej, label %.body, label %bb.as

bb.as:                                            ; preds = %"_ZN4core3ptr74drop_in_place$LT$meilisearch_types..index_uid_pattern..IndexUidPattern$GT$17h92e42dae38041cddE.exit.i.i.i.i.i.i"
  invoke fastcc void @"_ZN4core3ptr45drop_in_place$LT$serde_json..value..Value$GT$17h2555f1380cedc520E"(ptr noalias noundef nonnull readonly align 8 dereferenceable(80) %i.eh)
          to label %.body unwind label %bb.ba, !noalias !6893

bb.at:                                            ; preds = %.noexc
  %.val.i.i.i.i.i.i = load i64, ptr %.sroa.11.0..sroa_idx, align 8, !alias.scope !6900, !noalias !6887, !noundef !23 ; 2 uses
  %i.ek = call i64 @llvm.uadd.sat.i64(i64 %.val.i.i.i.i.i.i, i64 1)
  %.sroa.0.0.i.i.i.i.i.i.i = call noundef i64 @llvm.umax.i64(i64 %i.ek, i64 4) ; 3 uses
  %i.el = mul i64 %.sroa.0.0.i.i.i.i.i.i.i, 120   ; 3 uses
  %or.cond.i.i.i.i.i.i.i.i.i = icmp ugt i64 %.val.i.i.i.i.i.i, 76861433640456464
  br i1 %or.cond.i.i.i.i.i.i.i.i.i, label %bb.au, label %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i.i.i, !prof !32

_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i.i.i: ; preds = %bb.at
  %i.em = icmp eq i64 %i.el, 0
  br i1 %i.em, label %bb.av, label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h2c5e185936086779E.exit.i.i.i.i.i.i.i.i"

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h2c5e185936086779E.exit.i.i.i.i.i.i.i.i": ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i.i.i
  call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #52, !noalias !6901
  %i.en = call noundef align 8 ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef %i.el, i64 noundef range(i64 1, 9) 8) #52, !noalias !6901 ; 2 uses
  %i.eo = icmp eq ptr %i.en, null
  br i1 %i.eo, label %bb.au, label %bb.av

bb.au:                                            ; preds = %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h2c5e185936086779E.exit.i.i.i.i.i.i.i.i", %bb.at
  %.sroa.4.0.ph.i.i.i.i.i.i.i = phi i64 [ 8, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h2c5e185936086779E.exit.i.i.i.i.i.i.i.i" ], [ 0, %bb.at ]
  invoke void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef %.sroa.4.0.ph.i.i.i.i.i.i.i, i64 %i.el, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @1063) #57
          to label %.noexc.i.i.i.i.i.i unwind label %bb.aq, !noalias !6893

.noexc.i.i.i.i.i.i:                               ; preds = %bb.au
  unreachable

bb.av:                                            ; preds = %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h2c5e185936086779E.exit.i.i.i.i.i.i.i.i", %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i.i.i
  %.sroa.10.0.i.i.i.i.i.i.i = phi ptr [ inttoptr (i64 8 to ptr), %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i.i.i ], [ %i.en, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h2c5e185936086779E.exit.i.i.i.i.i.i.i.i" ] ; 3 uses
  %.sroa.4.0.i.i.i.i.i.i.i = phi i64 [ 0, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i.i.i ], [ %.sroa.0.0.i.i.i.i.i.i.i, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h2c5e185936086779E.exit.i.i.i.i.i.i.i.i" ] ; 2 uses
  %i.ep = icmp ule i64 %.sroa.0.0.i.i.i.i.i.i.i, %.sroa.4.0.i.i.i.i.i.i.i
  call void @llvm.assume(i1 %i.ep)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(120) %.sroa.10.0.i.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(120) %i.d, i64 120, i1 false), !noalias !6893
  store i64 %.sroa.4.0.i.i.i.i.i.i.i, ptr %i.e, align 8, !noalias !6893
  %.sroa.4.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 2 uses
  store ptr %.sroa.10.0.i.i.i.i.i.i.i, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i.i, align 8, !noalias !6893
  %.sroa.6.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 16 ; 2 uses
  store i64 1, ptr %.sroa.6.0..sroa_idx.i.i.i.i.i.i, align 8, !noalias !6893
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !6893
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.c, ptr noundef nonnull align 8 dereferenceable(72) %i.f, i64 72, i1 false), !noalias !6894
  call void @llvm.experimental.noalias.scope.decl(metadata !6902)
  call void @llvm.experimental.noalias.scope.decl(metadata !6903)
  call void @llvm.experimental.noalias.scope.decl(metadata !6904)
  call void @llvm.experimental.noalias.scope.decl(metadata !6905)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !6906
  invoke fastcc void @"_ZN102_$LT$core..iter..adapters..map..Map$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h0486a0ca0376048fE"(ptr noalias noundef align 8 captures(address) dereferenceable(120) %i.b, ptr noalias noundef nonnull align 8 dereferenceable(72) %i.c)
          to label %.noexc5.i.i.i.i.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !6907

.noexc5.i.i.i.i.i.i:                              ; preds = %bb.av
  %i.eq = getelementptr inbounds nuw i8, ptr %i.b, i64 24 ; 2 uses
  %i.er = load i64, ptr %i.eq, align 8, !range !38, !noalias !6908, !noundef !23
  %.not1.i.i.i.i.i.i.i.i = icmp eq i64 %i.er, 2
  br i1 %.not1.i.i.i.i.i.i.i.i, label %_ZN4core4iter6traits8iterator8Iterator7collect17hda4931278faf33c7E.exit.i.i, label %.lr.ph.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i:                           ; preds = %.noexc5.i.i.i.i.i.i
  %i.es = getelementptr inbounds nuw i8, ptr %i.c, i64 64
  br label %bb.aw

bb.aw:                                            ; preds = %.noexc6.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i
  %i.et = phi ptr [ %.sroa.10.0.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i ], [ %i.ey, %.noexc6.i.i.i.i.i.i ]
  %i.eu = phi i64 [ 1, %.lr.ph.i.i.i.i.i.i.i.i ], [ %i.fa, %.noexc6.i.i.i.i.i.i ] ; 5 uses
  %i.ev = icmp samesign ult i64 %i.eu, 76861433640456466
  call void @llvm.assume(i1 %i.ev)
  %i.ew = load i64, ptr %i.e, align 8, !range !24, !alias.scope !6909, !noalias !6893, !noundef !23
  %i.ex = icmp eq i64 %i.eu, %i.ew
  br i1 %i.ex, label %bb.ay, label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17hf1963ec138bb5c2aE.exit.i.i.i.i.i.i.i.i"

"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17hf1963ec138bb5c2aE.exit.i.i.i.i.i.i.i.i": ; preds = %"._ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17hf1963ec138bb5c2aE.exit.i.i_crit_edge.i.i.i.i.i.i", %bb.aw
  %i.ey = phi ptr [ %.pre.i.i.i.i.i.i, %"._ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17hf1963ec138bb5c2aE.exit.i.i_crit_edge.i.i.i.i.i.i" ], [ %i.et, %bb.aw ] ; 2 uses
  %i.ez = getelementptr inbounds nuw [120 x i8], ptr %i.ey, i64 %i.eu
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(120) %i.ez, ptr noundef nonnull align 8 dereferenceable(120) %i.b, i64 120, i1 false), !noalias !6908
  %i.fa = add nuw nsw i64 %i.eu, 1                ; 2 uses
  store i64 %i.fa, ptr %.sroa.6.0..sroa_idx.i.i.i.i.i.i, align 8, !alias.scope !6909, !noalias !6893
  invoke fastcc void @"_ZN102_$LT$core..iter..adapters..map..Map$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h0486a0ca0376048fE"(ptr noalias noundef align 8 captures(address) dereferenceable(120) %i.b, ptr noalias noundef nonnull align 8 dereferenceable(72) %i.c)
          to label %.noexc6.i.i.i.i.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !6907

.noexc6.i.i.i.i.i.i:                              ; preds = %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17hf1963ec138bb5c2aE.exit.i.i.i.i.i.i.i.i"
  %i.fb = load i64, ptr %i.eq, align 8, !range !38, !noalias !6908, !noundef !23
  %.not.i.i.i.i.i.i.i.i = icmp eq i64 %i.fb, 2
  br i1 %.not.i.i.i.i.i.i.i.i, label %_ZN4core4iter6traits8iterator8Iterator7collect17hda4931278faf33c7E.exit.i.i, label %bb.aw

bb.ax:                                            ; preds = %bb.ay
  %i.fc = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr137drop_in_place$LT$$LP$meilisearch_types..index_uid_pattern..IndexUidPattern$C$meilisearch_types..tasks..DetailsExportIndexSettings$RP$$GT$17hb88229aaa070dd0dE"(ptr noalias noundef align 8 dereferenceable(120) %i.b) #55
          to label %.body.i.i.i.i.i.i unwind label %bb.az, !noalias !6908

bb.ay:                                            ; preds = %bb.aw
  %.val.i.i.i.i.i.i.i.i = load i64, ptr %i.es, align 8, !alias.scope !6910, !noalias !6893, !noundef !23
  %i.fd = call i64 @llvm.uadd.sat.i64(i64 %.val.i.i.i.i.i.i.i.i, i64 1)
  invoke fastcc void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$7reserve21do_reserve_and_handle17h45307a5a03ebcc73E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.e, i64 noundef %i.eu, i64 noundef range(i64 1, 0) %i.fd, i64 noundef 8, i64 noundef 120)
          to label %"._ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17hf1963ec138bb5c2aE.exit.i.i_crit_edge.i.i.i.i.i.i" unwind label %bb.ax, !noalias !6911

"._ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17hf1963ec138bb5c2aE.exit.i.i_crit_edge.i.i.i.i.i.i": ; preds = %bb.ay
  %.pre.i.i.i.i.i.i = load ptr, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i.i, align 8, !alias.scope !6909, !noalias !6893
  br label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17hf1963ec138bb5c2aE.exit.i.i.i.i.i.i.i.i"

bb.az:                                            ; preds = %bb.ax
  %i.fe = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #56, !noalias !6908
  unreachable

.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17hf1963ec138bb5c2aE.exit.i.i.i.i.i.i.i.i", %bb.av
  %lpad.loopexit.split-lp183 = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i.i.i.i.i

.body.i.i.i.i.i.i:                                ; preds = %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.ax
  %eh.lpad-body.i.i.i.i.i.i = phi { ptr, i32 } [ %i.fc, %bb.ax ], [ %lpad.loopexit.split-lp183, %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  invoke fastcc void @"_ZN4core3ptr160drop_in_place$LT$alloc..vec..Vec$LT$$LP$meilisearch_types..index_uid_pattern..IndexUidPattern$C$meilisearch_types..tasks..DetailsExportIndexSettings$RP$$GT$$GT$17hf2a3a2187c5a0726E"(ptr noalias noundef align 8 dereferenceable(24) %i.e) #55
          to label %.body unwind label %bb.ba, !noalias !6893

bb.ba:                                            ; preds = %.body.i.i.i.i.i.i, %bb.as
  %i.ff = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #56, !noalias !6893
  unreachable

_ZN4core4iter6traits8iterator8Iterator7collect17hda4931278faf33c7E.exit.i.i: ; preds = %.noexc6.i.i.i.i.i.i, %.noexc5.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !6906
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !6893
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.g, ptr noundef nonnull align 8 dereferenceable(24) %i.e, i64 24, i1 false), !noalias !6895
  %.phi.trans.insert.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %.pre.i.i = load i64, ptr %.phi.trans.insert.i.i, align 8, !noalias !6895 ; 6 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !6893
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !6892
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !6887
  %i.fg = icmp ult i64 %.pre.i.i, 76861433640456466
  call void @llvm.assume(i1 %i.fg)
  %i.fh = icmp eq i64 %.pre.i.i, 0
  br i1 %i.fh, label %bb.bb, label %bb.bc

bb.bb:                                            ; preds = %_ZN4core4iter6traits8iterator8Iterator7collect17hda4931278faf33c7E.exit.i.i, %_ZN4core4iter6traits8iterator8Iterator7collect17hda4931278faf33c7E.exit.thread.i.i
  store ptr null, ptr %i.p, align 8, !alias.scope !6912
  %i.fi = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  store i64 0, ptr %i.fi, align 8, !alias.scope !6912
  invoke fastcc void @"_ZN4core3ptr160drop_in_place$LT$alloc..vec..Vec$LT$$LP$meilisearch_types..index_uid_pattern..IndexUidPattern$C$meilisearch_types..tasks..DetailsExportIndexSettings$RP$$GT$$GT$17hf2a3a2187c5a0726E"(ptr noalias noundef align 8 dereferenceable(24) %i.g)
          to label %bb.bo unwind label %bb.bm, !noalias !6895

bb.bc:                                            ; preds = %_ZN4core4iter6traits8iterator8Iterator7collect17hda4931278faf33c7E.exit.i.i
  %i.fj = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.fk = load ptr, ptr %i.fj, align 8, !noalias !6895, !nonnull !23, !noundef !23 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !6913
  %i.fl = icmp eq i64 %.pre.i.i, 1
  br i1 %i.fl, label %bb.bg, label %bb.bd, !prof !51

bb.bd:                                            ; preds = %bb.bc
  %i.fm = icmp samesign ult i64 %.pre.i.i, 21
  br i1 %i.fm, label %bb.bf, label %bb.be, !prof !51

bb.be:                                            ; preds = %bb.bd
  invoke void @_ZN4core5slice4sort6stable14driftsort_main17h62bdde6338b51403E(ptr noalias noundef nonnull align 8 %i.fk, i64 noundef range(i64 1, 76861433640456466) %.pre.i.i, ptr noalias noundef nonnull align 8 dereferenceable(8) %i.a)
          to label %bb.bg unwind label %bb.bh, !noalias !6895

bb.bf:                                            ; preds = %bb.bd
  call fastcc void @_ZN4core5slice4sort6shared9smallsort25insertion_sort_shift_left17hdb63a6707a42ca81E(ptr noalias noundef nonnull align 8 %i.fk, i64 noundef range(i64 1, 76861433640456466) %.pre.i.i)
  br label %bb.bg

bb.bg:                                            ; preds = %bb.bf, %bb.be, %bb.bc
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !6913
  invoke fastcc void @"_ZN5alloc11collections5btree3map25BTreeMap$LT$K$C$V$C$A$GT$27bulk_build_from_sorted_iter17h955c267db2c34e5bE"(ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.p, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.g)
          to label %bb.bo unwind label %bb.bm, !noalias !6914

bb.bh:                                            ; preds = %bb.be
  %i.fn = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr160drop_in_place$LT$alloc..vec..Vec$LT$$LP$meilisearch_types..index_uid_pattern..IndexUidPattern$C$meilisearch_types..tasks..DetailsExportIndexSettings$RP$$GT$$GT$17hf2a3a2187c5a0726E"(ptr noalias noundef align 8 dereferenceable(24) %i.g) #55
          to label %.body unwind label %bb.bi, !noalias !6895

bb.bi:                                            ; preds = %bb.bh
  %i.fo = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #56, !noalias !6895
  unreachable

"_ZN4core3ptr70drop_in_place$LT$core..option..Option$LT$alloc..string..String$GT$$GT$17h872ea489019ac5c6E.exit122": ; preds = %bb.bn, %.body, %.body, %bb.bk
  %.pn = phi { ptr, i32 } [ %i.fr, %bb.bk ], [ %eh.lpad-body, %.body ], [ %eh.lpad-body, %.body ], [ %eh.lpad-body, %bb.bn ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !6915)
  %.val.i121 = load i64, ptr %i.q, align 8, !alias.scope !6915 ; 2 uses
  %i.fp = icmp eq i64 %.val.i121, 0
  br i1 %i.fp, label %common.resume, label %bb.bj

bb.bj:                                            ; preds = %"_ZN4core3ptr70drop_in_place$LT$core..option..Option$LT$alloc..string..String$GT$$GT$17h872ea489019ac5c6E.exit122"
  %i.fq = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %.val1.i = load ptr, ptr %i.fq, align 8, !alias.scope !6915, !nonnull !23, !noundef !23
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i, i64 noundef %.val.i121, i64 noundef range(i64 1, -9223372036854775807) 1) #52, !noalias !6915
  br label %common.resume

bb.bk:                                            ; preds = %bb.ao
  %i.fr = landingpad { ptr, i32 }
          cleanup
  br label %"_ZN4core3ptr70drop_in_place$LT$core..option..Option$LT$alloc..string..String$GT$$GT$17h872ea489019ac5c6E.exit122"

bb.bl:                                            ; preds = %bb.ao
  %.sroa.0133.0.copyload = load i64, ptr %i.j, align 8
  %.sroa.6135.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %.sroa.6135.0.copyload = load ptr, ptr %.sroa.6135.0..sroa_idx, align 8
  %.sroa.7137.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %.sroa.7137.0.copyload = load i64, ptr %.sroa.7137.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  br label %bb.ap

bb.bm:                                            ; preds = %bb.bg, %bb.bb, %bb.ap
  %i.fs = landingpad { ptr, i32 }
          cleanup
  br label %.body
end_hunk_4
begin_hunk_5_@_ZN17meilisearch_types5tasks7network21NetworkTopologyChange5merge17h15bbfb3cf72d41c6E:"_ZN119_$LT$alloc..collections..btree..map..BTreeMap$LT$K$C$V$C$A$GT$$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17h7b13709a42b95f65E.exit"
  store i64 %.sink23.i.i.i.i278, ptr %i.ee, align 8, !alias.scope !8238, !noalias !8237
  store i64 %.sroa.7.0.copyload.sink.i.i.i.i279, ptr %i.ef, align 8, !alias.scope !8238, !noalias !8237
  invoke fastcc void @"_ZN4core3ptr144drop_in_place$LT$alloc..collections..btree..map..IntoIter$LT$alloc..string..String$C$meilisearch_types..tasks..network..ImportIndexState$GT$$GT$17h8a2fdd2edad39891E"(ptr noalias noundef align 8 dereferenceable(72) %i.q)
          to label %.noexc280 unwind label %.split.loop.exit.split-lp.split.loop.exit.split-lp.split.loop.exit.split-lp.split.loop.exit.split-lp, !noalias !8237

.noexc280:                                        ; preds = %"_ZN4core3ptr144drop_in_place$LT$alloc..collections..btree..map..BTreeMap$LT$alloc..string..String$C$meilisearch_types..tasks..network..ImportIndexState$GT$$GT$17hf935fd24899ce224E.exit.i277"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !noalias !8237
  br label %bb.am

bb.at:                                            ; preds = %bb.al
  %i.ho = icmp eq i64 %.sroa.612.24.copyload.i.i, 1
  %.sroa.0423.0.copyload = load ptr, ptr %.sroa.2488.0..sroa_idx, align 8 ; 6 uses
  br i1 %i.ho, label %bb.au, label %bb.av

"_ZN4core3ptr67drop_in_place$LT$meilisearch_types..tasks..network..ImportState$GT$17h58fd331c8f243b26E.exit312": ; preds = %bb.an, %.noexc263, %bb.av, %.noexc311
  %.sroa.0423.0.copyload.sink = phi ptr [ %.sroa.0423.0.copyload, %bb.av ], [ %.sroa.0423.0.copyload, %.noexc311 ], [ %.sroa.16.sroa.0.0.copyload958, %.noexc263 ], [ %.sroa.16.sroa.0.0.copyload958, %bb.an ]
  %.sroa.20.0.copyload83.sink = phi i64 [ %.sroa.20.0.copyload83, %bb.av ], [ %.sroa.20.0.copyload83, %.noexc311 ], [ %.sroa.20.0.copyload79, %.noexc263 ], [ %.sroa.20.0.copyload79, %bb.an ]
  %i.hp = phi <2 x i64> [ %i.hu, %bb.av ], [ %i.hu, %.noexc311 ], [ %i.hi, %.noexc263 ], [ %i.hi, %bb.an ]
  store i64 %.sroa.612.24.copyload.i.i, ptr %i.gz, align 8
  store ptr %.sroa.0423.0.copyload.sink, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.17.sroa.17.0..sroa.4.0..sroa_idx.sroa_idx933 = getelementptr inbounds nuw i8, ptr %i.gz, i64 16
  store <2 x i64> %i.hp, ptr %.sroa.17.sroa.17.0..sroa.4.0..sroa_idx.sroa_idx933, align 8
  %.sroa.18.0..sroa_idx69 = getelementptr inbounds nuw i8, ptr %i.gz, i64 32
  store i64 %.sroa.20.0.copyload83.sink, ptr %.sroa.18.0..sroa_idx69, align 8
  %i.hq = load i64, ptr %i.do, align 8, !range !38
  %i.hr = icmp eq i64 %i.hq, 1
  br i1 %i.hr, label %bb.ed, label %.thread516

bb.au:                                            ; preds = %bb.at
  %i.hs = load i64, ptr %.sroa.20.0..sroa_idx82, align 8, !noundef !23
  %.sroa.0.0.copyload907 = load ptr, ptr %i.dr, align 8 ; 3 uses
  %.sroa.4.0.copyload909 = load i64, ptr %.sroa.4.0..sroa_idx908, align 8
  %.sroa.5.0.copyload910 = load i64, ptr %.sroa.5.0..sroa_idx, align 8
  %i.ht = load i64, ptr %i.ds, align 8, !noundef !23
  %.not.i283 = icmp ne ptr %.sroa.0423.0.copyload, null ; 3 uses
  %.sroa.3425.0.copyload = load i64, ptr %.sroa.3425.0..sroa_idx, align 8
  %.sroa.2424.0.copyload = load i64, ptr %.sroa.2424.0..sroa_idx, align 8
  %.sroa.10.0 = select i1 %.not.i283, i64 %.sroa.2424.0.copyload, i64 undef ; 2 uses
  %.sink23.i294 = zext i1 %.not.i283 to i64       ; 2 uses
  %.sroa.7.0.copyload.sink.i295 = select i1 %.not.i283, i64 %.sroa.3425.0.copyload, i64 0
  %.not.i314 = icmp ne ptr %.sroa.0.0.copyload907, null ; 3 uses
  %.sroa.10446.0 = select i1 %.not.i314, i64 %.sroa.4.0.copyload909, i64 undef ; 2 uses
  %.sink23.i325 = zext i1 %.not.i314 to i64       ; 2 uses
  %.sroa.7.0.copyload.sink.i326 = select i1 %.not.i314, i64 %.sroa.5.0.copyload910, i64 0
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !noalias !8239
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !noalias !8240
  store i64 %.sink23.i294, ptr %i.n, align 8, !alias.scope !8241, !noalias !8242
  store ptr null, ptr %.sroa.0434.sroa.4.0..sroa_idx, align 8, !alias.scope !8241, !noalias !8242
  store ptr %.sroa.0423.0.copyload, ptr %.sroa.0434.sroa.5.0..sroa_idx, align 8, !alias.scope !8241, !noalias !8242
  store i64 %.sroa.10.0, ptr %.sroa.0434.sroa.6.0..sroa_idx, align 8, !alias.scope !8241, !noalias !8242
  store i64 %.sink23.i294, ptr %.sroa.0434.sroa.7.0..sroa_idx, align 8, !alias.scope !8241, !noalias !8242
  store ptr null, ptr %.sroa.0434.sroa.8.0..sroa_idx, align 8, !alias.scope !8241, !noalias !8242
  store ptr %.sroa.0423.0.copyload, ptr %.sroa.0434.sroa.9.0..sroa_idx, align 8, !alias.scope !8241, !noalias !8242
  store i64 %.sroa.10.0, ptr %.sroa.0434.sroa.10.0..sroa_idx, align 8, !alias.scope !8241, !noalias !8242
  store i64 %.sroa.7.0.copyload.sink.i295, ptr %i.dt, align 8, !alias.scope !8241, !noalias !8242
  store i64 -9223372036854775808, ptr %.sroa.4435.0..sroa_idx, align 8, !alias.scope !8241, !noalias !8242
  store i64 %.sink23.i325, ptr %.sroa.5436.sroa.4.0..sroa.5436.0..sroa_idx.sroa_idx, align 8, !alias.scope !8241, !noalias !8242
  store ptr null, ptr %.sroa.5436.sroa.5.0..sroa.5436.0..sroa_idx.sroa_idx, align 8, !alias.scope !8241, !noalias !8242
  store ptr %.sroa.0.0.copyload907, ptr %.sroa.5436.sroa.6.0..sroa.5436.0..sroa_idx.sroa_idx, align 8, !alias.scope !8241, !noalias !8242
  store i64 %.sroa.10446.0, ptr %.sroa.5436.sroa.7.0..sroa.5436.0..sroa_idx.sroa_idx, align 8, !alias.scope !8241, !noalias !8242
  store i64 %.sink23.i325, ptr %.sroa.5436.sroa.8.0..sroa.5436.0..sroa_idx.sroa_idx, align 8, !alias.scope !8241, !noalias !8242
  store ptr null, ptr %.sroa.5436.sroa.9.0..sroa.5436.0..sroa_idx.sroa_idx, align 8, !alias.scope !8241, !noalias !8242
  store ptr %.sroa.0.0.copyload907, ptr %.sroa.5436.sroa.10.0..sroa.5436.0..sroa_idx.sroa_idx, align 8, !alias.scope !8241, !noalias !8242
  store i64 %.sroa.10446.0, ptr %.sroa.5436.sroa.11.0..sroa.5436.0..sroa_idx.sroa_idx, align 8, !alias.scope !8241, !noalias !8242
  store i64 %.sroa.7.0.copyload.sink.i326, ptr %.sroa.5436.sroa.12.0..sroa.5436.0..sroa_idx.sroa_idx, align 8, !alias.scope !8241, !noalias !8242
  store i64 -9223372036854775808, ptr %.sroa.6437.0..sroa_idx, align 8, !alias.scope !8241, !noalias !8242
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8243)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8244)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !8245
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !noalias !8246
  invoke fastcc void @"_ZN102_$LT$core..iter..adapters..map..Map$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h3022cb352606dbaeE"(ptr noalias noundef align 8 captures(address) dereferenceable(72) %i.l, ptr noalias noundef nonnull align 8 dereferenceable(288) %i.n)
          to label %bb.az unwind label %bb.ay, !noalias !8247

bb.av:                                            ; preds = %bb.at
  %i.hu = load <2 x i64>, ptr %.sroa.16.sroa.16.0..sroa.2488.0..sroa_idx.sroa_idx963, align 8 ; 4 uses
  %.sroa.20.0.copyload83 = load i64, ptr %.sroa.20.0..sroa_idx82, align 8 ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8248)
  %i.hv = load i64, ptr %i.gz, align 8, !range !38, !alias.scope !8248, !noundef !23
  %i.hw = icmp eq i64 %i.hv, 1
  br i1 %i.hw, label %bb.aw, label %"_ZN4core3ptr67drop_in_place$LT$meilisearch_types..tasks..network..ImportState$GT$17h58fd331c8f243b26E.exit312"

bb.aw:                                            ; preds = %bb.av
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8249)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8250)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p), !noalias !8251
  %.sroa.0.0.copyload.i.i.i296 = load ptr, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !8251 ; 3 uses
  %.not.i.i.i.i297 = icmp eq ptr %.sroa.0.0.copyload.i.i.i296, null
  br i1 %.not.i.i.i.i297, label %"_ZN4core3ptr144drop_in_place$LT$alloc..collections..btree..map..BTreeMap$LT$alloc..string..String$C$meilisearch_types..tasks..network..ImportIndexState$GT$$GT$17hf935fd24899ce224E.exit.i308", label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %.sroa.5.0..sroa_idx.i.i.i298 = getelementptr inbounds nuw i8, ptr %i.gz, i64 24
  %.sroa.5.0.copyload.i.i.i299 = load i64, ptr %.sroa.5.0..sroa_idx.i.i.i298, align 8, !alias.scope !8251
  %.sroa.4.0..sroa_idx.i.i.i300 = getelementptr inbounds nuw i8, ptr %i.gz, i64 16
  %.sroa.4.0.copyload.i.i.i301 = load i64, ptr %.sroa.4.0..sroa_idx.i.i.i300, align 8, !alias.scope !8251 ; 2 uses
  store ptr null, ptr %.sroa.2.0..sroa_idx.i.i.i.i302, align 8, !alias.scope !8252, !noalias !8251
  store ptr %.sroa.0.0.copyload.i.i.i296, ptr %.sroa.2.sroa.2.0..sroa.2.0..sroa_idx.sroa_idx.i.i.i.i303, align 8, !alias.scope !8252, !noalias !8251
  store i64 %.sroa.4.0.copyload.i.i.i301, ptr %.sroa.2.sroa.3.0..sroa.2.0..sroa_idx.sroa_idx.i.i.i.i304, align 8, !alias.scope !8252, !noalias !8251
  store ptr null, ptr %.sroa.4.0..sroa_idx.i.i.i.i305, align 8, !alias.scope !8252, !noalias !8251
  store ptr %.sroa.0.0.copyload.i.i.i296, ptr %.sroa.4.sroa.2.0..sroa.4.0..sroa_idx.sroa_idx.i.i.i.i306, align 8, !alias.scope !8252, !noalias !8251
  store i64 %.sroa.4.0.copyload.i.i.i301, ptr %.sroa.4.sroa.3.0..sroa.4.0..sroa_idx.sroa_idx.i.i.i.i307, align 8, !alias.scope !8252, !noalias !8251
  br label %"_ZN4core3ptr144drop_in_place$LT$alloc..collections..btree..map..BTreeMap$LT$alloc..string..String$C$meilisearch_types..tasks..network..ImportIndexState$GT$$GT$17hf935fd24899ce224E.exit.i308"

"_ZN4core3ptr144drop_in_place$LT$alloc..collections..btree..map..BTreeMap$LT$alloc..string..String$C$meilisearch_types..tasks..network..ImportIndexState$GT$$GT$17hf935fd24899ce224E.exit.i308": ; preds = %bb.ax, %bb.aw
  %.sink23.i.i.i.i309 = phi i64 [ 1, %bb.ax ], [ 0, %bb.aw ] ; 2 uses
  %.sroa.7.0.copyload.sink.i.i.i.i310 = phi i64 [ %.sroa.5.0.copyload.i.i.i299, %bb.ax ], [ 0, %bb.aw ]
  store i64 %.sink23.i.i.i.i309, ptr %i.p, align 8, !alias.scope !8252, !noalias !8251
  store i64 %.sink23.i.i.i.i309, ptr %i.dp, align 8, !alias.scope !8252, !noalias !8251
  store i64 %.sroa.7.0.copyload.sink.i.i.i.i310, ptr %i.dq, align 8, !alias.scope !8252, !noalias !8251
  invoke fastcc void @"_ZN4core3ptr144drop_in_place$LT$alloc..collections..btree..map..IntoIter$LT$alloc..string..String$C$meilisearch_types..tasks..network..ImportIndexState$GT$$GT$17h8a2fdd2edad39891E"(ptr noalias noundef align 8 dereferenceable(72) %i.p)
          to label %.noexc311 unwind label %.split.loop.exit.split-lp.split.loop.exit.split-lp.split.loop.exit.split-lp.split.loop.exit, !noalias !8251

.noexc311:                                        ; preds = %"_ZN4core3ptr144drop_in_place$LT$alloc..collections..btree..map..BTreeMap$LT$alloc..string..String$C$meilisearch_types..tasks..network..ImportIndexState$GT$$GT$17hf935fd24899ce224E.exit.i308"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !noalias !8251
  br label %"_ZN4core3ptr67drop_in_place$LT$meilisearch_types..tasks..network..ImportState$GT$17h58fd331c8f243b26E.exit312"

bb.ay:                                            ; preds = %bb.au
  %i.hx = landingpad { ptr, i32 }
          cleanup
  %.pre.i.i.i.i.i = load i64, ptr %.sroa.4435.0..sroa_idx, align 8, !range !27, !alias.scope !8253, !noalias !8254
  br label %bb.cc

bb.az:                                            ; preds = %bb.au
  %i.hy = load i64, ptr %i.l, align 8, !range !27, !noalias !8246, !noundef !23
  %.not.i.i.i.i.i.i329 = icmp eq i64 %i.hy, -9223372036854775808
  br i1 %.not.i.i.i.i.i.i329, label %bb.ba, label %bb.bi

bb.ba:                                            ; preds = %bb.az
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !8246
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8255)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8256)
  %i.hz = load i64, ptr %.sroa.4435.0..sroa_idx, align 8, !range !27, !alias.scope !8257, !noalias !8240, !noundef !23
  %i.ia = icmp eq i64 %i.hz, -9223372036854775808
  br i1 %i.ia, label %"_ZN4core3ptr132drop_in_place$LT$core..option..Option$LT$$LP$alloc..string..String$C$meilisearch_types..tasks..network..ImportIndexState$RP$$GT$$GT$17he47e727e60725938E.exit.i.i.i.i.i.i.i.i.i", label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  call fastcc void @"_ZN4core3ptr104drop_in_place$LT$$LP$alloc..string..String$C$meilisearch_types..tasks..network..ImportIndexState$RP$$GT$17hf9040335892288a5E"(ptr noalias noundef nonnull readonly align 8 dereferenceable(72) %.sroa.4435.0..sroa_idx), !noalias !8247
  br label %"_ZN4core3ptr132drop_in_place$LT$core..option..Option$LT$$LP$alloc..string..String$C$meilisearch_types..tasks..network..ImportIndexState$RP$$GT$$GT$17he47e727e60725938E.exit.i.i.i.i.i.i.i.i.i"

"_ZN4core3ptr132drop_in_place$LT$core..option..Option$LT$$LP$alloc..string..String$C$meilisearch_types..tasks..network..ImportIndexState$RP$$GT$$GT$17he47e727e60725938E.exit.i.i.i.i.i.i.i.i.i": ; preds = %bb.bb, %bb.ba
  %i.ib = load i64, ptr %i.n, align 8, !range !38, !alias.scope !8258, !noalias !8240, !noundef !23
  %i.ic = icmp eq i64 %i.ib, 2
  br i1 %i.ic, label %"_ZN4core3ptr220drop_in_place$LT$itertools..adaptors..PutBack$LT$core..iter..adapters..fuse..Fuse$LT$alloc..collections..btree..map..IntoIter$LT$alloc..string..String$C$meilisearch_types..tasks..network..ImportIndexState$GT$$GT$$GT$$GT$17hb3c2a2db2c72e016E.exit.i.i.i.i.i.i.i.i", label %bb.bc

bb.bc:                                            ; preds = %"_ZN4core3ptr132drop_in_place$LT$core..option..Option$LT$$LP$alloc..string..String$C$meilisearch_types..tasks..network..ImportIndexState$RP$$GT$$GT$17he47e727e60725938E.exit.i.i.i.i.i.i.i.i.i"
  invoke fastcc void @"_ZN4core3ptr144drop_in_place$LT$alloc..collections..btree..map..IntoIter$LT$alloc..string..String$C$meilisearch_types..tasks..network..ImportIndexState$GT$$GT$17h8a2fdd2edad39891E"(ptr noalias noundef nonnull align 8 dereferenceable(288) %i.n)
          to label %"_ZN4core3ptr220drop_in_place$LT$itertools..adaptors..PutBack$LT$core..iter..adapters..fuse..Fuse$LT$alloc..collections..btree..map..IntoIter$LT$alloc..string..String$C$meilisearch_types..tasks..network..ImportIndexState$GT$$GT$$GT$$GT$17hb3c2a2db2c72e016E.exit.i.i.i.i.i.i.i.i" unwind label %bb.bd, !noalias !8247

bb.bd:                                            ; preds = %bb.bc
  %i.id = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr220drop_in_place$LT$itertools..adaptors..PutBack$LT$core..iter..adapters..fuse..Fuse$LT$alloc..collections..btree..map..IntoIter$LT$alloc..string..String$C$meilisearch_types..tasks..network..ImportIndexState$GT$$GT$$GT$$GT$17hb3c2a2db2c72e016E"(ptr noalias noundef align 8 dereferenceable(144) %.sroa.5436.sroa.4.0..sroa.5436.0..sroa_idx.sroa_idx) #55
          to label %.body unwind label %bb.bg, !noalias !8247

"_ZN4core3ptr220drop_in_place$LT$itertools..adaptors..PutBack$LT$core..iter..adapters..fuse..Fuse$LT$alloc..collections..btree..map..IntoIter$LT$alloc..string..String$C$meilisearch_types..tasks..network..ImportIndexState$GT$$GT$$GT$$GT$17hb3c2a2db2c72e016E.exit.i.i.i.i.i.i.i.i": ; preds = %bb.bc, %"_ZN4core3ptr132drop_in_place$LT$core..option..Option$LT$$LP$alloc..string..String$C$meilisearch_types..tasks..network..ImportIndexState$RP$$GT$$GT$17he47e727e60725938E.exit.i.i.i.i.i.i.i.i.i"
  %i.ie = load i64, ptr %.sroa.6437.0..sroa_idx, align 8, !range !27, !alias.scope !8259, !noalias !8240, !noundef !23
  %i.if = icmp eq i64 %i.ie, -9223372036854775808
  br i1 %i.if, label %"_ZN4core3ptr132drop_in_place$LT$core..option..Option$LT$$LP$alloc..string..String$C$meilisearch_types..tasks..network..ImportIndexState$RP$$GT$$GT$17he47e727e60725938E.exit.i1.i.i.i.i.i.i.i.i", label %bb.be

bb.be:                                            ; preds = %"_ZN4core3ptr220drop_in_place$LT$itertools..adaptors..PutBack$LT$core..iter..adapters..fuse..Fuse$LT$alloc..collections..btree..map..IntoIter$LT$alloc..string..String$C$meilisearch_types..tasks..network..ImportIndexState$GT$$GT$$GT$$GT$17hb3c2a2db2c72e016E.exit.i.i.i.i.i.i.i.i"
  call fastcc void @"_ZN4core3ptr104drop_in_place$LT$$LP$alloc..string..String$C$meilisearch_types..tasks..network..ImportIndexState$RP$$GT$17hf9040335892288a5E"(ptr noalias noundef nonnull readonly align 8 dereferenceable(72) %.sroa.6437.0..sroa_idx), !noalias !8247
  br label %"_ZN4core3ptr132drop_in_place$LT$core..option..Option$LT$$LP$alloc..string..String$C$meilisearch_types..tasks..network..ImportIndexState$RP$$GT$$GT$17he47e727e60725938E.exit.i1.i.i.i.i.i.i.i.i"

"_ZN4core3ptr132drop_in_place$LT$core..option..Option$LT$$LP$alloc..string..String$C$meilisearch_types..tasks..network..ImportIndexState$RP$$GT$$GT$17he47e727e60725938E.exit.i1.i.i.i.i.i.i.i.i": ; preds = %bb.be, %"_ZN4core3ptr220drop_in_place$LT$itertools..adaptors..PutBack$LT$core..iter..adapters..fuse..Fuse$LT$alloc..collections..btree..map..IntoIter$LT$alloc..string..String$C$meilisearch_types..tasks..network..ImportIndexState$GT$$GT$$GT$$GT$17hb3c2a2db2c72e016E.exit.i.i.i.i.i.i.i.i"
  %i.ig = load i64, ptr %.sroa.5436.sroa.4.0..sroa.5436.0..sroa_idx.sroa_idx, align 8, !range !38, !alias.scope !8260, !noalias !8240, !noundef !23
  %i.ih = icmp eq i64 %i.ig, 2
  br i1 %i.ih, label %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hb670e2406500ff83E.exit.i.i.thread.i", label %bb.bf

bb.bf:                                            ; preds = %"_ZN4core3ptr132drop_in_place$LT$core..option..Option$LT$$LP$alloc..string..String$C$meilisearch_types..tasks..network..ImportIndexState$RP$$GT$$GT$17he47e727e60725938E.exit.i1.i.i.i.i.i.i.i.i"
  invoke fastcc void @"_ZN4core3ptr144drop_in_place$LT$alloc..collections..btree..map..IntoIter$LT$alloc..string..String$C$meilisearch_types..tasks..network..ImportIndexState$GT$$GT$17h8a2fdd2edad39891E"(ptr noalias noundef nonnull align 8 dereferenceable(144) %.sroa.5436.sroa.4.0..sroa.5436.0..sroa_idx.sroa_idx)
          to label %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hb670e2406500ff83E.exit.i.i.thread.i" unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !8247

bb.bg:                                            ; preds = %bb.bd
  %i.ii = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #56, !noalias !8261
  unreachable

bb.bh:                                            ; preds = %bb.bj
  %i.ij = landingpad { ptr, i32 }
          cleanup
  call fastcc void @"_ZN4core3ptr104drop_in_place$LT$$LP$alloc..string..String$C$meilisearch_types..tasks..network..ImportIndexState$RP$$GT$17hf9040335892288a5E"(ptr noalias noundef align 8 dereferenceable(72) %i.l) #55, !noalias !8246
  br label %bb.cc

bb.bi:                                            ; preds = %bb.az
  %.val.i.i.i.i.i.i.i.i.i = load i64, ptr %i.n, align 8, !range !38, !alias.scope !8262, !noalias !8240, !noundef !23
  %.val11.i.i.i.i.i.i.i.i.i = load i64, ptr %i.dt, align 8, !alias.scope !8262, !noalias !8240
  %.not.i.i.i.i.i.i.i.i.i.i = icmp eq i64 %.val.i.i.i.i.i.i.i.i.i, 2
  %i.ik = load i64, ptr %.sroa.4435.0..sroa_idx, align 8, !range !27, !alias.scope !8262, !noalias !8240, !noundef !23 ; 2 uses
  %i.il = icmp ne i64 %i.ik, -9223372036854775808
  %i.im = zext i1 %i.il to i64                    ; 2 uses
  %i.in = tail call i64 @llvm.uadd.sat.i64(i64 %.val11.i.i.i.i.i.i.i.i.i, i64 %i.im)
  %i.io = select i1 %.not.i.i.i.i.i.i.i.i.i.i, i64 %i.im, i64 %i.in
  %.val.i1.i.i.i.i.i.i.i.i = load i64, ptr %.sroa.5436.sroa.4.0..sroa.5436.0..sroa_idx.sroa_idx, align 8, !range !38, !alias.scope !8263, !noalias !8240, !noundef !23
  %.val11.i2.i.i.i.i.i.i.i.i = load i64, ptr %.sroa.5436.sroa.12.0..sroa.5436.0..sroa_idx.sroa_idx, align 8, !alias.scope !8263, !noalias !8240
  %.not.i.i3.i.i.i.i.i.i.i.i = icmp eq i64 %.val.i1.i.i.i.i.i.i.i.i, 2
  %i.ip = load i64, ptr %.sroa.6437.0..sroa_idx, align 8, !range !27, !alias.scope !8263, !noalias !8240, !noundef !23
  %i.iq = icmp ne i64 %i.ip, -9223372036854775808
  %i.ir = zext i1 %i.iq to i64                    ; 2 uses
  %i.is = tail call i64 @llvm.uadd.sat.i64(i64 %.val11.i2.i.i.i.i.i.i.i.i, i64 %i.ir)
  %i.it = select i1 %.not.i.i3.i.i.i.i.i.i.i.i, i64 %i.ir, i64 %i.is
  %.sroa.0.0.i.i.i.i.i.i.i.i.i.i = tail call noundef i64 @llvm.umax.i64(i64 %i.it, i64 %i.io) ; 2 uses
  %i.iu = tail call i64 @llvm.uadd.sat.i64(i64 %.sroa.0.0.i.i.i.i.i.i.i.i.i.i, i64 1)
  %.sroa.0.0.i.i.i.i.i.i.i = tail call noundef i64 @llvm.umax.i64(i64 %i.iu, i64 4) ; 3 uses
  %i.iv = mul i64 %.sroa.0.0.i.i.i.i.i.i.i, 72    ; 3 uses
  %or.cond.i.i.i.i.i.i.i.i.i = icmp ugt i64 %.sroa.0.0.i.i.i.i.i.i.i.i.i.i, 128102389400760774
  br i1 %or.cond.i.i.i.i.i.i.i.i.i, label %bb.bj, label %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i.i.i, !prof !32

_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i.i.i: ; preds = %bb.bi
  %i.iw = icmp eq i64 %i.iv, 0
  br i1 %i.iw, label %bb.bk, label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h2c5e185936086779E.exit.i.i.i.i.i.i.i.i"

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h2c5e185936086779E.exit.i.i.i.i.i.i.i.i": ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i.i.i
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #52, !noalias !8264
  %i.ix = tail call noundef align 8 ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef %i.iv, i64 noundef range(i64 1, 9) 8) #52, !noalias !8264 ; 2 uses
  %i.iy = icmp eq ptr %i.ix, null
  br i1 %i.iy, label %bb.bj, label %bb.bk

bb.bj:                                            ; preds = %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h2c5e185936086779E.exit.i.i.i.i.i.i.i.i", %bb.bi
  %.sroa.4.0.ph.i.i.i.i.i.i.i = phi i64 [ 8, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h2c5e185936086779E.exit.i.i.i.i.i.i.i.i" ], [ 0, %bb.bi ]
  invoke void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef %.sroa.4.0.ph.i.i.i.i.i.i.i, i64 %i.iv, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @1063) #57
          to label %.noexc.i.i.i.i.i.i unwind label %bb.bh, !noalias !8246

.noexc.i.i.i.i.i.i:                               ; preds = %bb.bj
  unreachable

bb.bk:                                            ; preds = %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h2c5e185936086779E.exit.i.i.i.i.i.i.i.i", %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i.i.i
  %.sroa.10.0.i.i.i.i.i.i.i = phi ptr [ inttoptr (i64 8 to ptr), %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i.i.i ], [ %i.ix, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h2c5e185936086779E.exit.i.i.i.i.i.i.i.i" ] ; 3 uses
  %.sroa.4.0.i.i.i.i.i.i.i = phi i64 [ 0, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i.i.i ], [ %.sroa.0.0.i.i.i.i.i.i.i, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h2c5e185936086779E.exit.i.i.i.i.i.i.i.i" ] ; 2 uses
  %i.iz = icmp ule i64 %.sroa.0.0.i.i.i.i.i.i.i, %.sroa.4.0.i.i.i.i.i.i.i
  tail call void @llvm.assume(i1 %i.iz)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %.sroa.10.0.i.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(72) %i.l, i64 72, i1 false), !noalias !8246
  store i64 %.sroa.4.0.i.i.i.i.i.i.i, ptr %i.m, align 8, !noalias !8246
  store ptr %.sroa.10.0.i.i.i.i.i.i.i, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i.i330, align 8, !noalias !8246
  store i64 1, ptr %.sroa.6.0..sroa_idx.i.i.i.i.i.i, align 8, !noalias !8246
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !8246
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(288) %i.k, ptr noundef nonnull align 8 dereferenceable(288) %i.n, i64 288, i1 false), !noalias !8247
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8265)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8266)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8267)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8268)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !8269
  br label %bb.bl

bb.bl:                                            ; preds = %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17hcb2f249729fdbde8E.exit.i.i.i.i.i.i.i.i", %bb.bk
  %i.ja = phi ptr [ %i.jr, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17hcb2f249729fdbde8E.exit.i.i.i.i.i.i.i.i" ], [ %.sroa.10.0.i.i.i.i.i.i.i, %bb.bk ]
  %i.jb = phi i64 [ %i.jt, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17hcb2f249729fdbde8E.exit.i.i.i.i.i.i.i.i" ], [ 1, %bb.bk ] ; 5 uses
  invoke fastcc void @"_ZN102_$LT$core..iter..adapters..map..Map$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h3022cb352606dbaeE"(ptr noalias noundef align 8 captures(address) dereferenceable(72) %i.j, ptr noalias noundef nonnull align 8 dereferenceable(288) %i.k)
          to label %bb.bo unwind label %bb.bn, !noalias !8270

bb.bm:                                            ; preds = %bb.bx, %bb.bn
  %.pn.i.i.i.i.i.i.i.i = phi { ptr, i32 } [ %i.ju, %bb.bx ], [ %i.jc, %bb.bn ]
  invoke fastcc void @"_ZN4core3ptr600drop_in_place$LT$core..iter..adapters..map..Map$LT$itertools..merge_join..MergeBy$LT$alloc..collections..btree..map..IntoIter$LT$alloc..string..String$C$meilisearch_types..tasks..network..ImportIndexState$GT$$C$alloc..collections..btree..map..IntoIter$LT$alloc..string..String$C$meilisearch_types..tasks..network..ImportIndexState$GT$$C$itertools..merge_join..MergeFuncLR$LT$meilisearch_types..tasks..network..NetworkTopologyChange..merge..$u7b$$u7b$closure$u7d$$u7d$$C$core..cmp..Ordering$GT$$GT$$C$meilisearch_types..tasks..network..NetworkTopologyChange..merge..$u7b$$u7b$closure$u7d$$u7d$$GT$$GT$17h789c889a5580cfe4E"(ptr noalias noundef nonnull align 8 dereferenceable(288) %i.k) #55
          to label %.body.i.i.i.i.i.i unwind label %bb.bz, !noalias !8270

bb.bn:                                            ; preds = %bb.bl
  %i.jc = landingpad { ptr, i32 }
          cleanup
  br label %bb.bm

bb.bo:                                            ; preds = %bb.bl
  %i.jd = load i64, ptr %i.j, align 8, !range !27, !noalias !8271, !noundef !23
  %.not.i.i.i.i.i.i.i.i = icmp eq i64 %i.jd, -9223372036854775808
  br i1 %.not.i.i.i.i.i.i.i.i, label %bb.bq, label %bb.bp

bb.bp:                                            ; preds = %bb.bo
  %i.je = icmp samesign ult i64 %i.jb, 128102389400760776
  tail call void @llvm.assume(i1 %i.je)
  %i.jf = load i64, ptr %i.m, align 8, !range !24, !alias.scope !8272, !noalias !8246, !noundef !23
  %i.jg = icmp eq i64 %i.jb, %i.jf
  br i1 %i.jg, label %bb.by, label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17hcb2f249729fdbde8E.exit.i.i.i.i.i.i.i.i"

bb.bq:                                            ; preds = %bb.bo
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8273)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8274)
  %i.jh = load i64, ptr %i.dx, align 8, !range !27, !alias.scope !8275, !noalias !8246, !noundef !23
  %i.ji = icmp eq i64 %i.jh, -9223372036854775808
  br i1 %i.ji, label %"_ZN4core3ptr132drop_in_place$LT$core..option..Option$LT$$LP$alloc..string..String$C$meilisearch_types..tasks..network..ImportIndexState$RP$$GT$$GT$17he47e727e60725938E.exit.i.i.i.i.i.i.i.i.i.i.i", label %bb.br

bb.br:                                            ; preds = %bb.bq
  call fastcc void @"_ZN4core3ptr104drop_in_place$LT$$LP$alloc..string..String$C$meilisearch_types..tasks..network..ImportIndexState$RP$$GT$17hf9040335892288a5E"(ptr noalias noundef nonnull readonly align 8 dereferenceable(72) %i.dx), !noalias !8270
  br label %"_ZN4core3ptr132drop_in_place$LT$core..option..Option$LT$$LP$alloc..string..String$C$meilisearch_types..tasks..network..ImportIndexState$RP$$GT$$GT$17he47e727e60725938E.exit.i.i.i.i.i.i.i.i.i.i.i"

"_ZN4core3ptr132drop_in_place$LT$core..option..Option$LT$$LP$alloc..string..String$C$meilisearch_types..tasks..network..ImportIndexState$RP$$GT$$GT$17he47e727e60725938E.exit.i.i.i.i.i.i.i.i.i.i.i": ; preds = %bb.br, %bb.bq
  %i.jj = load i64, ptr %i.k, align 8, !range !38, !alias.scope !8276, !noalias !8246, !noundef !23
  %i.jk = icmp eq i64 %i.jj, 2
  br i1 %i.jk, label %"_ZN4core3ptr220drop_in_place$LT$itertools..adaptors..PutBack$LT$core..iter..adapters..fuse..Fuse$LT$alloc..collections..btree..map..IntoIter$LT$alloc..string..String$C$meilisearch_types..tasks..network..ImportIndexState$GT$$GT$$GT$$GT$17hb3c2a2db2c72e016E.exit.i.i.i.i.i.i.i.i.i.i", label %bb.bs

bb.bs:                                            ; preds = %"_ZN4core3ptr132drop_in_place$LT$core..option..Option$LT$$LP$alloc..string..String$C$meilisearch_types..tasks..network..ImportIndexState$RP$$GT$$GT$17he47e727e60725938E.exit.i.i.i.i.i.i.i.i.i.i.i"
  invoke fastcc void @"_ZN4core3ptr144drop_in_place$LT$alloc..collections..btree..map..IntoIter$LT$alloc..string..String$C$meilisearch_types..tasks..network..ImportIndexState$GT$$GT$17h8a2fdd2edad39891E"(ptr noalias noundef nonnull align 8 dereferenceable(288) %i.k)
          to label %"_ZN4core3ptr220drop_in_place$LT$itertools..adaptors..PutBack$LT$core..iter..adapters..fuse..Fuse$LT$alloc..collections..btree..map..IntoIter$LT$alloc..string..String$C$meilisearch_types..tasks..network..ImportIndexState$GT$$GT$$GT$$GT$17hb3c2a2db2c72e016E.exit.i.i.i.i.i.i.i.i.i.i" unwind label %bb.bt, !noalias !8270

bb.bt:                                            ; preds = %bb.bs
  %i.jl = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr220drop_in_place$LT$itertools..adaptors..PutBack$LT$core..iter..adapters..fuse..Fuse$LT$alloc..collections..btree..map..IntoIter$LT$alloc..string..String$C$meilisearch_types..tasks..network..ImportIndexState$GT$$GT$$GT$$GT$17hb3c2a2db2c72e016E"(ptr noalias noundef align 8 dereferenceable(144) %i.du) #55
          to label %.body.i.i.i.i.i.i unwind label %bb.bw, !noalias !8270

"_ZN4core3ptr220drop_in_place$LT$itertools..adaptors..PutBack$LT$core..iter..adapters..fuse..Fuse$LT$alloc..collections..btree..map..IntoIter$LT$alloc..string..String$C$meilisearch_types..tasks..network..ImportIndexState$GT$$GT$$GT$$GT$17hb3c2a2db2c72e016E.exit.i.i.i.i.i.i.i.i.i.i": ; preds = %bb.bs, %"_ZN4core3ptr132drop_in_place$LT$core..option..Option$LT$$LP$alloc..string..String$C$meilisearch_types..tasks..network..ImportIndexState$RP$$GT$$GT$17he47e727e60725938E.exit.i.i.i.i.i.i.i.i.i.i.i"
  %i.jm = load i64, ptr %i.dv, align 8, !range !27, !alias.scope !8277, !noalias !8246, !noundef !23
  %i.jn = icmp eq i64 %i.jm, -9223372036854775808
  br i1 %i.jn, label %"_ZN4core3ptr132drop_in_place$LT$core..option..Option$LT$$LP$alloc..string..String$C$meilisearch_types..tasks..network..ImportIndexState$RP$$GT$$GT$17he47e727e60725938E.exit.i1.i.i.i.i.i.i.i.i.i.i", label %bb.bu

bb.bu:                                            ; preds = %"_ZN4core3ptr220drop_in_place$LT$itertools..adaptors..PutBack$LT$core..iter..adapters..fuse..Fuse$LT$alloc..collections..btree..map..IntoIter$LT$alloc..string..String$C$meilisearch_types..tasks..network..ImportIndexState$GT$$GT$$GT$$GT$17hb3c2a2db2c72e016E.exit.i.i.i.i.i.i.i.i.i.i"
  call fastcc void @"_ZN4core3ptr104drop_in_place$LT$$LP$alloc..string..String$C$meilisearch_types..tasks..network..ImportIndexState$RP$$GT$17hf9040335892288a5E"(ptr noalias noundef nonnull readonly align 8 dereferenceable(72) %i.dv), !noalias !8270
  br label %"_ZN4core3ptr132drop_in_place$LT$core..option..Option$LT$$LP$alloc..string..String$C$meilisearch_types..tasks..network..ImportIndexState$RP$$GT$$GT$17he47e727e60725938E.exit.i1.i.i.i.i.i.i.i.i.i.i"

"_ZN4core3ptr132drop_in_place$LT$core..option..Option$LT$$LP$alloc..string..String$C$meilisearch_types..tasks..network..ImportIndexState$RP$$GT$$GT$17he47e727e60725938E.exit.i1.i.i.i.i.i.i.i.i.i.i": ; preds = %bb.bu, %"_ZN4core3ptr220drop_in_place$LT$itertools..adaptors..PutBack$LT$core..iter..adapters..fuse..Fuse$LT$alloc..collections..btree..map..IntoIter$LT$alloc..string..String$C$meilisearch_types..tasks..network..ImportIndexState$GT$$GT$$GT$$GT$17hb3c2a2db2c72e016E.exit.i.i.i.i.i.i.i.i.i.i"
  %i.jo = load i64, ptr %i.du, align 8, !range !38, !alias.scope !8278, !noalias !8246, !noundef !23
  %i.jp = icmp eq i64 %i.jo, 2
  br i1 %i.jp, label %_ZN4core4iter6traits8iterator8Iterator7collect17h71208e081f2e184fE.exit.i.i, label %bb.bv

bb.bv:                                            ; preds = %"_ZN4core3ptr132drop_in_place$LT$core..option..Option$LT$$LP$alloc..string..String$C$meilisearch_types..tasks..network..ImportIndexState$RP$$GT$$GT$17he47e727e60725938E.exit.i1.i.i.i.i.i.i.i.i.i.i"
  invoke fastcc void @"_ZN4core3ptr144drop_in_place$LT$alloc..collections..btree..map..IntoIter$LT$alloc..string..String$C$meilisearch_types..tasks..network..ImportIndexState$GT$$GT$17h8a2fdd2edad39891E"(ptr noalias noundef nonnull align 8 dereferenceable(144) %i.du)
          to label %_ZN4core4iter6traits8iterator8Iterator7collect17h71208e081f2e184fE.exit.i.i unwind label %bb.ca, !noalias !8270

bb.bw:                                            ; preds = %bb.bt
  %i.jq = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #56, !noalias !8279
  unreachable

"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17hcb2f249729fdbde8E.exit.i.i.i.i.i.i.i.i": ; preds = %"._ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17hcb2f249729fdbde8E.exit.i.i_crit_edge.i.i.i.i.i.i", %bb.bp
  %i.jr = phi ptr [ %.pre.i.i.i.i.i.i, %"._ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17hcb2f249729fdbde8E.exit.i.i_crit_edge.i.i.i.i.i.i" ], [ %i.ja, %bb.bp ] ; 2 uses
  %i.js = getelementptr inbounds nuw [72 x i8], ptr %i.jr, i64 %i.jb
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.js, ptr noundef nonnull align 8 dereferenceable(72) %i.j, i64 72, i1 false), !noalias !8271
  %i.jt = add nuw nsw i64 %i.jb, 1                ; 2 uses
  store i64 %i.jt, ptr %.sroa.6.0..sroa_idx.i.i.i.i.i.i, align 8, !alias.scope !8272, !noalias !8246
  br label %bb.bl

bb.bx:                                            ; preds = %bb.by
  %i.ju = landingpad { ptr, i32 }
          cleanup
  call fastcc void @"_ZN4core3ptr104drop_in_place$LT$$LP$alloc..string..String$C$meilisearch_types..tasks..network..ImportIndexState$RP$$GT$17hf9040335892288a5E"(ptr noalias noundef align 8 dereferenceable(72) %i.j) #55, !noalias !8271
  br label %bb.bm

bb.by:                                            ; preds = %bb.bp
  %.val.i1.i.i.i.i.i.i.i.i.i.i = load i64, ptr %i.du, align 8, !range !38, !alias.scope !8280, !noalias !8246, !noundef !23
  %.not.i.i3.i.i.i.i.i.i.i.i.i.i = icmp eq i64 %.val.i1.i.i.i.i.i.i.i.i.i.i, 2
  %i.jv = load i64, ptr %i.dv, align 8, !range !27, !alias.scope !8280, !noalias !8246, !noundef !23
  %i.jw = icmp ne i64 %i.jv, -9223372036854775808
  %i.jx = zext i1 %i.jw to i64                    ; 2 uses
  %.val11.i2.i.i.i.i.i.i.i.i.i.i = load i64, ptr %i.dw, align 8, !alias.scope !8280, !noalias !8246
  %i.jy = tail call i64 @llvm.uadd.sat.i64(i64 %.val11.i2.i.i.i.i.i.i.i.i.i.i, i64 %i.jx)
  %i.jz = select i1 %.not.i.i3.i.i.i.i.i.i.i.i.i.i, i64 %i.jx, i64 %i.jy
  %.val.i.i.i.i.i.i.i.i.i.i.i = load i64, ptr %i.k, align 8, !range !38, !alias.scope !8281, !noalias !8246, !noundef !23
  %.not.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq i64 %.val.i.i.i.i.i.i.i.i.i.i.i, 2
  %i.ka = load i64, ptr %i.dx, align 8, !range !27, !alias.scope !8281, !noalias !8246, !noundef !23
  %i.kb = icmp ne i64 %i.ka, -9223372036854775808
  %i.kc = zext i1 %i.kb to i64                    ; 2 uses
  %.val11.i.i.i.i.i.i.i.i.i.i.i = load i64, ptr %i.dy, align 8, !alias.scope !8281, !noalias !8246
  %i.kd = tail call i64 @llvm.uadd.sat.i64(i64 %.val11.i.i.i.i.i.i.i.i.i.i.i, i64 %i.kc)
  %i.ke = select i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i, i64 %i.kc, i64 %i.kd
  %.sroa.0.0.i.i.i.i.i.i.i.i.i.i.i.i = tail call noundef i64 @llvm.umax.i64(i64 %i.jz, i64 %i.ke)
  %i.kf = tail call i64 @llvm.uadd.sat.i64(i64 %.sroa.0.0.i.i.i.i.i.i.i.i.i.i.i.i, i64 1)
  invoke fastcc void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$7reserve21do_reserve_and_handle17h45307a5a03ebcc73E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.m, i64 noundef %i.jb, i64 noundef range(i64 1, 0) %i.kf, i64 noundef 8, i64 noundef 72)
          to label %"._ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17hcb2f249729fdbde8E.exit.i.i_crit_edge.i.i.i.i.i.i" unwind label %bb.bx, !noalias !8282

"._ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17hcb2f249729fdbde8E.exit.i.i_crit_edge.i.i.i.i.i.i": ; preds = %bb.by
  %.pre.i.i.i.i.i.i = load ptr, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i.i330, align 8, !alias.scope !8272, !noalias !8246
  br label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17hcb2f249729fdbde8E.exit.i.i.i.i.i.i.i.i"

bb.bz:                                            ; preds = %bb.bm
  %i.kg = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #56, !noalias !8271
  unreachable

bb.ca:                                            ; preds = %bb.bv
  %i.kh = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i.i.i.i.i

.body.i.i.i.i.i.i:                                ; preds = %bb.ca, %bb.bt, %bb.bm
  %eh.lpad-body.i.i.i.i.i.i = phi { ptr, i32 } [ %i.kh, %bb.ca ], [ %i.jl, %bb.bt ], [ %.pn.i.i.i.i.i.i.i.i, %bb.bm ]
  call fastcc void @"_ZN4core3ptr127drop_in_place$LT$alloc..vec..Vec$LT$$LP$alloc..string..String$C$meilisearch_types..tasks..network..ImportIndexState$RP$$GT$$GT$17h6b8fb411429f7709E"(ptr noalias noundef align 8 dereferenceable(24) %i.m) #55, !noalias !8246
  br label %.body

bb.cb:                                            ; preds = %bb.ch
  %i.ki = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  br label %.body.i.i.i.i.i

.body.i.i.i.i.i:                                  ; preds = %bb.cf, %bb.cb
  tail call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #56, !noalias !8246
  unreachable

bb.cc:                                            ; preds = %bb.bh, %bb.ay
  %i.kj = phi i64 [ %.pre.i.i.i.i.i, %bb.ay ], [ %i.ik, %bb.bh ]
  %.pn.ph.i.i.i.i.i.i = phi { ptr, i32 } [ %i.hx, %bb.ay ], [ %i.ij, %bb.bh ] ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8283)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8284), !noalias !8285
  %i.kk = icmp eq i64 %i.kj, -9223372036854775808
  br i1 %i.kk, label %"_ZN4core3ptr132drop_in_place$LT$core..option..Option$LT$$LP$alloc..string..String$C$meilisearch_types..tasks..network..ImportIndexState$RP$$GT$$GT$17he47e727e60725938E.exit.i.i.i.i.i.i.i.i", label %bb.cd

bb.cd:                                            ; preds = %bb.cc
  call fastcc void @"_ZN4core3ptr104drop_in_place$LT$$LP$alloc..string..String$C$meilisearch_types..tasks..network..ImportIndexState$RP$$GT$17hf9040335892288a5E"(ptr noalias noundef nonnull readonly align 8 dereferenceable(72) %.sroa.4435.0..sroa_idx), !noalias !8247
  br label %"_ZN4core3ptr132drop_in_place$LT$core..option..Option$LT$$LP$alloc..string..String$C$meilisearch_types..tasks..network..ImportIndexState$RP$$GT$$GT$17he47e727e60725938E.exit.i.i.i.i.i.i.i.i"

"_ZN4core3ptr132drop_in_place$LT$core..option..Option$LT$$LP$alloc..string..String$C$meilisearch_types..tasks..network..ImportIndexState$RP$$GT$$GT$17he47e727e60725938E.exit.i.i.i.i.i.i.i.i": ; preds = %bb.cd, %bb.cc
  %i.kl = load i64, ptr %i.n, align 8, !range !38, !alias.scope !8286, !noalias !8254, !noundef !23
  %i.km = icmp eq i64 %i.kl, 2
  br i1 %i.km, label %"_ZN4core3ptr220drop_in_place$LT$itertools..adaptors..PutBack$LT$core..iter..adapters..fuse..Fuse$LT$alloc..collections..btree..map..IntoIter$LT$alloc..string..String$C$meilisearch_types..tasks..network..ImportIndexState$GT$$GT$$GT$$GT$17hb3c2a2db2c72e016E.exit.i.i.i.i.i.i.i", label %bb.ce

bb.ce:                                            ; preds = %"_ZN4core3ptr132drop_in_place$LT$core..option..Option$LT$$LP$alloc..string..String$C$meilisearch_types..tasks..network..ImportIndexState$RP$$GT$$GT$17he47e727e60725938E.exit.i.i.i.i.i.i.i.i"
  invoke fastcc void @"_ZN4core3ptr144drop_in_place$LT$alloc..collections..btree..map..IntoIter$LT$alloc..string..String$C$meilisearch_types..tasks..network..ImportIndexState$GT$$GT$17h8a2fdd2edad39891E"(ptr noalias noundef nonnull align 8 dereferenceable(288) %i.n)
end_hunk_5
begin_hunk_6_@_ZN17meilisearch_types8settings25apply_settings_to_builder17h64949a1cccb56b0cE:bb.a
  store i64 0, ptr %i.fh, align 8, !alias.scope !10174
  br label %"_ZN96_$LT$alloc..collections..btree..map..BTreeMap$LT$K$C$V$C$A$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h41b2e959bbfd0112E.exit192"

bb.as:                                            ; preds = %bb.aq
  %i.fi = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.fj = load ptr, ptr %i.fi, align 8, !alias.scope !10175, !noundef !23 ; 2 uses
  %.not.i191 = icmp eq ptr %i.fj, null
  br i1 %.not.i191, label %bb.au, label %bb.at, !prof !25

bb.at:                                            ; preds = %bb.as
  %i.fk = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.fl = load i64, ptr %i.fk, align 8, !alias.scope !10175, !noundef !23
  call fastcc void @"_ZN96_$LT$alloc..collections..btree..map..BTreeMap$LT$K$C$V$C$A$GT$$u20$as$u20$core..clone..Clone$GT$5clone13clone_subtree17h8c7c1b69047a6157E"(ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.aj, ptr noundef nonnull %i.fj, i64 noundef %i.fl), !noalias !10175
  br label %"_ZN96_$LT$alloc..collections..btree..map..BTreeMap$LT$K$C$V$C$A$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h41b2e959bbfd0112E.exit192"

bb.au:                                            ; preds = %bb.as
  call void @_ZN4core6option13unwrap_failed17h13b3e6f702cb1c04E(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2264) #57, !noalias !10176
  unreachable

"_ZN96_$LT$alloc..collections..btree..map..BTreeMap$LT$K$C$V$C$A$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h41b2e959bbfd0112E.exit192": ; preds = %bb.ar, %bb.at
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ax, ptr noundef nonnull align 8 dereferenceable(24) %i.aj, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aj)
  call void @_ZN5milli6update8settings8Settings14set_dictionary17h11d0191dc1853fe5E(ptr noalias noundef nonnull align 8 dereferenceable(880) %1, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.ax)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ax)
  br label %bb.aw

bb.av:                                            ; preds = %bb.ap
  call void @_ZN5milli6update8settings8Settings16reset_dictionary17h914d393e782ba997E(ptr noalias noundef nonnull align 8 dereferenceable(880) %1)
  br label %bb.aw

bb.aw:                                            ; preds = %bb.av, %"_ZN96_$LT$alloc..collections..btree..map..BTreeMap$LT$K$C$V$C$A$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h41b2e959bbfd0112E.exit192", %bb.ap
  %i.fm = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.fn = load i64, ptr %i.fm, align 8, !range !38, !noundef !23
  switch i64 %i.fn, label %default.unreachable588 [
    i64 0, label %bb.ax
    i64 1, label %bb.de
    i64 2, label %bb.df
  ]

bb.ax:                                            ; preds = %bb.aw
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aw)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.av)
  call void @llvm.experimental.noalias.scope.decl(metadata !10177)
  %i.fo = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.fp = load i64, ptr %i.fo, align 8, !alias.scope !10177, !noundef !23
  %i.fq = icmp eq i64 %i.fp, 0
  br i1 %i.fq, label %"_ZN119_$LT$alloc..collections..btree..map..BTreeMap$LT$K$C$V$C$A$GT$$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17h855bd0b286dce7e6E.exit", label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  %i.fr = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.fs = load ptr, ptr %i.fr, align 8, !alias.scope !10177, !noundef !23 ; 2 uses
  %.not.i193 = icmp eq ptr %i.fs, null
  br i1 %.not.i193, label %bb.az, label %"_ZN96_$LT$alloc..collections..btree..map..BTreeMap$LT$K$C$V$C$A$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h9a7e21b36d61169aE.exit", !prof !25

bb.az:                                            ; preds = %bb.ay
  call void @_ZN4core6option13unwrap_failed17h13b3e6f702cb1c04E(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2264) #57, !noalias !10178
  unreachable

"_ZN96_$LT$alloc..collections..btree..map..BTreeMap$LT$K$C$V$C$A$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h9a7e21b36d61169aE.exit": ; preds = %bb.ay
  %i.ft = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.fu = load i64, ptr %i.ft, align 8, !alias.scope !10177, !noundef !23
  call fastcc void @"_ZN96_$LT$alloc..collections..btree..map..BTreeMap$LT$K$C$V$C$A$GT$$u20$as$u20$core..clone..Clone$GT$5clone13clone_subtree17h7cfeacf0516b6a99E"(ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.av, ptr noundef nonnull %i.fs, i64 noundef %i.fu), !noalias !10177
  %.sroa.0.0.copyload.i194.pr = load ptr, ptr %i.av, align 8, !alias.scope !10179 ; 2 uses
  %.not.i195 = icmp eq ptr %.sroa.0.0.copyload.i194.pr, null
  br i1 %.not.i195, label %"_ZN119_$LT$alloc..collections..btree..map..BTreeMap$LT$K$C$V$C$A$GT$$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17h855bd0b286dce7e6E.exit", label %bb.ba

bb.ba:                                            ; preds = %"_ZN96_$LT$alloc..collections..btree..map..BTreeMap$LT$K$C$V$C$A$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h9a7e21b36d61169aE.exit"
  %.sroa.5.0..sroa_idx.i196 = getelementptr inbounds nuw i8, ptr %i.av, i64 8
  %i.fv = load <2 x i64>, ptr %.sroa.5.0..sroa_idx.i196, align 8, !alias.scope !10179
  br label %"_ZN119_$LT$alloc..collections..btree..map..BTreeMap$LT$K$C$V$C$A$GT$$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17h855bd0b286dce7e6E.exit"

"_ZN119_$LT$alloc..collections..btree..map..BTreeMap$LT$K$C$V$C$A$GT$$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17h855bd0b286dce7e6E.exit": ; preds = %bb.ax, %"_ZN96_$LT$alloc..collections..btree..map..BTreeMap$LT$K$C$V$C$A$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h9a7e21b36d61169aE.exit", %bb.ba
  %.sroa.0.0.copyload.i194299 = phi ptr [ null, %"_ZN96_$LT$alloc..collections..btree..map..BTreeMap$LT$K$C$V$C$A$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h9a7e21b36d61169aE.exit" ], [ %.sroa.0.0.copyload.i194.pr, %bb.ba ], [ null, %bb.ax ] ; 2 uses
  %.sink23.i = phi i64 [ 0, %"_ZN96_$LT$alloc..collections..btree..map..BTreeMap$LT$K$C$V$C$A$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h9a7e21b36d61169aE.exit" ], [ 1, %bb.ba ], [ 0, %bb.ax ] ; 2 uses
  %i.fw = phi <2 x i64> [ <i64 undef, i64 0>, %"_ZN96_$LT$alloc..collections..btree..map..BTreeMap$LT$K$C$V$C$A$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h9a7e21b36d61169aE.exit" ], [ %i.fv, %bb.ba ], [ <i64 undef, i64 0>, %bb.ax ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.av)
  call void @llvm.experimental.noalias.scope.decl(metadata !10180)
  call void @llvm.experimental.noalias.scope.decl(metadata !10181)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.af), !noalias !10182
  call void @llvm.experimental.noalias.scope.decl(metadata !10183)
  call void @llvm.experimental.noalias.scope.decl(metadata !10184)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ae), !noalias !10185
  store i64 %.sink23.i, ptr %i.ae, align 8, !alias.scope !10186, !noalias !10187
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  store ptr null, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !10186, !noalias !10187
  %.sroa.5.0..sroa_idx280 = getelementptr inbounds nuw i8, ptr %i.ae, i64 16
  store ptr %.sroa.0.0.copyload.i194299, ptr %.sroa.5.0..sroa_idx280, align 8, !alias.scope !10186, !noalias !10187
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ae, i64 24
  %i.fx = extractelement <2 x i64> %i.fw, i64 0
  store i64 %i.fx, ptr %.sroa.6.0..sroa_idx, align 8, !alias.scope !10186, !noalias !10187
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ae, i64 32
  store i64 %.sink23.i, ptr %.sroa.7.0..sroa_idx, align 8, !alias.scope !10186, !noalias !10187
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ae, i64 40
  store ptr null, ptr %.sroa.8.0..sroa_idx, align 8, !alias.scope !10186, !noalias !10187
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ae, i64 48
  store ptr %.sroa.0.0.copyload.i194299, ptr %.sroa.9.0..sroa_idx, align 8, !alias.scope !10186, !noalias !10187
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ae, i64 56
  %.sroa.11.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ae, i64 64
  store <2 x i64> %i.fw, ptr %.sroa.10.0..sroa_idx, align 8, !alias.scope !10186, !noalias !10187
  call void @llvm.experimental.noalias.scope.decl(metadata !10188)
  call void @llvm.experimental.noalias.scope.decl(metadata !10189)
  call void @llvm.experimental.noalias.scope.decl(metadata !10190)
  call void @llvm.experimental.noalias.scope.decl(metadata !10191)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ad), !noalias !10192
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ab), !noalias !10193
  invoke fastcc void @"_ZN5alloc11collections5btree3map25IntoIter$LT$K$C$V$C$A$GT$10dying_next17h29d3d6d29bad9f92E"(ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.ab, ptr noalias noundef nonnull align 8 dereferenceable(72) %i.ae)
          to label %.noexc.i.i.i.i.i.i unwind label %bb.bb, !noalias !10194

.noexc.i.i.i.i.i.i:                               ; preds = %"_ZN119_$LT$alloc..collections..btree..map..BTreeMap$LT$K$C$V$C$A$GT$$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17h855bd0b286dce7e6E.exit"
  %i.fy = load ptr, ptr %i.ab, align 8, !noalias !10193, !noundef !23 ; 3 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.fy, null
  br i1 %.not.i.i.i.i.i.i.i, label %.thread10.i.i.i.i.i.i, label %bb.bc

.thread10.i.i.i.i.i.i:                            ; preds = %.noexc.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab), !noalias !10193
  br label %_ZN4core4iter6traits8iterator8Iterator7collect17h73c629c4d9bd81b1E.exit.thread.i.i

bb.bb:                                            ; preds = %"_ZN119_$LT$alloc..collections..btree..map..BTreeMap$LT$K$C$V$C$A$GT$$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17h855bd0b286dce7e6E.exit"
  %i.fz = landingpad { ptr, i32 }
          cleanup
  br label %"_ZN4core3ptr97drop_in_place$LT$$LP$alloc..string..String$C$alloc..vec..Vec$LT$alloc..string..String$GT$$RP$$GT$17hb5f22967e0589570E.exit.i.i.i.i.i"

bb.bc:                                            ; preds = %.noexc.i.i.i.i.i.i
  %.sroa.22.0..sroa_idx.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ab, i64 16
  %.sroa.22.0.copyload.i.i.i.i.i.i.i = load i64, ptr %.sroa.22.0..sroa_idx.i.i.i.i.i.i.i, align 8, !noalias !10193 ; 2 uses
  %i.ga = getelementptr inbounds nuw i8, ptr %i.fy, i64 8
  %i.gb = getelementptr inbounds nuw [24 x i8], ptr %i.ga, i64 %.sroa.22.0.copyload.i.i.i.i.i.i.i ; 3 uses
  %.sroa.04.0.copyload.i.i.i.i.i.i = load i64, ptr %i.gb, align 8, !noalias !10193 ; 4 uses
  %.sroa.45.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.gb, i64 8
  %.sroa.45.i.sroa.0.0.copyload.i.i.i.i.i = load ptr, ptr %.sroa.45.0..sroa_idx.i.i.i.i.i.i, align 8, !noalias !10192 ; 3 uses
  %.sroa.45.i.sroa.4.0..sroa.45.0..sroa_idx.i.sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.gb, i64 16
  %.sroa.45.i.sroa.4.0.copyload.i.i.i.i.i = load i64, ptr %.sroa.45.i.sroa.4.0..sroa.45.0..sroa_idx.i.sroa_idx.i.i.i.i.i, align 8, !noalias !10192
  %i.gc = getelementptr inbounds nuw i8, ptr %i.fy, i64 272
  %i.gd = getelementptr inbounds nuw [24 x i8], ptr %i.gc, i64 %.sroa.22.0.copyload.i.i.i.i.i.i.i ; 3 uses
  %.sroa.45.i.sroa.5.16.copyload.i.i.i.i.i = load i64, ptr %i.gd, align 8, !noalias !10192 ; 3 uses
  %.sroa.45.i.sroa.7.16..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.gd, i64 8
  %.sroa.45.i.sroa.7.16.copyload.i.i.i.i.i = load ptr, ptr %.sroa.45.i.sroa.7.16..sroa_idx.i.i.i.i.i, align 8, !noalias !10192 ; 4 uses
  %.sroa.45.i.sroa.8.16..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.gd, i64 16
  %.sroa.45.i.sroa.8.16.copyload.i.i.i.i.i = load i64, ptr %.sroa.45.i.sroa.8.16..sroa_idx.i.i.i.i.i, align 8, !noalias !10192 ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab), !noalias !10193
  %.not.i.i.i.i.i.i = icmp eq i64 %.sroa.04.0.copyload.i.i.i.i.i.i, -9223372036854775808
  br i1 %.not.i.i.i.i.i.i, label %_ZN4core4iter6traits8iterator8Iterator7collect17h73c629c4d9bd81b1E.exit.thread.i.i, label %bb.bh

_ZN4core4iter6traits8iterator8Iterator7collect17h73c629c4d9bd81b1E.exit.thread.i.i: ; preds = %bb.bc, %.thread10.i.i.i.i.i.i
  store i64 0, ptr %i.af, align 8, !alias.scope !10195, !noalias !10182
  %i.ge = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %i.ge, align 8, !alias.scope !10195, !noalias !10182
  %i.gf = getelementptr inbounds nuw i8, ptr %i.af, i64 16
  store i64 0, ptr %i.gf, align 8, !alias.scope !10195, !noalias !10182
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ad), !noalias !10192
  call fastcc void @"_ZN4core3ptr137drop_in_place$LT$alloc..collections..btree..map..IntoIter$LT$alloc..string..String$C$alloc..vec..Vec$LT$alloc..string..String$GT$$GT$$GT$17h7bc99e566bdd048dE"(ptr noalias noundef nonnull align 8 dereferenceable(72) %i.ae), !noalias !10196
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ae), !noalias !10185
  br label %bb.bu

bb.bd:                                            ; preds = %bb.bi
  %i.gg = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.gh = icmp eq i64 %.sroa.04.0.copyload.i.i.i.i.i.i, 0
  br i1 %i.gh, label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17hfb8d17e84375b72dE.exit.i.i.i.i.i.i", label %bb.be

bb.be:                                            ; preds = %bb.bd
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.45.i.sroa.0.0.copyload.i.i.i.i.i) ]
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.45.i.sroa.0.0.copyload.i.i.i.i.i, i64 noundef %.sroa.04.0.copyload.i.i.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #52, !noalias !10197
  br label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17hfb8d17e84375b72dE.exit.i.i.i.i.i.i"

"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17hfb8d17e84375b72dE.exit.i.i.i.i.i.i": ; preds = %bb.be, %bb.bd
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.45.i.sroa.7.16.copyload.i.i.i.i.i) ]
  call void @llvm.experimental.noalias.scope.decl(metadata !10198), !noalias !10199
  %i.gi = icmp eq i64 %.sroa.45.i.sroa.8.16.copyload.i.i.i.i.i, 0
  br i1 %i.gi, label %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h29df9b7a9d118a79E.exit.i.i.i.i.i.i.i", label %.lr.ph.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i:                         ; preds = %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17hfb8d17e84375b72dE.exit.i.i.i.i.i.i", %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17hfb8d17e84375b72dE.exit.i.i.i.i.i.i.i.i.i"
  %.sroa.0.010.i.i.i.i.i.i.i.i.i = phi i64 [ %i.gk, %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17hfb8d17e84375b72dE.exit.i.i.i.i.i.i.i.i.i" ], [ 0, %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17hfb8d17e84375b72dE.exit.i.i.i.i.i.i" ] ; 2 uses
  %i.gj = getelementptr inbounds nuw [24 x i8], ptr %.sroa.45.i.sroa.7.16.copyload.i.i.i.i.i, i64 %.sroa.0.010.i.i.i.i.i.i.i.i.i ; 2 uses
  %i.gk = add nuw i64 %.sroa.0.010.i.i.i.i.i.i.i.i.i, 1 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !10200), !noalias !10199
  %.val.i.i.i.i.i.i.i.i.i.i = load i64, ptr %i.gj, align 8, !alias.scope !10201, !noalias !10202 ; 2 uses
  %i.gl = icmp eq i64 %.val.i.i.i.i.i.i.i.i.i.i, 0
  br i1 %i.gl, label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17hfb8d17e84375b72dE.exit.i.i.i.i.i.i.i.i.i", label %bb.bf

bb.bf:                                            ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i
  %i.gm = getelementptr inbounds nuw i8, ptr %i.gj, i64 8
  %.val1.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.gm, align 8, !alias.scope !10201, !noalias !10202, !nonnull !23, !noundef !23
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i.i.i.i.i.i.i.i, i64 noundef %.val.i.i.i.i.i.i.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #52, !noalias !10203
  br label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17hfb8d17e84375b72dE.exit.i.i.i.i.i.i.i.i.i"

"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17hfb8d17e84375b72dE.exit.i.i.i.i.i.i.i.i.i": ; preds = %bb.bf, %.lr.ph.i.i.i.i.i.i.i.i.i
  %i.gn = icmp eq i64 %i.gk, %.sroa.45.i.sroa.8.16.copyload.i.i.i.i.i
  br i1 %i.gn, label %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h29df9b7a9d118a79E.exit.i.i.i.i.i.i.i", label %.lr.ph.i.i.i.i.i.i.i.i.i

"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h29df9b7a9d118a79E.exit.i.i.i.i.i.i.i": ; preds = %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17hfb8d17e84375b72dE.exit.i.i.i.i.i.i.i.i.i", %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17hfb8d17e84375b72dE.exit.i.i.i.i.i.i"
  %i.go = icmp eq i64 %.sroa.45.i.sroa.5.16.copyload.i.i.i.i.i, 0
  br i1 %i.go, label %"_ZN4core3ptr97drop_in_place$LT$$LP$alloc..string..String$C$alloc..vec..Vec$LT$alloc..string..String$GT$$RP$$GT$17hb5f22967e0589570E.exit.i.i.i.i.i", label %bb.bg

bb.bg:                                            ; preds = %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h29df9b7a9d118a79E.exit.i.i.i.i.i.i.i"
  %i.gp = mul nuw i64 %.sroa.45.i.sroa.5.16.copyload.i.i.i.i.i, 24
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.45.i.sroa.7.16.copyload.i.i.i.i.i, i64 noundef %i.gp, i64 noundef range(i64 1, -9223372036854775807) 8) #52, !noalias !10202
  br label %"_ZN4core3ptr97drop_in_place$LT$$LP$alloc..string..String$C$alloc..vec..Vec$LT$alloc..string..String$GT$$RP$$GT$17hb5f22967e0589570E.exit.i.i.i.i.i"

bb.bh:                                            ; preds = %bb.bc
  %.val.i.i.i.i.i.i = load i64, ptr %.sroa.11.0..sroa_idx, align 8, !alias.scope !10204, !noalias !10185, !noundef !23 ; 2 uses
  %i.gq = call i64 @llvm.uadd.sat.i64(i64 %.val.i.i.i.i.i.i, i64 1)
  %.sroa.0.0.i.i.i.i.i.i.i = call noundef i64 @llvm.umax.i64(i64 %i.gq, i64 4) ; 3 uses
  %i.gr = mul i64 %.sroa.0.0.i.i.i.i.i.i.i, 48    ; 3 uses
  %or.cond.i.i.i.i.i.i.i.i.i = icmp ugt i64 %.val.i.i.i.i.i.i, 192153584101141161
  br i1 %or.cond.i.i.i.i.i.i.i.i.i, label %bb.bi, label %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i.i.i, !prof !32

_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i.i.i: ; preds = %bb.bh
  %i.gs = icmp eq i64 %i.gr, 0
  br i1 %i.gs, label %bb.bj, label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h2c5e185936086779E.exit.i.i.i.i.i.i.i.i"

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h2c5e185936086779E.exit.i.i.i.i.i.i.i.i": ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i.i.i
  call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #52, !noalias !10205
  %i.gt = call noundef align 8 ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef %i.gr, i64 noundef range(i64 1, 9) 8) #52, !noalias !10205 ; 2 uses
  %i.gu = icmp eq ptr %i.gt, null
  br i1 %i.gu, label %bb.bi, label %bb.bj

bb.bi:                                            ; preds = %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h2c5e185936086779E.exit.i.i.i.i.i.i.i.i", %bb.bh
  %.sroa.4.0.ph.i.i.i.i.i.i.i = phi i64 [ 8, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h2c5e185936086779E.exit.i.i.i.i.i.i.i.i" ], [ 0, %bb.bh ]
  invoke void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef %.sroa.4.0.ph.i.i.i.i.i.i.i, i64 %i.gr, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @1063) #57
          to label %.noexc5.i.i.i.i.i.i unwind label %bb.bd, !noalias !10192

.noexc5.i.i.i.i.i.i:                              ; preds = %bb.bi
  unreachable

bb.bj:                                            ; preds = %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h2c5e185936086779E.exit.i.i.i.i.i.i.i.i", %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i.i.i
  %.sroa.10.0.i.i.i.i.i.i.i = phi ptr [ inttoptr (i64 8 to ptr), %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i.i.i ], [ %i.gt, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h2c5e185936086779E.exit.i.i.i.i.i.i.i.i" ] ; 8 uses
  %.sroa.4.0.i.i.i.i.i.i.i = phi i64 [ 0, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i.i.i ], [ %.sroa.0.0.i.i.i.i.i.i.i, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h2c5e185936086779E.exit.i.i.i.i.i.i.i.i" ] ; 2 uses
  %i.gv = icmp ule i64 %.sroa.0.0.i.i.i.i.i.i.i, %.sroa.4.0.i.i.i.i.i.i.i
  call void @llvm.assume(i1 %i.gv)
  store i64 %.sroa.04.0.copyload.i.i.i.i.i.i, ptr %.sroa.10.0.i.i.i.i.i.i.i, align 8, !noalias !10192
  %.sroa.5.0..sroa.10.0.i.i.sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.10.0.i.i.i.i.i.i.i, i64 8
  store ptr %.sroa.45.i.sroa.0.0.copyload.i.i.i.i.i, ptr %.sroa.5.0..sroa.10.0.i.i.sroa_idx.i.i.i.i.i, align 8, !noalias !10192
  %.sroa.7.0..sroa.10.0.i.i.sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.10.0.i.i.i.i.i.i.i, i64 16
  store i64 %.sroa.45.i.sroa.4.0.copyload.i.i.i.i.i, ptr %.sroa.7.0..sroa.10.0.i.i.sroa_idx.i.i.i.i.i, align 8, !noalias !10192
  %.sroa.71.0..sroa.10.0.i.i.sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.10.0.i.i.i.i.i.i.i, i64 24
  store i64 %.sroa.45.i.sroa.5.16.copyload.i.i.i.i.i, ptr %.sroa.71.0..sroa.10.0.i.i.sroa_idx.i.i.i.i.i, align 8, !noalias !10192
  %.sroa.8.0..sroa.10.0.i.i.sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.10.0.i.i.i.i.i.i.i, i64 32
  store ptr %.sroa.45.i.sroa.7.16.copyload.i.i.i.i.i, ptr %.sroa.8.0..sroa.10.0.i.i.sroa_idx.i.i.i.i.i, align 8, !noalias !10192
  %.sroa.9.0..sroa.10.0.i.i.sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.10.0.i.i.i.i.i.i.i, i64 40
  store i64 %.sroa.45.i.sroa.8.16.copyload.i.i.i.i.i, ptr %.sroa.9.0..sroa.10.0.i.i.sroa_idx.i.i.i.i.i, align 8, !noalias !10192
  store i64 %.sroa.4.0.i.i.i.i.i.i.i, ptr %i.ad, align 8, !noalias !10192
  %.sroa.4.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ad, i64 8 ; 2 uses
  store ptr %.sroa.10.0.i.i.i.i.i.i.i, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i.i, align 8, !noalias !10192
  %.sroa.6.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ad, i64 16 ; 2 uses
  store i64 1, ptr %.sroa.6.0..sroa_idx.i.i.i.i.i.i, align 8, !noalias !10192
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ac), !noalias !10192
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.ac, ptr noundef nonnull align 8 dereferenceable(72) %i.ae, i64 72, i1 false), !noalias !10196
  call void @llvm.experimental.noalias.scope.decl(metadata !10206)
  call void @llvm.experimental.noalias.scope.decl(metadata !10207)
  call void @llvm.experimental.noalias.scope.decl(metadata !10208)
  call void @llvm.experimental.noalias.scope.decl(metadata !10209)
  %.sroa.22.0..sroa_idx.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.z, i64 16
  %.sroa.45.24..sroa_idx.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.45.i.i.i.i.i.i.i.i, i64 16
  %.sroa.7.0..sroa_idx.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  %i.gw = getelementptr inbounds nuw i8, ptr %i.ac, i64 64
  br label %bb.bk

bb.bk:                                            ; preds = %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17hec5d1505fd86bd1aE.exit.i.i.i.i.i.i.i.i", %bb.bj
  %i.gx = phi ptr [ %i.hi, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17hec5d1505fd86bd1aE.exit.i.i.i.i.i.i.i.i" ], [ %.sroa.10.0.i.i.i.i.i.i.i, %bb.bj ]
  %i.gy = phi i64 [ %i.hk, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17hec5d1505fd86bd1aE.exit.i.i.i.i.i.i.i.i" ], [ 1, %bb.bj ] ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.7.i.i.i.i.i.i.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.z), !noalias !10210
  invoke fastcc void @"_ZN5alloc11collections5btree3map25IntoIter$LT$K$C$V$C$A$GT$10dying_next17h29d3d6d29bad9f92E"(ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.z, ptr noalias noundef nonnull align 8 dereferenceable(72) %i.ac)
          to label %.noexc.i.i.i.i.i.i.i.i unwind label %bb.bm, !noalias !10211

.noexc.i.i.i.i.i.i.i.i:                           ; preds = %bb.bk
  %i.gz = load ptr, ptr %i.z, align 8, !noalias !10210, !noundef !23 ; 3 uses
  %.not.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.gz, null
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %.thread.i.i.i.i.i.i.i.i, label %bb.bn

.thread.i.i.i.i.i.i.i.i:                          ; preds = %.noexc.i.i.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z), !noalias !10210
  br label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$16extend_desugared17hb032b2c4d097bc37E.exit.i.i.i.i.i.i.i"

bb.bl:                                            ; preds = %bb.bp, %bb.bm
  %.pn.i.i.i.i.i.i.i.i = phi { ptr, i32 } [ %i.hl, %bb.bp ], [ %i.ha, %bb.bm ]
  invoke fastcc void @"_ZN4core3ptr137drop_in_place$LT$alloc..collections..btree..map..IntoIter$LT$alloc..string..String$C$alloc..vec..Vec$LT$alloc..string..String$GT$$GT$$GT$17h7bc99e566bdd048dE"(ptr noalias noundef nonnull align 8 dereferenceable(72) %i.ac) #55
          to label %.body.i.i.i.i.i.i unwind label %bb.br, !noalias !10212

bb.bm:                                            ; preds = %bb.bk
  %i.ha = landingpad { ptr, i32 }
          cleanup
  br label %bb.bl

bb.bn:                                            ; preds = %.noexc.i.i.i.i.i.i.i.i
  %.sroa.22.0.copyload.i.i.i.i.i.i.i.i.i = load i64, ptr %.sroa.22.0..sroa_idx.i.i.i.i.i.i.i.i.i, align 8, !noalias !10210 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.45.i.i.i.i.i.i.i.i)
  %i.hb = getelementptr inbounds nuw i8, ptr %i.gz, i64 8
  %i.hc = getelementptr inbounds nuw [24 x i8], ptr %i.hb, i64 %.sroa.22.0.copyload.i.i.i.i.i.i.i.i.i ; 2 uses
  %.sroa.04.0.copyload.i.i.i.i.i.i.i.i = load i64, ptr %i.hc, align 8, !noalias !10210 ; 2 uses
  %.sroa.45.0..sroa_idx.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.hc, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.45.i.i.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.45.0..sroa_idx.i.i.i.i.i.i.i.i, i64 16, i1 false), !noalias !10210
  %i.hd = getelementptr inbounds nuw i8, ptr %i.gz, i64 272
  %i.he = getelementptr inbounds nuw [24 x i8], ptr %i.hd, i64 %.sroa.22.0.copyload.i.i.i.i.i.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.45.24..sroa_idx.i.i.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(24) %i.he, i64 24, i1 false), !noalias !10210
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.7.i.i.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.45.i.i.i.i.i.i.i.i, i64 40, i1 false), !noalias !10213
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.45.i.i.i.i.i.i.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z), !noalias !10210
  %.not.i.i.i.i.i.i.i.i = icmp eq i64 %.sroa.04.0.copyload.i.i.i.i.i.i.i.i, -9223372036854775808
  br i1 %.not.i.i.i.i.i.i.i.i, label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$16extend_desugared17hb032b2c4d097bc37E.exit.i.i.i.i.i.i.i", label %bb.bo

bb.bo:                                            ; preds = %bb.bn
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aa), !noalias !10214
  store i64 %.sroa.04.0.copyload.i.i.i.i.i.i.i.i, ptr %i.aa, align 8, !noalias !10214
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.7.0..sroa_idx.i.i.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.7.i.i.i.i.i.i.i.i, i64 40, i1 false), !noalias !10214
  %i.hf = icmp samesign ult i64 %i.gy, 192153584101141163
  call void @llvm.assume(i1 %i.hf)
  %i.hg = load i64, ptr %i.ad, align 8, !range !24, !alias.scope !10215, !noalias !10192, !noundef !23
  %i.hh = icmp eq i64 %i.gy, %i.hg
  br i1 %i.hh, label %bb.bq, label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17hec5d1505fd86bd1aE.exit.i.i.i.i.i.i.i.i"

"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17hec5d1505fd86bd1aE.exit.i.i.i.i.i.i.i.i": ; preds = %"._ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17hec5d1505fd86bd1aE.exit.i.i_crit_edge.i.i.i.i.i.i", %bb.bo
  %i.hi = phi ptr [ %.pre.i.i.i.i.i.i, %"._ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17hec5d1505fd86bd1aE.exit.i.i_crit_edge.i.i.i.i.i.i" ], [ %i.gx, %bb.bo ] ; 2 uses
  %i.hj = getelementptr inbounds nuw [48 x i8], ptr %i.hi, i64 %i.gy
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.hj, ptr noundef nonnull align 8 dereferenceable(48) %i.aa, i64 48, i1 false), !noalias !10214
  %i.hk = add nuw nsw i64 %i.gy, 1                ; 2 uses
  store i64 %i.hk, ptr %.sroa.6.0..sroa_idx.i.i.i.i.i.i, align 8, !alias.scope !10215, !noalias !10192
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa), !noalias !10214
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7.i.i.i.i.i.i.i.i)
  br label %bb.bk

bb.bp:                                            ; preds = %bb.bq
  %i.hl = landingpad { ptr, i32 }
          cleanup
  call fastcc void @"_ZN4core3ptr97drop_in_place$LT$$LP$alloc..string..String$C$alloc..vec..Vec$LT$alloc..string..String$GT$$RP$$GT$17hb5f22967e0589570E"(ptr noalias noundef align 8 dereferenceable(48) %i.aa) #55, !noalias !10214
  br label %bb.bl

bb.bq:                                            ; preds = %bb.bo
  %.val.i.i.i.i.i.i.i.i = load i64, ptr %i.gw, align 8, !alias.scope !10216, !noalias !10192, !noundef !23
  %i.hm = call i64 @llvm.uadd.sat.i64(i64 %.val.i.i.i.i.i.i.i.i, i64 1)
  invoke fastcc void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$7reserve21do_reserve_and_handle17h45307a5a03ebcc73E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ad, i64 noundef %i.gy, i64 noundef range(i64 1, 0) %i.hm, i64 noundef 8, i64 noundef 48)
          to label %"._ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17hec5d1505fd86bd1aE.exit.i.i_crit_edge.i.i.i.i.i.i" unwind label %bb.bp, !noalias !10217

"._ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17hec5d1505fd86bd1aE.exit.i.i_crit_edge.i.i.i.i.i.i": ; preds = %bb.bq
  %.pre.i.i.i.i.i.i = load ptr, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i.i, align 8, !alias.scope !10215, !noalias !10192
  br label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17hec5d1505fd86bd1aE.exit.i.i.i.i.i.i.i.i"

bb.br:                                            ; preds = %bb.bl
  %i.hn = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #56, !noalias !10214
  unreachable

"_ZN5alloc3vec16Vec$LT$T$C$A$GT$16extend_desugared17hb032b2c4d097bc37E.exit.i.i.i.i.i.i.i": ; preds = %bb.bn, %.thread.i.i.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7.i.i.i.i.i.i.i.i)
  invoke fastcc void @"_ZN4core3ptr137drop_in_place$LT$alloc..collections..btree..map..IntoIter$LT$alloc..string..String$C$alloc..vec..Vec$LT$alloc..string..String$GT$$GT$$GT$17h7bc99e566bdd048dE"(ptr noalias noundef nonnull align 8 dereferenceable(72) %i.ac)
          to label %_ZN4core4iter6traits8iterator8Iterator7collect17h73c629c4d9bd81b1E.exit.i.i unwind label %bb.bs, !noalias !10212

bb.bs:                                            ; preds = %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$16extend_desugared17hb032b2c4d097bc37E.exit.i.i.i.i.i.i.i"
  %i.ho = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i.i.i.i.i

.body.i.i.i.i.i.i:                                ; preds = %bb.bs, %bb.bl
  %eh.lpad-body.i.i.i.i.i.i = phi { ptr, i32 } [ %i.ho, %bb.bs ], [ %.pn.i.i.i.i.i.i.i.i, %bb.bl ]
  call fastcc void @"_ZN4core3ptr120drop_in_place$LT$alloc..vec..Vec$LT$$LP$alloc..string..String$C$alloc..vec..Vec$LT$alloc..string..String$GT$$RP$$GT$$GT$17h77d6568a0b155b13E"(ptr noalias noundef align 8 dereferenceable(24) %i.ad) #55, !noalias !10192
  br label %common.resume

bb.bt:                                            ; preds = %"_ZN4core3ptr97drop_in_place$LT$$LP$alloc..string..String$C$alloc..vec..Vec$LT$alloc..string..String$GT$$RP$$GT$17hb5f22967e0589570E.exit.i.i.i.i.i"
  %i.hp = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #56, !noalias !10192
  unreachable

"_ZN4core3ptr97drop_in_place$LT$$LP$alloc..string..String$C$alloc..vec..Vec$LT$alloc..string..String$GT$$RP$$GT$17hb5f22967e0589570E.exit.i.i.i.i.i": ; preds = %bb.bg, %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h29df9b7a9d118a79E.exit.i.i.i.i.i.i.i", %bb.bb
  %.pn.ph.i.i.i.i.i.i = phi { ptr, i32 } [ %i.fz, %bb.bb ], [ %i.gg, %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h29df9b7a9d118a79E.exit.i.i.i.i.i.i.i" ], [ %i.gg, %bb.bg ]
  invoke fastcc void @"_ZN4core3ptr137drop_in_place$LT$alloc..collections..btree..map..IntoIter$LT$alloc..string..String$C$alloc..vec..Vec$LT$alloc..string..String$GT$$GT$$GT$17h7bc99e566bdd048dE"(ptr noalias noundef nonnull align 8 dereferenceable(72) %i.ae) #55
          to label %common.resume unwind label %bb.bt, !noalias !10196

_ZN4core4iter6traits8iterator8Iterator7collect17h73c629c4d9bd81b1E.exit.i.i: ; preds = %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$16extend_desugared17hb032b2c4d097bc37E.exit.i.i.i.i.i.i.i"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ac), !noalias !10192
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.af, ptr noundef nonnull align 8 dereferenceable(24) %i.ad, i64 24, i1 false), !noalias !10218
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ad), !noalias !10192
  %.phi.trans.insert.i.i = getelementptr inbounds nuw i8, ptr %i.af, i64 16
  %.pre.i.i = load i64, ptr %.phi.trans.insert.i.i, align 8, !noalias !10182 ; 7 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ae), !noalias !10185
  %i.hq = icmp ult i64 %.pre.i.i, 192153584101141163
  call void @llvm.assume(i1 %i.hq)
  %i.hr = icmp eq i64 %.pre.i.i, 0
  br i1 %i.hr, label %bb.bu, label %bb.bv

bb.bu:                                            ; preds = %_ZN4core4iter6traits8iterator8Iterator7collect17h73c629c4d9bd81b1E.exit.i.i, %_ZN4core4iter6traits8iterator8Iterator7collect17h73c629c4d9bd81b1E.exit.thread.i.i
  store ptr null, ptr %i.aw, align 8, !alias.scope !10219
  %i.hs = getelementptr inbounds nuw i8, ptr %i.aw, i64 16
  store i64 0, ptr %i.hs, align 8, !alias.scope !10219
  call fastcc void @"_ZN4core3ptr120drop_in_place$LT$alloc..vec..Vec$LT$$LP$alloc..string..String$C$alloc..vec..Vec$LT$alloc..string..String$GT$$RP$$GT$$GT$17h77d6568a0b155b13E"(ptr noalias noundef align 8 dereferenceable(24) %i.af), !noalias !10182
  br label %_ZN4core4iter6traits8iterator8Iterator7collect17hc02b9f3c282551faE.exit

bb.bv:                                            ; preds = %_ZN4core4iter6traits8iterator8Iterator7collect17h73c629c4d9bd81b1E.exit.i.i
  %i.ht = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  %i.hu = load ptr, ptr %i.ht, align 8, !noalias !10182, !nonnull !23, !noundef !23 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.y), !noalias !10220
  %i.hv = icmp eq i64 %.pre.i.i, 1
  br i1 %i.hv, label %bb.bz, label %bb.bw, !prof !51

bb.bw:                                            ; preds = %bb.bv
  %i.hw = icmp samesign ult i64 %.pre.i.i, 21
  br i1 %i.hw, label %bb.by, label %bb.bx, !prof !51

bb.bx:                                            ; preds = %bb.bw
  invoke void @_ZN4core5slice4sort6stable14driftsort_main17h1ab10ef599dee176E(ptr noalias noundef nonnull align 8 %i.hu, i64 noundef range(i64 1, 192153584101141163) %.pre.i.i, ptr noalias noundef nonnull align 8 dereferenceable(8) %i.y)
          to label %bb.bz unwind label %bb.dd, !noalias !10182

bb.by:                                            ; preds = %bb.bw
end_hunk_6
begin_hunk_7_@_ZN17meilisearch_types8settings25apply_settings_to_builder17h64949a1cccb56b0cE:bb.a
  %i.zq = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.val.i11.i.i.i.i.i.i.i.i.i.i.i.i = load i64, ptr %i.p, align 8, !noalias !10322 ; 2 uses
  %i.zr = icmp eq i64 %.val.i11.i.i.i.i.i.i.i.i.i.i.i.i, 0
  br i1 %i.zr, label %.body.i.i.i.i213, label %bb.fq

bb.fq:                                            ; preds = %bb.fp
  %.val1.i12.i.i.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.xk, align 8, !noalias !10322, !nonnull !23, !noundef !23
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i12.i.i.i.i.i.i.i.i.i.i.i.i, i64 noundef %.val.i11.i.i.i.i.i.i.i.i.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #52, !noalias !10337
  br label %.body.i.i.i.i213

"_ZN4core4iter8adapters3map8map_fold28_$u7b$$u7b$closure$u7d$$u7d$17h8db142ac43e34406E.exit.i.i.i.i.i.i.i.i": ; preds = %bb.fo, %bb.fn, %bb.fm
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !noalias !10321
  %i.zs = icmp eq i64 %.sroa.2542.0.i.i.i.i.i.i.i, 0
  br i1 %i.zs, label %_ZN4core4iter6traits8iterator8Iterator7collect17h9b41ed2856845330E.exit, label %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h153b1578dfc650acE.exit.i.i.i.i.i.i.i.i"

"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h153b1578dfc650acE.exit.i.i.i.i.i.i.i.i": ; preds = %"_ZN4core4iter8adapters3map8map_fold28_$u7b$$u7b$closure$u7d$$u7d$17h8db142ac43e34406E.exit.i.i.i.i.i.i.i.i"
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.5.0.i.i.i.i.i.i.i) ]
  %i.zt = getelementptr inbounds nuw i8, ptr %.sroa.5.0.i.i.i.i.i.i.i, i64 274
  %i.zu = load i16, ptr %i.zt, align 2, !noalias !10338, !noundef !23
  %i.zv = zext i16 %i.zu to i64
  %i.zw = icmp ult i64 %.sroa.19.0.i.i.i.i.i.i.i, %i.zv
  br i1 %i.zw, label %.thread.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i

.thread.i.i.i.i.i.i.i:                            ; preds = %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h153b1578dfc650acE.exit.i.i.i.i.i.i.i.i"
  %i.zx = add nuw nsw i64 %.sroa.19.0.i.i.i.i.i.i.i, 1
  br label %"_ZN108_$LT$alloc..collections..btree..map..Iter$LT$K$C$V$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h8ce8261ce83f263aE.exit.i.i.i.i.i.i.i"

.lr.ph.i.i.i.i.i.i.i.i.i.i.i:                     ; preds = %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h153b1578dfc650acE.exit.i.i.i.i.i.i.i.i", %bb.fr
  %.sroa.0.038.i.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.zy, %bb.fr ], [ %.sroa.5.0.i.i.i.i.i.i.i, %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h153b1578dfc650acE.exit.i.i.i.i.i.i.i.i" ] ; 2 uses
  %.sroa.5.037.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.zz, %bb.fr ], [ 0, %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h153b1578dfc650acE.exit.i.i.i.i.i.i.i.i" ] ; 2 uses
  %i.zy = load ptr, ptr %.sroa.0.038.i.i.i.i.i.i.i.i.i.i.i, align 8, !noalias !10339, !noundef !23 ; 8 uses
  %.not.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.zy, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i, label %bb.fu, label %bb.fr

bb.fr:                                            ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i
  %i.zz = add i64 %.sroa.5.037.i.i.i.i.i.i.i.i.i.i.i, 1 ; 5 uses
  %i.aaa = getelementptr inbounds nuw i8, ptr %.sroa.0.038.i.i.i.i.i.i.i.i.i.i.i, i64 272
  %i.aab = load i16, ptr %i.aaa, align 8, !noalias !10339 ; 3 uses
  %i.aac = getelementptr inbounds nuw i8, ptr %i.zy, i64 274
  %i.aad = load i16, ptr %i.aac, align 2, !noalias !10338, !noundef !23
  %i.aae = icmp ult i16 %i.aab, %i.aad
  br i1 %i.aae, label %bb.fs, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i

bb.fs:                                            ; preds = %bb.fr
  %i.aaf = zext i16 %i.aab to i64                 ; 4 uses
  %i.aag = icmp eq i64 %i.zz, 0
  %i.aah = add nuw nsw i64 %i.aaf, 1              ; 2 uses
  br i1 %i.aag, label %"_ZN108_$LT$alloc..collections..btree..map..Iter$LT$K$C$V$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h8ce8261ce83f263aE.exit.i.i.i.i.i.i.i", label %bb.ft

bb.ft:                                            ; preds = %bb.fs
  %i.aai = getelementptr inbounds nuw i8, ptr %i.zy, i64 288
  %i.aaj = icmp ult i16 %i.aab, 11
  call void @llvm.assume(i1 %i.aaj)
  %i.aak = getelementptr inbounds nuw [8 x i8], ptr %i.aai, i64 %i.aah ; 2 uses
  %xtraiter907 = and i64 %i.zz, 7                 ; 2 uses
  %lcmp.mod908.not = icmp eq i64 %xtraiter907, 0
  br i1 %lcmp.mod908.not, label %.prol.loopexit904, label %.prol.preheader903

.prol.preheader903:                               ; preds = %bb.ft, %.prol.preheader903
  %.pn30.in.i.i.i.i.i.i.i.i.i.i.i.prol = phi ptr [ %i.aal, %.prol.preheader903 ], [ %i.aak, %bb.ft ]
  %.pn28.in.i.i.i.i.i.i.i.i.i.i.i.prol = phi i64 [ %.pn28.i.i.i.i.i.i.i.i.i.i.i.prol, %.prol.preheader903 ], [ %i.zz, %bb.ft ]
  %prol.iter909 = phi i64 [ %prol.iter909.next, %.prol.preheader903 ], [ 0, %bb.ft ]
  %.pn28.i.i.i.i.i.i.i.i.i.i.i.prol = add i64 %.pn28.in.i.i.i.i.i.i.i.i.i.i.i.prol, -1 ; 2 uses
  %.pn30.i.i.i.i.i.i.i.i.i.i.i.prol = load ptr, ptr %.pn30.in.i.i.i.i.i.i.i.i.i.i.i.prol, align 8, !noalias !10340, !nonnull !23, !noundef !23 ; 2 uses
  %i.aal = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.i.i.i.i.i.i.i.prol, i64 288 ; 2 uses
  %prol.iter909.next = add i64 %prol.iter909, 1   ; 2 uses
  %prol.iter909.cmp.not = icmp eq i64 %prol.iter909.next, %xtraiter907
  br i1 %prol.iter909.cmp.not, label %.prol.loopexit904, label %.prol.preheader903, !llvm.loop !9948

.prol.loopexit904:                                ; preds = %.prol.preheader903, %bb.ft
  %.pn30.i.i.i.i.i.i.i.i.i.i.i.lcssa.unr = phi ptr [ poison, %bb.ft ], [ %.pn30.i.i.i.i.i.i.i.i.i.i.i.prol, %.prol.preheader903 ]
  %.pn30.in.i.i.i.i.i.i.i.i.i.i.i.unr = phi ptr [ %i.aak, %bb.ft ], [ %i.aal, %.prol.preheader903 ]
  %.pn28.in.i.i.i.i.i.i.i.i.i.i.i.unr = phi i64 [ %i.zz, %bb.ft ], [ %.pn28.i.i.i.i.i.i.i.i.i.i.i.prol, %.prol.preheader903 ]
  %i.aam = icmp ult i64 %.sroa.5.037.i.i.i.i.i.i.i.i.i.i.i, 7
  br i1 %i.aam, label %"_ZN108_$LT$alloc..collections..btree..map..Iter$LT$K$C$V$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h8ce8261ce83f263aE.exit.i.i.i.i.i.i.i", label %.new905

.new905:                                          ; preds = %.prol.loopexit904, %.new905
  %.pn30.in.i.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.aav, %.new905 ], [ %.pn30.in.i.i.i.i.i.i.i.i.i.i.i.unr, %.prol.loopexit904 ]
  %.pn28.in.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %.pn28.i.i.i.i.i.i.i.i.i.i.i.7, %.new905 ], [ %.pn28.in.i.i.i.i.i.i.i.i.i.i.i.unr, %.prol.loopexit904 ]
  %.pn30.i.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %.pn30.in.i.i.i.i.i.i.i.i.i.i.i, align 8, !noalias !10340, !nonnull !23, !noundef !23
  %i.aan = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.i.i.i.i.i.i.i, i64 288
  %.pn30.i.i.i.i.i.i.i.i.i.i.i.1 = load ptr, ptr %i.aan, align 8, !noalias !10340, !nonnull !23, !noundef !23
  %i.aao = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.i.i.i.i.i.i.i.1, i64 288
  %.pn30.i.i.i.i.i.i.i.i.i.i.i.2 = load ptr, ptr %i.aao, align 8, !noalias !10340, !nonnull !23, !noundef !23
  %i.aap = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.i.i.i.i.i.i.i.2, i64 288
  %.pn30.i.i.i.i.i.i.i.i.i.i.i.3 = load ptr, ptr %i.aap, align 8, !noalias !10340, !nonnull !23, !noundef !23
  %i.aaq = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.i.i.i.i.i.i.i.3, i64 288
  %.pn30.i.i.i.i.i.i.i.i.i.i.i.4 = load ptr, ptr %i.aaq, align 8, !noalias !10340, !nonnull !23, !noundef !23
  %i.aar = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.i.i.i.i.i.i.i.4, i64 288
  %.pn30.i.i.i.i.i.i.i.i.i.i.i.5 = load ptr, ptr %i.aar, align 8, !noalias !10340, !nonnull !23, !noundef !23
  %i.aas = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.i.i.i.i.i.i.i.5, i64 288
  %.pn30.i.i.i.i.i.i.i.i.i.i.i.6 = load ptr, ptr %i.aas, align 8, !noalias !10340, !nonnull !23, !noundef !23
  %i.aat = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.i.i.i.i.i.i.i.6, i64 288
  %.pn28.i.i.i.i.i.i.i.i.i.i.i.7 = add i64 %.pn28.in.i.i.i.i.i.i.i.i.i.i.i, -8 ; 2 uses
  %.pn30.i.i.i.i.i.i.i.i.i.i.i.7 = load ptr, ptr %i.aat, align 8, !noalias !10340, !nonnull !23, !noundef !23 ; 2 uses
  %i.aau = icmp eq i64 %.pn28.i.i.i.i.i.i.i.i.i.i.i.7, 0
  %i.aav = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.i.i.i.i.i.i.i.7, i64 288
  br i1 %i.aau, label %"_ZN108_$LT$alloc..collections..btree..map..Iter$LT$K$C$V$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h8ce8261ce83f263aE.exit.i.i.i.i.i.i.i", label %.new905

bb.fu:                                            ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i
  invoke void @_ZN4core6option13unwrap_failed17h13b3e6f702cb1c04E(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1126) #57
          to label %.noexc.i.i.i.i.i.i.i.i.i215 unwind label %bb.fv, !noalias !10341

.noexc.i.i.i.i.i.i.i.i.i215:                      ; preds = %bb.fu
  unreachable

bb.fv:                                            ; preds = %bb.fu
  %i.aaw = landingpad { ptr, i32 }
          cleanup                                 ; 0 uses
  call void @llvm.trap()
  unreachable

"_ZN108_$LT$alloc..collections..btree..map..Iter$LT$K$C$V$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h8ce8261ce83f263aE.exit.i.i.i.i.i.i.i": ; preds = %.prol.loopexit904, %.new905, %bb.fs, %.thread.i.i.i.i.i.i.i
  %.sroa.0.0.ph.i.i.i68.i.i.i.i.i.i.i = phi ptr [ %i.zy, %bb.fs ], [ %.sroa.5.0.i.i.i.i.i.i.i, %.thread.i.i.i.i.i.i.i ], [ %i.zy, %.new905 ], [ %i.zy, %.prol.loopexit904 ] ; 2 uses
  %.sroa.6.sroa.4.0.ph.i.i.i67.i.i.i.i.i.i.i = phi i64 [ %i.aaf, %bb.fs ], [ %.sroa.19.0.i.i.i.i.i.i.i, %.thread.i.i.i.i.i.i.i ], [ %i.aaf, %.new905 ], [ %i.aaf, %.prol.loopexit904 ] ; 3 uses
  %.sroa.7.0.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.aah, %bb.fs ], [ %i.zx, %.thread.i.i.i.i.i.i.i ], [ 0, %.new905 ], [ 0, %.prol.loopexit904 ]
  %.sroa.07.0.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.zy, %bb.fs ], [ %.sroa.5.0.i.i.i.i.i.i.i, %.thread.i.i.i.i.i.i.i ], [ %.pn30.i.i.i.i.i.i.i.i.i.i.i.lcssa.unr, %.prol.loopexit904 ], [ %.pn30.i.i.i.i.i.i.i.i.i.i.i.7, %.new905 ]
  %i.aax = getelementptr inbounds nuw i8, ptr %.sroa.0.0.ph.i.i.i68.i.i.i.i.i.i.i, i64 8
  %i.aay = icmp samesign ult i64 %.sroa.6.sroa.4.0.ph.i.i.i67.i.i.i.i.i.i.i, 11
  call void @llvm.assume(i1 %i.aay)
  %i.aaz = getelementptr inbounds nuw [24 x i8], ptr %i.aax, i64 %.sroa.6.sroa.4.0.ph.i.i.i67.i.i.i.i.i.i.i
  %i.aba = getelementptr inbounds nuw i8, ptr %.sroa.0.0.ph.i.i.i68.i.i.i.i.i.i.i, i64 276
  %i.abb = getelementptr inbounds nuw i8, ptr %i.aba, i64 %.sroa.6.sroa.4.0.ph.i.i.i67.i.i.i.i.i.i.i
  br label %bb.ff

.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.ff, %.critedge.i1.i.i.i.i.i.i.i, %bb.ex
  %lpad.loopexit.split-lp841 = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i.i.i213

.body.i.i.i.i213:                                 ; preds = %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.fq, %bb.fp
  %eh.lpad-body.i.i.i.i = phi { ptr, i32 } [ %i.zq, %bb.fp ], [ %i.zq, %bb.fq ], [ %lpad.loopexit.split-lp841, %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  call fastcc void @"_ZN4core3ptr138drop_in_place$LT$std..collections..hash..map..HashMap$LT$alloc..string..String$C$milli..search..facet..facet_distribution..OrderBy$GT$$GT$17ha848a01fda12e3d8E"(ptr noalias noundef align 8 dereferenceable(48) %i.q) #55, !noalias !10305
  br label %common.resume

_ZN4core4iter6traits8iterator8Iterator7collect17h9b41ed2856845330E.exit: ; preds = %"_ZN4core4iter8adapters3map8map_fold28_$u7b$$u7b$closure$u7d$$u7d$17h8db142ac43e34406E.exit.i.i.i.i.i.i.i.i", %"_ZN73_$LT$std..hash..random..RandomState$u20$as$u20$core..default..Default$GT$7default17hee692b4a22bcebefE.exit.i.i.i.i"
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.ap, ptr noundef nonnull align 8 dereferenceable(48) %i.q, i64 48, i1 false), !noalias !10342
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !noalias !10305
  call void @_ZN5milli6update8settings8Settings24set_sort_facet_values_by17h0d8aa6dfc2a7ab18E(ptr noalias noundef nonnull align 8 dereferenceable(880) %1, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.ap)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ap)
  br label %bb.et

bb.fw:                                            ; preds = %bb.ev
  call void @_ZN5milli6update8settings8Settings26reset_sort_facet_values_by17he38e4cdaada9828dE(ptr noalias noundef nonnull align 8 dereferenceable(880) %1)
  br label %bb.et

bb.fx:                                            ; preds = %bb.et
  switch i64 %i.um, label %bb.b [
    i64 0, label %bb.fz
    i64 1, label %.sink.split695
    i64 2, label %bb.fy
  ]

.sink.split695:                                   ; preds = %bb.et, %bb.fx, %bb.fz
  %.sink698 = phi i64 [ 384, %bb.fz ], [ 376, %bb.fx ], [ 376, %bb.et ]
  %.sink696 = phi i64 [ %i.abf, %bb.fz ], [ %i.um, %bb.fx ], [ %i.uo, %bb.et ]
  %i.abc = getelementptr inbounds nuw i8, ptr %1, i64 %.sink698
  store i64 %.sink696, ptr %i.abc, align 8
  br label %bb.fy

bb.fy:                                            ; preds = %.sink.split695, %bb.fx, %bb.et
  %i.abd = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.abe = load i64, ptr %i.abd, align 8, !range !38, !noundef !23
  switch i64 %i.abe, label %default.unreachable588 [
    i64 0, label %bb.ga
    i64 1, label %bb.jd
    i64 2, label %bb.je
  ]

bb.fz:                                            ; preds = %bb.fx
  %i.abf = load i64, ptr %i.un, align 8, !range !45, !noundef !23
  %i.abg = getelementptr inbounds nuw i8, ptr %1, i64 376
  store i64 0, ptr %i.abg, align 8
  br label %.sink.split695

bb.ga:                                            ; preds = %bb.fy
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ao)
  %i.abh = getelementptr inbounds nuw i8, ptr %0, i64 200
  %i.abi = load ptr, ptr %i.abh, align 8, !noundef !23 ; 4 uses
  %.not155 = icmp ne ptr %i.abi, null
  %i.abj = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.abk = load i64, ptr %i.abj, align 8          ; 5 uses
  %i.abl = getelementptr inbounds nuw i8, ptr %0, i64 216
  %i.abm = load i64, ptr %i.abl, align 8          ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !10343)
  call void @llvm.experimental.noalias.scope.decl(metadata !10344)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !noalias !10345
  call void @llvm.experimental.noalias.scope.decl(metadata !10346)
  call void @llvm.experimental.noalias.scope.decl(metadata !10347)
  call void @llvm.experimental.noalias.scope.decl(metadata !10348)
  call void @llvm.experimental.noalias.scope.decl(metadata !10349)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !noalias !10350
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0.i.i.i.i.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.8.i.i.i.i.i.i)
  %i.abn = icmp ne i64 %i.abm, 0
  %.not316 = select i1 %.not155, i1 %i.abn, i1 false
  br i1 %.not316, label %bb.gb, label %_ZN4core4iter6traits8iterator8Iterator7collect17hf639972eca84bfa9E.exit.thread.i.i

bb.gb:                                            ; preds = %bb.ga
  %i.abo = add i64 %i.abm, -1                     ; 4 uses
  %i.abp = icmp eq i64 %i.abk, 0
  br i1 %i.abp, label %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h07b749001abe6e7dE.exit.i.i.i.i.i", label %.lr.ph.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.preheader:                     ; preds = %bb.gb
  %xtraiter910 = and i64 %i.abk, 7                ; 2 uses
  %lcmp.mod911.not = icmp eq i64 %xtraiter910, 0
  br i1 %lcmp.mod911.not, label %.lr.ph.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.prol

.lr.ph.i.i.i.i.i.i.prol:                          ; preds = %.lr.ph.i.i.i.i.i.i.preheader, %.lr.ph.i.i.i.i.i.i.prol
  %.sroa.012.015.i.i.i.i.i.i.prol = phi ptr [ %.sroa.012.0.i.i.i.i.i.i.prol, %.lr.ph.i.i.i.i.i.i.prol ], [ %i.abi, %.lr.ph.i.i.i.i.i.i.preheader ]
  %.sroa.011.014.i.i.i.i.i.i.prol = phi i64 [ %i.abr, %.lr.ph.i.i.i.i.i.i.prol ], [ %i.abk, %.lr.ph.i.i.i.i.i.i.preheader ]
  %prol.iter912 = phi i64 [ %prol.iter912.next, %.lr.ph.i.i.i.i.i.i.prol ], [ 0, %.lr.ph.i.i.i.i.i.i.preheader ]
  %i.abq = getelementptr inbounds nuw i8, ptr %.sroa.012.015.i.i.i.i.i.i.prol, i64 16912
  %i.abr = add i64 %.sroa.011.014.i.i.i.i.i.i.prol, -1 ; 2 uses
  %.sroa.012.0.i.i.i.i.i.i.prol = load ptr, ptr %i.abq, align 8, !noalias !10351, !nonnull !23, !noundef !23 ; 3 uses
  %prol.iter912.next = add i64 %prol.iter912, 1   ; 2 uses
  %prol.iter912.cmp.not = icmp eq i64 %prol.iter912.next, %xtraiter910
  br i1 %prol.iter912.cmp.not, label %.lr.ph.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.prol, !llvm.loop !9973

.lr.ph.i.i.i.i.i.i.prol.loopexit:                 ; preds = %.lr.ph.i.i.i.i.i.i.prol, %.lr.ph.i.i.i.i.i.i.preheader
  %.sroa.012.0.i.i.i.i.i.i.lcssa.unr = phi ptr [ poison, %.lr.ph.i.i.i.i.i.i.preheader ], [ %.sroa.012.0.i.i.i.i.i.i.prol, %.lr.ph.i.i.i.i.i.i.prol ]
  %.sroa.012.015.i.i.i.i.i.i.unr = phi ptr [ %i.abi, %.lr.ph.i.i.i.i.i.i.preheader ], [ %.sroa.012.0.i.i.i.i.i.i.prol, %.lr.ph.i.i.i.i.i.i.prol ]
  %.sroa.011.014.i.i.i.i.i.i.unr = phi i64 [ %i.abk, %.lr.ph.i.i.i.i.i.i.preheader ], [ %i.abr, %.lr.ph.i.i.i.i.i.i.prol ]
  %i.abs = icmp ult i64 %i.abk, 8
  br i1 %i.abs, label %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h07b749001abe6e7dE.exit.i.i.i.i.i", label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %.lr.ph.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i
  %.sroa.012.015.i.i.i.i.i.i = phi ptr [ %.sroa.012.0.i.i.i.i.i.i.7, %.lr.ph.i.i.i.i.i.i ], [ %.sroa.012.015.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.i.prol.loopexit ]
  %.sroa.011.014.i.i.i.i.i.i = phi i64 [ %i.acb, %.lr.ph.i.i.i.i.i.i ], [ %.sroa.011.014.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.i.prol.loopexit ]
  %i.abt = getelementptr inbounds nuw i8, ptr %.sroa.012.015.i.i.i.i.i.i, i64 16912
  %.sroa.012.0.i.i.i.i.i.i = load ptr, ptr %i.abt, align 8, !noalias !10351, !nonnull !23, !noundef !23
  %i.abu = getelementptr inbounds nuw i8, ptr %.sroa.012.0.i.i.i.i.i.i, i64 16912
  %.sroa.012.0.i.i.i.i.i.i.1 = load ptr, ptr %i.abu, align 8, !noalias !10351, !nonnull !23, !noundef !23
  %i.abv = getelementptr inbounds nuw i8, ptr %.sroa.012.0.i.i.i.i.i.i.1, i64 16912
  %.sroa.012.0.i.i.i.i.i.i.2 = load ptr, ptr %i.abv, align 8, !noalias !10351, !nonnull !23, !noundef !23
  %i.abw = getelementptr inbounds nuw i8, ptr %.sroa.012.0.i.i.i.i.i.i.2, i64 16912
  %.sroa.012.0.i.i.i.i.i.i.3 = load ptr, ptr %i.abw, align 8, !noalias !10351, !nonnull !23, !noundef !23
  %i.abx = getelementptr inbounds nuw i8, ptr %.sroa.012.0.i.i.i.i.i.i.3, i64 16912
  %.sroa.012.0.i.i.i.i.i.i.4 = load ptr, ptr %i.abx, align 8, !noalias !10351, !nonnull !23, !noundef !23
  %i.aby = getelementptr inbounds nuw i8, ptr %.sroa.012.0.i.i.i.i.i.i.4, i64 16912
  %.sroa.012.0.i.i.i.i.i.i.5 = load ptr, ptr %i.aby, align 8, !noalias !10351, !nonnull !23, !noundef !23
  %i.abz = getelementptr inbounds nuw i8, ptr %.sroa.012.0.i.i.i.i.i.i.5, i64 16912
  %.sroa.012.0.i.i.i.i.i.i.6 = load ptr, ptr %i.abz, align 8, !noalias !10351, !nonnull !23, !noundef !23
  %i.aca = getelementptr inbounds nuw i8, ptr %.sroa.012.0.i.i.i.i.i.i.6, i64 16912
  %i.acb = add i64 %.sroa.011.014.i.i.i.i.i.i, -8 ; 2 uses
  %.sroa.012.0.i.i.i.i.i.i.7 = load ptr, ptr %i.aca, align 8, !noalias !10351, !nonnull !23, !noundef !23 ; 2 uses
  %i.acc = icmp eq i64 %i.acb, 0
  br i1 %i.acc, label %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h07b749001abe6e7dE.exit.i.i.i.i.i", label %.lr.ph.i.i.i.i.i.i

"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h07b749001abe6e7dE.exit.i.i.i.i.i": ; preds = %.lr.ph.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i, %bb.gb
  %.sroa.05.0.copyload.i.i.i.i.i.i = phi ptr [ %i.abi, %bb.gb ], [ %.sroa.012.0.i.i.i.i.i.i.lcssa.unr, %.lr.ph.i.i.i.i.i.i.prol.loopexit ], [ %.sroa.012.0.i.i.i.i.i.i.7, %.lr.ph.i.i.i.i.i.i ] ; 4 uses
  %i.acd = getelementptr inbounds nuw i8, ptr %.sroa.05.0.copyload.i.i.i.i.i.i, i64 16906
  %i.ace = load i16, ptr %i.acd, align 2, !noalias !10352, !noundef !23
  %.not317 = icmp eq i16 %i.ace, 0
  br i1 %.not317, label %.lr.ph.i.i.i.i2.i.i.i.i, label %.loopexit.i.i.i.i226

.lr.ph.i.i.i.i2.i.i.i.i:                          ; preds = %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h07b749001abe6e7dE.exit.i.i.i.i.i", %bb.gc
  %.sroa.0.038.i.i.i.i.i.i.i.i = phi ptr [ %i.acf, %bb.gc ], [ %.sroa.05.0.copyload.i.i.i.i.i.i, %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h07b749001abe6e7dE.exit.i.i.i.i.i" ] ; 2 uses
  %.sroa.5.037.i.i.i.i.i.i.i.i = phi i64 [ %i.acg, %bb.gc ], [ 0, %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h07b749001abe6e7dE.exit.i.i.i.i.i" ] ; 2 uses
  %i.acf = load ptr, ptr %.sroa.0.038.i.i.i.i.i.i.i.i, align 8, !noalias !10353, !noundef !23 ; 8 uses
  %.not.i.i.i.i.i.i.i.i.i225 = icmp eq ptr %i.acf, null
  br i1 %.not.i.i.i.i.i.i.i.i.i225, label %bb.gf, label %bb.gc

bb.gc:                                            ; preds = %.lr.ph.i.i.i.i2.i.i.i.i
  %i.acg = add i64 %.sroa.5.037.i.i.i.i.i.i.i.i, 1 ; 5 uses
  %i.ach = getelementptr inbounds nuw i8, ptr %.sroa.0.038.i.i.i.i.i.i.i.i, i64 16904
  %i.aci = load i16, ptr %i.ach, align 8, !noalias !10353 ; 3 uses
  %i.acj = getelementptr inbounds nuw i8, ptr %i.acf, i64 16906
  %i.ack = load i16, ptr %i.acj, align 2, !noalias !10352, !noundef !23
  %i.acl = icmp ult i16 %i.aci, %i.ack
  br i1 %i.acl, label %bb.gd, label %.lr.ph.i.i.i.i2.i.i.i.i

bb.gd:                                            ; preds = %bb.gc
  %i.acm = zext i16 %i.aci to i64                 ; 4 uses
  %i.acn = icmp eq i64 %i.acg, 0
  %i.aco = add nuw nsw i64 %i.acm, 1              ; 2 uses
  br i1 %i.acn, label %.loopexit.i.i.i.i226, label %bb.ge

bb.ge:                                            ; preds = %bb.gd
  %i.acp = getelementptr inbounds nuw i8, ptr %i.acf, i64 16912
  %i.acq = icmp ult i16 %i.aci, 11
  call void @llvm.assume(i1 %i.acq), !noalias !10354
  %i.acr = getelementptr inbounds nuw [8 x i8], ptr %i.acp, i64 %i.aco ; 2 uses
  %xtraiter917 = and i64 %i.acg, 7                ; 2 uses
  %lcmp.mod918.not = icmp eq i64 %xtraiter917, 0
  br i1 %lcmp.mod918.not, label %.prol.loopexit914, label %.prol.preheader913

.prol.preheader913:                               ; preds = %bb.ge, %.prol.preheader913
  %.pn30.in.i.i.i.i.i.i.i.i.prol = phi ptr [ %i.acs, %.prol.preheader913 ], [ %i.acr, %bb.ge ]
  %.pn28.in.i.i.i.i.i.i.i.i.prol = phi i64 [ %.pn28.i.i.i.i.i.i.i.i.prol, %.prol.preheader913 ], [ %i.acg, %bb.ge ]
  %prol.iter919 = phi i64 [ %prol.iter919.next, %.prol.preheader913 ], [ 0, %bb.ge ]
  %.pn28.i.i.i.i.i.i.i.i.prol = add i64 %.pn28.in.i.i.i.i.i.i.i.i.prol, -1 ; 2 uses
  %.pn30.i.i.i.i.i.i.i.i.prol = load ptr, ptr %.pn30.in.i.i.i.i.i.i.i.i.prol, align 8, !noalias !10355, !nonnull !23, !noundef !23 ; 2 uses
  %i.acs = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.i.i.i.i.prol, i64 16912 ; 2 uses
  %prol.iter919.next = add i64 %prol.iter919, 1   ; 2 uses
  %prol.iter919.cmp.not = icmp eq i64 %prol.iter919.next, %xtraiter917
  br i1 %prol.iter919.cmp.not, label %.prol.loopexit914, label %.prol.preheader913, !llvm.loop !9987

.prol.loopexit914:                                ; preds = %.prol.preheader913, %bb.ge
  %.pn30.i.i.i.i.i.i.i.i.lcssa.unr = phi ptr [ poison, %bb.ge ], [ %.pn30.i.i.i.i.i.i.i.i.prol, %.prol.preheader913 ]
  %.pn30.in.i.i.i.i.i.i.i.i.unr = phi ptr [ %i.acr, %bb.ge ], [ %i.acs, %.prol.preheader913 ]
  %.pn28.in.i.i.i.i.i.i.i.i.unr = phi i64 [ %i.acg, %bb.ge ], [ %.pn28.i.i.i.i.i.i.i.i.prol, %.prol.preheader913 ]
  %i.act = icmp ult i64 %.sroa.5.037.i.i.i.i.i.i.i.i, 7
  br i1 %i.act, label %.loopexit.i.i.i.i226, label %.new915

.new915:                                          ; preds = %.prol.loopexit914, %.new915
  %.pn30.in.i.i.i.i.i.i.i.i = phi ptr [ %i.adc, %.new915 ], [ %.pn30.in.i.i.i.i.i.i.i.i.unr, %.prol.loopexit914 ]
  %.pn28.in.i.i.i.i.i.i.i.i = phi i64 [ %.pn28.i.i.i.i.i.i.i.i.7, %.new915 ], [ %.pn28.in.i.i.i.i.i.i.i.i.unr, %.prol.loopexit914 ]
  %.pn30.i.i.i.i.i.i.i.i = load ptr, ptr %.pn30.in.i.i.i.i.i.i.i.i, align 8, !noalias !10355, !nonnull !23, !noundef !23
  %i.acu = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.i.i.i.i, i64 16912
  %.pn30.i.i.i.i.i.i.i.i.1 = load ptr, ptr %i.acu, align 8, !noalias !10355, !nonnull !23, !noundef !23
  %i.acv = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.i.i.i.i.1, i64 16912
  %.pn30.i.i.i.i.i.i.i.i.2 = load ptr, ptr %i.acv, align 8, !noalias !10355, !nonnull !23, !noundef !23
  %i.acw = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.i.i.i.i.2, i64 16912
  %.pn30.i.i.i.i.i.i.i.i.3 = load ptr, ptr %i.acw, align 8, !noalias !10355, !nonnull !23, !noundef !23
  %i.acx = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.i.i.i.i.3, i64 16912
  %.pn30.i.i.i.i.i.i.i.i.4 = load ptr, ptr %i.acx, align 8, !noalias !10355, !nonnull !23, !noundef !23
  %i.acy = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.i.i.i.i.4, i64 16912
  %.pn30.i.i.i.i.i.i.i.i.5 = load ptr, ptr %i.acy, align 8, !noalias !10355, !nonnull !23, !noundef !23
  %i.acz = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.i.i.i.i.5, i64 16912
  %.pn30.i.i.i.i.i.i.i.i.6 = load ptr, ptr %i.acz, align 8, !noalias !10355, !nonnull !23, !noundef !23
  %i.ada = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.i.i.i.i.6, i64 16912
  %.pn28.i.i.i.i.i.i.i.i.7 = add i64 %.pn28.in.i.i.i.i.i.i.i.i, -8 ; 2 uses
  %.pn30.i.i.i.i.i.i.i.i.7 = load ptr, ptr %i.ada, align 8, !noalias !10355, !nonnull !23, !noundef !23 ; 2 uses
  %i.adb = icmp eq i64 %.pn28.i.i.i.i.i.i.i.i.7, 0
  %i.adc = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.i.i.i.i.7, i64 16912
  br i1 %i.adb, label %.loopexit.i.i.i.i226, label %.new915

bb.gf:                                            ; preds = %.lr.ph.i.i.i.i2.i.i.i.i
  invoke void @_ZN4core6option13unwrap_failed17h13b3e6f702cb1c04E(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1126) #57
          to label %.noexc.i.i3.i.i.i.i unwind label %bb.gg, !noalias !10356

.noexc.i.i3.i.i.i.i:                              ; preds = %bb.gf
  unreachable

bb.gg:                                            ; preds = %bb.gf
  %i.add = landingpad { ptr, i32 }
          cleanup                                 ; 0 uses
  call void @llvm.trap(), !noalias !10354
  unreachable

.loopexit.i.i.i.i226:                             ; preds = %.prol.loopexit914, %.new915, %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h07b749001abe6e7dE.exit.i.i.i.i.i", %bb.gd
  %.sroa.0.0.ph.i.i.i.i.i.i.i310 = phi ptr [ %i.acf, %bb.gd ], [ %.sroa.05.0.copyload.i.i.i.i.i.i, %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h07b749001abe6e7dE.exit.i.i.i.i.i" ], [ %i.acf, %.new915 ], [ %i.acf, %.prol.loopexit914 ] ; 2 uses
  %.sroa.6.sroa.4.0.ph.i.i.i.i.i.i.i309 = phi i64 [ %i.acm, %bb.gd ], [ 0, %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h07b749001abe6e7dE.exit.i.i.i.i.i" ], [ %i.acm, %.new915 ], [ %i.acm, %.prol.loopexit914 ] ; 3 uses
  %.sroa.7.0.i.i.i.i.i.i.i = phi i64 [ %i.aco, %bb.gd ], [ 1, %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h07b749001abe6e7dE.exit.i.i.i.i.i" ], [ 0, %.new915 ], [ 0, %.prol.loopexit914 ] ; 3 uses
  %.sroa.07.0.i.i.i.i.i.i.i = phi ptr [ %i.acf, %bb.gd ], [ %.sroa.05.0.copyload.i.i.i.i.i.i, %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h07b749001abe6e7dE.exit.i.i.i.i.i" ], [ %.pn30.i.i.i.i.i.i.i.i.lcssa.unr, %.prol.loopexit914 ], [ %.pn30.i.i.i.i.i.i.i.i.7, %.new915 ] ; 4 uses
  %i.ade = getelementptr inbounds nuw i8, ptr %.sroa.0.0.ph.i.i.i.i.i.i.i310, i64 8
  %i.adf = icmp samesign ult i64 %.sroa.6.sroa.4.0.ph.i.i.i.i.i.i.i309, 11
  call void @llvm.assume(i1 %i.adf), !noalias !10354
  %i.adg = getelementptr inbounds nuw [24 x i8], ptr %i.ade, i64 %.sroa.6.sroa.4.0.ph.i.i.i.i.i.i.i309
  %i.adh = getelementptr inbounds nuw i8, ptr %.sroa.0.0.ph.i.i.i.i.i.i.i310, i64 272
  %i.adi = getelementptr inbounds nuw [1512 x i8], ptr %i.adh, i64 %.sroa.6.sroa.4.0.ph.i.i.i.i.i.i.i309 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !10357)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !10358
  call void @"_ZN60_$LT$alloc..string..String$u20$as$u20$core..clone..Clone$GT$5clone17h123bb51dd192bfa5E"(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.l, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.adg, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @869), !noalias !10359
  %i.adj = load i64, ptr %i.adi, align 8, !range !57, !alias.scope !10357, !noalias !10360, !noundef !23
  %i.adk = call i64 @llvm.usub.sat.i64(i64 %i.adj, i64 2)
  switch i64 %i.adk, label %default.unreachable588 [
    i64 0, label %bb.gh
    i64 1, label %"_ZN102_$LT$core..iter..adapters..map..Map$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h88a24477432fe985E.exit.thread19.i.i.i.i.i.i"
    i64 2, label %bb.gi
  ]

bb.gh:                                            ; preds = %.loopexit.i.i.i.i226
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !10358
  invoke fastcc void @"_ZN81_$LT$milli..vector..settings..EmbeddingSettings$u20$as$u20$core..clone..Clone$GT$5clone17h594a7199b4654745E"(ptr noalias noundef align 8 captures(address) dereferenceable(1512) %i.k, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(1512) %i.adi)
          to label %"_ZN102_$LT$core..iter..adapters..map..Map$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h88a24477432fe985E.exit.i.i.i.i.i.i" unwind label %bb.gj, !noalias !10361

bb.gi:                                            ; preds = %.loopexit.i.i.i.i226
  br label %"_ZN102_$LT$core..iter..adapters..map..Map$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h88a24477432fe985E.exit.thread19.i.i.i.i.i.i"

bb.gj:                                            ; preds = %bb.gh
  %i.adl = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !10362)
  %.val.i.i.i.i.i.i.i.i.i = load i64, ptr %i.l, align 8, !alias.scope !10362, !noalias !10358 ; 2 uses
  %i.adm = icmp eq i64 %.val.i.i.i.i.i.i.i.i.i, 0
  br i1 %i.adm, label %common.resume, label %bb.gk

bb.gk:                                            ; preds = %bb.gj
  %i.adn = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %.val1.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.adn, align 8, !alias.scope !10362, !noalias !10358, !nonnull !23, !noundef !23
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i.i.i.i.i.i.i, i64 noundef %.val.i.i.i.i.i.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #52, !noalias !10363
  br label %common.resume

"_ZN102_$LT$core..iter..adapters..map..Map$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h88a24477432fe985E.exit.thread19.i.i.i.i.i.i": ; preds = %bb.gi, %.loopexit.i.i.i.i226
  %.sroa.0.0.i.i.ph.i.i.i.i.i.i = phi i64 [ 3, %.loopexit.i.i.i.i226 ], [ 4, %bb.gi ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(24) %i.l, i64 24, i1 false), !noalias !10364
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !10358
  br label %bb.gn

"_ZN102_$LT$core..iter..adapters..map..Map$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h88a24477432fe985E.exit.i.i.i.i.i.i": ; preds = %bb.gh
  %.sroa.0.0.copyload.i.i.i.i.i.i.i.i = load i64, ptr %i.k, align 8, !noalias !10358 ; 2 uses
  %.sroa.6.0..sroa_idx.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1504) %.sroa.8.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(1504) %.sroa.6.0..sroa_idx.i.i.i.i.i.i.i.i, i64 1504, i1 false), !noalias !10364
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !10358
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(24) %i.l, i64 24, i1 false), !noalias !10364
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !10358
  %.not.i.i.i.i.i.i279 = icmp eq i64 %.sroa.0.0.copyload.i.i.i.i.i.i.i.i, 5
  br i1 %.not.i.i.i.i.i.i279, label %_ZN4core4iter6traits8iterator8Iterator7collect17hf639972eca84bfa9E.exit.thread.i.i, label %bb.gn

_ZN4core4iter6traits8iterator8Iterator7collect17hf639972eca84bfa9E.exit.thread.i.i: ; preds = %"_ZN102_$LT$core..iter..adapters..map..Map$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h88a24477432fe985E.exit.i.i.i.i.i.i", %bb.ga
  store i64 0, ptr %i.o, align 8, !alias.scope !10365, !noalias !10345
  %i.ado = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %i.ado, align 8, !alias.scope !10365, !noalias !10345
  %i.adp = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  store i64 0, ptr %i.adp, align 8, !alias.scope !10365, !noalias !10345
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.i.i.i.i.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.8.i.i.i.i.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !10350
  br label %bb.hk

bb.gl:                                            ; preds = %bb.go
  %i.adq = landingpad { ptr, i32 }
          cleanup
  call void @llvm.experimental.noalias.scope.decl(metadata !10366)
  call void @llvm.experimental.noalias.scope.decl(metadata !10367), !noalias !10368
  %.val.i.i.i.i.i.i.i = load i64, ptr %i.m, align 8, !alias.scope !10369, !noalias !10350 ; 2 uses
  %i.adr = icmp eq i64 %.val.i.i.i.i.i.i.i, 0
  br i1 %i.adr, label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17hfb8d17e84375b72dE.exit.i.i.i.i.i.i277", label %bb.gm

bb.gm:                                            ; preds = %bb.gl
  %i.ads = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %.val1.i.i.i.i.i.i.i = load ptr, ptr %i.ads, align 8, !alias.scope !10369, !noalias !10350, !nonnull !23, !noundef !23
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i.i.i.i.i, i64 noundef %.val.i.i.i.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #52, !noalias !10370
  br label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17hfb8d17e84375b72dE.exit.i.i.i.i.i.i277"

"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17hfb8d17e84375b72dE.exit.i.i.i.i.i.i277": ; preds = %bb.gm, %bb.gl
  invoke fastcc void @"_ZN4core3ptr103drop_in_place$LT$milli..update..settings..Setting$LT$milli..vector..settings..EmbeddingSettings$GT$$GT$17h30f5cc25ce77e6a9E"(ptr noalias noundef readonly align 8 dereferenceable(1512) %.sroa.5.0..sroa_idx.i.i.i.i.i.i)
          to label %common.resume unwind label %bb.hj, !noalias !10350

bb.gn:                                            ; preds = %"_ZN102_$LT$core..iter..adapters..map..Map$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h88a24477432fe985E.exit.i.i.i.i.i.i", %"_ZN102_$LT$core..iter..adapters..map..Map$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h88a24477432fe985E.exit.thread19.i.i.i.i.i.i"
  %.sroa.0.0.i.i22.i.i.i.i.i.i = phi i64 [ %.sroa.0.0.i.i.ph.i.i.i.i.i.i, %"_ZN102_$LT$core..iter..adapters..map..Map$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h88a24477432fe985E.exit.thread19.i.i.i.i.i.i" ], [ %.sroa.0.0.copyload.i.i.i.i.i.i.i.i, %"_ZN102_$LT$core..iter..adapters..map..Map$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h88a24477432fe985E.exit.i.i.i.i.i.i" ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !noalias !10350
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.m, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0.i.i.i.i.i.i, i64 24, i1 false), !noalias !10350
  %.sroa.5.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.m, i64 24 ; 2 uses
  store i64 %.sroa.0.0.i.i22.i.i.i.i.i.i, ptr %.sroa.5.0..sroa_idx.i.i.i.i.i.i, align 8, !noalias !10350
  %.sroa.8.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.m, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1504) %.sroa.8.0..sroa_idx.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(1504) %.sroa.8.i.i.i.i.i.i, i64 1504, i1 false), !noalias !10350
  %i.adt = call i64 @llvm.uadd.sat.i64(i64 %i.abo, i64 1) ; 3 uses
  %i.adu = mul i64 %i.adt, 1536                   ; 3 uses
  %or.cond.i.i.i.i.i.i.i.i.i227 = icmp ugt i64 %i.abo, 6004799503160660
  br i1 %or.cond.i.i.i.i.i.i.i.i.i227, label %bb.go, label %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i.i.i228, !prof !32

_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i.i.i228: ; preds = %bb.gn
  %2 = icmp eq i64 %i.adu, 0
  br i1 %2, label %bb.gp, label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h2c5e185936086779E.exit.i.i.i.i.i.i.i.i228"

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h2c5e185936086779E.exit.i.i.i.i.i.i.i.i228": ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i.i.i228
  call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #52, !noalias !10371
  %i.adv = call noundef align 8 ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef %i.adu, i64 noundef range(i64 1, 9) 8) #52, !noalias !10371 ; 2 uses
  %i.adw = icmp eq ptr %i.adv, null
  br i1 %i.adw, label %bb.go, label %bb.gp

bb.go:                                            ; preds = %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h2c5e185936086779E.exit.i.i.i.i.i.i.i.i228", %bb.gn
  %.sroa.4.0.ph.i.i.i.i.i.i.i276 = phi i64 [ 8, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h2c5e185936086779E.exit.i.i.i.i.i.i.i.i228" ], [ 0, %bb.gn ]
  invoke void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef %.sroa.4.0.ph.i.i.i.i.i.i.i276, i64 %i.adu, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @1063) #57
          to label %.noexc.i.i.i.i.i.i278 unwind label %bb.gl, !noalias !10350

.noexc.i.i.i.i.i.i278:                            ; preds = %bb.go
  unreachable

bb.gp:                                            ; preds = %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h2c5e185936086779E.exit.i.i.i.i.i.i.i.i228", %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i.i.i228
  %.sroa.10.0.i.i.i.i.i.i.i230 = phi ptr [ inttoptr (i64 8 to ptr), %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i.i.i228 ], [ %i.adv, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h2c5e185936086779E.exit.i.i.i.i.i.i.i.i228" ] ; 3 uses
  %.sroa.4.0.i.i.i.i.i.i.i231 = phi i64 [ 0, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i.i.i228 ], [ %i.adt, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h2c5e185936086779E.exit.i.i.i.i.i.i.i.i228" ] ; 2 uses
  %3 = icmp ule i64 %i.adt, %.sroa.4.0.i.i.i.i.i.i.i231
  call void @llvm.assume(i1 %3)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1536) %.sroa.10.0.i.i.i.i.i.i.i230, ptr noundef nonnull align 8 dereferenceable(1536) %i.m, i64 1536, i1 false), !noalias !10350
  store i64 %.sroa.4.0.i.i.i.i.i.i.i231, ptr %i.n, align 8, !noalias !10350
  %.sroa.4.0..sroa_idx.i.i.i.i.i.i229 = getelementptr inbounds nuw i8, ptr %i.n, i64 8 ; 2 uses
  store ptr %.sroa.10.0.i.i.i.i.i.i.i230, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i.i229, align 8, !noalias !10350
  %.sroa.6.0..sroa_idx.i.i.i.i.i.i230 = getelementptr inbounds nuw i8, ptr %i.n, i64 16 ; 2 uses
  store i64 1, ptr %.sroa.6.0..sroa_idx.i.i.i.i.i.i230, align 8, !noalias !10350
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !10350
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.i.i.i.i.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.8.i.i.i.i.i.i)
  call void @llvm.experimental.noalias.scope.decl(metadata !10372)
  call void @llvm.experimental.noalias.scope.decl(metadata !10373)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0.i.i.i.i.i.i.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.8.i.i.i.i.i.i.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6.i.i.i.i.i.i.i.i.i.i)
  %i.adx = icmp eq i64 %i.abo, 0
  br i1 %i.adx, label %"_ZN102_$LT$core..iter..adapters..map..Map$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h88a24477432fe985E.exit.thread.i.i.i.i.i.i.i.i", label %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h07b749001abe6e7dE.exit.i18.i.i.i.i.i.i"

"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h07b749001abe6e7dE.exit.i18.i.i.i.i.i.i": ; preds = %bb.gp
  %i.ady = getelementptr inbounds nuw i8, ptr %.sroa.07.0.i.i.i.i.i.i.i, i64 16906
  %i.adz = load i16, ptr %i.ady, align 2, !noalias !10374, !noundef !23
  %i.aea = zext i16 %i.adz to i64
  %i.aeb = icmp samesign ult i64 %.sroa.7.0.i.i.i.i.i.i.i, %i.aea
  br i1 %i.aeb, label %.thread.i.i.i.i, label %.lr.ph.i.i.i.i24.i.i.i.i.i.i

.thread.i.i.i.i:                                  ; preds = %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h07b749001abe6e7dE.exit.i18.i.i.i.i.i.i"
  %i.aec = add nuw nsw i64 %.sroa.7.0.i.i.i.i.i.i.i, 1
  br label %.lr.ph.i.i.i.i.i.i.i.i231

.lr.ph.i.i.i.i24.i.i.i.i.i.i:                     ; preds = %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h07b749001abe6e7dE.exit.i18.i.i.i.i.i.i", %bb.gq
  %.sroa.0.038.i.i.i.i25.i.i.i.i.i.i = phi ptr [ %i.aed, %bb.gq ], [ %.sroa.07.0.i.i.i.i.i.i.i, %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h07b749001abe6e7dE.exit.i18.i.i.i.i.i.i" ] ; 2 uses
  %.sroa.5.037.i.i.i.i26.i.i.i.i.i.i = phi i64 [ %i.aee, %bb.gq ], [ 0, %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h07b749001abe6e7dE.exit.i18.i.i.i.i.i.i" ] ; 2 uses
  %i.aed = load ptr, ptr %.sroa.0.038.i.i.i.i25.i.i.i.i.i.i, align 8, !noalias !10375, !noundef !23 ; 8 uses
  %.not.i.i.i.i.i27.i.i.i.i.i.i = icmp eq ptr %i.aed, null
  br i1 %.not.i.i.i.i.i27.i.i.i.i.i.i, label %bb.gt, label %bb.gq

bb.gq:                                            ; preds = %.lr.ph.i.i.i.i24.i.i.i.i.i.i
  %i.aee = add i64 %.sroa.5.037.i.i.i.i26.i.i.i.i.i.i, 1 ; 5 uses
  %i.aef = getelementptr inbounds nuw i8, ptr %.sroa.0.038.i.i.i.i25.i.i.i.i.i.i, i64 16904
  %i.aeg = load i16, ptr %i.aef, align 8, !noalias !10375 ; 3 uses
  %i.aeh = getelementptr inbounds nuw i8, ptr %i.aed, i64 16906
  %i.aei = load i16, ptr %i.aeh, align 2, !noalias !10374, !noundef !23
  %i.aej = icmp ult i16 %i.aeg, %i.aei
  br i1 %i.aej, label %bb.gr, label %.lr.ph.i.i.i.i24.i.i.i.i.i.i

bb.gr:                                            ; preds = %bb.gq
  %i.aek = zext i16 %i.aeg to i64                 ; 4 uses
  %i.ael = icmp eq i64 %i.aee, 0
  %i.aem = add nuw nsw i64 %i.aek, 1              ; 2 uses
  br i1 %i.ael, label %.lr.ph.i.i.i.i.i.i.i.i231, label %bb.gs

bb.gs:                                            ; preds = %bb.gr
  %i.aen = getelementptr inbounds nuw i8, ptr %i.aed, i64 16912
  %i.aeo = icmp ult i16 %i.aeg, 11
  call void @llvm.assume(i1 %i.aeo), !noalias !10376
  %i.aep = getelementptr inbounds nuw [8 x i8], ptr %i.aen, i64 %i.aem ; 2 uses
  %xtraiter924 = and i64 %i.aee, 7                ; 2 uses
  %lcmp.mod925.not = icmp eq i64 %xtraiter924, 0
  br i1 %lcmp.mod925.not, label %.prol.loopexit921, label %.prol.preheader920

.prol.preheader920:                               ; preds = %bb.gs, %.prol.preheader920
  %.pn30.in.i.i.i.i32.i.i.i.i.i.i.prol = phi ptr [ %i.aeq, %.prol.preheader920 ], [ %i.aep, %bb.gs ]
  %.pn28.in.i.i.i.i33.i.i.i.i.i.i.prol = phi i64 [ %.pn28.i.i.i.i34.i.i.i.i.i.i.prol, %.prol.preheader920 ], [ %i.aee, %bb.gs ]
  %prol.iter926 = phi i64 [ %prol.iter926.next, %.prol.preheader920 ], [ 0, %bb.gs ]
  %.pn28.i.i.i.i34.i.i.i.i.i.i.prol = add i64 %.pn28.in.i.i.i.i33.i.i.i.i.i.i.prol, -1 ; 2 uses
  %.pn30.i.i.i.i35.i.i.i.i.i.i.prol = load ptr, ptr %.pn30.in.i.i.i.i32.i.i.i.i.i.i.prol, align 8, !noalias !10377, !nonnull !23, !noundef !23 ; 2 uses
  %i.aeq = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i35.i.i.i.i.i.i.prol, i64 16912 ; 2 uses
  %prol.iter926.next = add i64 %prol.iter926, 1   ; 2 uses
  %prol.iter926.cmp.not = icmp eq i64 %prol.iter926.next, %xtraiter924
  br i1 %prol.iter926.cmp.not, label %.prol.loopexit921, label %.prol.preheader920, !llvm.loop !10024

.prol.loopexit921:                                ; preds = %.prol.preheader920, %bb.gs
  %.pn30.i.i.i.i35.i.i.i.i.i.i.lcssa.unr = phi ptr [ poison, %bb.gs ], [ %.pn30.i.i.i.i35.i.i.i.i.i.i.prol, %.prol.preheader920 ]
  %.pn30.in.i.i.i.i32.i.i.i.i.i.i.unr = phi ptr [ %i.aep, %bb.gs ], [ %i.aeq, %.prol.preheader920 ]
  %.pn28.in.i.i.i.i33.i.i.i.i.i.i.unr = phi i64 [ %i.aee, %bb.gs ], [ %.pn28.i.i.i.i34.i.i.i.i.i.i.prol, %.prol.preheader920 ]
  %i.aer = icmp ult i64 %.sroa.5.037.i.i.i.i26.i.i.i.i.i.i, 7
  br i1 %i.aer, label %.lr.ph.i.i.i.i.i.i.i.i231, label %.new922

.new922:                                          ; preds = %.prol.loopexit921, %.new922
  %.pn30.in.i.i.i.i32.i.i.i.i.i.i = phi ptr [ %i.afa, %.new922 ], [ %.pn30.in.i.i.i.i32.i.i.i.i.i.i.unr, %.prol.loopexit921 ]
  %.pn28.in.i.i.i.i33.i.i.i.i.i.i = phi i64 [ %.pn28.i.i.i.i34.i.i.i.i.i.i.7, %.new922 ], [ %.pn28.in.i.i.i.i33.i.i.i.i.i.i.unr, %.prol.loopexit921 ]
  %.pn30.i.i.i.i35.i.i.i.i.i.i = load ptr, ptr %.pn30.in.i.i.i.i32.i.i.i.i.i.i, align 8, !noalias !10377, !nonnull !23, !noundef !23
  %i.aes = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i35.i.i.i.i.i.i, i64 16912
  %.pn30.i.i.i.i35.i.i.i.i.i.i.1 = load ptr, ptr %i.aes, align 8, !noalias !10377, !nonnull !23, !noundef !23
  %i.aet = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i35.i.i.i.i.i.i.1, i64 16912
  %.pn30.i.i.i.i35.i.i.i.i.i.i.2 = load ptr, ptr %i.aet, align 8, !noalias !10377, !nonnull !23, !noundef !23
  %i.aeu = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i35.i.i.i.i.i.i.2, i64 16912
  %.pn30.i.i.i.i35.i.i.i.i.i.i.3 = load ptr, ptr %i.aeu, align 8, !noalias !10377, !nonnull !23, !noundef !23
  %i.aev = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i35.i.i.i.i.i.i.3, i64 16912
  %.pn30.i.i.i.i35.i.i.i.i.i.i.4 = load ptr, ptr %i.aev, align 8, !noalias !10377, !nonnull !23, !noundef !23
  %i.aew = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i35.i.i.i.i.i.i.4, i64 16912
  %.pn30.i.i.i.i35.i.i.i.i.i.i.5 = load ptr, ptr %i.aew, align 8, !noalias !10377, !nonnull !23, !noundef !23
  %i.aex = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i35.i.i.i.i.i.i.5, i64 16912
  %.pn30.i.i.i.i35.i.i.i.i.i.i.6 = load ptr, ptr %i.aex, align 8, !noalias !10377, !nonnull !23, !noundef !23
  %i.aey = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i35.i.i.i.i.i.i.6, i64 16912
  %.pn28.i.i.i.i34.i.i.i.i.i.i.7 = add i64 %.pn28.in.i.i.i.i33.i.i.i.i.i.i, -8 ; 2 uses
  %.pn30.i.i.i.i35.i.i.i.i.i.i.7 = load ptr, ptr %i.aey, align 8, !noalias !10377, !nonnull !23, !noundef !23 ; 2 uses
  %i.aez = icmp eq i64 %.pn28.i.i.i.i34.i.i.i.i.i.i.7, 0
  %i.afa = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i35.i.i.i.i.i.i.7, i64 16912
  br i1 %i.aez, label %.lr.ph.i.i.i.i.i.i.i.i231, label %.new922

bb.gt:                                            ; preds = %.lr.ph.i.i.i.i24.i.i.i.i.i.i
  invoke void @_ZN4core6option13unwrap_failed17h13b3e6f702cb1c04E(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1126) #57
          to label %.noexc.i.i41.i.i.i.i.i.i unwind label %bb.gu, !noalias !10378

.noexc.i.i41.i.i.i.i.i.i:                         ; preds = %bb.gt
  unreachable

bb.gu:                                            ; preds = %bb.gt
  %i.afb = landingpad { ptr, i32 }
          cleanup                                 ; 0 uses
  call void @llvm.trap(), !noalias !10376
  unreachable

.lr.ph.i.i.i.i.i.i.i.i231:                        ; preds = %.prol.loopexit921, %.new922, %bb.gr, %.thread.i.i.i.i
  %.sroa.0.0.ph.i.i.i31.i.i18.i.i.i.i = phi ptr [ %i.aed, %bb.gr ], [ %.sroa.07.0.i.i.i.i.i.i.i, %.thread.i.i.i.i ], [ %i.aed, %.new922 ], [ %i.aed, %.prol.loopexit921 ] ; 2 uses
  %.sroa.6.sroa.4.0.ph.i.i.i29.i.i17.i.i.i.i = phi i64 [ %i.aek, %bb.gr ], [ %.sroa.7.0.i.i.i.i.i.i.i, %.thread.i.i.i.i ], [ %i.aek, %.new922 ], [ %i.aek, %.prol.loopexit921 ] ; 3 uses
  %.sroa.7.0.i.i.i37.i.i.i.i.i.i = phi i64 [ %i.aem, %bb.gr ], [ %i.aec, %.thread.i.i.i.i ], [ 0, %.new922 ], [ 0, %.prol.loopexit921 ]
  %.sroa.07.0.i.i.i38.i.i.i.i.i.i = phi ptr [ %i.aed, %bb.gr ], [ %.sroa.07.0.i.i.i.i.i.i.i, %.thread.i.i.i.i ], [ %.pn30.i.i.i.i35.i.i.i.i.i.i.lcssa.unr, %.prol.loopexit921 ], [ %.pn30.i.i.i.i35.i.i.i.i.i.i.7, %.new922 ]
  %i.afc = getelementptr inbounds nuw i8, ptr %.sroa.0.0.ph.i.i.i31.i.i18.i.i.i.i, i64 8
  %i.afd = icmp samesign ult i64 %.sroa.6.sroa.4.0.ph.i.i.i29.i.i17.i.i.i.i, 11
  call void @llvm.assume(i1 %i.afd), !noalias !10376
  %i.afe = getelementptr inbounds nuw [24 x i8], ptr %i.afc, i64 %.sroa.6.sroa.4.0.ph.i.i.i29.i.i17.i.i.i.i
  %i.aff = getelementptr inbounds nuw i8, ptr %.sroa.0.0.ph.i.i.i31.i.i18.i.i.i.i, i64 272
  %i.afg = getelementptr inbounds nuw [1512 x i8], ptr %i.aff, i64 %.sroa.6.sroa.4.0.ph.i.i.i29.i.i17.i.i.i.i
  %.sroa.6.0..sroa_idx.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %.sroa.5.0..sroa_idx.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  %.sroa.8.0..sroa_idx.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.j, i64 32
  br label %bb.gv

"_ZN102_$LT$core..iter..adapters..map..Map$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h88a24477432fe985E.exit.thread.i.i.i.i.i.i.i.i": ; preds = %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17hef7d42809f7b09c9E.exit.i.i.i.i.i.i.i.i", %bb.gp
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6.i.i.i.i.i.i.i.i.i.i)
  br label %_ZN4core4iter6traits8iterator8Iterator7collect17hf639972eca84bfa9E.exit.i.i

bb.gv:                                            ; preds = %.noexc8.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i231
  %i.afh = phi ptr [ %.sroa.10.0.i.i.i.i.i.i.i230, %.lr.ph.i.i.i.i.i.i.i.i231 ], [ %i.afr, %.noexc8.i.i.i.i.i.i ]
  %i.afi = phi i64 [ 1, %.lr.ph.i.i.i.i.i.i.i.i231 ], [ %i.aft, %.noexc8.i.i.i.i.i.i ] ; 4 uses
  %.sroa.19.1.i.i.i.i.i.i = phi i64 [ %.sroa.7.0.i.i.i37.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i231 ], [ %.sroa.7.0.i.i.i.i.i.i.i.i.i, %.noexc8.i.i.i.i.i.i ] ; 3 uses
  %.sroa.258.1.in.i.i.i.i.i.i = phi i64 [ %i.abo, %.lr.ph.i.i.i.i.i.i.i.i231 ], [ %.sroa.258.1.i.i.i.i.i.i, %.noexc8.i.i.i.i.i.i ]
  %.sroa.55.1.i.i.i.i.i.i = phi ptr [ %.sroa.07.0.i.i.i38.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i231 ], [ %.sroa.07.0.i.i.i.i.i.i.i.i.i, %.noexc8.i.i.i.i.i.i ] ; 5 uses
  %i.afj = phi ptr [ %i.afe, %.lr.ph.i.i.i.i.i.i.i.i231 ], [ %i.ahb, %.noexc8.i.i.i.i.i.i ]
  %.pn42.i.i.i.i.i.i = phi ptr [ %i.afg, %.lr.ph.i.i.i.i.i.i.i.i231 ], [ %i.ahd, %.noexc8.i.i.i.i.i.i ] ; 3 uses
  %.sroa.258.1.i.i.i.i.i.i = add nsw i64 %.sroa.258.1.in.i.i.i.i.i.i, -1 ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.pn42.i.i.i.i.i.i) ]
  call void @llvm.experimental.noalias.scope.decl(metadata !10379)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !10380
  invoke void @"_ZN60_$LT$alloc..string..String$u20$as$u20$core..clone..Clone$GT$5clone17h123bb51dd192bfa5E"(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.afj, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @869)
          to label %.noexc7.i.i.i.i.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.i.i.i.i, !noalias !10381

.noexc7.i.i.i.i.i.i:                              ; preds = %bb.gv
  %i.afk = load i64, ptr %.pn42.i.i.i.i.i.i, align 8, !range !57, !alias.scope !10379, !noalias !10382, !noundef !23
  %i.afl = call i64 @llvm.usub.sat.i64(i64 %i.afk, i64 2)
  switch i64 %i.afl, label %default.unreachable588 [
    i64 0, label %bb.gw
    i64 1, label %"_ZN102_$LT$core..iter..adapters..map..Map$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h88a24477432fe985E.exit.thread5.i.i.i.i.i.i.i.i"
    i64 2, label %bb.gx
  ]

bb.gw:                                            ; preds = %.noexc7.i.i.i.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !10380
  invoke fastcc void @"_ZN81_$LT$milli..vector..settings..EmbeddingSettings$u20$as$u20$core..clone..Clone$GT$5clone17h594a7199b4654745E"(ptr noalias noundef align 8 captures(address) dereferenceable(1512) %i.h, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(1512) %.pn42.i.i.i.i.i.i)
          to label %"_ZN102_$LT$core..iter..adapters..map..Map$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h88a24477432fe985E.exit.i.i.i.i.i.i.i.i" unwind label %bb.gy, !noalias !10383

bb.gx:                                            ; preds = %.noexc7.i.i.i.i.i.i
  br label %"_ZN102_$LT$core..iter..adapters..map..Map$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h88a24477432fe985E.exit.thread5.i.i.i.i.i.i.i.i"

bb.gy:                                            ; preds = %bb.gw
  %i.afm = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !10384)
  %.val.i.i.i.i.i.i.i.i.i.i.i = load i64, ptr %i.i, align 8, !alias.scope !10384, !noalias !10380 ; 2 uses
  %i.afn = icmp eq i64 %.val.i.i.i.i.i.i.i.i.i.i.i, 0
  br i1 %i.afn, label %.body.i.i.i.i.i.i232, label %bb.gz

bb.gz:                                            ; preds = %bb.gy
  %i.afo = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %.val1.i.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.afo, align 8, !alias.scope !10384, !noalias !10380, !nonnull !23, !noundef !23
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i.i.i.i.i.i.i.i.i, i64 noundef %.val.i.i.i.i.i.i.i.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #52, !noalias !10385
  br label %.body.i.i.i.i.i.i232

"_ZN102_$LT$core..iter..adapters..map..Map$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h88a24477432fe985E.exit.thread5.i.i.i.i.i.i.i.i": ; preds = %bb.gx, %.noexc7.i.i.i.i.i.i
  %.sroa.0.0.i.i.ph.i.i.i.i.i.i.i.i = phi i64 [ 3, %.noexc7.i.i.i.i.i.i ], [ 4, %bb.gx ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0.i.i.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(24) %i.i, i64 24, i1 false), !noalias !10386
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !10380
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1504) %.sroa.8.i.i.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(1504) %.sroa.6.i.i.i.i.i.i.i.i.i.i, i64 1504, i1 false), !noalias !10386
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6.i.i.i.i.i.i.i.i.i.i)
  br label %bb.ha

"_ZN102_$LT$core..iter..adapters..map..Map$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h88a24477432fe985E.exit.i.i.i.i.i.i.i.i": ; preds = %bb.gw
  %.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i.i = load i64, ptr %i.h, align 8, !noalias !10380 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1504) %.sroa.6.i.i.i.i.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(1504) %.sroa.6.0..sroa_idx.i.i.i.i.i.i.i.i.i.i, i64 1504, i1 false), !noalias !10382
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !10380
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0.i.i.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(24) %i.i, i64 24, i1 false), !noalias !10386
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !10380
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1504) %.sroa.8.i.i.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(1504) %.sroa.6.i.i.i.i.i.i.i.i.i.i, i64 1504, i1 false), !noalias !10386
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6.i.i.i.i.i.i.i.i.i.i)
  %.not.i.i.i.i.i.i.i.i275 = icmp eq i64 %.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i.i, 5
  br i1 %.not.i.i.i.i.i.i.i.i275, label %_ZN4core4iter6traits8iterator8Iterator7collect17hf639972eca84bfa9E.exit.i.i, label %bb.ha

bb.ha:                                            ; preds = %"_ZN102_$LT$core..iter..adapters..map..Map$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h88a24477432fe985E.exit.i.i.i.i.i.i.i.i", %"_ZN102_$LT$core..iter..adapters..map..Map$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h88a24477432fe985E.exit.thread5.i.i.i.i.i.i.i.i"
  %.sroa.0.0.i.i8.i.i.i.i.i.i.i.i = phi i64 [ %.sroa.0.0.i.i.ph.i.i.i.i.i.i.i.i, %"_ZN102_$LT$core..iter..adapters..map..Map$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h88a24477432fe985E.exit.thread5.i.i.i.i.i.i.i.i" ], [ %.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i.i, %"_ZN102_$LT$core..iter..adapters..map..Map$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h88a24477432fe985E.exit.i.i.i.i.i.i.i.i" ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !10387
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.j, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0.i.i.i.i.i.i.i.i, i64 24, i1 false), !noalias !10387
  store i64 %.sroa.0.0.i.i8.i.i.i.i.i.i.i.i, ptr %.sroa.5.0..sroa_idx.i.i.i.i.i.i.i.i, align 8, !noalias !10387
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1504) %.sroa.8.0..sroa_idx.i.i.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(1504) %.sroa.8.i.i.i.i.i.i.i.i, i64 1504, i1 false), !noalias !10387
  %i.afp = load i64, ptr %i.n, align 8, !range !24, !alias.scope !10388, !noalias !10350, !noundef !23
  %i.afq = icmp eq i64 %i.afi, %i.afp
  br i1 %i.afq, label %bb.hh, label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17hef7d42809f7b09c9E.exit.i.i.i.i.i.i.i.i"

"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17hef7d42809f7b09c9E.exit.i.i.i.i.i.i.i.i": ; preds = %"._ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17hef7d42809f7b09c9E.exit.i.i_crit_edge.i.i.i.i.i.i", %bb.ha
  %i.afr = phi ptr [ %.pre.i.i.i.i.i.i274, %"._ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17hef7d42809f7b09c9E.exit.i.i_crit_edge.i.i.i.i.i.i" ], [ %i.afh, %bb.ha ] ; 2 uses
  %i.afs = getelementptr inbounds nuw [1536 x i8], ptr %i.afr, i64 %i.afi
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1536) %i.afs, ptr noundef nonnull align 8 dereferenceable(1536) %i.j, i64 1536, i1 false), !noalias !10387
  %i.aft = add nuw nsw i64 %i.afi, 1              ; 2 uses
  store i64 %i.aft, ptr %.sroa.6.0..sroa_idx.i.i.i.i.i.i230, align 8, !alias.scope !10388, !noalias !10350
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !10387
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.i.i.i.i.i.i.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.8.i.i.i.i.i.i.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0.i.i.i.i.i.i.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.8.i.i.i.i.i.i.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6.i.i.i.i.i.i.i.i.i.i)
  %i.afu = icmp eq i64 %.sroa.258.1.i.i.i.i.i.i, 0
  br i1 %i.afu, label %"_ZN102_$LT$core..iter..adapters..map..Map$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h88a24477432fe985E.exit.thread.i.i.i.i.i.i.i.i", label %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h07b749001abe6e7dE.exit.i.i.i.i.i.i.i"

"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h07b749001abe6e7dE.exit.i.i.i.i.i.i.i": ; preds = %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17hef7d42809f7b09c9E.exit.i.i.i.i.i.i.i.i"
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.55.1.i.i.i.i.i.i) ]
  %i.afv = getelementptr inbounds nuw i8, ptr %.sroa.55.1.i.i.i.i.i.i, i64 16906
  %i.afw = load i16, ptr %i.afv, align 2, !noalias !10389, !noundef !23
  %i.afx = zext i16 %i.afw to i64
  %i.afy = icmp ult i64 %.sroa.19.1.i.i.i.i.i.i, %i.afx
  br i1 %i.afy, label %.thread.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i

.thread.i.i.i.i.i.i:                              ; preds = %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h07b749001abe6e7dE.exit.i.i.i.i.i.i.i"
  %i.afz = add nuw nsw i64 %.sroa.19.1.i.i.i.i.i.i, 1
  br label %.noexc8.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i:                       ; preds = %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h07b749001abe6e7dE.exit.i.i.i.i.i.i.i", %bb.hb
  %.sroa.0.038.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.aga, %bb.hb ], [ %.sroa.55.1.i.i.i.i.i.i, %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h07b749001abe6e7dE.exit.i.i.i.i.i.i.i" ] ; 2 uses
  %.sroa.5.037.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.agb, %bb.hb ], [ 0, %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h07b749001abe6e7dE.exit.i.i.i.i.i.i.i" ] ; 2 uses
  %i.aga = load ptr, ptr %.sroa.0.038.i.i.i.i.i.i.i.i.i.i, align 8, !noalias !10390, !noundef !23 ; 8 uses
  %.not.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.aga, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i, label %bb.he, label %bb.hb

bb.hb:                                            ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i
  %i.agb = add i64 %.sroa.5.037.i.i.i.i.i.i.i.i.i.i, 1 ; 5 uses
  %i.agc = getelementptr inbounds nuw i8, ptr %.sroa.0.038.i.i.i.i.i.i.i.i.i.i, i64 16904
  %i.agd = load i16, ptr %i.agc, align 8, !noalias !10390 ; 3 uses
  %i.age = getelementptr inbounds nuw i8, ptr %i.aga, i64 16906
  %i.agf = load i16, ptr %i.age, align 2, !noalias !10389, !noundef !23
  %i.agg = icmp ult i16 %i.agd, %i.agf
  br i1 %i.agg, label %bb.hc, label %.lr.ph.i.i.i.i.i.i.i.i.i.i

bb.hc:                                            ; preds = %bb.hb
  %i.agh = zext i16 %i.agd to i64                 ; 4 uses
  %i.agi = icmp eq i64 %i.agb, 0
  %i.agj = add nuw nsw i64 %i.agh, 1              ; 2 uses
  br i1 %i.agi, label %.noexc8.i.i.i.i.i.i, label %bb.hd

bb.hd:                                            ; preds = %bb.hc
  %i.agk = getelementptr inbounds nuw i8, ptr %i.aga, i64 16912
  %i.agl = icmp ult i16 %i.agd, 11
  call void @llvm.assume(i1 %i.agl), !noalias !10376
  %i.agm = getelementptr inbounds nuw [8 x i8], ptr %i.agk, i64 %i.agj ; 2 uses
  %xtraiter931 = and i64 %i.agb, 7                ; 2 uses
  %lcmp.mod932.not = icmp eq i64 %xtraiter931, 0
  br i1 %lcmp.mod932.not, label %.prol.loopexit928, label %.prol.preheader927

.prol.preheader927:                               ; preds = %bb.hd, %.prol.preheader927
  %.pn30.in.i.i.i.i.i.i.i.i.i.i.prol = phi ptr [ %i.agn, %.prol.preheader927 ], [ %i.agm, %bb.hd ]
  %.pn28.in.i.i.i.i.i.i.i.i.i.i.prol = phi i64 [ %.pn28.i.i.i.i.i.i.i.i.i.i.prol, %.prol.preheader927 ], [ %i.agb, %bb.hd ]
  %prol.iter933 = phi i64 [ %prol.iter933.next, %.prol.preheader927 ], [ 0, %bb.hd ]
  %.pn28.i.i.i.i.i.i.i.i.i.i.prol = add i64 %.pn28.in.i.i.i.i.i.i.i.i.i.i.prol, -1 ; 2 uses
  %.pn30.i.i.i.i.i.i.i.i.i.i.prol = load ptr, ptr %.pn30.in.i.i.i.i.i.i.i.i.i.i.prol, align 8, !noalias !10391, !nonnull !23, !noundef !23 ; 2 uses
  %i.agn = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.i.i.i.i.i.i.prol, i64 16912 ; 2 uses
  %prol.iter933.next = add i64 %prol.iter933, 1   ; 2 uses
  %prol.iter933.cmp.not = icmp eq i64 %prol.iter933.next, %xtraiter931
  br i1 %prol.iter933.cmp.not, label %.prol.loopexit928, label %.prol.preheader927, !llvm.loop !10049

.prol.loopexit928:                                ; preds = %.prol.preheader927, %bb.hd
  %.pn30.i.i.i.i.i.i.i.i.i.i.lcssa.unr = phi ptr [ poison, %bb.hd ], [ %.pn30.i.i.i.i.i.i.i.i.i.i.prol, %.prol.preheader927 ]
  %.pn30.in.i.i.i.i.i.i.i.i.i.i.unr = phi ptr [ %i.agm, %bb.hd ], [ %i.agn, %.prol.preheader927 ]
  %.pn28.in.i.i.i.i.i.i.i.i.i.i.unr = phi i64 [ %i.agb, %bb.hd ], [ %.pn28.i.i.i.i.i.i.i.i.i.i.prol, %.prol.preheader927 ]
  %i.ago = icmp ult i64 %.sroa.5.037.i.i.i.i.i.i.i.i.i.i, 7
  br i1 %i.ago, label %.noexc8.i.i.i.i.i.i, label %.new929

.new929:                                          ; preds = %.prol.loopexit928, %.new929
  %.pn30.in.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.agx, %.new929 ], [ %.pn30.in.i.i.i.i.i.i.i.i.i.i.unr, %.prol.loopexit928 ]
  %.pn28.in.i.i.i.i.i.i.i.i.i.i = phi i64 [ %.pn28.i.i.i.i.i.i.i.i.i.i.7, %.new929 ], [ %.pn28.in.i.i.i.i.i.i.i.i.i.i.unr, %.prol.loopexit928 ]
  %.pn30.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %.pn30.in.i.i.i.i.i.i.i.i.i.i, align 8, !noalias !10391, !nonnull !23, !noundef !23
  %i.agp = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.i.i.i.i.i.i, i64 16912
  %.pn30.i.i.i.i.i.i.i.i.i.i.1 = load ptr, ptr %i.agp, align 8, !noalias !10391, !nonnull !23, !noundef !23
  %i.agq = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.i.i.i.i.i.i.1, i64 16912
  %.pn30.i.i.i.i.i.i.i.i.i.i.2 = load ptr, ptr %i.agq, align 8, !noalias !10391, !nonnull !23, !noundef !23
  %i.agr = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.i.i.i.i.i.i.2, i64 16912
  %.pn30.i.i.i.i.i.i.i.i.i.i.3 = load ptr, ptr %i.agr, align 8, !noalias !10391, !nonnull !23, !noundef !23
  %i.ags = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.i.i.i.i.i.i.3, i64 16912
  %.pn30.i.i.i.i.i.i.i.i.i.i.4 = load ptr, ptr %i.ags, align 8, !noalias !10391, !nonnull !23, !noundef !23
  %i.agt = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.i.i.i.i.i.i.4, i64 16912
  %.pn30.i.i.i.i.i.i.i.i.i.i.5 = load ptr, ptr %i.agt, align 8, !noalias !10391, !nonnull !23, !noundef !23
  %i.agu = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.i.i.i.i.i.i.5, i64 16912
  %.pn30.i.i.i.i.i.i.i.i.i.i.6 = load ptr, ptr %i.agu, align 8, !noalias !10391, !nonnull !23, !noundef !23
  %i.agv = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.i.i.i.i.i.i.6, i64 16912
  %.pn28.i.i.i.i.i.i.i.i.i.i.7 = add i64 %.pn28.in.i.i.i.i.i.i.i.i.i.i, -8 ; 2 uses
  %.pn30.i.i.i.i.i.i.i.i.i.i.7 = load ptr, ptr %i.agv, align 8, !noalias !10391, !nonnull !23, !noundef !23 ; 2 uses
  %i.agw = icmp eq i64 %.pn28.i.i.i.i.i.i.i.i.i.i.7, 0
  %i.agx = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.i.i.i.i.i.i.7, i64 16912
  br i1 %i.agw, label %.noexc8.i.i.i.i.i.i, label %.new929

bb.he:                                            ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i
  invoke void @_ZN4core6option13unwrap_failed17h13b3e6f702cb1c04E(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1126) #57
          to label %.noexc.i.i.i.i.i.i.i.i236 unwind label %bb.hf, !noalias !10392

.noexc.i.i.i.i.i.i.i.i236:                        ; preds = %bb.he
  unreachable

bb.hf:                                            ; preds = %bb.he
  %i.agy = landingpad { ptr, i32 }
          cleanup                                 ; 0 uses
  call void @llvm.trap(), !noalias !10376
  unreachable

.noexc8.i.i.i.i.i.i:                              ; preds = %.prol.loopexit928, %.new929, %bb.hc, %.thread.i.i.i.i.i.i
  %.sroa.0.0.ph.i.i.i41.i.i.i.i.i.i = phi ptr [ %i.aga, %bb.hc ], [ %.sroa.55.1.i.i.i.i.i.i, %.thread.i.i.i.i.i.i ], [ %i.aga, %.new929 ], [ %i.aga, %.prol.loopexit928 ] ; 2 uses
  %.sroa.6.sroa.4.0.ph.i.i.i40.i.i.i.i.i.i = phi i64 [ %i.agh, %bb.hc ], [ %.sroa.19.1.i.i.i.i.i.i, %.thread.i.i.i.i.i.i ], [ %i.agh, %.new929 ], [ %i.agh, %.prol.loopexit928 ] ; 3 uses
  %.sroa.7.0.i.i.i.i.i.i.i.i.i = phi i64 [ %i.agj, %bb.hc ], [ %i.afz, %.thread.i.i.i.i.i.i ], [ 0, %.new929 ], [ 0, %.prol.loopexit928 ]
  %.sroa.07.0.i.i.i.i.i.i.i.i.i = phi ptr [ %i.aga, %bb.hc ], [ %.sroa.55.1.i.i.i.i.i.i, %.thread.i.i.i.i.i.i ], [ %.pn30.i.i.i.i.i.i.i.i.i.i.lcssa.unr, %.prol.loopexit928 ], [ %.pn30.i.i.i.i.i.i.i.i.i.i.7, %.new929 ]
  %i.agz = getelementptr inbounds nuw i8, ptr %.sroa.0.0.ph.i.i.i41.i.i.i.i.i.i, i64 8
  %i.aha = icmp samesign ult i64 %.sroa.6.sroa.4.0.ph.i.i.i40.i.i.i.i.i.i, 11
  call void @llvm.assume(i1 %i.aha), !noalias !10376
  %i.ahb = getelementptr inbounds nuw [24 x i8], ptr %i.agz, i64 %.sroa.6.sroa.4.0.ph.i.i.i40.i.i.i.i.i.i
  %i.ahc = getelementptr inbounds nuw i8, ptr %.sroa.0.0.ph.i.i.i41.i.i.i.i.i.i, i64 272
  %i.ahd = getelementptr inbounds nuw [1512 x i8], ptr %i.ahc, i64 %.sroa.6.sroa.4.0.ph.i.i.i40.i.i.i.i.i.i
  br label %bb.gv

bb.hg:                                            ; preds = %bb.hh
  %i.ahe = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr135drop_in_place$LT$$LP$alloc..string..String$C$milli..update..settings..Setting$LT$milli..vector..settings..EmbeddingSettings$GT$$RP$$GT$17h5ba7a939ea51e846E"(ptr noalias noundef align 8 dereferenceable(1536) %i.j) #55
          to label %.body.i.i.i.i.i.i232 unwind label %bb.hi, !noalias !10387

bb.hh:                                            ; preds = %bb.ha
  %i.ahf = call i64 @llvm.uadd.sat.i64(i64 %.sroa.258.1.i.i.i.i.i.i, i64 1)
  invoke fastcc void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$7reserve21do_reserve_and_handle17h45307a5a03ebcc73E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.n, i64 noundef %i.afi, i64 noundef range(i64 1, 0) %i.ahf, i64 noundef 8, i64 noundef 1536)
          to label %"._ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17hef7d42809f7b09c9E.exit.i.i_crit_edge.i.i.i.i.i.i" unwind label %bb.hg, !noalias !10393

"._ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17hef7d42809f7b09c9E.exit.i.i_crit_edge.i.i.i.i.i.i": ; preds = %bb.hh
  %.pre.i.i.i.i.i.i274 = load ptr, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i.i229, align 8, !alias.scope !10388, !noalias !10350
  br label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17hef7d42809f7b09c9E.exit.i.i.i.i.i.i.i.i"

bb.hi:                                            ; preds = %bb.hg
  %i.ahg = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #56, !noalias !10387
  unreachable

.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.i.i.i.i: ; preds = %bb.gv
  %lpad.loopexit.split-lp7.i.i.i.i.i = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i.i.i.i.i232

.body.i.i.i.i.i.i232:                             ; preds = %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.i.i.i.i, %bb.hg, %bb.gz, %bb.gy
  %eh.lpad-body.i.i.i.i.i.i233 = phi { ptr, i32 } [ %i.ahe, %bb.hg ], [ %i.afm, %bb.gy ], [ %i.afm, %bb.gz ], [ %lpad.loopexit.split-lp7.i.i.i.i.i, %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.i.i.i.i ]
  invoke fastcc void @"_ZN4core3ptr158drop_in_place$LT$alloc..vec..Vec$LT$$LP$alloc..string..String$C$milli..update..settings..Setting$LT$milli..vector..settings..EmbeddingSettings$GT$$RP$$GT$$GT$17h0a87f5c051b4511cE"(ptr noalias noundef align 8 dereferenceable(24) %i.n) #55
          to label %common.resume unwind label %bb.hj, !noalias !10350

bb.hj:                                            ; preds = %.body.i.i.i.i.i.i232, %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17hfb8d17e84375b72dE.exit.i.i.i.i.i.i277"
  %i.ahh = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #56, !noalias !10350
  unreachable

_ZN4core4iter6traits8iterator8Iterator7collect17hf639972eca84bfa9E.exit.i.i: ; preds = %"_ZN102_$LT$core..iter..adapters..map..Map$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h88a24477432fe985E.exit.i.i.i.i.i.i.i.i", %"_ZN102_$LT$core..iter..adapters..map..Map$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h88a24477432fe985E.exit.thread.i.i.i.i.i.i.i.i"
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.i.i.i.i.i.i.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.8.i.i.i.i.i.i.i.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.o, ptr noundef nonnull align 8 dereferenceable(24) %i.n, i64 24, i1 false), !noalias !10394
  %.phi.trans.insert.i.i237 = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  %.pre.i.i238 = load i64, ptr %.phi.trans.insert.i.i237, align 8, !noalias !10345 ; 7 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !10350
  %i.ahi = icmp ult i64 %.pre.i.i238, 6004799503160662
  call void @llvm.assume(i1 %i.ahi)
  %i.ahj = icmp eq i64 %.pre.i.i238, 0
  br i1 %i.ahj, label %bb.hk, label %bb.hl

bb.hk:                                            ; preds = %_ZN4core4iter6traits8iterator8Iterator7collect17hf639972eca84bfa9E.exit.i.i, %_ZN4core4iter6traits8iterator8Iterator7collect17hf639972eca84bfa9E.exit.thread.i.i
  store ptr null, ptr %i.ao, align 8, !alias.scope !10395
  %i.ahk = getelementptr inbounds nuw i8, ptr %i.ao, i64 16
  store i64 0, ptr %i.ahk, align 8, !alias.scope !10395
  call fastcc void @"_ZN4core3ptr158drop_in_place$LT$alloc..vec..Vec$LT$$LP$alloc..string..String$C$milli..update..settings..Setting$LT$milli..vector..settings..EmbeddingSettings$GT$$RP$$GT$$GT$17h0a87f5c051b4511cE"(ptr noalias noundef align 8 dereferenceable(24) %i.o), !noalias !10345
  br label %_ZN4core4iter6traits8iterator8Iterator7collect17h55659036dd1ebbc3E.exit

bb.hl:                                            ; preds = %_ZN4core4iter6traits8iterator8Iterator7collect17hf639972eca84bfa9E.exit.i.i
  %i.ahl = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %i.ahm = load ptr, ptr %i.ahl, align 8, !noalias !10345, !nonnull !23, !noundef !23 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !10396
  %i.ahn = icmp eq i64 %.pre.i.i238, 1
  br i1 %i.ahn, label %bb.hp, label %bb.hm, !prof !51

bb.hm:                                            ; preds = %bb.hl
  %i.aho = icmp samesign ult i64 %.pre.i.i238, 21
  br i1 %i.aho, label %bb.ho, label %bb.hn, !prof !51

bb.hn:                                            ; preds = %bb.hm
  invoke void @_ZN4core5slice4sort6stable14driftsort_main17hef8b1def242c298aE(ptr noalias noundef nonnull align 8 %i.ahm, i64 noundef range(i64 1, 6004799503160662) %.pre.i.i238, ptr noalias noundef nonnull align 8 dereferenceable(8) %i.g)
          to label %bb.hp unwind label %bb.jb, !noalias !10345

end_hunk_7
begin_hunk_8_@_ZN17meilisearch_types8settings8settings17h434d4bbc0b5a657dE:bb.a
  %.sroa.4388.sroa.4.0.copyload = load i64, ptr %.sroa.4388.sroa.4.0..sroa.4388.0..sroa_idx.sroa_idx, align 8 ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.du)
  br i1 %i.dx, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bh)
  store i64 %.sroa.0387.0.copyload, ptr %i.bh, align 8
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bh, i64 8
  store ptr %.sroa.4388.sroa.0.0.copyload, ptr %.sroa.2.0..sroa_idx, align 8
  %.sroa.2.sroa.2.0..sroa.2.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.bh, i64 16
  store i64 %.sroa.4388.sroa.4.0.copyload, ptr %.sroa.2.sroa.2.0..sroa.2.0..sroa_idx.sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bg)
  call void @"_ZN78_$LT$milli..error..Error$u20$as$u20$core..convert..From$LT$heed..Error$GT$$GT$4from17h86d263f3c2dd8736E"(ptr noalias noundef nonnull sret([320 x i8]) align 8 captures(address) dereferenceable(320) %i.bg, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.bh)
  %i.dz = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(320) %i.dz, ptr noundef nonnull align 8 dereferenceable(320) %i.bg, i64 320, i1 false)
  store i64 3, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bg)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bh)
  br label %"_ZN4core3ptr93drop_in_place$LT$core..option..Option$LT$alloc..vec..Vec$LT$alloc..string..String$GT$$GT$$GT$17hace92272122aeb36E.exit852"

bb.c:                                             ; preds = %bb.a
  %.not = icmp eq i64 %.sroa.0387.0.copyload, -9223372036854775808
  br i1 %.not, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bi)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.4388.sroa.0.0.copyload) ]
  %i.ea = icmp ult i64 %.sroa.4388.sroa.4.0.copyload, 576460752303423488
  call void @llvm.assume(i1 %i.ea)
  %i.eb = getelementptr inbounds nuw [16 x i8], ptr %.sroa.4388.sroa.0.0.copyload, i64 %.sroa.4388.sroa.4.0.copyload
  store ptr %.sroa.4388.sroa.0.0.copyload, ptr %i.bi, align 8
  %.sroa.4968.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bi, i64 8
  store ptr %.sroa.4388.sroa.0.0.copyload, ptr %.sroa.4968.0..sroa_idx, align 8
  %.sroa.5969.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bi, i64 16
  store i64 %.sroa.0387.0.copyload, ptr %.sroa.5969.0..sroa_idx, align 8
  %.sroa.6970.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bi, i64 24
  store ptr %i.eb, ptr %.sroa.6970.0..sroa_idx, align 8
  call fastcc void @_ZN4core4iter6traits8iterator8Iterator7collect17h5812d79d09885fb5E(ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.dv, ptr noalias noundef align 8 captures(address) dereferenceable(32) %i.bi)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bi)
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  store i64 -9223372036854775808, ptr %i.dv, align 8
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dt)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ds)
  invoke void @_ZN5milli5index5Index30user_defined_searchable_fields17h2ad616f910b44d1aE(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.ds, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(496) %1, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %2)
          to label %bb.i unwind label %bb.h

bb.g:                                             ; preds = %bb.ik, %.body, %bb.h
  %.sroa.0382.0 = phi i1 [ true, %bb.h ], [ %.sroa.0382.1, %bb.ik ], [ %.sroa.0382.1, %.body ]
  %.pn750 = phi { ptr, i32 } [ %i.ee, %bb.h ], [ %.pn748, %bb.ik ], [ %.pn748, %.body ]
  %i.ec = load i64, ptr %i.dv, align 8, !range !27, !noundef !23
  %i.ed = icmp ne i64 %i.ec, -9223372036854775808
  %or.cond7 = select i1 %i.ed, i1 %.sroa.0382.0, i1 false
  br i1 %or.cond7, label %bb.in, label %bb.im

bb.h:                                             ; preds = %bb.n, %bb.j, %bb.f
  %i.ee = landingpad { ptr, i32 }
          cleanup
  br label %bb.g

bb.i:                                             ; preds = %bb.f
  %i.ef = load i64, ptr %i.ds, align 8, !range !34, !noundef !23
  %i.eg = trunc nuw i64 %i.ef to i1
  %i.eh = getelementptr inbounds nuw i8, ptr %i.ds, i64 8
  %.sroa.0393.0.copyload = load i64, ptr %i.eh, align 8 ; 3 uses
  %.sroa.4394.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ds, i64 16
  %.sroa.4394.sroa.0.0.copyload = load ptr, ptr %.sroa.4394.0..sroa_idx, align 8 ; 5 uses
  %.sroa.4394.sroa.4.0..sroa.4394.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.ds, i64 24
  %.sroa.4394.sroa.4.0.copyload = load i64, ptr %.sroa.4394.sroa.4.0..sroa.4394.0..sroa_idx.sroa_idx, align 8 ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ds)
  br i1 %i.eg, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bd)
  store i64 %.sroa.0393.0.copyload, ptr %i.bd, align 8
  %.sroa.226.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bd, i64 8
  store ptr %.sroa.4394.sroa.0.0.copyload, ptr %.sroa.226.0..sroa_idx, align 8
  %.sroa.226.sroa.2.0..sroa.226.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.bd, i64 16
  store i64 %.sroa.4394.sroa.4.0.copyload, ptr %.sroa.226.sroa.2.0..sroa.226.0..sroa_idx.sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bc)
  invoke void @"_ZN78_$LT$milli..error..Error$u20$as$u20$core..convert..From$LT$heed..Error$GT$$GT$4from17h86d263f3c2dd8736E"(ptr noalias noundef nonnull sret([320 x i8]) align 8 captures(address) dereferenceable(320) %i.bc, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.bd)
          to label %bb.il unwind label %bb.h

bb.k:                                             ; preds = %bb.i
  %.not658 = icmp eq i64 %.sroa.0393.0.copyload, -9223372036854775808
  br i1 %.not658, label %bb.l, label %bb.n

bb.l:                                             ; preds = %bb.k
  store i64 -9223372036854775808, ptr %i.dt, align 8
  br label %bb.m

bb.m:                                             ; preds = %bb.o, %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dr)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dq)
  invoke void @_ZN5milli5index5Index27filterable_attributes_rules17h545842a7f284cd4eE(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.dq, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(496) %1, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %2)
          to label %bb.q unwind label %bb.p

bb.n:                                             ; preds = %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bf)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.be)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.4394.sroa.0.0.copyload) ]
  %i.ei = icmp ult i64 %.sroa.4394.sroa.4.0.copyload, 576460752303423488
  call void @llvm.assume(i1 %i.ei)
  %i.ej = getelementptr inbounds nuw [16 x i8], ptr %.sroa.4394.sroa.0.0.copyload, i64 %.sroa.4394.sroa.4.0.copyload
  store ptr %.sroa.4394.sroa.0.0.copyload, ptr %i.be, align 8
  %.sroa.4978.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.be, i64 8
  store ptr %.sroa.4394.sroa.0.0.copyload, ptr %.sroa.4978.0..sroa_idx, align 8
  %.sroa.5979.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.be, i64 16
  store i64 %.sroa.0393.0.copyload, ptr %.sroa.5979.0..sroa_idx, align 8
  %.sroa.6980.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.be, i64 24
  store ptr %i.ej, ptr %.sroa.6980.0..sroa_idx, align 8
  invoke fastcc void @_ZN4core4iter6traits8iterator8Iterator7collect17h5812d79d09885fb5E(ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.bf, ptr noalias noundef align 8 captures(address) dereferenceable(32) %i.be)
          to label %bb.o unwind label %bb.h

bb.o:                                             ; preds = %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %i.be)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.dt, ptr noundef nonnull align 8 dereferenceable(24) %i.bf, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bf)
  br label %bb.m

.body:                                            ; preds = %.loopexit.split-lp, %bb.bb, %bb.p
  %.sroa.0382.1 = phi i1 [ true, %bb.p ], [ %.sroa.0382.2.ph, %.loopexit.split-lp ], [ %.sroa.0382.6, %bb.bb ] ; 2 uses
  %.sroa.0381.0 = phi i1 [ true, %bb.p ], [ %.sroa.0381.1.ph, %.loopexit.split-lp ], [ %.sroa.0381.5, %bb.bb ]
  %.pn748 = phi { ptr, i32 } [ %i.em, %bb.p ], [ %.pn746.ph, %.loopexit.split-lp ], [ %.pn740, %bb.bb ] ; 2 uses
  %i.ek = load i64, ptr %i.dt, align 8, !range !27, !noundef !23
  %i.el = icmp ne i64 %i.ek, -9223372036854775808
  %or.cond5 = select i1 %i.el, i1 %.sroa.0381.0, i1 false
  br i1 %or.cond5, label %bb.ik, label %bb.g

bb.p:                                             ; preds = %bb.r, %bb.m
  %i.em = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.q:                                             ; preds = %bb.m
  %i.en = load i64, ptr %i.dq, align 8, !range !34, !noundef !23
  %i.eo = trunc nuw i64 %i.en to i1
  %i.ep = getelementptr inbounds nuw i8, ptr %i.dq, i64 8
  %.sroa.0987.0.copyload = load i64, ptr %i.ep, align 8 ; 2 uses
  %.sroa.4988.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.dq, i64 16
  %.sroa.4988.0.copyload = load ptr, ptr %.sroa.4988.0..sroa_idx, align 8 ; 2 uses
  %.sroa.5989.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.dq, i64 24
  %.sroa.5989.0.copyload = load i64, ptr %.sroa.5989.0..sroa_idx, align 8 ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dq)
  br i1 %i.eo, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bb)
  store i64 %.sroa.0987.0.copyload, ptr %i.bb, align 8
  %.sroa.2867.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bb, i64 8
  store ptr %.sroa.4988.0.copyload, ptr %.sroa.2867.0..sroa_idx, align 8
  %.sroa.3868.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bb, i64 16
  store i64 %.sroa.5989.0.copyload, ptr %.sroa.3868.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ba)
  invoke void @"_ZN78_$LT$milli..error..Error$u20$as$u20$core..convert..From$LT$heed..Error$GT$$GT$4from17h86d263f3c2dd8736E"(ptr noalias noundef nonnull sret([320 x i8]) align 8 captures(address) dereferenceable(320) %i.ba, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.bb)
          to label %bb.ig unwind label %bb.p

bb.s:                                             ; preds = %bb.q
  %i.eq = icmp ult i64 %.sroa.5989.0.copyload, 288230376151711744
  call void @llvm.assume(i1 %i.eq)
  store i64 %.sroa.0987.0.copyload, ptr %i.dr, align 8, !alias.scope !11803
  %i.er = getelementptr inbounds nuw i8, ptr %i.dr, i64 8
  store ptr %.sroa.4988.0.copyload, ptr %i.er, align 8, !alias.scope !11803
  %i.es = getelementptr inbounds nuw i8, ptr %i.dr, i64 16
  store i64 %.sroa.5989.0.copyload, ptr %i.es, align 8, !alias.scope !11803
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dp)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.do)
  invoke void @_ZN5milli5index5Index15sortable_fields17hb1156440e10bc0ebE(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(address) dereferenceable(48) %i.do, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(496) %1, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %2)
          to label %bb.t unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %"_ZN5alloc11collections5btree4node173Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Dying$C$K$C$V$C$NodeType$GT$$C$alloc..collections..btree..node..marker..KV$GT$12drop_key_val17h7e7101156436b5f4E.exit.i.i.i.i.i", %"_ZN119_$LT$alloc..collections..btree..map..BTreeMap$LT$K$C$V$C$A$GT$$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17h409bd7fdb0639269E.exit.i.i.i", %bb.au, %bb.u, %bb.s
  %lpad.loopexit.split-lp1599 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

bb.t:                                             ; preds = %bb.s
  %i.et = load ptr, ptr %i.do, align 8, !noundef !23 ; 7 uses
  %i.eu = icmp eq ptr %i.et, null
  %i.ev = getelementptr inbounds nuw i8, ptr %i.do, i64 8
  %.sroa.01050.0.copyload = load i64, ptr %i.ev, align 8 ; 5 uses
  br i1 %i.eu, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  %.sroa.41051.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.do, i64 16
  %.sroa.21046.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.az, i64 8
  %i.ew = load <2 x i64>, ptr %.sroa.41051.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.do)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.az)
  store i64 %.sroa.01050.0.copyload, ptr %i.az, align 8
  store <2 x i64> %i.ew, ptr %.sroa.21046.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ay)
  invoke void @"_ZN78_$LT$milli..error..Error$u20$as$u20$core..convert..From$LT$heed..Error$GT$$GT$4from17h86d263f3c2dd8736E"(ptr noalias noundef nonnull sret([320 x i8]) align 8 captures(address) dereferenceable(320) %i.ay, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.az)
          to label %bb.ib unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.v:                                             ; preds = %bb.t
  %.sroa.4396.sroa.5.0..sroa.4396.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.do, i64 24
  %.sroa.4396.sroa.5.0.copyload = load i64, ptr %.sroa.4396.sroa.5.0..sroa.4396.0..sroa_idx.sroa_idx, align 8 ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.do)
  %.val3.i.i.i = load <16 x i8>, ptr %i.et, align 16, !noalias !11804
  %i.ex = icmp eq i64 %.sroa.01050.0.copyload, 0  ; 4 uses
  br i1 %i.ex, label %bb.w, label %_ZN9hashbrown3raw11TableLayout20calculate_layout_for17hb76643e6316511fcE.exit.i.i.i.i

_ZN9hashbrown3raw11TableLayout20calculate_layout_for17hb76643e6316511fcE.exit.i.i.i.i: ; preds = %bb.v
  %i.ey = mul i64 %.sroa.01050.0.copyload, 24     ; 2 uses
  %i.ez = add i64 %i.ey, 24
  %i.fa = icmp ult i64 %i.ez, -15
  call void @llvm.assume(i1 %i.fa)
  %i.fb = and i64 %i.ey, -16                      ; 2 uses
  %i.fc = add i64 %i.fb, 32                       ; 2 uses
  %i.fd = add i64 %.sroa.01050.0.copyload, 17
  %i.fe = add i64 %i.fd, %i.fc                    ; 3 uses
  %i.ff = icmp uge i64 %i.fe, %i.fc
  call void @llvm.assume(i1 %i.ff)
  %i.fg = icmp ult i64 %i.fe, 9223372036854775793
  call void @llvm.assume(i1 %i.fg)
  %i.fh = sub i64 -32, %i.fb
  %i.fi = getelementptr inbounds i8, ptr %i.et, i64 %i.fh
  br label %bb.w

bb.w:                                             ; preds = %_ZN9hashbrown3raw11TableLayout20calculate_layout_for17hb76643e6316511fcE.exit.i.i.i.i, %bb.v
  %.sroa.5.sroa.0.0.i.i.i.i = phi i64 [ %i.fe, %_ZN9hashbrown3raw11TableLayout20calculate_layout_for17hb76643e6316511fcE.exit.i.i.i.i ], [ undef, %bb.v ] ; 7 uses
  %.sroa.5.sroa.4.0.i.i.i.i = phi ptr [ %i.fi, %_ZN9hashbrown3raw11TableLayout20calculate_layout_for17hb76643e6316511fcE.exit.i.i.i.i ], [ undef, %bb.v ] ; 6 uses
  %.sroa.0.0.i.i.i.i = phi i64 [ 16, %_ZN9hashbrown3raw11TableLayout20calculate_layout_for17hb76643e6316511fcE.exit.i.i.i.i ], [ 0, %bb.v ] ; 4 uses
  %i.fj = getelementptr i8, ptr %i.et, i64 %.sroa.01050.0.copyload
  %i.fk = getelementptr i8, ptr %i.fj, i64 1
  %i.fl = ptrtoint ptr %i.fk to i64
  call void @llvm.experimental.noalias.scope.decl(metadata !11805)
  call void @llvm.experimental.noalias.scope.decl(metadata !11806)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !11807
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !11808
  %i.fm = icmp eq i64 %.sroa.4396.sroa.5.0.copyload, 0
  br i1 %i.fm, label %.thread.i.i.i.i.i.i, label %bb.x

.thread.i.i.i.i.i.i:                              ; preds = %bb.w
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !11808
  br label %"_ZN9hashbrown3raw16RawIter$LT$T$GT$13drop_elements17h916acaecfb0af6c1E.exit.i.i.i.i.i.i.i.i.i.i.i"

bb.x:                                             ; preds = %bb.w
  %i.fn = icmp sgt <16 x i8> %.val3.i.i.i, splat (i8 -1)
  %i.fo = bitcast <16 x i1> %i.fn to i16          ; 2 uses
  %i.fp = getelementptr inbounds nuw i8, ptr %i.et, i64 16 ; 2 uses
  %.not13.i.i.i.i.i.i.i.i.i = icmp eq i16 %i.fo, 0
  br i1 %.not13.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i, label %"_ZN99_$LT$hashbrown..raw..RawIntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h8c8b1741b6c055e3E.exit.i.i.i.i.i.i.i"

.lr.ph.i.i.i.i.i.i.i.i.i:                         ; preds = %bb.x, %.lr.ph.i.i.i.i.i.i.i.i.i
  %i.fq = phi ptr [ %i.fu, %.lr.ph.i.i.i.i.i.i.i.i.i ], [ %i.fp, %bb.x ] ; 2 uses
  %i.fr = phi ptr [ %i.ft, %.lr.ph.i.i.i.i.i.i.i.i.i ], [ %i.et, %bb.x ]
  %.val11.i.i.i.i.i.i.i.i.i = load <16 x i8>, ptr %i.fq, align 16, !noalias !11809
  %i.fs = icmp sgt <16 x i8> %.val11.i.i.i.i.i.i.i.i.i, splat (i8 -1)
  %i.ft = getelementptr inbounds i8, ptr %i.fr, i64 -384 ; 2 uses
  %i.fu = getelementptr inbounds nuw i8, ptr %i.fq, i64 16 ; 2 uses
  %.cast.i.i.i.i.i.i.i.i.i = bitcast <16 x i1> %i.fs to i16 ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i = icmp eq i16 %.cast.i.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i, label %"_ZN99_$LT$hashbrown..raw..RawIntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h8c8b1741b6c055e3E.exit.i.i.i.i.i.i.i"

"_ZN99_$LT$hashbrown..raw..RawIntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h8c8b1741b6c055e3E.exit.i.i.i.i.i.i.i": ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i, %bb.x
  %.sroa.13.0.i.i.i.i = phi ptr [ %i.fp, %bb.x ], [ %i.fu, %.lr.ph.i.i.i.i.i.i.i.i.i ] ; 4 uses
  %.sroa.10.0.i.i.i.i = phi ptr [ %i.et, %bb.x ], [ %i.ft, %.lr.ph.i.i.i.i.i.i.i.i.i ] ; 5 uses
  %.lcssa.i.i.i.i.i.i.i.i.i = phi i16 [ %i.fo, %bb.x ], [ %.cast.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i ] ; 3 uses
  %i.fv = add i16 %.lcssa.i.i.i.i.i.i.i.i.i, -1
  %i.fw = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i.i.i.i.i.i.i.i.i, i1 true)
  %i.fx = zext nneg i16 %i.fw to i64
  %i.fy = and i16 %i.fv, %.lcssa.i.i.i.i.i.i.i.i.i ; 4 uses
  %i.fz = sub nsw i64 0, %i.fx
  %i.ga = getelementptr inbounds [24 x i8], ptr %.sroa.10.0.i.i.i.i, i64 %i.fz ; 3 uses
  %i.gb = add i64 %.sroa.4396.sroa.5.0.copyload, -1 ; 8 uses
  %i.gc = getelementptr inbounds i8, ptr %i.ga, i64 -24
  %.sroa.0.0.copyload1.i.i.i.i.i.i.i = load i64, ptr %i.gc, align 8, !noalias !11810 ; 4 uses
  %.not.i.i.i.i.i.i.i = icmp eq i64 %.sroa.0.0.copyload1.i.i.i.i.i.i.i, -9223372036854775808
  br i1 %.not.i.i.i.i.i.i.i, label %bb.y, label %bb.ad

bb.y:                                             ; preds = %"_ZN99_$LT$hashbrown..raw..RawIntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h8c8b1741b6c055e3E.exit.i.i.i.i.i.i.i"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !11808
  %i.gd = icmp eq i64 %i.gb, 0
  br i1 %i.gd, label %"_ZN9hashbrown3raw16RawIter$LT$T$GT$13drop_elements17h916acaecfb0af6c1E.exit.i.i.i.i.i.i.i.i.i.i.i", label %.preheader.i.i.i.i.i.i.i.i.i.i.i.i

.preheader.i.i.i.i.i.i.i.i.i.i.i.i:               ; preds = %bb.y, %"_ZN4core3ptr61drop_in_place$LT$$LP$alloc..string..String$C$$LP$$RP$$RP$$GT$17hbe7af4ecaf431fbeE.exit.i.i.i.i.i.i.i.i.i.i.i.i"
  %.lcssa14.i.i.i.i.i.i.i.i.i.i.i.i = phi ptr [ %.lcssa13.i.i.i.i.i.i.i.i.i.i.i.i, %"_ZN4core3ptr61drop_in_place$LT$$LP$alloc..string..String$C$$LP$$RP$$RP$$GT$17hbe7af4ecaf431fbeE.exit.i.i.i.i.i.i.i.i.i.i.i.i" ], [ %.sroa.13.0.i.i.i.i, %bb.y ] ; 2 uses
  %i.ge = phi i64 [ %i.gr, %"_ZN4core3ptr61drop_in_place$LT$$LP$alloc..string..String$C$$LP$$RP$$RP$$GT$17hbe7af4ecaf431fbeE.exit.i.i.i.i.i.i.i.i.i.i.i.i" ], [ %i.gb, %bb.y ]
  %.lcssa710.i.i.i.i.i.i.i.i.i.i.i.i = phi ptr [ %.lcssa79.i.i.i.i.i.i.i.i.i.i.i.i, %"_ZN4core3ptr61drop_in_place$LT$$LP$alloc..string..String$C$$LP$$RP$$RP$$GT$17hbe7af4ecaf431fbeE.exit.i.i.i.i.i.i.i.i.i.i.i.i" ], [ %.sroa.10.0.i.i.i.i, %bb.y ] ; 2 uses
  %i.gf = phi i16 [ %i.go, %"_ZN4core3ptr61drop_in_place$LT$$LP$alloc..string..String$C$$LP$$RP$$RP$$GT$17hbe7af4ecaf431fbeE.exit.i.i.i.i.i.i.i.i.i.i.i.i" ], [ %i.fy, %bb.y ] ; 2 uses
  %.not13.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq i16 %i.gf, 0
  br i1 %.not13.i.i.i.i.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i, label %"_ZN9hashbrown3raw21RawIterRange$LT$T$GT$9next_impl17hba597947df891a29E.exit.i.i.i.i.i.i.i.i.i.i.i.i"

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i:                 ; preds = %.preheader.i.i.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.gg = phi ptr [ %i.gk, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ %.lcssa14.i.i.i.i.i.i.i.i.i.i.i.i, %.preheader.i.i.i.i.i.i.i.i.i.i.i.i ] ; 2 uses
  %i.gh = phi ptr [ %i.gj, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ %.lcssa710.i.i.i.i.i.i.i.i.i.i.i.i, %.preheader.i.i.i.i.i.i.i.i.i.i.i.i ]
  %.val11.i.i.i.i.i.i.i.i.i.i.i.i.i = load <16 x i8>, ptr %i.gg, align 16, !noalias !11811
  %i.gi = icmp sgt <16 x i8> %.val11.i.i.i.i.i.i.i.i.i.i.i.i.i, splat (i8 -1)
  %i.gj = getelementptr inbounds i8, ptr %i.gh, i64 -384 ; 2 uses
  %i.gk = getelementptr inbounds nuw i8, ptr %i.gg, i64 16 ; 2 uses
  %.cast.i.i.i.i.i.i.i.i.i.i.i.i.i = bitcast <16 x i1> %i.gi to i16 ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq i16 %.cast.i.i.i.i.i.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i, label %"_ZN9hashbrown3raw21RawIterRange$LT$T$GT$9next_impl17hba597947df891a29E.exit.i.i.i.i.i.i.i.i.i.i.i.i"

"_ZN9hashbrown3raw21RawIterRange$LT$T$GT$9next_impl17hba597947df891a29E.exit.i.i.i.i.i.i.i.i.i.i.i.i": ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i, %.preheader.i.i.i.i.i.i.i.i.i.i.i.i
  %.lcssa13.i.i.i.i.i.i.i.i.i.i.i.i = phi ptr [ %.lcssa14.i.i.i.i.i.i.i.i.i.i.i.i, %.preheader.i.i.i.i.i.i.i.i.i.i.i.i ], [ %i.gk, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i ]
  %.lcssa79.i.i.i.i.i.i.i.i.i.i.i.i = phi ptr [ %.lcssa710.i.i.i.i.i.i.i.i.i.i.i.i, %.preheader.i.i.i.i.i.i.i.i.i.i.i.i ], [ %i.gj, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i ] ; 2 uses
  %.lcssa.i.i.i.i.i.i.i.i.i.i.i.i.i = phi i16 [ %i.gf, %.preheader.i.i.i.i.i.i.i.i.i.i.i.i ], [ %.cast.i.i.i.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i ] ; 3 uses
  %i.gl = add i16 %.lcssa.i.i.i.i.i.i.i.i.i.i.i.i.i, -1
  %i.gm = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i.i.i.i.i.i.i.i.i.i.i.i.i, i1 true)
  %i.gn = zext nneg i16 %i.gm to i64
  %i.go = and i16 %i.gl, %.lcssa.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.gp = sub nsw i64 0, %i.gn
  %i.gq = getelementptr inbounds [24 x i8], ptr %.lcssa79.i.i.i.i.i.i.i.i.i.i.i.i, i64 %i.gp ; 2 uses
  %i.gr = add i64 %i.ge, -1                       ; 2 uses
  %i.gs = getelementptr inbounds i8, ptr %i.gq, i64 -24
  %.val.i.i.i.i.i.i.i.i.i.i.i.i = load i64, ptr %i.gs, align 8, !alias.scope !11812, !noalias !11813 ; 2 uses
  %i.gt = icmp eq i64 %.val.i.i.i.i.i.i.i.i.i.i.i.i, 0
  br i1 %i.gt, label %"_ZN4core3ptr61drop_in_place$LT$$LP$alloc..string..String$C$$LP$$RP$$RP$$GT$17hbe7af4ecaf431fbeE.exit.i.i.i.i.i.i.i.i.i.i.i.i", label %bb.z

bb.z:                                             ; preds = %"_ZN9hashbrown3raw21RawIterRange$LT$T$GT$9next_impl17hba597947df891a29E.exit.i.i.i.i.i.i.i.i.i.i.i.i"
  %i.gu = getelementptr i8, ptr %i.gq, i64 -16
  %.val6.i.i.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.gu, align 8, !noalias !11813, !nonnull !23, !noundef !23
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val6.i.i.i.i.i.i.i.i.i.i.i.i, i64 noundef %.val.i.i.i.i.i.i.i.i.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #52, !noalias !11814
  br label %"_ZN4core3ptr61drop_in_place$LT$$LP$alloc..string..String$C$$LP$$RP$$RP$$GT$17hbe7af4ecaf431fbeE.exit.i.i.i.i.i.i.i.i.i.i.i.i"

"_ZN4core3ptr61drop_in_place$LT$$LP$alloc..string..String$C$$LP$$RP$$RP$$GT$17hbe7af4ecaf431fbeE.exit.i.i.i.i.i.i.i.i.i.i.i.i": ; preds = %bb.z, %"_ZN9hashbrown3raw21RawIterRange$LT$T$GT$9next_impl17hba597947df891a29E.exit.i.i.i.i.i.i.i.i.i.i.i.i"
  %.old5.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq i64 %i.gr, 0
  br i1 %.old5.i.i.i.i.i.i.i.i.i.i.i.i, label %"_ZN9hashbrown3raw16RawIter$LT$T$GT$13drop_elements17h916acaecfb0af6c1E.exit.i.i.i.i.i.i.i.i.i.i.i", label %.preheader.i.i.i.i.i.i.i.i.i.i.i.i

"_ZN9hashbrown3raw16RawIter$LT$T$GT$13drop_elements17h916acaecfb0af6c1E.exit.i.i.i.i.i.i.i.i.i.i.i": ; preds = %"_ZN4core3ptr61drop_in_place$LT$$LP$alloc..string..String$C$$LP$$RP$$RP$$GT$17hbe7af4ecaf431fbeE.exit.i.i.i.i.i.i.i.i.i.i.i.i", %bb.y, %.thread.i.i.i.i.i.i
  %i.gv = icmp eq i64 %.sroa.5.sroa.0.0.i.i.i.i, 0
  %or.cond.i.i.i.i = or i1 %i.ex, %i.gv
  br i1 %or.cond.i.i.i.i, label %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h29df9b7a9d118a79E.exit.i.i.thread.i", label %bb.aa

bb.aa:                                            ; preds = %"_ZN9hashbrown3raw16RawIter$LT$T$GT$13drop_elements17h916acaecfb0af6c1E.exit.i.i.i.i.i.i.i.i.i.i.i"
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.5.sroa.4.0.i.i.i.i) ]
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.5.sroa.4.0.i.i.i.i, i64 noundef %.sroa.5.sroa.0.0.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) %.sroa.0.0.i.i.i.i) #52, !noalias !11815
  br label %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h29df9b7a9d118a79E.exit.i.i.thread.i"

bb.ab:                                            ; preds = %bb.ae
  %i.gw = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.gx = icmp eq i64 %.sroa.0.0.copyload1.i.i.i.i.i.i.i, 0
  br i1 %i.gx, label %bb.am, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.6.sroa.0.0.copyload.i.i.i.i.i.i) ]
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.6.sroa.0.0.copyload.i.i.i.i.i.i, i64 noundef %.sroa.0.0.copyload1.i.i.i.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #52, !noalias !11816
  br label %bb.am

bb.ad:                                            ; preds = %"_ZN99_$LT$hashbrown..raw..RawIntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h8c8b1741b6c055e3E.exit.i.i.i.i.i.i.i"
  %.sroa.6.0..sroa_idx2.i.i.i.i.i.i.i = getelementptr inbounds i8, ptr %i.ga, i64 -16
  %.sroa.6.sroa.0.0.copyload.i.i.i.i.i.i = load ptr, ptr %.sroa.6.0..sroa_idx2.i.i.i.i.i.i.i, align 8, !noalias !11817 ; 3 uses
  %.sroa.6.sroa.5.0..sroa.6.0..sroa_idx2.i.sroa_idx.i.i.i.i.i.i = getelementptr inbounds i8, ptr %i.ga, i64 -8
  %.sroa.6.sroa.5.0.copyload.i.i.i.i.i.i = load i64, ptr %.sroa.6.sroa.5.0..sroa.6.0..sroa_idx2.i.sroa_idx.i.i.i.i.i.i, align 8, !noalias !11817
  %.sroa.0.0.i.i.i.i.i.i.i = call noundef i64 @llvm.umax.i64(i64 %.sroa.4396.sroa.5.0.copyload, i64 4) ; 3 uses
  %i.gy = mul i64 %.sroa.0.0.i.i.i.i.i.i.i, 24    ; 3 uses
  %or.cond.i.i.i.i.i.i.i.i.i = icmp ugt i64 %i.gb, 384307168202282324
  br i1 %or.cond.i.i.i.i.i.i.i.i.i, label %bb.ae, label %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i.i.i, !prof !32

_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i.i.i: ; preds = %bb.ad
  %i.gz = icmp eq i64 %i.gy, 0
  br i1 %i.gz, label %bb.af, label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h2c5e185936086779E.exit.i.i.i.i.i.i.i.i"

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h2c5e185936086779E.exit.i.i.i.i.i.i.i.i": ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i.i.i
  call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #52, !noalias !11818
  %i.ha = call noundef align 8 ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef %i.gy, i64 noundef range(i64 1, 9) 8) #52, !noalias !11818 ; 2 uses
  %i.hb = icmp eq ptr %i.ha, null
  br i1 %i.hb, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h2c5e185936086779E.exit.i.i.i.i.i.i.i.i", %bb.ad
  %.sroa.4.0.ph.i.i.i.i.i.i.i = phi i64 [ 8, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h2c5e185936086779E.exit.i.i.i.i.i.i.i.i" ], [ 0, %bb.ad ]
  invoke void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef %.sroa.4.0.ph.i.i.i.i.i.i.i, i64 %i.gy, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @1063) #57
          to label %.noexc.i.i.i.i.i.i unwind label %bb.ab, !noalias !11808

.noexc.i.i.i.i.i.i:                               ; preds = %bb.ae
  unreachable

bb.af:                                            ; preds = %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h2c5e185936086779E.exit.i.i.i.i.i.i.i.i", %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i.i.i
  %.sroa.10.0.i.i.i.i.i.i.i = phi ptr [ inttoptr (i64 8 to ptr), %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i.i.i ], [ %i.ha, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h2c5e185936086779E.exit.i.i.i.i.i.i.i.i" ] ; 5 uses
  %.sroa.4.0.i.i.i.i.i.i.i = phi i64 [ 0, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i.i.i ], [ %.sroa.0.0.i.i.i.i.i.i.i, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h2c5e185936086779E.exit.i.i.i.i.i.i.i.i" ] ; 2 uses
  %i.hc = icmp ule i64 %.sroa.0.0.i.i.i.i.i.i.i, %.sroa.4.0.i.i.i.i.i.i.i
  call void @llvm.assume(i1 %i.hc)
  store i64 %.sroa.0.0.copyload1.i.i.i.i.i.i.i, ptr %.sroa.10.0.i.i.i.i.i.i.i, align 8, !noalias !11808
  %.sroa.46.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.10.0.i.i.i.i.i.i.i, i64 8
  store ptr %.sroa.6.sroa.0.0.copyload.i.i.i.i.i.i, ptr %.sroa.46.0..sroa_idx.i.i.i.i.i.i, align 8, !noalias !11808
  %.sroa.57.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.10.0.i.i.i.i.i.i.i, i64 16
  store i64 %.sroa.6.sroa.5.0.copyload.i.i.i.i.i.i, ptr %.sroa.57.0..sroa_idx.i.i.i.i.i.i, align 8, !noalias !11808
  store i64 %.sroa.4.0.i.i.i.i.i.i.i, ptr %i.e, align 8, !noalias !11808
  %.sroa.4.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 2 uses
  store ptr %.sroa.10.0.i.i.i.i.i.i.i, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i.i, align 8, !noalias !11808
  %.sroa.6.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 16 ; 2 uses
  store i64 1, ptr %.sroa.6.0..sroa_idx.i.i.i.i.i.i, align 8, !noalias !11808
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !11808
  store i64 %.sroa.0.0.i.i.i.i, ptr %i.d, align 8, !noalias !11819
  %.sroa.6.0..sroa_idx3.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store i64 %.sroa.5.sroa.0.0.i.i.i.i, ptr %.sroa.6.0..sroa_idx3.i.i.i.i, align 8, !noalias !11819
  %.sroa.8.0..sroa_idx6.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  store ptr %.sroa.5.sroa.4.0.i.i.i.i, ptr %.sroa.8.0..sroa_idx6.i.i.i.i, align 8, !noalias !11819
  %.sroa.10.0..sroa_idx9.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 24 ; 2 uses
  store ptr %.sroa.10.0.i.i.i.i, ptr %.sroa.10.0..sroa_idx9.i.i.i.i, align 8, !noalias !11819
  %.sroa.13.0..sroa_idx11.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 32 ; 2 uses
  store ptr %.sroa.13.0.i.i.i.i, ptr %.sroa.13.0..sroa_idx11.i.i.i.i, align 8, !noalias !11819
  %.sroa.17.0..sroa_idx13.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 40
  store i64 %i.fl, ptr %.sroa.17.0..sroa_idx13.i.i.i.i, align 8, !noalias !11819
  %.sroa.1715.0..sroa_idx16.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 48 ; 2 uses
  store i16 %i.fy, ptr %.sroa.1715.0..sroa_idx16.i.i.i.i, align 8, !noalias !11819
  %.sroa.1919.0..sroa_idx20.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 56 ; 2 uses
  store i64 %i.gb, ptr %.sroa.1919.0..sroa_idx20.i.i.i.i, align 8, !noalias !11819
  call void @llvm.experimental.noalias.scope.decl(metadata !11820)
  call void @llvm.experimental.noalias.scope.decl(metadata !11821)
  call void @llvm.experimental.noalias.scope.decl(metadata !11822)
  call void @llvm.experimental.noalias.scope.decl(metadata !11823)
  %i.hd = icmp eq i64 %i.gb, 0
  br i1 %i.hd, label %"_ZN9hashbrown3raw16RawIter$LT$T$GT$13drop_elements17h916acaecfb0af6c1E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i", label %.lr.ph.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i:                           ; preds = %bb.af, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h4c2ffab09fcfeb15E.exit.i.i.i.i.i.i.i.i"
  %i.he = phi ptr [ %i.ip, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h4c2ffab09fcfeb15E.exit.i.i.i.i.i.i.i.i" ], [ %.sroa.10.0.i.i.i.i.i.i.i, %bb.af ]
  %i.hf = phi i64 [ %i.ir, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h4c2ffab09fcfeb15E.exit.i.i.i.i.i.i.i.i" ], [ 1, %bb.af ] ; 4 uses
  %.lcssa1225.i.i.i.i.i.i.i.i = phi ptr [ %.promoted12.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h4c2ffab09fcfeb15E.exit.i.i.i.i.i.i.i.i" ], [ %.sroa.13.0.i.i.i.i, %bb.af ] ; 2 uses
  %.lcssa1322.i.i.i.i.i.i.i.i = phi ptr [ %.promoted8.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h4c2ffab09fcfeb15E.exit.i.i.i.i.i.i.i.i" ], [ %.sroa.10.0.i.i.i.i, %bb.af ] ; 2 uses
  %i.hg = phi i16 [ %i.hp, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h4c2ffab09fcfeb15E.exit.i.i.i.i.i.i.i.i" ], [ %i.fy, %bb.af ] ; 2 uses
  %.val1617.i.i.i.i.i.i.i.i = phi i64 [ %i.hs, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h4c2ffab09fcfeb15E.exit.i.i.i.i.i.i.i.i" ], [ %i.gb, %bb.af ]
  call void @llvm.experimental.noalias.scope.decl(metadata !11824)
  call void @llvm.experimental.noalias.scope.decl(metadata !11825)
  call void @llvm.experimental.noalias.scope.decl(metadata !11826)
  %.not13.i.i.i.i.i.i.i.i.i.i.i = icmp eq i16 %i.hg, 0
  br i1 %.not13.i.i.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i, label %"_ZN99_$LT$hashbrown..raw..RawIntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h8c8b1741b6c055e3E.exit.i.i.i.i.i.i.i.i.i"

._crit_edge.i.i.i.i.i.i.i.i.i.i.i:                ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i
  store ptr %i.hl, ptr %.sroa.13.0..sroa_idx11.i.i.i.i, align 8, !alias.scope !11827, !noalias !11808
  store ptr %i.hk, ptr %.sroa.10.0..sroa_idx9.i.i.i.i, align 8, !alias.scope !11827, !noalias !11808
  br label %"_ZN99_$LT$hashbrown..raw..RawIntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h8c8b1741b6c055e3E.exit.i.i.i.i.i.i.i.i.i"

.lr.ph.i.i.i.i.i.i.i.i.i.i.i:                     ; preds = %.lr.ph.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i
  %i.hh = phi ptr [ %i.hl, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i ], [ %.lcssa1225.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i ] ; 2 uses
  %i.hi = phi ptr [ %i.hk, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i ], [ %.lcssa1322.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i ]
  %.val11.i.i.i.i.i.i.i.i.i.i.i = load <16 x i8>, ptr %i.hh, align 16, !noalias !11828
  %i.hj = icmp sgt <16 x i8> %.val11.i.i.i.i.i.i.i.i.i.i.i, splat (i8 -1)
  %i.hk = getelementptr inbounds i8, ptr %i.hi, i64 -384 ; 3 uses
  %i.hl = getelementptr inbounds nuw i8, ptr %i.hh, i64 16 ; 3 uses
  %.cast.i.i.i.i.i.i.i.i.i.i.i = bitcast <16 x i1> %i.hj to i16 ; 2 uses
  %.not.i.i.i.i.i7.i.i.i.i.i.i = icmp eq i16 %.cast.i.i.i.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i7.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i.i.i.i.i.i

"_ZN99_$LT$hashbrown..raw..RawIntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h8c8b1741b6c055e3E.exit.i.i.i.i.i.i.i.i.i": ; preds = %._crit_edge.i.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i
  %.promoted12.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.hl, %._crit_edge.i.i.i.i.i.i.i.i.i.i.i ], [ %.lcssa1225.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i ] ; 2 uses
  %.promoted8.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.hk, %._crit_edge.i.i.i.i.i.i.i.i.i.i.i ], [ %.lcssa1322.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i ] ; 3 uses
  %.lcssa.i.i.i.i.i.i.i.i.i.i.i = phi i16 [ %.cast.i.i.i.i.i.i.i.i.i.i.i, %._crit_edge.i.i.i.i.i.i.i.i.i.i.i ], [ %i.hg, %.lr.ph.i.i.i.i.i.i.i.i ] ; 3 uses
  %i.hm = add i16 %.lcssa.i.i.i.i.i.i.i.i.i.i.i, -1
  %i.hn = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i.i.i.i.i.i.i.i.i.i.i, i1 true)
  %i.ho = zext nneg i16 %i.hn to i64
  %i.hp = and i16 %i.hm, %.lcssa.i.i.i.i.i.i.i.i.i.i.i ; 3 uses
  %i.hq = sub nsw i64 0, %i.ho
  %i.hr = getelementptr inbounds [24 x i8], ptr %.promoted8.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 %i.hq ; 3 uses
  %i.hs = add nsw i64 %.val1617.i.i.i.i.i.i.i.i, -1 ; 6 uses
  %i.ht = getelementptr inbounds i8, ptr %i.hr, i64 -24
  %.sroa.0.0.copyload1.i.i.i.i.i.i.i.i.i = load i64, ptr %i.ht, align 8, !noalias !11829 ; 4 uses
  %.not.i.i.i5.i.i.i.i.i.i = icmp eq i64 %.sroa.0.0.copyload1.i.i.i.i.i.i.i.i.i, -9223372036854775808
  br i1 %.not.i.i.i5.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i.i.i, label %bb.ag

"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17hfb8d17e84375b72dE.exit.i.i.i.i.i.i.i.i": ; preds = %bb.ak, %bb.aj
  call fastcc void @"_ZN4core3ptr87drop_in_place$LT$std..collections..hash..set..IntoIter$LT$alloc..string..String$GT$$GT$17hba43583e2accb8a3E"(ptr noalias noundef nonnull align 8 dereferenceable(64) %i.d) #55, !noalias !11830
  call fastcc void @"_ZN4core3ptr65drop_in_place$LT$alloc..vec..Vec$LT$alloc..string..String$GT$$GT$17h4bfba0ed27bdd111E"(ptr noalias noundef align 8 dereferenceable(24) %i.e) #55, !noalias !11808
  br label %.loopexit.split-lp

bb.ag:                                            ; preds = %"_ZN99_$LT$hashbrown..raw..RawIntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h8c8b1741b6c055e3E.exit.i.i.i.i.i.i.i.i.i"
  %.sroa.6.0..sroa_idx2.i.i.i.i.i.i.i.i.i = getelementptr inbounds i8, ptr %i.hr, i64 -16
  %.sroa.6.sroa.0.0.copyload.i.i.i.i.i.i.i.i = load ptr, ptr %.sroa.6.0..sroa_idx2.i.i.i.i.i.i.i.i.i, align 8, !noalias !11831 ; 3 uses
  %.sroa.6.sroa.5.0..sroa.6.0..sroa_idx2.i.sroa_idx.i.i.i.i.i.i.i.i = getelementptr inbounds i8, ptr %i.hr, i64 -8
  %.sroa.6.sroa.5.0.copyload.i.i.i.i.i.i.i.i = load i64, ptr %.sroa.6.sroa.5.0..sroa.6.0..sroa_idx2.i.sroa_idx.i.i.i.i.i.i.i.i, align 8, !noalias !11831
  %i.hu = load i64, ptr %i.e, align 8, !range !24, !alias.scope !11832, !noalias !11808, !noundef !23
  %i.hv = icmp eq i64 %i.hf, %i.hu
  br i1 %i.hv, label %bb.al, label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h4c2ffab09fcfeb15E.exit.i.i.i.i.i.i.i.i"

._crit_edge.i.i.i.i.i.i.i.i:                      ; preds = %"_ZN99_$LT$hashbrown..raw..RawIntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h8c8b1741b6c055e3E.exit.i.i.i.i.i.i.i.i.i"
  %i.hw = icmp eq i64 %i.hs, 0
  br i1 %i.hw, label %"_ZN9hashbrown3raw16RawIter$LT$T$GT$13drop_elements17h916acaecfb0af6c1E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i", label %.preheader.i.i.i.i.i.i.i.i.i.i.i.i.i.i

.preheader.i.i.i.i.i.i.i.i.i.i.i.i.i.i:           ; preds = %._crit_edge.i.i.i.i.i.i.i.i, %"_ZN4core3ptr61drop_in_place$LT$$LP$alloc..string..String$C$$LP$$RP$$RP$$GT$17hbe7af4ecaf431fbeE.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i"
  %.lcssa14.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi ptr [ %.lcssa13.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %"_ZN4core3ptr61drop_in_place$LT$$LP$alloc..string..String$C$$LP$$RP$$RP$$GT$17hbe7af4ecaf431fbeE.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i" ], [ %.promoted12.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %._crit_edge.i.i.i.i.i.i.i.i ] ; 2 uses
  %i.hx = phi i64 [ %i.ik, %"_ZN4core3ptr61drop_in_place$LT$$LP$alloc..string..String$C$$LP$$RP$$RP$$GT$17hbe7af4ecaf431fbeE.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i" ], [ %i.hs, %._crit_edge.i.i.i.i.i.i.i.i ]
  %.lcssa710.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi ptr [ %.lcssa79.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %"_ZN4core3ptr61drop_in_place$LT$$LP$alloc..string..String$C$$LP$$RP$$RP$$GT$17hbe7af4ecaf431fbeE.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i" ], [ %.promoted8.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %._crit_edge.i.i.i.i.i.i.i.i ] ; 2 uses
  %i.hy = phi i16 [ %i.ih, %"_ZN4core3ptr61drop_in_place$LT$$LP$alloc..string..String$C$$LP$$RP$$RP$$GT$17hbe7af4ecaf431fbeE.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i" ], [ %i.hp, %._crit_edge.i.i.i.i.i.i.i.i ] ; 2 uses
  %.not13.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq i16 %i.hy, 0
  br i1 %.not13.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %"_ZN9hashbrown3raw21RawIterRange$LT$T$GT$9next_impl17hba597947df891a29E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i"

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i:             ; preds = %.preheader.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.hz = phi ptr [ %i.id, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ %.lcssa14.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %.preheader.i.i.i.i.i.i.i.i.i.i.i.i.i.i ] ; 2 uses
  %i.ia = phi ptr [ %i.ic, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ %.lcssa710.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %.preheader.i.i.i.i.i.i.i.i.i.i.i.i.i.i ]
  %.val11.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = load <16 x i8>, ptr %i.hz, align 16, !noalias !11833
  %i.ib = icmp sgt <16 x i8> %.val11.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, splat (i8 -1)
  %i.ic = getelementptr inbounds i8, ptr %i.ia, i64 -384 ; 2 uses
  %i.id = getelementptr inbounds nuw i8, ptr %i.hz, i64 16 ; 2 uses
  %.cast.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = bitcast <16 x i1> %i.ib to i16 ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq i16 %.cast.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %"_ZN9hashbrown3raw21RawIterRange$LT$T$GT$9next_impl17hba597947df891a29E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i"

"_ZN9hashbrown3raw21RawIterRange$LT$T$GT$9next_impl17hba597947df891a29E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i": ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %.preheader.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %.lcssa13.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi ptr [ %.lcssa14.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %.preheader.i.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ %i.id, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ]
  %.lcssa79.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi ptr [ %.lcssa710.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %.preheader.i.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ %i.ic, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ] ; 2 uses
  %.lcssa.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi i16 [ %i.hy, %.preheader.i.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ %.cast.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ] ; 3 uses
  %i.ie = add i16 %.lcssa.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, -1
  %i.if = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i1 true)
  %i.ig = zext nneg i16 %i.if to i64
  %i.ih = and i16 %i.ie, %.lcssa.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.ii = sub nsw i64 0, %i.ig
  %i.ij = getelementptr inbounds [24 x i8], ptr %.lcssa79.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 %i.ii ; 2 uses
  %i.ik = add nsw i64 %i.hx, -1                   ; 2 uses
  %i.il = getelementptr inbounds i8, ptr %i.ij, i64 -24
  %.val.i.i.i.i.i.i.i.i.i.i.i.i.i.i = load i64, ptr %i.il, align 8, !alias.scope !11834, !noalias !11835 ; 2 uses
  %i.im = icmp eq i64 %.val.i.i.i.i.i.i.i.i.i.i.i.i.i.i, 0
  br i1 %i.im, label %"_ZN4core3ptr61drop_in_place$LT$$LP$alloc..string..String$C$$LP$$RP$$RP$$GT$17hbe7af4ecaf431fbeE.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i", label %bb.ah

bb.ah:                                            ; preds = %"_ZN9hashbrown3raw21RawIterRange$LT$T$GT$9next_impl17hba597947df891a29E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i"
  %i.in = getelementptr i8, ptr %i.ij, i64 -16
  %.val6.i.i.i.i.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.in, align 8, !noalias !11835, !nonnull !23, !noundef !23
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val6.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 noundef %.val.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #52, !noalias !11836
  br label %"_ZN4core3ptr61drop_in_place$LT$$LP$alloc..string..String$C$$LP$$RP$$RP$$GT$17hbe7af4ecaf431fbeE.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i"

"_ZN4core3ptr61drop_in_place$LT$$LP$alloc..string..String$C$$LP$$RP$$RP$$GT$17hbe7af4ecaf431fbeE.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i": ; preds = %bb.ah, %"_ZN9hashbrown3raw21RawIterRange$LT$T$GT$9next_impl17hba597947df891a29E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i"
  %.old5.i.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq i64 %i.ik, 0
  br i1 %.old5.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %"_ZN9hashbrown3raw16RawIter$LT$T$GT$13drop_elements17h916acaecfb0af6c1E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i", label %.preheader.i.i.i.i.i.i.i.i.i.i.i.i.i.i

"_ZN9hashbrown3raw16RawIter$LT$T$GT$13drop_elements17h916acaecfb0af6c1E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i": ; preds = %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h4c2ffab09fcfeb15E.exit.i.i.i.i.i.i.i.i", %"_ZN4core3ptr61drop_in_place$LT$$LP$alloc..string..String$C$$LP$$RP$$RP$$GT$17hbe7af4ecaf431fbeE.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i", %._crit_edge.i.i.i.i.i.i.i.i, %bb.af
  %i.io = icmp eq i64 %.sroa.5.sroa.0.0.i.i.i.i, 0
  %or.cond22.i.i.i.i = or i1 %i.ex, %i.io
  br i1 %or.cond22.i.i.i.i, label %_ZN4core4iter6traits8iterator8Iterator7collect17h9e502b7175c30194E.exit.i.i, label %bb.ai

bb.ai:                                            ; preds = %"_ZN9hashbrown3raw16RawIter$LT$T$GT$13drop_elements17h916acaecfb0af6c1E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i"
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.5.sroa.4.0.i.i.i.i, i64 noundef %.sroa.5.sroa.0.0.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) %.sroa.0.0.i.i.i.i) #52, !noalias !11837
  br label %_ZN4core4iter6traits8iterator8Iterator7collect17h9e502b7175c30194E.exit.i.i

"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h4c2ffab09fcfeb15E.exit.i.i.i.i.i.i.i.i": ; preds = %"._ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h4c2ffab09fcfeb15E.exit.i.i_crit_edge.i.i.i.i.i.i", %bb.ag
  %i.ip = phi ptr [ %.pre.i.i.i.i.i.i, %"._ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h4c2ffab09fcfeb15E.exit.i.i_crit_edge.i.i.i.i.i.i" ], [ %i.he, %bb.ag ] ; 2 uses
  %i.iq = getelementptr inbounds nuw [24 x i8], ptr %i.ip, i64 %i.hf ; 3 uses
  store i64 %.sroa.0.0.copyload1.i.i.i.i.i.i.i.i.i, ptr %i.iq, align 8, !noalias !11838
  %.sroa.45.0..sroa_idx.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.iq, i64 8
  store ptr %.sroa.6.sroa.0.0.copyload.i.i.i.i.i.i.i.i, ptr %.sroa.45.0..sroa_idx.i.i.i.i.i.i.i.i, align 8, !noalias !11838
  %.sroa.56.0..sroa_idx.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.iq, i64 16
  store i64 %.sroa.6.sroa.5.0.copyload.i.i.i.i.i.i.i.i, ptr %.sroa.56.0..sroa_idx.i.i.i.i.i.i.i.i, align 8, !noalias !11838
  %i.ir = add nuw nsw i64 %i.hf, 1                ; 2 uses
  store i64 %i.ir, ptr %.sroa.6.0..sroa_idx.i.i.i.i.i.i, align 8, !alias.scope !11832, !noalias !11808
  %i.is = icmp eq i64 %i.hs, 0
  br i1 %i.is, label %"_ZN9hashbrown3raw16RawIter$LT$T$GT$13drop_elements17h916acaecfb0af6c1E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i", label %.lr.ph.i.i.i.i.i.i.i.i

bb.aj:                                            ; preds = %bb.al
  %i.it = landingpad { ptr, i32 }
          cleanup
  store i16 %i.hp, ptr %.sroa.1715.0..sroa_idx16.i.i.i.i, align 8, !alias.scope !11827, !noalias !11808
  store i64 %i.hs, ptr %.sroa.1919.0..sroa_idx20.i.i.i.i, align 8, !alias.scope !11839, !noalias !11808
  %i.iu = icmp eq i64 %.sroa.0.0.copyload1.i.i.i.i.i.i.i.i.i, 0
  br i1 %i.iu, label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17hfb8d17e84375b72dE.exit.i.i.i.i.i.i.i.i", label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.6.sroa.0.0.copyload.i.i.i.i.i.i.i.i) ]
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.6.sroa.0.0.copyload.i.i.i.i.i.i.i.i, i64 noundef %.sroa.0.0.copyload1.i.i.i.i.i.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #52, !noalias !11840
  br label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17hfb8d17e84375b72dE.exit.i.i.i.i.i.i.i.i"

bb.al:                                            ; preds = %bb.ag
  %i.iv = call i64 @llvm.uadd.sat.i64(i64 %i.hs, i64 1)
  invoke fastcc void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$7reserve21do_reserve_and_handle17h45307a5a03ebcc73E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.e, i64 noundef %i.hf, i64 noundef %i.iv, i64 noundef 8, i64 noundef 24)
          to label %"._ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h4c2ffab09fcfeb15E.exit.i.i_crit_edge.i.i.i.i.i.i" unwind label %bb.aj, !noalias !11841

"._ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h4c2ffab09fcfeb15E.exit.i.i_crit_edge.i.i.i.i.i.i": ; preds = %bb.al
  %.pre.i.i.i.i.i.i = load ptr, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i.i, align 8, !alias.scope !11832, !noalias !11808
  br label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h4c2ffab09fcfeb15E.exit.i.i.i.i.i.i.i.i"

bb.am:                                            ; preds = %bb.ac, %bb.ab
  %i.iw = icmp eq i64 %i.gb, 0
  br i1 %i.iw, label %"_ZN9hashbrown3raw16RawIter$LT$T$GT$13drop_elements17h916acaecfb0af6c1E.exit.i.i.i.i.i.i.i.i.i.i", label %.preheader.i.i.i.i.i.i.i.i.i.i.i

.preheader.i.i.i.i.i.i.i.i.i.i.i:                 ; preds = %bb.am, %"_ZN4core3ptr61drop_in_place$LT$$LP$alloc..string..String$C$$LP$$RP$$RP$$GT$17hbe7af4ecaf431fbeE.exit.i.i.i.i.i.i.i.i.i.i.i"
  %.lcssa14.i.i.i.i.i.i.i.i.i.i.i = phi ptr [ %.lcssa13.i.i.i.i.i.i.i.i.i.i.i, %"_ZN4core3ptr61drop_in_place$LT$$LP$alloc..string..String$C$$LP$$RP$$RP$$GT$17hbe7af4ecaf431fbeE.exit.i.i.i.i.i.i.i.i.i.i.i" ], [ %.sroa.13.0.i.i.i.i, %bb.am ] ; 2 uses
  %i.ix = phi i64 [ %i.jk, %"_ZN4core3ptr61drop_in_place$LT$$LP$alloc..string..String$C$$LP$$RP$$RP$$GT$17hbe7af4ecaf431fbeE.exit.i.i.i.i.i.i.i.i.i.i.i" ], [ %i.gb, %bb.am ]
  %.lcssa710.i.i.i.i.i.i.i.i.i.i.i = phi ptr [ %.lcssa79.i.i.i.i.i.i.i.i.i.i.i, %"_ZN4core3ptr61drop_in_place$LT$$LP$alloc..string..String$C$$LP$$RP$$RP$$GT$17hbe7af4ecaf431fbeE.exit.i.i.i.i.i.i.i.i.i.i.i" ], [ %.sroa.10.0.i.i.i.i, %bb.am ] ; 2 uses
  %i.iy = phi i16 [ %i.jh, %"_ZN4core3ptr61drop_in_place$LT$$LP$alloc..string..String$C$$LP$$RP$$RP$$GT$17hbe7af4ecaf431fbeE.exit.i.i.i.i.i.i.i.i.i.i.i" ], [ %i.fy, %bb.am ] ; 2 uses
  %.not13.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq i16 %i.iy, 0
  br i1 %.not13.i.i.i.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i, label %"_ZN9hashbrown3raw21RawIterRange$LT$T$GT$9next_impl17hba597947df891a29E.exit.i.i.i.i.i.i.i.i.i.i.i"

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i:                   ; preds = %.preheader.i.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i
  %i.iz = phi ptr [ %i.jd, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i ], [ %.lcssa14.i.i.i.i.i.i.i.i.i.i.i, %.preheader.i.i.i.i.i.i.i.i.i.i.i ] ; 2 uses
  %i.ja = phi ptr [ %i.jc, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i ], [ %.lcssa710.i.i.i.i.i.i.i.i.i.i.i, %.preheader.i.i.i.i.i.i.i.i.i.i.i ]
  %.val11.i.i.i.i.i.i.i.i.i.i.i.i = load <16 x i8>, ptr %i.iz, align 16, !noalias !11842
  %i.jb = icmp sgt <16 x i8> %.val11.i.i.i.i.i.i.i.i.i.i.i.i, splat (i8 -1)
  %i.jc = getelementptr inbounds i8, ptr %i.ja, i64 -384 ; 2 uses
  %i.jd = getelementptr inbounds nuw i8, ptr %i.iz, i64 16 ; 2 uses
  %.cast.i.i.i.i.i.i.i.i.i.i.i.i = bitcast <16 x i1> %i.jb to i16 ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq i16 %.cast.i.i.i.i.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i, label %"_ZN9hashbrown3raw21RawIterRange$LT$T$GT$9next_impl17hba597947df891a29E.exit.i.i.i.i.i.i.i.i.i.i.i"

"_ZN9hashbrown3raw21RawIterRange$LT$T$GT$9next_impl17hba597947df891a29E.exit.i.i.i.i.i.i.i.i.i.i.i": ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i, %.preheader.i.i.i.i.i.i.i.i.i.i.i
  %.lcssa13.i.i.i.i.i.i.i.i.i.i.i = phi ptr [ %.lcssa14.i.i.i.i.i.i.i.i.i.i.i, %.preheader.i.i.i.i.i.i.i.i.i.i.i ], [ %i.jd, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i ]
  %.lcssa79.i.i.i.i.i.i.i.i.i.i.i = phi ptr [ %.lcssa710.i.i.i.i.i.i.i.i.i.i.i, %.preheader.i.i.i.i.i.i.i.i.i.i.i ], [ %i.jc, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i ] ; 2 uses
  %.lcssa.i.i.i.i.i.i.i.i.i.i.i.i = phi i16 [ %i.iy, %.preheader.i.i.i.i.i.i.i.i.i.i.i ], [ %.cast.i.i.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i ] ; 3 uses
  %i.je = add i16 %.lcssa.i.i.i.i.i.i.i.i.i.i.i.i, -1
  %i.jf = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i.i.i.i.i.i.i.i.i.i.i.i, i1 true)
  %i.jg = zext nneg i16 %i.jf to i64
  %i.jh = and i16 %i.je, %.lcssa.i.i.i.i.i.i.i.i.i.i.i.i
  %i.ji = sub nsw i64 0, %i.jg
  %i.jj = getelementptr inbounds [24 x i8], ptr %.lcssa79.i.i.i.i.i.i.i.i.i.i.i, i64 %i.ji ; 2 uses
  %i.jk = add i64 %i.ix, -1                       ; 2 uses
  %i.jl = getelementptr inbounds i8, ptr %i.jj, i64 -24
  %.val.i.i.i.i.i.i.i.i.i.i.i = load i64, ptr %i.jl, align 8, !alias.scope !11843, !noalias !11844 ; 2 uses
  %i.jm = icmp eq i64 %.val.i.i.i.i.i.i.i.i.i.i.i, 0
  br i1 %i.jm, label %"_ZN4core3ptr61drop_in_place$LT$$LP$alloc..string..String$C$$LP$$RP$$RP$$GT$17hbe7af4ecaf431fbeE.exit.i.i.i.i.i.i.i.i.i.i.i", label %bb.an

bb.an:                                            ; preds = %"_ZN9hashbrown3raw21RawIterRange$LT$T$GT$9next_impl17hba597947df891a29E.exit.i.i.i.i.i.i.i.i.i.i.i"
  %i.jn = getelementptr i8, ptr %i.jj, i64 -16
  %.val6.i.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.jn, align 8, !noalias !11844, !nonnull !23, !noundef !23
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val6.i.i.i.i.i.i.i.i.i.i.i, i64 noundef %.val.i.i.i.i.i.i.i.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #52, !noalias !11845
  br label %"_ZN4core3ptr61drop_in_place$LT$$LP$alloc..string..String$C$$LP$$RP$$RP$$GT$17hbe7af4ecaf431fbeE.exit.i.i.i.i.i.i.i.i.i.i.i"

"_ZN4core3ptr61drop_in_place$LT$$LP$alloc..string..String$C$$LP$$RP$$RP$$GT$17hbe7af4ecaf431fbeE.exit.i.i.i.i.i.i.i.i.i.i.i": ; preds = %bb.an, %"_ZN9hashbrown3raw21RawIterRange$LT$T$GT$9next_impl17hba597947df891a29E.exit.i.i.i.i.i.i.i.i.i.i.i"
  %.old5.i.i.i.i.i.i.i.i.i.i.i = icmp eq i64 %i.jk, 0
  br i1 %.old5.i.i.i.i.i.i.i.i.i.i.i, label %"_ZN9hashbrown3raw16RawIter$LT$T$GT$13drop_elements17h916acaecfb0af6c1E.exit.i.i.i.i.i.i.i.i.i.i", label %.preheader.i.i.i.i.i.i.i.i.i.i.i

"_ZN9hashbrown3raw16RawIter$LT$T$GT$13drop_elements17h916acaecfb0af6c1E.exit.i.i.i.i.i.i.i.i.i.i": ; preds = %"_ZN4core3ptr61drop_in_place$LT$$LP$alloc..string..String$C$$LP$$RP$$RP$$GT$17hbe7af4ecaf431fbeE.exit.i.i.i.i.i.i.i.i.i.i.i", %bb.am
  %i.jo = icmp eq i64 %.sroa.5.sroa.0.0.i.i.i.i, 0
  %or.cond23.i.i.i.i = or i1 %i.ex, %i.jo
  br i1 %or.cond23.i.i.i.i, label %.loopexit.split-lp, label %bb.ao

bb.ao:                                            ; preds = %"_ZN9hashbrown3raw16RawIter$LT$T$GT$13drop_elements17h916acaecfb0af6c1E.exit.i.i.i.i.i.i.i.i.i.i"
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.5.sroa.4.0.i.i.i.i) ]
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.5.sroa.4.0.i.i.i.i, i64 noundef %.sroa.5.sroa.0.0.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) %.sroa.0.0.i.i.i.i) #52, !noalias !11846
  br label %.loopexit.split-lp

_ZN4core4iter6traits8iterator8Iterator7collect17h9e502b7175c30194E.exit.i.i: ; preds = %bb.ai, %"_ZN9hashbrown3raw16RawIter$LT$T$GT$13drop_elements17h916acaecfb0af6c1E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !11808
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.g, ptr noundef nonnull align 8 dereferenceable(24) %i.e, i64 24, i1 false), !noalias !11847
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !11808
  %.phi.trans.insert.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %.pre.i.i = load i64, ptr %.phi.trans.insert.i.i, align 8, !noalias !11807 ; 7 uses
  %i.jp = icmp ult i64 %.pre.i.i, 384307168202282326
  call void @llvm.assume(i1 %i.jp)
  %i.jq = icmp eq i64 %.pre.i.i, 0
  br i1 %i.jq, label %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h29df9b7a9d118a79E.exit.i.i.i", label %bb.aq

"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h29df9b7a9d118a79E.exit.i.i.thread.i": ; preds = %bb.aa, %"_ZN9hashbrown3raw16RawIter$LT$T$GT$13drop_elements17h916acaecfb0af6c1E.exit.i.i.i.i.i.i.i.i.i.i.i"
  store ptr null, ptr %i.dp, align 8, !alias.scope !11848
  %.sroa.5.0..sroa_idx.i62.i = getelementptr inbounds nuw i8, ptr %i.dp, i64 16
  store i64 0, ptr %.sroa.5.0..sroa_idx.i62.i, align 8, !alias.scope !11848
  br label %bb.aw

"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h29df9b7a9d118a79E.exit.i.i.i": ; preds = %_ZN4core4iter6traits8iterator8Iterator7collect17h9e502b7175c30194E.exit.i.i
  %.val2.i.i.pre.i = load i64, ptr %i.g, align 8, !range !24, !alias.scope !11849, !noalias !11807 ; 2 uses
  store ptr null, ptr %i.dp, align 8, !alias.scope !11848
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.dp, i64 16
  store i64 0, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !alias.scope !11848
  call void @llvm.experimental.noalias.scope.decl(metadata !11849)
  %i.jr = icmp eq i64 %.val2.i.i.pre.i, 0
  br i1 %i.jr, label %bb.aw, label %bb.ap

bb.ap:                                            ; preds = %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h29df9b7a9d118a79E.exit.i.i.i"
  %i.js = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %.val.i.i.i = load ptr, ptr %i.js, align 8, !alias.scope !11849, !noalias !11807, !nonnull !23, !noundef !23
  %i.jt = mul nuw i64 %.val2.i.i.pre.i, 24
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i.i, i64 noundef %i.jt, i64 noundef range(i64 1, -9223372036854775807) 8) #52, !noalias !11850
  br label %bb.aw

bb.aq:                                            ; preds = %_ZN4core4iter6traits8iterator8Iterator7collect17h9e502b7175c30194E.exit.i.i
  %i.ju = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.jv = load ptr, ptr %i.ju, align 8, !noalias !11807, !nonnull !23, !noundef !23 ; 5 uses
  %i.jw = icmp eq i64 %.pre.i.i, 1
  br i1 %i.jw, label %bb.au, label %bb.ar, !prof !51

bb.ar:                                            ; preds = %bb.aq
  %i.jx = icmp samesign ult i64 %.pre.i.i, 21
  br i1 %i.jx, label %bb.at, label %bb.as, !prof !51

bb.as:                                            ; preds = %bb.ar
  invoke void @_ZN4core5slice4sort6stable14driftsort_main17hb9285367ba39bd98E(ptr noalias noundef nonnull align 8 %i.jv, i64 noundef range(i64 1, 384307168202282326) %.pre.i.i, ptr noalias noundef nonnull align 1 %i.a)
          to label %bb.au unwind label %bb.av, !noalias !11807

bb.at:                                            ; preds = %bb.ar
  call fastcc void @_ZN4core5slice4sort6shared9smallsort25insertion_sort_shift_left17haec4e0aa36f2367bE(ptr noalias noundef nonnull align 8 %i.jv, i64 noundef range(i64 1, 384307168202282326) %.pre.i.i)
  br label %bb.au

bb.au:                                            ; preds = %bb.at, %bb.as, %bb.aq
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !11807
  %.sroa.010.0.copyload.i.i = load i64, ptr %i.g, align 8, !noalias !11807
  %i.jy = getelementptr inbounds nuw [24 x i8], ptr %i.jv, i64 %.pre.i.i
  store ptr %i.jv, ptr %i.f, align 8, !alias.scope !11851, !noalias !11807
  %i.jz = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  store i64 %.sroa.010.0.copyload.i.i, ptr %i.jz, align 8, !alias.scope !11851, !noalias !11807
  %i.ka = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store ptr %i.jv, ptr %i.ka, align 8, !alias.scope !11851, !noalias !11807
  %i.kb = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  store ptr %i.jy, ptr %i.kb, align 8, !alias.scope !11851, !noalias !11807
  invoke fastcc void @"_ZN5alloc11collections5btree3set21BTreeSet$LT$T$C$A$GT$16from_sorted_iter17hf63472e33ef286bdE"(ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.dp, ptr noalias noundef align 8 captures(address) dereferenceable(32) %i.f)
          to label %.noexc unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !11852

.noexc:                                           ; preds = %bb.au
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !11807
  br label %bb.aw

bb.av:                                            ; preds = %bb.as
  %i.kc = landingpad { ptr, i32 }
          cleanup
  call fastcc void @"_ZN4core3ptr65drop_in_place$LT$alloc..vec..Vec$LT$alloc..string..String$GT$$GT$17h4bfba0ed27bdd111E"(ptr noalias noundef align 8 dereferenceable(24) %i.g) #55, !noalias !11807
  br label %.loopexit.split-lp

bb.aw:                                            ; preds = %.noexc, %bb.ap, %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h29df9b7a9d118a79E.exit.i.i.i", %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h29df9b7a9d118a79E.exit.i.i.thread.i"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !11807
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dn)
  invoke void @"_ZN5milli11foreign_key37_$LT$impl$u20$milli..index..Index$GT$12foreign_keys17hb9dcadead47c5f2cE"(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.dn, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(496) %1, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %2)
          to label %bb.ay unwind label %bb.ax

bb.ax:                                            ; preds = %bb.az, %bb.aw
end_hunk_8
begin_hunk_9_@_ZN4core4iter6traits8iterator8Iterator7collect17h5a84a2062600bf93E:bb.a

"_ZN120_$LT$std..collections..hash..set..HashSet$LT$T$C$S$GT$$u20$as$u20$core..iter..traits..collect..FromIterator$LT$T$GT$$GT$9from_iter17hd55fd95d1995f9f1E.exit": ; preds = %"_ZN4core4iter8adapters3map8map_fold28_$u7b$$u7b$closure$u7d$$u7d$17h7329ff79a8fd55ceE.exit.i.i.i.i.i.i.i", %"_ZN73_$LT$std..hash..random..RandomState$u20$as$u20$core..default..Default$GT$7default17hee692b4a22bcebefE.exit.i"
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(48) %i.b, i64 48, i1 false), !noalias !18928
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !18891
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_ZN4core4iter6traits8iterator8Iterator7collect17h8eb95e5212e9e0f3E(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(32) %1) unnamed_addr #0 personality ptr @rust_eh_personality !guid !18936 {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = alloca [32 x i8], align 8                ; 7 uses
  %i.c = alloca [24 x i8], align 8                ; 9 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !18937)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !18938
  call fastcc void @_ZN4core4iter6traits8iterator8Iterator7collect17h5812d79d09885fb5E(ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.c, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(32) %1), !noalias !18937
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.e = load i64, ptr %i.d, align 8, !noalias !18938, !noundef !23 ; 7 uses
  %i.f = icmp ult i64 %i.e, 384307168202282326
  tail call void @llvm.assume(i1 %i.f)
  %i.g = icmp eq i64 %i.e, 0
  br i1 %i.g, label %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h29df9b7a9d118a79E.exit.i.i", label %bb.c

"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h29df9b7a9d118a79E.exit.i.i": ; preds = %bb.a
  store ptr null, ptr %0, align 8, !alias.scope !18937
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 0, ptr %.sroa.5.0..sroa_idx.i, align 8, !alias.scope !18937
  tail call void @llvm.experimental.noalias.scope.decl(metadata !18939)
  %.val2.i.i = load i64, ptr %i.c, align 8, !range !24, !alias.scope !18939, !noalias !18938, !noundef !23 ; 2 uses
  %i.h = icmp eq i64 %.val2.i.i, 0
  br i1 %i.h, label %"_ZN120_$LT$alloc..collections..btree..set..BTreeSet$LT$T$GT$$u20$as$u20$core..iter..traits..collect..FromIterator$LT$T$GT$$GT$9from_iter17hcb64f557a42e6dc8E.exit", label %bb.b

bb.b:                                             ; preds = %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h29df9b7a9d118a79E.exit.i.i"
  %i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %.val.i.i = load ptr, ptr %i.i, align 8, !alias.scope !18939, !noalias !18938, !nonnull !23, !noundef !23
  %i.j = mul nuw i64 %.val2.i.i, 24
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i, i64 noundef %i.j, i64 noundef range(i64 1, -9223372036854775807) 8) #52, !noalias !18940
  br label %"_ZN120_$LT$alloc..collections..btree..set..BTreeSet$LT$T$GT$$u20$as$u20$core..iter..traits..collect..FromIterator$LT$T$GT$$GT$9from_iter17hcb64f557a42e6dc8E.exit"

bb.c:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.l = load ptr, ptr %i.k, align 8, !noalias !18938, !nonnull !23, !noundef !23 ; 5 uses
  %i.m = icmp eq i64 %i.e, 1
  br i1 %i.m, label %bb.g, label %bb.d, !prof !51

bb.d:                                             ; preds = %bb.c
  %i.n = icmp samesign ult i64 %i.e, 21
  br i1 %i.n, label %bb.f, label %bb.e, !prof !51

bb.e:                                             ; preds = %bb.d
  invoke void @_ZN4core5slice4sort6stable14driftsort_main17hb9285367ba39bd98E(ptr noalias noundef nonnull align 8 %i.l, i64 noundef range(i64 1, 384307168202282326) %i.e, ptr noalias noundef nonnull align 1 %i.a)
          to label %bb.g unwind label %bb.h, !noalias !18938

bb.f:                                             ; preds = %bb.d
  tail call fastcc void @_ZN4core5slice4sort6shared9smallsort25insertion_sort_shift_left17haec4e0aa36f2367bE(ptr noalias noundef nonnull align 8 %i.l, i64 noundef range(i64 1, 384307168202282326) %i.e)
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e, %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !18938
  %.sroa.0.0.copyload.i = load i64, ptr %i.c, align 8, !noalias !18938
  %i.o = getelementptr inbounds nuw [24 x i8], ptr %i.l, i64 %i.e
  store ptr %i.l, ptr %i.b, align 8, !alias.scope !18941, !noalias !18938
  %i.p = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i64 %.sroa.0.0.copyload.i, ptr %i.p, align 8, !alias.scope !18941, !noalias !18938
  %i.q = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %i.l, ptr %i.q, align 8, !alias.scope !18941, !noalias !18938
  %i.r = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store ptr %i.o, ptr %i.r, align 8, !alias.scope !18941, !noalias !18938
  call fastcc void @"_ZN5alloc11collections5btree3set21BTreeSet$LT$T$C$A$GT$16from_sorted_iter17hf63472e33ef286bdE"(ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %0, ptr noalias noundef align 8 captures(address) dereferenceable(32) %i.b), !noalias !18942
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !18938
  br label %"_ZN120_$LT$alloc..collections..btree..set..BTreeSet$LT$T$GT$$u20$as$u20$core..iter..traits..collect..FromIterator$LT$T$GT$$GT$9from_iter17hcb64f557a42e6dc8E.exit"

bb.h:                                             ; preds = %bb.e
  %i.s = landingpad { ptr, i32 }
          cleanup
  call fastcc void @"_ZN4core3ptr65drop_in_place$LT$alloc..vec..Vec$LT$alloc..string..String$GT$$GT$17h4bfba0ed27bdd111E"(ptr noalias noundef align 8 dereferenceable(24) %i.c) #55, !noalias !18938
  resume { ptr, i32 } %i.s

"_ZN120_$LT$alloc..collections..btree..set..BTreeSet$LT$T$GT$$u20$as$u20$core..iter..traits..collect..FromIterator$LT$T$GT$$GT$9from_iter17hcb64f557a42e6dc8E.exit": ; preds = %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h29df9b7a9d118a79E.exit.i.i", %bb.b, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !18938
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_ZN4core4iter6traits8iterator8Iterator7collect17ha7a23ad9aac2d755E(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(24) %0, ptr noundef nonnull %1, ptr noundef nonnull %2) unnamed_addr #0 personality ptr @rust_eh_personality !guid !18975 {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 3 uses
  %.sroa.4.i.i.i.i.i.i.i.i.i = alloca [24 x i8], align 8 ; 4 uses
  %i.b = alloca [24 x i8], align 8                ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !18976
  %i.c = ptrtoint ptr %2 to i64
  %i.d = ptrtoint ptr %1 to i64
  %i.e = sub nuw i64 %i.c, %i.d                   ; 4 uses
  %i.f = lshr exact i64 %i.e, 5                   ; 3 uses
  %i.g = icmp ugt i64 %i.e, 9223372036854775800
  br i1 %i.g, label %bb.b, label %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i, !prof !32

_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i: ; preds = %bb.a
  %i.h = icmp eq ptr %2, %1
  br i1 %i.h, label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17haf896c3203a17879E.exit.i.i.thread.i.i.i", label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h2c5e185936086779E.exit.i.i.i.i.i"

"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17haf896c3203a17879E.exit.i.i.thread.i.i.i": ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i
  store i64 0, ptr %i.b, align 8, !noalias !18976
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %i.i, align 8, !noalias !18976
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  br label %"_ZN95_$LT$alloc..vec..Vec$LT$T$GT$$u20$as$u20$core..iter..traits..collect..FromIterator$LT$T$GT$$GT$9from_iter17h9faa31cfb4d6ad76E.exit"

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h2c5e185936086779E.exit.i.i.i.i.i": ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #52, !noalias !18977
  %i.k = tail call noundef align 8 ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef %i.e, i64 noundef range(i64 1, 9) 8) #52, !noalias !18977 ; 3 uses
  %i.l = icmp eq ptr %i.k, null
  br i1 %i.l, label %bb.b, label %bb.c

bb.b:                                             ; preds = %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h2c5e185936086779E.exit.i.i.i.i.i", %bb.a
  %.sroa.4.0.ph.i.i.i.i = phi i64 [ 8, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h2c5e185936086779E.exit.i.i.i.i.i" ], [ 0, %bb.a ]
  tail call void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef %.sroa.4.0.ph.i.i.i.i, i64 %i.e, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @1063) #57, !noalias !18976
  unreachable

bb.c:                                             ; preds = %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h2c5e185936086779E.exit.i.i.i.i.i"
  store i64 %i.f, ptr %i.b, align 8, !noalias !18976
  %i.m = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %i.k, ptr %i.m, align 8, !noalias !18976
  %i.n = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !18978)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !18979)
  %i.o = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  br label %bb.d

bb.d:                                             ; preds = %bb.e, %bb.c
  %.val20.i.i.i.i.i.i.i.i = phi i64 [ %i.t, %bb.e ], [ 0, %bb.c ] ; 4 uses
  %i.p = getelementptr inbounds nuw [32 x i8], ptr %1, i64 %.val20.i.i.i.i.i.i.i.i ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !18980)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.4.i.i.i.i.i.i.i.i.i)
  call void @llvm.experimental.noalias.scope.decl(metadata !18981)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !18982
  %i.q = load i64, ptr %i.p, align 8, !range !92, !alias.scope !18983, !noalias !18984, !noundef !23 ; 2 uses
  %switch.i.i.i.i.i.i.i.i.i = icmp samesign ult i64 %i.q, 8
  br i1 %switch.i.i.i.i.i.i.i.i.i, label %bb.e, label %"_ZN17meilisearch_types8settings8settings28_$u7b$$u7b$closure$u7d$$u7d$17h5e713c9ddcea0052E.exit.sink.split.i.i.i.i.i.i.i.i.i"

"_ZN17meilisearch_types8settings8settings28_$u7b$$u7b$closure$u7d$$u7d$17h5e713c9ddcea0052E.exit.sink.split.i.i.i.i.i.i.i.i.i": ; preds = %bb.d
  %i.r = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  invoke void @"_ZN60_$LT$alloc..string..String$u20$as$u20$core..clone..Clone$GT$5clone17h123bb51dd192bfa5E"(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.o, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.r, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1178)
          to label %.noexc.i.i.i.i.i.i.i.i unwind label %.body.i.i.i, !noalias !18985

.noexc.i.i.i.i.i.i.i.i:                           ; preds = %"_ZN17meilisearch_types8settings8settings28_$u7b$$u7b$closure$u7d$$u7d$17h5e713c9ddcea0052E.exit.sink.split.i.i.i.i.i.i.i.i.i"
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.4.i.i.i.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(24) %i.o, i64 24, i1 false), !noalias !18986
  br label %bb.e

bb.e:                                             ; preds = %.noexc.i.i.i.i.i.i.i.i, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !18982
  %i.s = getelementptr inbounds nuw [32 x i8], ptr %i.k, i64 %.val20.i.i.i.i.i.i.i.i ; 2 uses
  store i64 %i.q, ptr %i.s, align 8, !noalias !18987
  %.sroa.43.0..sroa_idx.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.43.0..sroa_idx.i.i.i.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.4.i.i.i.i.i.i.i.i.i, i64 24, i1 false), !noalias !18988
  %i.t = add i64 %.val20.i.i.i.i.i.i.i.i, 1       ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.4.i.i.i.i.i.i.i.i.i)
  %i.u = icmp eq i64 %i.t, %i.f
  br i1 %i.u, label %"_ZN95_$LT$alloc..vec..Vec$LT$T$GT$$u20$as$u20$core..iter..traits..collect..FromIterator$LT$T$GT$$GT$9from_iter17h9faa31cfb4d6ad76E.exit", label %bb.d

.body.i.i.i:                                      ; preds = %"_ZN17meilisearch_types8settings8settings28_$u7b$$u7b$closure$u7d$$u7d$17h5e713c9ddcea0052E.exit.sink.split.i.i.i.i.i.i.i.i.i"
  %i.v = landingpad { ptr, i32 }
          cleanup
  store i64 %.val20.i.i.i.i.i.i.i.i, ptr %i.n, align 8, !alias.scope !18989, !noalias !18990
  call fastcc void @"_ZN4core3ptr88drop_in_place$LT$alloc..vec..Vec$LT$meilisearch_types..settings..RankingRuleView$GT$$GT$17h699bf37b4105bcc0E"(ptr noalias noundef align 8 dereferenceable(24) %i.b) #55, !noalias !18976
  resume { ptr, i32 } %i.v

"_ZN95_$LT$alloc..vec..Vec$LT$T$GT$$u20$as$u20$core..iter..traits..collect..FromIterator$LT$T$GT$$GT$9from_iter17h9faa31cfb4d6ad76E.exit": ; preds = %bb.e, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17haf896c3203a17879E.exit.i.i.thread.i.i.i"
  %i.w = phi ptr [ %i.j, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17haf896c3203a17879E.exit.i.i.thread.i.i.i" ], [ %i.n, %bb.e ]
  %storemerge.i.i.i.i.i.i.i = phi i64 [ 0, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17haf896c3203a17879E.exit.i.i.thread.i.i.i" ], [ %i.f, %bb.e ]
  store i64 %storemerge.i.i.i.i.i.i.i, ptr %i.w, align 8, !alias.scope !18989, !noalias !18990
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !18976
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_ZN4core4iter6traits8iterator8Iterator7collect17hb54f208b3e986fb4E(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(64) %1) unnamed_addr #0 personality ptr @rust_eh_personality !guid !19199 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = alloca [64 x i8], align 8                ; 13 uses
  %i.c = alloca [8 x i8], align 8                 ; 3 uses
  %i.d = alloca [64 x i8], align 8                ; 12 uses
  %i.e = alloca [24 x i8], align 8                ; 11 uses
  %i.f = alloca [24 x i8], align 8                ; 10 uses
  %.sroa.0.0.copyload = load i64, ptr %1, align 8 ; 7 uses
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.4.0.copyload = load i64, ptr %.sroa.4.0..sroa_idx, align 8 ; 7 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.5.0.copyload = load ptr, ptr %.sroa.5.0..sroa_idx, align 8 ; 6 uses
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.sroa.6.0.copyload = load ptr, ptr %.sroa.6.0..sroa_idx, align 8 ; 2 uses
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 32
  %.sroa.7.0.copyload = load ptr, ptr %.sroa.7.0..sroa_idx, align 8 ; 2 uses
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 40
  %.sroa.8.0.copyload = load i64, ptr %.sroa.8.0..sroa_idx, align 8
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 48
  %.sroa.9.0.copyload = load i16, ptr %.sroa.9.0..sroa_idx, align 8 ; 2 uses
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 50
  %.sroa.11.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 56
  %.sroa.11.0.copyload = load i64, ptr %.sroa.11.0..sroa_idx, align 8 ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !19200)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !19201
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !19202
  %i.g = icmp eq i64 %.sroa.11.0.copyload, 0
  br i1 %i.g, label %.thread.i.i.i.i.i, label %bb.b

.thread.i.i.i.i.i:                                ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !19202
  br label %"_ZN9hashbrown3raw16RawIter$LT$T$GT$13drop_elements17h5cdee60b3bed5fffE.exit.i.i.i.i.i.i.i.i.i.i"

bb.b:                                             ; preds = %bb.a
  %.not13.i.i.i.i.i.i.i.i.i = icmp eq i16 %.sroa.9.0.copyload, 0
  br i1 %.not13.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i, label %"_ZN109_$LT$std..collections..hash..map..IntoIter$LT$K$C$V$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hcf8ebb4bd37c0271E.exit.i.i.i.i.i.i"

.lr.ph.i.i.i.i.i.i.i.i.i:                         ; preds = %bb.b, %.lr.ph.i.i.i.i.i.i.i.i.i
  %i.h = phi ptr [ %i.l, %.lr.ph.i.i.i.i.i.i.i.i.i ], [ %.sroa.7.0.copyload, %bb.b ] ; 2 uses
  %i.i = phi ptr [ %i.k, %.lr.ph.i.i.i.i.i.i.i.i.i ], [ %.sroa.6.0.copyload, %bb.b ]
  %.val11.i.i.i.i.i.i.i.i.i = load <16 x i8>, ptr %i.h, align 16, !noalias !19203
  %i.j = icmp sgt <16 x i8> %.val11.i.i.i.i.i.i.i.i.i, splat (i8 -1)
  %i.k = getelementptr inbounds i8, ptr %i.i, i64 -512 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.h, i64 16 ; 2 uses
  %.cast.i.i.i.i.i.i.i.i.i = bitcast <16 x i1> %i.j to i16 ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i = icmp eq i16 %.cast.i.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i, label %"_ZN109_$LT$std..collections..hash..map..IntoIter$LT$K$C$V$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hcf8ebb4bd37c0271E.exit.i.i.i.i.i.i"

"_ZN109_$LT$std..collections..hash..map..IntoIter$LT$K$C$V$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hcf8ebb4bd37c0271E.exit.i.i.i.i.i.i": ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i, %bb.b
  %.sroa.13.0.i.i.i = phi ptr [ %.sroa.7.0.copyload, %bb.b ], [ %i.l, %.lr.ph.i.i.i.i.i.i.i.i.i ] ; 4 uses
  %.sroa.10.0.i.i.i = phi ptr [ %.sroa.6.0.copyload, %bb.b ], [ %i.k, %.lr.ph.i.i.i.i.i.i.i.i.i ] ; 5 uses
  %.lcssa.i.i.i.i.i.i.i.i.i = phi i16 [ %.sroa.9.0.copyload, %bb.b ], [ %.cast.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i ] ; 3 uses
  %i.m = add i16 %.lcssa.i.i.i.i.i.i.i.i.i, -1
  %i.n = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i.i.i.i.i.i.i.i.i, i1 true)
  %i.o = zext nneg i16 %i.n to i64
  %i.p = and i16 %i.m, %.lcssa.i.i.i.i.i.i.i.i.i  ; 4 uses
  %i.q = sub nsw i64 0, %i.o
  %i.r = getelementptr inbounds [32 x i8], ptr %.sroa.10.0.i.i.i, i64 %i.q ; 4 uses
  %i.s = add i64 %.sroa.11.0.copyload, -1         ; 8 uses
  %i.t = getelementptr inbounds i8, ptr %i.r, i64 -32
  %.sroa.0.0.copyload1.i.i.i.i.i.i = load i64, ptr %i.t, align 8, !noalias !19204 ; 4 uses
  %.not.i.i.i.i.i.i = icmp eq i64 %.sroa.0.0.copyload1.i.i.i.i.i.i, -9223372036854775808
  br i1 %.not.i.i.i.i.i.i, label %bb.c, label %bb.h

bb.c:                                             ; preds = %"_ZN109_$LT$std..collections..hash..map..IntoIter$LT$K$C$V$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hcf8ebb4bd37c0271E.exit.i.i.i.i.i.i"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !19202
  %i.u = icmp eq i64 %i.s, 0
  br i1 %i.u, label %"_ZN9hashbrown3raw16RawIter$LT$T$GT$13drop_elements17h5cdee60b3bed5fffE.exit.i.i.i.i.i.i.i.i.i.i", label %.preheader.i.i.i.i.i.i.i.i.i.i.i

.preheader.i.i.i.i.i.i.i.i.i.i.i:                 ; preds = %bb.c, %"_ZN4core3ptr102drop_in_place$LT$$LP$alloc..string..String$C$milli..search..facet..facet_distribution..OrderBy$RP$$GT$17h76d7ec06363a1eaeE.exit.i.i.i.i.i.i.i.i.i.i.i"
  %.lcssa14.i.i.i.i.i.i.i.i.i.i.i = phi ptr [ %.lcssa13.i.i.i.i.i.i.i.i.i.i.i, %"_ZN4core3ptr102drop_in_place$LT$$LP$alloc..string..String$C$milli..search..facet..facet_distribution..OrderBy$RP$$GT$17h76d7ec06363a1eaeE.exit.i.i.i.i.i.i.i.i.i.i.i" ], [ %.sroa.13.0.i.i.i, %bb.c ] ; 2 uses
  %i.v = phi i64 [ %i.ai, %"_ZN4core3ptr102drop_in_place$LT$$LP$alloc..string..String$C$milli..search..facet..facet_distribution..OrderBy$RP$$GT$17h76d7ec06363a1eaeE.exit.i.i.i.i.i.i.i.i.i.i.i" ], [ %i.s, %bb.c ]
  %.lcssa710.i.i.i.i.i.i.i.i.i.i.i = phi ptr [ %.lcssa79.i.i.i.i.i.i.i.i.i.i.i, %"_ZN4core3ptr102drop_in_place$LT$$LP$alloc..string..String$C$milli..search..facet..facet_distribution..OrderBy$RP$$GT$17h76d7ec06363a1eaeE.exit.i.i.i.i.i.i.i.i.i.i.i" ], [ %.sroa.10.0.i.i.i, %bb.c ] ; 2 uses
  %i.w = phi i16 [ %i.af, %"_ZN4core3ptr102drop_in_place$LT$$LP$alloc..string..String$C$milli..search..facet..facet_distribution..OrderBy$RP$$GT$17h76d7ec06363a1eaeE.exit.i.i.i.i.i.i.i.i.i.i.i" ], [ %i.p, %bb.c ] ; 2 uses
  %.not13.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq i16 %i.w, 0
  br i1 %.not13.i.i.i.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i, label %"_ZN9hashbrown3raw21RawIterRange$LT$T$GT$9next_impl17haf0036b21ae44685E.exit.i.i.i.i.i.i.i.i.i.i.i"

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i:                   ; preds = %.preheader.i.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i
  %i.x = phi ptr [ %i.ab, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i ], [ %.lcssa14.i.i.i.i.i.i.i.i.i.i.i, %.preheader.i.i.i.i.i.i.i.i.i.i.i ] ; 2 uses
  %i.y = phi ptr [ %i.aa, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i ], [ %.lcssa710.i.i.i.i.i.i.i.i.i.i.i, %.preheader.i.i.i.i.i.i.i.i.i.i.i ]
  %.val11.i.i.i.i.i.i.i.i.i.i.i.i = load <16 x i8>, ptr %i.x, align 16, !noalias !19205
  %i.z = icmp sgt <16 x i8> %.val11.i.i.i.i.i.i.i.i.i.i.i.i, splat (i8 -1)
  %i.aa = getelementptr inbounds i8, ptr %i.y, i64 -512 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.x, i64 16 ; 2 uses
  %.cast.i.i.i.i.i.i.i.i.i.i.i.i = bitcast <16 x i1> %i.z to i16 ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq i16 %.cast.i.i.i.i.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i, label %"_ZN9hashbrown3raw21RawIterRange$LT$T$GT$9next_impl17haf0036b21ae44685E.exit.i.i.i.i.i.i.i.i.i.i.i"

"_ZN9hashbrown3raw21RawIterRange$LT$T$GT$9next_impl17haf0036b21ae44685E.exit.i.i.i.i.i.i.i.i.i.i.i": ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i, %.preheader.i.i.i.i.i.i.i.i.i.i.i
  %.lcssa13.i.i.i.i.i.i.i.i.i.i.i = phi ptr [ %.lcssa14.i.i.i.i.i.i.i.i.i.i.i, %.preheader.i.i.i.i.i.i.i.i.i.i.i ], [ %i.ab, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i ]
  %.lcssa79.i.i.i.i.i.i.i.i.i.i.i = phi ptr [ %.lcssa710.i.i.i.i.i.i.i.i.i.i.i, %.preheader.i.i.i.i.i.i.i.i.i.i.i ], [ %i.aa, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i ] ; 2 uses
  %.lcssa.i.i.i.i.i.i.i.i.i.i.i.i = phi i16 [ %i.w, %.preheader.i.i.i.i.i.i.i.i.i.i.i ], [ %.cast.i.i.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i ] ; 3 uses
  %i.ac = add i16 %.lcssa.i.i.i.i.i.i.i.i.i.i.i.i, -1
  %i.ad = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i.i.i.i.i.i.i.i.i.i.i.i, i1 true)
  %i.ae = zext nneg i16 %i.ad to i64
  %i.af = and i16 %i.ac, %.lcssa.i.i.i.i.i.i.i.i.i.i.i.i
  %i.ag = sub nsw i64 0, %i.ae
  %i.ah = getelementptr inbounds [32 x i8], ptr %.lcssa79.i.i.i.i.i.i.i.i.i.i.i, i64 %i.ag ; 2 uses
  %i.ai = add i64 %i.v, -1                        ; 2 uses
  %i.aj = getelementptr inbounds i8, ptr %i.ah, i64 -32
  %.val.i.i.i.i.i.i.i.i.i.i.i = load i64, ptr %i.aj, align 8, !alias.scope !19206, !noalias !19207 ; 2 uses
  %i.ak = icmp eq i64 %.val.i.i.i.i.i.i.i.i.i.i.i, 0
  br i1 %i.ak, label %"_ZN4core3ptr102drop_in_place$LT$$LP$alloc..string..String$C$milli..search..facet..facet_distribution..OrderBy$RP$$GT$17h76d7ec06363a1eaeE.exit.i.i.i.i.i.i.i.i.i.i.i", label %bb.d

bb.d:                                             ; preds = %"_ZN9hashbrown3raw21RawIterRange$LT$T$GT$9next_impl17haf0036b21ae44685E.exit.i.i.i.i.i.i.i.i.i.i.i"
  %i.al = getelementptr i8, ptr %i.ah, i64 -24
  %.val6.i.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.al, align 8, !noalias !19207, !nonnull !23, !noundef !23
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val6.i.i.i.i.i.i.i.i.i.i.i, i64 noundef %.val.i.i.i.i.i.i.i.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #52, !noalias !19208
  br label %"_ZN4core3ptr102drop_in_place$LT$$LP$alloc..string..String$C$milli..search..facet..facet_distribution..OrderBy$RP$$GT$17h76d7ec06363a1eaeE.exit.i.i.i.i.i.i.i.i.i.i.i"

"_ZN4core3ptr102drop_in_place$LT$$LP$alloc..string..String$C$milli..search..facet..facet_distribution..OrderBy$RP$$GT$17h76d7ec06363a1eaeE.exit.i.i.i.i.i.i.i.i.i.i.i": ; preds = %bb.d, %"_ZN9hashbrown3raw21RawIterRange$LT$T$GT$9next_impl17haf0036b21ae44685E.exit.i.i.i.i.i.i.i.i.i.i.i"
  %.old5.i.i.i.i.i.i.i.i.i.i.i = icmp eq i64 %i.ai, 0
  br i1 %.old5.i.i.i.i.i.i.i.i.i.i.i, label %"_ZN9hashbrown3raw16RawIter$LT$T$GT$13drop_elements17h5cdee60b3bed5fffE.exit.i.i.i.i.i.i.i.i.i.i", label %.preheader.i.i.i.i.i.i.i.i.i.i.i

"_ZN9hashbrown3raw16RawIter$LT$T$GT$13drop_elements17h5cdee60b3bed5fffE.exit.i.i.i.i.i.i.i.i.i.i": ; preds = %"_ZN4core3ptr102drop_in_place$LT$$LP$alloc..string..String$C$milli..search..facet..facet_distribution..OrderBy$RP$$GT$17h76d7ec06363a1eaeE.exit.i.i.i.i.i.i.i.i.i.i.i", %bb.c, %.thread.i.i.i.i.i
  %.not.i.i.i.i.i.i.i.i.i.i = icmp eq i64 %.sroa.0.0.copyload, 0
  %i.am = icmp eq i64 %.sroa.4.0.copyload, 0
  %or.cond.i.i.i = select i1 %.not.i.i.i.i.i.i.i.i.i.i, i1 true, i1 %i.am
  br i1 %or.cond.i.i.i, label %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hf49cdb1a66ae8c55E.exit.i.i.thread", label %bb.e

bb.e:                                             ; preds = %"_ZN9hashbrown3raw16RawIter$LT$T$GT$13drop_elements17h5cdee60b3bed5fffE.exit.i.i.i.i.i.i.i.i.i.i"
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.5.0.copyload) ]
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.5.0.copyload, i64 noundef %.sroa.4.0.copyload, i64 noundef range(i64 1, -9223372036854775807) %.sroa.0.0.copyload) #52, !noalias !19209
  br label %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hf49cdb1a66ae8c55E.exit.i.i.thread"

bb.f:                                             ; preds = %bb.i
  %i.an = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ao = icmp eq i64 %.sroa.0.0.copyload1.i.i.i.i.i.i, 0
  br i1 %i.ao, label %bb.q, label %bb.g

bb.g:                                             ; preds = %bb.f
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.7.sroa.0.0.copyload.i.i.i.i.i) ]
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.7.sroa.0.0.copyload.i.i.i.i.i, i64 noundef %.sroa.0.0.copyload1.i.i.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #52, !noalias !19210
  br label %bb.q

bb.h:                                             ; preds = %"_ZN109_$LT$std..collections..hash..map..IntoIter$LT$K$C$V$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hcf8ebb4bd37c0271E.exit.i.i.i.i.i.i"
  %.sroa.6.sroa.4.0..sroa.6.0..sroa_idx2.sroa_idx.i.i.i.i.i.i = getelementptr inbounds i8, ptr %i.r, i64 -8
  %.sroa.6.sroa.4.0.copyload.i.i.i.i.i.i = load i8, ptr %.sroa.6.sroa.4.0..sroa.6.0..sroa_idx2.sroa_idx.i.i.i.i.i.i, align 8, !noalias !19204
  %.sroa.6.0..sroa_idx2.i.i.i.i.i.i = getelementptr inbounds i8, ptr %i.r, i64 -24
  %.sroa.7.sroa.0.0.copyload.i.i.i.i.i = load ptr, ptr %.sroa.6.0..sroa_idx2.i.i.i.i.i.i, align 8, !noalias !19211 ; 3 uses
  %.sroa.7.sroa.5.0..sroa.6.0..sroa_idx2.i.sroa_idx.i.i.i.i.i = getelementptr inbounds i8, ptr %i.r, i64 -16
  %.sroa.7.sroa.5.0.copyload.i.i.i.i.i = load i64, ptr %.sroa.7.sroa.5.0..sroa.6.0..sroa_idx2.i.sroa_idx.i.i.i.i.i, align 8, !noalias !19211
  %.sroa.0.0.i.i.i.i.i.i = tail call noundef i64 @llvm.umax.i64(i64 %.sroa.11.0.copyload, i64 4) ; 2 uses
  %i.ap = shl i64 %.sroa.0.0.i.i.i.i.i.i, 5       ; 3 uses
  %i.aq = icmp ugt i64 %i.s, 576460752303423486
  %i.ar = icmp ugt i64 %i.ap, 9223372036854775800
  %or.cond.i.i.i.i.i.i.i.i = or i1 %i.aq, %i.ar
  br i1 %or.cond.i.i.i.i.i.i.i.i, label %bb.i, label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h2c5e185936086779E.exit.i.i.i.i.i.i.i", !prof !32

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h2c5e185936086779E.exit.i.i.i.i.i.i.i": ; preds = %bb.h
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #52, !noalias !19212
  %i.as = tail call noundef align 8 ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef %i.ap, i64 noundef range(i64 1, 9) 8) #52, !noalias !19212 ; 7 uses
  %i.at = icmp eq ptr %i.as, null
  br i1 %i.at, label %bb.i, label %bb.j

bb.i:                                             ; preds = %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h2c5e185936086779E.exit.i.i.i.i.i.i.i", %bb.h
  %.sroa.4.0.ph.i.i.i.i.i.i = phi i64 [ 8, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h2c5e185936086779E.exit.i.i.i.i.i.i.i" ], [ 0, %bb.h ]
  invoke void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef %.sroa.4.0.ph.i.i.i.i.i.i, i64 %i.ap, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @1063) #57
          to label %.noexc.i.i.i.i.i unwind label %bb.f, !noalias !19202

.noexc.i.i.i.i.i:                                 ; preds = %bb.i
  unreachable

bb.j:                                             ; preds = %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h2c5e185936086779E.exit.i.i.i.i.i.i.i"
  store i64 %.sroa.0.0.copyload1.i.i.i.i.i.i, ptr %i.as, align 8, !noalias !19202
  %.sroa.48.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.as, i64 8
  store ptr %.sroa.7.sroa.0.0.copyload.i.i.i.i.i, ptr %.sroa.48.0..sroa_idx.i.i.i.i.i, align 8, !noalias !19202
  %.sroa.59.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.as, i64 16
  store i64 %.sroa.7.sroa.5.0.copyload.i.i.i.i.i, ptr %.sroa.59.0..sroa_idx.i.i.i.i.i, align 8, !noalias !19202
  %.sroa.6.0..sroa_idx10.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.as, i64 24
  store i8 %.sroa.6.sroa.4.0.copyload.i.i.i.i.i.i, ptr %.sroa.6.0..sroa_idx10.i.i.i.i.i, align 8, !noalias !19202
  store i64 %.sroa.0.0.i.i.i.i.i.i, ptr %i.e, align 8, !noalias !19202
  %.sroa.4.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 2 uses
  store ptr %i.as, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i, align 8, !noalias !19202
  %.sroa.6.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 16 ; 2 uses
  store i64 1, ptr %.sroa.6.0..sroa_idx.i.i.i.i.i, align 8, !noalias !19202
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !19202
  store i64 %.sroa.0.0.copyload, ptr %i.d, align 8, !noalias !19213
  %.sroa.6.0..sroa_idx3.i.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store i64 %.sroa.4.0.copyload, ptr %.sroa.6.0..sroa_idx3.i.i.i, align 8, !noalias !19213
  %.sroa.8.0..sroa_idx6.i.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  store ptr %.sroa.5.0.copyload, ptr %.sroa.8.0..sroa_idx6.i.i.i, align 8, !noalias !19213
  %.sroa.10.0..sroa_idx9.i.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 24 ; 2 uses
  store ptr %.sroa.10.0.i.i.i, ptr %.sroa.10.0..sroa_idx9.i.i.i, align 8, !noalias !19213
  %.sroa.13.0..sroa_idx11.i.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 32 ; 2 uses
  store ptr %.sroa.13.0.i.i.i, ptr %.sroa.13.0..sroa_idx11.i.i.i, align 8, !noalias !19213
  %.sroa.17.0..sroa_idx13.i.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 40
  store i64 %.sroa.8.0.copyload, ptr %.sroa.17.0..sroa_idx13.i.i.i, align 8, !noalias !19213
  %.sroa.1715.0..sroa_idx16.i.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 48 ; 2 uses
  store i16 %i.p, ptr %.sroa.1715.0..sroa_idx16.i.i.i, align 8, !noalias !19213
  %.sroa.19.0..sroa_idx18.i.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 50
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(6) %.sroa.19.0..sroa_idx18.i.i.i, ptr noundef nonnull align 2 dereferenceable(6) %.sroa.10.0..sroa_idx, i64 6, i1 false)
  %.sroa.1919.0..sroa_idx20.i.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 56 ; 2 uses
  store i64 %i.s, ptr %.sroa.1919.0..sroa_idx20.i.i.i, align 8, !noalias !19213
  tail call void @llvm.experimental.noalias.scope.decl(metadata !19214)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !19215)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !19216)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !19217)
  %i.au = icmp eq i64 %i.s, 0
  br i1 %i.au, label %"_ZN9hashbrown3raw16RawIter$LT$T$GT$13drop_elements17h5cdee60b3bed5fffE.exit.i.i.i.i.i.i.i.i.i.i.i.i", label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %bb.j, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h0bf28793cd890ca6E.exit.i.i.i.i.i.i.i"
  %i.av = phi ptr [ %i.ch, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h0bf28793cd890ca6E.exit.i.i.i.i.i.i.i" ], [ %i.as, %bb.j ]
  %i.aw = phi i64 [ %i.cj, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h0bf28793cd890ca6E.exit.i.i.i.i.i.i.i" ], [ 1, %bb.j ] ; 5 uses
  %.lcssa1629.i.i.i.i.i.i.i = phi ptr [ %.promoted12.i.i.i.i.i.i.i.i.i.i.i.i.i, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h0bf28793cd890ca6E.exit.i.i.i.i.i.i.i" ], [ %.sroa.13.0.i.i.i, %bb.j ] ; 2 uses
  %.lcssa1726.i.i.i.i.i.i.i = phi ptr [ %.promoted8.i.i.i.i.i.i.i.i.i.i.i.i.i, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h0bf28793cd890ca6E.exit.i.i.i.i.i.i.i" ], [ %.sroa.10.0.i.i.i, %bb.j ] ; 2 uses
  %i.ax = phi i16 [ %i.bg, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h0bf28793cd890ca6E.exit.i.i.i.i.i.i.i" ], [ %i.p, %bb.j ] ; 2 uses
  %.val2021.i.i.i.i.i.i.i = phi i64 [ %i.bj, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h0bf28793cd890ca6E.exit.i.i.i.i.i.i.i" ], [ %i.s, %bb.j ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !19218)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !19219)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !19220)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !19221)
  %.not13.i.i.i.i.i.i.i.i.i.i.i = icmp eq i16 %i.ax, 0
  br i1 %.not13.i.i.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i, label %"_ZN109_$LT$std..collections..hash..map..IntoIter$LT$K$C$V$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hcf8ebb4bd37c0271E.exit.i.i.i.i.i.i.i.i"

._crit_edge.i.i.i.i.i.i.i.i.i.i.i:                ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i
  store ptr %i.bc, ptr %.sroa.13.0..sroa_idx11.i.i.i, align 8, !alias.scope !19222, !noalias !19202
  store ptr %i.bb, ptr %.sroa.10.0..sroa_idx9.i.i.i, align 8, !alias.scope !19222, !noalias !19202
  br label %"_ZN109_$LT$std..collections..hash..map..IntoIter$LT$K$C$V$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hcf8ebb4bd37c0271E.exit.i.i.i.i.i.i.i.i"

.lr.ph.i.i.i.i.i.i.i.i.i.i.i:                     ; preds = %.lr.ph.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i
  %i.ay = phi ptr [ %i.bc, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i ], [ %.lcssa1629.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i ] ; 2 uses
  %i.az = phi ptr [ %i.bb, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i ], [ %.lcssa1726.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i ]
  %.val11.i.i.i.i.i.i.i.i.i.i.i = load <16 x i8>, ptr %i.ay, align 16, !noalias !19223
  %i.ba = icmp sgt <16 x i8> %.val11.i.i.i.i.i.i.i.i.i.i.i, splat (i8 -1)
  %i.bb = getelementptr inbounds i8, ptr %i.az, i64 -512 ; 3 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %i.ay, i64 16 ; 3 uses
  %.cast.i.i.i.i.i.i.i.i.i.i.i = bitcast <16 x i1> %i.ba to i16 ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i.i.i = icmp eq i16 %.cast.i.i.i.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i.i.i.i.i.i

"_ZN109_$LT$std..collections..hash..map..IntoIter$LT$K$C$V$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hcf8ebb4bd37c0271E.exit.i.i.i.i.i.i.i.i": ; preds = %._crit_edge.i.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i
  %.promoted12.i.i.i.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.bc, %._crit_edge.i.i.i.i.i.i.i.i.i.i.i ], [ %.lcssa1629.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i ] ; 2 uses
  %.promoted8.i.i.i.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.bb, %._crit_edge.i.i.i.i.i.i.i.i.i.i.i ], [ %.lcssa1726.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i ] ; 3 uses
  %.lcssa.i.i.i.i.i.i.i.i.i.i.i = phi i16 [ %.cast.i.i.i.i.i.i.i.i.i.i.i, %._crit_edge.i.i.i.i.i.i.i.i.i.i.i ], [ %i.ax, %.lr.ph.i.i.i.i.i.i.i ] ; 3 uses
  %i.bd = add i16 %.lcssa.i.i.i.i.i.i.i.i.i.i.i, -1
  %i.be = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i.i.i.i.i.i.i.i.i.i.i, i1 true)
  %i.bf = zext nneg i16 %i.be to i64
  %i.bg = and i16 %i.bd, %.lcssa.i.i.i.i.i.i.i.i.i.i.i ; 3 uses
  %i.bh = sub nsw i64 0, %i.bf
  %i.bi = getelementptr inbounds [32 x i8], ptr %.promoted8.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 %i.bh ; 4 uses
  %i.bj = add nsw i64 %.val2021.i.i.i.i.i.i.i, -1 ; 6 uses
  %i.bk = getelementptr inbounds i8, ptr %i.bi, i64 -32
  %.sroa.0.0.copyload1.i.i.i.i.i.i.i.i = load i64, ptr %i.bk, align 8, !noalias !19224 ; 4 uses
  %.not.i.i.i.i.i.i.i.i = icmp eq i64 %.sroa.0.0.copyload1.i.i.i.i.i.i.i.i, -9223372036854775808
  br i1 %.not.i.i.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i.i, label %bb.k

"_ZN4core3ptr106drop_in_place$LT$$LP$alloc..string..String$C$meilisearch_types..facet_values_sort..FacetValuesSort$RP$$GT$17h6f82c279537632b2E.exit.i.i.i.i.i.i.i": ; preds = %bb.o, %bb.n
  call fastcc void @"_ZN4core3ptr246drop_in_place$LT$core..iter..adapters..map..Map$LT$std..collections..hash..map..IntoIter$LT$alloc..string..String$C$milli..search..facet..facet_distribution..OrderBy$GT$$C$meilisearch_types..settings..settings..$u7b$$u7b$closure$u7d$$u7d$$GT$$GT$17h9034fe267712364dE"(ptr noalias noundef nonnull align 8 dereferenceable(64) %i.d) #55, !noalias !19225
  call fastcc void @"_ZN4core3ptr129drop_in_place$LT$alloc..vec..Vec$LT$$LP$alloc..string..String$C$meilisearch_types..facet_values_sort..FacetValuesSort$RP$$GT$$GT$17h56ff2a2b99a69defE"(ptr noalias noundef align 8 dereferenceable(24) %i.e) #55, !noalias !19202
  br label %common.resume.i

bb.k:                                             ; preds = %"_ZN109_$LT$std..collections..hash..map..IntoIter$LT$K$C$V$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hcf8ebb4bd37c0271E.exit.i.i.i.i.i.i.i.i"
  %.sroa.6.sroa.4.0..sroa.6.0..sroa_idx2.sroa_idx.i.i.i.i.i.i.i.i = getelementptr inbounds i8, ptr %i.bi, i64 -8
  %.sroa.6.sroa.4.0.copyload.i.i.i.i.i.i.i.i = load i8, ptr %.sroa.6.sroa.4.0..sroa.6.0..sroa_idx2.sroa_idx.i.i.i.i.i.i.i.i, align 8, !noalias !19224
  %.sroa.6.0..sroa_idx2.i.i.i.i.i.i.i.i = getelementptr inbounds i8, ptr %i.bi, i64 -24
  %.sroa.7.sroa.0.0.copyload.i.i.i.i.i.i.i = load ptr, ptr %.sroa.6.0..sroa_idx2.i.i.i.i.i.i.i.i, align 8, !noalias !19226 ; 3 uses
  %.sroa.7.sroa.5.0..sroa.6.0..sroa_idx2.i.sroa_idx.i.i.i.i.i.i.i = getelementptr inbounds i8, ptr %i.bi, i64 -16
  %.sroa.7.sroa.5.0.copyload.i.i.i.i.i.i.i = load i64, ptr %.sroa.7.sroa.5.0..sroa.6.0..sroa_idx2.i.sroa_idx.i.i.i.i.i.i.i, align 8, !noalias !19226
  %i.bl = icmp samesign ult i64 %i.aw, 288230376151711744
  tail call void @llvm.assume(i1 %i.bl)
  %i.bm = load i64, ptr %i.e, align 8, !range !24, !alias.scope !19227, !noalias !19202, !noundef !23
  %i.bn = icmp eq i64 %i.aw, %i.bm
  br i1 %i.bn, label %bb.p, label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h0bf28793cd890ca6E.exit.i.i.i.i.i.i.i"

._crit_edge.i.i.i.i.i.i.i:                        ; preds = %"_ZN109_$LT$std..collections..hash..map..IntoIter$LT$K$C$V$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hcf8ebb4bd37c0271E.exit.i.i.i.i.i.i.i.i"
  %i.bo = icmp eq i64 %i.bj, 0
  br i1 %i.bo, label %"_ZN9hashbrown3raw16RawIter$LT$T$GT$13drop_elements17h5cdee60b3bed5fffE.exit.i.i.i.i.i.i.i.i.i.i.i.i", label %.preheader.i.i.i.i.i.i.i.i.i.i.i.i.i

.preheader.i.i.i.i.i.i.i.i.i.i.i.i.i:             ; preds = %._crit_edge.i.i.i.i.i.i.i, %"_ZN4core3ptr102drop_in_place$LT$$LP$alloc..string..String$C$milli..search..facet..facet_distribution..OrderBy$RP$$GT$17h76d7ec06363a1eaeE.exit.i.i.i.i.i.i.i.i.i.i.i.i.i"
  %.lcssa14.i.i.i.i.i.i.i.i.i.i.i.i.i = phi ptr [ %.lcssa13.i.i.i.i.i.i.i.i.i.i.i.i.i, %"_ZN4core3ptr102drop_in_place$LT$$LP$alloc..string..String$C$milli..search..facet..facet_distribution..OrderBy$RP$$GT$17h76d7ec06363a1eaeE.exit.i.i.i.i.i.i.i.i.i.i.i.i.i" ], [ %.promoted12.i.i.i.i.i.i.i.i.i.i.i.i.i, %._crit_edge.i.i.i.i.i.i.i ] ; 2 uses
  %i.bp = phi i64 [ %i.cc, %"_ZN4core3ptr102drop_in_place$LT$$LP$alloc..string..String$C$milli..search..facet..facet_distribution..OrderBy$RP$$GT$17h76d7ec06363a1eaeE.exit.i.i.i.i.i.i.i.i.i.i.i.i.i" ], [ %i.bj, %._crit_edge.i.i.i.i.i.i.i ]
  %.lcssa710.i.i.i.i.i.i.i.i.i.i.i.i.i = phi ptr [ %.lcssa79.i.i.i.i.i.i.i.i.i.i.i.i.i, %"_ZN4core3ptr102drop_in_place$LT$$LP$alloc..string..String$C$milli..search..facet..facet_distribution..OrderBy$RP$$GT$17h76d7ec06363a1eaeE.exit.i.i.i.i.i.i.i.i.i.i.i.i.i" ], [ %.promoted8.i.i.i.i.i.i.i.i.i.i.i.i.i, %._crit_edge.i.i.i.i.i.i.i ] ; 2 uses
  %i.bq = phi i16 [ %i.bz, %"_ZN4core3ptr102drop_in_place$LT$$LP$alloc..string..String$C$milli..search..facet..facet_distribution..OrderBy$RP$$GT$17h76d7ec06363a1eaeE.exit.i.i.i.i.i.i.i.i.i.i.i.i.i" ], [ %i.bg, %._crit_edge.i.i.i.i.i.i.i ] ; 2 uses
  %.not13.i.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq i16 %i.bq, 0
  br i1 %.not13.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %"_ZN9hashbrown3raw21RawIterRange$LT$T$GT$9next_impl17haf0036b21ae44685E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i"

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i:               ; preds = %.preheader.i.i.i.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.br = phi ptr [ %i.bv, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ %.lcssa14.i.i.i.i.i.i.i.i.i.i.i.i.i, %.preheader.i.i.i.i.i.i.i.i.i.i.i.i.i ] ; 2 uses
  %i.bs = phi ptr [ %i.bu, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ %.lcssa710.i.i.i.i.i.i.i.i.i.i.i.i.i, %.preheader.i.i.i.i.i.i.i.i.i.i.i.i.i ]
  %.val11.i.i.i.i.i.i.i.i.i.i.i.i.i.i = load <16 x i8>, ptr %i.br, align 16, !noalias !19228
  %i.bt = icmp sgt <16 x i8> %.val11.i.i.i.i.i.i.i.i.i.i.i.i.i.i, splat (i8 -1)
  %i.bu = getelementptr inbounds i8, ptr %i.bs, i64 -512 ; 2 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %i.br, i64 16 ; 2 uses
  %.cast.i.i.i.i.i.i.i.i.i.i.i.i.i.i = bitcast <16 x i1> %i.bt to i16 ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq i16 %.cast.i.i.i.i.i.i.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %"_ZN9hashbrown3raw21RawIterRange$LT$T$GT$9next_impl17haf0036b21ae44685E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i"

"_ZN9hashbrown3raw21RawIterRange$LT$T$GT$9next_impl17haf0036b21ae44685E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i": ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %.preheader.i.i.i.i.i.i.i.i.i.i.i.i.i
  %.lcssa13.i.i.i.i.i.i.i.i.i.i.i.i.i = phi ptr [ %.lcssa14.i.i.i.i.i.i.i.i.i.i.i.i.i, %.preheader.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ %i.bv, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i ]
  %.lcssa79.i.i.i.i.i.i.i.i.i.i.i.i.i = phi ptr [ %.lcssa710.i.i.i.i.i.i.i.i.i.i.i.i.i, %.preheader.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ %i.bu, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i ] ; 2 uses
  %.lcssa.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi i16 [ %i.bq, %.preheader.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ %.cast.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i ] ; 3 uses
  %i.bw = add i16 %.lcssa.i.i.i.i.i.i.i.i.i.i.i.i.i.i, -1
  %i.bx = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i1 true)
  %i.by = zext nneg i16 %i.bx to i64
  %i.bz = and i16 %i.bw, %.lcssa.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.ca = sub nsw i64 0, %i.by
  %i.cb = getelementptr inbounds [32 x i8], ptr %.lcssa79.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 %i.ca ; 2 uses
  %i.cc = add nsw i64 %i.bp, -1                   ; 2 uses
  %i.cd = getelementptr inbounds i8, ptr %i.cb, i64 -32
  %.val.i.i.i.i.i.i.i.i.i.i.i.i.i = load i64, ptr %i.cd, align 8, !alias.scope !19229, !noalias !19230 ; 2 uses
  %i.ce = icmp eq i64 %.val.i.i.i.i.i.i.i.i.i.i.i.i.i, 0
  br i1 %i.ce, label %"_ZN4core3ptr102drop_in_place$LT$$LP$alloc..string..String$C$milli..search..facet..facet_distribution..OrderBy$RP$$GT$17h76d7ec06363a1eaeE.exit.i.i.i.i.i.i.i.i.i.i.i.i.i", label %bb.l

bb.l:                                             ; preds = %"_ZN9hashbrown3raw21RawIterRange$LT$T$GT$9next_impl17haf0036b21ae44685E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i"
  %i.cf = getelementptr i8, ptr %i.cb, i64 -24
  %.val6.i.i.i.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.cf, align 8, !noalias !19230, !nonnull !23, !noundef !23
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val6.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 noundef %.val.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #52, !noalias !19231
  br label %"_ZN4core3ptr102drop_in_place$LT$$LP$alloc..string..String$C$milli..search..facet..facet_distribution..OrderBy$RP$$GT$17h76d7ec06363a1eaeE.exit.i.i.i.i.i.i.i.i.i.i.i.i.i"

"_ZN4core3ptr102drop_in_place$LT$$LP$alloc..string..String$C$milli..search..facet..facet_distribution..OrderBy$RP$$GT$17h76d7ec06363a1eaeE.exit.i.i.i.i.i.i.i.i.i.i.i.i.i": ; preds = %bb.l, %"_ZN9hashbrown3raw21RawIterRange$LT$T$GT$9next_impl17haf0036b21ae44685E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i"
  %.old5.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq i64 %i.cc, 0
  br i1 %.old5.i.i.i.i.i.i.i.i.i.i.i.i.i, label %"_ZN9hashbrown3raw16RawIter$LT$T$GT$13drop_elements17h5cdee60b3bed5fffE.exit.i.i.i.i.i.i.i.i.i.i.i.i", label %.preheader.i.i.i.i.i.i.i.i.i.i.i.i.i

"_ZN9hashbrown3raw16RawIter$LT$T$GT$13drop_elements17h5cdee60b3bed5fffE.exit.i.i.i.i.i.i.i.i.i.i.i.i": ; preds = %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h0bf28793cd890ca6E.exit.i.i.i.i.i.i.i", %"_ZN4core3ptr102drop_in_place$LT$$LP$alloc..string..String$C$milli..search..facet..facet_distribution..OrderBy$RP$$GT$17h76d7ec06363a1eaeE.exit.i.i.i.i.i.i.i.i.i.i.i.i.i", %._crit_edge.i.i.i.i.i.i.i, %bb.j
  %.not.i.i.i.i.i.i.i7.i.i.i.i.i = icmp eq i64 %.sroa.0.0.copyload, 0
  %i.cg = icmp eq i64 %.sroa.4.0.copyload, 0
  %or.cond22.i.i.i = select i1 %.not.i.i.i.i.i.i.i7.i.i.i.i.i, i1 true, i1 %i.cg
  br i1 %or.cond22.i.i.i, label %_ZN4core4iter6traits8iterator8Iterator7collect17h94207433f3d2aeb7E.exit.i, label %bb.m

bb.m:                                             ; preds = %"_ZN9hashbrown3raw16RawIter$LT$T$GT$13drop_elements17h5cdee60b3bed5fffE.exit.i.i.i.i.i.i.i.i.i.i.i.i"
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.5.0.copyload, i64 noundef %.sroa.4.0.copyload, i64 noundef range(i64 1, -9223372036854775807) %.sroa.0.0.copyload) #52, !noalias !19232
  br label %_ZN4core4iter6traits8iterator8Iterator7collect17h94207433f3d2aeb7E.exit.i

"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h0bf28793cd890ca6E.exit.i.i.i.i.i.i.i": ; preds = %"._ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h0bf28793cd890ca6E.exit.i.i_crit_edge.i.i.i.i.i", %bb.k
  %i.ch = phi ptr [ %.pre.i.i.i.i.i, %"._ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h0bf28793cd890ca6E.exit.i.i_crit_edge.i.i.i.i.i" ], [ %i.av, %bb.k ] ; 2 uses
  %i.ci = getelementptr inbounds nuw [32 x i8], ptr %i.ch, i64 %i.aw ; 4 uses
  store i64 %.sroa.0.0.copyload1.i.i.i.i.i.i.i.i, ptr %i.ci, align 8, !noalias !19233
  %.sroa.48.0..sroa_idx.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ci, i64 8
  store ptr %.sroa.7.sroa.0.0.copyload.i.i.i.i.i.i.i, ptr %.sroa.48.0..sroa_idx.i.i.i.i.i.i.i, align 8, !noalias !19233
  %.sroa.59.0..sroa_idx.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ci, i64 16
  store i64 %.sroa.7.sroa.5.0.copyload.i.i.i.i.i.i.i, ptr %.sroa.59.0..sroa_idx.i.i.i.i.i.i.i, align 8, !noalias !19233
  %.sroa.6.0..sroa_idx.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ci, i64 24
  store i8 %.sroa.6.sroa.4.0.copyload.i.i.i.i.i.i.i.i, ptr %.sroa.6.0..sroa_idx.i.i.i.i.i.i.i, align 8, !noalias !19233
  %i.cj = add nuw nsw i64 %i.aw, 1                ; 2 uses
  store i64 %i.cj, ptr %.sroa.6.0..sroa_idx.i.i.i.i.i, align 8, !alias.scope !19227, !noalias !19202
  %i.ck = icmp eq i64 %i.bj, 0
  br i1 %i.ck, label %"_ZN9hashbrown3raw16RawIter$LT$T$GT$13drop_elements17h5cdee60b3bed5fffE.exit.i.i.i.i.i.i.i.i.i.i.i.i", label %.lr.ph.i.i.i.i.i.i.i

bb.n:                                             ; preds = %bb.p
  %i.cl = landingpad { ptr, i32 }
          cleanup
  store i16 %i.bg, ptr %.sroa.1715.0..sroa_idx16.i.i.i, align 8, !alias.scope !19222, !noalias !19202
  store i64 %i.bj, ptr %.sroa.1919.0..sroa_idx20.i.i.i, align 8, !alias.scope !19234, !noalias !19202
  %i.cm = icmp eq i64 %.sroa.0.0.copyload1.i.i.i.i.i.i.i.i, 0
  br i1 %i.cm, label %"_ZN4core3ptr106drop_in_place$LT$$LP$alloc..string..String$C$meilisearch_types..facet_values_sort..FacetValuesSort$RP$$GT$17h6f82c279537632b2E.exit.i.i.i.i.i.i.i", label %bb.o

bb.o:                                             ; preds = %bb.n
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.7.sroa.0.0.copyload.i.i.i.i.i.i.i) ]
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.7.sroa.0.0.copyload.i.i.i.i.i.i.i, i64 noundef %.sroa.0.0.copyload1.i.i.i.i.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #52, !noalias !19235
  br label %"_ZN4core3ptr106drop_in_place$LT$$LP$alloc..string..String$C$meilisearch_types..facet_values_sort..FacetValuesSort$RP$$GT$17h6f82c279537632b2E.exit.i.i.i.i.i.i.i"

bb.p:                                             ; preds = %bb.k
  %i.cn = tail call i64 @llvm.uadd.sat.i64(i64 %i.bj, i64 1)
  invoke fastcc void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$7reserve21do_reserve_and_handle17h45307a5a03ebcc73E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.e, i64 noundef %i.aw, i64 noundef range(i64 1, 0) %i.cn, i64 noundef 8, i64 noundef 32)
          to label %"._ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h0bf28793cd890ca6E.exit.i.i_crit_edge.i.i.i.i.i" unwind label %bb.n, !noalias !19236

"._ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h0bf28793cd890ca6E.exit.i.i_crit_edge.i.i.i.i.i": ; preds = %bb.p
  %.pre.i.i.i.i.i = load ptr, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i, align 8, !alias.scope !19227, !noalias !19202
  br label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h0bf28793cd890ca6E.exit.i.i.i.i.i.i.i"

common.resume.i:                                  ; preds = %bb.az, %bb.ay, %.body.i.i.i, %bb.s, %"_ZN9hashbrown3raw16RawIter$LT$T$GT$13drop_elements17h5cdee60b3bed5fffE.exit.i.i.i.i.i.i.i.i.i", %"_ZN4core3ptr106drop_in_place$LT$$LP$alloc..string..String$C$meilisearch_types..facet_values_sort..FacetValuesSort$RP$$GT$17h6f82c279537632b2E.exit.i.i.i.i.i.i.i"
  %common.resume.op.i = phi { ptr, i32 } [ %i.an, %bb.s ], [ %i.cl, %"_ZN4core3ptr106drop_in_place$LT$$LP$alloc..string..String$C$meilisearch_types..facet_values_sort..FacetValuesSort$RP$$GT$17h6f82c279537632b2E.exit.i.i.i.i.i.i.i" ], [ %i.an, %"_ZN9hashbrown3raw16RawIter$LT$T$GT$13drop_elements17h5cdee60b3bed5fffE.exit.i.i.i.i.i.i.i.i.i" ], [ %.pn.i.i.i, %.body.i.i.i ], [ %lpad.thr_comm.split-lp.i, %bb.az ], [ %i.lu, %bb.ay ]
  resume { ptr, i32 } %common.resume.op.i

bb.q:                                             ; preds = %bb.g, %bb.f
  %i.co = icmp eq i64 %i.s, 0
  br i1 %i.co, label %"_ZN9hashbrown3raw16RawIter$LT$T$GT$13drop_elements17h5cdee60b3bed5fffE.exit.i.i.i.i.i.i.i.i.i", label %.preheader.i.i.i.i.i.i.i.i.i.i

.preheader.i.i.i.i.i.i.i.i.i.i:                   ; preds = %bb.q, %"_ZN4core3ptr102drop_in_place$LT$$LP$alloc..string..String$C$milli..search..facet..facet_distribution..OrderBy$RP$$GT$17h76d7ec06363a1eaeE.exit.i.i.i.i.i.i.i.i.i.i"
  %.lcssa14.i.i.i.i.i.i.i.i.i.i = phi ptr [ %.lcssa13.i.i.i.i.i.i.i.i.i.i, %"_ZN4core3ptr102drop_in_place$LT$$LP$alloc..string..String$C$milli..search..facet..facet_distribution..OrderBy$RP$$GT$17h76d7ec06363a1eaeE.exit.i.i.i.i.i.i.i.i.i.i" ], [ %.sroa.13.0.i.i.i, %bb.q ] ; 2 uses
  %i.cp = phi i64 [ %i.dc, %"_ZN4core3ptr102drop_in_place$LT$$LP$alloc..string..String$C$milli..search..facet..facet_distribution..OrderBy$RP$$GT$17h76d7ec06363a1eaeE.exit.i.i.i.i.i.i.i.i.i.i" ], [ %i.s, %bb.q ]
  %.lcssa710.i.i.i.i.i.i.i.i.i.i = phi ptr [ %.lcssa79.i.i.i.i.i.i.i.i.i.i, %"_ZN4core3ptr102drop_in_place$LT$$LP$alloc..string..String$C$milli..search..facet..facet_distribution..OrderBy$RP$$GT$17h76d7ec06363a1eaeE.exit.i.i.i.i.i.i.i.i.i.i" ], [ %.sroa.10.0.i.i.i, %bb.q ] ; 2 uses
  %i.cq = phi i16 [ %i.cz, %"_ZN4core3ptr102drop_in_place$LT$$LP$alloc..string..String$C$milli..search..facet..facet_distribution..OrderBy$RP$$GT$17h76d7ec06363a1eaeE.exit.i.i.i.i.i.i.i.i.i.i" ], [ %i.p, %bb.q ] ; 2 uses
  %.not13.i.i.i.i.i.i.i1.i.i.i.i = icmp eq i16 %i.cq, 0
  br i1 %.not13.i.i.i.i.i.i.i1.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i4.i.i.i.i, label %"_ZN9hashbrown3raw21RawIterRange$LT$T$GT$9next_impl17haf0036b21ae44685E.exit.i.i.i.i.i.i.i.i.i.i"

.lr.ph.i.i.i.i.i.i.i4.i.i.i.i:                    ; preds = %.preheader.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i4.i.i.i.i
  %i.cr = phi ptr [ %i.cv, %.lr.ph.i.i.i.i.i.i.i4.i.i.i.i ], [ %.lcssa14.i.i.i.i.i.i.i.i.i.i, %.preheader.i.i.i.i.i.i.i.i.i.i ] ; 2 uses
  %i.cs = phi ptr [ %i.cu, %.lr.ph.i.i.i.i.i.i.i4.i.i.i.i ], [ %.lcssa710.i.i.i.i.i.i.i.i.i.i, %.preheader.i.i.i.i.i.i.i.i.i.i ]
  %.val11.i.i.i.i.i.i.i5.i.i.i.i = load <16 x i8>, ptr %i.cr, align 16, !noalias !19237
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
  %.val.i.i.i.i.i.i.i.i.i.i = load i64, ptr %i.dd, align 8, !alias.scope !19238, !noalias !19239 ; 2 uses
  %i.de = icmp eq i64 %.val.i.i.i.i.i.i.i.i.i.i, 0
  br i1 %i.de, label %"_ZN4core3ptr102drop_in_place$LT$$LP$alloc..string..String$C$milli..search..facet..facet_distribution..OrderBy$RP$$GT$17h76d7ec06363a1eaeE.exit.i.i.i.i.i.i.i.i.i.i", label %bb.r

bb.r:                                             ; preds = %"_ZN9hashbrown3raw21RawIterRange$LT$T$GT$9next_impl17haf0036b21ae44685E.exit.i.i.i.i.i.i.i.i.i.i"
  %i.df = getelementptr i8, ptr %i.db, i64 -24
  %.val6.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.df, align 8, !noalias !19239, !nonnull !23, !noundef !23
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val6.i.i.i.i.i.i.i.i.i.i, i64 noundef %.val.i.i.i.i.i.i.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #52, !noalias !19240
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
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.5.0.copyload, i64 noundef %.sroa.4.0.copyload, i64 noundef range(i64 1, -9223372036854775807) %.sroa.0.0.copyload) #52, !noalias !19241
  br label %common.resume.i

_ZN4core4iter6traits8iterator8Iterator7collect17h94207433f3d2aeb7E.exit.i: ; preds = %bb.m, %"_ZN9hashbrown3raw16RawIter$LT$T$GT$13drop_elements17h5cdee60b3bed5fffE.exit.i.i.i.i.i.i.i.i.i.i.i.i"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !19202
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.f, ptr noundef nonnull align 8 dereferenceable(24) %i.e, i64 24, i1 false), !noalias !19242
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !19202
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %.pre.i = load i64, ptr %.phi.trans.insert.i, align 8, !noalias !19201 ; 7 uses
  %i.dh = icmp ult i64 %.pre.i, 288230376151711744
  tail call void @llvm.assume(i1 %i.dh)
  %i.di = icmp eq i64 %.pre.i, 0
  br i1 %i.di, label %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hf49cdb1a66ae8c55E.exit.i.i", label %bb.u

"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hf49cdb1a66ae8c55E.exit.i.i.thread": ; preds = %"_ZN9hashbrown3raw16RawIter$LT$T$GT$13drop_elements17h5cdee60b3bed5fffE.exit.i.i.i.i.i.i.i.i.i.i", %bb.e
  store ptr null, ptr %0, align 8, !alias.scope !19200
  %i.dj = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 0, ptr %i.dj, align 8, !alias.scope !19200
  br label %"_ZN136_$LT$alloc..collections..btree..map..BTreeMap$LT$K$C$V$GT$$u20$as$u20$core..iter..traits..collect..FromIterator$LT$$LP$K$C$V$RP$$GT$$GT$9from_iter17h6520147842094471E.exit"

"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hf49cdb1a66ae8c55E.exit.i.i": ; preds = %_ZN4core4iter6traits8iterator8Iterator7collect17h94207433f3d2aeb7E.exit.i
  %.val2.i.i.pre = load i64, ptr %i.f, align 8, !range !24, !alias.scope !19243, !noalias !19201 ; 2 uses
  store ptr null, ptr %0, align 8, !alias.scope !19200
  %i.dk = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 0, ptr %i.dk, align 8, !alias.scope !19200
  tail call void @llvm.experimental.noalias.scope.decl(metadata !19243)
  %i.dl = icmp eq i64 %.val2.i.i.pre, 0
  br i1 %i.dl, label %"_ZN136_$LT$alloc..collections..btree..map..BTreeMap$LT$K$C$V$GT$$u20$as$u20$core..iter..traits..collect..FromIterator$LT$$LP$K$C$V$RP$$GT$$GT$9from_iter17h6520147842094471E.exit", label %bb.t

bb.t:                                             ; preds = %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hf49cdb1a66ae8c55E.exit.i.i"
  %i.dm = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %.val.i.i = load ptr, ptr %i.dm, align 8, !alias.scope !19243, !noalias !19201, !nonnull !23, !noundef !23
  %i.dn = shl nuw i64 %.val2.i.i.pre, 5
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i, i64 noundef %i.dn, i64 noundef range(i64 1, -9223372036854775807) 8) #52, !noalias !19244
  br label %"_ZN136_$LT$alloc..collections..btree..map..BTreeMap$LT$K$C$V$GT$$u20$as$u20$core..iter..traits..collect..FromIterator$LT$$LP$K$C$V$RP$$GT$$GT$9from_iter17h6520147842094471E.exit"

bb.u:                                             ; preds = %_ZN4core4iter6traits8iterator8Iterator7collect17h94207433f3d2aeb7E.exit.i
  %i.do = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.dp = load ptr, ptr %i.do, align 8, !noalias !19201, !nonnull !23, !noundef !23 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !19245
  %i.dq = icmp eq i64 %.pre.i, 1
  br i1 %i.dq, label %bb.y, label %bb.v, !prof !51

bb.v:                                             ; preds = %bb.u
  %i.dr = icmp samesign ult i64 %.pre.i, 21
  br i1 %i.dr, label %bb.x, label %bb.w, !prof !51

bb.w:                                             ; preds = %bb.v
  invoke void @_ZN4core5slice4sort6stable14driftsort_main17h2cb1e55e71d1b383E(ptr noalias noundef nonnull align 8 %i.dp, i64 noundef range(i64 1, 288230376151711744) %.pre.i, ptr noalias noundef nonnull align 8 dereferenceable(8) %i.c)
          to label %bb.y unwind label %bb.az, !noalias !19201

bb.x:                                             ; preds = %bb.v
  tail call fastcc void @_ZN4core5slice4sort6shared9smallsort25insertion_sort_shift_left17h023ba63ee1f2f7ccE(ptr noalias noundef nonnull align 8 %i.dp, i64 noundef range(i64 1, 288230376151711744) %.pre.i)
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.w, %bb.u
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !19245
  %.sroa.01.0.copyload = load i64, ptr %i.f, align 8, !noalias !19201 ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !19246)
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #52, !noalias !19247
  %i.ds = tail call noalias noundef align 8 dereferenceable_or_null(288) ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef 288, i64 noundef range(i64 1, -9223372036854775807) 8) #52, !noalias !19247 ; 5 uses
  %i.dt = icmp eq ptr %i.ds, null
  br i1 %i.dt, label %bb.z, label %.loopexit87.i.i.i, !prof !25

bb.z:                                             ; preds = %bb.y
  invoke void @_ZN5alloc5alloc18handle_alloc_error17h8f86e24af4223f3dE(i64 noundef 8, i64 noundef 288) #57
          to label %.noexc.i.i unwind label %bb.ay, !noalias !19247

.noexc.i.i:                                       ; preds = %bb.z
  unreachable

.loopexit87.i.i.i:                                ; preds = %bb.y
  store ptr null, ptr %i.ds, align 8, !noalias !19247
  %i.du = getelementptr inbounds nuw i8, ptr %i.ds, i64 274
  store i16 0, ptr %i.du, align 2, !noalias !19247
  %i.dv = getelementptr inbounds nuw [32 x i8], ptr %i.dp, i64 %.pre.i ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !19248
end_hunk_9
