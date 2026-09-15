Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/meilisearch-rs/original/insta-020b41739abf7dee.insta.f5a96bf8015bdfbc-cgu.0?download=true
inline.NumInlined: 7723
inline.NumDeleted: 3104
loop-unroll.NumCompletelyUnrolled: 22
loop-unroll.NumRuntimeUnrolled: 123
loop-unroll.NumUnrolled: 145
begin_hunk_0_@_ZN5insta8settings8Settings18_private_inner_mut17hbb08bee79c673486E:bb.a
  %i.aj = icmp eq i64 %i.ai, 1
  br i1 %i.aj, label %bb.q, label %"_ZN5alloc4sync16Arc$LT$T$C$A$GT$8make_mut17h36fc560db24ff834E.exit"

bb.q:                                             ; preds = %bb.p
  fence acquire
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.f, i64 noundef 208, i64 noundef 16) #51, !noalias !17473
  br label %"_ZN5alloc4sync16Arc$LT$T$C$A$GT$8make_mut17h36fc560db24ff834E.exit"

bb.r:                                             ; preds = %bb.br
  %i.ak = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #56, !noalias !17473
  unreachable

"_ZN4core3ptr77drop_in_place$LT$alloc..sync..Weak$LT$insta..settings..ActualSettings$GT$$GT$17heb24191375fd8abfE.exit.i": ; preds = %bb.bs, %.noexc, %.thread.i, %bb.j, %bb.i, %bb.h
  %.pn6.pn.i = phi { ptr, i32 } [ %i.t, %bb.j ], [ %i.fy, %.thread.i ], [ %i.t, %bb.h ], [ %i.t, %bb.i ], [ %eh.lpad-body34.i, %.noexc ], [ %eh.lpad-body34.i, %bb.bs ]
  resume { ptr, i32 } %.pn6.pn.i

bb.s:                                             ; preds = %"_ZN5alloc4sync28UniqueArcUninit$LT$T$C$A$GT$3new28_$u7b$$u7b$closure$u7d$$u7d$17hebb5669e2ca0e0feE.exit.i.i.i"
  store i64 1, ptr %.sroa.07.0.i.i.i.i.i.i, align 16, !noalias !17474
  %i.al = getelementptr inbounds nuw i8, ptr %.sroa.07.0.i.i.i.i.i.i, i64 8
  store i64 1, ptr %i.al, align 8, !noalias !17474
  %i.am = getelementptr inbounds nuw i8, ptr %.sroa.07.0.i.i.i.i.i.i, i64 16
  tail call void @llvm.experimental.noalias.scope.decl(metadata !17476)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !17477)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !17478)
  %i.an = getelementptr inbounds nuw i8, ptr %i.f, i64 200
  %i.ao = load i8, ptr %i.an, align 8, !range !21, !alias.scope !17479, !noalias !17480, !noundef !17
  %i.ap = getelementptr inbounds nuw i8, ptr %i.f, i64 136
  %.val12.i.i.i.i = load ptr, ptr %i.ap, align 8, !alias.scope !17479, !noalias !17480, !nonnull !17, !noundef !17
  %i.aq = getelementptr inbounds nuw i8, ptr %i.f, i64 144
  %.val13.i.i.i.i = load i64, ptr %i.aq, align 8, !alias.scope !17479, !noalias !17480, !noundef !17 ; 8 uses
  %i.ar = icmp slt i64 %.val13.i.i.i.i, 0
  br i1 %i.ar, label %bb.t, label %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i.i.i, !prof !15

_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i.i.i: ; preds = %bb.s
  %i.as = icmp eq i64 %.val13.i.i.i.i, 0          ; 2 uses
  br i1 %i.as, label %"_ZN67_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..clone..Clone$GT$5clone17hfb99831cc3ccaaa8E.exit.i.i.i.i", label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h2c5e185936086779E.exit.i.i.i.i.i.i.i.i"

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h2c5e185936086779E.exit.i.i.i.i.i.i.i.i": ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i.i.i
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #51, !noalias !17481
  %i.at = tail call noundef ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef %.val13.i.i.i.i, i64 noundef range(i64 1, 17) 1) #51, !noalias !17481 ; 2 uses
  %i.au = icmp eq ptr %i.at, null
  br i1 %i.au, label %bb.t, label %"_ZN67_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..clone..Clone$GT$5clone17hfb99831cc3ccaaa8E.exit.i.i.i.i"

bb.t:                                             ; preds = %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h2c5e185936086779E.exit.i.i.i.i.i.i.i.i", %bb.s
  %.sroa.4.0.ph.i.i.i.i.i.i.i = phi i64 [ 1, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h2c5e185936086779E.exit.i.i.i.i.i.i.i.i" ], [ 0, %bb.s ]
  invoke void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef %.sroa.4.0.ph.i.i.i.i.i.i.i, i64 %.val13.i.i.i.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @927) #54
          to label %.noexc20.i unwind label %.thread35.i, !noalias !17473

.thread35.i:                                      ; preds = %bb.t
  %i.av = landingpad { ptr, i32 }
          cleanup
  br label %bb.br

.noexc20.i:                                       ; preds = %bb.t
  unreachable

"_ZN67_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..clone..Clone$GT$5clone17hfb99831cc3ccaaa8E.exit.i.i.i.i": ; preds = %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h2c5e185936086779E.exit.i.i.i.i.i.i.i.i", %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i.i.i
  %.sroa.10.0.i.i.i.i.i.i.i = phi ptr [ inttoptr (i64 1 to ptr), %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i.i.i ], [ %i.at, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h2c5e185936086779E.exit.i.i.i.i.i.i.i.i" ] ; 3 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %.sroa.10.0.i.i.i.i.i.i.i, ptr nonnull readonly align 1 %.val12.i.i.i.i, i64 %.val13.i.i.i.i, i1 false), !noalias !17482
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !17483
  %i.aw = getelementptr inbounds nuw i8, ptr %i.f, i64 152
  invoke void @"_ZN60_$LT$alloc..string..String$u20$as$u20$core..clone..Clone$GT$5clone17h123bb51dd192bfa5E"(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.e, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.aw, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @772)
          to label %bb.w unwind label %bb.v, !noalias !17480

"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17ha696533577fe6bb3E.exit.i.i.i.i": ; preds = %bb.aa, %"_ZN4core3ptr67drop_in_place$LT$core..option..Option$LT$std..path..PathBuf$GT$$GT$17hde2d505bd749e340E.exit.i.i.i.i", %bb.v
  %.pn.pn.pn.pn.i.i.i.i = phi { ptr, i32 } [ %i.ax, %bb.v ], [ %.pn.pn.pn.i.i.i.i, %"_ZN4core3ptr67drop_in_place$LT$core..option..Option$LT$std..path..PathBuf$GT$$GT$17hde2d505bd749e340E.exit.i.i.i.i" ], [ %.pn.pn.pn.i.i.i.i, %bb.aa ] ; 2 uses
  br i1 %i.as, label %bb.br, label %bb.u

bb.u:                                             ; preds = %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17ha696533577fe6bb3E.exit.i.i.i.i"
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.10.0.i.i.i.i.i.i.i, i64 noundef %.val13.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #51, !noalias !17480
  br label %bb.br

bb.v:                                             ; preds = %"_ZN67_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..clone..Clone$GT$5clone17hfb99831cc3ccaaa8E.exit.i.i.i.i"
  %i.ax = landingpad { ptr, i32 }
          cleanup
  br label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17ha696533577fe6bb3E.exit.i.i.i.i"

bb.w:                                             ; preds = %"_ZN67_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..clone..Clone$GT$5clone17hfb99831cc3ccaaa8E.exit.i.i.i.i"
  %i.ay = getelementptr inbounds nuw i8, ptr %i.f, i64 80
  %i.az = load i64, ptr %i.ay, align 16, !range !30, !alias.scope !17479, !noalias !17480, !noundef !17
  %.not.i.i.i.i = icmp eq i64 %i.az, -9223372036854775808
  br i1 %.not.i.i.i.i, label %bb.z, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.ba = getelementptr inbounds nuw i8, ptr %i.f, i64 88
  %.val10.i.i.i.i = load ptr, ptr %i.ba, align 8, !alias.scope !17479, !noalias !17480, !nonnull !17, !noundef !17
  %i.bb = getelementptr inbounds nuw i8, ptr %i.f, i64 96
  %.val11.i.i.i.i = load i64, ptr %i.bb, align 16, !alias.scope !17479, !noalias !17480, !noundef !17 ; 7 uses
  %i.bc = icmp slt i64 %.val11.i.i.i.i, 0
  br i1 %i.bc, label %bb.y, label %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i16.i.i.i.i, !prof !15

_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i16.i.i.i.i: ; preds = %bb.x
  %i.bd = icmp eq i64 %.val11.i.i.i.i, 0
  br i1 %i.bd, label %bb.ac, label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h2c5e185936086779E.exit.i.i.i.i17.i.i.i.i"

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h2c5e185936086779E.exit.i.i.i.i17.i.i.i.i": ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i16.i.i.i.i
  call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #51, !noalias !17484
  %i.be = call noundef ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef %.val11.i.i.i.i, i64 noundef range(i64 1, 17) 1) #51, !noalias !17484 ; 2 uses
  %i.bf = icmp eq ptr %i.be, null
  br i1 %i.bf, label %bb.y, label %bb.ac

bb.y:                                             ; preds = %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h2c5e185936086779E.exit.i.i.i.i17.i.i.i.i", %bb.x
  %.sroa.4.0.ph.i.i.i21.i.i.i.i = phi i64 [ 1, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h2c5e185936086779E.exit.i.i.i.i17.i.i.i.i" ], [ 0, %bb.x ]
  invoke void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef %.sroa.4.0.ph.i.i.i21.i.i.i.i, i64 %.val11.i.i.i.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @927) #54
          to label %.noexc.i.i.i.i unwind label %bb.ab, !noalias !17480

.noexc.i.i.i.i:                                   ; preds = %bb.y
  unreachable

bb.z:                                             ; preds = %bb.ac, %bb.w
  %.sroa.7.0.i.i.i.i = phi i64 [ %.val11.i.i.i.i, %bb.ac ], [ undef, %bb.w ]
  %.sroa.635.0.i.i.i.i = phi ptr [ %.sroa.10.0.i.i.i18.i.i.i.i, %bb.ac ], [ undef, %bb.w ] ; 3 uses
  %.sroa.033.0.i.i.i.i = phi i64 [ %.val11.i.i.i.i, %bb.ac ], [ -9223372036854775808, %bb.w ] ; 3 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %i.f, i64 104 ; 2 uses
  %i.bh = load i64, ptr %i.bg, align 8, !range !30, !alias.scope !17479, !noalias !17480, !noundef !17
  %.not1.i.i.i.i = icmp eq i64 %i.bh, -9223372036854775808
  br i1 %.not1.i.i.i.i, label %bb.ae, label %bb.ad

"_ZN4core3ptr67drop_in_place$LT$core..option..Option$LT$std..path..PathBuf$GT$$GT$17hde2d505bd749e340E.exit.i.i.i.i": ; preds = %bb.af, %"_ZN4core3ptr70drop_in_place$LT$core..option..Option$LT$alloc..string..String$GT$$GT$17h57b07c7444f77050E.exit.i.i.i.i", %"_ZN4core3ptr70drop_in_place$LT$core..option..Option$LT$alloc..string..String$GT$$GT$17h57b07c7444f77050E.exit.i.i.i.i", %bb.ab
  %.pn.pn.pn.i.i.i.i = phi { ptr, i32 } [ %i.bk, %bb.ab ], [ %.pn.pn.i.i.i.i, %"_ZN4core3ptr70drop_in_place$LT$core..option..Option$LT$alloc..string..String$GT$$GT$17h57b07c7444f77050E.exit.i.i.i.i" ], [ %.pn.pn.i.i.i.i, %"_ZN4core3ptr70drop_in_place$LT$core..option..Option$LT$alloc..string..String$GT$$GT$17h57b07c7444f77050E.exit.i.i.i.i" ], [ %.pn.pn.i.i.i.i, %bb.af ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !17485)
  %.val.i.i.i.i.i = load i64, ptr %i.e, align 8, !alias.scope !17485, !noalias !17483 ; 2 uses
  %i.bi = icmp eq i64 %.val.i.i.i.i.i, 0
  br i1 %i.bi, label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17ha696533577fe6bb3E.exit.i.i.i.i", label %bb.aa

bb.aa:                                            ; preds = %"_ZN4core3ptr67drop_in_place$LT$core..option..Option$LT$std..path..PathBuf$GT$$GT$17hde2d505bd749e340E.exit.i.i.i.i"
  %i.bj = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %.val1.i.i.i.i.i = load ptr, ptr %i.bj, align 8, !alias.scope !17485, !noalias !17483, !nonnull !17, !noundef !17
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i.i.i, i64 noundef %.val.i.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #51, !noalias !17486
  br label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17ha696533577fe6bb3E.exit.i.i.i.i"

bb.ab:                                            ; preds = %bb.y
  %i.bk = landingpad { ptr, i32 }
          cleanup
  br label %"_ZN4core3ptr67drop_in_place$LT$core..option..Option$LT$std..path..PathBuf$GT$$GT$17hde2d505bd749e340E.exit.i.i.i.i"

