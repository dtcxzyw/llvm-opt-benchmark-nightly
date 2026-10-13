Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/nickel-rs/original/nickel_lang_parser-e220ddae5243a2c1.nickel_lang_parser.a68346a9921300d1-cgu.0?download=true
inline.NumInlined: 76566
inline.NumDeleted: 6766
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumRuntimeUnrolled: 11
loop-unroll.NumUnrolled: 22
begin_hunk_0_@"_ZN101_$LT$nickel_lang_parser..ast..record..FieldDef$u20$as$u20$nickel_lang_parser..ast..alloc..CloneTo$GT$8clone_to17hb64088be888e7ba8E":bb.a
  %.sroa.23.16..sroa_idx59 = getelementptr inbounds nuw i8, ptr %i.c, i64 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(23) %.sroa.23.16..sroa_idx59, ptr noundef nonnull align 1 dereferenceable(23) %.sroa.55.sroa.5.0..sroa.55.0..sroa_idx.sroa_idx, i64 23, i1 false)
  %.sroa.25.16..sroa_idx88 = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  store ptr %.sroa.55.sroa.6.0.copyload, ptr %.sroa.25.16..sroa_idx88, align 8, !alias.scope !360, !noalias !361
  br label %"_ZN68_$LT$nickel_lang_parser..ast..Node$u20$as$u20$core..clone..Clone$GT$5clone17h31d3f9a1732a0f67E.exit.i"

bb.ac:                                            ; preds = %bb.z
  store i8 2, ptr %i.c, align 8, !alias.scope !360, !noalias !361
  %.sroa.23.16..sroa_idx58 = getelementptr inbounds nuw i8, ptr %i.c, i64 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(23) %.sroa.23.16..sroa_idx58, ptr noundef nonnull align 1 dereferenceable(23) %.sroa.55.sroa.5.0..sroa.55.0..sroa_idx.sroa_idx, i64 23, i1 false)
  %.sroa.25.16..sroa_idx86 = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  store ptr %.sroa.55.sroa.6.0.copyload, ptr %.sroa.25.16..sroa_idx86, align 8, !alias.scope !360, !noalias !361
  br label %"_ZN68_$LT$nickel_lang_parser..ast..Node$u20$as$u20$core..clone..Clone$GT$5clone17h31d3f9a1732a0f67E.exit.i"

bb.ad:                                            ; preds = %bb.z
  store i8 3, ptr %i.c, align 8, !alias.scope !360, !noalias !361
  %.sroa.23.16..sroa_idx57 = getelementptr inbounds nuw i8, ptr %i.c, i64 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(23) %.sroa.23.16..sroa_idx57, ptr noundef nonnull align 1 dereferenceable(23) %.sroa.55.sroa.5.0..sroa.55.0..sroa_idx.sroa_idx, i64 23, i1 false)
  %.sroa.25.16..sroa_idx84 = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  store ptr %.sroa.55.sroa.6.0.copyload, ptr %.sroa.25.16..sroa_idx84, align 8, !alias.scope !360, !noalias !361
  br label %"_ZN68_$LT$nickel_lang_parser..ast..Node$u20$as$u20$core..clone..Clone$GT$5clone17h31d3f9a1732a0f67E.exit.i"

bb.ae:                                            ; preds = %bb.z
  store i8 4, ptr %i.c, align 8, !alias.scope !360, !noalias !361
  %.sroa.23.16..sroa_idx56 = getelementptr inbounds nuw i8, ptr %i.c, i64 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(23) %.sroa.23.16..sroa_idx56, ptr noundef nonnull align 1 dereferenceable(23) %.sroa.55.sroa.5.0..sroa.55.0..sroa_idx.sroa_idx, i64 23, i1 false)
  %.sroa.25.16..sroa_idx82 = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  store ptr %.sroa.55.sroa.6.0.copyload, ptr %.sroa.25.16..sroa_idx82, align 8, !alias.scope !360, !noalias !361
  br label %"_ZN68_$LT$nickel_lang_parser..ast..Node$u20$as$u20$core..clone..Clone$GT$5clone17h31d3f9a1732a0f67E.exit.i"

bb.af:                                            ; preds = %bb.z
  store i8 5, ptr %i.c, align 8, !alias.scope !360, !noalias !361
  %.sroa.23.16..sroa_idx55 = getelementptr inbounds nuw i8, ptr %i.c, i64 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(23) %.sroa.23.16..sroa_idx55, ptr noundef nonnull align 1 dereferenceable(23) %.sroa.55.sroa.5.0..sroa.55.0..sroa_idx.sroa_idx, i64 23, i1 false)
  %.sroa.25.16..sroa_idx80 = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  store ptr %.sroa.55.sroa.6.0.copyload, ptr %.sroa.25.16..sroa_idx80, align 8, !alias.scope !360, !noalias !361
  br label %"_ZN68_$LT$nickel_lang_parser..ast..Node$u20$as$u20$core..clone..Clone$GT$5clone17h31d3f9a1732a0f67E.exit.i"

bb.ag:                                            ; preds = %bb.z
  store i8 6, ptr %i.c, align 8, !alias.scope !360, !noalias !361
  %.sroa.23.16..sroa_idx54 = getelementptr inbounds nuw i8, ptr %i.c, i64 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(23) %.sroa.23.16..sroa_idx54, ptr noundef nonnull align 1 dereferenceable(23) %.sroa.55.sroa.5.0..sroa.55.0..sroa_idx.sroa_idx, i64 23, i1 false)
  %.sroa.25.16..sroa_idx78 = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  store ptr %.sroa.55.sroa.6.0.copyload, ptr %.sroa.25.16..sroa_idx78, align 8, !alias.scope !360, !noalias !361
  br label %"_ZN68_$LT$nickel_lang_parser..ast..Node$u20$as$u20$core..clone..Clone$GT$5clone17h31d3f9a1732a0f67E.exit.i"

bb.ah:                                            ; preds = %bb.z
  store i8 7, ptr %i.c, align 8, !alias.scope !360, !noalias !361
  %.sroa.23.16..sroa_idx53 = getelementptr inbounds nuw i8, ptr %i.c, i64 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(23) %.sroa.23.16..sroa_idx53, ptr noundef nonnull align 1 dereferenceable(23) %.sroa.55.sroa.5.0..sroa.55.0..sroa_idx.sroa_idx, i64 23, i1 false)
  %.sroa.25.16..sroa_idx76 = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  store ptr %.sroa.55.sroa.6.0.copyload, ptr %.sroa.25.16..sroa_idx76, align 8, !alias.scope !360, !noalias !361
  br label %"_ZN68_$LT$nickel_lang_parser..ast..Node$u20$as$u20$core..clone..Clone$GT$5clone17h31d3f9a1732a0f67E.exit.i"

bb.ai:                                            ; preds = %bb.z
  store i8 8, ptr %i.c, align 8, !alias.scope !360, !noalias !361
  %.sroa.23.16..sroa_idx52 = getelementptr inbounds nuw i8, ptr %i.c, i64 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(23) %.sroa.23.16..sroa_idx52, ptr noundef nonnull align 1 dereferenceable(23) %.sroa.55.sroa.5.0..sroa.55.0..sroa_idx.sroa_idx, i64 23, i1 false)
  %.sroa.25.16..sroa_idx74 = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  store ptr %.sroa.55.sroa.6.0.copyload, ptr %.sroa.25.16..sroa_idx74, align 8, !alias.scope !360, !noalias !361
  br label %"_ZN68_$LT$nickel_lang_parser..ast..Node$u20$as$u20$core..clone..Clone$GT$5clone17h31d3f9a1732a0f67E.exit.i"

bb.aj:                                            ; preds = %bb.z
  %i.as = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  %i.at = getelementptr inbounds nuw i8, ptr %1, i64 236
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %i.as, ptr noundef nonnull align 4 dereferenceable(20) %i.at, i64 20, i1 false)
  %i.au = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  store ptr %.sroa.55.sroa.6.0.copyload, ptr %i.au, align 8, !alias.scope !358, !noalias !359
  store i8 9, ptr %i.c, align 8, !alias.scope !358, !noalias !359
  br label %"_ZN68_$LT$nickel_lang_parser..ast..Node$u20$as$u20$core..clone..Clone$GT$5clone17h31d3f9a1732a0f67E.exit.i"

bb.ak:                                            ; preds = %bb.z
  store i8 10, ptr %i.c, align 8, !alias.scope !360, !noalias !361
  %.sroa.23.16..sroa_idx51 = getelementptr inbounds nuw i8, ptr %i.c, i64 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(23) %.sroa.23.16..sroa_idx51, ptr noundef nonnull align 1 dereferenceable(23) %.sroa.55.sroa.5.0..sroa.55.0..sroa_idx.sroa_idx, i64 23, i1 false)
  %.sroa.25.16..sroa_idx72 = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  store ptr %.sroa.55.sroa.6.0.copyload, ptr %.sroa.25.16..sroa_idx72, align 8, !alias.scope !360, !noalias !361
  br label %"_ZN68_$LT$nickel_lang_parser..ast..Node$u20$as$u20$core..clone..Clone$GT$5clone17h31d3f9a1732a0f67E.exit.i"

bb.al:                                            ; preds = %bb.z
  store i8 11, ptr %i.c, align 8, !alias.scope !360, !noalias !361
  %.sroa.23.16..sroa_idx50 = getelementptr inbounds nuw i8, ptr %i.c, i64 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(23) %.sroa.23.16..sroa_idx50, ptr noundef nonnull align 1 dereferenceable(23) %.sroa.55.sroa.5.0..sroa.55.0..sroa_idx.sroa_idx, i64 23, i1 false)
  %.sroa.25.16..sroa_idx70 = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  store ptr %.sroa.55.sroa.6.0.copyload, ptr %.sroa.25.16..sroa_idx70, align 8, !alias.scope !360, !noalias !361
  br label %"_ZN68_$LT$nickel_lang_parser..ast..Node$u20$as$u20$core..clone..Clone$GT$5clone17h31d3f9a1732a0f67E.exit.i"

bb.am:                                            ; preds = %bb.z
  store i8 12, ptr %i.c, align 8, !alias.scope !360, !noalias !361
  %.sroa.23.16..sroa_idx49 = getelementptr inbounds nuw i8, ptr %i.c, i64 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(23) %.sroa.23.16..sroa_idx49, ptr noundef nonnull align 1 dereferenceable(23) %.sroa.55.sroa.5.0..sroa.55.0..sroa_idx.sroa_idx, i64 23, i1 false)
  %.sroa.25.16..sroa_idx68 = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  store ptr %.sroa.55.sroa.6.0.copyload, ptr %.sroa.25.16..sroa_idx68, align 8, !alias.scope !360, !noalias !361
  br label %"_ZN68_$LT$nickel_lang_parser..ast..Node$u20$as$u20$core..clone..Clone$GT$5clone17h31d3f9a1732a0f67E.exit.i"

bb.an:                                            ; preds = %bb.z
  store i8 13, ptr %i.c, align 8, !alias.scope !360, !noalias !361
  %.sroa.23.16..sroa_idx48 = getelementptr inbounds nuw i8, ptr %i.c, i64 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(23) %.sroa.23.16..sroa_idx48, ptr noundef nonnull align 1 dereferenceable(23) %.sroa.55.sroa.5.0..sroa.55.0..sroa_idx.sroa_idx, i64 23, i1 false)
  %.sroa.25.16..sroa_idx66 = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  store ptr %.sroa.55.sroa.6.0.copyload, ptr %.sroa.25.16..sroa_idx66, align 8, !alias.scope !360, !noalias !361
  br label %"_ZN68_$LT$nickel_lang_parser..ast..Node$u20$as$u20$core..clone..Clone$GT$5clone17h31d3f9a1732a0f67E.exit.i"

bb.ao:                                            ; preds = %bb.z
  store i8 14, ptr %i.c, align 8, !alias.scope !360, !noalias !361
  %.sroa.23.16..sroa_idx47 = getelementptr inbounds nuw i8, ptr %i.c, i64 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(23) %.sroa.23.16..sroa_idx47, ptr noundef nonnull align 1 dereferenceable(23) %.sroa.55.sroa.5.0..sroa.55.0..sroa_idx.sroa_idx, i64 23, i1 false)
  %.sroa.25.16..sroa_idx64 = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  store ptr %.sroa.55.sroa.6.0.copyload, ptr %.sroa.25.16..sroa_idx64, align 8, !alias.scope !360, !noalias !361
  br label %"_ZN68_$LT$nickel_lang_parser..ast..Node$u20$as$u20$core..clone..Clone$GT$5clone17h31d3f9a1732a0f67E.exit.i"

bb.ap:                                            ; preds = %bb.z
  store i8 15, ptr %i.c, align 8, !alias.scope !360, !noalias !361
  %.sroa.23.16..sroa_idx46 = getelementptr inbounds nuw i8, ptr %i.c, i64 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(23) %.sroa.23.16..sroa_idx46, ptr noundef nonnull align 1 dereferenceable(23) %.sroa.55.sroa.5.0..sroa.55.0..sroa_idx.sroa_idx, i64 23, i1 false)
  %.sroa.25.16..sroa_idx62 = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  store ptr %.sroa.55.sroa.6.0.copyload, ptr %.sroa.25.16..sroa_idx62, align 8, !alias.scope !360, !noalias !361
  br label %"_ZN68_$LT$nickel_lang_parser..ast..Node$u20$as$u20$core..clone..Clone$GT$5clone17h31d3f9a1732a0f67E.exit.i"

bb.aq:                                            ; preds = %bb.z
  %i.av = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.aw = getelementptr inbounds nuw i8, ptr %1, i64 240
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.av, ptr noundef nonnull align 8 dereferenceable(16) %i.aw, i64 16, i1 false)
  %.sroa.25.24..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  store ptr %.sroa.55.sroa.6.0.copyload, ptr %.sroa.25.24..sroa_idx, align 8, !alias.scope !360, !noalias !361
  store i8 16, ptr %i.c, align 8, !alias.scope !358, !noalias !359
  br label %"_ZN68_$LT$nickel_lang_parser..ast..Node$u20$as$u20$core..clone..Clone$GT$5clone17h31d3f9a1732a0f67E.exit.i"

bb.ar:                                            ; preds = %bb.z
  store i8 17, ptr %i.c, align 8, !alias.scope !360, !noalias !361
  %.sroa.23.16..sroa_idx45 = getelementptr inbounds nuw i8, ptr %i.c, i64 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(23) %.sroa.23.16..sroa_idx45, ptr noundef nonnull align 1 dereferenceable(23) %.sroa.55.sroa.5.0..sroa.55.0..sroa_idx.sroa_idx, i64 23, i1 false)
  %.sroa.25.16..sroa_idx60 = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  store ptr %.sroa.55.sroa.6.0.copyload, ptr %.sroa.25.16..sroa_idx60, align 8, !alias.scope !360, !noalias !361
  br label %"_ZN68_$LT$nickel_lang_parser..ast..Node$u20$as$u20$core..clone..Clone$GT$5clone17h31d3f9a1732a0f67E.exit.i"

bb.as:                                            ; preds = %bb.z
  store i8 18, ptr %i.c, align 8, !alias.scope !360, !noalias !361
  %.sroa.23.16..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(23) %.sroa.23.16..sroa_idx, ptr noundef nonnull align 1 dereferenceable(23) %.sroa.55.sroa.5.0..sroa.55.0..sroa_idx.sroa_idx, i64 23, i1 false)
  %.sroa.25.16..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  store ptr %.sroa.55.sroa.6.0.copyload, ptr %.sroa.25.16..sroa_idx, align 8, !alias.scope !360, !noalias !361
  br label %"_ZN68_$LT$nickel_lang_parser..ast..Node$u20$as$u20$core..clone..Clone$GT$5clone17h31d3f9a1732a0f67E.exit.i"

"_ZN68_$LT$nickel_lang_parser..ast..Node$u20$as$u20$core..clone..Clone$GT$5clone17h31d3f9a1732a0f67E.exit.i": ; preds = %bb.as, %bb.ar, %bb.aq, %bb.ap, %bb.ao, %bb.an, %bb.am, %bb.al, %bb.ak, %bb.aj, %bb.ai, %bb.ah, %bb.ag, %bb.af, %bb.ae, %bb.ad, %bb.ac, %bb.ab, %bb.aa
  invoke void @"_ZN89_$LT$nickel_lang_parser..ast..Node$u20$as$u20$nickel_lang_parser..ast..alloc..CloneTo$GT$8clone_to17he7f24d20598ea124E"(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.d, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(32) %i.c, ptr noundef nonnull align 8 %2)
          to label %bb.av unwind label %bb.au, !inline_history !318

bb.at:                                            ; preds = %._crit_edge, %bb.av
  %i.ax = getelementptr inbounds nuw i8, ptr %1, i64 200
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 200
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ay, ptr noundef nonnull align 8 dereferenceable(16) %i.ax, i64 16, i1 false)
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 264
  store ptr %.sroa.0.0.i.i.i, ptr %i.az, align 8
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 272
  store i64 %i.i, ptr %i.ba, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(200) %0, ptr noundef nonnull align 8 dereferenceable(200) %i.e, i64 200, i1 false)
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 216
  store i32 %.sroa.03.0.copyload, ptr %i.bb, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 220
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(44) %.sroa.5.0..sroa_idx, ptr noundef nonnull align 4 dereferenceable(44) %.sroa.427, i64 44, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  ret void

bb.au:                                            ; preds = %"_ZN68_$LT$nickel_lang_parser..ast..Node$u20$as$u20$core..clone..Clone$GT$5clone17h31d3f9a1732a0f67E.exit.i"
  %i.bc = landingpad { ptr, i32 }
          cleanup
  call fastcc void @"_ZN4core3ptr67drop_in_place$LT$nickel_lang_parser..ast..record..FieldMetadata$GT$17hd008e3141067cdbcE"(ptr noalias noundef align 8 dereferenceable(200) %i.e) #53
  br label %.thread275

bb.av:                                            ; preds = %"_ZN68_$LT$nickel_lang_parser..ast..Node$u20$as$u20$core..clone..Clone$GT$5clone17h31d3f9a1732a0f67E.exit.i"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !356
  %.sroa.427.16..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.427, i64 12
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(32) %.sroa.427.16..sroa_idx, ptr noundef nonnull align 8 dereferenceable(32) %i.d, i64 32, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.sroa.427, ptr noundef nonnull align 4 dereferenceable(12) %.sroa.429, i64 12, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !356
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.429)
  br label %bb.at

.thread275:                                       ; preds = %bb.aw, %bb.au
  %.pn278 = phi { ptr, i32 } [ %i.bc, %bb.au ], [ %lpad.phi, %bb.aw ]
  resume { ptr, i32 } %.pn278

.loopexit:                                        ; preds = %"_ZN88_$LT$nickel_lang_parser..ast..Ast$u20$as$u20$nickel_lang_parser..ast..alloc..CloneTo$GT$8clone_to17ha3fa6c5352cae527E.exit.i"
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.aw

.loopexit.split-lp:                               ; preds = %.invoke, %bb.c, %"_ZN102_$LT$core..iter..adapters..map..Map$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h18674a0b9b239617E.exit.i.thread"
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.aw

bb.aw:                                            ; preds = %.loopexit.split-lp, %.loopexit
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  tail call fastcc void @"_ZN4core3ptr67drop_in_place$LT$nickel_lang_parser..ast..record..FieldMetadata$GT$17hd008e3141067cdbcE"(ptr noalias noundef align 8 dereferenceable(200) %1) #53
  br label %.thread275
}

; Function Attrs: nonlazybind uwtable
define void @"_ZN101_$LT$nickel_lang_parser..ast..typ..RecordRows$u20$as$u20$nickel_lang_parser..uniterm..FixTypeVars$GT$17fix_type_vars_env17h2bb1bbd7daac5441E"(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([72 x i8]) align 8 captures(none) dereferenceable(72) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(40) %1, ptr noundef nonnull align 8 captures(none) %2, ptr noundef nonnull %3, ptr noundef %4, ptr noalias nofree noundef readonly align 4 captures(none) dead_on_return dereferenceable(12) %5) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 6 uses
  %i.b = alloca [16 x i8], align 8                ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr %3, ptr %i.b, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %4, ptr %i.c, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.d = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr @"_ZN3std4hash6random11RandomState3new4KEYS29_$u7b$$u7b$constant$u7d$$u7d$28_$u7b$$u7b$closure$u7d$$u7d$3VAL17h3d0bd8071983845cE") ; 5 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 16 ; 2 uses
  %i.f = load i8, ptr %i.e, align 8, !range !21, !noalias !374, !noundef !19
  %i.g = trunc nuw i8 %i.f to i1
  br i1 %i.g, label %._ZN4core3ops8function6FnOnce9call_once17h6aa02063dcde1d9cE.exit_crit_edge.i.i.i.i, label %"_ZN3std3sys12thread_local6native4lazy20Storage$LT$T$C$D$GT$16get_or_init_slow17h9fd81b5b7b9c8ec0E.exit.i.i.i.i", !prof !22

._ZN4core3ops8function6FnOnce9call_once17h6aa02063dcde1d9cE.exit_crit_edge.i.i.i.i: ; preds = %bb.a
  %.pre.i.i.i.i = load i64, ptr %i.d, align 8, !noalias !375
  %.phi.trans.insert.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %.pre1.i.i.i.i = load i64, ptr %.phi.trans.insert.i.i.i.i, align 8, !noalias !375
  br label %bb.b

"_ZN3std3sys12thread_local6native4lazy20Storage$LT$T$C$D$GT$16get_or_init_slow17h9fd81b5b7b9c8ec0E.exit.i.i.i.i": ; preds = %bb.a
  %i.h = invoke { i64, i64 } @_ZN3std3sys6random5linux19hashmap_random_keys17he133c8f345d0b53aE()
          to label %.noexc unwind label %bb.d     ; 2 uses

.noexc:                                           ; preds = %"_ZN3std3sys12thread_local6native4lazy20Storage$LT$T$C$D$GT$16get_or_init_slow17h9fd81b5b7b9c8ec0E.exit.i.i.i.i"
  %i.i = extractvalue { i64, i64 } %i.h, 0
  %i.j = extractvalue { i64, i64 } %i.h, 1        ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store i64 %i.j, ptr %i.k, align 8, !noalias !376
  store i8 1, ptr %i.e, align 8, !noalias !376
  br label %bb.b

bb.b:                                             ; preds = %.noexc, %._ZN4core3ops8function6FnOnce9call_once17h6aa02063dcde1d9cE.exit_crit_edge.i.i.i.i
  %.pre-phi.i = phi i64 [ %.pre1.i.i.i.i, %._ZN4core3ops8function6FnOnce9call_once17h6aa02063dcde1d9cE.exit_crit_edge.i.i.i.i ], [ %i.j, %.noexc ]
  %i.l = phi i64 [ %.pre.i.i.i.i, %._ZN4core3ops8function6FnOnce9call_once17h6aa02063dcde1d9cE.exit_crit_edge.i.i.i.i ], [ %i.i, %.noexc ] ; 2 uses
  %i.m = add i64 %i.l, 1
  store i64 %i.m, ptr %i.d, align 8, !noalias !375
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.a, ptr noundef nonnull align 8 dereferenceable(32) @1, i64 32, i1 false)
  %.sroa.43.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store i64 %i.l, ptr %.sroa.43.0..sroa_idx, align 8
  %.sroa.54.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  store i64 %.pre-phi.i, ptr %.sroa.54.0..sroa_idx, align 8
  call fastcc void @"_ZN101_$LT$nickel_lang_parser..ast..typ..RecordRows$u20$as$u20$nickel_lang_parser..uniterm..FixTypeVars$GT$17fix_type_vars_env6do_fix17h38cdac0f2c0c1964E"(ptr noalias noundef align 8 captures(address) dereferenceable(72) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(40) %1, ptr noundef nonnull align 8 %2, ptr noundef nonnull %3, ptr noundef %4, ptr noalias noundef align 4 captures(address) dereferenceable(12) %5, ptr noalias noundef align 8 captures(address) dereferenceable(48) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret void

bb.c:                                             ; preds = %bb.d
  resume { ptr, i32 } %i.n

bb.d:                                             ; preds = %"_ZN3std3sys12thread_local6native4lazy20Storage$LT$T$C$D$GT$16get_or_init_slow17h9fd81b5b7b9c8ec0E.exit.i.i.i.i"
  %i.n = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr153drop_in_place$LT$nickel_lang_parser..environment..Environment$LT$nickel_lang_parser..identifier..Ident$C$nickel_lang_parser..uniterm..VarKindCell$GT$$GT$17h758f9c2ccdeb1babE"(ptr noalias noundef align 8 dereferenceable(16) %i.b) #53
          to label %bb.c unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #55
  unreachable
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @"_ZN101_$LT$nickel_lang_parser..ast..typ..RecordRows$u20$as$u20$nickel_lang_parser..uniterm..FixTypeVars$GT$17fix_type_vars_env6do_fix17h38cdac0f2c0c1964E"(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(72) %0, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(40) %1, ptr noundef nonnull align 8 captures(none) %2, ptr noundef nonnull %3, ptr noundef %4, ptr noalias nofree noundef nonnull readonly align 4 captures(none) dead_on_return dereferenceable(12) %5, ptr noalias noundef nonnull align 8 captures(address) dead_on_return dereferenceable(48) %6) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [12 x i8], align 4                ; 4 uses
  %.sroa.444 = alloca [28 x i8], align 4          ; 2 uses
  %.sroa.6148 = alloca [20 x i8], align 4         ; 6 uses
  %i.b = alloca [48 x i8], align 8                ; 4 uses
  %i.c = alloca [72 x i8], align 8                ; 13 uses
  %.sroa.631.sroa.8 = alloca [28 x i8], align 4   ; 7 uses
  %.sroa.325 = alloca [20 x i8], align 4          ; 2 uses
  %i.d = alloca [72 x i8], align 8                ; 13 uses
  %.sroa.613.sroa.8 = alloca [20 x i8], align 4   ; 7 uses
  %i.e = alloca [56 x i8], align 8                ; 5 uses
  %i.f = alloca [4 x i8], align 4                 ; 6 uses
  %i.g = alloca [16 x i8], align 8                ; 6 uses
  store ptr %3, ptr %i.g, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 8 ; 3 uses
  store ptr %4, ptr %i.h, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.j = load i32, ptr %i.i, align 8, !range !26, !noundef !19 ; 4 uses
  %i.k = icmp ne i32 %i.j, 4
  tail call void @llvm.assume(i1 %i.k)
  %i.l = add nsw i32 %i.j, -3
  %i.m = icmp samesign ugt i32 %i.j, 2
  %narrow = select i1 %i.m, i32 %i.l, i32 1
  switch i32 %narrow, label %bb.b [
    i32 0, label %bb.ag
    i32 1, label %bb.c
    i32 2, label %bb.d
    i32 3, label %bb.ag
  ]

bb.b:                                             ; preds = %bb.a
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.o = load ptr, ptr %i.n, align 8, !nonnull !19, !align !24, !noundef !19 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.q = load i32, ptr %i.p, align 8, !noundef !19
  invoke fastcc void @"_ZN9hashbrown3map28HashMap$LT$K$C$V$C$S$C$A$GT$6insert17h209d631a6b786bcfE"(ptr noalias noundef align 8 dereferenceable(48) %6, i32 noundef %i.q)
          to label %bb.k unwind label %bb.ai

bb.d:                                             ; preds = %bb.a
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 12
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 28
  %.sroa.2.0.copyload = load i32, ptr %.sroa.2.0..sroa_idx, align 4 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  store i32 %.sroa.2.0.copyload, ptr %i.f, align 4
  br label %bb.e

bb.e:                                             ; preds = %"_ZN4core4iter6traits8iterator8Iterator8find_map5check28_$u7b$$u7b$closure$u7d$$u7d$17h408ffa39bb93d464E.exit.i.i", %bb.d
  %.sroa.03.0.i14.i.i = phi ptr [ %.sroa.03.0.i.i.i, %"_ZN4core4iter6traits8iterator8Iterator8find_map5check28_$u7b$$u7b$closure$u7d$$u7d$17h408ffa39bb93d464E.exit.i.i" ], [ %i.g, %bb.d ] ; 3 uses
  %.not.i.i.i = icmp eq ptr %.sroa.03.0.i14.i.i, null
  br i1 %.not.i.i.i, label %bb.y, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.s = load ptr, ptr %.sroa.03.0.i14.i.i, align 8, !noalias !425, !nonnull !19, !noundef !19 ; 5 uses
  %i.t = getelementptr inbounds nuw i8, ptr %.sroa.03.0.i14.i.i, i64 8
  %i.u = load ptr, ptr %i.t, align 8, !noalias !425, !noundef !19 ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.u, null
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  %.sroa.03.0.i.i.i = select i1 %.not4.i.i.i, ptr null, ptr %i.v
  call void @llvm.experimental.noalias.scope.decl(metadata !426)
  call void @llvm.experimental.noalias.scope.decl(metadata !427)
  call void @llvm.experimental.noalias.scope.decl(metadata !428)
  %i.w = getelementptr inbounds nuw i8, ptr %i.s, i64 40
  %i.x = load i64, ptr %i.w, align 8, !alias.scope !429, !noalias !430, !noundef !19
  %i.y = icmp eq i64 %i.x, 0
  br i1 %i.y, label %"_ZN4core4iter6traits8iterator8Iterator8find_map5check28_$u7b$$u7b$closure$u7d$$u7d$17h408ffa39bb93d464E.exit.i.i", label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.z = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  %i.aa = getelementptr inbounds nuw i8, ptr %i.s, i64 48
  %.val.i.i.i.i.i = load i64, ptr %i.aa, align 8, !alias.scope !429, !noalias !430, !noundef !19
  %i.ab = getelementptr inbounds nuw i8, ptr %i.s, i64 56
  %.val5.i.i.i.i.i = load i64, ptr %i.ab, align 8, !alias.scope !429, !noalias !430, !noundef !19
  %i.ac = call fastcc noundef i64 @_ZN4core4hash11BuildHasher8hash_one17ha5ecd2a150def698E(i64 %.val.i.i.i.i.i, i64 %.val5.i.i.i.i.i, ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(4) %i.f), !noalias !431 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !432)
  call void @llvm.experimental.noalias.scope.decl(metadata !433)
  %i.ad = lshr i64 %i.ac, 57
  %i.ae = trunc nuw nsw i64 %i.ad to i8
  %i.af = getelementptr inbounds nuw i8, ptr %i.s, i64 24
  %i.ag = load i64, ptr %i.af, align 8, !alias.scope !434, !noalias !435, !noundef !19 ; 2 uses
  %i.ah = load ptr, ptr %i.z, align 8, !alias.scope !434, !noalias !435, !nonnull !19, !noundef !19 ; 2 uses
  %.sroa.0.0.vec.insert.i.i.i.i.i.i.i = insertelement <16 x i8> poison, i8 %i.ae, i64 0
  %.sroa.0.15.vec.insert.i.i.i.i.i.i.i = shufflevector <16 x i8> %.sroa.0.0.vec.insert.i.i.i.i.i.i.i, <16 x i8> poison, <16 x i32> zeroinitializer
  br label %bb.h

bb.h:                                             ; preds = %bb.j, %bb.g
  %.sroa.9.0.i.i.i.i.i.i.i = phi i64 [ 0, %bb.g ], [ %i.ay, %bb.j ]
  %.pn.i.i.i.i.i.i = phi i64 [ %i.ac, %bb.g ], [ %i.az, %bb.j ]
  %.sroa.01.0.i.i.i.i.i.i.i = and i64 %.pn.i.i.i.i.i.i, %i.ag ; 3 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 %.sroa.01.0.i.i.i.i.i.i.i
  %.sroa.0.0.copyload.i26.i.i.i.i.i.i = load <16 x i8>, ptr %i.ai, align 1, !noalias !436 ; 2 uses
  %i.aj = icmp eq <16 x i8> %.sroa.0.0.copyload.i26.i.i.i.i.i.i, %.sroa.0.15.vec.insert.i.i.i.i.i.i.i
  %i.ak = bitcast <16 x i1> %i.aj to i16          ; 2 uses
  %.not.i.not32.i.i.i.i.i.i = icmp eq i16 %i.ak, 0
  br i1 %.not.i.not32.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %bb.h, %bb.i
  %.sroa.06.0.i33.i.i.i.i.i.i = phi i16 [ %i.ax, %bb.i ], [ %i.ak, %bb.h ] ; 3 uses
  %i.al = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.06.0.i33.i.i.i.i.i.i, i1 true)
  %i.am = zext nneg i16 %i.al to i64
  %i.an = add i64 %.sroa.01.0.i.i.i.i.i.i.i, %i.am
  %i.ao = and i64 %i.an, %i.ag
  %i.ap = sub nsw i64 0, %i.ao
  %i.aq = getelementptr inbounds [72 x i8], ptr %i.ah, i64 %i.ap ; 2 uses
  %i.ar = getelementptr inbounds i8, ptr %i.aq, i64 -72
  %.val3.i.i.i.i.i.i.i = load i32, ptr %i.ar, align 4, !noalias !437, !noundef !19
  %i.as = icmp eq i32 %.sroa.2.0.copyload, %.val3.i.i.i.i.i.i.i
  br i1 %i.as, label %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$4find17h00091025c6fa60a7E.exit.i.i.i.i.i", label %bb.i, !prof !22

._crit_edge.i.i.i.i.i.i:                          ; preds = %bb.i, %bb.h
  %i.at = icmp eq <16 x i8> %.sroa.0.0.copyload.i26.i.i.i.i.i.i, splat (i8 -1)
  %i.au = bitcast <16 x i1> %i.at to i16
  %i.av = icmp eq i16 %i.au, 0
  br i1 %i.av, label %bb.j, label %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$4find17h00091025c6fa60a7E.exit.i.i.i.i.i", !prof !20

bb.i:                                             ; preds = %.lr.ph.i.i.i.i.i.i
  %i.aw = add i16 %.sroa.06.0.i33.i.i.i.i.i.i, -1
  %i.ax = and i16 %i.aw, %.sroa.06.0.i33.i.i.i.i.i.i ; 2 uses
  %.not.i.not.i.i.i.i.i.i = icmp eq i16 %i.ax, 0
  br i1 %.not.i.not.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i

bb.j:                                             ; preds = %._crit_edge.i.i.i.i.i.i
  %i.ay = add i64 %.sroa.9.0.i.i.i.i.i.i.i, 16    ; 2 uses
  %i.az = add i64 %.sroa.01.0.i.i.i.i.i.i.i, %i.ay
  br label %bb.h

"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$4find17h00091025c6fa60a7E.exit.i.i.i.i.i": ; preds = %._crit_edge.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i
  %i.ba = phi ptr [ %i.aq, %.lr.ph.i.i.i.i.i.i ], [ null, %._crit_edge.i.i.i.i.i.i ] ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.ba, null
  %i.bb = getelementptr inbounds i8, ptr %i.ba, i64 -72
  %.sroa.0.1.i.i.i.i.i = select i1 %.not.i.i.i.i.i, ptr null, ptr %i.bb
  br label %"_ZN4core4iter6traits8iterator8Iterator8find_map5check28_$u7b$$u7b$closure$u7d$$u7d$17h408ffa39bb93d464E.exit.i.i"

"_ZN4core4iter6traits8iterator8Iterator8find_map5check28_$u7b$$u7b$closure$u7d$$u7d$17h408ffa39bb93d464E.exit.i.i": ; preds = %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$4find17h00091025c6fa60a7E.exit.i.i.i.i.i", %bb.f
  %.sroa.0.0.i.i.i.i.i = phi ptr [ %.sroa.0.1.i.i.i.i.i, %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$4find17h00091025c6fa60a7E.exit.i.i.i.i.i" ], [ null, %bb.f ] ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %.sroa.0.0.i.i.i.i.i, null
  %i.bc = getelementptr i8, ptr %.sroa.0.0.i.i.i.i.i, i64 8 ; 2 uses
  %.not711.i.i = icmp eq ptr %i.bc, null
  %.not7.i.i = or i1 %.not.i.i.i.i, %.not711.i.i
  br i1 %.not7.i.i, label %bb.e, label %"_ZN18nickel_lang_parser11environment24Environment$LT$K$C$V$GT$3get17h75976dbcc5f5eceaE.exit"

.thread:                                          ; preds = %"_ZN18nickel_lang_parser11environment24Environment$LT$K$C$V$GT$3get17h75976dbcc5f5eceaE.exit"
  %lpad.thr_comm.split-lp242 = landingpad { ptr, i32 }
          cleanup
  br label %.thread217

bb.k:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.613.sroa.8)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  %.val.i.i = load i64, ptr %3, align 8, !noundef !19 ; 2 uses
  %i.bd = icmp ne i64 %.val.i.i, 0
  tail call void @llvm.assume(i1 %i.bd)
  %i.be = add i64 %.val.i.i, 1                    ; 2 uses
  store i64 %i.be, ptr %3, align 8
  %i.bf = icmp eq i64 %i.be, 0
  br i1 %i.bf, label %bb.l, label %_ZN5alloc2rc10RcInnerPtr10inc_strong17h614ff3163db54737E.exit.i, !prof !20

bb.l:                                             ; preds = %bb.k
  tail call void @llvm.trap()
  unreachable

_ZN5alloc2rc10RcInnerPtr10inc_strong17h614ff3163db54737E.exit.i: ; preds = %bb.k
  %.not.i177 = icmp eq ptr %4, null
  br i1 %.not.i177, label %bb.o, label %bb.m

bb.m:                                             ; preds = %_ZN5alloc2rc10RcInnerPtr10inc_strong17h614ff3163db54737E.exit.i
  %.val.i2.i = load i64, ptr %4, align 8, !noundef !19 ; 2 uses
  %i.bg = icmp ne i64 %.val.i2.i, 0
  tail call void @llvm.assume(i1 %i.bg)
  %i.bh = add i64 %.val.i2.i, 1                   ; 2 uses
  store i64 %i.bh, ptr %4, align 8
  %i.bi = icmp eq i64 %i.bh, 0
  br i1 %i.bi, label %bb.n, label %bb.o, !prof !20

bb.n:                                             ; preds = %bb.m
  tail call void @llvm.trap()
  unreachable

bb.o:                                             ; preds = %bb.m, %_ZN5alloc2rc10RcInnerPtr10inc_strong17h614ff3163db54737E.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.a, ptr noundef nonnull align 4 dereferenceable(12) %5, i64 12, i1 false)
  invoke void @"_ZN142_$LT$nickel_lang_parser..typ..RecordRowF$LT$$RF$nickel_lang_parser..ast..typ..Type$GT$$u20$as$u20$nickel_lang_parser..uniterm..FixTypeVars$GT$17fix_type_vars_env17h43c426800158fc71E"(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(address) dereferenceable(72) %i.d, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %1, ptr noundef nonnull align 8 %2, ptr noundef nonnull %3, ptr noundef %4, ptr noalias noundef nonnull align 4 captures(address) dereferenceable(12) %i.a)
          to label %bb.p unwind label %bb.ai

