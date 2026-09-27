Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/meilisearch-rs/original/xtask-4cd5076fd53ab298.xtask.9db97cdd31b73b23-cgu.0?download=true
inline.NumInlined: 15192
inline.NumDeleted: 6593
loop-unroll.NumCompletelyUnrolled: 45
loop-unroll.NumRuntimeUnrolled: 49
loop-unroll.NumUnrolled: 95
begin_hunk_0_@_ZN4core4iter6traits8iterator8Iterator7collect17h81b38f01960c5b2cE:bb.a

bb.f:                                             ; preds = %bb.i
  %i.s = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.t = icmp eq i64 %.sroa.0.0.copyload1.i.i.i, 0
  br i1 %i.t, label %bb.v, label %bb.g

bb.g:                                             ; preds = %bb.f
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.7.sroa.0.0.copyload.i.i.i) ]
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.7.sroa.0.0.copyload.i.i.i, i64 noundef %.sroa.0.0.copyload1.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #47, !noalias !20319
  br label %bb.v

bb.h:                                             ; preds = %bb.d
  %i.u = call i64 @llvm.uadd.sat.i64(i64 %i.p, i64 1) ; 2 uses
  %.sroa.0.0.i.i.i.i = call noundef i64 @llvm.umax.i64(i64 %i.u, i64 4) ; 3 uses
  %i.v = mul i64 %.sroa.0.0.i.i.i.i, 24           ; 3 uses
  %or.cond.i.i.i.i.i.i = icmp ugt i64 %i.u, 384307168202282325
  br i1 %or.cond.i.i.i.i.i.i, label %bb.i, label %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i, !prof !43

_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i: ; preds = %bb.h
  %i.w = icmp eq i64 %i.v, 0
  br i1 %i.w, label %bb.j, label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h2c5e185936086779E.exit.i.i.i.i.i"

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h2c5e185936086779E.exit.i.i.i.i.i": ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i
  call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #47, !noalias !20328
  %i.x = call noundef align 8 ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef %i.v, i64 noundef range(i64 1, 9) 8) #47, !noalias !20328 ; 2 uses
  %i.y = icmp eq ptr %i.x, null
  br i1 %i.y, label %bb.i, label %bb.j

bb.i:                                             ; preds = %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h2c5e185936086779E.exit.i.i.i.i.i", %bb.h
  %.sroa.4.0.ph.i.i.i.i = phi i64 [ 8, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h2c5e185936086779E.exit.i.i.i.i.i" ], [ 0, %bb.h ]
  invoke void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef %.sroa.4.0.ph.i.i.i.i, i64 %i.v, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @483) #54
          to label %.noexc8.i.i.i unwind label %bb.f, !noalias !20319

.noexc8.i.i.i:                                    ; preds = %bb.i
  unreachable

bb.j:                                             ; preds = %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h2c5e185936086779E.exit.i.i.i.i.i", %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i
  %.sroa.10.0.i.i.i.i = phi ptr [ inttoptr (i64 8 to ptr), %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i ], [ %i.x, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h2c5e185936086779E.exit.i.i.i.i.i" ] ; 5 uses
  %.sroa.4.0.i.i.i.i = phi i64 [ 0, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i ], [ %.sroa.0.0.i.i.i.i, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h2c5e185936086779E.exit.i.i.i.i.i" ] ; 2 uses
  %i.z = icmp ule i64 %.sroa.0.0.i.i.i.i, %.sroa.4.0.i.i.i.i
  call void @llvm.assume(i1 %i.z)
  store i64 %.sroa.0.0.copyload1.i.i.i, ptr %.sroa.10.0.i.i.i.i, align 8, !noalias !20319
  %.sroa.48.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.10.0.i.i.i.i, i64 8
  store ptr %.sroa.7.sroa.0.0.copyload.i.i.i, ptr %.sroa.48.0..sroa_idx.i.i.i, align 8, !noalias !20319
  %.sroa.59.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.10.0.i.i.i.i, i64 16
  store i64 %.sroa.7.sroa.5.0.copyload.i.i.i, ptr %.sroa.59.0..sroa_idx.i.i.i, align 8, !noalias !20319
  store i64 %.sroa.4.0.i.i.i.i, ptr %i.h, align 8, !noalias !20319
  %.sroa.4.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8 ; 2 uses
  store ptr %.sroa.10.0.i.i.i.i, ptr %.sroa.4.0..sroa_idx.i.i.i, align 8, !noalias !20319
  %.sroa.6.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16 ; 2 uses
  store i64 1, ptr %.sroa.6.0..sroa_idx.i.i.i, align 8, !noalias !20319
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !20319
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(112) %i.g, ptr noundef nonnull align 8 dereferenceable(112) %i.i, i64 112, i1 false), !noalias !20322
  call void @llvm.experimental.noalias.scope.decl(metadata !20329)
  call void @llvm.experimental.noalias.scope.decl(metadata !20330)
  call void @llvm.experimental.noalias.scope.decl(metadata !20331)
  call void @llvm.experimental.noalias.scope.decl(metadata !20332)
  %i.aa = getelementptr inbounds nuw i8, ptr %i.g, i64 8 ; 3 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.g, i64 104 ; 2 uses
  %.sroa.7.0..sroa_idx2.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %.sroa.7.sroa.5.0..sroa.7.0..sroa_idx2.sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  br label %bb.k

bb.k:                                             ; preds = %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h259dcf6f93e14e6dE.exit.i.i.i.i.i", %bb.j
  %i.ac = phi ptr [ %i.am, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h259dcf6f93e14e6dE.exit.i.i.i.i.i" ], [ %.sroa.10.0.i.i.i.i, %bb.j ]
  %i.ad = phi i64 [ %i.ao, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h259dcf6f93e14e6dE.exit.i.i.i.i.i" ], [ 1, %bb.j ] ; 5 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !20333)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !20334
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !20334
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !20335
  invoke fastcc void @"_ZN116_$LT$core..iter..adapters..flatten..FlattenCompat$LT$I$C$U$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h6361f847d40ad4beE"(ptr noalias noundef align 8 captures(address) dereferenceable(32) %i.b, ptr noalias noundef align 8 dereferenceable(96) %i.aa)
          to label %.noexc.i.i.i.i.i unwind label %bb.m, !noalias !20336

.noexc.i.i.i.i.i:                                 ; preds = %bb.k
  %i.ae = load ptr, ptr %i.b, align 8, !noalias !20335, !noundef !24
  %.not.i.i.i.i.i.i = icmp eq ptr %i.ae, null
  br i1 %.not.i.i.i.i.i.i, label %.thread.i.i.i.i.i, label %bb.l

bb.l:                                             ; preds = %.noexc.i.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.a, ptr noundef nonnull align 8 dereferenceable(32) %i.b, i64 32, i1 false), !noalias !20335
  %i.af = load ptr, ptr %i.g, align 8, !alias.scope !20337, !noalias !20338, !nonnull !24, !noundef !24
  invoke void %i.af(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.c, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(32) %i.a)
          to label %bb.n unwind label %bb.m, !noalias !20334, !inline_history !20298

.thread.i.i.i.i.i:                                ; preds = %.noexc.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !20335
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !20334
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !20334
  br label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$16extend_desugared17h78694921c500252fE.exit.i.i.i.i"

"_ZN4core3ptr39drop_in_place$LT$std..path..PathBuf$GT$17h19bef0b4b1df514bE.exit.i.i.i.i.i": ; preds = %bb.q, %bb.p, %bb.m
  %.pn.i.i.i.i.i = phi { ptr, i32 } [ %i.ag, %bb.m ], [ %i.ap, %bb.p ], [ %i.ap, %bb.q ]
  invoke fastcc void @"_ZN4core3ptr168drop_in_place$LT$core..iter..adapters..flatten..Flatten$LT$alloc..vec..into_iter..IntoIter$LT$alloc..vec..Vec$LT$clap_builder..util..any_value..AnyValue$GT$$GT$$GT$$GT$17h6d9ce0bf63d772d5E"(ptr noalias noundef readonly align 8 dereferenceable(96) %i.aa)
          to label %.body.i.i.i unwind label %bb.s, !noalias !20336

bb.m:                                             ; preds = %bb.l, %bb.k
  %i.ag = landingpad { ptr, i32 }
          cleanup
  br label %"_ZN4core3ptr39drop_in_place$LT$std..path..PathBuf$GT$17h19bef0b4b1df514bE.exit.i.i.i.i.i"

bb.n:                                             ; preds = %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !20335
  %i.ah = load i64, ptr %i.ab, align 8, !alias.scope !20337, !noalias !20338, !noundef !24
  %i.ai = add i64 %i.ah, -1                       ; 2 uses
  store i64 %i.ai, ptr %i.ab, align 8, !alias.scope !20337, !noalias !20338
  %.sroa.0.0.copyload1.i.i.i.i.i = load i64, ptr %i.c, align 8, !noalias !20339 ; 4 uses
  %.sroa.7.sroa.0.0.copyload.i.i.i.i.i = load ptr, ptr %.sroa.7.0..sroa_idx2.i.i.i.i.i, align 8, !noalias !20339 ; 3 uses
  %.sroa.7.sroa.5.0.copyload.i.i.i.i.i = load i64, ptr %.sroa.7.sroa.5.0..sroa.7.0..sroa_idx2.sroa_idx.i.i.i.i.i, align 8, !noalias !20339
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !20334
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !20334
  %.not.i.i.i.i.i = icmp eq i64 %.sroa.0.0.copyload1.i.i.i.i.i, -9223372036854775808
  br i1 %.not.i.i.i.i.i, label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$16extend_desugared17h78694921c500252fE.exit.i.i.i.i", label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.aj = icmp samesign ult i64 %i.ad, 384307168202282326
  call void @llvm.assume(i1 %i.aj)
  %i.ak = load i64, ptr %i.h, align 8, !range !30, !alias.scope !20340, !noalias !20341, !noundef !24
  %i.al = icmp eq i64 %i.ad, %i.ak
  br i1 %i.al, label %bb.r, label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h259dcf6f93e14e6dE.exit.i.i.i.i.i"

"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h259dcf6f93e14e6dE.exit.i.i.i.i.i": ; preds = %"._ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h259dcf6f93e14e6dE.exit.i.i_crit_edge.i.i.i", %bb.o
  %i.am = phi ptr [ %.pre.i.i.i, %"._ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h259dcf6f93e14e6dE.exit.i.i_crit_edge.i.i.i" ], [ %i.ac, %bb.o ] ; 2 uses
  %i.an = getelementptr inbounds nuw [24 x i8], ptr %i.am, i64 %i.ad ; 3 uses
  store i64 %.sroa.0.0.copyload1.i.i.i.i.i, ptr %i.an, align 8, !noalias !20334
  %.sroa.48.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.an, i64 8
  store ptr %.sroa.7.sroa.0.0.copyload.i.i.i.i.i, ptr %.sroa.48.0..sroa_idx.i.i.i.i.i, align 8, !noalias !20334
  %.sroa.59.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.an, i64 16
  store i64 %.sroa.7.sroa.5.0.copyload.i.i.i.i.i, ptr %.sroa.59.0..sroa_idx.i.i.i.i.i, align 8, !noalias !20334
  %i.ao = add nuw nsw i64 %i.ad, 1                ; 2 uses
  store i64 %i.ao, ptr %.sroa.6.0..sroa_idx.i.i.i, align 8, !alias.scope !20340, !noalias !20341
  br label %bb.k

bb.p:                                             ; preds = %bb.r
  %i.ap = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.aq = icmp eq i64 %.sroa.0.0.copyload1.i.i.i.i.i, 0
  br i1 %i.aq, label %"_ZN4core3ptr39drop_in_place$LT$std..path..PathBuf$GT$17h19bef0b4b1df514bE.exit.i.i.i.i.i", label %bb.q

bb.q:                                             ; preds = %bb.p
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.7.sroa.0.0.copyload.i.i.i.i.i) ]
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.7.sroa.0.0.copyload.i.i.i.i.i, i64 noundef %.sroa.0.0.copyload1.i.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #47, !noalias !20334
  br label %"_ZN4core3ptr39drop_in_place$LT$std..path..PathBuf$GT$17h19bef0b4b1df514bE.exit.i.i.i.i.i"