bb.ac:                                            ; preds = %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h2c5e185936086779E.exit.i.i.i.i17.i.i.i.i", %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i16.i.i.i.i
  %.sroa.10.0.i.i.i18.i.i.i.i = phi ptr [ inttoptr (i64 1 to ptr), %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i16.i.i.i.i ], [ %i.be, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h2c5e185936086779E.exit.i.i.i.i17.i.i.i.i" ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %.sroa.10.0.i.i.i18.i.i.i.i, ptr nonnull readonly align 1 %.val10.i.i.i.i, i64 %.val11.i.i.i.i, i1 false), !noalias !17487
  br label %bb.z

bb.ad:                                            ; preds = %bb.z
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !17483
  invoke void @"_ZN60_$LT$alloc..string..String$u20$as$u20$core..clone..Clone$GT$5clone17h123bb51dd192bfa5E"(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.c, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.bg, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @728)
          to label %bb.ah unwind label %bb.ag, !noalias !17480

bb.ae:                                            ; preds = %bb.ah, %bb.z
  %.sroa.745.0.i.i.i.i = phi i64 [ %.sroa.745.0.copyload.i.i.i.i, %bb.ah ], [ undef, %bb.z ]
  %.sroa.642.0.i.i.i.i = phi ptr [ %.sroa.642.0.copyload.i.i.i.i, %bb.ah ], [ undef, %bb.z ] ; 3 uses
  %.sroa.040.0.i.i.i.i = phi i64 [ %.sroa.040.0.copyload.i.i.i.i, %bb.ah ], [ -9223372036854775808, %bb.z ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !17483
  %i.bl = load i8, ptr %i.l, align 16, !range !40, !alias.scope !17479, !noalias !17480, !noundef !17
  %.not2.i.i.i.i = icmp eq i8 %i.bl, 30
  br i1 %.not2.i.i.i.i, label %bb.aj, label %bb.ai

"_ZN4core3ptr70drop_in_place$LT$core..option..Option$LT$alloc..string..String$GT$$GT$17h57b07c7444f77050E.exit.i.i.i.i": ; preds = %bb.bk, %"_ZN4core3ptr72drop_in_place$LT$core..option..Option$LT$insta..content..Content$GT$$GT$17hc657d58c83dc7dc1E.exit.i.i.i.i", %"_ZN4core3ptr72drop_in_place$LT$core..option..Option$LT$insta..content..Content$GT$$GT$17hc657d58c83dc7dc1E.exit.i.i.i.i", %bb.ag
  %.pn.pn.i.i.i.i = phi { ptr, i32 } [ %i.bm, %bb.ag ], [ %.pn.i.i.i.i, %"_ZN4core3ptr72drop_in_place$LT$core..option..Option$LT$insta..content..Content$GT$$GT$17hc657d58c83dc7dc1E.exit.i.i.i.i" ], [ %.pn.i.i.i.i, %"_ZN4core3ptr72drop_in_place$LT$core..option..Option$LT$insta..content..Content$GT$$GT$17hc657d58c83dc7dc1E.exit.i.i.i.i" ], [ %.pn.i.i.i.i, %bb.bk ] ; 3 uses
  switch i64 %.sroa.033.0.i.i.i.i, label %bb.af [
    i64 -9223372036854775808, label %"_ZN4core3ptr67drop_in_place$LT$core..option..Option$LT$std..path..PathBuf$GT$$GT$17hde2d505bd749e340E.exit.i.i.i.i"
    i64 0, label %"_ZN4core3ptr67drop_in_place$LT$core..option..Option$LT$std..path..PathBuf$GT$$GT$17hde2d505bd749e340E.exit.i.i.i.i"
  ]

bb.af:                                            ; preds = %"_ZN4core3ptr70drop_in_place$LT$core..option..Option$LT$alloc..string..String$GT$$GT$17h57b07c7444f77050E.exit.i.i.i.i"
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.635.0.i.i.i.i) ]
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.635.0.i.i.i.i, i64 noundef %.sroa.033.0.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #51, !noalias !17480
  br label %"_ZN4core3ptr67drop_in_place$LT$core..option..Option$LT$std..path..PathBuf$GT$$GT$17hde2d505bd749e340E.exit.i.i.i.i"

bb.ag:                                            ; preds = %bb.ad
  %i.bm = landingpad { ptr, i32 }
          cleanup
  br label %"_ZN4core3ptr70drop_in_place$LT$core..option..Option$LT$alloc..string..String$GT$$GT$17h57b07c7444f77050E.exit.i.i.i.i"

bb.ah:                                            ; preds = %bb.ad
  %.sroa.040.0.copyload.i.i.i.i = load i64, ptr %i.c, align 8, !noalias !17483
  %.sroa.642.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %.sroa.642.0.copyload.i.i.i.i = load ptr, ptr %.sroa.642.0..sroa_idx.i.i.i.i, align 8, !noalias !17483
  %.sroa.745.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %.sroa.745.0.copyload.i.i.i.i = load i64, ptr %.sroa.745.0..sroa_idx.i.i.i.i, align 8, !noalias !17483
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !17483
  br label %bb.ae

bb.ai:                                            ; preds = %bb.ae
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !17483
  invoke fastcc void @"_ZN62_$LT$insta..content..Content$u20$as$u20$core..clone..Clone$GT$5clone17hb85a41ce83ea0756E"(ptr noalias noundef align 16 captures(address) dereferenceable(64) %i.b, ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(192) %i.l)
          to label %bb.bm unwind label %bb.bl, !noalias !17480

bb.aj:                                            ; preds = %bb.ae
  store i8 30, ptr %i.d, align 16, !noalias !17483
  br label %bb.ak

bb.ak:                                            ; preds = %bb.bm, %bb.aj
  %i.bn = getelementptr inbounds nuw i8, ptr %i.f, i64 201
  %i.bo = load i8, ptr %i.bn, align 1, !range !21, !alias.scope !17479, !noalias !17480, !noundef !17
  %i.bp = getelementptr inbounds nuw i8, ptr %i.f, i64 202
  %i.bq = load i8, ptr %i.bp, align 2, !range !21, !alias.scope !17479, !noalias !17480, !noundef !17
  %i.br = getelementptr inbounds nuw i8, ptr %i.f, i64 184
  %.val14.i.i.i.i = load ptr, ptr %i.br, align 8, !alias.scope !17479, !noalias !17480, !nonnull !17, !noundef !17 ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %i.f, i64 192
  %.val15.i.i.i.i = load i64, ptr %i.bs, align 16, !alias.scope !17479, !noalias !17480, !noundef !17 ; 7 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !17488)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !17489
  %i.bt = shl i64 %.val15.i.i.i.i, 5              ; 4 uses
  %i.bu = icmp ugt i64 %.val15.i.i.i.i, 576460752303423487
  %i.bv = icmp ugt i64 %i.bt, 9223372036854775800
  %or.cond.i.i.i.i.i.i.i.i.i = or i1 %i.bu, %i.bv
  br i1 %or.cond.i.i.i.i.i.i.i.i.i, label %bb.al, label %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i23.i.i.i.i, !prof !15

_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i23.i.i.i.i: ; preds = %bb.ak
  %i.bw = icmp eq i64 %i.bt, 0
  br i1 %i.bw, label %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17hd5e7ac0f9a14006eE.exit.thread.i.i.i.i.i.i", label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h2c5e185936086779E.exit.i.i.i.i24.i.i.i.i"

"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17hd5e7ac0f9a14006eE.exit.thread.i.i.i.i.i.i": ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i23.i.i.i.i
  %i.bx = icmp eq i64 %.val15.i.i.i.i, 0
  call void @llvm.assume(i1 %i.bx)
  store i64 0, ptr %i.a, align 8, !noalias !17489
  %i.by = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %i.by, align 8, !noalias !17489
  %i.bz = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  br label %.loopexit.i

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h2c5e185936086779E.exit.i.i.i.i24.i.i.i.i": ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i23.i.i.i.i
  call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #51, !noalias !17490
  %i.ca = call noundef align 8 ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef %i.bt, i64 noundef range(i64 1, 17) 8) #51, !noalias !17490 ; 3 uses
  %i.cb = icmp eq ptr %i.ca, null
  br i1 %i.cb, label %bb.al, label %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17hd5e7ac0f9a14006eE.exit.i.i.i.i.i.i"

bb.al:                                            ; preds = %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h2c5e185936086779E.exit.i.i.i.i24.i.i.i.i", %bb.ak
  %.sroa.4.0.ph.i.i.i25.i.i.i.i = phi i64 [ 8, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h2c5e185936086779E.exit.i.i.i.i24.i.i.i.i" ], [ 0, %bb.ak ]
  invoke void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef %.sroa.4.0.ph.i.i.i25.i.i.i.i, i64 %i.bt, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @928) #54
          to label %.noexc26.i.i.i.i unwind label %bb.bn, !noalias !17480

.noexc26.i.i.i.i:                                 ; preds = %bb.al
  unreachable

"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17hd5e7ac0f9a14006eE.exit.i.i.i.i.i.i": ; preds = %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h2c5e185936086779E.exit.i.i.i.i24.i.i.i.i"
  store i64 %.val15.i.i.i.i, ptr %i.a, align 8, !noalias !17489
  %i.cc = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %i.ca, ptr %i.cc, align 8, !noalias !17489
  %i.cd = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 3 uses
  %i.ce = getelementptr inbounds nuw [32 x i8], ptr %.val14.i.i.i.i, i64 %.val15.i.i.i.i
  br label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %_ZN4core5clone5Clone5clone17h6cc7adb5474e6f2eE.exit.i.i.i.i.i.i, %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17hd5e7ac0f9a14006eE.exit.i.i.i.i.i.i"
  %.sroa.012.060.i.i.i.i.i.i = phi ptr [ %i.ci, %_ZN4core5clone5Clone5clone17h6cc7adb5474e6f2eE.exit.i.i.i.i.i.i ], [ %.val14.i.i.i.i, %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17hd5e7ac0f9a14006eE.exit.i.i.i.i.i.i" ] ; 5 uses
  %.sroa.7.058.i.i.i.i.i.i = phi i64 [ %i.cj, %_ZN4core5clone5Clone5clone17h6cc7adb5474e6f2eE.exit.i.i.i.i.i.i ], [ 0, %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17hd5e7ac0f9a14006eE.exit.i.i.i.i.i.i" ] ; 3 uses
  %.sroa.10.057.i.i.i.i.i.i = phi i64 [ %i.cf, %_ZN4core5clone5Clone5clone17h6cc7adb5474e6f2eE.exit.i.i.i.i.i.i ], [ %.val15.i.i.i.i, %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17hd5e7ac0f9a14006eE.exit.i.i.i.i.i.i" ]
  %i.cf = add nsw i64 %.sroa.10.057.i.i.i.i.i.i, -1 ; 2 uses
  %i.cg = icmp eq ptr %.sroa.012.060.i.i.i.i.i.i, %i.ce
  br i1 %i.cg, label %.loopexit.i, label %bb.an

bb.am:                                            ; preds = %bb.ao
  %i.ch = landingpad { ptr, i32 }
          cleanup
  br label %bb.bj

bb.an:                                            ; preds = %.lr.ph.i.i.i.i.i.i
  %i.ci = getelementptr inbounds nuw i8, ptr %.sroa.012.060.i.i.i.i.i.i, i64 32
  %i.cj = add nuw nsw i64 %.sroa.7.058.i.i.i.i.i.i, 1
  call void @llvm.experimental.noalias.scope.decl(metadata !17491)
  %i.ck = getelementptr inbounds nuw i8, ptr %.sroa.012.060.i.i.i.i.i.i, i64 8
  %.val.i.i.i.i.i.i.i = load ptr, ptr %i.ck, align 8, !alias.scope !17492, !noalias !17493, !nonnull !17, !noundef !17 ; 2 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %.sroa.012.060.i.i.i.i.i.i, i64 16
  %.val1.i.i.i.i.i.i.i = load i64, ptr %i.cl, align 8, !alias.scope !17492, !noalias !17493, !noundef !17 ; 7 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !17494)
  %i.cm = mul i64 %.val1.i.i.i.i.i.i.i, 24        ; 4 uses
  %or.cond.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp ugt i64 %.val1.i.i.i.i.i.i.i, 384307168202282325
  br i1 %or.cond.i.i.i.i.i.i.i.i.i.i.i.i.i, label %bb.ao, label %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i.i.i.i.i.i.i, !prof !15

_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.an
  %i.cn = icmp eq i64 %i.cm, 0
  br i1 %i.cn, label %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17hd5e7ac0f9a14006eE.exit.thread.i.i.i.i.i.i.i.i.i.i", label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h2c5e185936086779E.exit.i.i.i.i.i.i.i.i.i.i.i.i"

"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17hd5e7ac0f9a14006eE.exit.thread.i.i.i.i.i.i.i.i.i.i": ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i.i.i.i.i.i.i
  %i.co = icmp eq i64 %.val1.i.i.i.i.i.i.i, 0
  call void @llvm.assume(i1 %i.co)
  br label %"_ZN65_$LT$insta..redaction..Selector$u20$as$u20$core..clone..Clone$GT$5clone17h3fd97b3541e6e5c0E.exit.i.i.i.i.i.i.i"

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h2c5e185936086779E.exit.i.i.i.i.i.i.i.i.i.i.i.i": ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i.i.i.i.i.i.i
  call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #51, !noalias !17495
  %i.cp = call noundef align 8 ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef %i.cm, i64 noundef range(i64 1, 17) 8) #51, !noalias !17495 ; 6 uses
  %i.cq = icmp eq ptr %i.cp, null
  br i1 %i.cq, label %bb.ao, label %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17hd5e7ac0f9a14006eE.exit.i.i.i.i.i.i.i.i.i.i"

bb.ao:                                            ; preds = %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h2c5e185936086779E.exit.i.i.i.i.i.i.i.i.i.i.i.i", %bb.an
  %.sroa.4.0.ph.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ 8, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h2c5e185936086779E.exit.i.i.i.i.i.i.i.i.i.i.i.i" ], [ 0, %bb.an ]
  invoke void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef %.sroa.4.0.ph.i.i.i.i.i.i.i.i.i.i.i, i64 %i.cm, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @928) #54
          to label %.noexc.i.i.i.i.i.i unwind label %bb.am, !noalias !17496

.noexc.i.i.i.i.i.i:                               ; preds = %bb.ao
  unreachable

"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17hd5e7ac0f9a14006eE.exit.i.i.i.i.i.i.i.i.i.i": ; preds = %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h2c5e185936086779E.exit.i.i.i.i.i.i.i.i.i.i.i.i"
  %i.cr = getelementptr inbounds nuw [24 x i8], ptr %.val.i.i.i.i.i.i.i, i64 %.val1.i.i.i.i.i.i.i
  br label %.lr.ph.i.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i:                       ; preds = %"_ZN67_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..clone..Clone$GT$5clone17ha17d196cb382d7b8E.exit.i.i.i.i.i.i.i.i.i.i", %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17hd5e7ac0f9a14006eE.exit.i.i.i.i.i.i.i.i.i.i"
  %.sroa.014.045.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.cv, %"_ZN67_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..clone..Clone$GT$5clone17ha17d196cb382d7b8E.exit.i.i.i.i.i.i.i.i.i.i" ], [ %.val.i.i.i.i.i.i.i, %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17hd5e7ac0f9a14006eE.exit.i.i.i.i.i.i.i.i.i.i" ] ; 4 uses
  %.sroa.7.043.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.cw, %"_ZN67_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..clone..Clone$GT$5clone17ha17d196cb382d7b8E.exit.i.i.i.i.i.i.i.i.i.i" ], [ 0, %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17hd5e7ac0f9a14006eE.exit.i.i.i.i.i.i.i.i.i.i" ] ; 4 uses
  %.sroa.10.042.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.cs, %"_ZN67_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..clone..Clone$GT$5clone17ha17d196cb382d7b8E.exit.i.i.i.i.i.i.i.i.i.i" ], [ %.val1.i.i.i.i.i.i.i, %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17hd5e7ac0f9a14006eE.exit.i.i.i.i.i.i.i.i.i.i" ]
  %i.cs = add nsw i64 %.sroa.10.042.i.i.i.i.i.i.i.i.i.i, -1 ; 2 uses
  %i.ct = icmp eq ptr %.sroa.014.045.i.i.i.i.i.i.i.i.i.i, %i.cr
  br i1 %i.ct, label %"_ZN65_$LT$insta..redaction..Selector$u20$as$u20$core..clone..Clone$GT$5clone17h3fd97b3541e6e5c0E.exit.i.i.i.i.i.i.i", label %bb.aq

bb.ap:                                            ; preds = %bb.ar
  %i.cu = landingpad { ptr, i32 }
          cleanup
  br label %bb.bd

bb.aq:                                            ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i
  %i.cv = getelementptr inbounds nuw i8, ptr %.sroa.014.045.i.i.i.i.i.i.i.i.i.i, i64 24
  %i.cw = add nuw nsw i64 %.sroa.7.043.i.i.i.i.i.i.i.i.i.i, 1
  %i.cx = getelementptr i8, ptr %.sroa.014.045.i.i.i.i.i.i.i.i.i.i, i64 8
  %.val12.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.cx, align 8, !alias.scope !17494, !noalias !17497, !nonnull !17, !noundef !17 ; 2 uses
  %i.cy = getelementptr i8, ptr %.sroa.014.045.i.i.i.i.i.i.i.i.i.i, i64 16
  %.val13.i.i.i.i.i.i.i.i.i.i = load i64, ptr %i.cy, align 8, !alias.scope !17494, !noalias !17497, !noundef !17 ; 7 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !17498)
  %i.cz = shl i64 %.val13.i.i.i.i.i.i.i.i.i.i, 5  ; 5 uses
  %i.da = icmp ugt i64 %.val13.i.i.i.i.i.i.i.i.i.i, 576460752303423487
  %i.db = icmp ugt i64 %i.cz, 9223372036854775800
  %or.cond.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = or i1 %i.da, %i.db
  br i1 %or.cond.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %bb.ar, label %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i, !prof !15