bb.p:                                             ; preds = %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.bj = load i32, ptr %i.d, align 8, !range !30, !noundef !19 ; 2 uses
  %.not159 = icmp eq i32 %i.bj, 25
  br i1 %.not159, label %bb.q, label %bb.ab

bb.q:                                             ; preds = %bb.p
  %i.bk = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %.sroa.098.0.copyload = load i64, ptr %i.bk, align 8 ; 2 uses
  %.sroa.599.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %.sroa.599.0.copyload = load i32, ptr %.sroa.599.0..sroa_idx, align 8 ; 3 uses
  %.sroa.6100.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 20
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %.sroa.613.sroa.8, ptr noundef nonnull align 4 dereferenceable(20) %.sroa.6100.0..sroa_idx, i64 20, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
end_hunk_0
begin_hunk_1_@_ZN13unicode_width6tables12lookup_width17h6fff58640f5693dcE:bb.a
  %i.u = lshr i8 %i.r, %i.t
  %i.v = and i8 %i.u, 3                           ; 2 uses
  %.not = icmp eq i8 %i.v, 3
  br i1 %.not, label %bb.f, label %bb.n

bb.f:                                             ; preds = %bb.e
  switch i32 %0, label %bb.g [
    i32 10, label %bb.n
    i32 1500, label %bb.h
    i32 6104, label %bb.i
    i32 6672, label %bb.j
    i32 65038, label %bb.k
    i32 65039, label %bb.l
    i32 68611, label %bb.m
  ]

bb.g:                                             ; preds = %bb.f
  %i.w = add nsw i32 %0, -1570
  %or.cond = icmp ult i32 %i.w, 609
  br i1 %or.cond, label %bb.n, label %bb.o

bb.h:                                             ; preds = %bb.f
  br label %bb.n

bb.i:                                             ; preds = %bb.f
  br label %bb.n

bb.j:                                             ; preds = %bb.f
  br label %bb.n

bb.k:                                             ; preds = %bb.f
  br label %bb.n

bb.l:                                             ; preds = %bb.f
  br label %bb.n

bb.m:                                             ; preds = %bb.f
  br label %bb.n

bb.n:                                             ; preds = %bb.r, %bb.s, %bb.q, %bb.p, %bb.o, %bb.g, %bb.f, %bb.e, %bb.m, %bb.l, %bb.k, %bb.j, %bb.i, %bb.h
  %.sroa.16.0 = phi i16 [ 14342, %bb.m ], [ 1, %bb.f ], [ 12543, %bb.g ], [ 15367, %bb.o ], [ 14339, %bb.p ], [ %., %bb.s ], [ 15365, %bb.q ], [ 3, %bb.r ], [ 0, %bb.e ], [ 14336, %bb.h ], [ 0, %bb.i ], [ 14337, %bb.j ], [ 16384, %bb.k ], [ -32768, %bb.l ]
  %.sroa.0.0 = phi i8 [ 1, %bb.m ], [ 1, %bb.f ], [ 1, %bb.g ], [ 1, %bb.o ], [ 1, %bb.p ], [ 2, %bb.s ], [ 1, %bb.q ], [ 1, %bb.r ], [ %i.v, %bb.e ], [ 1, %bb.h ], [ 3, %bb.i ], [ 1, %bb.j ], [ 0, %bb.k ], [ 0, %bb.l ]
  %i.x = insertvalue { i8, i16 } poison, i8 %.sroa.0.0, 0
  %i.y = insertvalue { i8, i16 } %i.x, i16 %.sroa.16.0, 1
  ret { i8, i16 } %i.y

bb.o:                                             ; preds = %bb.g
  %i.z = add nsw i32 %0, -6016
  %or.cond1 = icmp ult i32 %i.z, 48
  br i1 %or.cond1, label %bb.n, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.aa = add nsw i32 %0, -11569
  %or.cond2 = icmp ult i32 %i.aa, 63
  br i1 %or.cond2, label %bb.n, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.ab = and i32 %0, 2097150
  %or.cond3 = icmp eq i32 %i.ab, 42236
  br i1 %or.cond3, label %bb.n, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.ac = add nsw i32 %0, -127462
  %or.cond4 = icmp ult i32 %i.ac, 26
  br i1 %or.cond4, label %bb.n, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.ad = add nsw i32 %0, -127995
  %or.cond5 = icmp ult i32 %i.ad, 5
  %. = select i1 %or.cond5, i16 2, i16 5
  br label %bb.n
}

; Function Attrs: nonlazybind uwtable
define internal fastcc noundef align 8 dereferenceable_or_null(48) ptr @"_ZN140_$LT$nickel_lang_parser..ast..typ..Type$u20$as$u20$nickel_lang_parser..traverse..TraverseAlloc$LT$nickel_lang_parser..ast..typ..Type$GT$$GT$12traverse_ref17h2fc2f6f8a09139a4E"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(104) %0, ptr noundef nonnull align 1 %1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(40) %2, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 7 uses
  %i.b = alloca [16 x i8], align 8                ; 5 uses
  %i.c = alloca [1 x i8], align 1                 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.e = load ptr, ptr %i.d, align 8, !invariant.load !19, !nonnull !19
  %i.f = tail call { i64, ptr } %i.e(ptr noundef nonnull align 1 %1, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(104) %0, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %3) ; 2 uses
  %i.g = extractvalue { i64, ptr } %i.f, 0
  switch i64 %i.g, label %bb.b [
    i64 0, label %bb.e
    i64 1, label %bb.c
    i64 2, label %"_ZN4core6option15Option$LT$T$GT$7or_else17h0ca816f5495a414eE.exit"
    i64 3, label %bb.d
  ]

bb.b:                                             ; preds = %bb.e, %bb.a
  unreachable

bb.c:                                             ; preds = %bb.a
  br label %bb.e

bb.d:                                             ; preds = %bb.a
  %i.h = extractvalue { i64, ptr } %i.f, 1        ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.h) ]
  br label %"_ZN4core6option15Option$LT$T$GT$7or_else17h0ca816f5495a414eE.exit"

bb.e:                                             ; preds = %bb.a, %bb.c
  %storemerge = phi i8 [ 0, %bb.c ], [ 1, %bb.a ] ; 2 uses
  store i8 %storemerge, ptr %i.c, align 1
  %i.i = trunc nuw i8 %storemerge to i1
  %i.j = getelementptr inbounds nuw i8, ptr %i.c, i64 1
  %.sroa.03.0 = select i1 %i.i, ptr %i.j, ptr %3  ; 6 uses
  %i.k = load i64, ptr %0, align 8, !range !23, !noundef !19 ; 3 uses
  %i.l = icmp ne i64 %i.k, 12
  tail call void @llvm.assume(i1 %i.l)
  %i.m = add nsw i64 %i.k, -3
  %i.n = icmp samesign ugt i64 %i.k, 2
  %i.o = select i1 %i.n, i64 %i.m, i64 9
  switch i64 %i.o, label %bb.b [
    i64 0, label %"_ZN4core6option15Option$LT$T$GT$7or_else17h0ca816f5495a414eE.exit"
    i64 1, label %"_ZN4core6option15Option$LT$T$GT$7or_else17h0ca816f5495a414eE.exit"
    i64 2, label %"_ZN4core6option15Option$LT$T$GT$7or_else17h0ca816f5495a414eE.exit"
    i64 3, label %"_ZN4core6option15Option$LT$T$GT$7or_else17h0ca816f5495a414eE.exit"
    i64 4, label %"_ZN4core6option15Option$LT$T$GT$7or_else17h0ca816f5495a414eE.exit"
    i64 5, label %"_ZN4core6option15Option$LT$T$GT$7or_else17h0ca816f5495a414eE.exit"
    i64 6, label %bb.f
    i64 7, label %bb.g
    i64 8, label %"_ZN4core6option15Option$LT$T$GT$7or_else17h0ca816f5495a414eE.exit"
    i64 9, label %bb.l
    i64 10, label %"_ZN4core6option15Option$LT$T$GT$7or_else17h0ca816f5495a414eE.exit"
    i64 11, label %bb.i
    i64 12, label %bb.k
    i64 13, label %bb.k
    i64 14, label %"_ZN4core6option15Option$LT$T$GT$7or_else17h0ca816f5495a414eE.exit"
  ]

bb.f:                                             ; preds = %bb.e
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.q = load ptr, ptr %i.p, align 8, !nonnull !19, !align !24, !noundef !19
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !3073
  store ptr %1, ptr %i.b, align 8, !noalias !3073
  %i.r = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %2, ptr %i.r, align 8, !noalias !3073
  %i.s = call fastcc noundef align 8 dereferenceable_or_null(48) ptr @"_ZN128_$LT$nickel_lang_parser..ast..Ast$u20$as$u20$nickel_lang_parser..traverse..TraverseAlloc$LT$nickel_lang_parser..ast..Ast$GT$$GT$12traverse_ref17had6f0c22304a76e5E"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.q, ptr noundef nonnull align 1 %i.b, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(40) @71, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %.sroa.03.0), !inline_history !3062
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !3073
  br label %"_ZN4core6option15Option$LT$T$GT$7or_else17h0ca816f5495a414eE.exit"

bb.g:                                             ; preds = %bb.e
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.u = load ptr, ptr %i.t, align 8, !nonnull !19, !align !24, !noundef !19
  %i.v = call fastcc noundef align 8 dereferenceable_or_null(48) ptr @"_ZN140_$LT$nickel_lang_parser..ast..typ..Type$u20$as$u20$nickel_lang_parser..traverse..TraverseAlloc$LT$nickel_lang_parser..ast..typ..Type$GT$$GT$12traverse_ref17h2fc2f6f8a09139a4E"(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(104) %i.u, ptr noundef nonnull align 1 %1, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %2, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %.sroa.03.0) ; 2 uses
  %.not.i = icmp eq ptr %i.v, null
  br i1 %.not.i, label %bb.h, label %"_ZN4core6option15Option$LT$T$GT$7or_else17h0ca816f5495a414eE.exit"

bb.h:                                             ; preds = %bb.g
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.x = load ptr, ptr %i.w, align 8, !nonnull !19, !align !24, !noundef !19
  %i.y = call fastcc noundef align 8 dereferenceable_or_null(48) ptr @"_ZN140_$LT$nickel_lang_parser..ast..typ..Type$u20$as$u20$nickel_lang_parser..traverse..TraverseAlloc$LT$nickel_lang_parser..ast..typ..Type$GT$$GT$12traverse_ref17h2fc2f6f8a09139a4E"(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(104) %i.x, ptr noundef nonnull align 1 %1, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %2, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %.sroa.03.0), !noalias !3074, !inline_history !3068
  br label %"_ZN4core6option15Option$LT$T$GT$7or_else17h0ca816f5495a414eE.exit"

bb.i:                                             ; preds = %bb.e
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3075)
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.aa = load i32, ptr %i.z, align 8, !range !26, !alias.scope !3075, !noalias !3076, !noundef !19 ; 2 uses
  %i.ab = icmp ne i32 %i.aa, 4
  tail call void @llvm.assume(i1 %i.ab)
  %i.ac = icmp samesign ult i32 %i.aa, 3
  br i1 %i.ac, label %bb.j, label %"_ZN4core6option15Option$LT$T$GT$7or_else17h0ca816f5495a414eE.exit"

bb.j:                                             ; preds = %bb.i
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ae = load ptr, ptr %i.ad, align 8, !alias.scope !3075, !noalias !3076, !nonnull !19, !align !24, !noundef !19
  %i.af = call fastcc noundef align 8 dereferenceable_or_null(48) ptr @"_ZN140_$LT$nickel_lang_parser..ast..typ..Type$u20$as$u20$nickel_lang_parser..traverse..TraverseAlloc$LT$nickel_lang_parser..ast..typ..Type$GT$$GT$12traverse_ref17h2fc2f6f8a09139a4E"(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(104) %i.ae, ptr noundef nonnull align 1 %1, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %2, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %.sroa.03.0), !noalias !3075, !inline_history !3
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !3077
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.ah = load ptr, ptr %i.ag, align 8, !alias.scope !3075, !noalias !3076, !nonnull !19, !align !24, !noundef !19
  store ptr %i.ah, ptr %i.a, align 8, !noalias !3077
  %i.ai = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %1, ptr %i.ai, align 8, !noalias !3077
  %i.aj = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %2, ptr %i.aj, align 8, !noalias !3077
  %i.ak = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store ptr %.sroa.03.0, ptr %i.ak, align 8, !noalias !3077
  %i.al = call fastcc noundef align 8 dereferenceable_or_null(48) ptr @"_ZN4core6option15Option$LT$T$GT$7or_else17h599e1b93790a8efaE"(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(48) %i.af, ptr noalias noundef align 8 captures(address) dereferenceable(32) %i.a), !noalias !3075, !inline_history !3
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !3077
  br label %"_ZN4core6option15Option$LT$T$GT$7or_else17h0ca816f5495a414eE.exit"

bb.k:                                             ; preds = %bb.e, %bb.e
  br label %bb.l

bb.l:                                             ; preds = %bb.e, %bb.k
  %.sink = phi i64 [ 56, %bb.e ], [ 8, %bb.k ]
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 %.sink
  %i.an = load ptr, ptr %i.am, align 8, !nonnull !19, !align !24, !noundef !19
  %i.ao = call fastcc noundef align 8 dereferenceable_or_null(48) ptr @"_ZN140_$LT$nickel_lang_parser..ast..typ..Type$u20$as$u20$nickel_lang_parser..traverse..TraverseAlloc$LT$nickel_lang_parser..ast..typ..Type$GT$$GT$12traverse_ref17h2fc2f6f8a09139a4E"(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(104) %i.an, ptr noundef nonnull align 1 %1, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %2, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %.sroa.03.0)
  br label %"_ZN4core6option15Option$LT$T$GT$7or_else17h0ca816f5495a414eE.exit"

"_ZN4core6option15Option$LT$T$GT$7or_else17h0ca816f5495a414eE.exit": ; preds = %bb.f, %bb.l, %bb.e, %bb.e, %bb.e, %bb.e, %bb.e, %bb.e, %bb.e, %bb.e, %bb.e, %bb.g, %bb.h, %bb.i, %bb.j, %bb.d, %bb.a
  %.sroa.0.1 = phi ptr [ null, %bb.a ], [ %i.h, %bb.d ], [ %i.s, %bb.f ], [ null, %bb.e ], [ %i.ao, %bb.l ], [ %i.v, %bb.g ], [ null, %bb.e ], [ null, %bb.e ], [ null, %bb.e ], [ null, %bb.e ], [ null, %bb.e ], [ null, %bb.e ], [ null, %bb.e ], [ null, %bb.e ], [ %i.y, %bb.h ], [ %i.al, %bb.j ], [ null, %bb.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  ret ptr %.sroa.0.1
}

; Function Attrs: nonlazybind uwtable
define void @"_ZN140_$LT$nickel_lang_parser..typ..EnumRowF$LT$$RF$nickel_lang_parser..ast..typ..Type$GT$$u20$as$u20$nickel_lang_parser..uniterm..FixTypeVars$GT$17fix_type_vars_env17hc9ee1054036982f1E"(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([72 x i8]) align 8 captures(none) dereferenceable(72) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(32) %1, ptr noundef nonnull align 8 captures(none) %2, ptr noundef nonnull %3, ptr noundef %4, ptr noalias noundef readonly align 4 captures(none) dead_on_return dereferenceable(12) %5) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [12 x i8], align 4                ; 4 uses
  %i.b = alloca [104 x i8], align 8               ; 6 uses
  %.sroa.451 = alloca [96 x i8], align 8          ; 3 uses
  %i.c = alloca [104 x i8], align 8               ; 6 uses
  %.sroa.534 = alloca [20 x i8], align 4          ; 5 uses
  %.sroa.7 = alloca [72 x i8], align 8            ; 6 uses
  %.sroa.826 = alloca [24 x i8], align 8          ; 6 uses
  %.sroa.9 = alloca [72 x i8], align 8            ; 7 uses
  %.sroa.8 = alloca [72 x i8], align 8            ; 8 uses
  %i.d = alloca [16 x i8], align 8                ; 5 uses
  store ptr %3, ptr %i.d, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 2 uses
  store ptr %4, ptr %i.e, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.8)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.9)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.7)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.826)
  %i.f = load ptr, ptr %1, align 8, !align !24, !noundef !19 ; 2 uses
  %.not = icmp eq ptr %i.f, null
  br i1 %.not, label %.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %.val.i.i = load i64, ptr %3, align 8, !noalias !3103, !noundef !19 ; 2 uses
  %i.g = icmp ne i64 %.val.i.i, 0
  tail call void @llvm.assume(i1 %i.g), !noalias !3103
  %i.h = add i64 %.val.i.i, 1                     ; 2 uses
  store i64 %i.h, ptr %3, align 8, !noalias !3103
  %i.i = icmp eq i64 %i.h, 0
  br i1 %i.i, label %bb.c, label %_ZN5alloc2rc10RcInnerPtr10inc_strong17h614ff3163db54737E.exit.i, !prof !20

bb.c:                                             ; preds = %bb.b
  tail call void @llvm.trap(), !noalias !3103
  unreachable

_ZN5alloc2rc10RcInnerPtr10inc_strong17h614ff3163db54737E.exit.i: ; preds = %bb.b
  %.not.i68 = icmp eq ptr %4, null                ; 2 uses
  br i1 %.not.i68, label %"_ZN96_$LT$nickel_lang_parser..environment..Environment$LT$K$C$V$GT$$u20$as$u20$core..clone..Clone$GT$5clone17hf952df094dabef9dE.exit", label %bb.d

bb.d:                                             ; preds = %_ZN5alloc2rc10RcInnerPtr10inc_strong17h614ff3163db54737E.exit.i
  %.val.i2.i = load i64, ptr %4, align 8, !noalias !3103, !noundef !19 ; 2 uses
  %i.j = icmp ne i64 %.val.i2.i, 0
  tail call void @llvm.assume(i1 %i.j), !noalias !3103
  %i.k = add i64 %.val.i2.i, 1                    ; 2 uses
  store i64 %i.k, ptr %4, align 8, !noalias !3103
  %i.l = icmp eq i64 %i.k, 0
  br i1 %i.l, label %bb.e, label %"_ZN96_$LT$nickel_lang_parser..environment..Environment$LT$K$C$V$GT$$u20$as$u20$core..clone..Clone$GT$5clone17hf952df094dabef9dE.exit", !prof !20

bb.e:                                             ; preds = %bb.d
  tail call void @llvm.trap(), !noalias !3103
  unreachable

"_ZN96_$LT$nickel_lang_parser..environment..Environment$LT$K$C$V$GT$$u20$as$u20$core..clone..Clone$GT$5clone17hf952df094dabef9dE.exit": ; preds = %_ZN5alloc2rc10RcInnerPtr10inc_strong17h614ff3163db54737E.exit.i, %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !3103
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.a, ptr noundef nonnull align 4 dereferenceable(12) %5, i64 12, i1 false), !noalias !3103
  invoke void @"_ZN95_$LT$nickel_lang_parser..ast..typ..Type$u20$as$u20$nickel_lang_parser..uniterm..FixTypeVars$GT$17fix_type_vars_env17h137341d0f0f948edE"(ptr noalias noundef nonnull sret([104 x i8]) align 8 captures(address) dereferenceable(104) %i.c, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(104) %i.f, ptr noundef nonnull align 8 %2, ptr noundef nonnull %3, ptr noundef %4, ptr noalias noundef nonnull align 4 captures(address) dereferenceable(12) %i.a)
          to label %bb.h unwind label %bb.g, !inline_history !3082

.thread:                                          ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.826)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.9)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.8)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.534)
  br label %bb.p

bb.f:                                             ; preds = %bb.h
  %.sroa.451.80..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.451, i64 72
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.451.80..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.826, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.826)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %.sroa.8, ptr noundef nonnull align 8 dereferenceable(72) %.sroa.9, i64 72, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.9)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %.sroa.451, ptr noundef nonnull align 8 dereferenceable(72) %.sroa.8, i64 72, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.8)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.534)
  %.not61 = icmp eq i64 %.sroa.023.0.copyload, 18
  br i1 %.not61, label %bb.p, label %bb.l

bb.g:                                             ; preds = %"_ZN96_$LT$nickel_lang_parser..environment..Environment$LT$K$C$V$GT$$u20$as$u20$core..clone..Clone$GT$5clone17hf952df094dabef9dE.exit"
  %i.m = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.o, %bb.g
  %eh.lpad-body = phi { ptr, i32 } [ %i.m, %bb.g ], [ %i.al, %bb.o ]
  invoke fastcc void @"_ZN4core3ptr153drop_in_place$LT$nickel_lang_parser..environment..Environment$LT$nickel_lang_parser..identifier..Ident$C$nickel_lang_parser..uniterm..VarKindCell$GT$$GT$17h758f9c2ccdeb1babE"(ptr noalias noundef align 8 dereferenceable(16) %i.d) #53
          to label %bb.u unwind label %bb.t

bb.h:                                             ; preds = %"_ZN96_$LT$nickel_lang_parser..environment..Environment$LT$K$C$V$GT$$u20$as$u20$core..clone..Clone$GT$5clone17hf952df094dabef9dE.exit"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !3103
  %.sroa.023.0.copyload = load i64, ptr %i.c, align 8 ; 3 uses
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %.sroa.7, ptr noundef nonnull align 8 dereferenceable(72) %.sroa.7.0..sroa_idx, i64 72, i1 false)
  %.sroa.826.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 80
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.826, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.826.0..sroa_idx, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %i.n = icmp eq i64 %.sroa.023.0.copyload, 19
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %.sroa.9, ptr noundef nonnull align 8 dereferenceable(72) %.sroa.7, i64 72, i1 false)
  br i1 %i.n, label %bb.i, label %bb.f

bb.i:                                             ; preds = %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.826)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %.sroa.8, ptr noundef nonnull align 8 dereferenceable(72) %.sroa.9, i64 72, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.9)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(72) %.sroa.8, i64 72, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.8)
  %i.o = load i64, ptr %3, align 8, !noalias !3104, !noundef !19
  %i.p = add i64 %i.o, -1                         ; 2 uses
  store i64 %i.p, ptr %3, align 8, !noalias !3104
  %i.q = icmp eq i64 %i.p, 0
  br i1 %i.q, label %bb.j, label %"_ZN4core3ptr166drop_in_place$LT$alloc..rc..Rc$LT$std..collections..hash..map..HashMap$LT$nickel_lang_parser..identifier..Ident$C$nickel_lang_parser..uniterm..VarKindCell$GT$$GT$$GT$17h48273f7d9d9be331E.exit.i"

bb.j:                                             ; preds = %bb.i
  call void @"_ZN5alloc2rc15Rc$LT$T$C$A$GT$9drop_slow17h6b9e06af2179a15aE"(ptr noalias noundef nonnull readonly align 8 dereferenceable(16) %i.d), !inline_history !31
  br label %"_ZN4core3ptr166drop_in_place$LT$alloc..rc..Rc$LT$std..collections..hash..map..HashMap$LT$nickel_lang_parser..identifier..Ident$C$nickel_lang_parser..uniterm..VarKindCell$GT$$GT$$GT$17h48273f7d9d9be331E.exit.i"

"_ZN4core3ptr166drop_in_place$LT$alloc..rc..Rc$LT$std..collections..hash..map..HashMap$LT$nickel_lang_parser..identifier..Ident$C$nickel_lang_parser..uniterm..VarKindCell$GT$$GT$$GT$17h48273f7d9d9be331E.exit.i": ; preds = %bb.j, %bb.i
  br i1 %.not.i68, label %"_ZN4core3ptr153drop_in_place$LT$nickel_lang_parser..environment..Environment$LT$nickel_lang_parser..identifier..Ident$C$nickel_lang_parser..uniterm..VarKindCell$GT$$GT$17h758f9c2ccdeb1babE.exit", label %bb.k

bb.k:                                             ; preds = %"_ZN4core3ptr166drop_in_place$LT$alloc..rc..Rc$LT$std..collections..hash..map..HashMap$LT$nickel_lang_parser..identifier..Ident$C$nickel_lang_parser..uniterm..VarKindCell$GT$$GT$$GT$17h48273f7d9d9be331E.exit.i"
  %i.r = load i64, ptr %4, align 8, !noalias !3105, !noundef !19
  %i.s = add i64 %i.r, -1                         ; 2 uses
  store i64 %i.s, ptr %4, align 8, !noalias !3105
  %i.t = icmp eq i64 %i.s, 0
  br i1 %i.t, label %"_ZN4core3ptr153drop_in_place$LT$nickel_lang_parser..environment..Environment$LT$nickel_lang_parser..identifier..Ident$C$nickel_lang_parser..uniterm..VarKindCell$GT$$GT$17h758f9c2ccdeb1babE.exit.sink.split", label %"_ZN4core3ptr153drop_in_place$LT$nickel_lang_parser..environment..Environment$LT$nickel_lang_parser..identifier..Ident$C$nickel_lang_parser..uniterm..VarKindCell$GT$$GT$17h758f9c2ccdeb1babE.exit"

bb.l:                                             ; preds = %bb.f
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %.sroa.2.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(96) %.sroa.451, i64 96, i1 false)
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.056.0.copyload = load i32, ptr %i.u, align 8
  %.sroa.457.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 12
  store i64 %.sroa.023.0.copyload, ptr %i.b, align 8
  %i.v = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.w = load ptr, ptr %i.v, align 8, !nonnull !19, !noundef !19 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 32 ; 2 uses
  %i.y = load ptr, ptr %i.x, align 8, !nonnull !19, !noundef !19 ; 2 uses
  %i.z = load ptr, ptr %i.w, align 8, !nonnull !19, !noundef !19 ; 2 uses
  %i.aa = ptrtoint ptr %i.y to i64
  %i.ab = and i64 %i.aa, 7
  %i.ac = sub nsw i64 0, %i.ab
  %i.ad = getelementptr i8, ptr %i.y, i64 %i.ac   ; 3 uses
  %i.ae = ptrtoint ptr %i.ad to i64
  %i.af = ptrtoint ptr %i.z to i64
  %i.ag = sub i64 %i.ae, %i.af
  %i.ah = icmp ult ptr %i.ad, %i.z
  %i.ai = icmp ult i64 %i.ag, 104
  %or.cond.i = or i1 %i.ah, %i.ai
  br i1 %or.cond.i, label %bb.m, label %.noexc

.noexc:                                           ; preds = %bb.l
  %i.aj = getelementptr i8, ptr %i.ad, i64 -104   ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.aj) ]
  store ptr %i.aj, ptr %i.x, align 8
  br label %bb.s

bb.m:                                             ; preds = %bb.l
  %i.ak = invoke noundef ptr @"_ZN7bumpalo13Bump$LT$_$GT$17alloc_layout_slow17hacc06564798b584bE"(ptr noundef nonnull align 8 %2, i64 noundef 8, i64 noundef 104)
          to label %.noexc63 unwind label %bb.o   ; 2 uses

.noexc63:                                         ; preds = %bb.m
  %.not5.i = icmp eq ptr %i.ak, null
  br i1 %.not5.i, label %bb.n, label %bb.s, !prof !20

bb.n:                                             ; preds = %.noexc63
  invoke void @_ZN7bumpalo3oom17hfadade8e21f84824E() #52
          to label %.noexc64 unwind label %bb.o

.noexc64:                                         ; preds = %bb.n
  unreachable

bb.o:                                             ; preds = %bb.m, %bb.n
  %i.al = landingpad { ptr, i32 }
          cleanup
  call fastcc void @"_ZN4core3ptr112drop_in_place$LT$bumpalo..Bump..alloc$LT$nickel_lang_parser..ast..typ..Type$GT$..$u7b$$u7b$closure$u7d$$u7d$$GT$17he0d7b0d573eaff65E"(ptr noalias noundef nonnull align 8 dereferenceable(104) %i.b) #53
  br label %.body

bb.p:                                             ; preds = %.thread, %bb.f, %bb.s
  %.sroa.4.0 = phi i32 [ %.sroa.056.0.copyload, %bb.s ], [ 3, %bb.f ], [ 3, %.thread ]
  %.sroa.030.0 = phi i64 [ %i.au, %bb.s ], [ undef, %bb.f ], [ undef, %.thread ]
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.030.0, ptr %i.am, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 %.sroa.4.0, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.534.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 20
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %.sroa.534.0..sroa_idx, ptr noundef nonnull align 4 dereferenceable(20) %.sroa.534, i64 20, i1 false)
  store i32 25, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.534)
  %i.an = load i64, ptr %3, align 8, !noalias !3106, !noundef !19
  %i.ao = add i64 %i.an, -1                       ; 2 uses
  store i64 %i.ao, ptr %3, align 8, !noalias !3106
  %i.ap = icmp eq i64 %i.ao, 0
  br i1 %i.ap, label %bb.q, label %"_ZN4core3ptr166drop_in_place$LT$alloc..rc..Rc$LT$std..collections..hash..map..HashMap$LT$nickel_lang_parser..identifier..Ident$C$nickel_lang_parser..uniterm..VarKindCell$GT$$GT$$GT$17h48273f7d9d9be331E.exit.i66"

bb.q:                                             ; preds = %bb.p
  call void @"_ZN5alloc2rc15Rc$LT$T$C$A$GT$9drop_slow17h6b9e06af2179a15aE"(ptr noalias noundef nonnull readonly align 8 dereferenceable(16) %i.d), !inline_history !31
end_hunk_1
begin_hunk_2_@"_ZN141_$LT$nickel_lang_parser..ast..pattern..Pattern$u20$as$u20$nickel_lang_parser..traverse..TraverseAlloc$LT$nickel_lang_parser..ast..Ast$GT$$GT$12traverse_ref17hc4d3c296b72c9892E":bb.a
  unreachable

bb.b:                                             ; preds = %tailrecurse
  %i.e = getelementptr inbounds nuw i8, ptr %.tr, i64 24
  %i.f = load ptr, ptr %i.e, align 8, !nonnull !19, !align !24, !noundef !19 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.h = load ptr, ptr %i.g, align 8, !nonnull !19, !align !24, !noundef !19 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  %i.j = load i64, ptr %i.i, align 8, !noundef !19 ; 2 uses
  %.idx161 = mul nuw nsw i64 %i.j, 272
  %i.k = getelementptr inbounds nuw i8, ptr %i.h, i64 %.idx161
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.n = icmp eq i64 %i.j, 0
  br i1 %i.n, label %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$8find_map17hc20ce58b2beff0f1E.exit", label %select.unfold.peel.begin

bb.c:                                             ; preds = %"_ZN4core6option15Option$LT$T$GT$7or_else17hf8bb04d7a61e5c64E.exit"
  %i.o = icmp eq ptr %i.p, %i.k
  br i1 %i.o, label %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$8find_map17hc20ce58b2beff0f1E.exit", label %select.unfold.peel.begin

select.unfold.peel.begin:                         ; preds = %bb.b, %bb.c
  %.sroa.0.063154 = phi ptr [ %i.p, %bb.c ], [ %i.h, %bb.b ] ; 7 uses
  %i.p = getelementptr inbounds nuw i8, ptr %.sroa.0.063154, i64 272 ; 2 uses
  %i.q = load i64, ptr %.sroa.0.063154, align 8, !range !32, !alias.scope !3166, !noalias !3167, !noundef !19
  %.not.i17 = icmp eq i64 %i.q, 18
  %i.r = getelementptr inbounds nuw i8, ptr %.sroa.0.063154, i64 104
  %i.s = load ptr, ptr %i.r, align 8, !alias.scope !3166, !noalias !3167, !nonnull !19, !align !24, !noundef !19 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %.sroa.0.063154, i64 112
  %i.u = load i64, ptr %i.t, align 8, !alias.scope !3166, !noalias !3167, !noundef !19 ; 2 uses
  %.idx162 = mul nuw nsw i64 %i.u, 104
  %i.v = getelementptr inbounds nuw i8, ptr %i.s, i64 %.idx162
  br i1 %.not.i17, label %.preheader.preheader, label %bb.d

bb.d:                                             ; preds = %select.unfold.peel.begin
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !3168
  store ptr %1, ptr %i.b, align 8, !noalias !3168
  store ptr %2, ptr %i.l, align 8, !noalias !3168
  %i.w = call fastcc noundef align 8 dereferenceable_or_null(48) ptr @"_ZN140_$LT$nickel_lang_parser..ast..typ..Type$u20$as$u20$nickel_lang_parser..traverse..TraverseAlloc$LT$nickel_lang_parser..ast..typ..Type$GT$$GT$12traverse_ref17h2fc2f6f8a09139a4E"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(104) %.sroa.0.063154, ptr noundef nonnull align 1 %i.b, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(40) @72, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %3), !noalias !3169, !inline_history !3130 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !3168
  %.not7.i.i.peel = icmp eq ptr %i.w, null
  br i1 %.not7.i.i.peel, label %.preheader.preheader, label %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$8find_map17hc20ce58b2beff0f1E.exit"

.preheader.preheader:                             ; preds = %bb.d, %select.unfold.peel.begin
  %i.x = icmp eq i64 %i.u, 0
  br i1 %i.x, label %.preheader._crit_edge, label %.lr.ph153

.preheader:                                       ; preds = %.lr.ph153
  %i.y = getelementptr inbounds nuw i8, ptr %.sroa.857.0152, i64 104 ; 2 uses
  %i.z = icmp eq ptr %i.y, %i.v
  br i1 %i.z, label %.preheader._crit_edge, label %.lr.ph153

.lr.ph153:                                        ; preds = %.preheader.preheader, %.preheader
  %.sroa.857.0152 = phi ptr [ %i.y, %.preheader ], [ %i.s, %.preheader.preheader ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !3170
  store ptr %1, ptr %i.a, align 8, !noalias !3170
  store ptr %2, ptr %i.m, align 8, !noalias !3170
  %i.aa = call fastcc noundef align 8 dereferenceable_or_null(48) ptr @"_ZN140_$LT$nickel_lang_parser..ast..typ..Type$u20$as$u20$nickel_lang_parser..traverse..TraverseAlloc$LT$nickel_lang_parser..ast..typ..Type$GT$$GT$12traverse_ref17h2fc2f6f8a09139a4E"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(104) %.sroa.857.0152, ptr noundef nonnull align 1 %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(40) @72, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %3), !noalias !3171, !inline_history !3141 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !3170
  %.not7.i11.i = icmp eq ptr %i.aa, null
  br i1 %.not7.i11.i, label %.preheader, label %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$8find_map17hc20ce58b2beff0f1E.exit"

.preheader._crit_edge:                            ; preds = %.preheader, %.preheader.preheader
  %i.ab = getelementptr inbounds nuw i8, ptr %.sroa.0.063154, i64 200 ; 2 uses
  %i.ac = load i32, ptr %i.ab, align 8, !range !28, !noalias !3172, !noundef !19
  %.not.i.i = icmp eq i32 %i.ac, 3
  br i1 %.not.i.i, label %"_ZN4core6option15Option$LT$T$GT$7or_else17hf8bb04d7a61e5c64E.exit", label %"_ZN4core6option15Option$LT$T$GT$7or_else17h0ad54b0d343cb670E.exit"

"_ZN4core6option15Option$LT$T$GT$7or_else17h0ad54b0d343cb670E.exit": ; preds = %.preheader._crit_edge
  %i.ad = call fastcc noundef align 8 dereferenceable_or_null(48) ptr @"_ZN128_$LT$nickel_lang_parser..ast..Ast$u20$as$u20$nickel_lang_parser..traverse..TraverseAlloc$LT$nickel_lang_parser..ast..Ast$GT$$GT$12traverse_ref17had6f0c22304a76e5E"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.ab, ptr noundef nonnull align 1 %1, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %2, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %3), !noalias !3173, !inline_history !3149 ; 2 uses
  %.not.i13 = icmp eq ptr %i.ad, null
  br i1 %.not.i13, label %"_ZN4core6option15Option$LT$T$GT$7or_else17hf8bb04d7a61e5c64E.exit", label %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$8find_map17hc20ce58b2beff0f1E.exit"

"_ZN4core6option15Option$LT$T$GT$7or_else17hf8bb04d7a61e5c64E.exit": ; preds = %.preheader._crit_edge, %"_ZN4core6option15Option$LT$T$GT$7or_else17h0ad54b0d343cb670E.exit"
  %i.ae = getelementptr inbounds nuw i8, ptr %.sroa.0.063154, i64 120
  %i.af = call fastcc noundef align 8 dereferenceable_or_null(48) ptr @"_ZN141_$LT$nickel_lang_parser..ast..pattern..Pattern$u20$as$u20$nickel_lang_parser..traverse..TraverseAlloc$LT$nickel_lang_parser..ast..Ast$GT$$GT$12traverse_ref17hc4d3c296b72c9892E"(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(64) %i.ae, ptr noundef nonnull align 1 %1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(40) %2, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %3), !noalias !3174, !inline_history !3155 ; 2 uses
  %.not7.i = icmp eq ptr %i.af, null
  br i1 %.not7.i, label %bb.c, label %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$8find_map17hc20ce58b2beff0f1E.exit"

bb.e:                                             ; preds = %tailrecurse
  %i.ag = getelementptr inbounds nuw i8, ptr %.tr, i64 24
  %i.ah = load ptr, ptr %i.ag, align 8, !nonnull !19, !align !24, !noundef !19 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 16
  %i.aj = load ptr, ptr %i.ai, align 8, !nonnull !19, !align !24, !noundef !19 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ah, i64 24
  %i.al = load i64, ptr %i.ak, align 8, !noundef !19 ; 2 uses
  %.idx160 = shl nuw nsw i64 %i.al, 6
  %i.am = getelementptr inbounds nuw i8, ptr %i.aj, i64 %.idx160
  %i.an = icmp eq i64 %i.al, 0
  br i1 %i.an, label %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$8find_map17hc20ce58b2beff0f1E.exit", label %.lr.ph148

bb.f:                                             ; preds = %.lr.ph148
  %i.ao = getelementptr inbounds nuw i8, ptr %.sroa.024.0147, i64 64 ; 2 uses
  %i.ap = icmp eq ptr %i.ao, %i.am
  br i1 %i.ap, label %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$8find_map17hc20ce58b2beff0f1E.exit", label %.lr.ph148

.lr.ph148:                                        ; preds = %bb.e, %bb.f
  %.sroa.024.0147 = phi ptr [ %i.ao, %bb.f ], [ %i.aj, %bb.e ] ; 2 uses
  %i.aq = tail call fastcc noundef align 8 dereferenceable_or_null(48) ptr @"_ZN141_$LT$nickel_lang_parser..ast..pattern..Pattern$u20$as$u20$nickel_lang_parser..traverse..TraverseAlloc$LT$nickel_lang_parser..ast..Ast$GT$$GT$12traverse_ref17hc4d3c296b72c9892E"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %.sroa.024.0147, ptr noundef nonnull align 1 %1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(40) %2, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %3), !noalias !3175, !inline_history !3160 ; 2 uses
  %.not7.i4 = icmp eq ptr %i.aq, null
  br i1 %.not7.i4, label %bb.f, label %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$8find_map17hc20ce58b2beff0f1E.exit"