bb.r:                                             ; preds = %bb.o
  %i.ar = call i64 @llvm.uadd.sat.i64(i64 %i.ai, i64 1)
  invoke fastcc void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$7reserve21do_reserve_and_handle17h0917ae3167eaa516E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.h, i64 noundef %i.ad, i64 noundef range(i64 1, 0) %i.ar, i64 noundef 8, i64 noundef 24)
          to label %"._ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h259dcf6f93e14e6dE.exit.i.i_crit_edge.i.i.i" unwind label %bb.p, !noalias !20341

"._ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h259dcf6f93e14e6dE.exit.i.i_crit_edge.i.i.i": ; preds = %bb.r
  %.pre.i.i.i = load ptr, ptr %.sroa.4.0..sroa_idx.i.i.i, align 8, !alias.scope !20340, !noalias !20341
  br label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h259dcf6f93e14e6dE.exit.i.i.i.i.i"

bb.s:                                             ; preds = %"_ZN4core3ptr39drop_in_place$LT$std..path..PathBuf$GT$17h19bef0b4b1df514bE.exit.i.i.i.i.i"
  %i.as = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #56, !noalias !20334
  unreachable

"_ZN5alloc3vec16Vec$LT$T$C$A$GT$16extend_desugared17h78694921c500252fE.exit.i.i.i.i": ; preds = %bb.n, %.thread.i.i.i.i.i
  invoke fastcc void @"_ZN4core3ptr168drop_in_place$LT$core..iter..adapters..flatten..Flatten$LT$alloc..vec..into_iter..IntoIter$LT$alloc..vec..Vec$LT$clap_builder..util..any_value..AnyValue$GT$$GT$$GT$$GT$17h6d9ce0bf63d772d5E"(ptr noalias noundef readonly align 8 dereferenceable(96) %i.aa)
          to label %"_ZN97_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$alloc..vec..spec_extend..SpecExtend$LT$T$C$I$GT$$GT$11spec_extend17h7672388e04994ce0E.exit.i.i.i" unwind label %bb.t, !noalias !20319

bb.t:                                             ; preds = %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$16extend_desugared17h78694921c500252fE.exit.i.i.i.i"
  %i.at = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i.i

.body.i.i.i:                                      ; preds = %bb.t, %"_ZN4core3ptr39drop_in_place$LT$std..path..PathBuf$GT$17h19bef0b4b1df514bE.exit.i.i.i.i.i"
  %eh.lpad-body.i.i.i = phi { ptr, i32 } [ %i.at, %bb.t ], [ %.pn.i.i.i.i.i, %"_ZN4core3ptr39drop_in_place$LT$std..path..PathBuf$GT$17h19bef0b4b1df514bE.exit.i.i.i.i.i" ]
  call fastcc void @"_ZN4core3ptr62drop_in_place$LT$alloc..vec..Vec$LT$std..path..PathBuf$GT$$GT$17h33770dd3628bd6e2E"(ptr noalias noundef align 8 dereferenceable(24) %i.h) #55, !noalias !20319
  br label %"_ZN4core3ptr97drop_in_place$LT$clap_builder..parser..matches..arg_matches..Values$LT$std..path..PathBuf$GT$$GT$17ha6c683cbb72585b4E.exit.i.i.i"

"_ZN97_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$alloc..vec..spec_extend..SpecExtend$LT$T$C$I$GT$$GT$11spec_extend17h7672388e04994ce0E.exit.i.i.i": ; preds = %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$16extend_desugared17h78694921c500252fE.exit.i.i.i.i"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !20319
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.h, i64 24, i1 false), !noalias !20327
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !20319
  br label %"_ZN95_$LT$alloc..vec..Vec$LT$T$GT$$u20$as$u20$core..iter..traits..collect..FromIterator$LT$T$GT$$GT$9from_iter17h5d1e8ae10c48d1a3E.exit"

bb.u:                                             ; preds = %bb.v
  %i.au = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #56, !noalias !20319
  unreachable

"_ZN4core3ptr97drop_in_place$LT$clap_builder..parser..matches..arg_matches..Values$LT$std..path..PathBuf$GT$$GT$17ha6c683cbb72585b4E.exit.i.i.i": ; preds = %bb.v, %.body.i.i.i
  %.pn12.i.i.i = phi { ptr, i32 } [ %eh.lpad-body.i.i.i, %.body.i.i.i ], [ %.pn.ph.i.i.i, %bb.v ]
  resume { ptr, i32 } %.pn12.i.i.i

bb.v:                                             ; preds = %bb.g, %bb.f, %bb.c
  %.pn.ph.i.i.i = phi { ptr, i32 } [ %i.m, %bb.c ], [ %i.s, %bb.f ], [ %i.s, %bb.g ]
  invoke fastcc void @"_ZN4core3ptr168drop_in_place$LT$core..iter..adapters..flatten..Flatten$LT$alloc..vec..into_iter..IntoIter$LT$alloc..vec..Vec$LT$clap_builder..util..any_value..AnyValue$GT$$GT$$GT$$GT$17h6d9ce0bf63d772d5E"(ptr noalias noundef readonly align 8 dereferenceable(96) %i.j)
          to label %"_ZN4core3ptr97drop_in_place$LT$clap_builder..parser..matches..arg_matches..Values$LT$std..path..PathBuf$GT$$GT$17ha6c683cbb72585b4E.exit.i.i.i" unwind label %bb.u, !noalias !20322