_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.aq
  %i.dc = icmp eq i64 %i.cz, 0
  br i1 %i.dc, label %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17hd5e7ac0f9a14006eE.exit.thread.i.i.i.i.i.i.i.i.i.i.i.i", label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h2c5e185936086779E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i"

"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17hd5e7ac0f9a14006eE.exit.thread.i.i.i.i.i.i.i.i.i.i.i.i": ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.dd = icmp eq i64 %.val13.i.i.i.i.i.i.i.i.i.i, 0
  call void @llvm.assume(i1 %i.dd)
  br label %"_ZN67_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..clone..Clone$GT$5clone17ha17d196cb382d7b8E.exit.i.i.i.i.i.i.i.i.i.i"

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h2c5e185936086779E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i": ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #51, !noalias !17499
  %i.de = call noundef align 8 ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef %i.cz, i64 noundef range(i64 1, 17) 8) #51, !noalias !17499 ; 6 uses
  %i.df = icmp eq ptr %i.de, null
  br i1 %i.df, label %bb.ar, label %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17hd5e7ac0f9a14006eE.exit.i.i.i.i.i.i.i.i.i.i.i.i"

bb.ar:                                            ; preds = %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h2c5e185936086779E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i", %bb.aq
  %.sroa.4.0.ph.i.i.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ 8, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h2c5e185936086779E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i" ], [ 0, %bb.aq ]
  invoke void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef %.sroa.4.0.ph.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 %i.cz, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @928) #54
          to label %.noexc.i.i.i.i.i.i.i.i.i.i unwind label %bb.ap, !noalias !17500

.noexc.i.i.i.i.i.i.i.i.i.i:                       ; preds = %bb.ar
  unreachable

"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17hd5e7ac0f9a14006eE.exit.i.i.i.i.i.i.i.i.i.i.i.i": ; preds = %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h2c5e185936086779E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i"
  %i.dg = getelementptr inbounds nuw [32 x i8], ptr %.val12.i.i.i.i.i.i.i.i.i.i, i64 %.val13.i.i.i.i.i.i.i.i.i.i
  br label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i:                   ; preds = %"_ZN64_$LT$insta..redaction..Segment$u20$as$u20$core..clone..Clone$GT$5clone17h01170c42f747cda7E.exit.i.i.i.i.i.i.i.i.i.i.i.i", %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17hd5e7ac0f9a14006eE.exit.i.i.i.i.i.i.i.i.i.i.i.i"
  %.sroa.012.044.i.i.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.dj, %"_ZN64_$LT$insta..redaction..Segment$u20$as$u20$core..clone..Clone$GT$5clone17h01170c42f747cda7E.exit.i.i.i.i.i.i.i.i.i.i.i.i" ], [ %.val12.i.i.i.i.i.i.i.i.i.i, %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17hd5e7ac0f9a14006eE.exit.i.i.i.i.i.i.i.i.i.i.i.i" ] ; 12 uses
  %.sroa.7.041.i.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.dk, %"_ZN64_$LT$insta..redaction..Segment$u20$as$u20$core..clone..Clone$GT$5clone17h01170c42f747cda7E.exit.i.i.i.i.i.i.i.i.i.i.i.i" ], [ 0, %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17hd5e7ac0f9a14006eE.exit.i.i.i.i.i.i.i.i.i.i.i.i" ] ; 4 uses
  %.sroa.10.040.i.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.dh, %"_ZN64_$LT$insta..redaction..Segment$u20$as$u20$core..clone..Clone$GT$5clone17h01170c42f747cda7E.exit.i.i.i.i.i.i.i.i.i.i.i.i" ], [ %.val13.i.i.i.i.i.i.i.i.i.i, %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17hd5e7ac0f9a14006eE.exit.i.i.i.i.i.i.i.i.i.i.i.i" ]
  %i.dh = add nsw i64 %.sroa.10.040.i.i.i.i.i.i.i.i.i.i.i.i, -1 ; 2 uses
  %i.di = icmp eq ptr %.sroa.012.044.i.i.i.i.i.i.i.i.i.i.i.i, %i.dg
  br i1 %i.di, label %"_ZN67_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..clone..Clone$GT$5clone17ha17d196cb382d7b8E.exit.i.i.i.i.i.i.i.i.i.i", label %bb.as

bb.as:                                            ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i
  %i.dj = getelementptr inbounds nuw i8, ptr %.sroa.012.044.i.i.i.i.i.i.i.i.i.i.i.i, i64 32
  %i.dk = add nuw nsw i64 %.sroa.7.041.i.i.i.i.i.i.i.i.i.i.i.i, 1
  call void @llvm.experimental.noalias.scope.decl(metadata !17501)
  call void @llvm.experimental.noalias.scope.decl(metadata !17502)
  %i.dl = load i64, ptr %.sroa.012.044.i.i.i.i.i.i.i.i.i.i.i.i, align 8, !range !39, !alias.scope !17503, !noalias !17504, !noundef !17 ; 5 uses
  %i.dm = add nsw i64 %i.dl, -2
  %i.dn = icmp samesign ugt i64 %i.dl, 1
  %i.do = select i1 %i.dn, i64 %i.dm, i64 4
  switch i64 %i.do, label %bb.at [
    i64 0, label %"_ZN64_$LT$insta..redaction..Segment$u20$as$u20$core..clone..Clone$GT$5clone17h01170c42f747cda7E.exit.i.i.i.i.i.i.i.i.i.i.i.i"
    i64 1, label %bb.au
    i64 2, label %bb.av
    i64 3, label %bb.ay
    i64 4, label %bb.az
  ]

bb.at:                                            ; preds = %bb.as
  unreachable

bb.au:                                            ; preds = %bb.as
  br label %"_ZN64_$LT$insta..redaction..Segment$u20$as$u20$core..clone..Clone$GT$5clone17h01170c42f747cda7E.exit.i.i.i.i.i.i.i.i.i.i.i.i"

bb.av:                                            ; preds = %bb.as
  %i.dp = getelementptr inbounds nuw i8, ptr %.sroa.012.044.i.i.i.i.i.i.i.i.i.i.i.i, i64 8
  call void @llvm.experimental.noalias.scope.decl(metadata !17505)
  %i.dq = load i64, ptr %i.dp, align 8, !range !30, !alias.scope !17506, !noalias !17507, !noundef !17
  %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq i64 %i.dq, -9223372036854775808
  %i.dr = getelementptr inbounds nuw i8, ptr %.sroa.012.044.i.i.i.i.i.i.i.i.i.i.i.i, i64 16
  %i.ds = load ptr, ptr %i.dr, align 8, !alias.scope !17506, !noalias !17507, !nonnull !17, !noundef !17 ; 2 uses
  %i.dt = getelementptr inbounds nuw i8, ptr %.sroa.012.044.i.i.i.i.i.i.i.i.i.i.i.i, i64 24
  %i.du = load i64, ptr %i.dt, align 8, !alias.scope !17506, !noalias !17507, !noundef !17 ; 7 uses
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %"_ZN66_$LT$alloc..borrow..Cow$LT$B$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h0b67e6953fab474eE.exit.i.i.i.i.i.i.i.i.i.i.i.i.i", label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %i.dv = icmp slt i64 %i.du, 0
  br i1 %i.dv, label %bb.ax, label %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, !prof !15

_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.aw
  %i.dw = icmp eq i64 %i.du, 0
  br i1 %i.dw, label %"_ZN5alloc3str56_$LT$impl$u20$alloc..borrow..ToOwned$u20$for$u20$str$GT$8to_owned17h8b458a9baecda28aE.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i", label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h2c5e185936086779E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i"

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h2c5e185936086779E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i": ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #51, !noalias !17508
  %i.dx = call noundef ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef %i.du, i64 noundef range(i64 1, 17) 1) #51, !noalias !17508 ; 2 uses
  %i.dy = icmp eq ptr %i.dx, null
  br i1 %i.dy, label %bb.ax, label %"_ZN5alloc3str56_$LT$impl$u20$alloc..borrow..ToOwned$u20$for$u20$str$GT$8to_owned17h8b458a9baecda28aE.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i"

bb.ax:                                            ; preds = %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h2c5e185936086779E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i", %bb.aw
  %.sroa.4.0.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ 1, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h2c5e185936086779E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i" ], [ 0, %bb.aw ]
  invoke void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef %.sroa.4.0.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 %i.du, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @927) #54
          to label %.noexc.i.i.i.i.i.i.i.i.i.i.i.i unwind label %bb.ba, !noalias !17509

.noexc.i.i.i.i.i.i.i.i.i.i.i.i:                   ; preds = %bb.ax
  unreachable

"_ZN5alloc3str56_$LT$impl$u20$alloc..borrow..ToOwned$u20$for$u20$str$GT$8to_owned17h8b458a9baecda28aE.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i": ; preds = %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h2c5e185936086779E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i", %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %.sroa.10.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi ptr [ inttoptr (i64 1 to ptr), %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ %i.dx, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h2c5e185936086779E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i" ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %.sroa.10.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, ptr nonnull readonly align 1 %i.ds, i64 %i.du, i1 false), !noalias !17510
  br label %"_ZN66_$LT$alloc..borrow..Cow$LT$B$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h0b67e6953fab474eE.exit.i.i.i.i.i.i.i.i.i.i.i.i.i"

"_ZN66_$LT$alloc..borrow..Cow$LT$B$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h0b67e6953fab474eE.exit.i.i.i.i.i.i.i.i.i.i.i.i.i": ; preds = %"_ZN5alloc3str56_$LT$impl$u20$alloc..borrow..ToOwned$u20$for$u20$str$GT$8to_owned17h8b458a9baecda28aE.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i", %bb.av
  %.sroa.5.05.i.i.i.i.i.i.i.i.i.i.i.i.i = phi ptr [ %.sroa.10.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %"_ZN5alloc3str56_$LT$impl$u20$alloc..borrow..ToOwned$u20$for$u20$str$GT$8to_owned17h8b458a9baecda28aE.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i" ], [ %i.ds, %bb.av ]
  %.sroa.0.04.i.i.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.du, %"_ZN5alloc3str56_$LT$impl$u20$alloc..borrow..ToOwned$u20$for$u20$str$GT$8to_owned17h8b458a9baecda28aE.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i" ], [ -9223372036854775808, %bb.av ]
  %i.dz = ptrtoint ptr %.sroa.5.05.i.i.i.i.i.i.i.i.i.i.i.i.i to i64
  br label %"_ZN64_$LT$insta..redaction..Segment$u20$as$u20$core..clone..Clone$GT$5clone17h01170c42f747cda7E.exit.i.i.i.i.i.i.i.i.i.i.i.i"

bb.ay:                                            ; preds = %bb.as
  %.sroa.8.0..sroa_idx15.i.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.012.044.i.i.i.i.i.i.i.i.i.i.i.i, i64 8
  %.sroa.8.0.copyload16.i.i.i.i.i.i.i.i.i.i.i.i = load i64, ptr %.sroa.8.0..sroa_idx15.i.i.i.i.i.i.i.i.i.i.i.i, align 8, !alias.scope !17511, !noalias !17512
  %.sroa.1017.0..sroa_idx18.i.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.012.044.i.i.i.i.i.i.i.i.i.i.i.i, i64 16
  %.sroa.1017.0.copyload19.i.i.i.i.i.i.i.i.i.i.i.i = load i64, ptr %.sroa.1017.0..sroa_idx18.i.i.i.i.i.i.i.i.i.i.i.i, align 8, !alias.scope !17511, !noalias !17512
  %.sroa.12.0..sroa_idx20.i.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.012.044.i.i.i.i.i.i.i.i.i.i.i.i, i64 24
  %.sroa.12.0.copyload21.i.i.i.i.i.i.i.i.i.i.i.i = load i64, ptr %.sroa.12.0..sroa_idx20.i.i.i.i.i.i.i.i.i.i.i.i, align 8, !alias.scope !17511, !noalias !17512
  br label %"_ZN64_$LT$insta..redaction..Segment$u20$as$u20$core..clone..Clone$GT$5clone17h01170c42f747cda7E.exit.i.i.i.i.i.i.i.i.i.i.i.i"

bb.az:                                            ; preds = %bb.as
  %i.ea = trunc nuw i64 %i.dl to i1
  %i.eb = getelementptr inbounds nuw i8, ptr %.sroa.012.044.i.i.i.i.i.i.i.i.i.i.i.i, i64 8
  %i.ec = load i64, ptr %i.eb, align 8, !alias.scope !17503, !noalias !17504
  %.sroa.5.0.i.i.i.i.i.i.i.i.i.i.i.i.i = select i1 %i.ea, i64 %i.ec, i64 undef
  %i.ed = getelementptr inbounds nuw i8, ptr %.sroa.012.044.i.i.i.i.i.i.i.i.i.i.i.i, i64 16
  %i.ee = load i64, ptr %i.ed, align 8, !range !44, !alias.scope !17503, !noalias !17504, !noundef !17 ; 2 uses
  %i.ef = trunc nuw i64 %i.ee to i1
  %i.eg = getelementptr inbounds nuw i8, ptr %.sroa.012.044.i.i.i.i.i.i.i.i.i.i.i.i, i64 24
  %i.eh = load i64, ptr %i.eg, align 8, !alias.scope !17503, !noalias !17504
  %.sroa.52.0.i.i.i.i.i.i.i.i.i.i.i.i.i = select i1 %i.ef, i64 %i.eh, i64 undef
  br label %"_ZN64_$LT$insta..redaction..Segment$u20$as$u20$core..clone..Clone$GT$5clone17h01170c42f747cda7E.exit.i.i.i.i.i.i.i.i.i.i.i.i"