bb.g:                                             ; preds = %tailrecurse
  %i.ar = getelementptr inbounds nuw i8, ptr %.tr, i64 24
  %i.as = load ptr, ptr %i.ar, align 8, !nonnull !19, !align !24, !noundef !19
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 16 ; 2 uses
  %i.au = load i32, ptr %i.at, align 8, !range !28, !noundef !19
  %.not = icmp eq i32 %i.au, 3
  br i1 %.not, label %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$8find_map17hc20ce58b2beff0f1E.exit", label %tailrecurse

bb.h:                                             ; preds = %tailrecurse
  %i.av = getelementptr inbounds nuw i8, ptr %.tr, i64 24
  %i.aw = load ptr, ptr %i.av, align 8, !nonnull !19, !align !24, !noundef !19 ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 16
  %i.ay = load ptr, ptr %i.ax, align 8, !nonnull !19, !align !24, !noundef !19 ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %i.aw, i64 24
  %i.ba = load i64, ptr %i.az, align 8, !noundef !19 ; 2 uses
  %.idx = shl nuw nsw i64 %i.ba, 6
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ay, i64 %.idx
  %i.bc = icmp eq i64 %i.ba, 0
  br i1 %i.bc, label %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$8find_map17hc20ce58b2beff0f1E.exit", label %.lr.ph

bb.i:                                             ; preds = %.lr.ph
  %i.bd = getelementptr inbounds nuw i8, ptr %.sroa.029.0144, i64 64 ; 2 uses
  %i.be = icmp eq ptr %i.bd, %i.bb
  br i1 %i.be, label %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$8find_map17hc20ce58b2beff0f1E.exit", label %.lr.ph

.lr.ph:                                           ; preds = %bb.h, %bb.i
  %.sroa.029.0144 = phi ptr [ %i.bd, %bb.i ], [ %i.ay, %bb.h ] ; 2 uses
  %i.bf = tail call fastcc noundef align 8 dereferenceable_or_null(48) ptr @"_ZN141_$LT$nickel_lang_parser..ast..pattern..Pattern$u20$as$u20$nickel_lang_parser..traverse..TraverseAlloc$LT$nickel_lang_parser..ast..Ast$GT$$GT$12traverse_ref17hc4d3c296b72c9892E"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %.sroa.029.0144, ptr noundef nonnull align 1 %1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(40) %2, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %3), !noalias !3176, !inline_history !3165 ; 2 uses
  %.not7.i7 = icmp eq ptr %i.bf, null
  br i1 %.not7.i7, label %bb.i, label %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$8find_map17hc20ce58b2beff0f1E.exit"

"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$8find_map17hc20ce58b2beff0f1E.exit": ; preds = %bb.g, %tailrecurse, %tailrecurse, %tailrecurse, %.lr.ph, %bb.i, %.lr.ph148, %bb.f, %bb.d, %"_ZN4core6option15Option$LT$T$GT$7or_else17hf8bb04d7a61e5c64E.exit", %bb.c, %"_ZN4core6option15Option$LT$T$GT$7or_else17h0ad54b0d343cb670E.exit", %.lr.ph153, %bb.h, %bb.e, %bb.b
  %.sroa.0.0 = phi ptr [ %i.ad, %"_ZN4core6option15Option$LT$T$GT$7or_else17h0ad54b0d343cb670E.exit" ], [ null, %bb.i ], [ null, %bb.e ], [ null, %bb.h ], [ null, %bb.b ], [ %i.aa, %.lr.ph153 ], [ null, %bb.f ], [ %i.af, %"_ZN4core6option15Option$LT$T$GT$7or_else17hf8bb04d7a61e5c64E.exit" ], [ null, %bb.c ], [ %i.w, %bb.d ], [ %i.aq, %.lr.ph148 ], [ %i.bf, %.lr.ph ], [ null, %tailrecurse ], [ null, %tailrecurse ], [ null, %tailrecurse ], [ null, %bb.g ]
  ret ptr %.sroa.0.0
}

; Function Attrs: nonlazybind uwtable
define void @"_ZN141_$LT$pretty..DocBuilder$LT$nickel_lang_parser..ast..pretty..Allocator$GT$$u20$as$u20$nickel_lang_parser..ast..pretty..NickelDocBuilderExt$GT$9parens_if17h63237a070fb1f5cbE"(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(32) %1, i1 noundef zeroext %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 7 uses
  %i.b = alloca [32 x i8], align 8                ; 4 uses
  %i.c = alloca [32 x i8], align 8                ; 5 uses
  %i.d = alloca [32 x i8], align 8                ; 4 uses
  br i1 %2, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, i64 32, i1 false)
  br label %bb.g

bb.c:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3188)
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.f = load ptr, ptr %i.e, align 8, !alias.scope !3188, !noalias !3189, !nonnull !19, !align !24, !noundef !19 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !3190
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !3190
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !3190
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !3191
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store ptr %i.f, ptr %i.g, align 8, !noalias !3191
  store i8 8, ptr %i.a, align 8, !noalias !3191
  %.sroa.10.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @76, ptr %.sroa.10.0..sroa_idx.i.i.i, align 8, !noalias !3191
  %.sroa.12.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i64 1, ptr %.sroa.12.0..sroa_idx.i.i.i, align 8, !noalias !3191
  invoke fastcc void @"_ZN6pretty23DocBuilder$LT$D$C$A$GT$13with_utf8_len17h81c24c807de64b28E"(ptr noalias noundef nonnull align 8 captures(address) dereferenceable(32) %i.b, ptr noalias noundef align 8 captures(address) dereferenceable(32) %i.a)
          to label %"_ZN6pretty23DocBuilder$LT$D$C$A$GT$7enclose17h5105d2a02fe99662E.exit" unwind label %bb.e, !noalias !3192

bb.d:                                             ; preds = %bb.e
  resume { ptr, i32 } %lpad.thr_comm.split-lp.i

bb.e:                                             ; preds = %bb.c
  %lpad.thr_comm.split-lp.i = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr89drop_in_place$LT$pretty..DocBuilder$LT$nickel_lang_parser..ast..pretty..Allocator$GT$$GT$17hd042ef62d824be5dE"(ptr noalias noundef nonnull readonly align 8 dereferenceable(32) %1) #53
          to label %bb.d unwind label %bb.f, !noalias !3193

bb.f:                                             ; preds = %bb.e
  %i.h = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #55, !noalias !3192
  unreachable

"_ZN6pretty23DocBuilder$LT$D$C$A$GT$7enclose17h5105d2a02fe99662E.exit": ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !3191
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.c, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false), !noalias !3190
  %i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  store ptr %i.f, ptr %i.i, align 8, !noalias !3190
  call fastcc void @"_ZN6pretty23DocBuilder$LT$D$C$A$GT$6append17hab4b90f7e34641d4E"(ptr noalias noundef align 8 captures(address) dereferenceable(32) %i.d, ptr noalias noundef align 8 captures(address) dereferenceable(32) %i.c, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(32) %1), !noalias !3193
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !3190
  call fastcc void @"_ZN6pretty23DocBuilder$LT$D$C$A$GT$6append17hec97c87a4e2a1bc3E"(ptr noalias noundef nonnull align 8 captures(address) dereferenceable(32) %0, ptr noalias noundef align 8 captures(address) dereferenceable(32) %i.d, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @77, i64 noundef 1), !noalias !3188
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !3190
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !3190
  br label %bb.g

bb.g:                                             ; preds = %"_ZN6pretty23DocBuilder$LT$D$C$A$GT$7enclose17h5105d2a02fe99662E.exit", %bb.b
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @"_ZN142_$LT$nickel_lang_parser..typ..RecordRowF$LT$$RF$nickel_lang_parser..ast..typ..Type$GT$$u20$as$u20$nickel_lang_parser..uniterm..FixTypeVars$GT$17fix_type_vars_env17h43c426800158fc71E"(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([72 x i8]) align 8 captures(none) dereferenceable(72) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(32) %1, ptr noundef nonnull align 8 captures(none) %2, ptr noundef nonnull %3, ptr noundef %4, ptr noalias noundef align 4 captures(address) dead_on_return dereferenceable(12) %5) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [104 x i8], align 8               ; 7 uses
  %.sroa.67 = alloca [72 x i8], align 8           ; 3 uses
  %.sroa.4 = alloca [24 x i8], align 8            ; 2 uses
  %i.b = alloca [104 x i8], align 8               ; 7 uses
  %.sroa.6 = alloca [20 x i8], align 4            ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.c = load ptr, ptr %1, align 8, !nonnull !19, !align !24, !noundef !19
  call void @"_ZN95_$LT$nickel_lang_parser..ast..typ..Type$u20$as$u20$nickel_lang_parser..uniterm..FixTypeVars$GT$17fix_type_vars_env17h137341d0f0f948edE"(ptr noalias noundef nonnull sret([104 x i8]) align 8 captures(address) dereferenceable(104) %i.b, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(104) %i.c, ptr noundef nonnull align 8 %2, ptr noundef nonnull %3, ptr noundef %4, ptr noalias noundef nonnull align 4 captures(address) dereferenceable(12) %5)
  %i.d = load i64, ptr %i.b, align 8, !range !59, !noundef !19 ; 3 uses
  %i.e = icmp eq i64 %i.d, 19
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %.sroa.67, ptr noundef nonnull align 8 dereferenceable(72) %i.f, i64 72, i1 false)
  br i1 %i.e, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(72) %.sroa.67, i64 72, i1 false)
  br label %bb.i

bb.c:                                             ; preds = %bb.a
  %.sroa.613.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 80
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.4, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.613.0..sroa_idx, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %.not = icmp eq i64 %i.d, 18
  br i1 %.not, label %bb.h, label %bb.d

bb.d:                                             ; preds = %bb.c
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %.sroa.2.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(72) %.sroa.67, i64 72, i1 false)
  %.sroa.315.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 80
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.315.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.4, i64 24, i1 false)
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.019.0.copyload = load i32, ptr %i.g, align 8
  %.sroa.420.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 12
  store i64 %i.d, ptr %i.a, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.i = load ptr, ptr %i.h, align 8, !nonnull !19, !noundef !19 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 32 ; 2 uses
  %i.k = load ptr, ptr %i.j, align 8, !nonnull !19, !noundef !19 ; 2 uses
  %i.l = load ptr, ptr %i.i, align 8, !nonnull !19, !noundef !19 ; 2 uses
  %i.m = ptrtoint ptr %i.k to i64
  %i.n = and i64 %i.m, 7
  %i.o = sub nsw i64 0, %i.n
  %i.p = getelementptr i8, ptr %i.k, i64 %i.o     ; 3 uses
  %i.q = ptrtoint ptr %i.p to i64
  %i.r = ptrtoint ptr %i.l to i64
  %i.s = sub i64 %i.q, %i.r
  %i.t = icmp ult ptr %i.p, %i.l
  %i.u = icmp ult i64 %i.s, 104
  %or.cond.i = or i1 %i.t, %i.u
  br i1 %or.cond.i, label %bb.e, label %.noexc

.noexc:                                           ; preds = %bb.d
  %i.v = getelementptr i8, ptr %i.p, i64 -104     ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.v) ]
  store ptr %i.v, ptr %i.j, align 8
  br label %"_ZN7bumpalo13Bump$LT$_$GT$10alloc_with17hf97601064fa3347dE.exit"

bb.e:                                             ; preds = %bb.d
  %i.w = invoke noundef ptr @"_ZN7bumpalo13Bump$LT$_$GT$17alloc_layout_slow17hacc06564798b584bE"(ptr noundef nonnull align 8 %2, i64 noundef 8, i64 noundef 104)
          to label %.noexc22 unwind label %bb.g   ; 2 uses

.noexc22:                                         ; preds = %bb.e
  %.not5.i = icmp eq ptr %i.w, null
  br i1 %.not5.i, label %bb.f, label %"_ZN7bumpalo13Bump$LT$_$GT$10alloc_with17hf97601064fa3347dE.exit", !prof !20

bb.f:                                             ; preds = %.noexc22
  invoke void @_ZN7bumpalo3oom17hfadade8e21f84824E() #52
          to label %.noexc23 unwind label %bb.g

.noexc23:                                         ; preds = %bb.f
  unreachable

bb.g:                                             ; preds = %bb.e, %bb.f
  %i.x = landingpad { ptr, i32 }
          cleanup
  call fastcc void @"_ZN4core3ptr112drop_in_place$LT$bumpalo..Bump..alloc$LT$nickel_lang_parser..ast..typ..Type$GT$..$u7b$$u7b$closure$u7d$$u7d$$GT$17he0d7b0d573eaff65E"(ptr noalias noundef nonnull align 8 dereferenceable(104) %i.a) #53
  resume { ptr, i32 } %i.x

"_ZN7bumpalo13Bump$LT$_$GT$10alloc_with17hf97601064fa3347dE.exit": ; preds = %.noexc, %.noexc22
  %.sroa.0.0.i21 = phi ptr [ %i.v, %.noexc ], [ %i.w, %.noexc22 ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %.sroa.0.0.i21, ptr noundef nonnull align 8 dereferenceable(104) %i.a, i64 104, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %.sroa.6, ptr noundef nonnull align 4 dereferenceable(16) %.sroa.420.0..sroa_idx, i64 16, i1 false)
  %i.y = ptrtoint ptr %.sroa.0.0.i21 to i64
  br label %bb.h

bb.h:                                             ; preds = %bb.c, %"_ZN7bumpalo13Bump$LT$_$GT$10alloc_with17hf97601064fa3347dE.exit"
  %.sroa.5.0 = phi i32 [ %.sroa.019.0.copyload, %"_ZN7bumpalo13Bump$LT$_$GT$10alloc_with17hf97601064fa3347dE.exit" ], [ 3, %bb.c ]
  %.sroa.0.0 = phi i64 [ %i.y, %"_ZN7bumpalo13Bump$LT$_$GT$10alloc_with17hf97601064fa3347dE.exit" ], [ undef, %bb.c ]
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.0.0, ptr %i.z, align 8
  %.sroa.5.0..sroa_idx2 = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 %.sroa.5.0, ptr %.sroa.5.0..sroa_idx2, align 8
  %.sroa.6.0..sroa_idx4 = getelementptr inbounds nuw i8, ptr %0, i64 20
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %.sroa.6.0..sroa_idx4, ptr noundef nonnull align 4 dereferenceable(20) %.sroa.6, i64 20, i1 false)
  store i32 25, ptr %0, align 8
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6)
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc noundef align 8 dereferenceable_or_null(48) ptr @"_ZN146_$LT$nickel_lang_parser..ast..typ..RecordRows$u20$as$u20$nickel_lang_parser..traverse..TraverseAlloc$LT$nickel_lang_parser..ast..typ..Type$GT$$GT$12traverse_ref28_$u7b$$u7b$closure$u7d$$u7d$17hec0ca583a8d36ad7E"(ptr noalias noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(32) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 7 uses
  %i.b = load ptr, ptr %0, align 8, !nonnull !19, !align !24, !noundef !19 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !nonnull !19, !align !18, !noundef !19 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.f = load ptr, ptr %i.e, align 8, !nonnull !19, !align !24, !noundef !19 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.h = load ptr, ptr %i.g, align 8, !nonnull !19, !align !18, !noundef !19 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3202)
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.j = load i32, ptr %i.i, align 8, !range !26, !alias.scope !3202, !noalias !3203, !noundef !19 ; 2 uses
  %i.k = icmp ne i32 %i.j, 4
  tail call void @llvm.assume(i1 %i.k)
  %i.l = icmp samesign ult i32 %i.j, 3
  br i1 %i.l, label %bb.b, label %"_ZN146_$LT$nickel_lang_parser..ast..typ..RecordRows$u20$as$u20$nickel_lang_parser..traverse..TraverseAlloc$LT$nickel_lang_parser..ast..typ..Type$GT$$GT$12traverse_ref17hfa648456e2619d08E.exit"

bb.b:                                             ; preds = %bb.a
  %i.m = load ptr, ptr %i.b, align 8, !alias.scope !3202, !noalias !3203, !nonnull !19, !align !24, !noundef !19
  %i.n = tail call fastcc noundef align 8 dereferenceable_or_null(48) ptr @"_ZN140_$LT$nickel_lang_parser..ast..typ..Type$u20$as$u20$nickel_lang_parser..traverse..TraverseAlloc$LT$nickel_lang_parser..ast..typ..Type$GT$$GT$12traverse_ref17h2fc2f6f8a09139a4E"(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(104) %i.m, ptr noundef nonnull align 1 %i.d, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.f, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.h), !noalias !3202, !inline_history !3 ; 2 uses
  %.not.i.i = icmp eq ptr %i.n, null
  br i1 %.not.i.i, label %bb.c, label %"_ZN146_$LT$nickel_lang_parser..ast..typ..RecordRows$u20$as$u20$nickel_lang_parser..traverse..TraverseAlloc$LT$nickel_lang_parser..ast..typ..Type$GT$$GT$12traverse_ref17hfa648456e2619d08E.exit"

bb.c:                                             ; preds = %bb.b
  %i.o = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.p = load ptr, ptr %i.o, align 8, !alias.scope !3202, !noalias !3203, !nonnull !19, !align !24, !noundef !19
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !3204
  store ptr %i.p, ptr %i.a, align 8, !noalias !3205
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %i.d, ptr %.sroa.4.0..sroa_idx, align 8, !noalias !3205
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.f, ptr %.sroa.5.0..sroa_idx, align 8, !noalias !3205
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store ptr %i.h, ptr %.sroa.6.0..sroa_idx, align 8, !noalias !3205
  %i.q = call fastcc noundef align 8 dereferenceable_or_null(48) ptr @"_ZN146_$LT$nickel_lang_parser..ast..typ..RecordRows$u20$as$u20$nickel_lang_parser..traverse..TraverseAlloc$LT$nickel_lang_parser..ast..typ..Type$GT$$GT$12traverse_ref28_$u7b$$u7b$closure$u7d$$u7d$17hec0ca583a8d36ad7E"(ptr noalias noundef readonly align 8 captures(address) dereferenceable(32) %i.a), !noalias !3206, !inline_history !3201
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !3204
  br label %"_ZN146_$LT$nickel_lang_parser..ast..typ..RecordRows$u20$as$u20$nickel_lang_parser..traverse..TraverseAlloc$LT$nickel_lang_parser..ast..typ..Type$GT$$GT$12traverse_ref17hfa648456e2619d08E.exit"

"_ZN146_$LT$nickel_lang_parser..ast..typ..RecordRows$u20$as$u20$nickel_lang_parser..traverse..TraverseAlloc$LT$nickel_lang_parser..ast..typ..Type$GT$$GT$12traverse_ref17hfa648456e2619d08E.exit": ; preds = %bb.b, %bb.c, %bb.a
  %.sroa.0.0.i = phi ptr [ null, %bb.a ], [ %i.q, %bb.c ], [ %i.n, %bb.b ]
  ret ptr %.sroa.0.0.i
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_ZN14regex_automata4meta5regex5Regex11search_half17hc6284984175e0f93E(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 3 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = alloca [32 x i8], align 8                ; 12 uses
  %i.d = alloca [24 x i8], align 8                ; 4 uses
  %i.e = load ptr, ptr @_ZN18nickel_lang_parser3ast6pretty13QUOTING_REGEX17h8acf96ebfed2f528E, align 8, !nonnull !19, !noundef !19
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  %i.g = load ptr, ptr %i.f, align 8, !nonnull !19, !noundef !19 ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 138
  %i.i = load i8, ptr %i.h, align 2, !range !27, !noundef !19
  %cond = icmp eq i8 %i.i, 2
  br i1 %cond, label %_ZN14regex_automata4meta5regex9RegexInfo13is_impossible17hc1b22919eec0c0bfE.exit.thread7, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3220)
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.k = load i64, ptr %i.j, align 8, !alias.scope !3220, !noalias !3221, !noundef !19 ; 2 uses
  %.not.i = icmp eq i64 %i.k, 0
  br i1 %.not.i, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.d, %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.m = load i64, ptr %i.l, align 8, !alias.scope !3220, !noalias !3221, !noundef !19 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.o = load i64, ptr %i.n, align 8, !alias.scope !3220, !noalias !3221, !noundef !19
  %i.p = icmp ult i64 %i.m, %i.o
  %i.q = getelementptr inbounds nuw i8, ptr %i.g, i64 168
  %i.r = load ptr, ptr %i.q, align 8, !noalias !3222 ; 7 uses
  br i1 %i.p, label %bb.e, label %._crit_edge

bb.d:                                             ; preds = %bb.b
  %i.s = getelementptr inbounds nuw i8, ptr %i.g, i64 168
  %i.t = load ptr, ptr %i.s, align 8, !noalias !3222, !nonnull !19, !noundef !19
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 60
  %i.v = load i32, ptr %i.u, align 4, !noalias !3222, !noundef !19
  %i.w = and i32 %i.v, 1
  %i.x = icmp eq i32 %i.w, 0
  br i1 %i.x, label %bb.c, label %_ZN14regex_automata4meta5regex9RegexInfo13is_impossible17hc1b22919eec0c0bfE.exit.thread7

bb.e:                                             ; preds = %bb.c
  %i.y = getelementptr inbounds nuw i8, ptr %i.r, i64 64
  %i.z = load i32, ptr %i.y, align 8, !noalias !3222, !noundef !19
  %i.aa = and i32 %i.z, 2
  %i.ab = icmp eq i32 %i.aa, 0
  br i1 %i.ab, label %._crit_edge, label %_ZN14regex_automata4meta5regex9RegexInfo13is_impossible17hc1b22919eec0c0bfE.exit.thread7

end_hunk_2
begin_hunk_3_@_ZN18nickel_lang_parser3ast5alloc8AstAlloc9annotated17h7bd421623c87fb00E:bb.a
  store ptr %.sroa.0.0.i5, ptr %i.ah, align 8
  store i8 15, ptr %0, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define noundef nonnull align 8 dereferenceable(40) ptr @_ZN18nickel_lang_parser3ast5alloc8AstAlloc9enum_rows17h9977f27be001aa0aE(ptr nofree noundef nonnull align 8 captures(none) %0, ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(40) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !noalias !4178, !nonnull !19, !noundef !19 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 32 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !noalias !4178, !nonnull !19, !noundef !19 ; 2 uses
  %i.e = load ptr, ptr %i.b, align 8, !noalias !4178, !nonnull !19, !noundef !19 ; 2 uses
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = and i64 %i.f, 7
  %i.h = sub nsw i64 0, %i.g
  %i.i = getelementptr i8, ptr %i.d, i64 %i.h     ; 3 uses
  %i.j = ptrtoint ptr %i.i to i64
  %i.k = ptrtoint ptr %i.e to i64
  %i.l = sub i64 %i.j, %i.k
  %i.m = icmp ult ptr %i.i, %i.e
  %i.n = icmp ult i64 %i.l, 40
  %or.cond.i = or i1 %i.m, %i.n
  br i1 %or.cond.i, label %bb.b, label %"_ZN7bumpalo13Bump$LT$_$GT$21try_alloc_layout_fast17h12dcb9d07e2240f3E.exit"

"_ZN7bumpalo13Bump$LT$_$GT$21try_alloc_layout_fast17h12dcb9d07e2240f3E.exit": ; preds = %bb.a
  %i.o = getelementptr i8, ptr %i.i, i64 -40      ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.o) ], !noalias !4178
  store ptr %i.o, ptr %i.c, align 8, !noalias !4178
  br label %"_ZN7bumpalo13Bump$LT$_$GT$12alloc_layout17h711a5737d6c8d0dcE.exit"

bb.b:                                             ; preds = %bb.a
  %i.p = tail call noundef ptr @"_ZN7bumpalo13Bump$LT$_$GT$17alloc_layout_slow17hacc06564798b584bE"(ptr noundef nonnull align 8 %0, i64 noundef 8, i64 noundef 40), !noalias !4178 ; 2 uses
  %.not5.i = icmp eq ptr %i.p, null
  br i1 %.not5.i, label %bb.c, label %"_ZN7bumpalo13Bump$LT$_$GT$12alloc_layout17h711a5737d6c8d0dcE.exit", !prof !20

bb.c:                                             ; preds = %bb.b
  tail call void @_ZN7bumpalo3oom17hfadade8e21f84824E() #52, !noalias !4178
  unreachable

"_ZN7bumpalo13Bump$LT$_$GT$12alloc_layout17h711a5737d6c8d0dcE.exit": ; preds = %"_ZN7bumpalo13Bump$LT$_$GT$21try_alloc_layout_fast17h12dcb9d07e2240f3E.exit", %bb.b
  %.sroa.0.0.i = phi ptr [ %i.o, %"_ZN7bumpalo13Bump$LT$_$GT$21try_alloc_layout_fast17h12dcb9d07e2240f3E.exit" ], [ %i.p, %bb.b ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.0.0.i, ptr noundef nonnull align 8 dereferenceable(40) %1, i64 40, i1 false), !noalias !4178
  ret ptr %.sroa.0.0.i
}

; Function Attrs: nonlazybind uwtable
define noundef nonnull align 8 dereferenceable(104) ptr @_ZN18nickel_lang_parser3ast5alloc8AstAlloc9type_data17h29c0e3dc3817c482E(ptr nofree noundef nonnull align 8 captures(none) %0, ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(88) %1, ptr noalias noundef readonly align 4 captures(none) dead_on_return dereferenceable(16) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [104 x i8], align 8               ; 4 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %i.a, ptr noundef nonnull align 8 dereferenceable(88) %1, i64 88, i1 false)
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 88
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.b, ptr noundef nonnull align 4 dereferenceable(16) %2, i64 16, i1 false)
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !nonnull !19, !noundef !19 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 32 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !nonnull !19, !noundef !19 ; 2 uses
  %i.g = load ptr, ptr %i.d, align 8, !nonnull !19, !noundef !19 ; 2 uses
  %i.h = ptrtoint ptr %i.f to i64
  %i.i = and i64 %i.h, 7
  %i.j = sub nsw i64 0, %i.i
  %i.k = getelementptr i8, ptr %i.f, i64 %i.j     ; 3 uses
  %i.l = ptrtoint ptr %i.k to i64
  %i.m = ptrtoint ptr %i.g to i64
  %i.n = sub i64 %i.l, %i.m
  %i.o = icmp ult ptr %i.k, %i.g
  %i.p = icmp ult i64 %i.n, 104
  %or.cond.i = or i1 %i.o, %i.p
  br i1 %or.cond.i, label %bb.b, label %.noexc

.noexc:                                           ; preds = %bb.a
  %i.q = getelementptr i8, ptr %i.k, i64 -104     ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.q) ]
  store ptr %i.q, ptr %i.e, align 8
  br label %"_ZN7bumpalo13Bump$LT$_$GT$10alloc_with17hf97601064fa3347dE.exit"

bb.b:                                             ; preds = %bb.a
  %i.r = invoke noundef ptr @"_ZN7bumpalo13Bump$LT$_$GT$17alloc_layout_slow17hacc06564798b584bE"(ptr noundef nonnull align 8 %0, i64 noundef 8, i64 noundef 104)
          to label %.noexc2 unwind label %bb.d    ; 2 uses

.noexc2:                                          ; preds = %bb.b
  %.not5.i = icmp eq ptr %i.r, null
  br i1 %.not5.i, label %bb.c, label %"_ZN7bumpalo13Bump$LT$_$GT$10alloc_with17hf97601064fa3347dE.exit", !prof !20

bb.c:                                             ; preds = %.noexc2
  invoke void @_ZN7bumpalo3oom17hfadade8e21f84824E() #52
          to label %.noexc3 unwind label %bb.d

.noexc3:                                          ; preds = %bb.c
  unreachable

bb.d:                                             ; preds = %bb.b, %bb.c
  %i.s = landingpad { ptr, i32 }
          cleanup
  call fastcc void @"_ZN4core3ptr112drop_in_place$LT$bumpalo..Bump..alloc$LT$nickel_lang_parser..ast..typ..Type$GT$..$u7b$$u7b$closure$u7d$$u7d$$GT$17he0d7b0d573eaff65E"(ptr noalias noundef nonnull align 8 dereferenceable(104) %i.a) #53
  resume { ptr, i32 } %i.s

"_ZN7bumpalo13Bump$LT$_$GT$10alloc_with17hf97601064fa3347dE.exit": ; preds = %.noexc, %.noexc2
  %.sroa.0.0.i1 = phi ptr [ %i.q, %.noexc ], [ %i.r, %.noexc2 ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %.sroa.0.0.i1, ptr noundef nonnull align 8 dereferenceable(104) %i.a, i64 104, i1 false)
  ret ptr %.sroa.0.0.i1
}

; Function Attrs: nonlazybind uwtable
define void @_ZN18nickel_lang_parser3ast5alloc8AstAlloc9unary_fun17h867bedff22fe7df9E(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, ptr nofree noundef nonnull align 8 captures(none) %1, ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(64) %2, ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(48) %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %.sroa.013.0.copyload = load i32, ptr %2, align 8 ; 2 uses
  %.sroa.414.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.a = icmp ne i32 %.sroa.013.0.copyload, 3     ; 4 uses
  %i.b = select i1 %i.a, i64 64, i64 0            ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !noalias !4183, !nonnull !19, !noundef !19 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 32 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !noalias !4183, !nonnull !19, !noundef !19 ; 2 uses
  %i.g = load ptr, ptr %i.d, align 8, !noalias !4183, !nonnull !19, !noundef !19 ; 2 uses
  %i.h = ptrtoint ptr %i.f to i64
  %i.i = and i64 %i.h, 7
  %i.j = sub nsw i64 0, %i.i
  %i.k = getelementptr i8, ptr %i.f, i64 %i.j     ; 3 uses
  %i.l = ptrtoint ptr %i.k to i64
  %i.m = ptrtoint ptr %i.g to i64
  %i.n = sub i64 %i.l, %i.m
  %i.o = icmp ult ptr %i.k, %i.g
  %i.p = icmp ugt i64 %i.b, %i.n
  %or.cond.i = or i1 %i.o, %i.p
  br i1 %or.cond.i, label %bb.b, label %"_ZN7bumpalo13Bump$LT$_$GT$21try_alloc_layout_fast17h12dcb9d07e2240f3E.exit"

"_ZN7bumpalo13Bump$LT$_$GT$21try_alloc_layout_fast17h12dcb9d07e2240f3E.exit": ; preds = %bb.a
  %.neg = select i1 %i.a, i64 -64, i64 0
  %i.q = getelementptr i8, ptr %i.k, i64 %.neg    ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.q) ], !noalias !4183
  store ptr %i.q, ptr %i.e, align 8, !noalias !4183
  br label %"_ZN7bumpalo13Bump$LT$_$GT$12alloc_layout17h711a5737d6c8d0dcE.exit.i"

bb.b:                                             ; preds = %bb.a
  %i.r = tail call noundef ptr @"_ZN7bumpalo13Bump$LT$_$GT$17alloc_layout_slow17hacc06564798b584bE"(ptr noundef nonnull align 8 %1, i64 noundef range(i64 1, 9) 8, i64 noundef %i.b), !noalias !4183 ; 2 uses
  %.not5.i.i = icmp eq ptr %i.r, null
  br i1 %.not5.i.i, label %bb.c, label %"_ZN7bumpalo13Bump$LT$_$GT$12alloc_layout17h711a5737d6c8d0dcE.exit.i", !prof !20

bb.c:                                             ; preds = %bb.b
  tail call void @_ZN7bumpalo3oom17hfadade8e21f84824E() #52, !noalias !4183
  unreachable

"_ZN7bumpalo13Bump$LT$_$GT$12alloc_layout17h711a5737d6c8d0dcE.exit.i": ; preds = %"_ZN7bumpalo13Bump$LT$_$GT$21try_alloc_layout_fast17h12dcb9d07e2240f3E.exit", %bb.b
  %.sroa.0.0.i.i = phi ptr [ %i.q, %"_ZN7bumpalo13Bump$LT$_$GT$21try_alloc_layout_fast17h12dcb9d07e2240f3E.exit" ], [ %i.r, %bb.b ] ; 3 uses
  br i1 %i.a, label %"_ZN7bumpalo13Bump$LT$_$GT$21alloc_slice_fill_iter28_$u7b$$u7b$closure$u7d$$u7d$17he0d990cd56e8f508E.exit", label %"_ZN7bumpalo13Bump$LT$_$GT$21alloc_slice_fill_with17h93039f617d84216aE.exit"

"_ZN7bumpalo13Bump$LT$_$GT$21alloc_slice_fill_iter28_$u7b$$u7b$closure$u7d$$u7d$17he0d990cd56e8f508E.exit": ; preds = %"_ZN7bumpalo13Bump$LT$_$GT$12alloc_layout17h711a5737d6c8d0dcE.exit.i"
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i, i64 4
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(60) %.sroa.4.0..sroa_idx, ptr noundef nonnull align 4 dereferenceable(60) %.sroa.414.0..sroa_idx, i64 60, i1 false)
  store i32 %.sroa.013.0.copyload, ptr %.sroa.0.0.i.i, align 8, !noalias !4183
  br label %"_ZN7bumpalo13Bump$LT$_$GT$21alloc_slice_fill_with17h93039f617d84216aE.exit"

"_ZN7bumpalo13Bump$LT$_$GT$21alloc_slice_fill_with17h93039f617d84216aE.exit": ; preds = %"_ZN7bumpalo13Bump$LT$_$GT$21alloc_slice_fill_iter28_$u7b$$u7b$closure$u7d$$u7d$17he0d990cd56e8f508E.exit", %"_ZN7bumpalo13Bump$LT$_$GT$12alloc_layout17h711a5737d6c8d0dcE.exit.i"
  %i.s = load ptr, ptr %i.c, align 8, !noalias !4184, !nonnull !19, !noundef !19 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 32 ; 2 uses
  %i.u = load ptr, ptr %i.t, align 8, !noalias !4184, !nonnull !19, !noundef !19 ; 2 uses
  %i.v = load ptr, ptr %i.s, align 8, !noalias !4184, !nonnull !19, !noundef !19 ; 2 uses
  %i.w = ptrtoint ptr %i.u to i64
  %i.x = and i64 %i.w, 7
  %i.y = sub nsw i64 0, %i.x
  %i.z = getelementptr i8, ptr %i.u, i64 %i.y     ; 3 uses
  %i.aa = ptrtoint ptr %i.z to i64
  %i.ab = ptrtoint ptr %i.v to i64
  %i.ac = sub i64 %i.aa, %i.ab
  %i.ad = icmp ult ptr %i.z, %i.v
  %i.ae = icmp ult i64 %i.ac, 48
  %or.cond.i1 = or i1 %i.ad, %i.ae
  br i1 %or.cond.i1, label %bb.d, label %"_ZN7bumpalo13Bump$LT$_$GT$21try_alloc_layout_fast17h12dcb9d07e2240f3E.exit4"

"_ZN7bumpalo13Bump$LT$_$GT$21try_alloc_layout_fast17h12dcb9d07e2240f3E.exit4": ; preds = %"_ZN7bumpalo13Bump$LT$_$GT$21alloc_slice_fill_with17h93039f617d84216aE.exit"
  %i.af = getelementptr i8, ptr %i.z, i64 -48     ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.af) ], !noalias !4184
  store ptr %i.af, ptr %i.t, align 8, !noalias !4184
  br label %"_ZN7bumpalo13Bump$LT$_$GT$12alloc_layout17h711a5737d6c8d0dcE.exit"

bb.d:                                             ; preds = %"_ZN7bumpalo13Bump$LT$_$GT$21alloc_slice_fill_with17h93039f617d84216aE.exit"
  %i.ag = tail call noundef ptr @"_ZN7bumpalo13Bump$LT$_$GT$17alloc_layout_slow17hacc06564798b584bE"(ptr noundef nonnull align 8 %1, i64 noundef 8, i64 noundef 48), !noalias !4184 ; 2 uses
  %.not5.i = icmp eq ptr %i.ag, null
  br i1 %.not5.i, label %bb.e, label %"_ZN7bumpalo13Bump$LT$_$GT$12alloc_layout17h711a5737d6c8d0dcE.exit", !prof !20

bb.e:                                             ; preds = %bb.d
  tail call void @_ZN7bumpalo3oom17hfadade8e21f84824E() #52, !noalias !4184
  unreachable