"_ZN95_$LT$alloc..vec..Vec$LT$T$GT$$u20$as$u20$core..iter..traits..collect..FromIterator$LT$T$GT$$GT$9from_iter17h5d1e8ae10c48d1a3E.exit": ; preds = %bb.e, %"_ZN97_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$alloc..vec..spec_extend..SpecExtend$LT$T$C$I$GT$$GT$11spec_extend17h7672388e04994ce0E.exit.i.i.i"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !20313
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef { ptr, i64 } @_ZN4core5error5Error11description17h03cf07a20bd28403E(ptr noalias readonly align 8 captures(none) %0) unnamed_addr #7 {
bb.a:
  ret { ptr, i64 } { ptr @488, i64 40 }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef { ptr, i64 } @_ZN4core5error5Error11description17h041d62e68fa7e9a7E(ptr noalias readonly align 8 captures(none) %0) unnamed_addr #7 {
bb.a:
  ret { ptr, i64 } { ptr @488, i64 40 }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef { ptr, i64 } @_ZN4core5error5Error11description17h093b11fd669668b9E(ptr noalias readonly align 8 captures(none) %0) unnamed_addr #7 {
bb.a:
  ret { ptr, i64 } { ptr @488, i64 40 }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef { ptr, i64 } @_ZN4core5error5Error11description17h0ee5c107e019ef04E(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #7 {
bb.a:
  ret { ptr, i64 } { ptr @488, i64 40 }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef { ptr, i64 } @_ZN4core5error5Error11description17h0fcdbdca13c80274E(ptr noalias readonly align 8 captures(none) %0) unnamed_addr #7 {
bb.a:
  ret { ptr, i64 } { ptr @488, i64 40 }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef { ptr, i64 } @_ZN4core5error5Error11description17h10ce3569d3acbab4E(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #7 {
bb.a:
  ret { ptr, i64 } { ptr @488, i64 40 }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef { ptr, i64 } @_ZN4core5error5Error11description17h110f483bb332039bE(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #7 {
bb.a:
  ret { ptr, i64 } { ptr @488, i64 40 }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef { ptr, i64 } @_ZN4core5error5Error11description17h1391fb3b20958a7eE(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #7 {
bb.a:
  ret { ptr, i64 } { ptr @488, i64 40 }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef { ptr, i64 } @_ZN4core5error5Error11description17h1e3b269aa8f1f3b4E(ptr noalias readonly align 8 captures(none) %0) unnamed_addr #7 {
bb.a:
  ret { ptr, i64 } { ptr @488, i64 40 }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef { ptr, i64 } @_ZN4core5error5Error11description17h1f2f591c0264c8c5E(ptr noalias readonly align 8 captures(none) %0) unnamed_addr #7 {
bb.a:
  ret { ptr, i64 } { ptr @488, i64 40 }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef { ptr, i64 } @_ZN4core5error5Error11description17h246056ea21628622E(ptr noalias readonly align 8 captures(none) %0) unnamed_addr #7 {
bb.a:
  ret { ptr, i64 } { ptr @488, i64 40 }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef { ptr, i64 } @_ZN4core5error5Error11description17h28f1e25c42472976E(ptr noalias readonly align 8 captures(none) %0) unnamed_addr #7 {
bb.a:
  ret { ptr, i64 } { ptr @488, i64 40 }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef { ptr, i64 } @_ZN4core5error5Error11description17h28fed894a78bf0e1E(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #7 {
bb.a:
  ret { ptr, i64 } { ptr @488, i64 40 }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef { ptr, i64 } @_ZN4core5error5Error11description17h2ab93ad53ed4bfc9E(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #7 {
bb.a:
  ret { ptr, i64 } { ptr @488, i64 40 }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef { ptr, i64 } @_ZN4core5error5Error11description17h2ac8b24adf73c3e4E(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #7 {
bb.a:
  ret { ptr, i64 } { ptr @488, i64 40 }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef { ptr, i64 } @_ZN4core5error5Error11description17h2b4a57b5789f287bE(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #7 {
bb.a:
  ret { ptr, i64 } { ptr @488, i64 40 }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef { ptr, i64 } @_ZN4core5error5Error11description17h2b77c08dafe5c0f1E(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #7 {
bb.a:
  ret { ptr, i64 } { ptr @488, i64 40 }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef { ptr, i64 } @_ZN4core5error5Error11description17h38e3a01e6c445c7aE(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #7 {
bb.a:
  ret { ptr, i64 } { ptr @488, i64 40 }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef { ptr, i64 } @_ZN4core5error5Error11description17h40f5505cf075428dE(ptr noalias readonly align 8 captures(none) %0) unnamed_addr #7 {
bb.a:
  ret { ptr, i64 } { ptr @488, i64 40 }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef { ptr, i64 } @_ZN4core5error5Error11description17h49c4a7f0bced48f7E(ptr noalias readonly align 1 captures(none) %0) unnamed_addr #7 {
bb.a:
  ret { ptr, i64 } { ptr @488, i64 40 }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef { ptr, i64 } @_ZN4core5error5Error11description17h4b6cd9d116c984a7E(ptr noalias readonly align 8 captures(none) %0) unnamed_addr #7 {
bb.a:
  ret { ptr, i64 } { ptr @488, i64 40 }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef { ptr, i64 } @_ZN4core5error5Error11description17h4f69eef649d385ecE(ptr noalias readonly align 8 captures(none) %0) unnamed_addr #7 {
bb.a:
  ret { ptr, i64 } { ptr @488, i64 40 }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef { ptr, i64 } @_ZN4core5error5Error11description17h53400f9b12e00701E(ptr noalias readonly align 8 captures(none) %0) unnamed_addr #7 {
bb.a:
  ret { ptr, i64 } { ptr @488, i64 40 }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef { ptr, i64 } @_ZN4core5error5Error11description17h54ff5387a518b242E(ptr noalias readonly align 8 captures(none) %0) unnamed_addr #7 {
bb.a:
  ret { ptr, i64 } { ptr @488, i64 40 }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef { ptr, i64 } @_ZN4core5error5Error11description17h5637ed7d058c6393E(ptr noalias readonly align 8 captures(none) %0) unnamed_addr #7 {
bb.a:
  ret { ptr, i64 } { ptr @488, i64 40 }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef { ptr, i64 } @_ZN4core5error5Error11description17h5c47d69d61b45c47E(ptr noalias readonly align 8 captures(none) %0) unnamed_addr #7 {
bb.a:
  ret { ptr, i64 } { ptr @488, i64 40 }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef { ptr, i64 } @_ZN4core5error5Error11description17h5f19fcdf878ed896E(ptr noalias readonly align 8 captures(none) %0) unnamed_addr #7 {
bb.a:
  ret { ptr, i64 } { ptr @488, i64 40 }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef { ptr, i64 } @_ZN4core5error5Error11description17h60039d27651ce2d7E(ptr noalias readonly align 8 captures(none) %0) unnamed_addr #7 {
bb.a:
  ret { ptr, i64 } { ptr @488, i64 40 }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef { ptr, i64 } @_ZN4core5error5Error11description17h62b36b7fe9a30605E(ptr noalias nonnull readonly align 1 captures(none) %0) unnamed_addr #7 {
bb.a:
  ret { ptr, i64 } { ptr @488, i64 40 }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef { ptr, i64 } @_ZN4core5error5Error11description17h649736b0a6397ab1E(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #7 {
bb.a:
  ret { ptr, i64 } { ptr @488, i64 40 }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef { ptr, i64 } @_ZN4core5error5Error11description17h68776ef44aa15091E(ptr noalias readonly align 8 captures(none) %0) unnamed_addr #7 {
bb.a:
  ret { ptr, i64 } { ptr @488, i64 40 }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef { ptr, i64 } @_ZN4core5error5Error11description17h6d7d5f5e942251a1E(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #7 {
bb.a:
  ret { ptr, i64 } { ptr @488, i64 40 }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef { ptr, i64 } @_ZN4core5error5Error11description17h6e1bd7ebd91186d4E(ptr noalias readonly align 8 captures(none) %0) unnamed_addr #7 {
bb.a:
  ret { ptr, i64 } { ptr @488, i64 40 }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef { ptr, i64 } @_ZN4core5error5Error11description17h7c0adccdec606932E(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #7 {
bb.a:
  ret { ptr, i64 } { ptr @488, i64 40 }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef { ptr, i64 } @_ZN4core5error5Error11description17h7ec851207687aff1E(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #7 {
bb.a:
  ret { ptr, i64 } { ptr @488, i64 40 }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef { ptr, i64 } @_ZN4core5error5Error11description17h8348d4d53823cd07E(ptr noalias readonly align 8 captures(none) %0) unnamed_addr #7 {
bb.a:
  ret { ptr, i64 } { ptr @488, i64 40 }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef { ptr, i64 } @_ZN4core5error5Error11description17h8f455e69baa8e68bE(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #7 {
bb.a:
  ret { ptr, i64 } { ptr @488, i64 40 }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef { ptr, i64 } @_ZN4core5error5Error11description17h9972de1cbd561a92E(ptr noalias readonly align 8 captures(none) %0) unnamed_addr #7 {
bb.a:
  ret { ptr, i64 } { ptr @488, i64 40 }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef { ptr, i64 } @_ZN4core5error5Error11description17ha46682c8dec7e56cE(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #7 {
bb.a:
  ret { ptr, i64 } { ptr @488, i64 40 }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef { ptr, i64 } @_ZN4core5error5Error11description17ha4becda1af2e366cE(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #7 {
bb.a:
  ret { ptr, i64 } { ptr @488, i64 40 }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef { ptr, i64 } @_ZN4core5error5Error11description17hab4a45c3609c70d0E(ptr noalias nonnull readonly align 1 captures(none) %0) unnamed_addr #7 {
bb.a:
  ret { ptr, i64 } { ptr @488, i64 40 }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef { ptr, i64 } @_ZN4core5error5Error11description17hb813189b5da291fcE(ptr noalias readonly align 8 captures(none) %0) unnamed_addr #7 {
bb.a:
  ret { ptr, i64 } { ptr @488, i64 40 }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef { ptr, i64 } @_ZN4core5error5Error11description17hba208221cadbe30bE(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #7 {
bb.a:
  ret { ptr, i64 } { ptr @488, i64 40 }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef { ptr, i64 } @_ZN4core5error5Error11description17hbd4c615ab83b1cabE(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #7 {
bb.a:
  ret { ptr, i64 } { ptr @488, i64 40 }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef { ptr, i64 } @_ZN4core5error5Error11description17hc039a24e3acb0cb5E(ptr noalias readonly align 8 captures(none) %0) unnamed_addr #7 {
bb.a:
  ret { ptr, i64 } { ptr @488, i64 40 }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef { ptr, i64 } @_ZN4core5error5Error11description17hc3e3dd3f9fd2bcb9E(ptr noalias nonnull readonly align 1 captures(none) %0) unnamed_addr #7 {
bb.a:
  ret { ptr, i64 } { ptr @488, i64 40 }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef { ptr, i64 } @_ZN4core5error5Error11description17hda4714e9bf6ce6edE(ptr noalias nonnull readonly align 1 captures(none) %0) unnamed_addr #7 {
bb.a:
  ret { ptr, i64 } { ptr @488, i64 40 }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef { ptr, i64 } @_ZN4core5error5Error11description17hde61a4c5873eab71E(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #7 {
bb.a:
  ret { ptr, i64 } { ptr @488, i64 40 }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef { ptr, i64 } @_ZN4core5error5Error11description17hdf2c08086ee43dd4E(ptr noalias readonly align 1 captures(none) %0) unnamed_addr #7 {
bb.a:
  ret { ptr, i64 } { ptr @488, i64 40 }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef { ptr, i64 } @_ZN4core5error5Error11description17heb7b9c225a266c21E(ptr noalias readonly align 8 captures(none) %0) unnamed_addr #7 {
bb.a:
  ret { ptr, i64 } { ptr @488, i64 40 }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef { ptr, i64 } @_ZN4core5error5Error11description17hee457634a9fd1f34E(ptr noalias readonly align 8 captures(none) %0) unnamed_addr #7 {
bb.a:
  ret { ptr, i64 } { ptr @488, i64 40 }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef { ptr, i64 } @_ZN4core5error5Error11description17hefeabb94e243afcbE(ptr noalias readonly align 8 captures(none) %0) unnamed_addr #7 {
bb.a:
  ret { ptr, i64 } { ptr @488, i64 40 }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef { ptr, i64 } @_ZN4core5error5Error11description17hf4132c94761425eaE(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #7 {
bb.a:
  ret { ptr, i64 } { ptr @488, i64 40 }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef { ptr, i64 } @_ZN4core5error5Error11description17hf452ea00ba9e70f3E(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #7 {
bb.a:
  ret { ptr, i64 } { ptr @488, i64 40 }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef { ptr, i64 } @_ZN4core5error5Error11description17hf85915d12ad5fa10E(ptr noalias readonly align 4 captures(none) %0) unnamed_addr #7 {
bb.a:
  ret { ptr, i64 } { ptr @488, i64 40 }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef { ptr, i64 } @_ZN4core5error5Error11description17hfd0b320a39daa0fdE(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #7 {
bb.a:
  ret { ptr, i64 } { ptr @488, i64 40 }
}

; Function Attrs: nonlazybind uwtable
define internal { ptr, ptr } @_ZN4core5error5Error5cause17h124c478a95b381e0E(ptr noundef nonnull align 8 %0) unnamed_addr #1 {
bb.a:
  %i.a = tail call { ptr, ptr } @_ZN6anyhow5error9ErrorImpl5error17hf8fbddd5521f6544E(ptr noundef nonnull align 8 %0) ; 2 uses
  %i.b = extractvalue { ptr, ptr } %i.a, 0
  %i.c = extractvalue { ptr, ptr } %i.a, 1
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 48
  %i.e = load ptr, ptr %i.d, align 8, !invariant.load !24, !nonnull !24
  %i.f = tail call { ptr, ptr } %i.e(ptr noundef align 1 %i.b), !inline_history !20342
  ret { ptr, ptr } %i.f
}

; Function Attrs: nonlazybind uwtable
define internal { ptr, ptr } @_ZN4core5error5Error5cause17h133d4875698fd70eE(ptr noundef nonnull align 8 %0) unnamed_addr #1 {
bb.a:
  %i.a = tail call { ptr, ptr } @_ZN6anyhow5error9ErrorImpl5error17hf8fbddd5521f6544E(ptr noundef nonnull align 8 %0) ; 2 uses
  %i.b = extractvalue { ptr, ptr } %i.a, 0
  %i.c = extractvalue { ptr, ptr } %i.a, 1
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 48
  %i.e = load ptr, ptr %i.d, align 8, !invariant.load !24, !nonnull !24
  %i.f = tail call { ptr, ptr } %i.e(ptr noundef align 1 %i.b), !inline_history !20343
  ret { ptr, ptr } %i.f
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define internal { ptr, ptr } @_ZN4core5error5Error5cause17h16c3766e92b67e4fE(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %0) unnamed_addr #6 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !34, !alias.scope !20346, !noundef !24
  switch i64 %i.a, label %default.unreachable [
    i64 0, label %bb.b
    i64 1, label %bb.c
    i64 2, label %"_ZN88_$LT$tracing_subscriber..filter..directive..ParseError$u20$as$u20$core..error..Error$GT$6source17h576a2701d2a8f8d3E.exit"
  ]

default.unreachable:                              ; preds = %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !alias.scope !20346, !nonnull !24, !noundef !24
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.e = load ptr, ptr %i.d, align 8, !alias.scope !20346, !nonnull !24, !align !31, !noundef !24
  br label %"_ZN88_$LT$tracing_subscriber..filter..directive..ParseError$u20$as$u20$core..error..Error$GT$6source17h576a2701d2a8f8d3E.exit"

bb.c:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  br label %"_ZN88_$LT$tracing_subscriber..filter..directive..ParseError$u20$as$u20$core..error..Error$GT$6source17h576a2701d2a8f8d3E.exit"

"_ZN88_$LT$tracing_subscriber..filter..directive..ParseError$u20$as$u20$core..error..Error$GT$6source17h576a2701d2a8f8d3E.exit": ; preds = %bb.a, %bb.b, %bb.c
  %.sroa.4.0.i = phi ptr [ %i.e, %bb.b ], [ @1785, %bb.c ], [ undef, %bb.a ]
  %.sroa.0.0.i = phi ptr [ %i.c, %bb.b ], [ %i.f, %bb.c ], [ null, %bb.a ]
  %i.g = insertvalue { ptr, ptr } poison, ptr %.sroa.0.0.i, 0
  %i.h = insertvalue { ptr, ptr } %i.g, ptr %.sroa.4.0.i, 1
  ret { ptr, ptr } %i.h
}

; Function Attrs: nonlazybind uwtable
define internal { ptr, ptr } @_ZN4core5error5Error5cause17h19d3dc471668106fE(ptr noundef nonnull align 8 %0) unnamed_addr #1 {
bb.a:
  %i.a = tail call { ptr, ptr } @_ZN6anyhow5error9ErrorImpl5error17hf8fbddd5521f6544E(ptr noundef nonnull align 8 %0) ; 2 uses
  %i.b = extractvalue { ptr, ptr } %i.a, 0
  %i.c = extractvalue { ptr, ptr } %i.a, 1
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 48
  %i.e = load ptr, ptr %i.d, align 8, !invariant.load !24, !nonnull !24
  %i.f = tail call { ptr, ptr } %i.e(ptr noundef align 1 %i.b), !inline_history !20347
  ret { ptr, ptr } %i.f
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, ptr } @_ZN4core5error5Error5cause17h1e810b963e7dbef7E(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %0) unnamed_addr #7 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = insertvalue { ptr, ptr } poison, ptr %i.a, 0
  %i.c = insertvalue { ptr, ptr } %i.b, ptr @1624, 1
  ret { ptr, ptr } %i.c
}

; Function Attrs: nonlazybind uwtable
define internal { ptr, ptr } @_ZN4core5error5Error5cause17h1ff7613b72ecf3feE(ptr noundef nonnull align 8 %0) unnamed_addr #1 {
bb.a:
  %i.a = tail call { ptr, ptr } @_ZN6anyhow5error9ErrorImpl5error17hf8fbddd5521f6544E(ptr noundef nonnull align 8 %0) ; 2 uses
  %i.b = extractvalue { ptr, ptr } %i.a, 0
  %i.c = extractvalue { ptr, ptr } %i.a, 1
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 48
  %i.e = load ptr, ptr %i.d, align 8, !invariant.load !24, !nonnull !24
  %i.f = tail call { ptr, ptr } %i.e(ptr noundef align 1 %i.b), !inline_history !20348
  ret { ptr, ptr } %i.f
}

; Function Attrs: nonlazybind uwtable
define internal { ptr, ptr } @_ZN4core5error5Error5cause17h2adab10b68d461e5E(ptr noundef nonnull align 8 %0) unnamed_addr #1 {
bb.a:
  %i.a = tail call { ptr, ptr } @_ZN6anyhow5error9ErrorImpl5error17hf8fbddd5521f6544E(ptr noundef nonnull align 8 %0) ; 2 uses
  %i.b = extractvalue { ptr, ptr } %i.a, 0
  %i.c = extractvalue { ptr, ptr } %i.a, 1
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 48
  %i.e = load ptr, ptr %i.d, align 8, !invariant.load !24, !nonnull !24
  %i.f = tail call { ptr, ptr } %i.e(ptr noundef align 1 %i.b), !inline_history !20349
  ret { ptr, ptr } %i.f
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, ptr } @_ZN4core5error5Error5cause17h2ee52b42d441ef4cE(ptr noalias nonnull readonly align 1 captures(none) %0) unnamed_addr #7 {
bb.a:
  ret { ptr, ptr } { ptr null, ptr undef }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, ptr } @_ZN4core5error5Error5cause17h3eff042f8aa98679E(ptr noalias readonly align 4 captures(none) %0) unnamed_addr #7 {
bb.a:
  ret { ptr, ptr } { ptr null, ptr undef }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, ptr } @_ZN4core5error5Error5cause17h4667261061ee1cbcE(ptr noalias nonnull readonly align 1 captures(none) %0) unnamed_addr #7 {
bb.a:
  ret { ptr, ptr } { ptr null, ptr undef }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, ptr } @_ZN4core5error5Error5cause17h4afa0b5dbddf5433E(ptr noalias readonly align 8 captures(none) %0) unnamed_addr #7 {
bb.a:
  ret { ptr, ptr } { ptr null, ptr undef }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, ptr } @_ZN4core5error5Error5cause17h4c5d774391387f33E(ptr noalias nonnull readonly align 1 captures(none) %0) unnamed_addr #7 {
bb.a:
  ret { ptr, ptr } { ptr null, ptr undef }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, ptr } @_ZN4core5error5Error5cause17h4d7bf56b608011f6E(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(16) %0) unnamed_addr #7 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = insertvalue { ptr, ptr } poison, ptr %i.a, 0
  %i.c = insertvalue { ptr, ptr } %i.b, ptr @1630, 1
  ret { ptr, ptr } %i.c
}

; Function Attrs: nonlazybind uwtable
define internal { ptr, ptr } @_ZN4core5error5Error5cause17h562c783608086089E(ptr noundef nonnull align 8 %0) unnamed_addr #1 {
bb.a:
  %i.a = tail call { ptr, ptr } @_ZN6anyhow5error9ErrorImpl5error17hf8fbddd5521f6544E(ptr noundef nonnull align 8 %0) ; 2 uses
  %i.b = extractvalue { ptr, ptr } %i.a, 0
  %i.c = extractvalue { ptr, ptr } %i.a, 1
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 48
  %i.e = load ptr, ptr %i.d, align 8, !invariant.load !24, !nonnull !24
  %i.f = tail call { ptr, ptr } %i.e(ptr noundef align 1 %i.b), !inline_history !20350
  ret { ptr, ptr } %i.f
}

; Function Attrs: nonlazybind uwtable
define internal { ptr, ptr } @_ZN4core5error5Error5cause17h565d54907093d7ccE(ptr noundef nonnull align 8 %0) unnamed_addr #1 {
bb.a:
  %i.a = tail call { ptr, ptr } @_ZN6anyhow5error9ErrorImpl5error17hf8fbddd5521f6544E(ptr noundef nonnull align 8 %0) ; 2 uses
  %i.b = extractvalue { ptr, ptr } %i.a, 0
  %i.c = extractvalue { ptr, ptr } %i.a, 1
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 48
  %i.e = load ptr, ptr %i.d, align 8, !invariant.load !24, !nonnull !24
  %i.f = tail call { ptr, ptr } %i.e(ptr noundef align 1 %i.b), !inline_history !20351
  ret { ptr, ptr } %i.f
}

; Function Attrs: nonlazybind uwtable
define internal { ptr, ptr } @_ZN4core5error5Error5cause17h5667e00f73a45f2bE(ptr noalias noundef readonly align 8 captures(none) dereferenceable(24) %0) unnamed_addr #1 {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !20354)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !alias.scope !20354, !nonnull !24, !noundef !24
  %i.c = tail call { ptr, ptr } @_ZN6anyhow5error9ErrorImpl5error17hf8fbddd5521f6544E(ptr noundef nonnull %i.b), !noalias !20354
  ret { ptr, ptr } %i.c
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, ptr } @_ZN4core5error5Error5cause17h5a307d8f30a81be6E(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(40) %0) unnamed_addr #7 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = insertvalue { ptr, ptr } poison, ptr %i.a, 0
  %i.c = insertvalue { ptr, ptr } %i.b, ptr @1632, 1
  ret { ptr, ptr } %i.c
}

; Function Attrs: nonlazybind uwtable
define internal { ptr, ptr } @_ZN4core5error5Error5cause17h5a9c4e925c3557bdE(ptr noundef nonnull align 8 %0) unnamed_addr #1 {
bb.a:
  %i.a = tail call { ptr, ptr } @_ZN6anyhow5error9ErrorImpl5error17hf8fbddd5521f6544E(ptr noundef nonnull align 8 %0) ; 2 uses
  %i.b = extractvalue { ptr, ptr } %i.a, 0
  %i.c = extractvalue { ptr, ptr } %i.a, 1
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 48
  %i.e = load ptr, ptr %i.d, align 8, !invariant.load !24, !nonnull !24
  %i.f = tail call { ptr, ptr } %i.e(ptr noundef align 1 %i.b), !inline_history !20355
  ret { ptr, ptr } %i.f
}

; Function Attrs: nonlazybind uwtable
end_hunk_0
begin_hunk_1_@"_ZN87_$LT$serde..private..de..content..ContentVisitor$u20$as$u20$serde_core..de..Visitor$GT$9visit_str17hbbcd8ddaa0f8e072E":bb.a

bb.b:                                             ; preds = %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h2c5e185936086779E.exit.i.i.i", %bb.a
  %.sroa.4.0.ph.i.i = phi i64 [ 1, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h2c5e185936086779E.exit.i.i.i" ], [ 0, %bb.a ]
  tail call void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef %.sroa.4.0.ph.i.i, i64 %2, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @1765) #54, !noalias !47880
  unreachable

"_ZN87_$LT$T$u20$as$u20$alloc..slice..$LT$impl$u20$$u5b$T$u5d$$GT$..to_vec_in..ConvertVec$GT$6to_vec17h4e722af2283a9a09E.exit": ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h2c5e185936086779E.exit.i.i.i"
  %.sroa.10.0.i.i = phi ptr [ inttoptr (i64 1 to ptr), %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i ], [ %i.c, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h2c5e185936086779E.exit.i.i.i" ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %.sroa.10.0.i.i, ptr nonnull readonly align 1 %1, i64 %2, i1 false), !noalias !47881
  store i8 12, ptr %0, align 8
  %.sroa.4.sroa.3.0..sroa.4.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %2, ptr %.sroa.4.sroa.3.0..sroa.4.0..sroa_idx.sroa_idx, align 8
  %.sroa.4.sroa.4.0..sroa.4.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %.sroa.10.0.i.i, ptr %.sroa.4.sroa.4.0..sroa.4.0..sroa_idx.sroa_idx, align 8
  %.sroa.4.sroa.5.0..sroa.4.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %2, ptr %.sroa.4.sroa.5.0..sroa.4.0..sroa_idx.sroa_idx, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal void @"_ZN87_$LT$tracing_core..field..DebugValue$LT$T$GT$$u20$as$u20$tracing_core..field..Value$GT$6record17h1da87cf7d30654beE"(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(40) %1, ptr noundef nonnull align 1 %2, ptr noalias noundef readonly align 8 captures(none) dereferenceable(104) %3) unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 96
  %i.b = load ptr, ptr %i.a, align 8, !invariant.load !24, !nonnull !24
  tail call void %i.b(ptr noundef nonnull align 1 %2, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %1, ptr noundef nonnull align 1 %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @1773)
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal void @"_ZN87_$LT$tracing_core..field..DebugValue$LT$T$GT$$u20$as$u20$tracing_core..field..Value$GT$6record17h272233088f8882ceE"(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(40) %1, ptr noundef nonnull align 1 %2, ptr noalias noundef readonly align 8 captures(none) dereferenceable(104) %3) unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 96
  %i.b = load ptr, ptr %i.a, align 8, !invariant.load !24, !nonnull !24
  tail call void %i.b(ptr noundef nonnull align 1 %2, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %1, ptr noundef nonnull align 1 %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @1774)
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal void @"_ZN87_$LT$tracing_core..field..DebugValue$LT$T$GT$$u20$as$u20$tracing_core..field..Value$GT$6record17h34b79899ac6a8755E"(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(40) %1, ptr noundef nonnull align 1 %2, ptr noalias noundef readonly align 8 captures(none) dereferenceable(104) %3) unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 96
  %i.b = load ptr, ptr %i.a, align 8, !invariant.load !24, !nonnull !24
  tail call void %i.b(ptr noundef nonnull align 1 %2, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %1, ptr noundef nonnull align 1 %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @1775)
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal void @"_ZN87_$LT$tracing_core..field..DebugValue$LT$T$GT$$u20$as$u20$tracing_core..field..Value$GT$6record17h44f80f383d2ca584E"(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(40) %1, ptr noundef nonnull align 1 %2, ptr noalias noundef readonly align 8 captures(none) dereferenceable(104) %3) unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 96
  %i.b = load ptr, ptr %i.a, align 8, !invariant.load !24, !nonnull !24
  tail call void %i.b(ptr noundef nonnull align 1 %2, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %1, ptr noundef nonnull align 1 %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @1776)
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal void @"_ZN87_$LT$tracing_core..field..DebugValue$LT$T$GT$$u20$as$u20$tracing_core..field..Value$GT$6record17h5b268225765d7e6aE"(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(40) %1, ptr noundef nonnull align 1 %2, ptr noalias noundef readonly align 8 captures(none) dereferenceable(104) %3) unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 96
  %i.b = load ptr, ptr %i.a, align 8, !invariant.load !24, !nonnull !24
  tail call void %i.b(ptr noundef nonnull align 1 %2, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %1, ptr noundef nonnull align 1 %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @1675)
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal void @"_ZN87_$LT$tracing_core..field..DebugValue$LT$T$GT$$u20$as$u20$tracing_core..field..Value$GT$6record17h7964197691e8d486E"(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(40) %1, ptr noundef nonnull align 1 %2, ptr noalias noundef readonly align 8 captures(none) dereferenceable(104) %3) unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 96
  %i.b = load ptr, ptr %i.a, align 8, !invariant.load !24, !nonnull !24
  tail call void %i.b(ptr noundef nonnull align 1 %2, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %1, ptr noundef nonnull align 1 %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @1777)
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc noundef align 8 ptr @"_ZN88_$LT$serde_json..ser..Compound$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..SerializeMap$GT$15serialize_value17h44bb05d75d44ad41E"(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(72) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 6 uses
  %i.b = load i8, ptr %0, align 8, !range !38, !noundef !24
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.b, label %bb.c, !prof !26

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN4core9panicking5panic17ha264d2bb233f2b69E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @97, i64 noundef 40, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1779) #54
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !nonnull !24, !align !31, !noundef !24 ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  br label %bb.d

bb.d:                                             ; preds = %bb.j, %bb.c
  %.sroa.0.042.i.i = phi ptr [ @471, %bb.c ], [ %.sroa.0.116.i.i, %bb.j ] ; 3 uses
  %.sroa.5.041.i.i = phi i64 [ 2, %bb.c ], [ %.sroa.5.114.i.i, %bb.j ] ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !47889
  %i.g = tail call { i64, ptr } @"_ZN52_$LT$$RF$std..fs..File$u20$as$u20$std..io..Write$GT$5write17h67386e57384e2d63E"(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.e, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %.sroa.0.042.i.i, i64 noundef %.sroa.5.041.i.i) ; 2 uses
  %i.h = extractvalue { i64, ptr } %i.g, 0        ; 2 uses
  %i.i = extractvalue { i64, ptr } %i.g, 1        ; 11 uses
  store i64 %i.h, ptr %i.a, align 8, !noalias !47889
  store ptr %i.i, ptr %i.f, align 8, !noalias !47889
  %i.j = trunc nuw i64 %i.h to i1
  %i.k = ptrtoint ptr %i.i to i64                 ; 7 uses
  br i1 %i.j, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.l = and i64 %i.k, 3
  switch i64 %i.l, label %default.unreachable [
    i64 2, label %.split.i.i
    i64 3, label %bb.i
    i64 0, label %.split36.i.i
    i64 1, label %.split35.i.i
  ], !prof !25

default.unreachable:                              ; preds = %bb.e
  unreachable

bb.f:                                             ; preds = %bb.d
  %i.m = icmp eq ptr %i.i, null
  br i1 %i.m, label %"_ZN79_$LT$serde_json..ser..PrettyFormatter$u20$as$u20$serde_json..ser..Formatter$GT$18begin_object_value17h85bddde9a506327cE.exit.thread12", label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.n = icmp ult i64 %.sroa.5.041.i.i, %i.k
  br i1 %i.n, label %.noexc.i.i, label %bb.h, !prof !26

.noexc.i.i:                                       ; preds = %bb.g
  tail call void @_ZN4core5slice5index16slice_index_fail17hfe436548ecebea33E(i64 noundef %i.k, i64 noundef range(i64 1, 0) %.sroa.5.041.i.i, i64 noundef range(i64 1, 0) %.sroa.5.041.i.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @443) #54
  unreachable

bb.h:                                             ; preds = %bb.g
  %i.o = sub nuw nsw i64 %.sroa.5.041.i.i, %i.k
  %i.p = getelementptr inbounds nuw i8, ptr %.sroa.0.042.i.i, i64 %i.k
  br label %bb.j

.split.i.i:                                       ; preds = %bb.e
  %.mask37.i.i = and i64 %i.k, -4294967296
  %i.q = icmp eq i64 %.mask37.i.i, 17179869184
  br i1 %i.q, label %.thread.i.i, label %"_ZN79_$LT$serde_json..ser..PrettyFormatter$u20$as$u20$serde_json..ser..Formatter$GT$18begin_object_value17h85bddde9a506327cE.exit"

.split36.i.i:                                     ; preds = %bb.e
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.i) ]
  %i.r = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %i.s = load i8, ptr %i.r, align 8, !range !27, !noundef !24
  %i.t = icmp eq i8 %i.s, 35
  br i1 %i.t, label %.thread.i.i, label %"_ZN79_$LT$serde_json..ser..PrettyFormatter$u20$as$u20$serde_json..ser..Formatter$GT$18begin_object_value17h85bddde9a506327cE.exit.thread12"

.split35.i.i:                                     ; preds = %bb.e
  %i.u = getelementptr i8, ptr %i.i, i64 15
  %i.v = load i8, ptr %i.u, align 8, !range !27, !noundef !24
  %i.w = icmp eq i8 %i.v, 35
  br i1 %i.w, label %.thread.i.i, label %"_ZN79_$LT$serde_json..ser..PrettyFormatter$u20$as$u20$serde_json..ser..Formatter$GT$18begin_object_value17h85bddde9a506327cE.exit.thread12"

bb.i:                                             ; preds = %bb.e
  %i.x = icmp ult ptr %i.i, inttoptr (i64 180388626432 to ptr)
  tail call void @llvm.assume(i1 %i.x)
  %.mask.i.i = and i64 %i.k, -4294967296
  %i.y = icmp eq i64 %.mask.i.i, 150323855360
  br i1 %i.y, label %.thread.i.i, label %"_ZN79_$LT$serde_json..ser..PrettyFormatter$u20$as$u20$serde_json..ser..Formatter$GT$18begin_object_value17h85bddde9a506327cE.exit"

.thread.i.i:                                      ; preds = %bb.i, %.split35.i.i, %.split36.i.i, %.split.i.i
  call void @"_ZN4core3ptr42drop_in_place$LT$std..io..error..Error$GT$17ha15fe409393fbeaeE"(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.f)
  br label %bb.j

bb.j:                                             ; preds = %.thread.i.i, %bb.h
  %.sroa.0.116.i.i = phi ptr [ %.sroa.0.042.i.i, %.thread.i.i ], [ %i.p, %bb.h ]
  %.sroa.5.114.i.i = phi i64 [ %.sroa.5.041.i.i, %.thread.i.i ], [ %i.o, %bb.h ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !47889
  %i.z = icmp eq i64 %.sroa.5.114.i.i, 0
  br i1 %i.z, label %"_ZN79_$LT$serde_json..ser..PrettyFormatter$u20$as$u20$serde_json..ser..Formatter$GT$18begin_object_value17h85bddde9a506327cE.exit.thread", label %bb.d

"_ZN79_$LT$serde_json..ser..PrettyFormatter$u20$as$u20$serde_json..ser..Formatter$GT$18begin_object_value17h85bddde9a506327cE.exit.thread12": ; preds = %bb.f, %.split36.i.i, %.split35.i.i
  %.sroa.05.1.i.i.ph = phi ptr [ %i.i, %.split35.i.i ], [ %i.i, %.split36.i.i ], [ @442, %bb.f ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !47889
  br label %bb.k

"_ZN79_$LT$serde_json..ser..PrettyFormatter$u20$as$u20$serde_json..ser..Formatter$GT$18begin_object_value17h85bddde9a506327cE.exit": ; preds = %.split.i.i, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !47889
  %.not = icmp eq ptr %i.i, null
  br i1 %.not, label %"_ZN79_$LT$serde_json..ser..PrettyFormatter$u20$as$u20$serde_json..ser..Formatter$GT$18begin_object_value17h85bddde9a506327cE.exit.thread", label %bb.k, !prof !28

bb.k:                                             ; preds = %"_ZN79_$LT$serde_json..ser..PrettyFormatter$u20$as$u20$serde_json..ser..Formatter$GT$18begin_object_value17h85bddde9a506327cE.exit.thread12", %"_ZN79_$LT$serde_json..ser..PrettyFormatter$u20$as$u20$serde_json..ser..Formatter$GT$18begin_object_value17h85bddde9a506327cE.exit"
  %.sroa.05.1.i.i15 = phi ptr [ %.sroa.05.1.i.i.ph, %"_ZN79_$LT$serde_json..ser..PrettyFormatter$u20$as$u20$serde_json..ser..Formatter$GT$18begin_object_value17h85bddde9a506327cE.exit.thread12" ], [ %i.i, %"_ZN79_$LT$serde_json..ser..PrettyFormatter$u20$as$u20$serde_json..ser..Formatter$GT$18begin_object_value17h85bddde9a506327cE.exit" ]
  %i.aa = tail call noundef nonnull align 8 ptr @_ZN10serde_json5error5Error2io17hee74e472dc93099bE(ptr noundef nonnull %.sroa.05.1.i.i15)
  br label %bb.m

"_ZN79_$LT$serde_json..ser..PrettyFormatter$u20$as$u20$serde_json..ser..Formatter$GT$18begin_object_value17h85bddde9a506327cE.exit.thread": ; preds = %bb.j, %"_ZN79_$LT$serde_json..ser..PrettyFormatter$u20$as$u20$serde_json..ser..Formatter$GT$18begin_object_value17h85bddde9a506327cE.exit"
  %i.ab = tail call fastcc noundef align 8 ptr @"_ZN10serde_json5value3ser81_$LT$impl$u20$serde_core..ser..Serialize$u20$for$u20$serde_json..value..Value$GT$9serialize17h64b7b870146aa089E"(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(72) %1, ptr noalias noundef align 8 dereferenceable(40) %i.e) ; 2 uses
  %.not9 = icmp eq ptr %i.ab, null
  br i1 %.not9, label %bb.l, label %bb.m

bb.l:                                             ; preds = %"_ZN79_$LT$serde_json..ser..PrettyFormatter$u20$as$u20$serde_json..ser..Formatter$GT$18begin_object_value17h85bddde9a506327cE.exit.thread"
  %i.ac = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  store i8 1, ptr %i.ac, align 8, !alias.scope !47890
  br label %bb.m

bb.m:                                             ; preds = %"_ZN79_$LT$serde_json..ser..PrettyFormatter$u20$as$u20$serde_json..ser..Formatter$GT$18begin_object_value17h85bddde9a506327cE.exit.thread", %bb.k, %bb.l
  %.sroa.0.1 = phi ptr [ %i.aa, %bb.k ], [ null, %bb.l ], [ %i.ab, %"_ZN79_$LT$serde_json..ser..PrettyFormatter$u20$as$u20$serde_json..ser..Formatter$GT$18begin_object_value17h85bddde9a506327cE.exit.thread" ]
  ret ptr %.sroa.0.1
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef { ptr, i64 } @"_ZN88_$LT$tracing_subscriber..filter..directive..ParseError$u20$as$u20$core..error..Error$GT$11description17h9a85d959518bf14fE"(ptr noalias readonly align 8 captures(none) %0) unnamed_addr #7 {
bb.a:
  ret { ptr, i64 } { ptr @1783, i64 24 }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define internal { ptr, ptr } @"_ZN88_$LT$tracing_subscriber..filter..directive..ParseError$u20$as$u20$core..error..Error$GT$6source17h576a2701d2a8f8d3E"(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %0) unnamed_addr #6 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !34, !noundef !24
  switch i64 %i.a, label %default.unreachable1 [
    i64 0, label %bb.b
    i64 1, label %bb.c
    i64 2, label %bb.d
  ]

default.unreachable1:                             ; preds = %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !nonnull !24, !noundef !24
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.e = load ptr, ptr %i.d, align 8, !nonnull !24, !align !31, !noundef !24
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  br label %bb.d

bb.d:                                             ; preds = %bb.a, %bb.c, %bb.b
  %.sroa.4.0 = phi ptr [ %i.e, %bb.b ], [ @1785, %bb.c ], [ undef, %bb.a ]
  %.sroa.0.0 = phi ptr [ %i.c, %bb.b ], [ %i.f, %bb.c ], [ null, %bb.a ]
  %i.g = insertvalue { ptr, ptr } poison, ptr %.sroa.0.0, 0
  %i.h = insertvalue { ptr, ptr } %i.g, ptr %.sroa.4.0, 1
  ret { ptr, ptr } %i.h
}

; Function Attrs: nonlazybind uwtable
define void @"_ZN88_$LT$xtask..common..args..CommonArgs$u20$as$u20$clap_builder..derive..CommandFactory$GT$18command_for_update17h6045969b2f545fd3E"(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([712 x i8]) align 8 captures(none) dereferenceable(712) %0) unnamed_addr #1 {
bb.a:
  %i.a = alloca [712 x i8], align 8               ; 52 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 560
  store ptr @1717, ptr %i.b, align 8, !alias.scope !47893
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 568
  store i64 5, ptr %i.c, align 8, !alias.scope !47893
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 576
  store ptr null, ptr %i.d, align 8, !alias.scope !47893
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 696
  store i32 1114112, ptr %i.e, align 8, !alias.scope !47893
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 272
  store i64 -9223372036854775808, ptr %i.f, align 8, !alias.scope !47893
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 296
  store i64 -9223372036854775808, ptr %i.g, align 8, !alias.scope !47893
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 592
  store ptr null, ptr %i.h, align 8, !alias.scope !47893
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 608
  store ptr null, ptr %i.i, align 8, !alias.scope !47893
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 624
  store ptr null, ptr %i.j, align 8, !alias.scope !47893
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 320
  store i64 -9223372036854775808, ptr %i.k, align 8, !alias.scope !47893
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 344
  store i64 -9223372036854775808, ptr %i.l, align 8, !alias.scope !47893
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 368
  store i64 -9223372036854775808, ptr %i.m, align 8, !alias.scope !47893
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 392
  store i64 -9223372036854775808, ptr %i.n, align 8, !alias.scope !47893
  %i.o = getelementptr inbounds nuw i8, ptr %i.a, i64 416
  store i64 -9223372036854775808, ptr %i.o, align 8, !alias.scope !47893
  %i.p = getelementptr inbounds nuw i8, ptr %i.a, i64 440
  store i64 -9223372036854775808, ptr %i.p, align 8, !alias.scope !47893
  %i.q = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  store i64 0, ptr %i.q, align 8, !alias.scope !47893
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.4.0..sroa_idx.i, align 8, !alias.scope !47893
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 72
  %.sroa.424.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 88
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.0..sroa_idx.i, i8 0, i64 16, i1 false), !alias.scope !47893
  store ptr inttoptr (i64 4 to ptr), ptr %.sroa.424.0..sroa_idx.i, align 8, !alias.scope !47893
  %.sroa.525.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 96
  %.sroa.427.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 112
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.525.0..sroa_idx.i, i8 0, i64 16, i1 false), !alias.scope !47893
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.427.0..sroa_idx.i, align 8, !alias.scope !47893
  %.sroa.528.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 120
  store i64 0, ptr %.sroa.528.0..sroa_idx.i, align 8, !alias.scope !47893
  %i.r = getelementptr inbounds nuw i8, ptr %i.a, i64 464
  store i64 -9223372036854775808, ptr %i.r, align 8, !alias.scope !47893
  %i.s = getelementptr inbounds nuw i8, ptr %i.a, i64 488
  store i64 -9223372036854775808, ptr %i.s, align 8, !alias.scope !47893
  %i.t = getelementptr inbounds nuw i8, ptr %i.a, i64 512
  store i64 -9223372036854775808, ptr %i.t, align 8, !alias.scope !47893
  store i64 0, ptr %i.a, align 8, !alias.scope !47893
  %i.u = getelementptr inbounds nuw i8, ptr %i.a, i64 536
  store i64 -9223372036854775808, ptr %i.u, align 8, !alias.scope !47893
  %i.v = getelementptr inbounds nuw i8, ptr %i.a, i64 700
  store i32 0, ptr %i.v, align 4, !alias.scope !47893
  %i.w = getelementptr inbounds nuw i8, ptr %i.a, i64 704
  store i32 0, ptr %i.w, align 8, !alias.scope !47893
  %i.x = getelementptr inbounds nuw i8, ptr %i.a, i64 128
  store i64 0, ptr %i.x, align 8, !alias.scope !47893
  %.sroa.441.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 136
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.441.0..sroa_idx.i, align 8, !alias.scope !47893
  %.sroa.542.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 144
  %.sroa.643.sroa.4.0..sroa.643.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 160
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.542.0..sroa_idx.i, i8 0, i64 16, i1 false), !alias.scope !47893
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.643.sroa.4.0..sroa.643.0..sroa_idx.sroa_idx.i, align 8, !alias.scope !47893
  %.sroa.643.sroa.5.0..sroa.643.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 168
  %.sroa.430.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 184
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.643.sroa.5.0..sroa.643.0..sroa_idx.sroa_idx.i, i8 0, i64 16, i1 false), !alias.scope !47893
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.430.0..sroa_idx.i, align 8, !alias.scope !47893
  %.sroa.531.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 192
  %.sroa.433.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 208
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.531.0..sroa_idx.i, i8 0, i64 16, i1 false), !alias.scope !47893
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.433.0..sroa_idx.i, align 8, !alias.scope !47893
  %.sroa.534.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 216
  store i64 0, ptr %.sroa.534.0..sroa_idx.i, align 8, !alias.scope !47893
  %i.y = getelementptr inbounds nuw i8, ptr %i.a, i64 640
  store ptr null, ptr %i.y, align 8, !alias.scope !47893
  %i.z = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i64 1, ptr %i.z, align 8, !alias.scope !47893
  %i.aa = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i64 0, ptr %i.aa, align 8, !alias.scope !47893
  %i.ab = getelementptr inbounds nuw i8, ptr %i.a, i64 656
  store ptr null, ptr %i.ab, align 8, !alias.scope !47893
  %i.ac = getelementptr inbounds nuw i8, ptr %i.a, i64 672
  store ptr null, ptr %i.ac, align 8, !alias.scope !47893
  %i.ad = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store i64 5, ptr %i.ad, align 8, !alias.scope !47893
  %i.ae = getelementptr inbounds nuw i8, ptr %i.a, i64 708
  store i8 0, ptr %i.ae, align 4, !alias.scope !47893
  %i.af = getelementptr inbounds nuw i8, ptr %i.a, i64 688
  store ptr null, ptr %i.af, align 8, !alias.scope !47893
  %i.ag = getelementptr inbounds nuw i8, ptr %i.a, i64 224
  store i64 0, ptr %i.ag, align 8, !alias.scope !47893
  %.sroa.455.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 232
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.455.0..sroa_idx.i, align 8, !alias.scope !47893
  %.sroa.556.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 240
  %.sroa.657.sroa.4.0..sroa.657.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 256
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.556.0..sroa_idx.i, i8 0, i64 16, i1 false), !alias.scope !47893
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.657.sroa.4.0..sroa.657.0..sroa_idx.sroa_idx.i, align 8, !alias.scope !47893
  %.sroa.657.sroa.5.0..sroa.657.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 264
  store i64 0, ptr %.sroa.657.sroa.5.0..sroa.657.0..sroa_idx.sroa_idx.i, align 8, !alias.scope !47893
  call void @"_ZN78_$LT$xtask..common..args..CommonArgs$u20$as$u20$clap_builder..derive..Args$GT$23augment_args_for_update17hb23458da39a4c5d6E"(ptr noalias noundef nonnull sret([712 x i8]) align 8 captures(address) dereferenceable(712) %0, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(712) %i.a)
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @"_ZN88_$LT$xtask..common..args..CommonArgs$u20$as$u20$clap_builder..derive..CommandFactory$GT$7command17h8f0035cade5f1b23E"(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([712 x i8]) align 8 captures(none) dereferenceable(712) %0) unnamed_addr #1 {
bb.a:
  %i.a = alloca [712 x i8], align 8               ; 52 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 560
  store ptr @1717, ptr %i.b, align 8, !alias.scope !47896
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 568
  store i64 5, ptr %i.c, align 8, !alias.scope !47896
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 576
  store ptr null, ptr %i.d, align 8, !alias.scope !47896
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 696
  store i32 1114112, ptr %i.e, align 8, !alias.scope !47896
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 272
  store i64 -9223372036854775808, ptr %i.f, align 8, !alias.scope !47896
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 296
  store i64 -9223372036854775808, ptr %i.g, align 8, !alias.scope !47896
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 592
  store ptr null, ptr %i.h, align 8, !alias.scope !47896
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 608
  store ptr null, ptr %i.i, align 8, !alias.scope !47896
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 624
  store ptr null, ptr %i.j, align 8, !alias.scope !47896
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 320
  store i64 -9223372036854775808, ptr %i.k, align 8, !alias.scope !47896
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 344
  store i64 -9223372036854775808, ptr %i.l, align 8, !alias.scope !47896
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 368
  store i64 -9223372036854775808, ptr %i.m, align 8, !alias.scope !47896
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 392
  store i64 -9223372036854775808, ptr %i.n, align 8, !alias.scope !47896
  %i.o = getelementptr inbounds nuw i8, ptr %i.a, i64 416
  store i64 -9223372036854775808, ptr %i.o, align 8, !alias.scope !47896
  %i.p = getelementptr inbounds nuw i8, ptr %i.a, i64 440
  store i64 -9223372036854775808, ptr %i.p, align 8, !alias.scope !47896
  %i.q = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  store i64 0, ptr %i.q, align 8, !alias.scope !47896
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.4.0..sroa_idx.i, align 8, !alias.scope !47896
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 72
  %.sroa.424.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 88
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.0..sroa_idx.i, i8 0, i64 16, i1 false), !alias.scope !47896
  store ptr inttoptr (i64 4 to ptr), ptr %.sroa.424.0..sroa_idx.i, align 8, !alias.scope !47896
  %.sroa.525.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 96
  %.sroa.427.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 112
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.525.0..sroa_idx.i, i8 0, i64 16, i1 false), !alias.scope !47896
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.427.0..sroa_idx.i, align 8, !alias.scope !47896
  %.sroa.528.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 120
  store i64 0, ptr %.sroa.528.0..sroa_idx.i, align 8, !alias.scope !47896
  %i.r = getelementptr inbounds nuw i8, ptr %i.a, i64 464
  store i64 -9223372036854775808, ptr %i.r, align 8, !alias.scope !47896
  %i.s = getelementptr inbounds nuw i8, ptr %i.a, i64 488
  store i64 -9223372036854775808, ptr %i.s, align 8, !alias.scope !47896
  %i.t = getelementptr inbounds nuw i8, ptr %i.a, i64 512
  store i64 -9223372036854775808, ptr %i.t, align 8, !alias.scope !47896
  store i64 0, ptr %i.a, align 8, !alias.scope !47896
end_hunk_1