"_ZN64_$LT$insta..redaction..Segment$u20$as$u20$core..clone..Clone$GT$5clone17h01170c42f747cda7E.exit.i.i.i.i.i.i.i.i.i.i.i.i": ; preds = %bb.az, %bb.ay, %"_ZN66_$LT$alloc..borrow..Cow$LT$B$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h0b67e6953fab474eE.exit.i.i.i.i.i.i.i.i.i.i.i.i.i", %bb.au, %bb.as
  %.sroa.12.0.i.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %.sroa.52.0.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.az ], [ undef, %bb.au ], [ %i.du, %"_ZN66_$LT$alloc..borrow..Cow$LT$B$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h0b67e6953fab474eE.exit.i.i.i.i.i.i.i.i.i.i.i.i.i" ], [ %.sroa.12.0.copyload21.i.i.i.i.i.i.i.i.i.i.i.i, %bb.ay ], [ undef, %bb.as ]
  %.sroa.1017.0.i.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.ee, %bb.az ], [ undef, %bb.au ], [ %i.dz, %"_ZN66_$LT$alloc..borrow..Cow$LT$B$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h0b67e6953fab474eE.exit.i.i.i.i.i.i.i.i.i.i.i.i.i" ], [ %.sroa.1017.0.copyload19.i.i.i.i.i.i.i.i.i.i.i.i, %bb.ay ], [ undef, %bb.as ]
  %.sroa.8.0.i.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %.sroa.5.0.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.az ], [ undef, %bb.au ], [ %.sroa.0.04.i.i.i.i.i.i.i.i.i.i.i.i.i, %"_ZN66_$LT$alloc..borrow..Cow$LT$B$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h0b67e6953fab474eE.exit.i.i.i.i.i.i.i.i.i.i.i.i.i" ], [ %.sroa.8.0.copyload16.i.i.i.i.i.i.i.i.i.i.i.i, %bb.ay ], [ undef, %bb.as ]
  %.sroa.013.0.i.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.dl, %bb.az ], [ 3, %bb.au ], [ 4, %"_ZN66_$LT$alloc..borrow..Cow$LT$B$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h0b67e6953fab474eE.exit.i.i.i.i.i.i.i.i.i.i.i.i.i" ], [ %i.dl, %bb.ay ], [ 2, %bb.as ]
  %i.ei = getelementptr inbounds nuw [32 x i8], ptr %i.de, i64 %.sroa.7.041.i.i.i.i.i.i.i.i.i.i.i.i ; 4 uses
  store i64 %.sroa.013.0.i.i.i.i.i.i.i.i.i.i.i.i, ptr %i.ei, align 8, !noalias !17509
  %.sroa.426.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ei, i64 8
  store i64 %.sroa.8.0.i.i.i.i.i.i.i.i.i.i.i.i, ptr %.sroa.426.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i, align 8, !noalias !17509
  %.sroa.527.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ei, i64 16
  store i64 %.sroa.1017.0.i.i.i.i.i.i.i.i.i.i.i.i, ptr %.sroa.527.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i, align 8, !noalias !17509
  %.sroa.628.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ei, i64 24
  store i64 %.sroa.12.0.i.i.i.i.i.i.i.i.i.i.i.i, ptr %.sroa.628.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i, align 8, !noalias !17509
  %i.ej = icmp eq i64 %i.dh, 0
  br i1 %i.ej, label %"_ZN67_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..clone..Clone$GT$5clone17ha17d196cb382d7b8E.exit.i.i.i.i.i.i.i.i.i.i", label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i

bb.ba:                                            ; preds = %bb.ax
  %i.ek = landingpad { ptr, i32 }
          cleanup
  call void @llvm.experimental.noalias.scope.decl(metadata !17513), !noalias !17514
  %i.el = icmp eq i64 %.sroa.7.041.i.i.i.i.i.i.i.i.i.i.i.i, 0
  br i1 %i.el, label %"_ZN4core3ptr69drop_in_place$LT$alloc..vec..Vec$LT$insta..redaction..Segment$GT$$GT$17hf48eeced8f61e3e2E.exit.i.i.i.i.i.i.i.i.i.i.i", label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i:               ; preds = %bb.ba, %"_ZN4core3ptr46drop_in_place$LT$insta..redaction..Segment$GT$17h1829a72330f6b9b5E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i"
  %.sroa.0.07.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.en, %"_ZN4core3ptr46drop_in_place$LT$insta..redaction..Segment$GT$17h1829a72330f6b9b5E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i" ], [ 0, %bb.ba ] ; 2 uses
  %i.em = getelementptr inbounds nuw [32 x i8], ptr %i.de, i64 %.sroa.0.07.i.i.i.i.i.i.i.i.i.i.i.i.i.i ; 3 uses
  %i.en = add nuw nsw i64 %.sroa.0.07.i.i.i.i.i.i.i.i.i.i.i.i.i.i, 1 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !17515), !noalias !17514
  %i.eo = load i64, ptr %i.em, align 8, !range !39, !alias.scope !17516, !noalias !17517, !noundef !17
  %i.ep = icmp eq i64 %i.eo, 4
  br i1 %i.ep, label %bb.bb, label %"_ZN4core3ptr46drop_in_place$LT$insta..redaction..Segment$GT$17h1829a72330f6b9b5E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i"

bb.bb:                                            ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.eq = getelementptr inbounds nuw i8, ptr %i.em, i64 8
  %.val.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = load i64, ptr %i.eq, align 8, !range !30, !alias.scope !17516, !noalias !17517, !noundef !17 ; 2 uses
  %switch.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp sgt i64 %.val.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, 0
  br i1 %switch.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %bb.bc, label %"_ZN4core3ptr46drop_in_place$LT$insta..redaction..Segment$GT$17h1829a72330f6b9b5E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i"

bb.bc:                                            ; preds = %bb.bb
  %i.er = getelementptr inbounds nuw i8, ptr %i.em, i64 16
  %.val1.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.er, align 8, !alias.scope !17516, !noalias !17517, !nonnull !17, !noundef !17
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 noundef %.val.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #51, !noalias !17518
  br label %"_ZN4core3ptr46drop_in_place$LT$insta..redaction..Segment$GT$17h1829a72330f6b9b5E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i"

"_ZN4core3ptr46drop_in_place$LT$insta..redaction..Segment$GT$17h1829a72330f6b9b5E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i": ; preds = %bb.bc, %bb.bb, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.es = icmp eq i64 %i.en, %.sroa.7.041.i.i.i.i.i.i.i.i.i.i.i.i
  br i1 %i.es, label %"_ZN4core3ptr69drop_in_place$LT$alloc..vec..Vec$LT$insta..redaction..Segment$GT$$GT$17hf48eeced8f61e3e2E.exit.i.i.i.i.i.i.i.i.i.i.i", label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i

"_ZN4core3ptr69drop_in_place$LT$alloc..vec..Vec$LT$insta..redaction..Segment$GT$$GT$17hf48eeced8f61e3e2E.exit.i.i.i.i.i.i.i.i.i.i.i": ; preds = %"_ZN4core3ptr46drop_in_place$LT$insta..redaction..Segment$GT$17h1829a72330f6b9b5E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i", %bb.ba
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.de, i64 noundef %i.cz, i64 noundef range(i64 1, -9223372036854775807) 8) #51, !noalias !17517
  br label %bb.bd

"_ZN67_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..clone..Clone$GT$5clone17ha17d196cb382d7b8E.exit.i.i.i.i.i.i.i.i.i.i": ; preds = %"_ZN64_$LT$insta..redaction..Segment$u20$as$u20$core..clone..Clone$GT$5clone17h01170c42f747cda7E.exit.i.i.i.i.i.i.i.i.i.i.i.i", %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i, %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17hd5e7ac0f9a14006eE.exit.thread.i.i.i.i.i.i.i.i.i.i.i.i"
  %.sroa.6.0.i.i.i.i.i.i.i.i.i.i.i = phi ptr [ inttoptr (i64 8 to ptr), %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17hd5e7ac0f9a14006eE.exit.thread.i.i.i.i.i.i.i.i.i.i.i.i" ], [ %i.de, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i ], [ %i.de, %"_ZN64_$LT$insta..redaction..Segment$u20$as$u20$core..clone..Clone$GT$5clone17h01170c42f747cda7E.exit.i.i.i.i.i.i.i.i.i.i.i.i" ]
  %i.et = getelementptr inbounds nuw [24 x i8], ptr %i.cp, i64 %.sroa.7.043.i.i.i.i.i.i.i.i.i.i ; 3 uses
  store i64 %.val13.i.i.i.i.i.i.i.i.i.i, ptr %i.et, align 8, !noalias !17500
  %.sroa.422.0..sroa_idx.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.et, i64 8
  store ptr %.sroa.6.0.i.i.i.i.i.i.i.i.i.i.i, ptr %.sroa.422.0..sroa_idx.i.i.i.i.i.i.i.i.i.i, align 8, !noalias !17500
  %.sroa.523.0..sroa_idx.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.et, i64 16
  store i64 %.val13.i.i.i.i.i.i.i.i.i.i, ptr %.sroa.523.0..sroa_idx.i.i.i.i.i.i.i.i.i.i, align 8, !noalias !17500
  %i.eu = icmp eq i64 %i.cs, 0
  br i1 %i.eu, label %"_ZN65_$LT$insta..redaction..Selector$u20$as$u20$core..clone..Clone$GT$5clone17h3fd97b3541e6e5c0E.exit.i.i.i.i.i.i.i", label %.lr.ph.i.i.i.i.i.i.i.i.i.i

bb.bd:                                            ; preds = %"_ZN4core3ptr69drop_in_place$LT$alloc..vec..Vec$LT$insta..redaction..Segment$GT$$GT$17hf48eeced8f61e3e2E.exit.i.i.i.i.i.i.i.i.i.i.i", %bb.ap
  %eh.lpad-body.i.i.i.i.i.i.i.i.i.i = phi { ptr, i32 } [ %i.cu, %bb.ap ], [ %i.ek, %"_ZN4core3ptr69drop_in_place$LT$alloc..vec..Vec$LT$insta..redaction..Segment$GT$$GT$17hf48eeced8f61e3e2E.exit.i.i.i.i.i.i.i.i.i.i.i" ]
  call void @llvm.experimental.noalias.scope.decl(metadata !17519), !noalias !17520
  %i.ev = icmp eq i64 %.sroa.7.043.i.i.i.i.i.i.i.i.i.i, 0
  br i1 %i.ev, label %"_ZN4core3ptr92drop_in_place$LT$alloc..vec..Vec$LT$alloc..vec..Vec$LT$insta..redaction..Segment$GT$$GT$$GT$17h72c1a21a055eca08E.exit.i.i.i.i.i.i.i.i.i", label %.lr.ph.i.i.i1.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i1.i.i.i.i.i.i.i.i.i:                  ; preds = %bb.bd, %"_ZN4core3ptr69drop_in_place$LT$alloc..vec..Vec$LT$insta..redaction..Segment$GT$$GT$17hf48eeced8f61e3e2E.exit.i.i.i.i.i.i.i.i.i.i.i.i"
  %.sroa.0.07.i.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.ex, %"_ZN4core3ptr69drop_in_place$LT$alloc..vec..Vec$LT$insta..redaction..Segment$GT$$GT$17hf48eeced8f61e3e2E.exit.i.i.i.i.i.i.i.i.i.i.i.i" ], [ 0, %bb.bd ] ; 2 uses
  %i.ew = getelementptr inbounds nuw [24 x i8], ptr %i.cp, i64 %.sroa.0.07.i.i.i.i.i.i.i.i.i.i.i.i ; 3 uses
  %i.ex = add nuw i64 %.sroa.0.07.i.i.i.i.i.i.i.i.i.i.i.i, 1 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !17521), !noalias !17520
  %i.ey = getelementptr inbounds nuw i8, ptr %i.ew, i64 8
  %.val.i.i.i.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.ey, align 8, !alias.scope !17522, !noalias !17523, !nonnull !17, !noundef !17 ; 2 uses
  %i.ez = getelementptr inbounds nuw i8, ptr %i.ew, i64 16
  %.val1.i.i.i.i.i.i.i.i.i.i.i.i.i = load i64, ptr %i.ez, align 8, !alias.scope !17522, !noalias !17523, !noundef !17 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !17524), !noalias !17520
  %i.fa = icmp eq i64 %.val1.i.i.i.i.i.i.i.i.i.i.i.i.i, 0
  br i1 %i.fa, label %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h00005e7ae3644f00E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i", label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i:             ; preds = %.lr.ph.i.i.i1.i.i.i.i.i.i.i.i.i, %"_ZN4core3ptr46drop_in_place$LT$insta..redaction..Segment$GT$17h1829a72330f6b9b5E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i"
  %.sroa.0.07.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.fc, %"_ZN4core3ptr46drop_in_place$LT$insta..redaction..Segment$GT$17h1829a72330f6b9b5E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i" ], [ 0, %.lr.ph.i.i.i1.i.i.i.i.i.i.i.i.i ] ; 2 uses
  %i.fb = getelementptr inbounds nuw [32 x i8], ptr %.val.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 %.sroa.0.07.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ; 3 uses
  %i.fc = add nuw i64 %.sroa.0.07.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, 1 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !17525), !noalias !17520
  %i.fd = load i64, ptr %i.fb, align 8, !range !39, !alias.scope !17526, !noalias !17527, !noundef !17
  %i.fe = icmp eq i64 %i.fd, 4
  br i1 %i.fe, label %bb.be, label %"_ZN4core3ptr46drop_in_place$LT$insta..redaction..Segment$GT$17h1829a72330f6b9b5E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i"

bb.be:                                            ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.ff = getelementptr inbounds nuw i8, ptr %i.fb, i64 8
  %.val.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = load i64, ptr %i.ff, align 8, !range !30, !alias.scope !17526, !noalias !17527, !noundef !17 ; 2 uses
  %switch.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp sgt i64 %.val.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, 0
  br i1 %switch.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %bb.bf, label %"_ZN4core3ptr46drop_in_place$LT$insta..redaction..Segment$GT$17h1829a72330f6b9b5E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i"

bb.bf:                                            ; preds = %bb.be
  %i.fg = getelementptr inbounds nuw i8, ptr %i.fb, i64 16
  %.val1.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.fg, align 8, !alias.scope !17526, !noalias !17527, !nonnull !17, !noundef !17
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 noundef %.val.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #51, !noalias !17528
  br label %"_ZN4core3ptr46drop_in_place$LT$insta..redaction..Segment$GT$17h1829a72330f6b9b5E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i"

"_ZN4core3ptr46drop_in_place$LT$insta..redaction..Segment$GT$17h1829a72330f6b9b5E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i": ; preds = %bb.bf, %bb.be, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.fh = icmp eq i64 %i.fc, %.val1.i.i.i.i.i.i.i.i.i.i.i.i.i
  br i1 %i.fh, label %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h00005e7ae3644f00E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i", label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i