"_ZN7bumpalo13Bump$LT$_$GT$12alloc_layout17h711a5737d6c8d0dcE.exit": ; preds = %"_ZN7bumpalo13Bump$LT$_$GT$21try_alloc_layout_fast17h12dcb9d07e2240f3E.exit4", %bb.d
  %.sroa.0.0.i = phi ptr [ %i.af, %"_ZN7bumpalo13Bump$LT$_$GT$21try_alloc_layout_fast17h12dcb9d07e2240f3E.exit4" ], [ %i.ag, %bb.d ] ; 2 uses
  %i.ah = zext i1 %i.a to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.0.0.i, ptr noundef nonnull align 8 dereferenceable(48) %3, i64 48, i1 false), !noalias !4184
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.0.0.i.i, ptr %i.ai, align 8
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.ah, ptr %i.aj, align 8
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %.sroa.0.0.i, ptr %i.ak, align 8
  store i8 5, ptr %0, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @"_ZN18nickel_lang_parser3ast6pretty127_$LT$impl$u20$pretty..Pretty$LT$nickel_lang_parser..ast..pretty..Allocator$GT$$u20$for$u20$$RF$nickel_lang_parser..ast..Ast$GT$6pretty17hfe702d3e03456e75E"(ptr dead_on_unwind noalias noundef writable sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) %1, ptr noundef nonnull align 8 %2) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16
  tail call void @"_ZN18nickel_lang_parser3ast6pretty128_$LT$impl$u20$pretty..Pretty$LT$nickel_lang_parser..ast..pretty..Allocator$GT$$u20$for$u20$$RF$nickel_lang_parser..ast..Node$GT$6pretty17h68994528711b0d65E"(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.a, ptr noundef nonnull align 8 %2)
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @"_ZN18nickel_lang_parser3ast6pretty128_$LT$impl$u20$pretty..Pretty$LT$nickel_lang_parser..ast..pretty..Allocator$GT$$u20$for$u20$$RF$nickel_lang_parser..ast..Node$GT$6pretty17h68994528711b0d65E"(ptr dead_on_unwind noalias noundef writable sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %1, ptr noundef nonnull align 8 %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = alloca [32 x i8], align 8                ; 7 uses
  %i.c = alloca [32 x i8], align 8                ; 4 uses
  %i.d = alloca [32 x i8], align 8                ; 6 uses
  %i.e = alloca [32 x i8], align 8                ; 6 uses
  %i.f = alloca [32 x i8], align 8                ; 4 uses
  %i.g = alloca [32 x i8], align 8                ; 4 uses
  %i.h = alloca [32 x i8], align 8                ; 7 uses
  %i.i = alloca [64 x i8], align 8                ; 5 uses
  %i.j = alloca [32 x i8], align 8                ; 6 uses
  %.sroa.632.i = alloca [23 x i8], align 1        ; 5 uses
  %i.k = alloca [32 x i8], align 8                ; 11 uses
  %i.l = alloca [32 x i8], align 8                ; 8 uses
  %i.m = alloca [32 x i8], align 8                ; 5 uses
  %i.n = alloca [32 x i8], align 8                ; 6 uses
  %i.o = alloca [32 x i8], align 8                ; 10 uses
  %i.p = alloca [32 x i8], align 8                ; 7 uses
  %i.q = alloca [32 x i8], align 8                ; 4 uses
  %i.r = alloca [32 x i8], align 8                ; 6 uses
  %i.s = alloca [32 x i8], align 8                ; 4 uses
  %i.t = alloca [32 x i8], align 8                ; 4 uses
  %i.u = alloca [32 x i8], align 8                ; 4 uses
  %i.v = alloca [32 x i8], align 8                ; 7 uses
  %i.w = alloca [32 x i8], align 8                ; 4 uses
  %i.x = alloca [32 x i8], align 8                ; 6 uses
  %i.y = alloca [32 x i8], align 8                ; 4 uses
  %i.z = alloca [32 x i8], align 8                ; 7 uses
  %i.aa = alloca [32 x i8], align 8               ; 4 uses
  %i.ab = alloca [32 x i8], align 8               ; 4 uses
  %i.ac = alloca [32 x i8], align 8               ; 7 uses
  %i.ad = alloca [64 x i8], align 8               ; 5 uses
  %i.ae = alloca [32 x i8], align 8               ; 7 uses
  %i.af = alloca [64 x i8], align 8               ; 5 uses
  %i.ag = alloca [32 x i8], align 8               ; 6 uses
  %.sroa.6641 = alloca [23 x i8], align 1         ; 5 uses
  %i.ah = alloca [32 x i8], align 8               ; 7 uses
  %i.ai = alloca [32 x i8], align 8               ; 4 uses
  %i.aj = alloca [32 x i8], align 8               ; 6 uses
  %i.ak = alloca [32 x i8], align 8               ; 4 uses
  %i.al = alloca [32 x i8], align 8               ; 5 uses
  %i.am = alloca [32 x i8], align 8               ; 4 uses
  %i.an = alloca [32 x i8], align 8               ; 4 uses
  %i.ao = alloca [32 x i8], align 8               ; 7 uses
  %i.ap = alloca [64 x i8], align 8               ; 5 uses
  %i.aq = alloca [32 x i8], align 8               ; 6 uses
  %.sroa.61089 = alloca [23 x i8], align 1        ; 5 uses
  %i.ar = alloca [32 x i8], align 8               ; 7 uses
  %i.as = alloca [32 x i8], align 8               ; 7 uses
  %i.at = alloca [32 x i8], align 8               ; 7 uses
  %i.au = alloca [32 x i8], align 8               ; 6 uses
  %.sroa.6 = alloca [23 x i8], align 1            ; 5 uses
  %i.av = alloca [32 x i8], align 8               ; 7 uses
  %i.aw = alloca [32 x i8], align 8               ; 7 uses
  %i.ax = alloca [24 x i8], align 8               ; 7 uses
  %i.ay = alloca [32 x i8], align 8               ; 7 uses
  %i.az = alloca [32 x i8], align 8               ; 4 uses
  %i.ba = alloca [32 x i8], align 8               ; 5 uses
  %i.bb = alloca [32 x i8], align 8               ; 4 uses
  %i.bc = alloca [32 x i8], align 8               ; 7 uses
  %i.bd = alloca [32 x i8], align 8               ; 7 uses
  %i.be = alloca [48 x i8], align 8               ; 8 uses
  %i.bf = alloca [16 x i8], align 8               ; 5 uses
  %i.bg = alloca [16 x i8], align 8               ; 5 uses
  %i.bh = alloca [24 x i8], align 8               ; 8 uses
  %i.bi = alloca [32 x i8], align 8               ; 7 uses
  %i.bj = alloca [32 x i8], align 8               ; 7 uses
  %i.bk = alloca [32 x i8], align 8               ; 7 uses
  %i.bl = alloca [32 x i8], align 8               ; 7 uses
  %i.bm = alloca [32 x i8], align 8               ; 7 uses
  %i.bn = alloca [32 x i8], align 8               ; 7 uses
  %i.bo = alloca [32 x i8], align 8               ; 7 uses
  %i.bp = alloca [32 x i8], align 8               ; 4 uses
  %i.bq = alloca [32 x i8], align 8               ; 5 uses
  %i.br = alloca [32 x i8], align 8               ; 4 uses
  %i.bs = alloca [32 x i8], align 8               ; 7 uses
  %i.bt = alloca [32 x i8], align 8               ; 4 uses
  %i.bu = alloca [32 x i8], align 8               ; 6 uses
  %i.bv = alloca [32 x i8], align 8               ; 6 uses
  %i.bw = alloca [32 x i8], align 8               ; 6 uses
  %i.bx = alloca [32 x i8], align 8               ; 4 uses
  %i.by = alloca [32 x i8], align 8               ; 7 uses
  %i.bz = alloca [32 x i8], align 8               ; 6 uses
  %i.ca = alloca [32 x i8], align 8               ; 5 uses
  %i.cb = alloca [32 x i8], align 8               ; 6 uses
  %.sroa.101058 = alloca [23 x i8], align 1       ; 8 uses
  %i.cc = alloca [32 x i8], align 8               ; 7 uses
  %i.cd = alloca [32 x i8], align 8               ; 4 uses
  %i.ce = alloca [32 x i8], align 8               ; 6 uses
  %i.cf = alloca [32 x i8], align 8               ; 7 uses
  %i.cg = alloca [32 x i8], align 8               ; 4 uses
  %i.ch = alloca [32 x i8], align 8               ; 5 uses
  %i.ci = alloca [32 x i8], align 8               ; 4 uses
  %i.cj = alloca [32 x i8], align 8               ; 7 uses
  %i.ck = alloca [32 x i8], align 8               ; 4 uses
  %i.cl = alloca [32 x i8], align 8               ; 6 uses
  %i.cm = alloca [32 x i8], align 8               ; 7 uses
  %i.cn = alloca [32 x i8], align 8               ; 4 uses
  %i.co = alloca [32 x i8], align 8               ; 6 uses
  %i.cp = alloca [32 x i8], align 8               ; 7 uses
  %i.cq = alloca [32 x i8], align 8               ; 4 uses
  %i.cr = alloca [32 x i8], align 8               ; 6 uses
  %i.cs = alloca [32 x i8], align 8               ; 14 uses
  %i.ct = alloca [24 x i8], align 8               ; 6 uses
  %i.cu = alloca [32 x i8], align 8               ; 11 uses
  %i.cv = alloca [32 x i8], align 8               ; 8 uses
  %i.cw = alloca [32 x i8], align 8               ; 5 uses
  %i.cx = alloca [32 x i8], align 8               ; 6 uses
  %i.cy = alloca [32 x i8], align 8               ; 10 uses
  %i.cz = alloca [32 x i8], align 8               ; 7 uses
  %i.da = alloca [32 x i8], align 8               ; 4 uses
  %i.db = alloca [32 x i8], align 8               ; 6 uses
  %i.dc = alloca [32 x i8], align 8               ; 7 uses
  %i.dd = alloca [32 x i8], align 8               ; 4 uses
  %i.de = alloca [32 x i8], align 8               ; 6 uses
  %i.df = alloca [32 x i8], align 8               ; 6 uses
  %i.dg = alloca [32 x i8], align 8               ; 6 uses
  %i.dh = alloca [32 x i8], align 8               ; 4 uses
  %i.di = alloca [32 x i8], align 8               ; 7 uses
  %i.dj = alloca [32 x i8], align 8               ; 6 uses
  %i.dk = alloca [32 x i8], align 8               ; 5 uses
  %i.dl = alloca [32 x i8], align 8               ; 6 uses
  %.sroa.10 = alloca [23 x i8], align 1           ; 8 uses
  %i.dm = alloca [32 x i8], align 8               ; 7 uses
  %i.dn = alloca [32 x i8], align 8               ; 4 uses
  %i.do = alloca [32 x i8], align 8               ; 6 uses
  %i.dp = alloca [32 x i8], align 8               ; 7 uses
  %i.dq = alloca [32 x i8], align 8               ; 7 uses
  %i.dr = alloca [32 x i8], align 8               ; 7 uses
  %i.ds = alloca [32 x i8], align 8               ; 7 uses
  %i.dt = alloca [32 x i8], align 8               ; 4 uses
  %i.du = alloca [32 x i8], align 8               ; 6 uses
  %i.dv = alloca [32 x i8], align 8               ; 7 uses
  %i.dw = alloca [32 x i8], align 8               ; 4 uses
  %i.dx = alloca [32 x i8], align 8               ; 6 uses
  %i.dy = alloca [32 x i8], align 8               ; 7 uses
  %i.dz = alloca [32 x i8], align 8               ; 7 uses
  %i.ea = alloca [32 x i8], align 8               ; 7 uses
  %i.eb = alloca [32 x i8], align 8               ; 4 uses
  %i.ec = alloca [32 x i8], align 8               ; 6 uses
  %i.ed = alloca [32 x i8], align 8               ; 7 uses
  %i.ee = alloca [32 x i8], align 8               ; 4 uses
  %i.ef = alloca [32 x i8], align 8               ; 6 uses
  %i.eg = alloca [32 x i8], align 8               ; 7 uses
  %i.eh = alloca [32 x i8], align 8               ; 7 uses
  %i.ei = alloca [32 x i8], align 8               ; 4 uses
  %i.ej = alloca [32 x i8], align 8               ; 6 uses
  %i.ek = alloca [32 x i8], align 8               ; 7 uses
  %i.el = alloca [32 x i8], align 8               ; 7 uses
  %i.em = alloca [32 x i8], align 8               ; 7 uses
  %i.en = alloca [32 x i8], align 8               ; 7 uses
  %i.eo = alloca [32 x i8], align 8               ; 7 uses
  %i.ep = alloca [32 x i8], align 8               ; 7 uses
  %i.eq = alloca [32 x i8], align 8               ; 4 uses
  %i.er = alloca [32 x i8], align 8               ; 5 uses
  %i.es = alloca [32 x i8], align 8               ; 4 uses
  %i.et = alloca [48 x i8], align 8               ; 8 uses
  %i.eu = alloca [32 x i8], align 8               ; 7 uses
  %i.ev = alloca [24 x i8], align 8               ; 4 uses
  %i.ew = alloca [32 x i8], align 8               ; 5 uses
  %i.ex = alloca [32 x i8], align 8               ; 11 uses
  %i.ey = alloca [32 x i8], align 8               ; 4 uses
  %i.ez = alloca [32 x i8], align 8               ; 4 uses
  %i.fa = alloca [32 x i8], align 8               ; 4 uses
  %i.fb = alloca [32 x i8], align 8               ; 4 uses
  %i.fc = alloca [32 x i8], align 8               ; 4 uses
  %i.fd = alloca [32 x i8], align 8               ; 4 uses
  %i.fe = alloca [32 x i8], align 8               ; 6 uses
  %i.ff = alloca [32 x i8], align 8               ; 4 uses
  %i.fg = alloca [32 x i8], align 8               ; 4 uses
  %i.fh = alloca [24 x i8], align 8               ; 6 uses
  %i.fi = alloca [32 x i8], align 8               ; 6 uses
  %i.fj = alloca [32 x i8], align 8               ; 4 uses
  %i.fk = alloca [32 x i8], align 8               ; 12 uses
  %i.fl = alloca [32 x i8], align 8               ; 4 uses
  %i.fm = alloca [32 x i8], align 8               ; 4 uses
  %i.fn = alloca [32 x i8], align 8               ; 4 uses
  %i.fo = alloca [32 x i8], align 8               ; 4 uses
  %i.fp = alloca [32 x i8], align 8               ; 5 uses
  %i.fq = alloca [32 x i8], align 8               ; 4 uses
  %i.fr = alloca [32 x i8], align 8               ; 13 uses
  %i.fs = alloca [32 x i8], align 8               ; 4 uses
  %i.ft = alloca [32 x i8], align 8               ; 4 uses
  %i.fu = alloca [32 x i8], align 8               ; 4 uses
  %i.fv = alloca [32 x i8], align 8               ; 4 uses
  %i.fw = alloca [32 x i8], align 8               ; 4 uses
  %i.fx = alloca [32 x i8], align 8               ; 4 uses
  %i.fy = alloca [32 x i8], align 8               ; 7 uses
  %i.fz = alloca [32 x i8], align 8               ; 4 uses
  %i.ga = alloca [32 x i8], align 8               ; 4 uses
  %i.gb = alloca [32 x i8], align 8               ; 4 uses
  %i.gc = alloca [32 x i8], align 8               ; 4 uses
  %i.gd = alloca [24 x i8], align 8               ; 6 uses
  %i.ge = alloca [32 x i8], align 8               ; 4 uses
  %i.gf = alloca [32 x i8], align 8               ; 5 uses
  %i.gg = alloca [32 x i8], align 8               ; 4 uses
  %i.gh = alloca [32 x i8], align 8               ; 6 uses
  %i.gi = alloca [32 x i8], align 8               ; 4 uses
  %i.gj = alloca [32 x i8], align 8               ; 4 uses
  %i.gk = alloca [32 x i8], align 8               ; 4 uses
end_hunk_3
begin_hunk_4_@_ZN18nickel_lang_parser3ast6pretty12ident_quoted17h21759883a8c72e2eE:bb.a
  %i.eu = icmp ne i32 %i.et, 0
  %i.ev = zext i1 %i.eu to i32
  %i.ew = icmp eq i32 %i.ev, 0
  br i1 %i.ew, label %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$3any17hb264b1386aa17f75E.exit.thread", label %"_ZN53_$LT$T$u20$as$u20$core..slice..cmp..SliceContains$GT$14slice_contains28_$u7b$$u7b$closure$u7d$$u7d$17h61d1a45338a4c430E.exit.backedge.i.17"

"_ZN53_$LT$T$u20$as$u20$core..slice..cmp..SliceContains$GT$14slice_contains28_$u7b$$u7b$closure$u7d$$u7d$17h61d1a45338a4c430E.exit.backedge.i.17": ; preds = %.split.i.17, %"_ZN53_$LT$T$u20$as$u20$core..slice..cmp..SliceContains$GT$14slice_contains28_$u7b$$u7b$closure$u7d$$u7d$17h61d1a45338a4c430E.exit.backedge.i.16"
  br i1 %.not.i.i.i.i.44047587989100120128, label %.split.i.18, label %"_ZN53_$LT$T$u20$as$u20$core..slice..cmp..SliceContains$GT$14slice_contains28_$u7b$$u7b$closure$u7d$$u7d$17h61d1a45338a4c430E.exit.backedge.i.18"

.split.i.18:                                      ; preds = %"_ZN53_$LT$T$u20$as$u20$core..slice..cmp..SliceContains$GT$14slice_contains28_$u7b$$u7b$closure$u7d$$u7d$17h61d1a45338a4c430E.exit.backedge.i.17"
  %i.ex = load i32, ptr %i.k, align 1
  %i.ey = xor i32 1735550317, %i.ex
  %i.ez = getelementptr i8, ptr %i.k, i64 4
  %i.fa = load i8, ptr %i.ez, align 1
  %i.fb = zext i8 %i.fa to i32
  %i.fc = xor i32 101, %i.fb
  %i.fd = or i32 %i.ey, %i.fc
  %i.fe = icmp ne i32 %i.fd, 0
  %i.ff = zext i1 %i.fe to i32
  %i.fg = icmp eq i32 %i.ff, 0
  br i1 %i.fg, label %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$3any17hb264b1386aa17f75E.exit.thread", label %"_ZN53_$LT$T$u20$as$u20$core..slice..cmp..SliceContains$GT$14slice_contains28_$u7b$$u7b$closure$u7d$$u7d$17h61d1a45338a4c430E.exit.backedge.i.18"

"_ZN53_$LT$T$u20$as$u20$core..slice..cmp..SliceContains$GT$14slice_contains28_$u7b$$u7b$closure$u7d$$u7d$17h61d1a45338a4c430E.exit.backedge.i.18": ; preds = %.split.i.18, %"_ZN53_$LT$T$u20$as$u20$core..slice..cmp..SliceContains$GT$14slice_contains28_$u7b$$u7b$closure$u7d$$u7d$17h61d1a45338a4c430E.exit.backedge.i.17"
  %.not.i.i.i.i.19 = icmp eq i64 %i.l, 7
  br i1 %.not.i.i.i.i.19, label %.split.i.19, label %"_ZN53_$LT$T$u20$as$u20$core..slice..cmp..SliceContains$GT$14slice_contains28_$u7b$$u7b$closure$u7d$$u7d$17h61d1a45338a4c430E.exit.backedge.i.19"

.split.i.19:                                      ; preds = %"_ZN53_$LT$T$u20$as$u20$core..slice..cmp..SliceContains$GT$14slice_contains28_$u7b$$u7b$closure$u7d$$u7d$17h61d1a45338a4c430E.exit.backedge.i", %"_ZN53_$LT$T$u20$as$u20$core..slice..cmp..SliceContains$GT$14slice_contains28_$u7b$$u7b$closure$u7d$$u7d$17h61d1a45338a4c430E.exit.backedge.i.18"
  %.not.i.i.i.i.44047587989100120128138141146149151156 = phi i1 [ false, %"_ZN53_$LT$T$u20$as$u20$core..slice..cmp..SliceContains$GT$14slice_contains28_$u7b$$u7b$closure$u7d$$u7d$17h61d1a45338a4c430E.exit.backedge.i" ], [ %.not.i.i.i.i.44047587989100120128, %"_ZN53_$LT$T$u20$as$u20$core..slice..cmp..SliceContains$GT$14slice_contains28_$u7b$$u7b$closure$u7d$$u7d$17h61d1a45338a4c430E.exit.backedge.i.18" ]
  %i.fh = load i32, ptr %i.k, align 1
  %i.fi = xor i32 1634100580, %i.fh
  %i.fj = getelementptr i8, ptr %i.k, i64 3
  %i.fk = load i32, ptr %i.fj, align 1
  %i.fl = xor i32 1953264993, %i.fk
  %i.fm = or i32 %i.fi, %i.fl
  %i.fn = icmp ne i32 %i.fm, 0
  %i.fo = zext i1 %i.fn to i32
  %i.fp = icmp eq i32 %i.fo, 0
  br i1 %i.fp, label %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$3any17hb264b1386aa17f75E.exit.thread", label %"_ZN53_$LT$T$u20$as$u20$core..slice..cmp..SliceContains$GT$14slice_contains28_$u7b$$u7b$closure$u7d$$u7d$17h61d1a45338a4c430E.exit.backedge.i.22"

"_ZN53_$LT$T$u20$as$u20$core..slice..cmp..SliceContains$GT$14slice_contains28_$u7b$$u7b$closure$u7d$$u7d$17h61d1a45338a4c430E.exit.backedge.i.19": ; preds = %"_ZN53_$LT$T$u20$as$u20$core..slice..cmp..SliceContains$GT$14slice_contains28_$u7b$$u7b$closure$u7d$$u7d$17h61d1a45338a4c430E.exit.backedge.i.18"
  br i1 %.not.i.i.i.i, label %.split.i.20, label %"_ZN53_$LT$T$u20$as$u20$core..slice..cmp..SliceContains$GT$14slice_contains28_$u7b$$u7b$closure$u7d$$u7d$17h61d1a45338a4c430E.exit.backedge.i.20"

.split.i.20:                                      ; preds = %"_ZN53_$LT$T$u20$as$u20$core..slice..cmp..SliceContains$GT$14slice_contains28_$u7b$$u7b$closure$u7d$$u7d$17h61d1a45338a4c430E.exit.backedge.i.19"
  %i.fq = load i16, ptr %i.k, align 1
  %i.fr = xor i16 28516, %i.fq
  %i.fs = getelementptr i8, ptr %i.k, i64 2
  %i.ft = load i8, ptr %i.fs, align 1
  %i.fu = zext i8 %i.ft to i16
  %i.fv = xor i16 99, %i.fu
  %i.fw = or i16 %i.fr, %i.fv
  %i.fx = icmp ne i16 %i.fw, 0
  %i.fy = zext i1 %i.fx to i32
  %i.fz = icmp eq i32 %i.fy, 0
  br i1 %i.fz, label %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$3any17hb264b1386aa17f75E.exit.thread", label %"_ZN53_$LT$T$u20$as$u20$core..slice..cmp..SliceContains$GT$14slice_contains28_$u7b$$u7b$closure$u7d$$u7d$17h61d1a45338a4c430E.exit.backedge.i.22"

"_ZN53_$LT$T$u20$as$u20$core..slice..cmp..SliceContains$GT$14slice_contains28_$u7b$$u7b$closure$u7d$$u7d$17h61d1a45338a4c430E.exit.backedge.i.20": ; preds = %"_ZN53_$LT$T$u20$as$u20$core..slice..cmp..SliceContains$GT$14slice_contains28_$u7b$$u7b$closure$u7d$$u7d$17h61d1a45338a4c430E.exit.backedge.i", %"_ZN53_$LT$T$u20$as$u20$core..slice..cmp..SliceContains$GT$14slice_contains28_$u7b$$u7b$closure$u7d$$u7d$17h61d1a45338a4c430E.exit.backedge.i.19"
  %.not.i.i.i.i.44047587989100120128138141146149151155159 = phi i1 [ %.not.i.i.i.i.44047587989100120128, %"_ZN53_$LT$T$u20$as$u20$core..slice..cmp..SliceContains$GT$14slice_contains28_$u7b$$u7b$closure$u7d$$u7d$17h61d1a45338a4c430E.exit.backedge.i.19" ], [ false, %"_ZN53_$LT$T$u20$as$u20$core..slice..cmp..SliceContains$GT$14slice_contains28_$u7b$$u7b$closure$u7d$$u7d$17h61d1a45338a4c430E.exit.backedge.i" ] ; 2 uses
  %.not.i.i.i.i.21 = icmp eq i64 %i.l, 8
  br i1 %.not.i.i.i.i.21, label %.split.i.21, label %"_ZN53_$LT$T$u20$as$u20$core..slice..cmp..SliceContains$GT$14slice_contains28_$u7b$$u7b$closure$u7d$$u7d$17h61d1a45338a4c430E.exit.backedge.i.22"

.split.i.21:                                      ; preds = %"_ZN53_$LT$T$u20$as$u20$core..slice..cmp..SliceContains$GT$14slice_contains28_$u7b$$u7b$closure$u7d$$u7d$17h61d1a45338a4c430E.exit.backedge.i.20"
  %i.ga = load i64, ptr %i.k, align 1
  %i.gb = icmp ne i64 7809644653626814575, %i.ga
  %i.gc = zext i1 %i.gb to i32
  %i.gd = icmp eq i32 %i.gc, 0
  br i1 %i.gd, label %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$3any17hb264b1386aa17f75E.exit.thread", label %.split.i.22

.split.i.22:                                      ; preds = %.split.i.21
  %i.ge = load i64, ptr %i.k, align 1
  %i.gf = icmp ne i64 8751735916104086128, %i.ge
  %i.gg = zext i1 %i.gf to i32
  %i.gh = icmp eq i32 %i.gg, 0
  br i1 %i.gh, label %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$3any17hb264b1386aa17f75E.exit.thread", label %"_ZN53_$LT$T$u20$as$u20$core..slice..cmp..SliceContains$GT$14slice_contains28_$u7b$$u7b$closure$u7d$$u7d$17h61d1a45338a4c430E.exit.backedge.i.22"

"_ZN53_$LT$T$u20$as$u20$core..slice..cmp..SliceContains$GT$14slice_contains28_$u7b$$u7b$closure$u7d$$u7d$17h61d1a45338a4c430E.exit.backedge.i.22": ; preds = %"_ZN53_$LT$T$u20$as$u20$core..slice..cmp..SliceContains$GT$14slice_contains28_$u7b$$u7b$closure$u7d$$u7d$17h61d1a45338a4c430E.exit.backedge.i.20", %.split.i.19, %.split.i.20, %.split.i.22
  %.not.i.i.i.i.44047587989100120128138141146149151154 = phi i1 [ %.not.i.i.i.i.44047587989100120128138141146149151155159, %"_ZN53_$LT$T$u20$as$u20$core..slice..cmp..SliceContains$GT$14slice_contains28_$u7b$$u7b$closure$u7d$$u7d$17h61d1a45338a4c430E.exit.backedge.i.20" ], [ %.not.i.i.i.i.44047587989100120128138141146149151156, %.split.i.19 ], [ %.not.i.i.i.i.44047587989100120128, %.split.i.20 ], [ %.not.i.i.i.i.44047587989100120128138141146149151155159, %.split.i.22 ]
  br i1 %.not.i.i.i.i.44047587989100120128138141146149151154, label %.split.i.23, label %"_ZN53_$LT$T$u20$as$u20$core..slice..cmp..SliceContains$GT$14slice_contains28_$u7b$$u7b$closure$u7d$$u7d$17h61d1a45338a4c430E.exit.backedge.i.23"

.split.i.23:                                      ; preds = %"_ZN53_$LT$T$u20$as$u20$core..slice..cmp..SliceContains$GT$14slice_contains28_$u7b$$u7b$closure$u7d$$u7d$17h61d1a45338a4c430E.exit.backedge.i.22"
  %i.gi = load i32, ptr %i.k, align 1
  %i.gj = xor i32 1668444006, %i.gi
  %i.gk = getelementptr i8, ptr %i.k, i64 4
  %i.gl = load i8, ptr %i.gk, align 1
  %i.gm = zext i8 %i.gl to i32
  %i.gn = xor i32 101, %i.gm
  %i.go = or i32 %i.gj, %i.gn
  %i.gp = icmp ne i32 %i.go, 0
  %i.gq = zext i1 %i.gp to i32
  %i.gr = icmp eq i32 %i.gq, 0
  br i1 %i.gr, label %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$3any17hb264b1386aa17f75E.exit.thread", label %"_ZN53_$LT$T$u20$as$u20$core..slice..cmp..SliceContains$GT$14slice_contains28_$u7b$$u7b$closure$u7d$$u7d$17h61d1a45338a4c430E.exit.backedge.i.23"

"_ZN53_$LT$T$u20$as$u20$core..slice..cmp..SliceContains$GT$14slice_contains28_$u7b$$u7b$closure$u7d$$u7d$17h61d1a45338a4c430E.exit.backedge.i.23": ; preds = %.split.i.23, %"_ZN53_$LT$T$u20$as$u20$core..slice..cmp..SliceContains$GT$14slice_contains28_$u7b$$u7b$closure$u7d$$u7d$17h61d1a45338a4c430E.exit.backedge.i.22"
  %.not.i.i.i.i.24 = icmp eq i64 %i.l, 12
  br i1 %.not.i.i.i.i.24, label %.split.i.24, label %"_ZN53_$LT$T$u20$as$u20$core..slice..cmp..SliceContains$GT$14slice_contains28_$u7b$$u7b$closure$u7d$$u7d$17h61d1a45338a4c430E.exit.backedge.i.24"

.split.i.24:                                      ; preds = %"_ZN53_$LT$T$u20$as$u20$core..slice..cmp..SliceContains$GT$14slice_contains28_$u7b$$u7b$closure$u7d$$u7d$17h61d1a45338a4c430E.exit.backedge.i.23"
  %i.gs = load i64, ptr %i.k, align 1
  %i.gt = xor i64 8030050512390090606, %i.gs
  %i.gu = getelementptr i8, ptr %i.k, i64 8
  %i.gv = load i32, ptr %i.gu, align 1
  %i.gw = zext i32 %i.gv to i64
  %i.gx = xor i64 1684370546, %i.gw
  %i.gy = or i64 %i.gt, %i.gx
  %i.gz = icmp ne i64 %i.gy, 0
  %i.ha = zext i1 %i.gz to i32
  %i.hb = icmp eq i32 %i.ha, 0
  br i1 %i.hb, label %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$3any17hb264b1386aa17f75E.exit.thread", label %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.thread

"_ZN53_$LT$T$u20$as$u20$core..slice..cmp..SliceContains$GT$14slice_contains28_$u7b$$u7b$closure$u7d$$u7d$17h61d1a45338a4c430E.exit.backedge.i.24": ; preds = %"_ZN53_$LT$T$u20$as$u20$core..slice..cmp..SliceContains$GT$14slice_contains28_$u7b$$u7b$closure$u7d$$u7d$17h61d1a45338a4c430E.exit.backedge.i.23"
  %i.hc = icmp slt i64 %i.l, 0
  br i1 %i.hc, label %bb.c, label %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i, !prof !5128

_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i: ; preds = %"_ZN53_$LT$T$u20$as$u20$core..slice..cmp..SliceContains$GT$14slice_contains28_$u7b$$u7b$closure$u7d$$u7d$17h61d1a45338a4c430E.exit.backedge.i.24"
  %i.hd = icmp eq i64 %i.l, 0
  br i1 %i.hd, label %"_ZN87_$LT$T$u20$as$u20$alloc..slice..$LT$impl$u20$$u5b$T$u5d$$GT$..to_vec_in..ConvertVec$GT$6to_vec17h3ca349fee4c6d436E.exit", label %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.thread

_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.thread: ; preds = %.split.i.24, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i
  call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #54, !noalias !5129
  %i.he = call noundef ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef %i.l, i64 noundef range(i64 1, 9) 1) #54, !noalias !5129 ; 2 uses
  %i.hf = icmp eq ptr %i.he, null
  br i1 %i.hf, label %bb.c, label %"_ZN87_$LT$T$u20$as$u20$alloc..slice..$LT$impl$u20$$u5b$T$u5d$$GT$..to_vec_in..ConvertVec$GT$6to_vec17h3ca349fee4c6d436E.exit"

bb.c:                                             ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.thread, %"_ZN53_$LT$T$u20$as$u20$core..slice..cmp..SliceContains$GT$14slice_contains28_$u7b$$u7b$closure$u7d$$u7d$17h61d1a45338a4c430E.exit.backedge.i.24"
  %.sroa.4.0.ph.i.i = phi i64 [ 1, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.thread ], [ 0, %"_ZN53_$LT$T$u20$as$u20$core..slice..cmp..SliceContains$GT$14slice_contains28_$u7b$$u7b$closure$u7d$$u7d$17h61d1a45338a4c430E.exit.backedge.i.24" ]
  call void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef %.sroa.4.0.ph.i.i, i64 %i.l, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @10556) #52, !noalias !5130
  unreachable

"_ZN87_$LT$T$u20$as$u20$alloc..slice..$LT$impl$u20$$u5b$T$u5d$$GT$..to_vec_in..ConvertVec$GT$6to_vec17h3ca349fee4c6d436E.exit": ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.thread
  %.sroa.10.0.i.i = phi ptr [ inttoptr (i64 1 to ptr), %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i ], [ %i.he, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.thread ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %.sroa.10.0.i.i, ptr nonnull readonly align 1 %i.k, i64 %i.l, i1 false), !noalias !5131
  store i64 %i.l, ptr %0, align 8
  %.sroa.415.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.10.0.i.i, ptr %.sroa.415.0..sroa_idx, align 8
  %.sroa.516.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.l, ptr %.sroa.516.0..sroa_idx, align 8
  br label %bb.d

"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$3any17hb264b1386aa17f75E.exit.thread": ; preds = %.split.i, %.split.i.1, %.split.i.2, %.split.i.3, %.split.i.4, %.split.i.5, %.split.i.6, %.split.i.7, %.split.i.8, %.split.i.9, %.split.i.10, %.split.i.11, %.split.i.12, %.split.i.13, %.split.i.14, %.split.i.15, %.split.i.16, %.split.i.17, %.split.i.18, %.split.i.19, %.split.i.20, %.split.i.21, %.split.i.22, %.split.i.23, %.split.i.24, %_ZN14regex_automata4util6search5Input8set_span17h95a5c1964877593fE.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  call void @_ZN18nickel_lang_parser3ast6pretty6escape17hffa08eea3cb89284E(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.f, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.k, i64 noundef %i.l)
  store ptr %i.f, ptr %i.g, align 8
  %.sroa.44.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store ptr @"_ZN60_$LT$alloc..string..String$u20$as$u20$core..fmt..Display$GT$3fmt17h86a528f6a97fe10dE", ptr %.sroa.44.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !5132
  store ptr @174, ptr %i.a, align 8, !noalias !5133
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 2, ptr %.sroa.4.0..sroa_idx, align 8, !noalias !5133
  %.sroa.5.0..sroa_idx2 = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.g, ptr %.sroa.5.0..sroa_idx2, align 8, !noalias !5133
  %.sroa.6.0..sroa_idx3 = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i64 1, ptr %.sroa.6.0..sroa_idx3, align 8, !noalias !5133
  %.sroa.7.0..sroa_idx4 = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store ptr null, ptr %.sroa.7.0..sroa_idx4, align 8, !noalias !5133
  invoke void @_ZN5alloc3fmt6format12format_inner17hce37e7516f243f46E(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.h, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.a)
          to label %bb.g unwind label %bb.e

bb.d:                                             ; preds = %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h4ffce877b03f24ccE.exit11", %"_ZN87_$LT$T$u20$as$u20$alloc..slice..$LT$impl$u20$$u5b$T$u5d$$GT$..to_vec_in..ConvertVec$GT$6to_vec17h3ca349fee4c6d436E.exit"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  ret void

bb.e:                                             ; preds = %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$3any17hb264b1386aa17f75E.exit.thread"
  %i.hg = landingpad { ptr, i32 }
          cleanup
  call void @llvm.experimental.noalias.scope.decl(metadata !5134)
  %.val.i = load i64, ptr %i.f, align 8, !alias.scope !5134 ; 2 uses
  %i.hh = icmp eq i64 %.val.i, 0
  br i1 %i.hh, label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h4ffce877b03f24ccE.exit", label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.hi = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %.val1.i = load ptr, ptr %i.hi, align 8, !alias.scope !5134, !nonnull !19, !noundef !19
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i, i64 noundef %.val.i, i64 noundef range(i64 1, -9223372036854775807) 1) #54, !noalias !5134
  br label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h4ffce877b03f24ccE.exit"

bb.g:                                             ; preds = %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$3any17hb264b1386aa17f75E.exit.thread"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !5132
  call void @llvm.experimental.noalias.scope.decl(metadata !5135)
  %.val.i9 = load i64, ptr %i.f, align 8, !alias.scope !5135 ; 2 uses
  %i.hj = icmp eq i64 %.val.i9, 0
  br i1 %i.hj, label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h4ffce877b03f24ccE.exit11", label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.hk = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %.val1.i10 = load ptr, ptr %i.hk, align 8, !alias.scope !5135, !nonnull !19, !noundef !19
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i10, i64 noundef %.val.i9, i64 noundef range(i64 1, -9223372036854775807) 1) #54, !noalias !5135
  br label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h4ffce877b03f24ccE.exit11"

"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h4ffce877b03f24ccE.exit11": ; preds = %bb.g, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.h, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  br label %bb.d

"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h4ffce877b03f24ccE.exit": ; preds = %bb.f, %bb.e
  resume { ptr, i32 } %i.hg
}