"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h00005e7ae3644f00E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i": ; preds = %"_ZN4core3ptr46drop_in_place$LT$insta..redaction..Segment$GT$17h1829a72330f6b9b5E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i", %.lr.ph.i.i.i1.i.i.i.i.i.i.i.i.i
  %.val2.i.i.i.i.i.i.i.i.i.i.i.i.i = load i64, ptr %i.ew, align 8, !range !20, !alias.scope !17522, !noalias !17523, !noundef !17 ; 2 uses
  %i.fi = icmp eq i64 %.val2.i.i.i.i.i.i.i.i.i.i.i.i.i, 0
  br i1 %i.fi, label %"_ZN4core3ptr69drop_in_place$LT$alloc..vec..Vec$LT$insta..redaction..Segment$GT$$GT$17hf48eeced8f61e3e2E.exit.i.i.i.i.i.i.i.i.i.i.i.i", label %bb.bg

bb.bg:                                            ; preds = %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h00005e7ae3644f00E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i"
  %i.fj = shl nuw i64 %.val2.i.i.i.i.i.i.i.i.i.i.i.i.i, 5
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 noundef %i.fj, i64 noundef range(i64 1, -9223372036854775807) 8) #51, !noalias !17527
  br label %"_ZN4core3ptr69drop_in_place$LT$alloc..vec..Vec$LT$insta..redaction..Segment$GT$$GT$17hf48eeced8f61e3e2E.exit.i.i.i.i.i.i.i.i.i.i.i.i"

"_ZN4core3ptr69drop_in_place$LT$alloc..vec..Vec$LT$insta..redaction..Segment$GT$$GT$17hf48eeced8f61e3e2E.exit.i.i.i.i.i.i.i.i.i.i.i.i": ; preds = %bb.bg, %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h00005e7ae3644f00E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i"
  %i.fk = icmp eq i64 %i.ex, %.sroa.7.043.i.i.i.i.i.i.i.i.i.i
  br i1 %i.fk, label %"_ZN4core3ptr92drop_in_place$LT$alloc..vec..Vec$LT$alloc..vec..Vec$LT$insta..redaction..Segment$GT$$GT$$GT$17h72c1a21a055eca08E.exit.i.i.i.i.i.i.i.i.i", label %.lr.ph.i.i.i1.i.i.i.i.i.i.i.i.i

"_ZN4core3ptr92drop_in_place$LT$alloc..vec..Vec$LT$alloc..vec..Vec$LT$insta..redaction..Segment$GT$$GT$$GT$17h72c1a21a055eca08E.exit.i.i.i.i.i.i.i.i.i": ; preds = %"_ZN4core3ptr69drop_in_place$LT$alloc..vec..Vec$LT$insta..redaction..Segment$GT$$GT$17hf48eeced8f61e3e2E.exit.i.i.i.i.i.i.i.i.i.i.i.i", %bb.bd
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.cp, i64 noundef %i.cm, i64 noundef range(i64 1, -9223372036854775807) 8) #51, !noalias !17523
  br label %bb.bj

"_ZN65_$LT$insta..redaction..Selector$u20$as$u20$core..clone..Clone$GT$5clone17h3fd97b3541e6e5c0E.exit.i.i.i.i.i.i.i": ; preds = %"_ZN67_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..clone..Clone$GT$5clone17ha17d196cb382d7b8E.exit.i.i.i.i.i.i.i.i.i.i", %.lr.ph.i.i.i.i.i.i.i.i.i.i, %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17hd5e7ac0f9a14006eE.exit.thread.i.i.i.i.i.i.i.i.i.i"
  %.sroa.6.0.i.i.i.i.i.i.i.i.i = phi ptr [ inttoptr (i64 8 to ptr), %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17hd5e7ac0f9a14006eE.exit.thread.i.i.i.i.i.i.i.i.i.i" ], [ %i.cp, %.lr.ph.i.i.i.i.i.i.i.i.i.i ], [ %i.cp, %"_ZN67_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..clone..Clone$GT$5clone17ha17d196cb382d7b8E.exit.i.i.i.i.i.i.i.i.i.i" ]
  %i.fl = getelementptr inbounds nuw i8, ptr %.sroa.012.060.i.i.i.i.i.i, i64 24
  %.val2.i.i.i.i.i.i.i = load ptr, ptr %i.fl, align 8, !alias.scope !17492, !noalias !17493, !nonnull !17, !noundef !17 ; 2 uses
  %i.fm = atomicrmw add ptr %.val2.i.i.i.i.i.i.i, i64 1 monotonic, align 8, !noalias !17529
  %i.fn = icmp slt i64 %i.fm, 0
  br i1 %i.fn, label %bb.bh, label %_ZN4core5clone5Clone5clone17h6cc7adb5474e6f2eE.exit.i.i.i.i.i.i

bb.bh:                                            ; preds = %"_ZN65_$LT$insta..redaction..Selector$u20$as$u20$core..clone..Clone$GT$5clone17h3fd97b3541e6e5c0E.exit.i.i.i.i.i.i.i"
  call void @llvm.trap()
  unreachable

_ZN4core5clone5Clone5clone17h6cc7adb5474e6f2eE.exit.i.i.i.i.i.i: ; preds = %"_ZN65_$LT$insta..redaction..Selector$u20$as$u20$core..clone..Clone$GT$5clone17h3fd97b3541e6e5c0E.exit.i.i.i.i.i.i.i"
  %i.fo = getelementptr inbounds nuw [32 x i8], ptr %i.ca, i64 %.sroa.7.058.i.i.i.i.i.i ; 4 uses
  store i64 %.val1.i.i.i.i.i.i.i, ptr %i.fo, align 8, !noalias !17496
  %.sroa.421.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.fo, i64 8
  store ptr %.sroa.6.0.i.i.i.i.i.i.i.i.i, ptr %.sroa.421.0..sroa_idx.i.i.i.i.i.i, align 8, !noalias !17496
  %.sroa.522.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.fo, i64 16
  store i64 %.val1.i.i.i.i.i.i.i, ptr %.sroa.522.0..sroa_idx.i.i.i.i.i.i, align 8, !noalias !17496
  %.sroa.623.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.fo, i64 24
  store ptr %.val2.i.i.i.i.i.i.i, ptr %.sroa.623.0..sroa_idx.i.i.i.i.i.i, align 8, !noalias !17496
  %i.fp = icmp eq i64 %i.cf, 0
  br i1 %i.fp, label %.loopexit.i, label %.lr.ph.i.i.i.i.i.i

bb.bi:                                            ; preds = %bb.bj
  %i.fq = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #56, !noalias !17496
  unreachable

bb.bj:                                            ; preds = %"_ZN4core3ptr92drop_in_place$LT$alloc..vec..Vec$LT$alloc..vec..Vec$LT$insta..redaction..Segment$GT$$GT$$GT$17h72c1a21a055eca08E.exit.i.i.i.i.i.i.i.i.i", %bb.am
  %eh.lpad-body.i.i.i.i.i.i = phi { ptr, i32 } [ %i.ch, %bb.am ], [ %eh.lpad-body.i.i.i.i.i.i.i.i.i.i, %"_ZN4core3ptr92drop_in_place$LT$alloc..vec..Vec$LT$alloc..vec..Vec$LT$insta..redaction..Segment$GT$$GT$$GT$17h72c1a21a055eca08E.exit.i.i.i.i.i.i.i.i.i" ]
  store i64 %.sroa.7.058.i.i.i.i.i.i, ptr %i.cd, align 8, !alias.scope !17530, !noalias !17489
  invoke fastcc void @"_ZN4core3ptr132drop_in_place$LT$alloc..vec..Vec$LT$$LP$insta..redaction..Selector$C$alloc..sync..Arc$LT$insta..redaction..Redaction$GT$$RP$$GT$$GT$17hb22f9989cc521ae6E"(ptr noalias noundef align 8 dereferenceable(24) %i.a) #55
          to label %.body.i.i.i.i unwind label %bb.bi, !noalias !17496

"_ZN4core3ptr72drop_in_place$LT$core..option..Option$LT$insta..content..Content$GT$$GT$17hc657d58c83dc7dc1E.exit.i.i.i.i": ; preds = %bb.bo, %.body.i.i.i.i, %bb.bl
  %.pn.i.i.i.i = phi { ptr, i32 } [ %i.fr, %bb.bl ], [ %eh.lpad-body.i.i.i.i, %bb.bo ], [ %eh.lpad-body.i.i.i.i, %.body.i.i.i.i ] ; 3 uses
  switch i64 %.sroa.040.0.i.i.i.i, label %bb.bk [
    i64 -9223372036854775808, label %"_ZN4core3ptr70drop_in_place$LT$core..option..Option$LT$alloc..string..String$GT$$GT$17h57b07c7444f77050E.exit.i.i.i.i"
    i64 0, label %"_ZN4core3ptr70drop_in_place$LT$core..option..Option$LT$alloc..string..String$GT$$GT$17h57b07c7444f77050E.exit.i.i.i.i"
  ]

bb.bk:                                            ; preds = %"_ZN4core3ptr72drop_in_place$LT$core..option..Option$LT$insta..content..Content$GT$$GT$17hc657d58c83dc7dc1E.exit.i.i.i.i"
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.642.0.i.i.i.i) ]
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.642.0.i.i.i.i, i64 noundef %.sroa.040.0.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #51, !noalias !17531
  br label %"_ZN4core3ptr70drop_in_place$LT$core..option..Option$LT$alloc..string..String$GT$$GT$17h57b07c7444f77050E.exit.i.i.i.i"

bb.bl:                                            ; preds = %bb.ai
  %i.fr = landingpad { ptr, i32 }
          cleanup
  br label %"_ZN4core3ptr72drop_in_place$LT$core..option..Option$LT$insta..content..Content$GT$$GT$17hc657d58c83dc7dc1E.exit.i.i.i.i"

bb.bm:                                            ; preds = %bb.ai
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %i.d, ptr noundef nonnull align 16 dereferenceable(64) %i.b, i64 64, i1 false), !noalias !17483
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !17483
  br label %bb.ak

bb.bn:                                            ; preds = %bb.al
  %i.fs = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i.i.i

.body.i.i.i.i:                                    ; preds = %bb.bn, %bb.bj
  %eh.lpad-body.i.i.i.i = phi { ptr, i32 } [ %i.fs, %bb.bn ], [ %eh.lpad-body.i.i.i.i.i.i, %bb.bj ] ; 2 uses
  %i.ft = load i8, ptr %i.d, align 16, !range !40, !alias.scope !17532, !noalias !17483, !noundef !17
  %i.fu = icmp eq i8 %i.ft, 30
  br i1 %i.fu, label %"_ZN4core3ptr72drop_in_place$LT$core..option..Option$LT$insta..content..Content$GT$$GT$17hc657d58c83dc7dc1E.exit.i.i.i.i", label %bb.bo

bb.bo:                                            ; preds = %.body.i.i.i.i
  invoke fastcc void @"_ZN4core3ptr44drop_in_place$LT$insta..content..Content$GT$17hcb4984964b03ed1dE"(ptr noalias noundef nonnull readonly align 16 dereferenceable(64) %i.d)
          to label %"_ZN4core3ptr72drop_in_place$LT$core..option..Option$LT$insta..content..Content$GT$$GT$17hc657d58c83dc7dc1E.exit.i.i.i.i" unwind label %bb.bp, !noalias !17480

bb.bp:                                            ; preds = %bb.bo
  %i.fv = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #56, !noalias !17480
  unreachable

.loopexit.i:                                      ; preds = %_ZN4core5clone5Clone5clone17h6cc7adb5474e6f2eE.exit.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i, %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17hd5e7ac0f9a14006eE.exit.thread.i.i.i.i.i.i"
  %1 = phi ptr [ %i.bz, %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17hd5e7ac0f9a14006eE.exit.thread.i.i.i.i.i.i" ], [ %i.cd, %.lr.ph.i.i.i.i.i.i ], [ %i.cd, %_ZN4core5clone5Clone5clone17h6cc7adb5474e6f2eE.exit.i.i.i.i.i.i ]
  store i64 %.val15.i.i.i.i, ptr %1, align 8, !noalias !17489
  %.sroa.14.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.07.0.i.i.i.i.i.i, i64 176
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %.sroa.14.0..sroa_idx.i.i.i, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false), !noalias !17533
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !17489
  %.sroa.13.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.07.0.i.i.i.i.i.i, i64 152
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.13.0..sroa_idx.i.i.i, ptr noundef nonnull align 8 dereferenceable(24) %i.e, i64 24, i1 false), !noalias !17533
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %i.am, ptr noundef nonnull align 16 dereferenceable(64) %i.d, i64 64, i1 false), !noalias !17533
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !17483
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !17483
  %.sroa.4.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.07.0.i.i.i.i.i.i, i64 80
  store i64 %.sroa.033.0.i.i.i.i, ptr %.sroa.4.0..sroa_idx.i.i.i, align 16, !noalias !17533
  %.sroa.5.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.07.0.i.i.i.i.i.i, i64 88
  store ptr %.sroa.635.0.i.i.i.i, ptr %.sroa.5.0..sroa_idx.i.i.i, align 8, !noalias !17533
  %.sroa.6.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.07.0.i.i.i.i.i.i, i64 96
  store i64 %.sroa.7.0.i.i.i.i, ptr %.sroa.6.0..sroa_idx.i.i.i, align 16, !noalias !17533
  %.sroa.7.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.07.0.i.i.i.i.i.i, i64 104
  store i64 %.sroa.040.0.i.i.i.i, ptr %.sroa.7.0..sroa_idx.i.i.i, align 8, !noalias !17533
  %.sroa.8.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.07.0.i.i.i.i.i.i, i64 112
  store ptr %.sroa.642.0.i.i.i.i, ptr %.sroa.8.0..sroa_idx.i.i.i, align 16, !noalias !17533
  %.sroa.9.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.07.0.i.i.i.i.i.i, i64 120
  store i64 %.sroa.745.0.i.i.i.i, ptr %.sroa.9.0..sroa_idx.i.i.i, align 8, !noalias !17533
  %.sroa.10.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.07.0.i.i.i.i.i.i, i64 128
  store i64 %.val13.i.i.i.i, ptr %.sroa.10.0..sroa_idx.i.i.i, align 16, !noalias !17533
  %.sroa.11.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.07.0.i.i.i.i.i.i, i64 136
  store ptr %.sroa.10.0.i.i.i.i.i.i.i, ptr %.sroa.11.0..sroa_idx.i.i.i, align 8, !noalias !17533
  %.sroa.12.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.07.0.i.i.i.i.i.i, i64 144
  store i64 %.val13.i.i.i.i, ptr %.sroa.12.0..sroa_idx.i.i.i, align 16, !noalias !17533
  %.sroa.15.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.07.0.i.i.i.i.i.i, i64 200
  store i8 %i.ao, ptr %.sroa.15.0..sroa_idx.i.i.i, align 8, !noalias !17533
  %.sroa.16.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.07.0.i.i.i.i.i.i, i64 201
  store i8 %i.bo, ptr %.sroa.16.0..sroa_idx.i.i.i, align 1, !noalias !17533
  %.sroa.17.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.07.0.i.i.i.i.i.i, i64 202
  store i8 %i.bq, ptr %.sroa.17.0..sroa_idx.i.i.i, align 2, !noalias !17533
  %i.fw = atomicrmw sub ptr %i.f, i64 1 release, align 8, !noalias !17534
  %i.fx = icmp eq i64 %i.fw, 1
  br i1 %i.fx, label %bb.bq, label %"_ZN4core3ptr76drop_in_place$LT$alloc..sync..Arc$LT$insta..settings..ActualSettings$GT$$GT$17h00b6a4f7827ffbb5E.exit.i"

bb.bq:                                            ; preds = %.loopexit.i
  fence acquire
  invoke void @"_ZN5alloc4sync16Arc$LT$T$C$A$GT$9drop_slow17hd6e8286ae4ac1f0bE"(ptr noalias noundef nonnull readonly align 8 dereferenceable(8) %0)
          to label %"_ZN4core3ptr76drop_in_place$LT$alloc..sync..Arc$LT$insta..settings..ActualSettings$GT$$GT$17h00b6a4f7827ffbb5E.exit.i" unwind label %.thread.i

.thread.i:                                        ; preds = %bb.bq
  %i.fy = landingpad { ptr, i32 }
          cleanup
  store ptr %.sroa.07.0.i.i.i.i.i.i, ptr %0, align 8, !alias.scope !17473
  br label %"_ZN4core3ptr77drop_in_place$LT$alloc..sync..Weak$LT$insta..settings..ActualSettings$GT$$GT$17heb24191375fd8abfE.exit.i"

"_ZN4core3ptr76drop_in_place$LT$alloc..sync..Arc$LT$insta..settings..ActualSettings$GT$$GT$17h00b6a4f7827ffbb5E.exit.i": ; preds = %bb.bq, %.loopexit.i
  store ptr %.sroa.07.0.i.i.i.i.i.i, ptr %0, align 8, !alias.scope !17473
  br label %"_ZN5alloc4sync16Arc$LT$T$C$A$GT$8make_mut17h36fc560db24ff834E.exit"

bb.br:                                            ; preds = %.thread35.i, %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17ha696533577fe6bb3E.exit.i.i.i.i", %bb.u
  %eh.lpad-body34.i = phi { ptr, i32 } [ %i.av, %.thread35.i ], [ %.pn.pn.pn.pn.i.i.i.i, %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17ha696533577fe6bb3E.exit.i.i.i.i" ], [ %.pn.pn.pn.pn.i.i.i.i, %bb.u ] ; 2 uses
  %i.fz = invoke { i64, i64 } @_ZN5alloc4sync32arcinner_layout_for_value_layout17h5451ffdde8e0d9bfE(i64 noundef 16, i64 noundef 192)
          to label %.noexc unwind label %bb.r     ; 2 uses

.noexc:                                           ; preds = %bb.br
  %i.ga = extractvalue { i64, i64 } %i.fz, 1      ; 2 uses
  %i.gb = icmp eq i64 %i.ga, 0
  br i1 %i.gb, label %"_ZN4core3ptr77drop_in_place$LT$alloc..sync..Weak$LT$insta..settings..ActualSettings$GT$$GT$17heb24191375fd8abfE.exit.i", label %bb.bs

bb.bs:                                            ; preds = %.noexc
  %i.gc = extractvalue { i64, i64 } %i.fz, 0
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.07.0.i.i.i.i.i.i, i64 noundef %i.ga, i64 noundef range(i64 1, -9223372036854775807) %i.gc) #51, !noalias !17535
  br label %"_ZN4core3ptr77drop_in_place$LT$alloc..sync..Weak$LT$insta..settings..ActualSettings$GT$$GT$17heb24191375fd8abfE.exit.i"

"_ZN5alloc4sync16Arc$LT$T$C$A$GT$8make_mut17h36fc560db24ff834E.exit": ; preds = %bb.g, %bb.o, %bb.p, %bb.q, %"_ZN4core3ptr76drop_in_place$LT$alloc..sync..Arc$LT$insta..settings..ActualSettings$GT$$GT$17h00b6a4f7827ffbb5E.exit.i"
  %i.gd = phi ptr [ %.sroa.07.0.i.i.i.i.i15.i, %bb.q ], [ %.sroa.07.0.i.i.i.i.i15.i, %bb.p ], [ %.sroa.07.0.i.i.i.i.i15.i, %bb.o ], [ %i.f, %bb.g ], [ %.sroa.07.0.i.i.i.i.i.i, %"_ZN4core3ptr76drop_in_place$LT$alloc..sync..Arc$LT$insta..settings..ActualSettings$GT$$GT$17h00b6a4f7827ffbb5E.exit.i" ]
  %i.ge = getelementptr inbounds nuw i8, ptr %i.gd, i64 16
  ret ptr %i.ge
}

; Function Attrs: nonlazybind uwtable
define void @_ZN5insta8settings8Settings18add_redaction_impl17hcd41fd60257e0e72E(ptr noalias nofree noundef align 8 captures(none) dereferenceable(8) %0, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %1, i64 noundef %2, ptr noalias nofree noundef readonly align 16 captures(none) dead_on_return dereferenceable(64) %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [80 x i8], align 16               ; 7 uses
  %i.c = alloca [24 x i8], align 8                ; 6 uses
  %i.d = alloca [24 x i8], align 8                ; 4 uses
  %i.e = alloca [24 x i8], align 8                ; 5 uses
  %i.f = alloca [32 x i8], align 8                ; 6 uses
  %i.g = invoke noundef align 16 dereferenceable(192) ptr @_ZN5insta8settings8Settings18_private_inner_mut17hbb08bee79c673486E(ptr noalias noundef nonnull align 8 dereferenceable(8) %0)
          to label %bb.b unwind label %.thread17  ; 3 uses

.thread17:                                        ; preds = %bb.a, %bb.b, %bb.g
  %i.h = landingpad { ptr, i32 }
          cleanup
  br label %.thread13

bb.b:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 160 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  invoke void @_ZN5insta9redaction8Selector5parse17h630c77a0df3a1df5E(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.c, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %1, i64 noundef %2)
          to label %bb.c unwind label %.thread17

bb.c:                                             ; preds = %bb.b
  tail call void @llvm.experimental.noalias.scope.decl(metadata !17545)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !17546)
  %i.j = load i64, ptr %i.c, align 8, !range !30, !alias.scope !17546, !noalias !17547, !noundef !17
  %i.k = icmp eq i64 %i.j, -9223372036854775808
  br i1 %i.k, label %bb.d, label %bb.g, !prof !22

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !17548
  %i.l = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.m = load ptr, ptr %i.l, align 8, !alias.scope !17546, !noalias !17547, !nonnull !17, !align !29, !noundef !17
  store ptr %i.m, ptr %i.a, align 8, !noalias !17548
  invoke void @_ZN4core6result13unwrap_failed17h0501379eaec3e720E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @111, i64 noundef 43, ptr noundef nonnull align 1 %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @117, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @644) #54
          to label %bb.f unwind label %bb.e, !noalias !17549

bb.e:                                             ; preds = %bb.d
  %i.n = landingpad { ptr, i32 }
          cleanup
  call void @"_ZN4core3ptr57drop_in_place$LT$insta..redaction..SelectorParseError$GT$17h3873c959c4a8b219E"(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.a) #55, !noalias !17549
  br label %.thread13

bb.f:                                             ; preds = %bb.d
  unreachable

bb.g:                                             ; preds = %bb.c
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.d, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false), !alias.scope !17549, !noalias !17550
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  invoke void @_ZN5insta9redaction8Selector11make_static17hc16bb9d109e3c11dE(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.e, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(24) %i.d)
          to label %bb.h unwind label %.thread17

bb.h:                                             ; preds = %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i64 1, ptr %i.b, align 16
  %i.o = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 1, ptr %i.o, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %i.p, ptr noundef nonnull align 16 dereferenceable(64) %3, i64 64, i1 false)
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #51, !noalias !17551
  %i.q = tail call noundef align 16 dereferenceable_or_null(80) ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef 80, i64 noundef range(i64 1, -9223372036854775807) 16) #51, !noalias !17551 ; 3 uses
  %i.r = icmp eq ptr %i.q, null
  br i1 %i.r, label %bb.i, label %bb.l, !prof !18

bb.i:                                             ; preds = %bb.h
  invoke void @_ZN5alloc5alloc18handle_alloc_error17h8f86e24af4223f3dE(i64 noundef 16, i64 noundef 80) #54
          to label %.noexc unwind label %bb.j

.noexc:                                           ; preds = %bb.i
  unreachable

bb.j:                                             ; preds = %bb.i
  %i.s = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr77drop_in_place$LT$alloc..sync..ArcInner$LT$insta..redaction..Redaction$GT$$GT$17h5b94675102ff0eccE"(ptr noalias noundef nonnull align 16 dereferenceable(80) %i.b) #55
          to label %.thread unwind label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.t = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #56
  unreachable

.thread:                                          ; preds = %bb.j
  call fastcc void @"_ZN4core3ptr92drop_in_place$LT$alloc..vec..Vec$LT$alloc..vec..Vec$LT$insta..redaction..Segment$GT$$GT$$GT$17h72c1a21a055eca08E"(ptr noalias noundef nonnull readonly align 8 dereferenceable(24) %i.e)
  br label %bb.r

bb.l:                                             ; preds = %bb.h
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(80) %i.q, ptr noundef nonnull align 16 dereferenceable(80) %i.b, i64 80, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.f, ptr noundef nonnull align 8 dereferenceable(24) %i.e, i64 24, i1 false)
  %i.u = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  store ptr %i.q, ptr %i.u, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !17552)
  %i.v = getelementptr inbounds nuw i8, ptr %i.g, i64 176 ; 2 uses
  %i.w = load i64, ptr %i.v, align 16, !alias.scope !17552, !noalias !17553, !noundef !17 ; 3 uses
  %i.x = load i64, ptr %i.i, align 16, !range !20, !alias.scope !17552, !noalias !17553, !noundef !17
  %i.y = icmp eq i64 %i.w, %i.x
  br i1 %i.y, label %bb.m, label %bb.p

bb.m:                                             ; preds = %bb.l
  invoke void @"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$8grow_one17h4220634fee4a06ecE"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.i, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @645)
          to label %bb.p unwind label %bb.n, !noalias !17553

bb.n:                                             ; preds = %bb.m
  %i.z = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr109drop_in_place$LT$$LP$insta..redaction..Selector$C$alloc..sync..Arc$LT$insta..redaction..Redaction$GT$$RP$$GT$17h5fef4411648b047cE"(ptr noalias noundef nonnull readonly align 8 dereferenceable(32) %i.f) #55
          to label %bb.r unwind label %bb.o, !noalias !17552

bb.o:                                             ; preds = %bb.n
  %i.aa = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #56, !noalias !17554
  unreachable

bb.p:                                             ; preds = %bb.m, %bb.l
  %i.ab = getelementptr inbounds nuw i8, ptr %i.g, i64 168
  %i.ac = load ptr, ptr %i.ab, align 8, !alias.scope !17552, !noalias !17553, !nonnull !17, !noundef !17
  %i.ad = getelementptr inbounds nuw [32 x i8], ptr %i.ac, i64 %i.w
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ad, ptr noundef nonnull readonly align 8 dereferenceable(32) %i.f, i64 32, i1 false), !noalias !17552
  %i.ae = add i64 %i.w, 1
end_hunk_0
begin_hunk_1_@"_ZN65_$LT$insta..content..Content$u20$as$u20$core..cmp..PartialOrd$GT$11partial_cmp17h761b9a327945ec58E":bb.a
  %spec.store.select10 = select i1 %i.na, i64 %i.mx, i64 %i.mz ; 2 uses
  %i.nb = icmp eq i64 %spec.store.select10, 0
  br i1 %i.nb, label %bb.cg, label %bb.ch

bb.cg:                                            ; preds = %bb.cf
  %i.nc = getelementptr inbounds nuw i8, ptr %.tr, i64 4
  %i.nd = load i32, ptr %i.nc, align 4, !noundef !17 ; 2 uses
  %i.ne = getelementptr inbounds nuw i8, ptr %.tr122, i64 4
  %i.nf = load i32, ptr %i.ne, align 4, !noundef !17 ; 2 uses
  %i.ng = icmp eq i32 %i.nd, %i.nf
  br i1 %i.ng, label %bb.ci, label %bb.cj

bb.ch:                                            ; preds = %bb.cf
  %i.nh = tail call i8 @llvm.scmp.i8.i64(i64 %spec.store.select10, i64 0)
  br label %"_ZN55_$LT$A$u20$as$u20$core..slice..cmp..SlicePartialOrd$GT$15partial_compare17hc945059cf2ec4d93E.exit"

bb.ci:                                            ; preds = %bb.cg
  %i.ni = getelementptr inbounds nuw i8, ptr %.tr, i64 24
  %i.nj = load ptr, ptr %i.ni, align 8, !nonnull !17, !align !31, !noundef !17
  %i.nk = getelementptr inbounds nuw i8, ptr %.tr, i64 32
  %i.nl = load i64, ptr %i.nk, align 8, !noundef !17 ; 2 uses
  %i.nm = getelementptr inbounds nuw i8, ptr %.tr122, i64 24
  %i.nn = load ptr, ptr %i.nm, align 8, !nonnull !17, !align !31, !noundef !17
  %i.no = getelementptr inbounds nuw i8, ptr %.tr122, i64 32
  %i.np = load i64, ptr %i.no, align 8, !noundef !17 ; 2 uses
  %i.nq = sub i64 %i.nl, %i.np
  %.112 = tail call i64 @llvm.umin.i64(i64 %i.nl, i64 %i.np)
  %i.nr = tail call i32 @memcmp(ptr nonnull %i.nj, ptr nonnull %i.nn, i64 %.112) ; 2 uses
  %i.ns = sext i32 %i.nr to i64
  %i.nt = icmp eq i32 %i.nr, 0
  %spec.store.select11 = select i1 %i.nt, i64 %i.nq, i64 %i.ns ; 2 uses
  %i.nu = icmp eq i64 %spec.store.select11, 0
  br i1 %i.nu, label %bb.ck, label %bb.cl

bb.cj:                                            ; preds = %bb.cg
  %i.nv = tail call i8 @llvm.ucmp.i8.i32(i32 %i.nd, i32 %i.nf)
  br label %"_ZN55_$LT$A$u20$as$u20$core..slice..cmp..SlicePartialOrd$GT$15partial_compare17hc945059cf2ec4d93E.exit"

bb.ck:                                            ; preds = %bb.ci
  tail call void @llvm.experimental.noalias.scope.decl(metadata !20273)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !20274)
  %i.nw = getelementptr inbounds nuw i8, ptr %.tr, i64 48
  %i.nx = load ptr, ptr %i.nw, align 8, !alias.scope !20273, !noalias !20274, !nonnull !17, !noundef !17
  %i.ny = getelementptr inbounds nuw i8, ptr %.tr, i64 56
  %i.nz = load i64, ptr %i.ny, align 8, !alias.scope !20273, !noalias !20274, !noundef !17
  %i.oa = getelementptr inbounds nuw i8, ptr %.tr122, i64 48
  %i.ob = load ptr, ptr %i.oa, align 8, !alias.scope !20274, !noalias !20273, !nonnull !17, !noundef !17
  %i.oc = getelementptr inbounds nuw i8, ptr %.tr122, i64 56
  %i.od = load i64, ptr %i.oc, align 8, !alias.scope !20274, !noalias !20273, !noundef !17
  %i.oe = tail call fastcc noundef range(i8 -1, 3) i8 @"_ZN55_$LT$A$u20$as$u20$core..slice..cmp..SlicePartialOrd$GT$15partial_compare17h2ec6754f25b32027E"(ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) %i.nx, i64 noundef %i.nz, ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) %i.ob, i64 noundef %i.od), !noalias !20275, !inline_history !20249
  br label %"_ZN55_$LT$A$u20$as$u20$core..slice..cmp..SlicePartialOrd$GT$15partial_compare17hc945059cf2ec4d93E.exit"