; Function Attrs: nonlazybind uwtable
define void @"_ZN18nickel_lang_parser3ast6pretty133_$LT$impl$u20$pretty..Pretty$LT$nickel_lang_parser..ast..pretty..Allocator$GT$$u20$for$u20$$RF$nickel_lang_parser..ast..typ..Type$GT$6pretty17he57e6ed83d22ac09E"(ptr dead_on_unwind noalias noundef writable sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(104) %1, ptr noundef nonnull align 8 %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = alloca [32 x i8], align 8                ; 7 uses
  %i.c = alloca [32 x i8], align 8                ; 5 uses
  %i.d = alloca [32 x i8], align 8                ; 5 uses
  %i.e = alloca [32 x i8], align 8                ; 7 uses
  %i.f = alloca [32 x i8], align 8                ; 4 uses
  %i.g = alloca [32 x i8], align 8                ; 6 uses
  %i.h = alloca [32 x i8], align 8                ; 7 uses
  %i.i = alloca [32 x i8], align 8                ; 5 uses
  %i.j = alloca [32 x i8], align 8                ; 5 uses
  %i.k = alloca [32 x i8], align 8                ; 7 uses
  %i.l = alloca [32 x i8], align 8                ; 7 uses
  %i.m = alloca [32 x i8], align 8                ; 4 uses
  %i.n = alloca [32 x i8], align 8                ; 5 uses
  %i.o = alloca [32 x i8], align 8                ; 4 uses
  %i.p = alloca [32 x i8], align 8                ; 7 uses
  %i.q = alloca [32 x i8], align 8                ; 4 uses
  %i.r = alloca [32 x i8], align 8                ; 6 uses
  %i.s = alloca [32 x i8], align 8                ; 7 uses
  %i.t = alloca [32 x i8], align 8                ; 4 uses
  %i.u = alloca [32 x i8], align 8                ; 5 uses
  %i.v = alloca [32 x i8], align 8                ; 4 uses
  %i.w = alloca [32 x i8], align 8                ; 7 uses
  %i.x = alloca [32 x i8], align 8                ; 4 uses
  %i.y = alloca [32 x i8], align 8                ; 6 uses
  %i.z = alloca [32 x i8], align 8                ; 6 uses
  %i.aa = alloca [32 x i8], align 8               ; 13 uses
  %i.ab = alloca [32 x i8], align 8               ; 4 uses
  %i.ac = alloca [32 x i8], align 8               ; 4 uses
  %i.ad = alloca [32 x i8], align 8               ; 4 uses
  %i.ae = alloca [24 x i8], align 8               ; 4 uses
  %i.af = alloca [32 x i8], align 8               ; 4 uses
  %i.ag = alloca [32 x i8], align 8               ; 5 uses
  %i.ah = alloca [24 x i8], align 8               ; 7 uses
  %i.ai = alloca [32 x i8], align 8               ; 7 uses
  %i.aj = alloca [32 x i8], align 8               ; 4 uses
  %i.ak = alloca [32 x i8], align 8               ; 6 uses
  %i.al = alloca [32 x i8], align 8               ; 7 uses
  %i.am = alloca [32 x i8], align 8               ; 4 uses
  %i.an = alloca [32 x i8], align 8               ; 6 uses
  %i.ao = alloca [32 x i8], align 8               ; 7 uses
  %i.ap = alloca [32 x i8], align 8               ; 7 uses
  %i.aq = alloca [32 x i8], align 8               ; 4 uses
  %i.ar = alloca [32 x i8], align 8               ; 5 uses
  %i.as = alloca [32 x i8], align 8               ; 4 uses
  %i.at = alloca [32 x i8], align 8               ; 7 uses
  %i.au = alloca [32 x i8], align 8               ; 7 uses
  %i.av = alloca [32 x i8], align 8               ; 4 uses
  %i.aw = alloca [32 x i8], align 8               ; 6 uses
  %i.ax = alloca [32 x i8], align 8               ; 7 uses
  %i.ay = alloca [32 x i8], align 8               ; 4 uses
  %i.az = alloca [32 x i8], align 8               ; 6 uses
  %i.ba = alloca [32 x i8], align 8               ; 7 uses
  %i.bb = alloca [32 x i8], align 8               ; 4 uses
  %i.bc = alloca [32 x i8], align 8               ; 6 uses
  %i.bd = alloca [48 x i8], align 8               ; 8 uses
  %.sroa.5.i = alloca [7 x i8], align 1           ; 4 uses
  %i.be = alloca [32 x i8], align 8               ; 8 uses
  %i.bf = alloca [24 x i8], align 8               ; 4 uses
  %i.bg = alloca [16 x i8], align 8               ; 5 uses
  %i.bh = alloca [32 x i8], align 8               ; 13 uses
  %i.bi = alloca [8 x i8], align 8                ; 4 uses
  %i.bj = alloca [32 x i8], align 8               ; 7 uses
  %i.bk = alloca [32 x i8], align 8               ; 4 uses
  %i.bl = alloca [32 x i8], align 8               ; 6 uses
  %i.bm = alloca [32 x i8], align 8               ; 7 uses
  %i.bn = alloca [32 x i8], align 8               ; 4 uses
  %i.bo = alloca [32 x i8], align 8               ; 5 uses
  %i.bp = alloca [32 x i8], align 8               ; 4 uses
  %i.bq = alloca [32 x i8], align 8               ; 7 uses
  %i.br = alloca [32 x i8], align 8               ; 7 uses
  %i.bs = alloca [32 x i8], align 8               ; 7 uses
  %i.bt = alloca [32 x i8], align 8               ; 7 uses
  %i.bu = alloca [32 x i8], align 8               ; 7 uses
  %i.bv = alloca [32 x i8], align 8               ; 7 uses
  %i.bw = alloca [32 x i8], align 8               ; 7 uses
  %i.bx = alloca [32 x i8], align 8               ; 5 uses
  %i.by = alloca [32 x i8], align 8               ; 8 uses
  %i.bz = alloca [32 x i8], align 8               ; 8 uses
  %i.ca = alloca [32 x i8], align 8               ; 7 uses
  %i.cb = alloca [32 x i8], align 8               ; 7 uses
  %i.cc = alloca [32 x i8], align 8               ; 4 uses
  %i.cd = alloca [32 x i8], align 8               ; 9 uses
  %i.ce = alloca [32 x i8], align 8               ; 7 uses
  %i.cf = alloca [32 x i8], align 8               ; 7 uses
  %i.cg = alloca [32 x i8], align 8               ; 14 uses
  %.sroa.5236 = alloca [7 x i8], align 1          ; 4 uses
  %.sroa.10 = alloca [7 x i8], align 1            ; 10 uses
  %i.ch = alloca [32 x i8], align 8               ; 9 uses
  %i.ci = alloca [32 x i8], align 8               ; 4 uses
  %i.cj = alloca [32 x i8], align 8               ; 4 uses
  %i.ck = alloca [32 x i8], align 8               ; 16 uses
  %i.cl = alloca [32 x i8], align 8               ; 4 uses
  %i.cm = alloca [32 x i8], align 8               ; 4 uses
  %i.cn = alloca [32 x i8], align 8               ; 4 uses
  %i.co = alloca [32 x i8], align 8               ; 4 uses
  %i.cp = alloca [32 x i8], align 8               ; 9 uses
  %i.cq = alloca [32 x i8], align 8               ; 6 uses
  %i.cr = alloca [32 x i8], align 8               ; 10 uses
  %i.cs = alloca [32 x i8], align 8               ; 4 uses
  %i.ct = alloca [32 x i8], align 8               ; 9 uses
  %i.cu = alloca [32 x i8], align 8               ; 4 uses
  %i.cv = alloca [32 x i8], align 8               ; 9 uses
  %i.cw = alloca [32 x i8], align 8               ; 6 uses
  %i.cx = alloca [32 x i8], align 8               ; 10 uses
  %i.cy = alloca [32 x i8], align 8               ; 4 uses
  %i.cz = alloca [32 x i8], align 8               ; 22 uses
  %i.da = alloca [32 x i8], align 8               ; 4 uses
  %i.db = alloca [32 x i8], align 8               ; 4 uses
  %i.dc = alloca [32 x i8], align 8               ; 4 uses
  %i.dd = alloca [32 x i8], align 8               ; 4 uses
  %i.de = alloca [32 x i8], align 8               ; 8 uses
  %i.df = alloca [32 x i8], align 8               ; 4 uses
  %i.dg = alloca [32 x i8], align 8               ; 4 uses
  %i.dh = alloca [32 x i8], align 8               ; 4 uses
  %i.di = alloca [32 x i8], align 8               ; 4 uses
  %i.dj = alloca [32 x i8], align 8               ; 4 uses
  %i.dk = alloca [32 x i8], align 8               ; 13 uses
  %i.dl = alloca [24 x i8], align 8               ; 9 uses
  %i.dm = alloca [32 x i8], align 8               ; 10 uses
  %i.dn = alloca [32 x i8], align 8               ; 4 uses
  %i.do = alloca [32 x i8], align 8               ; 4 uses
  %i.dp = alloca [32 x i8], align 8               ; 4 uses
  %i.dq = alloca [32 x i8], align 8               ; 9 uses
  %i.dr = alloca [32 x i8], align 8               ; 4 uses
  %i.ds = alloca [32 x i8], align 8               ; 4 uses
  %i.dt = alloca [32 x i8], align 8               ; 8 uses
  %i.du = alloca [32 x i8], align 8               ; 4 uses
  %i.dv = alloca [32 x i8], align 8               ; 13 uses
  %i.dw = alloca [32 x i8], align 8               ; 4 uses
  %i.dx = alloca [32 x i8], align 8               ; 4 uses
  %i.dy = alloca [32 x i8], align 8               ; 4 uses
  %i.dz = alloca [32 x i8], align 8               ; 15 uses
  %i.ea = load i64, ptr %1, align 8, !range !23, !noundef !19 ; 3 uses
  %i.eb = icmp ne i64 %i.ea, 12
  tail call void @llvm.assume(i1 %i.eb)
  %i.ec = add nsw i64 %i.ea, -3
  %i.ed = icmp samesign ugt i64 %i.ea, 2
  %i.ee = select i1 %i.ed, i64 %i.ec, i64 9
  switch i64 %i.ee, label %bb.b [
    i64 0, label %bb.c
    i64 1, label %bb.d
    i64 2, label %bb.e
    i64 3, label %bb.f
    i64 4, label %bb.g
    i64 5, label %bb.h
    i64 6, label %bb.i
    i64 7, label %bb.j
    i64 8, label %bb.y
    i64 9, label %bb.ag
    i64 10, label %bb.ah
    i64 11, label %bb.au
    i64 12, label %bb.bb
    i64 13, label %bb.be
    i64 14, label %bb.bh
  ]

bb.b:                                             ; preds = %bb.a
  unreachable

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bv), !noalias !5459
  %i.ef = getelementptr inbounds nuw i8, ptr %i.bv, i64 24
  store ptr %2, ptr %i.ef, align 8, !noalias !5459
  store i8 8, ptr %i.bv, align 8, !noalias !5459
  %.sroa.10.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bv, i64 8
  store ptr @161, ptr %.sroa.10.0..sroa_idx.i, align 8, !noalias !5459
  %.sroa.12.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bv, i64 16
  store i64 3, ptr %.sroa.12.0..sroa_idx.i, align 8, !noalias !5459
  call fastcc void @"_ZN6pretty23DocBuilder$LT$D$C$A$GT$13with_utf8_len17h81c24c807de64b28E"(ptr noalias noundef nonnull align 8 captures(address) dereferenceable(32) %0, ptr noalias noundef align 8 captures(address) dereferenceable(32) %i.bv)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bv), !noalias !5459
  br label %_ZN18nickel_lang_parser3ast6pretty9Allocator11record_type17hebebb1d5a7c05ac1E.exit

bb.d:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bu), !noalias !5460
  %i.eg = getelementptr inbounds nuw i8, ptr %i.bu, i64 24
  store ptr %2, ptr %i.eg, align 8, !noalias !5460
  store i8 8, ptr %i.bu, align 8, !noalias !5460
  %.sroa.10.0..sroa_idx.i31 = getelementptr inbounds nuw i8, ptr %i.bu, i64 8
  store ptr @162, ptr %.sroa.10.0..sroa_idx.i31, align 8, !noalias !5460
  %.sroa.12.0..sroa_idx.i32 = getelementptr inbounds nuw i8, ptr %i.bu, i64 16
  store i64 6, ptr %.sroa.12.0..sroa_idx.i32, align 8, !noalias !5460
  call fastcc void @"_ZN6pretty23DocBuilder$LT$D$C$A$GT$13with_utf8_len17h81c24c807de64b28E"(ptr noalias noundef nonnull align 8 captures(address) dereferenceable(32) %0, ptr noalias noundef align 8 captures(address) dereferenceable(32) %i.bu)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bu), !noalias !5460
  br label %_ZN18nickel_lang_parser3ast6pretty9Allocator11record_type17hebebb1d5a7c05ac1E.exit

bb.e:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bt), !noalias !5461
  %i.eh = getelementptr inbounds nuw i8, ptr %i.bt, i64 24
  store ptr %2, ptr %i.eh, align 8, !noalias !5461
  store i8 8, ptr %i.bt, align 8, !noalias !5461
  %.sroa.10.0..sroa_idx.i33 = getelementptr inbounds nuw i8, ptr %i.bt, i64 8
  store ptr @163, ptr %.sroa.10.0..sroa_idx.i33, align 8, !noalias !5461
  %.sroa.12.0..sroa_idx.i34 = getelementptr inbounds nuw i8, ptr %i.bt, i64 16
  store i64 4, ptr %.sroa.12.0..sroa_idx.i34, align 8, !noalias !5461
  call fastcc void @"_ZN6pretty23DocBuilder$LT$D$C$A$GT$13with_utf8_len17h81c24c807de64b28E"(ptr noalias noundef nonnull align 8 captures(address) dereferenceable(32) %0, ptr noalias noundef align 8 captures(address) dereferenceable(32) %i.bt)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bt), !noalias !5461
  br label %_ZN18nickel_lang_parser3ast6pretty9Allocator11record_type17hebebb1d5a7c05ac1E.exit

end_hunk_4
begin_hunk_5_@_ZN18nickel_lang_parser7grammar11__action85917h63369a1d9c1f3bfaE:bb.a
  %i.am = load <2 x i64>, ptr %i.al, align 8, !alias.scope !11899, !noalias !11900
  br label %"_ZN78_$LT$nickel_lang_parser..error..LexicalError$u20$as$u20$core..clone..Clone$GT$5clone17h4dd56fbce857aea4E.exit.i.i.i.i.i"

"_ZN78_$LT$nickel_lang_parser..error..LexicalError$u20$as$u20$core..clone..Clone$GT$5clone17h4dd56fbce857aea4E.exit.i.i.i.i.i": ; preds = %bb.m, %bb.l, %bb.k, %bb.j, %bb.i, %bb.i
  %i.an = phi <2 x i64> [ %i.ai, %bb.j ], [ %i.aj, %bb.k ], [ %i.ak, %bb.l ], [ undef, %bb.i ], [ %i.am, %bb.m ], [ undef, %bb.i ]
  %.sroa.9.0.in.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  %i.ao = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store i64 %i.ah, ptr %i.ao, align 8, !alias.scope !11893, !noalias !11902
  %.sroa.9.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.ap = load <2 x i64>, ptr %.sroa.9.0.in.i.i.i.i.i, align 8, !alias.scope !11901, !noalias !11896
  store <2 x i64> %i.ap, ptr %.sroa.9.0..sroa_idx.i.i.i.i.i, align 8, !alias.scope !11893, !noalias !11902
  %.sroa.15.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  store <2 x i64> %i.an, ptr %.sroa.15.0..sroa_idx.i.i.i.i.i, align 8, !alias.scope !11893, !noalias !11902
  store i32 25, ptr %i.c, align 8, !alias.scope !11893, !noalias !11902
  br label %"_ZN81_$LT$nickel_lang_parser..error..ParseOrLexError$u20$as$u20$core..clone..Clone$GT$5clone17hc56abe4acfb26d49E.exit.i.i.i.i"

"_ZN81_$LT$nickel_lang_parser..error..ParseOrLexError$u20$as$u20$core..clone..Clone$GT$5clone17hc56abe4acfb26d49E.exit.i.i.i.i": ; preds = %"_ZN78_$LT$nickel_lang_parser..error..LexicalError$u20$as$u20$core..clone..Clone$GT$5clone17h4dd56fbce857aea4E.exit.i.i.i.i.i", %bb.h
  %i.aq = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.aq, ptr noundef nonnull align 8 dereferenceable(72) %i.c, i64 72, i1 false), !noalias !11890
  store i64 173, ptr %i.f, align 8, !alias.scope !11885, !noalias !11890
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !11892
  br label %"_ZN80_$LT$lalrpop_util..ParseError$LT$L$C$T$C$E$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h0d6b90712d99a9a9E.exit.i.i.i"

bb.n:                                             ; preds = %.noexc5.i.i
  %i.ar = landingpad { ptr, i32 }
          cleanup
  call fastcc void @"_ZN4core3ptr77drop_in_place$LT$$LP$usize$C$nickel_lang_parser..lexer..Token$C$usize$RP$$GT$17h69e4611f139b75dfE"(ptr noalias noundef align 8 dereferenceable(80) %i.e) #53, !noalias !11888
  br label %.body.thread.i.i

bb.o:                                             ; preds = %.noexc5.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %i.f, ptr noundef nonnull align 8 dereferenceable(80) %i.e, i64 80, i1 false), !noalias !11890
  %i.as = getelementptr inbounds nuw i8, ptr %i.f, i64 80
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.as, ptr noundef nonnull align 8 dereferenceable(24) %i.d, i64 24, i1 false), !noalias !11890
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !11892
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !11892
  br label %"_ZN80_$LT$lalrpop_util..ParseError$LT$L$C$T$C$E$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h0d6b90712d99a9a9E.exit.i.i.i"

"_ZN80_$LT$lalrpop_util..ParseError$LT$L$C$T$C$E$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h0d6b90712d99a9a9E.exit.i.i.i": ; preds = %bb.o, %"_ZN81_$LT$nickel_lang_parser..error..ParseOrLexError$u20$as$u20$core..clone..Clone$GT$5clone17hc56abe4acfb26d49E.exit.i.i.i.i", %.noexc6.i.i, %.noexc.i.i, %bb.c
  %i.at = getelementptr inbounds nuw i8, ptr %i.j, i64 112
  %.val.i.i.i = load ptr, ptr %i.at, align 8, !alias.scope !11883, !noalias !11903, !nonnull !19, !noundef !19 ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.j, i64 120
  %.val1.i.i.i = load i64, ptr %i.au, align 8, !alias.scope !11883, !noalias !11903, !noundef !19 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !11904
  %i.av = mul i64 %.val1.i.i.i, 80                ; 3 uses
  %or.cond.i.i.i.i.i.i.i.i = icmp ugt i64 %.val1.i.i.i, 115292150460684697
  br i1 %or.cond.i.i.i.i.i.i.i.i, label %bb.q, label %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i.i, !prof !39

_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i.i: ; preds = %"_ZN80_$LT$lalrpop_util..ParseError$LT$L$C$T$C$E$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h0d6b90712d99a9a9E.exit.i.i.i"
  %i.aw = icmp eq i64 %i.av, 0
  br i1 %i.aw, label %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17h4a2f313bb5199067E.exit.thread.i.i.i.i.i", label %bb.p

"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17h4a2f313bb5199067E.exit.thread.i.i.i.i.i": ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i.i
  %i.ax = icmp eq i64 %.val1.i.i.i, 0
  call void @llvm.assume(i1 %i.ax)
  store i64 0, ptr %i.b, align 8, !noalias !11904
  %i.ay = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %i.ay, align 8, !noalias !11904
  %i.az = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  br label %.loopexit.i.i

bb.p:                                             ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i.i
  call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #54, !noalias !11905
  %i.ba = call noundef align 8 ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef %i.av, i64 noundef range(i64 1, 9) 8) #54, !noalias !11905 ; 3 uses
  %i.bb = icmp eq ptr %i.ba, null
  br i1 %i.bb, label %bb.q, label %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17h4a2f313bb5199067E.exit.i.i.i.i.i"

bb.q:                                             ; preds = %bb.p, %"_ZN80_$LT$lalrpop_util..ParseError$LT$L$C$T$C$E$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h0d6b90712d99a9a9E.exit.i.i.i"
  %.sroa.4.0.ph.i.i.i.i.i.i = phi i64 [ 8, %bb.p ], [ 0, %"_ZN80_$LT$lalrpop_util..ParseError$LT$L$C$T$C$E$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h0d6b90712d99a9a9E.exit.i.i.i" ]
  invoke void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef %.sroa.4.0.ph.i.i.i.i.i.i, i64 %i.av, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @10557) #52
          to label %.noexc.i.i.i unwind label %bb.u, !noalias !11903

.noexc.i.i.i:                                     ; preds = %bb.q
  unreachable

"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17h4a2f313bb5199067E.exit.i.i.i.i.i": ; preds = %bb.p
  store i64 %.val1.i.i.i, ptr %i.b, align 8, !noalias !11904
  %i.bc = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %i.ba, ptr %i.bc, align 8, !noalias !11904
  %i.bd = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 3 uses
  %i.be = getelementptr inbounds nuw [80 x i8], ptr %.val.i.i.i, i64 %.val1.i.i.i
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.s, %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17h4a2f313bb5199067E.exit.i.i.i.i.i"
  %.sroa.012.023.i.i.i.i.i = phi ptr [ %i.bi, %bb.s ], [ %.val.i.i.i, %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17h4a2f313bb5199067E.exit.i.i.i.i.i" ] ; 3 uses
  %.sroa.7.022.i.i.i.i.i = phi i64 [ %i.bh, %bb.s ], [ 0, %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17h4a2f313bb5199067E.exit.i.i.i.i.i" ] ; 3 uses
  %.sroa.10.021.i.i.i.i.i = phi i64 [ %i.bf, %bb.s ], [ %.val1.i.i.i, %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17h4a2f313bb5199067E.exit.i.i.i.i.i" ]
  %i.bf = add nsw i64 %.sroa.10.021.i.i.i.i.i, -1 ; 2 uses
  %i.bg = icmp eq ptr %.sroa.012.023.i.i.i.i.i, %i.be
  br i1 %i.bg, label %.loopexit.i.i, label %bb.r

bb.r:                                             ; preds = %.lr.ph.i.i.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !11904
  invoke fastcc void @_ZN4core5clone5Clone5clone17h2e24bedf7f5648cfE(ptr noalias noundef align 8 captures(address) dereferenceable(80) %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(80) %.sroa.012.023.i.i.i.i.i)
          to label %bb.s unwind label %bb.t, !noalias !11906

bb.s:                                             ; preds = %bb.r
  %i.bh = add nuw nsw i64 %.sroa.7.022.i.i.i.i.i, 1
  %i.bi = getelementptr inbounds nuw i8, ptr %.sroa.012.023.i.i.i.i.i, i64 80
  %i.bj = getelementptr inbounds nuw [80 x i8], ptr %i.ba, i64 %.sroa.7.022.i.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.bj, ptr noundef nonnull align 8 dereferenceable(80) %i.a, i64 80, i1 false), !noalias !11906
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !11904
  %i.bk = icmp eq i64 %i.bf, 0
  br i1 %i.bk, label %.loopexit.i.i, label %.lr.ph.i.i.i.i.i

bb.t:                                             ; preds = %bb.r
  %lpad.loopexit.i.i.i.i.i = landingpad { ptr, i32 }
          cleanup
  store i64 %.sroa.7.022.i.i.i.i.i, ptr %i.bd, align 8, !alias.scope !11907, !noalias !11904
  call fastcc void @"_ZN4core3ptr100drop_in_place$LT$alloc..vec..Vec$LT$$LP$usize$C$nickel_lang_parser..lexer..Token$C$usize$RP$$GT$$GT$17hfa7f9a4a700936cfE"(ptr noalias noundef align 8 dereferenceable(24) %i.b) #53, !noalias !11906
  br label %.body.i.i.i

bb.u:                                             ; preds = %bb.q
  %i.bl = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i.i

.body.i.i.i:                                      ; preds = %bb.u, %bb.t
  %eh.lpad-body.i.i.i = phi { ptr, i32 } [ %i.bl, %bb.u ], [ %lpad.loopexit.i.i.i.i.i, %bb.t ]
  call fastcc void @"_ZN4core3ptr138drop_in_place$LT$lalrpop_util..ParseError$LT$usize$C$nickel_lang_parser..lexer..Token$C$nickel_lang_parser..error..ParseOrLexError$GT$$GT$17h5d8c03395a51f867E"(ptr noalias noundef align 8 dereferenceable(104) %i.f) #53, !noalias !11903
  br label %.body.thread.i.i

.body.thread8.i.i:                                ; preds = %bb.h, %bb.f, %bb.e, %bb.d
  %lpad.thr_comm.i.i = landingpad { ptr, i32 }
          cleanup
  br label %.body.thread.i.i

.body.i.i:                                        ; preds = %bb.x
  %lpad.thr_comm.split-lp.i.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.y

.loopexit.i.i:                                    ; preds = %bb.s, %.lr.ph.i.i.i.i.i, %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17h4a2f313bb5199067E.exit.thread.i.i.i.i.i"
  %i.bm = phi ptr [ %i.az, %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17h4a2f313bb5199067E.exit.thread.i.i.i.i.i" ], [ %i.bd, %.lr.ph.i.i.i.i.i ], [ %i.bd, %bb.s ]
  store i64 %.val1.i.i.i, ptr %i.bm, align 8, !noalias !11904
  %i.bn = getelementptr inbounds nuw i8, ptr %i.i, i64 104 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bn, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false), !noalias !11908
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !11904
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %i.i, ptr noundef nonnull align 8 dereferenceable(104) %i.f, i64 104, i1 false), !noalias !11908
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !11884
  call void @llvm.experimental.noalias.scope.decl(metadata !11909)
  %i.bo = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.bp = load i64, ptr %i.bo, align 8, !alias.scope !11910, !noalias !11911, !noundef !19 ; 3 uses
  %i.bq = load i64, ptr %3, align 8, !range !38, !alias.scope !11910, !noalias !11911, !noundef !19
  %i.br = icmp eq i64 %i.bp, %i.bq
  br i1 %i.br, label %bb.v, label %bb.x

bb.v:                                             ; preds = %.loopexit.i.i
  invoke void @"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$8grow_one17h28b456d643820cbbE"(ptr noalias noundef nonnull align 8 dereferenceable(24) %3, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @316)
          to label %bb.x unwind label %bb.w, !noalias !11911

bb.w:                                             ; preds = %bb.v
  %i.bs = landingpad { ptr, i32 }
          cleanup
  call fastcc void @"_ZN4core3ptr138drop_in_place$LT$lalrpop_util..ParseError$LT$usize$C$nickel_lang_parser..lexer..Token$C$nickel_lang_parser..error..ParseOrLexError$GT$$GT$17h5d8c03395a51f867E"(ptr noalias noundef nonnull readonly align 8 dereferenceable(128) %i.i), !noalias !11912
  call fastcc void @"_ZN4core3ptr100drop_in_place$LT$alloc..vec..Vec$LT$$LP$usize$C$nickel_lang_parser..lexer..Token$C$usize$RP$$GT$$GT$17hfa7f9a4a700936cfE"(ptr noalias noundef readonly align 8 dereferenceable(24) %i.bn), !noalias !11912
  br label %.body.thread.i.i

bb.x:                                             ; preds = %bb.v, %.loopexit.i.i
  %i.bt = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.bu = load ptr, ptr %i.bt, align 8, !alias.scope !11910, !noalias !11911, !nonnull !19, !noundef !19
  %i.bv = getelementptr inbounds nuw [128 x i8], ptr %i.bu, i64 %i.bp
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %i.bv, ptr noundef nonnull readonly align 8 dereferenceable(128) %i.i, i64 128, i1 false), !noalias !11912
  %i.bw = add i64 %i.bp, 1
  store i64 %i.bw, ptr %i.bo, align 8, !alias.scope !11910, !noalias !11911
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !11881
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !11881
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !11881
  call fastcc void @_ZN18nickel_lang_parser5error10ParseError12from_lalrpop17h0b9a14bb32e9f64aE(ptr noalias noundef align 8 captures(address) dereferenceable(72) %i.g, ptr noalias noundef align 8 captures(address) dereferenceable(104) %i.j, i32 noundef %2), !noalias !11881
  invoke void @_ZN18nickel_lang_parser3ast5alloc8AstAlloc11parse_error17h88b81e1d177340ffE(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.h, ptr noundef nonnull align 8 %1, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(72) %i.g)
          to label %_ZN18nickel_lang_parser7grammar11__action72217hff6a0f3dd685e9deE.exit unwind label %.body.i.i, !noalias !11881

bb.y:                                             ; preds = %.body.thread.i.i, %.body.i.i
  %eh.lpad-body5.i.i = phi { ptr, i32 } [ %eh.lpad-body6.i.i, %.body.thread.i.i ], [ %lpad.thr_comm.split-lp.i.i, %.body.i.i ]
  %i.bx = getelementptr inbounds nuw i8, ptr %i.j, i64 104
  call fastcc void @"_ZN4core3ptr100drop_in_place$LT$alloc..vec..Vec$LT$$LP$usize$C$nickel_lang_parser..lexer..Token$C$usize$RP$$GT$$GT$17hfa7f9a4a700936cfE"(ptr noalias noundef align 8 dereferenceable(24) %i.bx) #53, !noalias !11881
  resume { ptr, i32 } %eh.lpad-body5.i.i

.body.thread.i.i:                                 ; preds = %bb.w, %.body.thread8.i.i, %.body.i.i.i, %bb.n
  %eh.lpad-body6.i.i = phi { ptr, i32 } [ %lpad.thr_comm.i.i, %.body.thread8.i.i ], [ %i.bs, %bb.w ], [ %i.ar, %bb.n ], [ %eh.lpad-body.i.i.i, %.body.i.i.i ]
  call fastcc void @"_ZN4core3ptr138drop_in_place$LT$lalrpop_util..ParseError$LT$usize$C$nickel_lang_parser..lexer..Token$C$nickel_lang_parser..error..ParseOrLexError$GT$$GT$17h5d8c03395a51f867E"(ptr noalias noundef align 8 dereferenceable(104) %i.j) #53, !noalias !11881
  br label %bb.y

_ZN18nickel_lang_parser7grammar11__action72217hff6a0f3dd685e9deE.exit: ; preds = %bb.x
  %i.by = trunc <2 x i64> %i.l to <2 x i32>
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !11881
  %i.bz = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.bz, ptr noundef nonnull align 8 dereferenceable(32) %i.h, i64 32, i1 false), !noalias !11913
  store i32 0, ptr %0, align 8, !alias.scope !11914, !noalias !11913
  %.sroa.2.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 %2, ptr %.sroa.2.0..sroa_idx.i.i, align 4, !alias.scope !11914, !noalias !11913
  %.sroa.2.sroa.2.0..sroa.2.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store <2 x i32> %i.by, ptr %.sroa.2.sroa.2.0..sroa.2.0..sroa_idx.sroa_idx.i.i, align 8, !alias.scope !11914, !noalias !11913
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !11881
  %i.ca = getelementptr inbounds nuw i8, ptr %i.j, i64 104
  call fastcc void @"_ZN4core3ptr100drop_in_place$LT$alloc..vec..Vec$LT$$LP$usize$C$nickel_lang_parser..lexer..Token$C$usize$RP$$GT$$GT$17hfa7f9a4a700936cfE"(ptr noalias noundef align 8 dereferenceable(24) %i.ca), !noalias !11881
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !11881
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_ZN18nickel_lang_parser7grammar11__action87317hf97a5ac9a67e5de8E(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(112) initializes((0, 88)) %0, ptr noundef nonnull align 8 captures(none) %1, i32 noundef %2, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(120) %3) unnamed_addr #0 {
bb.a:
  %i.a = alloca [12 x i8], align 4                ; 5 uses
  %i.b = alloca [104 x i8], align 8               ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 104
  tail call void @llvm.experimental.noalias.scope.decl(metadata !11921)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !11922)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !11923
  store i32 %2, ptr %i.a, align 4, !noalias !11923
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %i.e = load <2 x i64>, ptr %i.c, align 8
  %i.f = trunc <2 x i64> %i.e to <2 x i32>
  store <2 x i32> %i.f, ptr %i.d, align 4, !noalias !11923
  call fastcc void @_ZN18nickel_lang_parser7uniterm11FixTypeVars13fix_type_vars17h70414adb747f144aE(ptr noalias noundef align 8 captures(address) dereferenceable(104) %i.b, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(120) %3, ptr noundef nonnull align 8 %1, ptr noalias noundef align 4 captures(address) dereferenceable(12) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !11923
  %i.g = load i64, ptr %i.b, align 8, !range !32, !noundef !19 ; 2 uses
  %i.h = icmp eq i64 %i.g, 18
  br i1 %i.h, label %_ZN18nickel_lang_parser7grammar11__action73617h3efb00fe522983ffE.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.sroa.66.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 80
  %.sroa.3.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %0, i64 88
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.3.0..sroa_idx.i.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.66.0..sroa_idx.i.i, i64 24, i1 false)
  br label %_ZN18nickel_lang_parser7grammar11__action73617h3efb00fe522983ffE.exit

_ZN18nickel_lang_parser7grammar11__action73617h3efb00fe522983ffE.exit: ; preds = %bb.a, %bb.b
  %.sink3.i.i = phi i64 [ %i.g, %bb.b ], [ 173, %bb.a ]
  %.sink.i.i = phi i64 [ 0, %bb.b ], [ 1, %bb.a ]
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %.sroa.4.0..sroa_idx.i.i, ptr noundef nonnull align 8 dereferenceable(72) %i.i, i64 72, i1 false)
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sink3.i.i, ptr %i.j, align 8, !alias.scope !11924, !noalias !11925
  store i64 %.sink.i.i, ptr %0, align 8, !alias.scope !11924, !noalias !11925
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_ZN18nickel_lang_parser7grammar11__action87417haf4ffd5be234e6bbE(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(32) %0, ptr nofree noundef nonnull align 8 captures(none) %1, i32 noundef %2, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(40) %3, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(80) %4) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %.sroa.420.i.i = alloca [60 x i8], align 4      ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.b = load i64, ptr %i.a, align 8, !noundef !19
  tail call void @llvm.experimental.noalias.scope.decl(metadata !11983)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !11984)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !11985)
  %i.c = getelementptr inbounds nuw i8, ptr %4, i64 72
  %i.d = load i64, ptr %i.c, align 8, !alias.scope !11985, !noalias !11986, !noundef !19
  tail call void @llvm.experimental.noalias.scope.decl(metadata !11987)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !11988)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !11989)
  %.sroa.0.0.copyload.i.i = load i64, ptr %3, align 8, !alias.scope !11990, !noalias !11991 ; 4 uses
  %.sroa.2.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %3, i64 8
  %.sroa.2.0.copyload.i.i = load ptr, ptr %.sroa.2.0..sroa_idx.i.i, align 8, !alias.scope !11990, !noalias !11991, !nonnull !19, !noundef !19 ; 4 uses
  %.sroa.3.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %3, i64 16
  %.sroa.3.0.copyload.i.i = load i64, ptr %.sroa.3.0..sroa_idx.i.i, align 8, !alias.scope !11990, !noalias !11991 ; 4 uses
  %i.e = icmp ult i64 %.sroa.3.0.copyload.i.i, 144115188075855872
  tail call void @llvm.assume(i1 %i.e)
  %.sroa.016.0.copyload.i.i = load i32, ptr %4, align 8, !alias.scope !11992, !noalias !11993 ; 3 uses
  %.sroa.417.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %4, i64 4
  %i.f = add i32 %.sroa.016.0.copyload.i.i, -5
  %narrow.i.i = icmp ult i32 %i.f, -2
  %i.g = zext i1 %narrow.i.i to i64
  %.sink21.i.i.i.i.i.i.i = add nuw nsw i64 %.sroa.3.0.copyload.i.i, %i.g ; 3 uses
  %i.h = shl nuw i64 %.sink21.i.i.i.i.i.i.i, 6    ; 4 uses
  %i.i = icmp samesign ugt i64 %.sink21.i.i.i.i.i.i.i, 144115188075855871
  br i1 %i.i, label %bb.c, label %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i.i.i, !prof !39

_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i.i.i: ; preds = %bb.a
  %i.j = icmp eq i64 %.sink21.i.i.i.i.i.i.i, 0    ; 3 uses
  br i1 %i.j, label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h3fb9baf393563bfcE.exit.i.i.i.i.i.i.i.i", label %bb.b

bb.b:                                             ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i.i.i
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #54, !noalias !11994
  %i.k = tail call noundef align 8 ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef %i.h, i64 noundef range(i64 1, 9) 8) #54, !noalias !11994 ; 2 uses
  %i.l = icmp eq ptr %i.k, null
  br i1 %i.l, label %bb.c, label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h3fb9baf393563bfcE.exit.i.i.i.i.i.i.i.i"

bb.c:                                             ; preds = %bb.b, %bb.a
  %.sroa.4.0.ph.i.i.i.i.i.i.i = phi i64 [ 8, %bb.b ], [ 0, %bb.a ]
  invoke void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef %.sroa.4.0.ph.i.i.i.i.i.i.i, i64 %i.h, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @10207) #52
          to label %.noexc.i.i.i.i.i.i unwind label %bb.e, !noalias !11995

.noexc.i.i.i.i.i.i:                               ; preds = %bb.c
  unreachable

"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h3fb9baf393563bfcE.exit.i.i.i.i.i.i.i.i": ; preds = %bb.b, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i.i.i
  %.sroa.24.0.copyload.i.i = phi ptr [ inttoptr (i64 8 to ptr), %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i.i.i ], [ %i.k, %bb.b ] ; 14 uses
  %.not8.i.i.i.i.i.i.i.i.i.i.i = icmp eq i64 %.sroa.3.0.copyload.i.i, 0
  br i1 %.not8.i.i.i.i.i.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.preheader:           ; preds = %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h3fb9baf393563bfcE.exit.i.i.i.i.i.i.i.i"
  %i.m = add nuw nsw i64 %.sroa.3.0.copyload.i.i, 288230376151711743
  %i.n = and i64 %i.m, 288230376151711743         ; 2 uses
  %i.o = add nuw nsw i64 %i.n, 1                  ; 2 uses
  %xtraiter = and i64 %i.o, 7                     ; 3 uses
  %i.p = icmp samesign ult i64 %i.n, 7
  br i1 %i.p, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.epil.preheader, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.preheader.new

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.preheader.new:       ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.preheader
  %unroll_iter = and i64 %i.o, 576460752303423480
  br label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i

._crit_edge.i.i.i.i.i.i.i.i.i.i.i.loopexit.unr-lcssa: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge.i.i.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.epil.preheader

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.epil.preheader:      ; preds = %._crit_edge.i.i.i.i.i.i.i.i.i.i.i.loopexit.unr-lcssa, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.preheader
  %.epil.init = phi i64 [ 0, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.preheader ], [ %i.aw, %._crit_edge.i.i.i.i.i.i.i.i.i.i.i.loopexit.unr-lcssa ]
  %.epil.init7 = phi ptr [ %.sroa.2.0.copyload.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.preheader ], [ %i.at, %._crit_edge.i.i.i.i.i.i.i.i.i.i.i.loopexit.unr-lcssa ]
  %lcmp.mod9 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod9)
  br label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.epil

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.epil:                ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.epil, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.epil.preheader
  %i.q = phi i64 [ %i.u, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.epil ], [ %.epil.init, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.epil.preheader ] ; 2 uses
  %i.r = phi ptr [ %i.s, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.epil ], [ %.epil.init7, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.epil.preheader ] ; 2 uses
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.epil ], [ 0, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.epil.preheader ]
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 64
  %i.t = getelementptr inbounds nuw [64 x i8], ptr %.sroa.24.0.copyload.i.i, i64 %i.q
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.t, ptr noundef nonnull align 8 dereferenceable(64) %i.r, i64 64, i1 false), !noalias !11996
  %i.u = add nuw nsw i64 %i.q, 1                  ; 2 uses
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge.i.i.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.epil, !llvm.loop !11965

._crit_edge.i.i.i.i.i.i.i.i.i.i.i:                ; preds = %._crit_edge.i.i.i.i.i.i.i.i.i.i.i.loopexit.unr-lcssa, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.epil, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h3fb9baf393563bfcE.exit.i.i.i.i.i.i.i.i"
  %.sroa.5.0.i.i.i.i.i.i.i.i.i = phi i64 [ 0, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h3fb9baf393563bfcE.exit.i.i.i.i.i.i.i.i" ], [ %i.aw, %._crit_edge.i.i.i.i.i.i.i.i.i.i.i.loopexit.unr-lcssa ], [ %i.u, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.epil ] ; 3 uses
  %i.v = icmp eq i64 %.sroa.0.0.copyload.i.i, 0
  br i1 %i.v, label %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold17h05033f4c37a500b5E.exit.i.i.i.i.i.i.i.i.i.i", label %bb.d

bb.d:                                             ; preds = %._crit_edge.i.i.i.i.i.i.i.i.i.i.i
  %i.w = shl nuw i64 %.sroa.0.0.copyload.i.i, 6
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.2.0.copyload.i.i, i64 noundef %i.w, i64 noundef range(i64 1, -9223372036854775807) 8) #54, !noalias !11997
  br label %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold17h05033f4c37a500b5E.exit.i.i.i.i.i.i.i.i.i.i"