bb.cl:                                            ; preds = %bb.ci
  %i.of = tail call i8 @llvm.scmp.i8.i64(i64 %spec.store.select11, i64 0)
  br label %"_ZN55_$LT$A$u20$as$u20$core..slice..cmp..SlicePartialOrd$GT$15partial_compare17hc945059cf2ec4d93E.exit"
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @"_ZN65_$LT$pest..error..LineColLocation$u20$as$u20$core..fmt..Debug$GT$3fmt17hc03839fbc12df39fE"(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(40) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #1 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = load i64, ptr %0, align 8, !range !44, !noundef !17
  %i.d = trunc nuw i64 %i.c to i1
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %i.f, ptr %i.a, align 8
  %i.g = call noundef zeroext i1 @_ZN4core3fmt9Formatter25debug_tuple_field2_finish17hcc10f9db4edfa28aE(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @720, i64 noundef 4, ptr noundef nonnull align 1 %i.e, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @739, ptr noundef nonnull align 1 %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @719)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.h, ptr %i.b, align 8
  %i.i = call noundef zeroext i1 @_ZN4core3fmt9Formatter25debug_tuple_field1_finish17h8f1f32fd9454ecadE(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @718, i64 noundef 3, ptr noundef nonnull align 1 %i.b, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @719)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.sroa.0.0.in = phi i1 [ %i.g, %bb.b ], [ %i.i, %bb.c ]
  ret i1 %.sroa.0.0.in
}

; Function Attrs: nonlazybind uwtable
define internal noundef zeroext i1 @"_ZN66_$LT$alloc..borrow..Cow$LT$B$GT$$u20$as$u20$core..fmt..Display$GT$3fmt17hd11f0cd9c4edbb64E"(ptr noalias noundef readonly align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !17, !noundef !17
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load i64, ptr %i.c, align 8, !noundef !17
  %i.e = tail call noundef zeroext i1 @"_ZN42_$LT$str$u20$as$u20$core..fmt..Display$GT$3fmt17hc26b542d45893745E"(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.b, i64 noundef %i.d, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  ret i1 %i.e
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @"_ZN66_$LT$core..option..Option$LT$T$GT$$u20$as$u20$core..fmt..Debug$GT$3fmt17he87b513173fbe027E"(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #1 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = load i64, ptr %0, align 8, !range !30, !noundef !17
  %.not = icmp eq i64 %i.b, -9223372036854775808
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %0, ptr %i.a, align 8
  %i.c = call noundef zeroext i1 @_ZN4core3fmt9Formatter25debug_tuple_field1_finish17h8f1f32fd9454ecadE(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @741, i64 noundef 4, ptr noundef nonnull align 1 %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @744)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.d = tail call noundef zeroext i1 @_ZN4core3fmt9Formatter9write_str17haacafd99ed76659fE(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @740, i64 noundef 4)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.sroa.0.0.in = phi i1 [ %i.c, %bb.b ], [ %i.d, %bb.c ]
  ret i1 %.sroa.0.0.in
}

; Function Attrs: nonlazybind uwtable
define noundef nonnull align 8 ptr @"_ZN66_$LT$insta..env..WORKSPACES$u20$as$u20$core..ops..deref..Deref$GT$5deref17hf52751edbd6fa1c6E"(ptr noalias noundef nonnull readonly align 1 captures(none) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load atomic i8, ptr getelementptr inbounds nuw (i8, ptr @"_ZN66_$LT$insta..env..WORKSPACES$u20$as$u20$core..ops..deref..Deref$GT$5deref11__stability4LAZY17h642343348153e75bE", i64 32) acquire, align 8 ; 2 uses
  %i.b = icmp ult i8 %i.a, 4
  tail call void @llvm.assume(i1 %i.b)
  %.not.i = icmp eq i8 %i.a, 2
  br i1 %.not.i, label %"_ZN4spin4once17Once$LT$T$C$R$GT$13try_call_once17h2f526eccc6c8490aE.exit", label %bb.b, !prof !23

bb.b:                                             ; preds = %bb.a
  %i.c = tail call fastcc noundef nonnull align 8 ptr @"_ZN4spin4once17Once$LT$T$C$R$GT$18try_call_once_slow17he193102fc3095ee6E"()
  br label %"_ZN4spin4once17Once$LT$T$C$R$GT$13try_call_once17h2f526eccc6c8490aE.exit"

"_ZN4spin4once17Once$LT$T$C$R$GT$13try_call_once17h2f526eccc6c8490aE.exit": ; preds = %bb.a, %bb.b
  %.sroa.0.0.i = phi ptr [ %i.c, %bb.b ], [ @"_ZN66_$LT$insta..env..WORKSPACES$u20$as$u20$core..ops..deref..Deref$GT$5deref11__stability4LAZY17h642343348153e75bE", %bb.a ]
  ret ptr %.sroa.0.0.i
}

; Function Attrs: nonlazybind uwtable
define void @"_ZN66_$LT$insta..env..WORKSPACES$u20$as$u20$lazy_static..LazyStatic$GT$10initialize17hf58fb7d06e2e99aaE"(ptr noalias noundef nonnull readonly align 1 captures(none) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load atomic i8, ptr getelementptr inbounds nuw (i8, ptr @"_ZN66_$LT$insta..env..WORKSPACES$u20$as$u20$core..ops..deref..Deref$GT$5deref11__stability4LAZY17h642343348153e75bE", i64 32) acquire, align 8 ; 2 uses
  %i.b = icmp ult i8 %i.a, 4
  tail call void @llvm.assume(i1 %i.b)
  %.not.i.i = icmp eq i8 %i.a, 2
  br i1 %.not.i.i, label %"_ZN66_$LT$insta..env..WORKSPACES$u20$as$u20$core..ops..deref..Deref$GT$5deref17hf52751edbd6fa1c6E.exit", label %bb.b, !prof !23

bb.b:                                             ; preds = %bb.a
  %i.c = tail call fastcc noundef nonnull align 8 ptr @"_ZN4spin4once17Once$LT$T$C$R$GT$18try_call_once_slow17he193102fc3095ee6E"() ; 0 uses
  br label %"_ZN66_$LT$insta..env..WORKSPACES$u20$as$u20$core..ops..deref..Deref$GT$5deref17hf52751edbd6fa1c6E.exit"

"_ZN66_$LT$insta..env..WORKSPACES$u20$as$u20$core..ops..deref..Deref$GT$5deref17hf52751edbd6fa1c6E.exit": ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @"_ZN67_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..clone..Clone$GT$5clone17hed72057b100fbe83E"(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(24) %0, ptr nofree readonly captures(address, read_provenance) %.8.val, i64 %.16.val) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 8 uses
  %i.b = alloca [24 x i8], align 8                ; 10 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.8.val) ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !20288)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !20289
  %i.c = shl i64 %.16.val, 5                      ; 4 uses
  %i.d = icmp ugt i64 %.16.val, 576460752303423487
  %i.e = icmp ugt i64 %i.c, 9223372036854775800
  %or.cond.i.i.i.i = or i1 %i.d, %i.e
  br i1 %or.cond.i.i.i.i, label %bb.b, label %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i, !prof !15

_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i: ; preds = %bb.a
  %i.f = icmp eq i64 %i.c, 0
  br i1 %i.f, label %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17hd5e7ac0f9a14006eE.exit.thread.i", label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h2c5e185936086779E.exit.i.i.i"

"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17hd5e7ac0f9a14006eE.exit.thread.i": ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i
  %i.g = icmp eq i64 %.16.val, 0
  tail call void @llvm.assume(i1 %i.g)
  store i64 0, ptr %i.b, align 8, !noalias !20289
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %i.h, align 8, !noalias !20289
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  br label %"_ZN87_$LT$T$u20$as$u20$alloc..slice..$LT$impl$u20$$u5b$T$u5d$$GT$..to_vec_in..ConvertVec$GT$6to_vec17h2b39afa53715f4eeE.exit"

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h2c5e185936086779E.exit.i.i.i": ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #51, !noalias !20290
  %i.j = tail call noundef align 8 ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef %i.c, i64 noundef range(i64 1, 17) 8) #51, !noalias !20290 ; 3 uses
  %i.k = icmp eq ptr %i.j, null
  br i1 %i.k, label %bb.b, label %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17hd5e7ac0f9a14006eE.exit.i"

bb.b:                                             ; preds = %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h2c5e185936086779E.exit.i.i.i", %bb.a
  %.sroa.4.0.ph.i.i = phi i64 [ 8, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h2c5e185936086779E.exit.i.i.i" ], [ 0, %bb.a ]
  tail call void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef %.sroa.4.0.ph.i.i, i64 %i.c, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @928) #54, !noalias !20289
  unreachable

"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17hd5e7ac0f9a14006eE.exit.i": ; preds = %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h2c5e185936086779E.exit.i.i.i"
  store i64 %.16.val, ptr %i.b, align 8, !noalias !20289
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %i.j, ptr %i.l, align 8, !noalias !20289
  %i.m = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 3 uses
  %i.n = getelementptr inbounds nuw [32 x i8], ptr %.8.val, i64 %.16.val
  %1 = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  br label %bb.c

bb.c:                                             ; preds = %"_ZN71_$LT$pest..parser_state..ParsingToken$u20$as$u20$core..clone..Clone$GT$5clone17h56ee7e120c02ad7cE.exit.i", %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17hd5e7ac0f9a14006eE.exit.i"
  %.sroa.013.025.i = phi ptr [ %.8.val, %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17hd5e7ac0f9a14006eE.exit.i" ], [ %i.q, %"_ZN71_$LT$pest..parser_state..ParsingToken$u20$as$u20$core..clone..Clone$GT$5clone17h56ee7e120c02ad7cE.exit.i" ] ; 6 uses
  %.sroa.7.024.i = phi i64 [ 0, %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17hd5e7ac0f9a14006eE.exit.i" ], [ %i.r, %"_ZN71_$LT$pest..parser_state..ParsingToken$u20$as$u20$core..clone..Clone$GT$5clone17h56ee7e120c02ad7cE.exit.i" ] ; 3 uses
  %.sroa.10.023.i = phi i64 [ %.16.val, %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17hd5e7ac0f9a14006eE.exit.i" ], [ %i.o, %"_ZN71_$LT$pest..parser_state..ParsingToken$u20$as$u20$core..clone..Clone$GT$5clone17h56ee7e120c02ad7cE.exit.i" ]
  %i.o = add nsw i64 %.sroa.10.023.i, -1          ; 2 uses
  %i.p = icmp eq ptr %.sroa.013.025.i, %i.n
  br i1 %i.p, label %"_ZN87_$LT$T$u20$as$u20$alloc..slice..$LT$impl$u20$$u5b$T$u5d$$GT$..to_vec_in..ConvertVec$GT$6to_vec17h2b39afa53715f4eeE.exit", label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.q = getelementptr inbounds nuw i8, ptr %.sroa.013.025.i, i64 32
  %i.r = add nuw nsw i64 %.sroa.7.024.i, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !20289
  call void @llvm.experimental.noalias.scope.decl(metadata !20291)
  call void @llvm.experimental.noalias.scope.decl(metadata !20292)
  %i.s = load i32, ptr %.sroa.013.025.i, align 8, !range !47, !alias.scope !20293, !noalias !20294, !noundef !17
  switch i32 %i.s, label %default.unreachable [
    i32 0, label %bb.e
    i32 1, label %bb.f
    i32 2, label %bb.g
    i32 3, label %bb.h
  ]

default.unreachable:                              ; preds = %bb.d
  unreachable

bb.e:                                             ; preds = %bb.d
  %i.t = getelementptr inbounds nuw i8, ptr %.sroa.013.025.i, i64 8
  invoke void @"_ZN60_$LT$alloc..string..String$u20$as$u20$core..clone..Clone$GT$5clone17h123bb51dd192bfa5E"(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.t, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @781)
          to label %.noexc.i unwind label %bb.i, !noalias !20295

.noexc.i:                                         ; preds = %bb.e
  store i32 0, ptr %i.a, align 8, !alias.scope !20291, !noalias !20296
  br label %"_ZN71_$LT$pest..parser_state..ParsingToken$u20$as$u20$core..clone..Clone$GT$5clone17h56ee7e120c02ad7cE.exit.i"

bb.f:                                             ; preds = %bb.d
  %i.u = getelementptr inbounds nuw i8, ptr %.sroa.013.025.i, i64 8
  invoke void @"_ZN60_$LT$alloc..string..String$u20$as$u20$core..clone..Clone$GT$5clone17h123bb51dd192bfa5E"(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.u, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @781)
          to label %.noexc12.i unwind label %bb.i, !noalias !20295

.noexc12.i:                                       ; preds = %bb.f
  store i32 1, ptr %i.a, align 8, !alias.scope !20291, !noalias !20296
  br label %"_ZN71_$LT$pest..parser_state..ParsingToken$u20$as$u20$core..clone..Clone$GT$5clone17h56ee7e120c02ad7cE.exit.i"

bb.g:                                             ; preds = %bb.d
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.a, ptr noundef nonnull readonly align 8 dereferenceable(32) %.sroa.013.025.i, i64 32, i1 false), !alias.scope !20297, !noalias !20295
  br label %"_ZN71_$LT$pest..parser_state..ParsingToken$u20$as$u20$core..clone..Clone$GT$5clone17h56ee7e120c02ad7cE.exit.i"

bb.h:                                             ; preds = %bb.d
  store i32 3, ptr %i.a, align 8, !alias.scope !20291, !noalias !20296
  br label %"_ZN71_$LT$pest..parser_state..ParsingToken$u20$as$u20$core..clone..Clone$GT$5clone17h56ee7e120c02ad7cE.exit.i"

"_ZN71_$LT$pest..parser_state..ParsingToken$u20$as$u20$core..clone..Clone$GT$5clone17h56ee7e120c02ad7cE.exit.i": ; preds = %bb.h, %bb.g, %.noexc12.i, %.noexc.i
  %i.v = getelementptr inbounds nuw [32 x i8], ptr %i.j, i64 %.sroa.7.024.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.v, ptr noundef nonnull align 8 dereferenceable(32) %i.a, i64 32, i1 false), !noalias !20295
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !20289
  %i.w = icmp eq i64 %i.o, 0
  br i1 %i.w, label %"_ZN87_$LT$T$u20$as$u20$alloc..slice..$LT$impl$u20$$u5b$T$u5d$$GT$..to_vec_in..ConvertVec$GT$6to_vec17h2b39afa53715f4eeE.exit", label %bb.c

bb.i:                                             ; preds = %bb.f, %bb.e
  %lpad.loopexit.i = landingpad { ptr, i32 }
          cleanup
  store i64 %.sroa.7.024.i, ptr %i.m, align 8, !alias.scope !20298, !noalias !20289
  call void @"_ZN4core3ptr76drop_in_place$LT$alloc..vec..Vec$LT$pest..parser_state..ParsingToken$GT$$GT$17h4123408fd8756f23E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.b) #55, !noalias !20295
  resume { ptr, i32 } %lpad.loopexit.i

"_ZN87_$LT$T$u20$as$u20$alloc..slice..$LT$impl$u20$$u5b$T$u5d$$GT$..to_vec_in..ConvertVec$GT$6to_vec17h2b39afa53715f4eeE.exit": ; preds = %bb.c, %"_ZN71_$LT$pest..parser_state..ParsingToken$u20$as$u20$core..clone..Clone$GT$5clone17h56ee7e120c02ad7cE.exit.i", %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17hd5e7ac0f9a14006eE.exit.thread.i"
  %2 = phi ptr [ %i.i, %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17hd5e7ac0f9a14006eE.exit.thread.i" ], [ %i.m, %"_ZN71_$LT$pest..parser_state..ParsingToken$u20$as$u20$core..clone..Clone$GT$5clone17h56ee7e120c02ad7cE.exit.i" ], [ %i.m, %bb.c ]
  store i64 %.16.val, ptr %2, align 8, !noalias !20289
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false), !noalias !20288
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !20289
  ret void
}