.lr.ph.i.i.i.i.i.i.i.i.i.i.i:                     ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.preheader.new
  %i.x = phi i64 [ 0, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.preheader.new ], [ %i.aw, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i ] ; 9 uses
  %i.y = phi ptr [ %.sroa.2.0.copyload.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.preheader.new ], [ %i.at, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i ] ; 9 uses
  %niter = phi i64 [ 0, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.preheader.new ], [ %niter.next.7, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i ]
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 64
  %i.aa = getelementptr inbounds nuw [64 x i8], ptr %.sroa.24.0.copyload.i.i, i64 %i.x
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.aa, ptr noundef nonnull align 8 dereferenceable(64) %i.y, i64 64, i1 false), !noalias !11996
  %i.ab = getelementptr inbounds nuw i8, ptr %i.y, i64 128
  %i.ac = getelementptr inbounds nuw [64 x i8], ptr %.sroa.24.0.copyload.i.i, i64 %i.x
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 64
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.ad, ptr noundef nonnull align 8 dereferenceable(64) %i.z, i64 64, i1 false), !noalias !11996
  %i.ae = getelementptr inbounds nuw i8, ptr %i.y, i64 192
  %i.af = getelementptr inbounds nuw [64 x i8], ptr %.sroa.24.0.copyload.i.i, i64 %i.x
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 128
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.ag, ptr noundef nonnull align 8 dereferenceable(64) %i.ab, i64 64, i1 false), !noalias !11996
  %i.ah = getelementptr inbounds nuw i8, ptr %i.y, i64 256
  %i.ai = getelementptr inbounds nuw [64 x i8], ptr %.sroa.24.0.copyload.i.i, i64 %i.x
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 192
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.aj, ptr noundef nonnull align 8 dereferenceable(64) %i.ae, i64 64, i1 false), !noalias !11996
  %i.ak = getelementptr inbounds nuw i8, ptr %i.y, i64 320
  %i.al = getelementptr inbounds nuw [64 x i8], ptr %.sroa.24.0.copyload.i.i, i64 %i.x
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 256
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.am, ptr noundef nonnull align 8 dereferenceable(64) %i.ah, i64 64, i1 false), !noalias !11996
  %i.an = getelementptr inbounds nuw i8, ptr %i.y, i64 384
  %i.ao = getelementptr inbounds nuw [64 x i8], ptr %.sroa.24.0.copyload.i.i, i64 %i.x
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 320
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.ap, ptr noundef nonnull align 8 dereferenceable(64) %i.ak, i64 64, i1 false), !noalias !11996
  %i.aq = getelementptr inbounds nuw i8, ptr %i.y, i64 448
  %i.ar = getelementptr inbounds nuw [64 x i8], ptr %.sroa.24.0.copyload.i.i, i64 %i.x
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 384
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.as, ptr noundef nonnull align 8 dereferenceable(64) %i.an, i64 64, i1 false), !noalias !11996
  %i.at = getelementptr inbounds nuw i8, ptr %i.y, i64 512 ; 2 uses
  %i.au = getelementptr inbounds nuw [64 x i8], ptr %.sroa.24.0.copyload.i.i, i64 %i.x
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 448
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.av, ptr noundef nonnull align 8 dereferenceable(64) %i.aq, i64 64, i1 false), !noalias !11996
  %i.aw = add nuw nsw i64 %i.x, 8                 ; 3 uses
  %niter.next.7 = add i64 %niter, 8               ; 2 uses
  %niter.ncmp.7 = icmp eq i64 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %._crit_edge.i.i.i.i.i.i.i.i.i.i.i.loopexit.unr-lcssa, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i

"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold17h05033f4c37a500b5E.exit.i.i.i.i.i.i.i.i.i.i": ; preds = %bb.d, %._crit_edge.i.i.i.i.i.i.i.i.i.i.i
  %i.ax = icmp samesign ugt i32 %.sroa.016.0.copyload.i.i, 2
  br i1 %i.ax, label %.noexc.i.i, label %.lr.ph.split.us.i.i.i.i.i.i.i.i.i.i.i

.lr.ph.split.us.i.i.i.i.i.i.i.i.i.i.i:            ; preds = %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold17h05033f4c37a500b5E.exit.i.i.i.i.i.i.i.i.i.i"
  %i.ay = getelementptr inbounds nuw [64 x i8], ptr %.sroa.24.0.copyload.i.i, i64 %.sroa.5.0.i.i.i.i.i.i.i.i.i ; 2 uses
  store i32 %.sroa.016.0.copyload.i.i, ptr %i.ay, align 8, !noalias !11998
  %.sroa.4.0..sroa_idx.us.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ay, i64 4
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(60) %.sroa.4.0..sroa_idx.us.i.i.i.i.i.i.i.i.i.i.i, ptr noundef nonnull readonly align 4 dereferenceable(60) %.sroa.417.0..sroa_idx.i.i, i64 60, i1 false), !noalias !11993
  %i.az = add i64 %.sroa.5.0.i.i.i.i.i.i.i.i.i, 1
  br label %.noexc.i.i

common.resume.sink.split.i.i:                     ; preds = %bb.f, %.common.resume.sink.split.i_crit_edge.i
  %.pre-phi.i = phi i64 [ %.pre.i, %.common.resume.sink.split.i_crit_edge.i ], [ %i.h, %bb.f ]
  %.sroa.24.0.copyload.sink.i.i = phi ptr [ %.sroa.2.0.copyload.i.i, %.common.resume.sink.split.i_crit_edge.i ], [ %.sroa.24.0.copyload.i.i, %bb.f ]
  %common.resume.op.ph.i.i = phi { ptr, i32 } [ %i.ba, %.common.resume.sink.split.i_crit_edge.i ], [ %i.bc, %bb.f ]
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.24.0.copyload.sink.i.i, i64 noundef %.pre-phi.i, i64 noundef range(i64 1, -9223372036854775807) 8) #54, !noalias !11999
  br label %common.resume.i.i

common.resume.i.i:                                ; preds = %bb.f, %bb.e, %common.resume.sink.split.i.i
  %common.resume.op.i.i = phi { ptr, i32 } [ %i.ba, %bb.e ], [ %i.bc, %bb.f ], [ %common.resume.op.ph.i.i, %common.resume.sink.split.i.i ]
  resume { ptr, i32 } %common.resume.op.i.i

bb.e:                                             ; preds = %bb.c
  %i.ba = landingpad { ptr, i32 }
end_hunk_5
begin_hunk_6_@_ZN18nickel_lang_parser7grammar27__parse__CliFieldAssignment9__reduce917hdce9a91560e6e6efE:bb.a
  %i.ad = load i64, ptr %i.c, align 8, !range !45, !alias.scope !551745, !noalias !551746, !noundef !19
  %i.ae = tail call i64 @llvm.usub.sat.i64(i64 %i.ad, i64 166)
  switch i64 %i.ae, label %bb.k [
    i64 0, label %bb.m
    i64 1, label %bb.n
  ]

bb.k:                                             ; preds = %_ZN18nickel_lang_parser7grammar27__parse__CliFieldAssignment14__pop_Variant417h352064f61a06698aE.exit
  %i.af = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %.val.i.i.i.i = load i64, ptr %i.af, align 8, !range !50, !alias.scope !551745, !noalias !551746, !noundef !19 ; 3 uses
  %i.ag = icmp ne i64 %.val.i.i.i.i, -9223372036854775807
  tail call void @llvm.assume(i1 %i.ag)
  %or.cond.i.i.i.i.i = icmp slt i64 %.val.i.i.i.i, 1
  br i1 %or.cond.i.i.i.i.i, label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17h0f4d0473142ee59eE.exit", label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ah = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %.val1.i.i.i.i = load ptr, ptr %i.ah, align 8, !alias.scope !551745, !noalias !551746, !nonnull !19, !noundef !19
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i.i, i64 noundef %.val.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #54, !noalias !551747
  br label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17h0f4d0473142ee59eE.exit"

bb.m:                                             ; preds = %_ZN18nickel_lang_parser7grammar27__parse__CliFieldAssignment14__pop_Variant417h352064f61a06698aE.exit
  call fastcc void @"_ZN4core3ptr59drop_in_place$LT$nickel_lang_parser..lexer..NormalToken$GT$17h2febfc0c2f8078f4E"(ptr noalias noundef nonnull readonly align 8 dereferenceable(80) %i.c), !noalias !551746
  br label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17h0f4d0473142ee59eE.exit"

bb.n:                                             ; preds = %_ZN18nickel_lang_parser7grammar27__parse__CliFieldAssignment14__pop_Variant417h352064f61a06698aE.exit
  %i.ai = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %.val2.i.i.i.i = load i64, ptr %i.ai, align 8, !range !50, !alias.scope !551745, !noalias !551746, !noundef !19 ; 3 uses
  %i.aj = icmp ne i64 %.val2.i.i.i.i, -9223372036854775807
  tail call void @llvm.assume(i1 %i.aj)
  %or.cond.i4.i.i.i.i = icmp slt i64 %.val2.i.i.i.i, 1
  br i1 %or.cond.i4.i.i.i.i, label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17h0f4d0473142ee59eE.exit", label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ak = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %.val3.i.i.i.i = load ptr, ptr %i.ak, align 8, !alias.scope !551745, !noalias !551746, !nonnull !19, !noundef !19
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val3.i.i.i.i, i64 noundef %.val2.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #54, !noalias !551748
  br label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17h0f4d0473142ee59eE.exit"

"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17h0f4d0473142ee59eE.exit": ; preds = %bb.o, %bb.n, %bb.m, %bb.l, %bb.k
  %.sroa.4.4..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.4, i64 3
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(20) %.sroa.4.4..sroa_idx, ptr noundef nonnull align 8 dereferenceable(20) %.sroa.1, i64 20, i1 false)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !551749)
  store i8 9, ptr %i.v, align 8, !noalias !551749
  %.sroa.41.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.v, i64 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(23) %.sroa.41.0..sroa_idx, ptr noundef nonnull align 1 dereferenceable(23) %.sroa.4, i64 23, i1 false)
  %.sroa.52.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.v, i64 288
  store i64 %i.ac, ptr %.sroa.52.0..sroa_idx, align 8, !noalias !551749
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.v, i64 296
  store i64 %i.s, ptr %.sroa.6.0..sroa_idx, align 8, !noalias !551749
  store i64 %i.h, ptr %i.d, align 8, !alias.scope !551749, !noalias !551750
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_ZN18nickel_lang_parser7grammar9__action917hc238043cd6b3fdf7E(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(72) %0, ptr nofree noundef nonnull align 8 captures(none) %1, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(80) %2, ptr noalias noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(40) %3, ptr noalias noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(152) %4, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(80) %5, ptr noalias noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(64) %6) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [120 x i8], align 8               ; 4 uses
  %i.b = alloca [48 x i8], align 8                ; 6 uses
  %i.c = alloca [48 x i8], align 8                ; 5 uses
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 8
  %.sroa.0.0.copyload = load i64, ptr %4, align 8 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.c, ptr noundef nonnull align 8 dereferenceable(48) %6, i64 48, i1 false)
  %.not = icmp eq i64 %.sroa.0.0.copyload, 19
  br i1 %.not, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 %.sroa.0.0.copyload, ptr %i.a, align 8
  %.sroa.5.0..sroa_idx2 = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(112) %.sroa.5.0..sroa_idx2, ptr noundef nonnull align 8 dereferenceable(112) %.sroa.5.0..sroa_idx, i64 112, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %.not.i = icmp eq i64 %.sroa.0.0.copyload, 18
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 112
  %i.f = load i64, ptr %i.e, align 8, !alias.scope !551771, !noalias !551772
  %i.g = icmp eq i64 %i.f, 0
  %or.cond.i = select i1 %.not.i, i1 %i.g, i1 false
  br i1 %or.cond.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  invoke void @_ZN18nickel_lang_parser3ast5alloc8AstAlloc9annotated17h7bd421623c87fb00E(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.h, ptr noundef nonnull align 8 %1, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(120) %i.a, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %6)
          to label %.noexc unwind label %bb.k

.noexc:                                           ; preds = %bb.c
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.b, ptr noundef nonnull align 8 dereferenceable(16) %6, i64 16, i1 false)
  br label %"_ZN130_$LT$nickel_lang_parser..ast..Annotation$u20$as$u20$nickel_lang_parser..utils..AttachToAst$LT$nickel_lang_parser..ast..Ast$GT$$GT$13attach_to_ast17hb7b88eae17355a94E.exit"

bb.d:                                             ; preds = %bb.b
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.b, ptr noundef nonnull align 8 dereferenceable(48) %6, i64 48, i1 false)
  br label %"_ZN130_$LT$nickel_lang_parser..ast..Annotation$u20$as$u20$nickel_lang_parser..utils..AttachToAst$LT$nickel_lang_parser..ast..Ast$GT$$GT$13attach_to_ast17hb7b88eae17355a94E.exit"

bb.e:                                             ; preds = %"_ZN130_$LT$nickel_lang_parser..ast..Annotation$u20$as$u20$nickel_lang_parser..utils..AttachToAst$LT$nickel_lang_parser..ast..Ast$GT$$GT$13attach_to_ast17hb7b88eae17355a94E.exit", %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.i, ptr noundef nonnull align 8 dereferenceable(48) %i.c, i64 48, i1 false)
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 4
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %i.j, ptr noundef nonnull align 8 dereferenceable(20) %i.d, i64 20, i1 false)
  store i32 1, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !551773)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !551774)
  %i.k = load i64, ptr %5, align 8, !range !45, !alias.scope !551775, !noundef !19
  %i.l = tail call i64 @llvm.usub.sat.i64(i64 %i.k, i64 166)
  switch i64 %i.l, label %bb.f [
    i64 0, label %bb.h
    i64 1, label %bb.i
  ]

bb.f:                                             ; preds = %bb.e
  %i.m = getelementptr inbounds nuw i8, ptr %5, i64 8
  %.val.i.i = load i64, ptr %i.m, align 8, !range !50, !alias.scope !551775, !noundef !19 ; 3 uses
  %i.n = icmp ne i64 %.val.i.i, -9223372036854775807
  tail call void @llvm.assume(i1 %i.n)
  %or.cond.i.i.i = icmp slt i64 %.val.i.i, 1
  br i1 %or.cond.i.i.i, label %"_ZN4core3ptr77drop_in_place$LT$$LP$usize$C$nickel_lang_parser..lexer..Token$C$usize$RP$$GT$17h69e4611f139b75dfE.exit", label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.o = getelementptr inbounds nuw i8, ptr %5, i64 16
  %.val1.i.i = load ptr, ptr %i.o, align 8, !alias.scope !551775, !nonnull !19, !noundef !19
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i, i64 noundef %.val.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #54, !noalias !551776
  br label %"_ZN4core3ptr77drop_in_place$LT$$LP$usize$C$nickel_lang_parser..lexer..Token$C$usize$RP$$GT$17h69e4611f139b75dfE.exit"

bb.h:                                             ; preds = %bb.e
  tail call fastcc void @"_ZN4core3ptr59drop_in_place$LT$nickel_lang_parser..lexer..NormalToken$GT$17h2febfc0c2f8078f4E"(ptr noalias noundef nonnull readonly align 8 dereferenceable(80) %5)
  br label %"_ZN4core3ptr77drop_in_place$LT$$LP$usize$C$nickel_lang_parser..lexer..Token$C$usize$RP$$GT$17h69e4611f139b75dfE.exit"

bb.i:                                             ; preds = %bb.e
  %i.p = getelementptr inbounds nuw i8, ptr %5, i64 8
  %.val2.i.i = load i64, ptr %i.p, align 8, !range !50, !alias.scope !551775, !noundef !19 ; 3 uses
  %i.q = icmp ne i64 %.val2.i.i, -9223372036854775807
  tail call void @llvm.assume(i1 %i.q)
  %or.cond.i4.i.i = icmp slt i64 %.val2.i.i, 1
  br i1 %or.cond.i4.i.i, label %"_ZN4core3ptr77drop_in_place$LT$$LP$usize$C$nickel_lang_parser..lexer..Token$C$usize$RP$$GT$17h69e4611f139b75dfE.exit", label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.r = getelementptr inbounds nuw i8, ptr %5, i64 16
  %.val3.i.i = load ptr, ptr %i.r, align 8, !alias.scope !551775, !nonnull !19, !noundef !19
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val3.i.i, i64 noundef %.val2.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #54, !noalias !551777
  br label %"_ZN4core3ptr77drop_in_place$LT$$LP$usize$C$nickel_lang_parser..lexer..Token$C$usize$RP$$GT$17h69e4611f139b75dfE.exit"

bb.k:                                             ; preds = %bb.c
  %i.s = landingpad { ptr, i32 }
          cleanup
  tail call fastcc void @"_ZN4core3ptr77drop_in_place$LT$$LP$usize$C$nickel_lang_parser..lexer..Token$C$usize$RP$$GT$17h69e4611f139b75dfE"(ptr noalias noundef align 8 dereferenceable(80) %5) #53
  tail call fastcc void @"_ZN4core3ptr77drop_in_place$LT$$LP$usize$C$nickel_lang_parser..lexer..Token$C$usize$RP$$GT$17h69e4611f139b75dfE"(ptr noalias noundef align 8 dereferenceable(80) %2) #53
  resume { ptr, i32 } %i.s

"_ZN130_$LT$nickel_lang_parser..ast..Annotation$u20$as$u20$nickel_lang_parser..utils..AttachToAst$LT$nickel_lang_parser..ast..Ast$GT$$GT$13attach_to_ast17hb7b88eae17355a94E.exit": ; preds = %bb.d, %.noexc
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.c, ptr noundef nonnull align 8 dereferenceable(48) %i.b, i64 48, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.e

"_ZN4core3ptr77drop_in_place$LT$$LP$usize$C$nickel_lang_parser..lexer..Token$C$usize$RP$$GT$17h69e4611f139b75dfE.exit": ; preds = %bb.j, %bb.i, %bb.h, %bb.g, %bb.f
  tail call void @llvm.experimental.noalias.scope.decl(metadata !551778)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !551779)
  %i.t = load i64, ptr %2, align 8, !range !45, !alias.scope !551780, !noundef !19
  %i.u = tail call i64 @llvm.usub.sat.i64(i64 %i.t, i64 166)
  switch i64 %i.u, label %bb.l [
    i64 0, label %bb.n
    i64 1, label %bb.o
  ]

bb.l:                                             ; preds = %"_ZN4core3ptr77drop_in_place$LT$$LP$usize$C$nickel_lang_parser..lexer..Token$C$usize$RP$$GT$17h69e4611f139b75dfE.exit"
  %i.v = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.val.i.i10 = load i64, ptr %i.v, align 8, !range !50, !alias.scope !551780, !noundef !19 ; 3 uses
  %i.w = icmp ne i64 %.val.i.i10, -9223372036854775807
  tail call void @llvm.assume(i1 %i.w)
  %or.cond.i.i.i11 = icmp slt i64 %.val.i.i10, 1
  br i1 %or.cond.i.i.i11, label %"_ZN4core3ptr77drop_in_place$LT$$LP$usize$C$nickel_lang_parser..lexer..Token$C$usize$RP$$GT$17h69e4611f139b75dfE.exit13", label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.x = getelementptr inbounds nuw i8, ptr %2, i64 16
  %.val1.i.i12 = load ptr, ptr %i.x, align 8, !alias.scope !551780, !nonnull !19, !noundef !19
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i12, i64 noundef %.val.i.i10, i64 noundef range(i64 1, -9223372036854775807) 1) #54, !noalias !551781
  br label %"_ZN4core3ptr77drop_in_place$LT$$LP$usize$C$nickel_lang_parser..lexer..Token$C$usize$RP$$GT$17h69e4611f139b75dfE.exit13"

bb.n:                                             ; preds = %"_ZN4core3ptr77drop_in_place$LT$$LP$usize$C$nickel_lang_parser..lexer..Token$C$usize$RP$$GT$17h69e4611f139b75dfE.exit"
  tail call fastcc void @"_ZN4core3ptr59drop_in_place$LT$nickel_lang_parser..lexer..NormalToken$GT$17h2febfc0c2f8078f4E"(ptr noalias noundef nonnull readonly align 8 dereferenceable(80) %2)
  br label %"_ZN4core3ptr77drop_in_place$LT$$LP$usize$C$nickel_lang_parser..lexer..Token$C$usize$RP$$GT$17h69e4611f139b75dfE.exit13"

bb.o:                                             ; preds = %"_ZN4core3ptr77drop_in_place$LT$$LP$usize$C$nickel_lang_parser..lexer..Token$C$usize$RP$$GT$17h69e4611f139b75dfE.exit"
  %i.y = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.val2.i.i7 = load i64, ptr %i.y, align 8, !range !50, !alias.scope !551780, !noundef !19 ; 3 uses
  %i.z = icmp ne i64 %.val2.i.i7, -9223372036854775807
  tail call void @llvm.assume(i1 %i.z)
  %or.cond.i4.i.i8 = icmp slt i64 %.val2.i.i7, 1
  br i1 %or.cond.i4.i.i8, label %"_ZN4core3ptr77drop_in_place$LT$$LP$usize$C$nickel_lang_parser..lexer..Token$C$usize$RP$$GT$17h69e4611f139b75dfE.exit13", label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.aa = getelementptr inbounds nuw i8, ptr %2, i64 16
  %.val3.i.i9 = load ptr, ptr %i.aa, align 8, !alias.scope !551780, !nonnull !19, !noundef !19
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val3.i.i9, i64 noundef %.val2.i.i7, i64 noundef range(i64 1, -9223372036854775807) 1) #54, !noalias !551782
  br label %"_ZN4core3ptr77drop_in_place$LT$$LP$usize$C$nickel_lang_parser..lexer..Token$C$usize$RP$$GT$17h69e4611f139b75dfE.exit13"

"_ZN4core3ptr77drop_in_place$LT$$LP$usize$C$nickel_lang_parser..lexer..Token$C$usize$RP$$GT$17h69e4611f139b75dfE.exit13": ; preds = %bb.l, %bb.m, %bb.n, %bb.o, %bb.p
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_ZN18nickel_lang_parser7uniterm11FixTypeVars13fix_type_vars17h70414adb747f144aE(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(104) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(104) %1, ptr noundef nonnull align 8 captures(none) %2, ptr noalias nofree noundef nonnull readonly align 4 captures(address) dead_on_return dereferenceable(12) %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %.sroa.6.sroa.8 = alloca [56 x i8], align 8     ; 3 uses
  %.sroa.4 = alloca [24 x i8], align 8            ; 2 uses
  %i.a = alloca [104 x i8], align 8               ; 9 uses
  %.sroa.613.sroa.7 = alloca [56 x i8], align 8   ; 6 uses
  %.sroa.7 = alloca [24 x i8], align 8            ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.613.sroa.7)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.7)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.b = invoke fastcc ptr @"_ZN100_$LT$nickel_lang_parser..environment..Environment$LT$K$C$V$GT$$u20$as$u20$core..default..Default$GT$7default17he562e06ae53f82e3E"()
          to label %._crit_edge unwind label %bb.m

._crit_edge:                                      ; preds = %bb.a
  invoke void @"_ZN95_$LT$nickel_lang_parser..ast..typ..Type$u20$as$u20$nickel_lang_parser..uniterm..FixTypeVars$GT$17fix_type_vars_env17h137341d0f0f948edE"(ptr noalias noundef nonnull sret([104 x i8]) align 8 captures(address) dereferenceable(104) %i.a, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(104) %1, ptr noundef nonnull align 8 %2, ptr noundef nonnull %i.b, ptr noundef null, ptr noalias noundef nonnull align 4 captures(address) dereferenceable(12) %3)
          to label %bb.b unwind label %bb.m

bb.b:                                             ; preds = %._crit_edge
  %i.c = load i64, ptr %i.a, align 8, !range !59, !noundef !19 ; 9 uses
  %i.d = icmp eq i64 %i.c, 19
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.sroa.043.0.copyload = load ptr, ptr %i.e, align 8 ; 8 uses
  %.sroa.544.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %.sroa.544.0.copyload = load i64, ptr %.sroa.544.0..sroa_idx, align 8 ; 8 uses
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.6.sroa.8, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.6.0..sroa_idx, i64 56, i1 false)
  br i1 %i.d, label %bb.c, label %bb.g

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %.sroa.347.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.347.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.6.sroa.8, i64 56, i1 false)
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.043.0.copyload, ptr %i.f, align 8
  %.sroa.246.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.544.0.copyload, ptr %.sroa.246.0..sroa_idx, align 8
  store i64 18, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.613.sroa.7)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !551795)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !551796)
  %i.g = load i64, ptr %1, align 8, !range !23, !alias.scope !551797, !noundef !19 ; 3 uses
  %i.h = icmp ne i64 %i.g, 12
  tail call void @llvm.assume(i1 %i.h)
  %i.i = icmp samesign ult i64 %i.g, 3
  br i1 %i.i, label %bb.d, label %"_ZN4core3ptr55drop_in_place$LT$nickel_lang_parser..ast..typ..Type$GT$17h7bf44958b6c33376E.exit"

bb.d:                                             ; preds = %bb.c
  tail call void @llvm.experimental.noalias.scope.decl(metadata !551798)
  switch i64 %i.g, label %bb.e [
    i64 0, label %"_ZN4core3ptr55drop_in_place$LT$nickel_lang_parser..ast..typ..Type$GT$17h7bf44958b6c33376E.exit"
    i64 1, label %bb.f
  ]

bb.e:                                             ; preds = %bb.d
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.val3.i.i.i = load i64, ptr %i.j, align 8, !alias.scope !551799, !noundef !19 ; 4 uses
  %i.k = icmp eq i64 %.val3.i.i.i, 0
  br i1 %i.k, label %"_ZN4core3ptr55drop_in_place$LT$nickel_lang_parser..ast..typ..Type$GT$17h7bf44958b6c33376E.exit", label %_ZN9hashbrown3raw11TableLayout20calculate_layout_for17hb76643e6316511fcE.exit.i.i.i.i.i.i.i.i.i

_ZN9hashbrown3raw11TableLayout20calculate_layout_for17hb76643e6316511fcE.exit.i.i.i.i.i.i.i.i.i: ; preds = %bb.e
  %i.l = shl i64 %.val3.i.i.i, 2
  %i.m = icmp slt i64 %.val3.i.i.i, 4611686018427387900
  tail call void @llvm.assume(i1 %i.m)
  %i.n = and i64 %i.l, -16                        ; 2 uses
  %i.o = add i64 %i.n, 16                         ; 2 uses
  %i.p = add nsw i64 %.val3.i.i.i, 17
  %i.q = add i64 %i.p, %i.o                       ; 4 uses
  %i.r = icmp uge i64 %i.q, %i.o
  %i.s = icmp ult i64 %i.q, 9223372036854775793
  tail call void @llvm.assume(i1 %i.r)
  tail call void @llvm.assume(i1 %i.s)
  %i.t = icmp eq i64 %i.q, 0
  br i1 %i.t, label %"_ZN4core3ptr55drop_in_place$LT$nickel_lang_parser..ast..typ..Type$GT$17h7bf44958b6c33376E.exit", label %"_ZN4core3ptr102drop_in_place$LT$std..collections..hash..set..HashSet$LT$nickel_lang_parser..identifier..Ident$GT$$GT$17h9c0586ab8ce8c100E.exit.sink.split.i.i.i"

"_ZN4core3ptr102drop_in_place$LT$std..collections..hash..set..HashSet$LT$nickel_lang_parser..identifier..Ident$GT$$GT$17h9c0586ab8ce8c100E.exit.sink.split.i.i.i": ; preds = %_ZN9hashbrown3raw11TableLayout20calculate_layout_for17hb76643e6316511fcE.exit.i.i.i.i.i.i4.i.i.i, %_ZN9hashbrown3raw11TableLayout20calculate_layout_for17hb76643e6316511fcE.exit.i.i.i.i.i.i.i.i.i
  %.sink.i.i.i = phi i64 [ %i.aa, %_ZN9hashbrown3raw11TableLayout20calculate_layout_for17hb76643e6316511fcE.exit.i.i.i.i.i.i4.i.i.i ], [ %i.n, %_ZN9hashbrown3raw11TableLayout20calculate_layout_for17hb76643e6316511fcE.exit.i.i.i.i.i.i.i.i.i ]
  %.sink7.i.i.i = phi i64 [ %i.ad, %_ZN9hashbrown3raw11TableLayout20calculate_layout_for17hb76643e6316511fcE.exit.i.i.i.i.i.i4.i.i.i ], [ %i.q, %_ZN9hashbrown3raw11TableLayout20calculate_layout_for17hb76643e6316511fcE.exit.i.i.i.i.i.i.i.i.i ]
  %.val.sink.in.i.i.i = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val.sink.i.i.i = load ptr, ptr %.val.sink.in.i.i.i, align 8, !alias.scope !551799, !nonnull !19, !noundef !19
  %i.u = sub nuw nsw i64 -16, %.sink.i.i.i
  %i.v = getelementptr inbounds i8, ptr %.val.sink.i.i.i, i64 %i.u
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.v, i64 noundef %.sink7.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 16) #54, !noalias !551799
  br label %"_ZN4core3ptr55drop_in_place$LT$nickel_lang_parser..ast..typ..Type$GT$17h7bf44958b6c33376E.exit"

bb.f:                                             ; preds = %bb.d
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.val1.i.i.i = load i64, ptr %i.w, align 8, !alias.scope !551799, !noundef !19 ; 4 uses
  %i.x = icmp eq i64 %.val1.i.i.i, 0
  br i1 %i.x, label %"_ZN4core3ptr55drop_in_place$LT$nickel_lang_parser..ast..typ..Type$GT$17h7bf44958b6c33376E.exit", label %_ZN9hashbrown3raw11TableLayout20calculate_layout_for17hb76643e6316511fcE.exit.i.i.i.i.i.i4.i.i.i

_ZN9hashbrown3raw11TableLayout20calculate_layout_for17hb76643e6316511fcE.exit.i.i.i.i.i.i4.i.i.i: ; preds = %bb.f
  %i.y = shl i64 %.val1.i.i.i, 2
  %i.z = icmp slt i64 %.val1.i.i.i, 4611686018427387900
  tail call void @llvm.assume(i1 %i.z)
  %i.aa = and i64 %i.y, -16                       ; 2 uses
  %i.ab = add i64 %i.aa, 16                       ; 2 uses
  %i.ac = add nsw i64 %.val1.i.i.i, 17
  %i.ad = add i64 %i.ac, %i.ab                    ; 4 uses
  %i.ae = icmp uge i64 %i.ad, %i.ab
  %i.af = icmp ult i64 %i.ad, 9223372036854775793
  tail call void @llvm.assume(i1 %i.ae)
  tail call void @llvm.assume(i1 %i.af)
  %i.ag = icmp eq i64 %i.ad, 0
  br i1 %i.ag, label %"_ZN4core3ptr55drop_in_place$LT$nickel_lang_parser..ast..typ..Type$GT$17h7bf44958b6c33376E.exit", label %"_ZN4core3ptr102drop_in_place$LT$std..collections..hash..set..HashSet$LT$nickel_lang_parser..identifier..Ident$GT$$GT$17h9c0586ab8ce8c100E.exit.sink.split.i.i.i"

bb.g:                                             ; preds = %bb.b
  %.sroa.67.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 80
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.4, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.67.0..sroa_idx, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %.sroa.0.0.copyload = load i64, ptr %1, align 8 ; 4 uses
  %.sroa.529.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.529.0.copyload = load ptr, ptr %.sroa.529.0..sroa_idx, align 8 ; 3 uses
  %.sroa.730.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.730.0.copyload = load i64, ptr %.sroa.730.0..sroa_idx, align 8 ; 9 uses
  %.not = icmp eq i64 %i.c, 18
  br i1 %.not, label %bb.l, label %bb.h

bb.h:                                             ; preds = %bb.g
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.613.sroa.7, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.6.sroa.8, i64 56, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.7, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.4, i64 24, i1 false)
  %i.ah = icmp ne i64 %.sroa.0.0.copyload, 12
  tail call void @llvm.assume(i1 %i.ah)
  %i.ai = icmp samesign ult i64 %.sroa.0.0.copyload, 3
  br i1 %i.ai, label %bb.i, label %"_ZN4core3ptr55drop_in_place$LT$nickel_lang_parser..ast..typ..Type$GT$17h7bf44958b6c33376E.exit28"

bb.i:                                             ; preds = %bb.h
  switch i64 %.sroa.0.0.copyload, label %bb.j [
    i64 0, label %"_ZN4core3ptr55drop_in_place$LT$nickel_lang_parser..ast..typ..Type$GT$17h7bf44958b6c33376E.exit28"
    i64 1, label %bb.k
  ]

bb.j:                                             ; preds = %bb.i
  %i.aj = icmp eq i64 %.sroa.730.0.copyload, 0
  br i1 %i.aj, label %"_ZN4core3ptr55drop_in_place$LT$nickel_lang_parser..ast..typ..Type$GT$17h7bf44958b6c33376E.exit28", label %_ZN9hashbrown3raw11TableLayout20calculate_layout_for17hb76643e6316511fcE.exit.i.i.i.i.i.i.i.i.i27

_ZN9hashbrown3raw11TableLayout20calculate_layout_for17hb76643e6316511fcE.exit.i.i.i.i.i.i.i.i.i27: ; preds = %bb.j
  %i.ak = shl i64 %.sroa.730.0.copyload, 2
  %i.al = icmp slt i64 %.sroa.730.0.copyload, 4611686018427387900
  tail call void @llvm.assume(i1 %i.al)
  %i.am = and i64 %i.ak, -16                      ; 2 uses
  %i.an = add i64 %i.am, 16                       ; 2 uses
  %i.ao = add nsw i64 %.sroa.730.0.copyload, 17
  %i.ap = add i64 %i.ao, %i.an                    ; 4 uses
  %i.aq = icmp uge i64 %i.ap, %i.an
  %i.ar = icmp ult i64 %i.ap, 9223372036854775793
  tail call void @llvm.assume(i1 %i.aq)
  tail call void @llvm.assume(i1 %i.ar)
  %i.as = icmp eq i64 %i.ap, 0
  br i1 %i.as, label %"_ZN4core3ptr55drop_in_place$LT$nickel_lang_parser..ast..typ..Type$GT$17h7bf44958b6c33376E.exit28", label %"_ZN4core3ptr102drop_in_place$LT$std..collections..hash..set..HashSet$LT$nickel_lang_parser..identifier..Ident$GT$$GT$17h9c0586ab8ce8c100E.exit.sink.split.i.i.i21"

"_ZN4core3ptr102drop_in_place$LT$std..collections..hash..set..HashSet$LT$nickel_lang_parser..identifier..Ident$GT$$GT$17h9c0586ab8ce8c100E.exit.sink.split.i.i.i21": ; preds = %_ZN9hashbrown3raw11TableLayout20calculate_layout_for17hb76643e6316511fcE.exit.i.i.i.i.i.i4.i.i.i20, %_ZN9hashbrown3raw11TableLayout20calculate_layout_for17hb76643e6316511fcE.exit.i.i.i.i.i.i.i.i.i27
  %.sink.i.i.i22 = phi i64 [ %i.ay, %_ZN9hashbrown3raw11TableLayout20calculate_layout_for17hb76643e6316511fcE.exit.i.i.i.i.i.i4.i.i.i20 ], [ %i.am, %_ZN9hashbrown3raw11TableLayout20calculate_layout_for17hb76643e6316511fcE.exit.i.i.i.i.i.i.i.i.i27 ]
  %.sink7.i.i.i23 = phi i64 [ %i.bb, %_ZN9hashbrown3raw11TableLayout20calculate_layout_for17hb76643e6316511fcE.exit.i.i.i.i.i.i4.i.i.i20 ], [ %i.ap, %_ZN9hashbrown3raw11TableLayout20calculate_layout_for17hb76643e6316511fcE.exit.i.i.i.i.i.i.i.i.i27 ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.529.0.copyload) ]
  %i.at = sub nuw nsw i64 -16, %.sink.i.i.i22
  %i.au = getelementptr inbounds i8, ptr %.sroa.529.0.copyload, i64 %i.at
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.au, i64 noundef %.sink7.i.i.i23, i64 noundef range(i64 1, -9223372036854775807) 16) #54, !noalias !551800
  br label %"_ZN4core3ptr55drop_in_place$LT$nickel_lang_parser..ast..typ..Type$GT$17h7bf44958b6c33376E.exit28"

bb.k:                                             ; preds = %bb.i
  %i.av = icmp eq i64 %.sroa.730.0.copyload, 0
  br i1 %i.av, label %"_ZN4core3ptr55drop_in_place$LT$nickel_lang_parser..ast..typ..Type$GT$17h7bf44958b6c33376E.exit28", label %_ZN9hashbrown3raw11TableLayout20calculate_layout_for17hb76643e6316511fcE.exit.i.i.i.i.i.i4.i.i.i20

_ZN9hashbrown3raw11TableLayout20calculate_layout_for17hb76643e6316511fcE.exit.i.i.i.i.i.i4.i.i.i20: ; preds = %bb.k
  %i.aw = shl i64 %.sroa.730.0.copyload, 2
  %i.ax = icmp slt i64 %.sroa.730.0.copyload, 4611686018427387900
  tail call void @llvm.assume(i1 %i.ax)
  %i.ay = and i64 %i.aw, -16                      ; 2 uses
  %i.az = add i64 %i.ay, 16                       ; 2 uses
  %i.ba = add nsw i64 %.sroa.730.0.copyload, 17
  %i.bb = add i64 %i.ba, %i.az                    ; 4 uses
  %i.bc = icmp uge i64 %i.bb, %i.az
  %i.bd = icmp ult i64 %i.bb, 9223372036854775793
  tail call void @llvm.assume(i1 %i.bc)
  tail call void @llvm.assume(i1 %i.bd)
  %i.be = icmp eq i64 %i.bb, 0
  br i1 %i.be, label %"_ZN4core3ptr55drop_in_place$LT$nickel_lang_parser..ast..typ..Type$GT$17h7bf44958b6c33376E.exit28", label %"_ZN4core3ptr102drop_in_place$LT$std..collections..hash..set..HashSet$LT$nickel_lang_parser..identifier..Ident$GT$$GT$17h9c0586ab8ce8c100E.exit.sink.split.i.i.i21"

bb.l:                                             ; preds = %bb.g
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.613.sroa.7, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.9.0..sroa_idx, i64 56, i1 false)
  %i.bf = getelementptr inbounds nuw i8, ptr %1, i64 80
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.7, ptr noundef nonnull align 8 dereferenceable(24) %i.bf, i64 24, i1 false)
  br label %"_ZN4core3ptr55drop_in_place$LT$nickel_lang_parser..ast..typ..Type$GT$17h7bf44958b6c33376E.exit28"