; Function Attrs: nonlazybind uwtable
define noundef nonnull align 8 dereferenceable(24) ptr @"_ZN67_$LT$insta..snapshot..RUN_ID$u20$as$u20$core..ops..deref..Deref$GT$5deref17h69fd0d7c81ffe3efE"(ptr noalias noundef nonnull readonly align 1 captures(none) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load atomic i8, ptr getelementptr inbounds nuw (i8, ptr @"_ZN67_$LT$insta..snapshot..RUN_ID$u20$as$u20$core..ops..deref..Deref$GT$5deref11__stability4LAZY17he90feb0a1931a284E", i64 24) acquire, align 8 ; 2 uses
  %i.b = icmp ult i8 %i.a, 4
  tail call void @llvm.assume(i1 %i.b)
  %.not.i = icmp eq i8 %i.a, 2
  br i1 %.not.i, label %"_ZN4spin4once17Once$LT$T$C$R$GT$13try_call_once17heac92c3a00cba715E.exit", label %bb.b, !prof !23

bb.b:                                             ; preds = %bb.a
  %i.c = tail call fastcc noundef align 8 dereferenceable(24) ptr @"_ZN4spin4once17Once$LT$T$C$R$GT$18try_call_once_slow17h9a2f33b22f335761E"()
  br label %"_ZN4spin4once17Once$LT$T$C$R$GT$13try_call_once17heac92c3a00cba715E.exit"

"_ZN4spin4once17Once$LT$T$C$R$GT$13try_call_once17heac92c3a00cba715E.exit": ; preds = %bb.a, %bb.b
  %.sroa.0.0.i = phi ptr [ %i.c, %bb.b ], [ @"_ZN67_$LT$insta..snapshot..RUN_ID$u20$as$u20$core..ops..deref..Deref$GT$5deref11__stability4LAZY17he90feb0a1931a284E", %bb.a ]
  ret ptr %.sroa.0.0.i
}

; Function Attrs: nonlazybind uwtable
define void @"_ZN67_$LT$insta..snapshot..RUN_ID$u20$as$u20$lazy_static..LazyStatic$GT$10initialize17hac9e1024f136c916E"(ptr noalias noundef nonnull readonly align 1 captures(none) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load atomic i8, ptr getelementptr inbounds nuw (i8, ptr @"_ZN67_$LT$insta..snapshot..RUN_ID$u20$as$u20$core..ops..deref..Deref$GT$5deref11__stability4LAZY17he90feb0a1931a284E", i64 24) acquire, align 8 ; 2 uses
  %i.b = icmp ult i8 %i.a, 4
  tail call void @llvm.assume(i1 %i.b)
  %.not.i.i = icmp eq i8 %i.a, 2
  br i1 %.not.i.i, label %"_ZN67_$LT$insta..snapshot..RUN_ID$u20$as$u20$core..ops..deref..Deref$GT$5deref17h69fd0d7c81ffe3efE.exit", label %bb.b, !prof !23

bb.b:                                             ; preds = %bb.a
  %i.c = tail call fastcc noundef align 8 dereferenceable(24) ptr @"_ZN4spin4once17Once$LT$T$C$R$GT$18try_call_once_slow17h9a2f33b22f335761E"() ; 0 uses
  br label %"_ZN67_$LT$insta..snapshot..RUN_ID$u20$as$u20$core..ops..deref..Deref$GT$5deref17h69fd0d7c81ffe3efE.exit"

"_ZN67_$LT$insta..snapshot..RUN_ID$u20$as$u20$core..ops..deref..Deref$GT$5deref17h69fd0d7c81ffe3efE.exit": ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @"_ZN68_$LT$core..num..error..ParseIntError$u20$as$u20$core..fmt..Debug$GT$3fmt17ha3a87f33f6dad506E"(ptr noalias noundef readonly align 1 captures(address, read_provenance) dereferenceable(1) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #1 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %0, ptr %i.a, align 8
  %i.b = call noundef zeroext i1 @_ZN4core3fmt9Formatter26debug_struct_field1_finish17h8a12e96a3fe33b10E(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @753, i64 noundef 13, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @754, i64 noundef 4, ptr noundef nonnull align 1 %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @752)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i1 %i.b
}

; Function Attrs: nonlazybind uwtable
define noundef nonnull align 8 ptr @"_ZN68_$LT$insta..env..TOOL_CONFIGS$u20$as$u20$core..ops..deref..Deref$GT$5deref17h24f077b5c988242bE"(ptr noalias noundef nonnull readonly align 1 captures(none) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load atomic i8, ptr getelementptr inbounds nuw (i8, ptr @"_ZN68_$LT$insta..env..TOOL_CONFIGS$u20$as$u20$core..ops..deref..Deref$GT$5deref11__stability4LAZY17haef53a17c81ab5cdE", i64 32) acquire, align 8 ; 2 uses
  %i.b = icmp ult i8 %i.a, 4
  tail call void @llvm.assume(i1 %i.b)
  %.not.i = icmp eq i8 %i.a, 2
  br i1 %.not.i, label %"_ZN4spin4once17Once$LT$T$C$R$GT$13try_call_once17h055562626a36e712E.exit", label %bb.b, !prof !23

bb.b:                                             ; preds = %bb.a
  %i.c = tail call fastcc noundef nonnull align 8 ptr @"_ZN4spin4once17Once$LT$T$C$R$GT$18try_call_once_slow17hf175232a11969513E"()
  br label %"_ZN4spin4once17Once$LT$T$C$R$GT$13try_call_once17h055562626a36e712E.exit"

"_ZN4spin4once17Once$LT$T$C$R$GT$13try_call_once17h055562626a36e712E.exit": ; preds = %bb.a, %bb.b
  %.sroa.0.0.i = phi ptr [ %i.c, %bb.b ], [ @"_ZN68_$LT$insta..env..TOOL_CONFIGS$u20$as$u20$core..ops..deref..Deref$GT$5deref11__stability4LAZY17haef53a17c81ab5cdE", %bb.a ]
  ret ptr %.sroa.0.0.i
}

; Function Attrs: nonlazybind uwtable
define void @"_ZN68_$LT$insta..env..TOOL_CONFIGS$u20$as$u20$lazy_static..LazyStatic$GT$10initialize17h04eb0a4a13e465cfE"(ptr noalias noundef nonnull readonly align 1 captures(none) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load atomic i8, ptr getelementptr inbounds nuw (i8, ptr @"_ZN68_$LT$insta..env..TOOL_CONFIGS$u20$as$u20$core..ops..deref..Deref$GT$5deref11__stability4LAZY17haef53a17c81ab5cdE", i64 32) acquire, align 8 ; 2 uses
  %i.b = icmp ult i8 %i.a, 4
  tail call void @llvm.assume(i1 %i.b)
  %.not.i.i = icmp eq i8 %i.a, 2
  br i1 %.not.i.i, label %"_ZN68_$LT$insta..env..TOOL_CONFIGS$u20$as$u20$core..ops..deref..Deref$GT$5deref17h24f077b5c988242bE.exit", label %bb.b, !prof !23

bb.b:                                             ; preds = %bb.a
  %i.c = tail call fastcc noundef nonnull align 8 ptr @"_ZN4spin4once17Once$LT$T$C$R$GT$18try_call_once_slow17hf175232a11969513E"() ; 0 uses
  br label %"_ZN68_$LT$insta..env..TOOL_CONFIGS$u20$as$u20$core..ops..deref..Deref$GT$5deref17h24f077b5c988242bE.exit"

"_ZN68_$LT$insta..env..TOOL_CONFIGS$u20$as$u20$core..ops..deref..Deref$GT$5deref17h24f077b5c988242bE.exit": ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @"_ZN68_$LT$insta..redaction..ContentPath$u20$as$u20$core..fmt..Display$GT$3fmt17h99d24861f2e6a6f4E"(ptr noalias noundef readonly align 8 captures(none) dereferenceable(16) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 8 uses
  %i.b = alloca [48 x i8], align 8                ; 8 uses
  %i.c = alloca [48 x i8], align 8                ; 8 uses
  %i.d = alloca [16 x i8], align 8                ; 5 uses
  %i.e = alloca [8 x i8], align 8                 ; 4 uses
  %i.f = alloca [16 x i8], align 8                ; 5 uses
  %i.g = alloca [16 x i8], align 8                ; 5 uses
  %i.h = alloca [16 x i8], align 8                ; 5 uses
  %i.i = alloca [16 x i8], align 8                ; 5 uses
  %i.j = load ptr, ptr %0, align 8, !nonnull !17, !align !50, !noundef !17 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.l = load i64, ptr %i.k, align 8, !noundef !17 ; 2 uses
  %.idx = shl nuw nsw i64 %i.l, 6
  %i.m = getelementptr inbounds nuw i8, ptr %i.j, i64 %.idx
  %.not = icmp eq i64 %i.l, 0
  br i1 %.not, label %.loopexit, label %.split.lr.ph

.split.lr.ph:                                     ; preds = %bb.a
  %.val29 = load ptr, ptr %1, align 8, !nonnull !17, !noundef !17 ; 5 uses
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val30 = load ptr, ptr %i.n, align 8, !nonnull !17, !noundef !17 ; 4 uses
  %i.o = getelementptr inbounds nuw i8, ptr %.val30, i64 24
  %i.p = load ptr, ptr %i.o, align 8, !invariant.load !17, !noalias !20309, !nonnull !17 ; 2 uses
  %.sroa.412.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %.sroa.570.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.sroa.771.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %.sroa.872.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %.sroa.1073.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.q = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %.sroa.416.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %.sroa.564.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %.sroa.765.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %.sroa.866.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %.sroa.1067.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %i.r = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %.sroa.420.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %.sroa.552.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.sroa.753.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %.sroa.854.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %.sroa.1055.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  br label %.split

.split:                                           ; preds = %.split.lr.ph, %bb.g
  %.sroa.021.084 = phi ptr [ %i.j, %.split.lr.ph ], [ %i.s, %bb.g ] ; 6 uses
  %i.s = getelementptr inbounds nuw i8, ptr %.sroa.021.084, i64 64 ; 2 uses
  %i.t = call noundef zeroext i1 %i.p(ptr noundef nonnull align 1 %.val29, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @3, i64 noundef 1), !noalias !20309, !inline_history !8
  br i1 %i.t, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %.split
  %i.u = load i8, ptr %.sroa.021.084, align 16, !range !55, !noundef !17 ; 3 uses
  %i.v = icmp samesign ugt i8 %i.u, 29
  %i.w = zext nneg i8 %i.u to i64
  %i.x = add nsw i64 %i.w, -29
  %i.y = select i1 %i.v, i64 %i.x, i64 0
  switch i64 %i.y, label %bb.c [
    i64 0, label %tailrecurse.i.i
    i64 1, label %_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit35
    i64 2, label %_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit40
  ]

bb.c:                                             ; preds = %bb.b
  unreachable

tailrecurse.i.i:                                  ; preds = %bb.b, %bb.f
  %i.z = phi i8 [ %.pre, %bb.f ], [ %i.u, %bb.b ]
  %.tr.i.i = phi ptr [ %i.ab, %bb.f ], [ %.sroa.021.084, %bb.b ] ; 3 uses
  switch i8 %i.z, label %.split78 [
    i8 17, label %bb.f
    i8 21, label %bb.d
    i8 22, label %bb.e
    i8 14, label %_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit45
  ]

bb.d:                                             ; preds = %tailrecurse.i.i
  br label %bb.f

bb.e:                                             ; preds = %tailrecurse.i.i
  br label %bb.f

bb.f:                                             ; preds = %tailrecurse.i.i, %bb.e, %bb.d
  %.sink.i.i = phi i64 [ 40, %bb.e ], [ 24, %bb.d ], [ 8, %tailrecurse.i.i ]
  %i.aa = getelementptr inbounds nuw i8, ptr %.tr.i.i, i64 %.sink.i.i
  %i.ab = load ptr, ptr %i.aa, align 8, !nonnull !17, !align !50, !noundef !17 ; 2 uses
  %.pre = load i8, ptr %i.ab, align 16, !range !51
  br label %tailrecurse.i.i

_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit35: ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  %i.ac = getelementptr inbounds nuw i8, ptr %.sroa.021.084, i64 8
  %i.ad = load ptr, ptr %i.ac, align 8, !nonnull !17, !align !31, !noundef !17
  %i.ae = getelementptr inbounds nuw i8, ptr %.sroa.021.084, i64 16
  %i.af = load i64, ptr %i.ae, align 16, !noundef !17
  store ptr %i.ad, ptr %i.g, align 8
  store i64 %i.af, ptr %i.q, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  store ptr %i.g, ptr %i.f, align 8
  store ptr @"_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h7b792248e218ac2cE", ptr %.sroa.416.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !20310
  store ptr @305, ptr %i.c, align 8
  store i64 1, ptr %.sroa.564.0..sroa_idx, align 8
  store ptr %i.f, ptr %.sroa.765.0..sroa_idx, align 8
  store i64 1, ptr %.sroa.866.0..sroa_idx, align 8
  store ptr null, ptr %.sroa.1067.0..sroa_idx, align 8
  %i.ag = call noundef zeroext i1 @_ZN4core3fmt5write17h80461e1e45e4fdd2E(ptr noundef nonnull align 1 %.val29, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %.val30, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.c), !noalias !20310
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !20310
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  br i1 %i.ag, label %.loopexit, label %bb.g

_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit40: ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
end_hunk_1