"_ZN4core3ptr55drop_in_place$LT$nickel_lang_parser..ast..typ..Type$GT$17h7bf44958b6c33376E.exit28": ; preds = %_ZN9hashbrown3raw11TableLayout20calculate_layout_for17hb76643e6316511fcE.exit.i.i.i.i.i.i4.i.i.i20, %bb.k, %"_ZN4core3ptr102drop_in_place$LT$std..collections..hash..set..HashSet$LT$nickel_lang_parser..identifier..Ident$GT$$GT$17h9c0586ab8ce8c100E.exit.sink.split.i.i.i21", %_ZN9hashbrown3raw11TableLayout20calculate_layout_for17hb76643e6316511fcE.exit.i.i.i.i.i.i.i.i.i27, %bb.j, %bb.i, %bb.h, %bb.l
  %.sroa.613.sroa.6.0 = phi i64 [ %.sroa.730.0.copyload, %bb.l ], [ %.sroa.544.0.copyload, %bb.h ], [ %.sroa.544.0.copyload, %bb.i ], [ %.sroa.544.0.copyload, %bb.j ], [ %.sroa.544.0.copyload, %_ZN9hashbrown3raw11TableLayout20calculate_layout_for17hb76643e6316511fcE.exit.i.i.i.i.i.i.i.i.i27 ], [ %.sroa.544.0.copyload, %"_ZN4core3ptr102drop_in_place$LT$std..collections..hash..set..HashSet$LT$nickel_lang_parser..identifier..Ident$GT$$GT$17h9c0586ab8ce8c100E.exit.sink.split.i.i.i21" ], [ %.sroa.544.0.copyload, %bb.k ], [ %.sroa.544.0.copyload, %_ZN9hashbrown3raw11TableLayout20calculate_layout_for17hb76643e6316511fcE.exit.i.i.i.i.i.i4.i.i.i20 ]
  %.sroa.613.sroa.0.0 = phi ptr [ %.sroa.529.0.copyload, %bb.l ], [ %.sroa.043.0.copyload, %bb.h ], [ %.sroa.043.0.copyload, %bb.i ], [ %.sroa.043.0.copyload, %bb.j ], [ %.sroa.043.0.copyload, %_ZN9hashbrown3raw11TableLayout20calculate_layout_for17hb76643e6316511fcE.exit.i.i.i.i.i.i.i.i.i27 ], [ %.sroa.043.0.copyload, %"_ZN4core3ptr102drop_in_place$LT$std..collections..hash..set..HashSet$LT$nickel_lang_parser..identifier..Ident$GT$$GT$17h9c0586ab8ce8c100E.exit.sink.split.i.i.i21" ], [ %.sroa.043.0.copyload, %bb.k ], [ %.sroa.043.0.copyload, %_ZN9hashbrown3raw11TableLayout20calculate_layout_for17hb76643e6316511fcE.exit.i.i.i.i.i.i4.i.i.i20 ]
  %.sroa.011.0 = phi i64 [ %.sroa.0.0.copyload, %bb.l ], [ %i.c, %bb.h ], [ %i.c, %bb.i ], [ %i.c, %bb.j ], [ %i.c, %_ZN9hashbrown3raw11TableLayout20calculate_layout_for17hb76643e6316511fcE.exit.i.i.i.i.i.i.i.i.i27 ], [ %i.c, %"_ZN4core3ptr102drop_in_place$LT$std..collections..hash..set..HashSet$LT$nickel_lang_parser..identifier..Ident$GT$$GT$17h9c0586ab8ce8c100E.exit.sink.split.i.i.i21" ], [ %i.c, %bb.k ], [ %i.c, %_ZN9hashbrown3raw11TableLayout20calculate_layout_for17hb76643e6316511fcE.exit.i.i.i.i.i.i4.i.i.i20 ]
  store i64 %.sroa.011.0, ptr %0, align 8
  %.sroa.613.0..sroa_idx14 = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.613.sroa.0.0, ptr %.sroa.613.0..sroa_idx14, align 8
  %.sroa.613.sroa.6.0..sroa.613.0..sroa_idx14.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.613.sroa.6.0, ptr %.sroa.613.sroa.6.0..sroa.613.0..sroa_idx14.sroa_idx, align 8
  %.sroa.613.sroa.7.0..sroa.613.0..sroa_idx14.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.613.sroa.7.0..sroa.613.0..sroa_idx14.sroa_idx, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.613.sroa.7, i64 56, i1 false)
  %.sroa.7.0..sroa_idx15 = getelementptr inbounds nuw i8, ptr %0, i64 80
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.7.0..sroa_idx15, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.7, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.613.sroa.7)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7)
end_hunk_6
begin_hunk_7_@"_ZN95_$LT$nickel_lang_parser..ast..LetBinding$u20$as$u20$nickel_lang_parser..ast..alloc..CloneTo$GT$8clone_to17ha3cb881cfa9f5a8cE":bb.a
bb.t:                                             ; preds = %bb.s
  store i8 0, ptr %i.g, align 8, !alias.scope !564453, !noalias !564454
  br label %"_ZN68_$LT$nickel_lang_parser..ast..Node$u20$as$u20$core..clone..Clone$GT$5clone17h31d3f9a1732a0f67E.exit.i"

bb.u:                                             ; preds = %bb.s
  store i8 1, ptr %i.g, align 8, !alias.scope !564455, !noalias !564449
  %.sroa.21.16..sroa_idx63 = getelementptr inbounds nuw i8, ptr %i.g, i64 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(23) %.sroa.21.16..sroa_idx63, ptr noundef nonnull align 1 dereferenceable(23) %.sroa.21.0..sroa_idx, i64 23, i1 false)
  %.sroa.23.16..sroa_idx92 = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  store ptr %.sroa.23.0.copyload, ptr %.sroa.23.16..sroa_idx92, align 8, !alias.scope !564455, !noalias !564449
  br label %"_ZN68_$LT$nickel_lang_parser..ast..Node$u20$as$u20$core..clone..Clone$GT$5clone17h31d3f9a1732a0f67E.exit.i"

bb.v:                                             ; preds = %bb.s
  store i8 2, ptr %i.g, align 8, !alias.scope !564455, !noalias !564449
  %.sroa.21.16..sroa_idx62 = getelementptr inbounds nuw i8, ptr %i.g, i64 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(23) %.sroa.21.16..sroa_idx62, ptr noundef nonnull align 1 dereferenceable(23) %.sroa.21.0..sroa_idx, i64 23, i1 false)
  %.sroa.23.16..sroa_idx90 = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  store ptr %.sroa.23.0.copyload, ptr %.sroa.23.16..sroa_idx90, align 8, !alias.scope !564455, !noalias !564449
  br label %"_ZN68_$LT$nickel_lang_parser..ast..Node$u20$as$u20$core..clone..Clone$GT$5clone17h31d3f9a1732a0f67E.exit.i"

bb.w:                                             ; preds = %bb.s
  store i8 3, ptr %i.g, align 8, !alias.scope !564455, !noalias !564449
  %.sroa.21.16..sroa_idx61 = getelementptr inbounds nuw i8, ptr %i.g, i64 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(23) %.sroa.21.16..sroa_idx61, ptr noundef nonnull align 1 dereferenceable(23) %.sroa.21.0..sroa_idx, i64 23, i1 false)
  %.sroa.23.16..sroa_idx88 = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  store ptr %.sroa.23.0.copyload, ptr %.sroa.23.16..sroa_idx88, align 8, !alias.scope !564455, !noalias !564449
  br label %"_ZN68_$LT$nickel_lang_parser..ast..Node$u20$as$u20$core..clone..Clone$GT$5clone17h31d3f9a1732a0f67E.exit.i"

bb.x:                                             ; preds = %bb.s
  store i8 4, ptr %i.g, align 8, !alias.scope !564455, !noalias !564449
  %.sroa.21.16..sroa_idx60 = getelementptr inbounds nuw i8, ptr %i.g, i64 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(23) %.sroa.21.16..sroa_idx60, ptr noundef nonnull align 1 dereferenceable(23) %.sroa.21.0..sroa_idx, i64 23, i1 false)
  %.sroa.23.16..sroa_idx86 = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  store ptr %.sroa.23.0.copyload, ptr %.sroa.23.16..sroa_idx86, align 8, !alias.scope !564455, !noalias !564449
  br label %"_ZN68_$LT$nickel_lang_parser..ast..Node$u20$as$u20$core..clone..Clone$GT$5clone17h31d3f9a1732a0f67E.exit.i"

bb.y:                                             ; preds = %bb.s
  store i8 5, ptr %i.g, align 8, !alias.scope !564455, !noalias !564449
  %.sroa.21.16..sroa_idx59 = getelementptr inbounds nuw i8, ptr %i.g, i64 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(23) %.sroa.21.16..sroa_idx59, ptr noundef nonnull align 1 dereferenceable(23) %.sroa.21.0..sroa_idx, i64 23, i1 false)
  %.sroa.23.16..sroa_idx84 = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  store ptr %.sroa.23.0.copyload, ptr %.sroa.23.16..sroa_idx84, align 8, !alias.scope !564455, !noalias !564449
  br label %"_ZN68_$LT$nickel_lang_parser..ast..Node$u20$as$u20$core..clone..Clone$GT$5clone17h31d3f9a1732a0f67E.exit.i"

bb.z:                                             ; preds = %bb.s
  store i8 6, ptr %i.g, align 8, !alias.scope !564455, !noalias !564449
  %.sroa.21.16..sroa_idx58 = getelementptr inbounds nuw i8, ptr %i.g, i64 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(23) %.sroa.21.16..sroa_idx58, ptr noundef nonnull align 1 dereferenceable(23) %.sroa.21.0..sroa_idx, i64 23, i1 false)
  %.sroa.23.16..sroa_idx82 = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  store ptr %.sroa.23.0.copyload, ptr %.sroa.23.16..sroa_idx82, align 8, !alias.scope !564455, !noalias !564449
  br label %"_ZN68_$LT$nickel_lang_parser..ast..Node$u20$as$u20$core..clone..Clone$GT$5clone17h31d3f9a1732a0f67E.exit.i"

bb.aa:                                            ; preds = %bb.s
  store i8 7, ptr %i.g, align 8, !alias.scope !564455, !noalias !564449
  %.sroa.21.16..sroa_idx57 = getelementptr inbounds nuw i8, ptr %i.g, i64 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(23) %.sroa.21.16..sroa_idx57, ptr noundef nonnull align 1 dereferenceable(23) %.sroa.21.0..sroa_idx, i64 23, i1 false)
  %.sroa.23.16..sroa_idx80 = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  store ptr %.sroa.23.0.copyload, ptr %.sroa.23.16..sroa_idx80, align 8, !alias.scope !564455, !noalias !564449
  br label %"_ZN68_$LT$nickel_lang_parser..ast..Node$u20$as$u20$core..clone..Clone$GT$5clone17h31d3f9a1732a0f67E.exit.i"

bb.ab:                                            ; preds = %bb.s
  store i8 8, ptr %i.g, align 8, !alias.scope !564455, !noalias !564449
  %.sroa.21.16..sroa_idx56 = getelementptr inbounds nuw i8, ptr %i.g, i64 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(23) %.sroa.21.16..sroa_idx56, ptr noundef nonnull align 1 dereferenceable(23) %.sroa.21.0..sroa_idx, i64 23, i1 false)
  %.sroa.23.16..sroa_idx78 = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  store ptr %.sroa.23.0.copyload, ptr %.sroa.23.16..sroa_idx78, align 8, !alias.scope !564455, !noalias !564449
  br label %"_ZN68_$LT$nickel_lang_parser..ast..Node$u20$as$u20$core..clone..Clone$GT$5clone17h31d3f9a1732a0f67E.exit.i"

bb.ac:                                            ; preds = %bb.s
  %i.cf = getelementptr inbounds nuw i8, ptr %i.g, i64 4
  %i.cg = getelementptr inbounds nuw i8, ptr %1, i64 220
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %i.cf, ptr noundef nonnull align 4 dereferenceable(20) %i.cg, i64 20, i1 false)
  %i.ch = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  store ptr %.sroa.23.0.copyload, ptr %i.ch, align 8, !alias.scope !564453, !noalias !564454
  store i8 9, ptr %i.g, align 8, !alias.scope !564453, !noalias !564454
  br label %"_ZN68_$LT$nickel_lang_parser..ast..Node$u20$as$u20$core..clone..Clone$GT$5clone17h31d3f9a1732a0f67E.exit.i"

bb.ad:                                            ; preds = %bb.s
  store i8 10, ptr %i.g, align 8, !alias.scope !564455, !noalias !564449
  %.sroa.21.16..sroa_idx55 = getelementptr inbounds nuw i8, ptr %i.g, i64 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(23) %.sroa.21.16..sroa_idx55, ptr noundef nonnull align 1 dereferenceable(23) %.sroa.21.0..sroa_idx, i64 23, i1 false)
  %.sroa.23.16..sroa_idx76 = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  store ptr %.sroa.23.0.copyload, ptr %.sroa.23.16..sroa_idx76, align 8, !alias.scope !564455, !noalias !564449
  br label %"_ZN68_$LT$nickel_lang_parser..ast..Node$u20$as$u20$core..clone..Clone$GT$5clone17h31d3f9a1732a0f67E.exit.i"

bb.ae:                                            ; preds = %bb.s
  store i8 11, ptr %i.g, align 8, !alias.scope !564455, !noalias !564449
  %.sroa.21.16..sroa_idx54 = getelementptr inbounds nuw i8, ptr %i.g, i64 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(23) %.sroa.21.16..sroa_idx54, ptr noundef nonnull align 1 dereferenceable(23) %.sroa.21.0..sroa_idx, i64 23, i1 false)
  %.sroa.23.16..sroa_idx74 = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  store ptr %.sroa.23.0.copyload, ptr %.sroa.23.16..sroa_idx74, align 8, !alias.scope !564455, !noalias !564449
  br label %"_ZN68_$LT$nickel_lang_parser..ast..Node$u20$as$u20$core..clone..Clone$GT$5clone17h31d3f9a1732a0f67E.exit.i"

bb.af:                                            ; preds = %bb.s
  store i8 12, ptr %i.g, align 8, !alias.scope !564455, !noalias !564449
  %.sroa.21.16..sroa_idx53 = getelementptr inbounds nuw i8, ptr %i.g, i64 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(23) %.sroa.21.16..sroa_idx53, ptr noundef nonnull align 1 dereferenceable(23) %.sroa.21.0..sroa_idx, i64 23, i1 false)
  %.sroa.23.16..sroa_idx72 = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  store ptr %.sroa.23.0.copyload, ptr %.sroa.23.16..sroa_idx72, align 8, !alias.scope !564455, !noalias !564449
  br label %"_ZN68_$LT$nickel_lang_parser..ast..Node$u20$as$u20$core..clone..Clone$GT$5clone17h31d3f9a1732a0f67E.exit.i"

bb.ag:                                            ; preds = %bb.s
  store i8 13, ptr %i.g, align 8, !alias.scope !564455, !noalias !564449
  %.sroa.21.16..sroa_idx52 = getelementptr inbounds nuw i8, ptr %i.g, i64 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(23) %.sroa.21.16..sroa_idx52, ptr noundef nonnull align 1 dereferenceable(23) %.sroa.21.0..sroa_idx, i64 23, i1 false)
  %.sroa.23.16..sroa_idx70 = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  store ptr %.sroa.23.0.copyload, ptr %.sroa.23.16..sroa_idx70, align 8, !alias.scope !564455, !noalias !564449
  br label %"_ZN68_$LT$nickel_lang_parser..ast..Node$u20$as$u20$core..clone..Clone$GT$5clone17h31d3f9a1732a0f67E.exit.i"

bb.ah:                                            ; preds = %bb.s
  store i8 14, ptr %i.g, align 8, !alias.scope !564455, !noalias !564449
  %.sroa.21.16..sroa_idx51 = getelementptr inbounds nuw i8, ptr %i.g, i64 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(23) %.sroa.21.16..sroa_idx51, ptr noundef nonnull align 1 dereferenceable(23) %.sroa.21.0..sroa_idx, i64 23, i1 false)
  %.sroa.23.16..sroa_idx68 = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  store ptr %.sroa.23.0.copyload, ptr %.sroa.23.16..sroa_idx68, align 8, !alias.scope !564455, !noalias !564449
  br label %"_ZN68_$LT$nickel_lang_parser..ast..Node$u20$as$u20$core..clone..Clone$GT$5clone17h31d3f9a1732a0f67E.exit.i"

bb.ai:                                            ; preds = %bb.s
  store i8 15, ptr %i.g, align 8, !alias.scope !564455, !noalias !564449
  %.sroa.21.16..sroa_idx50 = getelementptr inbounds nuw i8, ptr %i.g, i64 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(23) %.sroa.21.16..sroa_idx50, ptr noundef nonnull align 1 dereferenceable(23) %.sroa.21.0..sroa_idx, i64 23, i1 false)
  %.sroa.23.16..sroa_idx66 = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  store ptr %.sroa.23.0.copyload, ptr %.sroa.23.16..sroa_idx66, align 8, !alias.scope !564455, !noalias !564449
  br label %"_ZN68_$LT$nickel_lang_parser..ast..Node$u20$as$u20$core..clone..Clone$GT$5clone17h31d3f9a1732a0f67E.exit.i"

bb.aj:                                            ; preds = %bb.s
  %i.ci = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.cj = getelementptr inbounds nuw i8, ptr %1, i64 224
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ci, ptr noundef nonnull align 8 dereferenceable(16) %i.cj, i64 16, i1 false)
  %.sroa.23.24..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  store ptr %.sroa.23.0.copyload, ptr %.sroa.23.24..sroa_idx, align 8, !alias.scope !564455, !noalias !564449
  store i8 16, ptr %i.g, align 8, !alias.scope !564453, !noalias !564454
  br label %"_ZN68_$LT$nickel_lang_parser..ast..Node$u20$as$u20$core..clone..Clone$GT$5clone17h31d3f9a1732a0f67E.exit.i"

bb.ak:                                            ; preds = %bb.s
  store i8 17, ptr %i.g, align 8, !alias.scope !564455, !noalias !564449
  %.sroa.21.16..sroa_idx49 = getelementptr inbounds nuw i8, ptr %i.g, i64 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(23) %.sroa.21.16..sroa_idx49, ptr noundef nonnull align 1 dereferenceable(23) %.sroa.21.0..sroa_idx, i64 23, i1 false)
  %.sroa.23.16..sroa_idx64 = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  store ptr %.sroa.23.0.copyload, ptr %.sroa.23.16..sroa_idx64, align 8, !alias.scope !564455, !noalias !564449
  br label %"_ZN68_$LT$nickel_lang_parser..ast..Node$u20$as$u20$core..clone..Clone$GT$5clone17h31d3f9a1732a0f67E.exit.i"

bb.al:                                            ; preds = %bb.s
  store i8 18, ptr %i.g, align 8, !alias.scope !564455, !noalias !564449
  %.sroa.21.16..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(23) %.sroa.21.16..sroa_idx, ptr noundef nonnull align 1 dereferenceable(23) %.sroa.21.0..sroa_idx, i64 23, i1 false)
  %.sroa.23.16..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  store ptr %.sroa.23.0.copyload, ptr %.sroa.23.16..sroa_idx, align 8, !alias.scope !564455, !noalias !564449
  br label %"_ZN68_$LT$nickel_lang_parser..ast..Node$u20$as$u20$core..clone..Clone$GT$5clone17h31d3f9a1732a0f67E.exit.i"

"_ZN68_$LT$nickel_lang_parser..ast..Node$u20$as$u20$core..clone..Clone$GT$5clone17h31d3f9a1732a0f67E.exit.i": ; preds = %bb.al, %bb.ak, %bb.aj, %bb.ai, %bb.ah, %bb.ag, %bb.af, %bb.ae, %bb.ad, %bb.ac, %bb.ab, %bb.aa, %bb.z, %bb.y, %bb.x, %bb.w, %bb.v, %bb.u, %bb.t
  invoke void @"_ZN89_$LT$nickel_lang_parser..ast..Node$u20$as$u20$nickel_lang_parser..ast..alloc..CloneTo$GT$8clone_to17he7f24d20598ea124E"(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.h, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(32) %i.g, ptr noundef nonnull align 8 %2)
          to label %bb.an unwind label %bb.am, !inline_history !37

bb.am:                                            ; preds = %"_ZN68_$LT$nickel_lang_parser..ast..Node$u20$as$u20$core..clone..Clone$GT$5clone17h31d3f9a1732a0f67E.exit.i"
  %i.ck = landingpad { ptr, i32 }
          cleanup
  call fastcc void @"_ZN4core3ptr57drop_in_place$LT$nickel_lang_parser..ast..LetMetadata$GT$17hc257252ea1a5ab0dE"(ptr noalias noundef align 8 dereferenceable(136) %i.j) #53
  br label %.thread

bb.an:                                            ; preds = %"_ZN68_$LT$nickel_lang_parser..ast..Node$u20$as$u20$core..clone..Clone$GT$5clone17h31d3f9a1732a0f67E.exit.i"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !564451
  %i.cl = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.cl, ptr noundef nonnull align 8 dereferenceable(32) %i.h, i64 32, i1 false), !noalias !564450
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.032, i64 16, i1 false), !alias.scope !564451
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !564451
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.032)
  %i.cm = getelementptr inbounds nuw i8, ptr %0, i64 136
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.cm, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0, i64 16, i1 false)
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 152
  store i32 %.sroa.425.0.copyload, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 156
  store i32 %.sroa.10.0.i, ptr %.sroa.5.0..sroa_idx, align 4
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 160
  store ptr %.sroa.104.0.i, ptr %.sroa.6.0..sroa_idx, align 8
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 168
  store i64 %.sroa.15.0.i, ptr %.sroa.7.0..sroa_idx, align 8
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 176
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %.sroa.8.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(20) %.sroa.8, i64 20, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(136) %0, ptr noundef nonnull align 8 dereferenceable(136) %i.j, i64 136, i1 false)
  %i.cn = getelementptr inbounds nuw i8, ptr %0, i64 200
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.cn, ptr noundef nonnull align 8 dereferenceable(48) %i.i, i64 48, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.8)
  ret void

.thread:                                          ; preds = %bb.am, %bb.p, %bb.r, %bb.ao
  %.pn103 = phi { ptr, i32 } [ %i.ck, %bb.am ], [ %i.co, %bb.ao ], [ %i.bz, %bb.p ], [ %lpad.thr_comm, %bb.r ]
  resume { ptr, i32 } %.pn103

bb.ao:                                            ; preds = %.invoke, %bb.h, %bb.g, %bb.f, %"_ZN88_$LT$nickel_lang_parser..ast..pattern..ConstantPattern$u20$as$u20$core..clone..Clone$GT$5clone17hc80773b56fe75bc9E.exit.i", %bb.d, %bb.c, %bb.b
  %i.co = landingpad { ptr, i32 }
          cleanup
  tail call fastcc void @"_ZN4core3ptr57drop_in_place$LT$nickel_lang_parser..ast..LetMetadata$GT$17hc257252ea1a5ab0dE"(ptr noalias noundef align 8 dereferenceable(136) %1) #53
  br label %.thread
}

; Function Attrs: nonlazybind uwtable
define void @"_ZN95_$LT$nickel_lang_parser..ast..typ..Type$u20$as$u20$nickel_lang_parser..uniterm..FixTypeVars$GT$17fix_type_vars_env17h137341d0f0f948edE"(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([104 x i8]) align 8 captures(none) dereferenceable(104) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(104) %1, ptr noundef nonnull align 8 captures(none) %2, ptr noundef nonnull %3, ptr noundef %4, ptr noalias nofree noundef readonly align 4 captures(address) dead_on_return dereferenceable(12) %5) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 6 uses
  %i.b = alloca [16 x i8], align 8                ; 5 uses
  %i.c = alloca [48 x i8], align 8                ; 6 uses
  %i.d = alloca [16 x i8], align 8                ; 5 uses
  %i.e = alloca [32 x i8], align 8                ; 16 uses
  %i.f = alloca [64 x i8], align 8                ; 6 uses
  %i.g = alloca [8 x i8], align 8                 ; 4 uses
  %i.h = alloca [72 x i8], align 8                ; 8 uses
  %i.i = alloca [48 x i8], align 8                ; 8 uses
  %i.j = alloca [72 x i8], align 8                ; 8 uses
  %i.k = alloca [12 x i8], align 4                ; 4 uses
  %i.l = alloca [104 x i8], align 8               ; 7 uses
  %i.m = alloca [104 x i8], align 8               ; 7 uses
  %i.n = alloca [104 x i8], align 8               ; 6 uses
  %.sroa.4122 = alloca [19 x i8], align 1         ; 2 uses
  %.sroa.4309.sroa.0 = alloca [28 x i8], align 4  ; 3 uses
  %i.o = alloca [104 x i8], align 8               ; 6 uses
  %i.p = alloca [104 x i8], align 8               ; 6 uses
  %.sroa.10.sroa.10280 = alloca [28 x i8], align 4 ; 4 uses
  %i.q = alloca [72 x i8], align 8                ; 13 uses
  %.sroa.7243.sroa.7 = alloca [28 x i8], align 4  ; 5 uses
  %.sroa.7243.sroa.9 = alloca [16 x i8], align 8  ; 5 uses
  %.sroa.10.sroa.10 = alloca [28 x i8], align 4   ; 4 uses
  %i.r = alloca [72 x i8], align 8                ; 13 uses
  %.sroa.7204.sroa.7 = alloca [28 x i8], align 4  ; 5 uses
  %.sroa.7204.sroa.9 = alloca [16 x i8], align 8  ; 5 uses
  %.sroa.9193 = alloca [72 x i8], align 8         ; 3 uses
  %.sroa.4201 = alloca [24 x i8], align 8         ; 2 uses
  %i.s = alloca [104 x i8], align 8               ; 7 uses
  %.sroa.7188.sroa.7 = alloca [16 x i8], align 8  ; 5 uses
  %.sroa.9177 = alloca [72 x i8], align 8         ; 3 uses
  %.sroa.4185 = alloca [24 x i8], align 8         ; 2 uses
  %i.t = alloca [104 x i8], align 8               ; 7 uses
  %.sroa.7172.sroa.8 = alloca [16 x i8], align 8  ; 5 uses
  %i.u = alloca [104 x i8], align 8               ; 5 uses
  %i.v = alloca [4 x i8], align 4                 ; 4 uses
  %i.w = alloca [56 x i8], align 8                ; 8 uses
  %i.x = alloca [104 x i8], align 8               ; 7 uses
  %.sroa.7136 = alloca [72 x i8], align 8         ; 6 uses
  %i.y = alloca [64 x i8], align 8                ; 7 uses
  %.sroa.0130 = alloca [16 x i8], align 4         ; 2 uses
  %i.z = alloca [56 x i8], align 8                ; 4 uses
  %i.aa = alloca [4 x i8], align 4                ; 2 uses
  %i.ab = alloca [104 x i8], align 8              ; 5 uses
  %i.ac = alloca [104 x i8], align 8              ; 6 uses
  %i.ad = alloca [104 x i8], align 8              ; 7 uses
  %.sroa.712 = alloca [72 x i8], align 8          ; 6 uses
  %i.ae = alloca [104 x i8], align 8              ; 7 uses
  %.sroa.7 = alloca [72 x i8], align 8            ; 6 uses
  %i.af = alloca [16 x i8], align 4               ; 3 uses
  %i.ag = alloca [16 x i8], align 8               ; 10 uses
  store ptr %3, ptr %i.ag, align 8
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 8 ; 9 uses
  store ptr %4, ptr %i.ah, align 8
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 88 ; 9 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.af, ptr noundef nonnull align 8 dereferenceable(16) %i.ai, i64 16, i1 false)
  %i.aj = load i64, ptr %1, align 8, !range !23, !noundef !19 ; 4 uses
  %i.ak = icmp ne i64 %i.aj, 12
  tail call void @llvm.assume(i1 %i.ak)
  %i.al = add nsw i64 %i.aj, -3
  %i.am = icmp samesign ugt i64 %i.aj, 2
  %i.an = select i1 %i.am, i64 %i.al, i64 9
  switch i64 %i.an, label %bb.b [
    i64 0, label %bb.c
    i64 1, label %bb.c
    i64 2, label %bb.c
    i64 3, label %bb.c
    i64 4, label %bb.c
    i64 5, label %bb.c
    i64 6, label %bb.c
    i64 7, label %bb.d
    i64 8, label %bb.h
    i64 9, label %bb.o
    i64 10, label %bb.ax
    i64 11, label %bb.bb
    i64 12, label %bb.be
    i64 13, label %bb.bf
    i64 14, label %bb.c
  ]

bb.b:                                             ; preds = %bb.a
  unreachable

bb.c:                                             ; preds = %bb.be, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a
  store i64 18, ptr %0, align 8
  br label %bb.ci

bb.d:                                             ; preds = %bb.a
  %i.ao = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ap = load ptr, ptr %i.ao, align 8, !nonnull !19, !align !24, !noundef !19 ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ar = load ptr, ptr %i.aq, align 8, !nonnull !19, !align !24, !noundef !19 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.7)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ae)
  %.val.i.i = load i64, ptr %3, align 8, !noundef !19 ; 2 uses
  %i.as = icmp ne i64 %.val.i.i, 0
  tail call void @llvm.assume(i1 %i.as)
  %i.at = add i64 %.val.i.i, 1                    ; 2 uses
  store i64 %i.at, ptr %3, align 8
  %i.au = icmp eq i64 %i.at, 0
  br i1 %i.au, label %bb.e, label %_ZN5alloc2rc10RcInnerPtr10inc_strong17h614ff3163db54737E.exit.i, !prof !20

bb.e:                                             ; preds = %bb.d
  tail call void @llvm.trap()
  unreachable

_ZN5alloc2rc10RcInnerPtr10inc_strong17h614ff3163db54737E.exit.i: ; preds = %bb.d
  %.not.i541 = icmp eq ptr %4, null
  br i1 %.not.i541, label %bb.bg, label %bb.f

bb.f:                                             ; preds = %_ZN5alloc2rc10RcInnerPtr10inc_strong17h614ff3163db54737E.exit.i
  %.val.i2.i = load i64, ptr %4, align 8, !noundef !19 ; 2 uses
  %i.av = icmp ne i64 %.val.i2.i, 0
  tail call void @llvm.assume(i1 %i.av)
  %i.aw = add i64 %.val.i2.i, 1                   ; 2 uses
  store i64 %i.aw, ptr %4, align 8
  %i.ax = icmp eq i64 %i.aw, 0
  br i1 %i.ax, label %bb.g, label %bb.bg, !prof !20

bb.g:                                             ; preds = %bb.f
  tail call void @llvm.trap()
  unreachable

bb.h:                                             ; preds = %bb.a
  %i.ay = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.az = load i32, ptr %i.ay, align 8, !noundef !19 ; 4 uses
  store i32 %i.az, ptr %i.aa, align 4
  br label %bb.i

bb.i:                                             ; preds = %"_ZN4core4iter6traits8iterator8Iterator8find_map5check28_$u7b$$u7b$closure$u7d$$u7d$17h408ffa39bb93d464E.exit.i.i", %bb.h
  %.sroa.03.0.i14.i.i = phi ptr [ %.sroa.03.0.i.i.i, %"_ZN4core4iter6traits8iterator8Iterator8find_map5check28_$u7b$$u7b$closure$u7d$$u7d$17h408ffa39bb93d464E.exit.i.i" ], [ %i.ag, %bb.h ] ; 3 uses
  %.not.i.i.i = icmp eq ptr %.sroa.03.0.i14.i.i, null
  br i1 %.not.i.i.i, label %bb.cb, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ba = load ptr, ptr %.sroa.03.0.i14.i.i, align 8, !noalias !564625, !nonnull !19, !noundef !19 ; 5 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %.sroa.03.0.i14.i.i, i64 8
  %i.bc = load ptr, ptr %i.bb, align 8, !noalias !564625, !noundef !19 ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.bc, null
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 16
  %.sroa.03.0.i.i.i = select i1 %.not4.i.i.i, ptr null, ptr %i.bd
  call void @llvm.experimental.noalias.scope.decl(metadata !564626)
  call void @llvm.experimental.noalias.scope.decl(metadata !564627)
  call void @llvm.experimental.noalias.scope.decl(metadata !564628)
  %i.be = getelementptr inbounds nuw i8, ptr %i.ba, i64 40
  %i.bf = load i64, ptr %i.be, align 8, !alias.scope !564629, !noalias !564630, !noundef !19
  %i.bg = icmp eq i64 %i.bf, 0
  br i1 %i.bg, label %"_ZN4core4iter6traits8iterator8Iterator8find_map5check28_$u7b$$u7b$closure$u7d$$u7d$17h408ffa39bb93d464E.exit.i.i", label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bh = getelementptr inbounds nuw i8, ptr %i.ba, i64 16
  %i.bi = getelementptr inbounds nuw i8, ptr %i.ba, i64 48
  %.val.i.i.i.i.i = load i64, ptr %i.bi, align 8, !alias.scope !564629, !noalias !564630, !noundef !19
  %i.bj = getelementptr inbounds nuw i8, ptr %i.ba, i64 56
  %.val5.i.i.i.i.i = load i64, ptr %i.bj, align 8, !alias.scope !564629, !noalias !564630, !noundef !19
  %i.bk = call fastcc noundef i64 @_ZN4core4hash11BuildHasher8hash_one17ha5ecd2a150def698E(i64 %.val.i.i.i.i.i, i64 %.val5.i.i.i.i.i, ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(4) %i.aa), !noalias !564631 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !564632)
  call void @llvm.experimental.noalias.scope.decl(metadata !564633)
  %i.bl = lshr i64 %i.bk, 57
  %i.bm = trunc nuw nsw i64 %i.bl to i8
  %i.bn = getelementptr inbounds nuw i8, ptr %i.ba, i64 24
  %i.bo = load i64, ptr %i.bn, align 8, !alias.scope !564634, !noalias !564635, !noundef !19 ; 2 uses
  %i.bp = load ptr, ptr %i.bh, align 8, !alias.scope !564634, !noalias !564635, !nonnull !19, !noundef !19 ; 2 uses
  %.sroa.0.0.vec.insert.i.i.i.i.i.i.i = insertelement <16 x i8> poison, i8 %i.bm, i64 0
  %.sroa.0.15.vec.insert.i.i.i.i.i.i.i = shufflevector <16 x i8> %.sroa.0.0.vec.insert.i.i.i.i.i.i.i, <16 x i8> poison, <16 x i32> zeroinitializer
  br label %bb.l

bb.l:                                             ; preds = %bb.n, %bb.k
  %.sroa.9.0.i.i.i.i.i.i.i = phi i64 [ 0, %bb.k ], [ %i.cg, %bb.n ]
  %.pn.i.i.i.i.i.i = phi i64 [ %i.bk, %bb.k ], [ %i.ch, %bb.n ]
  %.sroa.01.0.i.i.i.i.i.i.i = and i64 %.pn.i.i.i.i.i.i, %i.bo ; 3 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 %.sroa.01.0.i.i.i.i.i.i.i
  %.sroa.0.0.copyload.i26.i.i.i.i.i.i = load <16 x i8>, ptr %i.bq, align 1, !noalias !564636 ; 2 uses
  %i.br = icmp eq <16 x i8> %.sroa.0.0.copyload.i26.i.i.i.i.i.i, %.sroa.0.15.vec.insert.i.i.i.i.i.i.i
  %i.bs = bitcast <16 x i1> %i.br to i16          ; 2 uses
  %.not.i.not32.i.i.i.i.i.i = icmp eq i16 %i.bs, 0
  br i1 %.not.i.not32.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %bb.l, %bb.m
  %.sroa.06.0.i33.i.i.i.i.i.i = phi i16 [ %i.cf, %bb.m ], [ %i.bs, %bb.l ] ; 3 uses
  %i.bt = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.06.0.i33.i.i.i.i.i.i, i1 true)
  %i.bu = zext nneg i16 %i.bt to i64
  %i.bv = add i64 %.sroa.01.0.i.i.i.i.i.i.i, %i.bu
  %i.bw = and i64 %i.bv, %i.bo
  %i.bx = sub nsw i64 0, %i.bw
  %i.by = getelementptr inbounds [72 x i8], ptr %i.bp, i64 %i.bx ; 2 uses
  %i.bz = getelementptr inbounds i8, ptr %i.by, i64 -72
  %.val3.i.i.i.i.i.i.i = load i32, ptr %i.bz, align 4, !noalias !564637, !noundef !19
  %i.ca = icmp eq i32 %i.az, %.val3.i.i.i.i.i.i.i
  br i1 %i.ca, label %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$4find17h00091025c6fa60a7E.exit.i.i.i.i.i", label %bb.m, !prof !22

._crit_edge.i.i.i.i.i.i:                          ; preds = %bb.m, %bb.l
  %i.cb = icmp eq <16 x i8> %.sroa.0.0.copyload.i26.i.i.i.i.i.i, splat (i8 -1)
  %i.cc = bitcast <16 x i1> %i.cb to i16
  %i.cd = icmp eq i16 %i.cc, 0
  br i1 %i.cd, label %bb.n, label %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$4find17h00091025c6fa60a7E.exit.i.i.i.i.i", !prof !20

bb.m:                                             ; preds = %.lr.ph.i.i.i.i.i.i
  %i.ce = add i16 %.sroa.06.0.i33.i.i.i.i.i.i, -1
end_hunk_7
begin_hunk_8_@"_ZN99_$LT$nickel_lang_parser..ast..record..Record$u20$as$u20$nickel_lang_parser..ast..alloc..CloneTo$GT$8clone_to17h61aeac7cdc83fe0aE":bb.a

bb.j:                                             ; preds = %bb.i
  unreachable

bb.k:                                             ; preds = %bb.i
  br label %"_ZN104_$LT$core..iter..adapters..cloned..Cloned$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17ha3b1f13bfaeac08fE.exit"

bb.l:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !564998
  invoke fastcc void @"_ZN60_$LT$malachite_q..Rational$u20$as$u20$core..clone..Clone$GT$5clone17hb26a37bf83f480deE"(ptr noalias noundef align 8 captures(address) dereferenceable(56) %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.av)
          to label %bb.o unwind label %bb.n, !noalias !564997

bb.m:                                             ; preds = %bb.i
  br label %"_ZN104_$LT$core..iter..adapters..cloned..Cloned$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17ha3b1f13bfaeac08fE.exit"

bb.n:                                             ; preds = %bb.l
  %i.bb = landingpad { ptr, i32 }
          cleanup
  call fastcc void @"_ZN4core3ptr56drop_in_place$LT$nickel_lang_parser..ast..Annotation$GT$17hd5a011e7b9efacffE"(ptr noalias noundef align 8 dereferenceable(120) %i.c) #53, !noalias !564998
  resume { ptr, i32 } %i.bb

bb.o:                                             ; preds = %bb.l
  %.sroa.01.0.copyload2.i.i.i = load i64, ptr %i.a, align 8, !noalias !564998
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.7.i.i.i, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.7.0..sroa_idx3.i.i.i, i64 48, i1 false), !noalias !564999
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !564998
  br label %"_ZN104_$LT$core..iter..adapters..cloned..Cloned$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17ha3b1f13bfaeac08fE.exit"

"_ZN104_$LT$core..iter..adapters..cloned..Cloned$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17ha3b1f13bfaeac08fE.exit": ; preds = %bb.i, %bb.k, %bb.m, %bb.o
  %.sroa.01.0.i.i.i = phi i64 [ -9223372036854775804, %bb.m ], [ -9223372036854775806, %bb.k ], [ %.sroa.01.0.copyload2.i.i.i, %bb.o ], [ -9223372036854775807, %bb.i ]
  %i.bc = getelementptr inbounds nuw i8, ptr %.sroa.049.078, i64 200
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(112) %.sroa.629, ptr noundef nonnull align 8 dereferenceable(112) %.sroa.56.0..sroa_idx7.i.i.i, i64 112, i1 false), !noalias !565000
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !564998
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.4.i.i.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(20) %.sroa.10.200..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(20) %i.bc, i64 20, i1 false), !alias.scope !565001, !noalias !564999
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.7, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.7.i.i.i, i64 48, i1 false), !noalias !565000
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(26) %.sroa.12, ptr noundef nonnull align 2 dereferenceable(26) %.sroa.10.i, i64 26, i1 false), !noalias !565000
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.10.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7.i.i.i)
  %.not.i.i = icmp eq i64 %.sroa.04.0.i.i.i, 19
  br i1 %.not.i.i, label %"_ZN102_$LT$core..iter..adapters..map..Map$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hf21a9a04f5bf06b2E.exit.i.thread", label %"_ZN102_$LT$core..iter..adapters..map..Map$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hf21a9a04f5bf06b2E.exit.i"

"_ZN102_$LT$core..iter..adapters..map..Map$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hf21a9a04f5bf06b2E.exit.i.thread": ; preds = %"_ZN104_$LT$core..iter..adapters..cloned..Cloned$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17ha3b1f13bfaeac08fE.exit", %"_ZN104_$LT$core..iter..adapters..cloned..Cloned$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17ha3b1f13bfaeac08fE.exit.thread"
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.629)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.12)
  br label %.loopexit77

"_ZN102_$LT$core..iter..adapters..map..Map$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hf21a9a04f5bf06b2E.exit.i": ; preds = %"_ZN104_$LT$core..iter..adapters..cloned..Cloned$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17ha3b1f13bfaeac08fE.exit"
  %.not.i.i.i16 = icmp eq ptr %i.ai, null
  %.sroa.5.0.i.i.i = select i1 %.not.i.i.i16, i64 undef, i64 %i.ak
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !565002
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(112) %.sroa.433.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(112) %.sroa.629, i64 112, i1 false), !noalias !565002
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.635.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.7, i64 48, i1 false), !noalias !565002
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(26) %.sroa.1140.0..sroa_idx, ptr noundef nonnull align 2 dereferenceable(26) %.sroa.12, i64 26, i1 false), !noalias !565002
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !565002
  store i64 %.sroa.04.0.i.i.i, ptr %i.f, align 8, !noalias !565002
  store i64 %.sroa.01.0.i.i.i, ptr %.sroa.534.0..sroa_idx, align 8, !noalias !565002
  store ptr %i.ai, ptr %.sroa.736.0..sroa_idx, align 8, !noalias !565002
  store i64 %.sroa.5.0.i.i.i, ptr %.sroa.837.0..sroa_idx, align 8, !noalias !565002
  store i8 %i.as, ptr %.sroa.938.0..sroa_idx, align 8, !noalias !565002
  store i8 %i.au, ptr %.sroa.1039.0..sroa_idx, align 1, !noalias !565002
  call void @"_ZN100_$LT$nickel_lang_parser..ast..record..Include$u20$as$u20$nickel_lang_parser..ast..alloc..CloneTo$GT$8clone_to17h6770625c794aa503E"(ptr noalias noundef nonnull sret([224 x i8]) align 8 captures(address) dereferenceable(224) %i.g, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(224) %i.f, ptr noundef nonnull align 8 %2), !noalias !565003, !inline_history !564976
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !565002
  %.sroa.022.0.copyload = load i64, ptr %i.g, align 8, !noalias !565004 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(216) %.sroa.6, ptr noundef nonnull align 8 dereferenceable(216) %.sroa.6.0..sroa_idx, i64 216, i1 false), !noalias !565004
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !565002
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.629)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.12)
  %.not.i = icmp eq i64 %.sroa.022.0.copyload, 19
  br i1 %.not.i, label %.loopexit77, label %"_ZN7bumpalo13Bump$LT$_$GT$21alloc_slice_fill_iter28_$u7b$$u7b$closure$u7d$$u7d$17h45d3351aad2e9236E.exit", !prof !40

.loopexit77:                                      ; preds = %"_ZN102_$LT$core..iter..adapters..map..Map$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hf21a9a04f5bf06b2E.exit.i", %"_ZN102_$LT$core..iter..adapters..map..Map$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hf21a9a04f5bf06b2E.exit.i.thread"
  tail call void @_ZN4core6option13expect_failed17h1729d0bd73171c50E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @10550, i64 noundef 34, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @10552) #52, !noalias !565005, !inline_history !564977
  unreachable

"_ZN7bumpalo13Bump$LT$_$GT$21alloc_slice_fill_iter28_$u7b$$u7b$closure$u7d$$u7d$17h45d3351aad2e9236E.exit": ; preds = %"_ZN102_$LT$core..iter..adapters..map..Map$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hf21a9a04f5bf06b2E.exit.i"
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(216) %.sroa.426, ptr noundef nonnull align 8 dereferenceable(216) %.sroa.6, i64 216, i1 false), !noalias !565006
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6)
  %i.bd = getelementptr inbounds nuw [224 x i8], ptr %.sroa.0.0.i.i.i, i64 %.sroa.04.0.i.i79 ; 2 uses
  %i.be = add nuw nsw i64 %.sroa.04.0.i.i79, 1    ; 2 uses
  store i64 %.sroa.022.0.copyload, ptr %i.bd, align 8, !noalias !564990
  %.sroa.426.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bd, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(216) %.sroa.426.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(216) %.sroa.426, i64 216, i1 false), !noalias !564990
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.426)
  %exitcond.not = icmp eq i64 %i.be, %i.j
  br i1 %exitcond.not, label %_ZN18nickel_lang_parser3ast5alloc8AstAlloc10alloc_many17hef0e97c757a4b26bE.exit, label %bb.f

_ZN18nickel_lang_parser3ast5alloc8AstAlloc10alloc_many17hef0e97c757a4b26bE.exit: ; preds = %"_ZN7bumpalo13Bump$LT$_$GT$21alloc_slice_fill_iter28_$u7b$$u7b$closure$u7d$$u7d$17h45d3351aad2e9236E.exit", %"_ZN7bumpalo13Bump$LT$_$GT$12alloc_layout17h711a5737d6c8d0dcE.exit.i.i"
  %i.bf = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.bg = load ptr, ptr %i.bf, align 8, !nonnull !19, !align !24, !noundef !19 ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.bi = load i64, ptr %i.bh, align 8, !noundef !19 ; 6 uses
  %i.bj = getelementptr inbounds nuw [280 x i8], ptr %i.bg, i64 %i.bi
  %.idx76 = mul nuw nsw i64 %i.bi, 280            ; 3 uses
  %i.bk = icmp samesign ugt i64 %i.bi, 32940614417338485
  br i1 %i.bk, label %bb.p, label %bb.q, !prof !20

bb.p:                                             ; preds = %_ZN18nickel_lang_parser3ast5alloc8AstAlloc10alloc_many17hef0e97c757a4b26bE.exit
  tail call void @_ZN7bumpalo3oom17hfadade8e21f84824E() #52, !noalias !565007, !inline_history !564982
  unreachable

bb.q:                                             ; preds = %_ZN18nickel_lang_parser3ast5alloc8AstAlloc10alloc_many17hef0e97c757a4b26bE.exit
  %i.bl = load ptr, ptr %i.m, align 8, !noalias !565007, !nonnull !19, !noundef !19 ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 32 ; 2 uses
  %i.bn = load ptr, ptr %i.bm, align 8, !noalias !565007, !nonnull !19, !noundef !19 ; 2 uses
  %i.bo = load ptr, ptr %i.bl, align 8, !noalias !565007, !nonnull !19, !noundef !19 ; 2 uses
  %i.bp = ptrtoint ptr %i.bn to i64
  %i.bq = and i64 %i.bp, 7
  %i.br = sub nsw i64 0, %i.bq
  %i.bs = getelementptr i8, ptr %i.bn, i64 %i.br  ; 3 uses
  %i.bt = ptrtoint ptr %i.bs to i64
  %i.bu = ptrtoint ptr %i.bo to i64
  %i.bv = sub i64 %i.bt, %i.bu
  %i.bw = icmp ult ptr %i.bs, %i.bo
  %i.bx = icmp ugt i64 %.idx76, %i.bv
  %or.cond.i.i3 = or i1 %i.bw, %i.bx
  br i1 %or.cond.i.i3, label %bb.r, label %"_ZN7bumpalo13Bump$LT$_$GT$21try_alloc_layout_fast17h12dcb9d07e2240f3E.exit.i5"

"_ZN7bumpalo13Bump$LT$_$GT$21try_alloc_layout_fast17h12dcb9d07e2240f3E.exit.i5": ; preds = %bb.q
  %i.by = sub nsw i64 0, %.idx76
  %i.bz = getelementptr i8, ptr %i.bs, i64 %i.by  ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.bz) ], !noalias !565008
  store ptr %i.bz, ptr %i.bm, align 8, !noalias !565007
  br label %"_ZN7bumpalo13Bump$LT$_$GT$12alloc_layout17h711a5737d6c8d0dcE.exit.i.i8"

bb.r:                                             ; preds = %bb.q
  %i.ca = tail call noundef ptr @"_ZN7bumpalo13Bump$LT$_$GT$17alloc_layout_slow17hacc06564798b584bE"(ptr noundef nonnull align 8 %2, i64 noundef range(i64 1, 9) 8, i64 noundef %.idx76), !noalias !565007, !inline_history !564982 ; 2 uses
  %.not5.i.i.i11 = icmp eq ptr %i.ca, null
  br i1 %.not5.i.i.i11, label %bb.s, label %"_ZN7bumpalo13Bump$LT$_$GT$12alloc_layout17h711a5737d6c8d0dcE.exit.i.i8", !prof !20

bb.s:                                             ; preds = %bb.r
  tail call void @_ZN7bumpalo3oom17hfadade8e21f84824E() #52, !noalias !565007, !inline_history !564982
  unreachable

"_ZN7bumpalo13Bump$LT$_$GT$12alloc_layout17h711a5737d6c8d0dcE.exit.i.i8": ; preds = %"_ZN7bumpalo13Bump$LT$_$GT$21try_alloc_layout_fast17h12dcb9d07e2240f3E.exit.i5", %bb.r
  %.sroa.0.0.i.i.i9 = phi ptr [ %i.bz, %"_ZN7bumpalo13Bump$LT$_$GT$21try_alloc_layout_fast17h12dcb9d07e2240f3E.exit.i5" ], [ %i.ca, %bb.r ] ; 2 uses
  %.not83 = icmp eq i64 %i.bi, 0
  br i1 %.not83, label %_ZN18nickel_lang_parser3ast5alloc8AstAlloc10alloc_many17h3b32cf942828ed27E.exit, label %.lr.ph82

.lr.ph82:                                         ; preds = %"_ZN7bumpalo13Bump$LT$_$GT$12alloc_layout17h711a5737d6c8d0dcE.exit.i.i8"
  %.sroa.644.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  br label %bb.t

bb.t:                                             ; preds = %.lr.ph82, %"_ZN7bumpalo13Bump$LT$_$GT$21alloc_slice_fill_iter28_$u7b$$u7b$closure$u7d$$u7d$17haae8ea4725f8dd62E.exit"
  %.sroa.04.0.i.i1081 = phi i64 [ 0, %.lr.ph82 ], [ %i.ce, %"_ZN7bumpalo13Bump$LT$_$GT$21alloc_slice_fill_iter28_$u7b$$u7b$closure$u7d$$u7d$17haae8ea4725f8dd62E.exit" ] ; 2 uses
  %.sroa.0.080 = phi ptr [ %i.bg, %.lr.ph82 ], [ %i.cc, %"_ZN7bumpalo13Bump$LT$_$GT$21alloc_slice_fill_iter28_$u7b$$u7b$closure$u7d$$u7d$17haae8ea4725f8dd62E.exit" ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.447)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.644)
  %i.cb = icmp eq ptr %.sroa.0.080, %i.bj
  br i1 %i.cb, label %.loopexit, label %"_ZN104_$LT$core..iter..adapters..cloned..Cloned$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h7befd27dab7a71b1E.exit"

"_ZN104_$LT$core..iter..adapters..cloned..Cloned$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h7befd27dab7a71b1E.exit": ; preds = %bb.t
  %i.cc = getelementptr inbounds nuw i8, ptr %.sroa.0.080, i64 280
  call fastcc void @"_ZN80_$LT$nickel_lang_parser..ast..record..FieldDef$u20$as$u20$core..clone..Clone$GT$5clone17hb57ff880ad338284E"(ptr noalias noundef nonnull align 8 captures(address) dereferenceable(280) %i.d, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(280) %.sroa.0.080)
  %.pr = load i64, ptr %i.d, align 8
  %.not.i.i12 = icmp eq i64 %.pr, 19
  br i1 %.not.i.i12, label %.loopexit, label %"_ZN102_$LT$core..iter..adapters..map..Map$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h49c27e4d228d4d00E.exit.i"

"_ZN102_$LT$core..iter..adapters..map..Map$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h49c27e4d228d4d00E.exit.i": ; preds = %"_ZN104_$LT$core..iter..adapters..cloned..Cloned$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h7befd27dab7a71b1E.exit"
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !565009
  call void @"_ZN101_$LT$nickel_lang_parser..ast..record..FieldDef$u20$as$u20$nickel_lang_parser..ast..alloc..CloneTo$GT$8clone_to17hb64088be888e7ba8E"(ptr noalias noundef nonnull sret([280 x i8]) align 8 captures(address) dereferenceable(280) %i.e, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(280) %i.d, ptr noundef nonnull align 8 %2)
  %.sroa.042.0.copyload = load i64, ptr %i.e, align 8, !noalias !565010 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(272) %.sroa.644, ptr noundef nonnull align 8 dereferenceable(272) %.sroa.644.0..sroa_idx, i64 272, i1 false), !noalias !565010
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !565009
  %.not.i13 = icmp eq i64 %.sroa.042.0.copyload, 19
  br i1 %.not.i13, label %.loopexit, label %"_ZN7bumpalo13Bump$LT$_$GT$21alloc_slice_fill_iter28_$u7b$$u7b$closure$u7d$$u7d$17haae8ea4725f8dd62E.exit", !prof !40

.loopexit:                                        ; preds = %"_ZN102_$LT$core..iter..adapters..map..Map$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h49c27e4d228d4d00E.exit.i", %bb.t, %"_ZN104_$LT$core..iter..adapters..cloned..Cloned$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h7befd27dab7a71b1E.exit"
  tail call void @_ZN4core6option13expect_failed17h1729d0bd73171c50E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @10550, i64 noundef 34, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @10552) #52, !noalias !565011, !inline_history !564989
  unreachable

"_ZN7bumpalo13Bump$LT$_$GT$21alloc_slice_fill_iter28_$u7b$$u7b$closure$u7d$$u7d$17haae8ea4725f8dd62E.exit": ; preds = %"_ZN102_$LT$core..iter..adapters..map..Map$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h49c27e4d228d4d00E.exit.i"
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(272) %.sroa.447, ptr noundef nonnull align 8 dereferenceable(272) %.sroa.644, i64 272, i1 false), !noalias !565012
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.644)
  %i.cd = getelementptr inbounds nuw [280 x i8], ptr %.sroa.0.0.i.i.i9, i64 %.sroa.04.0.i.i1081 ; 2 uses
  %i.ce = add nuw nsw i64 %.sroa.04.0.i.i1081, 1  ; 2 uses
  store i64 %.sroa.042.0.copyload, ptr %i.cd, align 8, !noalias !565007
  %.sroa.447.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cd, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(272) %.sroa.447.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(272) %.sroa.447, i64 272, i1 false), !noalias !565007
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.447)
  %exitcond84.not = icmp eq i64 %i.ce, %i.bi
  br i1 %exitcond84.not, label %_ZN18nickel_lang_parser3ast5alloc8AstAlloc10alloc_many17h3b32cf942828ed27E.exit, label %bb.t

_ZN18nickel_lang_parser3ast5alloc8AstAlloc10alloc_many17h3b32cf942828ed27E.exit: ; preds = %"_ZN7bumpalo13Bump$LT$_$GT$21alloc_slice_fill_iter28_$u7b$$u7b$closure$u7d$$u7d$17haae8ea4725f8dd62E.exit", %"_ZN7bumpalo13Bump$LT$_$GT$12alloc_layout17h711a5737d6c8d0dcE.exit.i.i8"
  %i.cf = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.cg = load i8, ptr %i.cf, align 8, !range !21, !noundef !19
  store ptr %.sroa.0.0.i.i.i, ptr %0, align 8
  %i.ch = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.j, ptr %i.ch, align 8
  %i.ci = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %.sroa.0.0.i.i.i9, ptr %i.ci, align 8
  %i.cj = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %i.bi, ptr %i.cj, align 8
  %i.ck = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i8 %i.cg, ptr %i.ck, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @"_ZN99_$LT$nickel_lang_parser..ast..typ..EnumRows$u20$as$u20$nickel_lang_parser..uniterm..FixTypeVars$GT$17fix_type_vars_env17hec4a5cdb500ff2dcE"(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([72 x i8]) align 8 captures(none) dereferenceable(72) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(40) %1, ptr noundef nonnull align 8 captures(none) %2, ptr noundef nonnull %3, ptr noundef %4, ptr noalias nofree noundef readonly align 4 captures(none) dead_on_return dereferenceable(12) %5) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 6 uses
  %i.b = alloca [16 x i8], align 8                ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr %3, ptr %i.b, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %4, ptr %i.c, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.d = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr @"_ZN3std4hash6random11RandomState3new4KEYS29_$u7b$$u7b$constant$u7d$$u7d$28_$u7b$$u7b$closure$u7d$$u7d$3VAL17h3d0bd8071983845cE") ; 5 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 16 ; 2 uses
  %i.f = load i8, ptr %i.e, align 8, !range !21, !noalias !565025, !noundef !19
  %i.g = trunc nuw i8 %i.f to i1
  br i1 %i.g, label %._ZN4core3ops8function6FnOnce9call_once17h6aa02063dcde1d9cE.exit_crit_edge.i.i.i.i, label %"_ZN3std3sys12thread_local6native4lazy20Storage$LT$T$C$D$GT$16get_or_init_slow17h9fd81b5b7b9c8ec0E.exit.i.i.i.i", !prof !22

._ZN4core3ops8function6FnOnce9call_once17h6aa02063dcde1d9cE.exit_crit_edge.i.i.i.i: ; preds = %bb.a
  %.pre.i.i.i.i = load i64, ptr %i.d, align 8, !noalias !565026
  %.phi.trans.insert.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %.pre1.i.i.i.i = load i64, ptr %.phi.trans.insert.i.i.i.i, align 8, !noalias !565026
  br label %bb.b

"_ZN3std3sys12thread_local6native4lazy20Storage$LT$T$C$D$GT$16get_or_init_slow17h9fd81b5b7b9c8ec0E.exit.i.i.i.i": ; preds = %bb.a
  %i.h = invoke { i64, i64 } @_ZN3std3sys6random5linux19hashmap_random_keys17he133c8f345d0b53aE()
          to label %.noexc unwind label %bb.d     ; 2 uses

.noexc:                                           ; preds = %"_ZN3std3sys12thread_local6native4lazy20Storage$LT$T$C$D$GT$16get_or_init_slow17h9fd81b5b7b9c8ec0E.exit.i.i.i.i"
  %i.i = extractvalue { i64, i64 } %i.h, 0
  %i.j = extractvalue { i64, i64 } %i.h, 1        ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store i64 %i.j, ptr %i.k, align 8, !noalias !565027
  store i8 1, ptr %i.e, align 8, !noalias !565027
  br label %bb.b

bb.b:                                             ; preds = %.noexc, %._ZN4core3ops8function6FnOnce9call_once17h6aa02063dcde1d9cE.exit_crit_edge.i.i.i.i
  %.pre-phi.i = phi i64 [ %.pre1.i.i.i.i, %._ZN4core3ops8function6FnOnce9call_once17h6aa02063dcde1d9cE.exit_crit_edge.i.i.i.i ], [ %i.j, %.noexc ]
  %i.l = phi i64 [ %.pre.i.i.i.i, %._ZN4core3ops8function6FnOnce9call_once17h6aa02063dcde1d9cE.exit_crit_edge.i.i.i.i ], [ %i.i, %.noexc ] ; 2 uses
  %i.m = add i64 %i.l, 1
  store i64 %i.m, ptr %i.d, align 8, !noalias !565026
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.a, ptr noundef nonnull align 8 dereferenceable(32) @1, i64 32, i1 false)
  %.sroa.43.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store i64 %i.l, ptr %.sroa.43.0..sroa_idx, align 8
  %.sroa.54.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  store i64 %.pre-phi.i, ptr %.sroa.54.0..sroa_idx, align 8
  call fastcc void @"_ZN99_$LT$nickel_lang_parser..ast..typ..EnumRows$u20$as$u20$nickel_lang_parser..uniterm..FixTypeVars$GT$17fix_type_vars_env6do_fix17hdbebde7f7f63193eE"(ptr noalias noundef align 8 captures(address) dereferenceable(72) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(40) %1, ptr noundef nonnull align 8 %2, ptr noundef nonnull %3, ptr noundef %4, ptr noalias noundef align 4 captures(address) dereferenceable(12) %5, ptr noalias noundef align 8 captures(address) dereferenceable(48) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret void

bb.c:                                             ; preds = %bb.d
  resume { ptr, i32 } %i.n

bb.d:                                             ; preds = %"_ZN3std3sys12thread_local6native4lazy20Storage$LT$T$C$D$GT$16get_or_init_slow17h9fd81b5b7b9c8ec0E.exit.i.i.i.i"
  %i.n = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr153drop_in_place$LT$nickel_lang_parser..environment..Environment$LT$nickel_lang_parser..identifier..Ident$C$nickel_lang_parser..uniterm..VarKindCell$GT$$GT$17h758f9c2ccdeb1babE"(ptr noalias noundef align 8 dereferenceable(16) %i.b) #53
          to label %bb.c unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #55
  unreachable
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @"_ZN99_$LT$nickel_lang_parser..ast..typ..EnumRows$u20$as$u20$nickel_lang_parser..uniterm..FixTypeVars$GT$17fix_type_vars_env6do_fix17hdbebde7f7f63193eE"(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(72) %0, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(40) %1, ptr noundef nonnull align 8 captures(none) %2, ptr noundef nonnull %3, ptr noundef %4, ptr noalias nofree noundef nonnull readonly align 4 captures(none) dead_on_return dereferenceable(12) %5, ptr noalias noundef nonnull align 8 captures(address) dead_on_return dereferenceable(48) %6) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %.sroa.444 = alloca [28 x i8], align 4          ; 2 uses
  %.sroa.5.sroa.5 = alloca [16 x i8], align 4     ; 6 uses
  %i.a = alloca [48 x i8], align 8                ; 4 uses
  %i.b = alloca [72 x i8], align 8                ; 13 uses
  %.sroa.631.sroa.8 = alloca [28 x i8], align 4   ; 7 uses
  %.sroa.325.sroa.0 = alloca [16 x i8], align 4   ; 2 uses
  %i.c = alloca [72 x i8], align 8                ; 15 uses
  %.sroa.613.sroa.8.sroa.0 = alloca [16 x i8], align 4 ; 7 uses
  %i.d = alloca [56 x i8], align 8                ; 5 uses
  %i.e = alloca [4 x i8], align 4                 ; 6 uses
  %i.f = alloca [16 x i8], align 8                ; 6 uses
  store ptr %3, ptr %i.f, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 8 ; 3 uses
  store ptr %4, ptr %i.g, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.i = load i32, ptr %i.h, align 8, !range !25, !noundef !19 ; 4 uses
  %i.j = icmp ne i32 %i.i, 4
  tail call void @llvm.assume(i1 %i.j)
  %i.k = add nsw i32 %i.i, -3
  %i.l = icmp samesign ugt i32 %i.i, 2
  %narrow = select i1 %i.l, i32 %i.k, i32 1
  switch i32 %narrow, label %bb.b [
    i32 0, label %bb.c
    i32 1, label %bb.e
    i32 2, label %bb.f
  ]

bb.b:                                             ; preds = %bb.a
  unreachable

bb.c:                                             ; preds = %bb.a
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 6, ptr %.sroa.3.0..sroa_idx, align 8
  store i32 25, ptr %0, align 8
  %.val186 = load ptr, ptr %6, align 8            ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %6, i64 8
  %.val187 = load i64, ptr %i.m, align 8, !noundef !19 ; 4 uses
  %i.n = icmp eq i64 %.val187, 0
  br i1 %i.n, label %.critedge176, label %_ZN9hashbrown3raw11TableLayout20calculate_layout_for17hb76643e6316511fcE.exit.i.i.i.i.i.i

_ZN9hashbrown3raw11TableLayout20calculate_layout_for17hb76643e6316511fcE.exit.i.i.i.i.i.i: ; preds = %bb.c
  %i.o = shl i64 %.val187, 2
  %i.p = icmp slt i64 %.val187, 4611686018427387900
  tail call void @llvm.assume(i1 %i.p)
  %i.q = and i64 %i.o, -16                        ; 2 uses
  %i.r = add i64 %i.q, 16                         ; 2 uses
  %i.s = add nsw i64 %.val187, 17
  %i.t = add i64 %i.s, %i.r                       ; 4 uses
  %i.u = icmp uge i64 %i.t, %i.r
  %i.v = icmp ult i64 %i.t, 9223372036854775793
  tail call void @llvm.assume(i1 %i.u)
  tail call void @llvm.assume(i1 %i.v)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val186) ]
  %i.w = icmp eq i64 %i.t, 0
  br i1 %i.w, label %.critedge176, label %bb.d

bb.d:                                             ; preds = %_ZN9hashbrown3raw11TableLayout20calculate_layout_for17hb76643e6316511fcE.exit.i.i.i.i.i.i
  %i.x = sub nuw nsw i64 -16, %i.q
  %i.y = getelementptr inbounds i8, ptr %.val186, i64 %i.x
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.y, i64 noundef %i.t, i64 noundef range(i64 1, -9223372036854775807) 16) #54
  br label %.critedge176

bb.e:                                             ; preds = %bb.a
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.aa = load ptr, ptr %i.z, align 8, !nonnull !19, !align !24, !noundef !19 ; 2 uses
  %i.ab = load ptr, ptr %1, align 8, !align !24, !noundef !19 ; 2 uses
  %.not166 = icmp eq ptr %i.ab, null
  br i1 %.not166, label %bb.r, label %bb.q

bb.f:                                             ; preds = %bb.a
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 12
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 28
  %.sroa.2.0.copyload = load i32, ptr %.sroa.2.0..sroa_idx, align 4 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  store i32 %.sroa.2.0.copyload, ptr %i.e, align 4
  br label %bb.g

bb.g:                                             ; preds = %"_ZN4core4iter6traits8iterator8Iterator8find_map5check28_$u7b$$u7b$closure$u7d$$u7d$17h408ffa39bb93d464E.exit.i.i", %bb.f
  %.sroa.03.0.i14.i.i = phi ptr [ %.sroa.03.0.i.i.i, %"_ZN4core4iter6traits8iterator8Iterator8find_map5check28_$u7b$$u7b$closure$u7d$$u7d$17h408ffa39bb93d464E.exit.i.i" ], [ %i.f, %bb.f ] ; 3 uses
  %.not.i.i.i = icmp eq ptr %.sroa.03.0.i14.i.i, null
  br i1 %.not.i.i.i, label %bb.af, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ad = load ptr, ptr %.sroa.03.0.i14.i.i, align 8, !noalias !565076, !nonnull !19, !noundef !19 ; 5 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %.sroa.03.0.i14.i.i, i64 8
  %i.af = load ptr, ptr %i.ae, align 8, !noalias !565076, !noundef !19 ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.af, null
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 16
  %.sroa.03.0.i.i.i = select i1 %.not4.i.i.i, ptr null, ptr %i.ag
  call void @llvm.experimental.noalias.scope.decl(metadata !565077)
  call void @llvm.experimental.noalias.scope.decl(metadata !565078)
  call void @llvm.experimental.noalias.scope.decl(metadata !565079)
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ad, i64 40
  %i.ai = load i64, ptr %i.ah, align 8, !alias.scope !565080, !noalias !565081, !noundef !19
  %i.aj = icmp eq i64 %i.ai, 0
  br i1 %i.aj, label %"_ZN4core4iter6traits8iterator8Iterator8find_map5check28_$u7b$$u7b$closure$u7d$$u7d$17h408ffa39bb93d464E.exit.i.i", label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ad, i64 16
  %i.al = getelementptr inbounds nuw i8, ptr %i.ad, i64 48
  %.val.i.i.i.i.i = load i64, ptr %i.al, align 8, !alias.scope !565080, !noalias !565081, !noundef !19
  %i.am = getelementptr inbounds nuw i8, ptr %i.ad, i64 56
  %.val5.i.i.i.i.i = load i64, ptr %i.am, align 8, !alias.scope !565080, !noalias !565081, !noundef !19
  %i.an = call fastcc noundef i64 @_ZN4core4hash11BuildHasher8hash_one17ha5ecd2a150def698E(i64 %.val.i.i.i.i.i, i64 %.val5.i.i.i.i.i, ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(4) %i.e), !noalias !565082 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !565083)
  call void @llvm.experimental.noalias.scope.decl(metadata !565084)
  %i.ao = lshr i64 %i.an, 57
  %i.ap = trunc nuw nsw i64 %i.ao to i8
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ad, i64 24
  %i.ar = load i64, ptr %i.aq, align 8, !alias.scope !565085, !noalias !565086, !noundef !19 ; 2 uses
  %i.as = load ptr, ptr %i.ak, align 8, !alias.scope !565085, !noalias !565086, !nonnull !19, !noundef !19 ; 2 uses
  %.sroa.0.0.vec.insert.i.i.i.i.i.i.i = insertelement <16 x i8> poison, i8 %i.ap, i64 0
  %.sroa.0.15.vec.insert.i.i.i.i.i.i.i = shufflevector <16 x i8> %.sroa.0.0.vec.insert.i.i.i.i.i.i.i, <16 x i8> poison, <16 x i32> zeroinitializer
  br label %bb.j

bb.j:                                             ; preds = %bb.l, %bb.i
  %.sroa.9.0.i.i.i.i.i.i.i = phi i64 [ 0, %bb.i ], [ %i.bj, %bb.l ]
  %.pn.i.i.i.i.i.i = phi i64 [ %i.an, %bb.i ], [ %i.bk, %bb.l ]
  %.sroa.01.0.i.i.i.i.i.i.i = and i64 %.pn.i.i.i.i.i.i, %i.ar ; 3 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 %.sroa.01.0.i.i.i.i.i.i.i
  %.sroa.0.0.copyload.i26.i.i.i.i.i.i = load <16 x i8>, ptr %i.at, align 1, !noalias !565087 ; 2 uses
  %i.au = icmp eq <16 x i8> %.sroa.0.0.copyload.i26.i.i.i.i.i.i, %.sroa.0.15.vec.insert.i.i.i.i.i.i.i
  %i.av = bitcast <16 x i1> %i.au to i16          ; 2 uses
  %.not.i.not32.i.i.i.i.i.i = icmp eq i16 %i.av, 0
  br i1 %.not.i.not32.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %bb.j, %bb.k
  %.sroa.06.0.i33.i.i.i.i.i.i = phi i16 [ %i.bi, %bb.k ], [ %i.av, %bb.j ] ; 3 uses
  %i.aw = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.06.0.i33.i.i.i.i.i.i, i1 true)
  %i.ax = zext nneg i16 %i.aw to i64
  %i.ay = add i64 %.sroa.01.0.i.i.i.i.i.i.i, %i.ax
  %i.az = and i64 %i.ay, %i.ar
  %i.ba = sub nsw i64 0, %i.az
  %i.bb = getelementptr inbounds [72 x i8], ptr %i.as, i64 %i.ba ; 2 uses
  %i.bc = getelementptr inbounds i8, ptr %i.bb, i64 -72
  %.val3.i.i.i.i.i.i.i = load i32, ptr %i.bc, align 4, !noalias !565088, !noundef !19
  %i.bd = icmp eq i32 %.sroa.2.0.copyload, %.val3.i.i.i.i.i.i.i
  br i1 %i.bd, label %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$4find17h00091025c6fa60a7E.exit.i.i.i.i.i", label %bb.k, !prof !22

._crit_edge.i.i.i.i.i.i:                          ; preds = %bb.k, %bb.j
  %i.be = icmp eq <16 x i8> %.sroa.0.0.copyload.i26.i.i.i.i.i.i, splat (i8 -1)
  %i.bf = bitcast <16 x i1> %i.be to i16
  %i.bg = icmp eq i16 %i.bf, 0
  br i1 %i.bg, label %bb.l, label %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$4find17h00091025c6fa60a7E.exit.i.i.i.i.i", !prof !20

bb.k:                                             ; preds = %.lr.ph.i.i.i.i.i.i
  %i.bh = add i16 %.sroa.06.0.i33.i.i.i.i.i.i, -1
  %i.bi = and i16 %i.bh, %.sroa.06.0.i33.i.i.i.i.i.i ; 2 uses
  %.not.i.not.i.i.i.i.i.i = icmp eq i16 %i.bi, 0
  br i1 %.not.i.not.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i

bb.l:                                             ; preds = %._crit_edge.i.i.i.i.i.i
  %i.bj = add i64 %.sroa.9.0.i.i.i.i.i.i.i, 16    ; 2 uses
  %i.bk = add i64 %.sroa.01.0.i.i.i.i.i.i.i, %i.bj
  br label %bb.j

"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$4find17h00091025c6fa60a7E.exit.i.i.i.i.i": ; preds = %._crit_edge.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i
  %i.bl = phi ptr [ %i.bb, %.lr.ph.i.i.i.i.i.i ], [ null, %._crit_edge.i.i.i.i.i.i ] ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.bl, null
  %i.bm = getelementptr inbounds i8, ptr %i.bl, i64 -72
  %.sroa.0.1.i.i.i.i.i = select i1 %.not.i.i.i.i.i, ptr null, ptr %i.bm
  br label %"_ZN4core4iter6traits8iterator8Iterator8find_map5check28_$u7b$$u7b$closure$u7d$$u7d$17h408ffa39bb93d464E.exit.i.i"

"_ZN4core4iter6traits8iterator8Iterator8find_map5check28_$u7b$$u7b$closure$u7d$$u7d$17h408ffa39bb93d464E.exit.i.i": ; preds = %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$4find17h00091025c6fa60a7E.exit.i.i.i.i.i", %bb.h
  %.sroa.0.0.i.i.i.i.i = phi ptr [ %.sroa.0.1.i.i.i.i.i, %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$4find17h00091025c6fa60a7E.exit.i.i.i.i.i" ], [ null, %bb.h ] ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %.sroa.0.0.i.i.i.i.i, null
  %i.bn = getelementptr i8, ptr %.sroa.0.0.i.i.i.i.i, i64 8 ; 2 uses
  %.not711.i.i = icmp eq ptr %i.bn, null
  %.not7.i.i = or i1 %.not.i.i.i.i, %.not711.i.i
  br i1 %.not7.i.i, label %bb.g, label %"_ZN18nickel_lang_parser11environment24Environment$LT$K$C$V$GT$3get17h75976dbcc5f5eceaE.exit"

bb.m:                                             ; preds = %"_ZN18nickel_lang_parser11environment24Environment$LT$K$C$V$GT$3get17h75976dbcc5f5eceaE.exit"
  %lpad.thr_comm.split-lp241 = landingpad { ptr, i32 }
          cleanup
  br label %.thread235

.critedge176:                                     ; preds = %bb.ag, %_ZN9hashbrown3raw11TableLayout20calculate_layout_for17hb76643e6316511fcE.exit.i.i.i.i.i.i191, %bb.af, %bb.d, %_ZN9hashbrown3raw11TableLayout20calculate_layout_for17hb76643e6316511fcE.exit.i.i.i.i.i.i, %bb.c, %bb.ai
  %i.bo = load i64, ptr %3, align 8, !noalias !565089, !noundef !19
  %i.bp = add i64 %i.bo, -1                       ; 2 uses
  store i64 %i.bp, ptr %3, align 8, !noalias !565089
  %i.bq = icmp eq i64 %i.bp, 0
  br i1 %i.bq, label %bb.n, label %"_ZN4core3ptr166drop_in_place$LT$alloc..rc..Rc$LT$std..collections..hash..map..HashMap$LT$nickel_lang_parser..identifier..Ident$C$nickel_lang_parser..uniterm..VarKindCell$GT$$GT$$GT$17h48273f7d9d9be331E.exit.i"

bb.n:                                             ; preds = %.critedge176
  call void @"_ZN5alloc2rc15Rc$LT$T$C$A$GT$9drop_slow17h6b9e06af2179a15aE"(ptr noalias noundef nonnull readonly align 8 dereferenceable(16) %i.f), !inline_history !31
  br label %"_ZN4core3ptr166drop_in_place$LT$alloc..rc..Rc$LT$std..collections..hash..map..HashMap$LT$nickel_lang_parser..identifier..Ident$C$nickel_lang_parser..uniterm..VarKindCell$GT$$GT$$GT$17h48273f7d9d9be331E.exit.i"

"_ZN4core3ptr166drop_in_place$LT$alloc..rc..Rc$LT$std..collections..hash..map..HashMap$LT$nickel_lang_parser..identifier..Ident$C$nickel_lang_parser..uniterm..VarKindCell$GT$$GT$$GT$17h48273f7d9d9be331E.exit.i": ; preds = %bb.n, %.critedge176
  %i.br = icmp eq ptr %4, null
  br i1 %i.br, label %"_ZN4core3ptr153drop_in_place$LT$nickel_lang_parser..environment..Environment$LT$nickel_lang_parser..identifier..Ident$C$nickel_lang_parser..uniterm..VarKindCell$GT$$GT$17h758f9c2ccdeb1babE.exit", label %bb.o

bb.o:                                             ; preds = %"_ZN4core3ptr166drop_in_place$LT$alloc..rc..Rc$LT$std..collections..hash..map..HashMap$LT$nickel_lang_parser..identifier..Ident$C$nickel_lang_parser..uniterm..VarKindCell$GT$$GT$$GT$17h48273f7d9d9be331E.exit.i"
  %i.bs = load i64, ptr %4, align 8, !noalias !565090, !noundef !19
  %i.bt = add i64 %i.bs, -1                       ; 2 uses
  store i64 %i.bt, ptr %4, align 8, !noalias !565090
  %i.bu = icmp eq i64 %i.bt, 0
  br i1 %i.bu, label %bb.p, label %"_ZN4core3ptr153drop_in_place$LT$nickel_lang_parser..environment..Environment$LT$nickel_lang_parser..identifier..Ident$C$nickel_lang_parser..uniterm..VarKindCell$GT$$GT$17h758f9c2ccdeb1babE.exit"

bb.p:                                             ; preds = %bb.o
end_hunk_8
