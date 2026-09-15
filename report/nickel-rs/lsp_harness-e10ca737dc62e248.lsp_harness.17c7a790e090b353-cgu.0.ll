Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/nickel-rs/original/lsp_harness-e10ca737dc62e248.lsp_harness.17c7a790e090b353-cgu.0?download=true
inline.NumInlined: 14236
inline.NumDeleted: 7074
loop-unroll.NumCompletelyUnrolled: 20
loop-unroll.NumRuntimeUnrolled: 24
loop-unroll.NumUnrolled: 46
begin_hunk_0_@_ZN11lsp_harness11TestHarness11request_dyn17hd03fa646217f1f01E:bb.a
  %i.cdj = inttoptr i64 %.sroa.7.0.copyload.i.i.i6.i to ptr ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cs), !noalias !14280
  call void @llvm.experimental.noalias.scope.decl(metadata !14283)
  call void @llvm.experimental.noalias.scope.decl(metadata !14284)
  %.not.i.i.i.i.i = icmp eq i64 %.sroa.016.0.copyload.i.i.i.i, -9223372036854775808
  br i1 %.not.i.i.i.i.i, label %bb.abz, label %bb.abt, !prof !60

bb.abt:                                           ; preds = %bb.abs
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cu), !noalias !14285
  store i64 %.sroa.016.0.copyload.i.i.i.i, ptr %i.cu, align 8, !noalias !14286
  %.sroa.6.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.cu, i64 8 ; 2 uses
  store i64 %i.cdi, ptr %.sroa.6.0..sroa_idx.i.i.i.i, align 8, !noalias !14286
  %.sroa.6.sroa.6.0..sroa.6.0..sroa_idx.sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.cu, i64 16
  store ptr %i.cdj, ptr %.sroa.6.sroa.6.0..sroa.6.0..sroa_idx.sroa_idx.i.i.i.i, align 8, !noalias !14286
  %.sroa.6.sroa.7.0..sroa.6.0..sroa_idx.sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.cu, i64 24
  store <2 x i64> %i.cdh, ptr %.sroa.6.sroa.7.0..sroa.6.0..sroa_idx.sroa_idx.i.i.i.i, align 8, !noalias !14286
  invoke void @_ZN4core6result13unwrap_failed17h0501379eaec3e720E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @843, i64 noundef 43, ptr noundef nonnull align 1 %i.cu, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @846, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @345) #42
          to label %bb.abw unwind label %bb.abu, !noalias !14287

bb.abu:                                           ; preds = %bb.abt
  %i.cdk = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !14288)
  call void @llvm.experimental.noalias.scope.decl(metadata !14289), !noalias !14290
  %.val.i.i10.i.i.i.i = load i64, ptr %i.cu, align 8, !range !29, !alias.scope !14291, !noalias !14285, !noundef !28 ; 2 uses
  %i.cdl = icmp eq i64 %.val.i.i10.i.i.i.i, 0
  br i1 %i.cdl, label %.body.i452, label %bb.abv

bb.abv:                                           ; preds = %bb.abu
  %.val1.i.i.i.i.i18.i = load ptr, ptr %.sroa.6.0..sroa_idx.i.i.i.i, align 8, !alias.scope !14291, !noalias !14285, !nonnull !28, !noundef !28
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i.i.i18.i, i64 noundef %.val.i.i10.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #41, !noalias !14292
  br label %.body.i452

bb.abw:                                           ; preds = %bb.abt
  unreachable

bb.abx:                                           ; preds = %bb.abm, %bb.abk
  %eh.lpad-body.ph.i.i.i.i = phi { ptr, i32 } [ %i.ccz, %bb.abk ], [ %i.cda, %bb.abm ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !14293)
  %.val.i.i.i.i2.i = load i64, ptr %i.cv, align 8, !range !29, !alias.scope !14293, !noalias !14264, !noundef !28 ; 2 uses
  %i.cdm = icmp eq i64 %.val.i.i.i.i2.i, 0
  br i1 %i.cdm, label %.body.i452, label %bb.aby

bb.aby:                                           ; preds = %bb.abx
  %.val1.i.i.i.i3.i = load ptr, ptr %i.ccp, align 8, !alias.scope !14293, !noalias !14264, !nonnull !28, !noundef !28
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i.i3.i, i64 noundef %.val.i.i.i.i2.i, i64 noundef range(i64 1, -9223372036854775807) 1) #41, !noalias !14294
  br label %.body.i452

bb.abz:                                           ; preds = %bb.abs, %.thread.i.i.i.i
  %.sroa.6.sroa.0.048.i.i.i.i = phi i64 [ %.sroa.016.0.copyload.i.i.i.i, %.thread.i.i.i.i ], [ %i.cdi, %bb.abs ]
  %.sroa.6.sroa.6.047.i.i.i.i = phi ptr [ %.sroa.619.0.copyload.i.i.i.i, %.thread.i.i.i.i ], [ %i.cdj, %bb.abs ]
  %.sroa.6.sroa.7.046.i.i.i.i = phi i64 [ %.sroa.7.0.copyload.i.i.i6.i, %.thread.i.i.i.i ], [ %.sroa.833.24.copyload.i.i.i.i, %bb.abs ]
  store i64 %.sroa.6.sroa.0.048.i.i.i.i, ptr %i.cx, align 8, !alias.scope !14295, !noalias !14296
  %.sroa.6.sroa.6.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.cx, i64 8 ; 4 uses
  store ptr %.sroa.6.sroa.6.047.i.i.i.i, ptr %.sroa.6.sroa.6.0..sroa_idx.i.i.i.i, align 8, !alias.scope !14295, !noalias !14296
  %.sroa.6.sroa.7.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.cx, i64 16
  store i64 %.sroa.6.sroa.7.046.i.i.i.i, ptr %.sroa.6.sroa.7.0..sroa_idx.i.i.i.i, align 8, !alias.scope !14295, !noalias !14296
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cv), !noalias !14264
  store ptr %i.cx, ptr %i.cy, align 8, !noalias !14261
  %.sroa.47.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.cy, i64 8
  store ptr @"_ZN60_$LT$alloc..string..String$u20$as$u20$core..fmt..Display$GT$3fmt17h86a528f6a97fe10dE", ptr %.sroa.47.0..sroa_idx.i.i.i, align 8, !noalias !14261
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cr), !noalias !14297
  store ptr @1017, ptr %i.cr, align 8, !noalias !14298
  %.sroa.5.0..sroa_idx.i.i7.i = getelementptr inbounds nuw i8, ptr %i.cr, i64 8
  store i64 2, ptr %.sroa.5.0..sroa_idx.i.i7.i, align 8, !noalias !14298
  %.sroa.7.0..sroa_idx.i.i8.i = getelementptr inbounds nuw i8, ptr %i.cr, i64 16
  store ptr %i.cy, ptr %.sroa.7.0..sroa_idx.i.i8.i, align 8, !noalias !14298
  %.sroa.8.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.cr, i64 24
  store i64 1, ptr %.sroa.8.0..sroa_idx.i.i.i, align 8, !noalias !14298
  %.sroa.10.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.cr, i64 32
  store ptr null, ptr %.sroa.10.0..sroa_idx.i.i.i, align 8, !noalias !14298
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cq), !noalias !14299
  store ptr %i.ccn, ptr %i.cq, align 8, !noalias !14299
  %i.cdn = getelementptr inbounds nuw i8, ptr %i.cq, i64 8 ; 5 uses
  store ptr null, ptr %i.cdn, align 8, !noalias !14299
  %i.cdo = invoke noundef zeroext i1 @_ZN4core3fmt5write17h80461e1e45e4fdd2E(ptr noundef nonnull align 1 %i.cq, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) @776, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.cr)
          to label %bb.acc unwind label %bb.aca, !noalias !14300

bb.aca:                                           ; preds = %bb.acg, %bb.abz
  %i.cdp = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.cdq = load ptr, ptr %i.cdn, align 8, !alias.scope !14301, !noalias !14299, !noundef !28
  %i.cdr = icmp eq ptr %i.cdq, null
  br i1 %i.cdr, label %.body.i.i9.i, label %bb.acb

bb.acb:                                           ; preds = %bb.aca
  invoke void @"_ZN4core3ptr42drop_in_place$LT$std..io..error..Error$GT$17h018e918931649ff7E"(ptr noalias noundef nonnull readonly align 8 dereferenceable(8) %i.cdn)
          to label %.body.i.i9.i unwind label %bb.aci, !noalias !14302

bb.acc:                                           ; preds = %bb.abz
  %i.cds = load ptr, ptr %i.cdn, align 8, !noalias !14299, !noundef !28 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.cds, null    ; 2 uses
  br i1 %i.cdo, label %bb.acd, label %bb.ace

bb.acd:                                           ; preds = %bb.acc
  br i1 %.not.i.i.i.i.i.i, label %bb.acg, label %bb.acl, !prof !30

bb.ace:                                           ; preds = %bb.acc
  br i1 %.not.i.i.i.i.i.i, label %bb.acn, label %bb.acf

bb.acf:                                           ; preds = %bb.ace
  invoke void @"_ZN4core3ptr42drop_in_place$LT$std..io..error..Error$GT$17h018e918931649ff7E"(ptr noalias noundef nonnull readonly align 8 dereferenceable(8) %i.cdn)
          to label %bb.acn unwind label %bb.acj, !noalias !14254

bb.acg:                                           ; preds = %bb.acd
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cp), !noalias !14299
  store ptr @774, ptr %i.cp, align 8, !noalias !14299
  %i.cdt = getelementptr inbounds nuw i8, ptr %i.cp, i64 8
  store i64 1, ptr %i.cdt, align 8, !noalias !14299
  %i.cdu = getelementptr inbounds nuw i8, ptr %i.cp, i64 32
  store ptr null, ptr %i.cdu, align 8, !noalias !14299
  %i.cdv = getelementptr inbounds nuw i8, ptr %i.cp, i64 16
  store ptr inttoptr (i64 8 to ptr), ptr %i.cdv, align 8, !noalias !14299
  %i.cdw = getelementptr inbounds nuw i8, ptr %i.cp, i64 24
  store i64 0, ptr %i.cdw, align 8, !noalias !14299
  invoke void @_ZN4core9panicking9panic_fmt17h92c8e5abe71dd8d1E(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.cp, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @775) #42
          to label %bb.ach unwind label %bb.aca, !noalias !14302

bb.ach:                                           ; preds = %bb.acg
  unreachable

bb.aci:                                           ; preds = %bb.acb
  %i.cdx = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #40, !noalias !14302
  unreachable

bb.acj:                                           ; preds = %bb.acf
  %i.cdy = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i9.i

.body.i.i9.i:                                     ; preds = %bb.acj, %bb.acb, %bb.aca
  %eh.lpad-body.i.i.i = phi { ptr, i32 } [ %i.cdy, %bb.acj ], [ %i.cdp, %bb.acb ], [ %i.cdp, %bb.aca ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !14303)
  call void @llvm.experimental.noalias.scope.decl(metadata !14304)
  %.val.i.i15.i.i.i = load i64, ptr %i.cx, align 8, !range !29, !alias.scope !14305, !noalias !14261, !noundef !28 ; 2 uses
  %i.cdz = icmp eq i64 %.val.i.i15.i.i.i, 0
  br i1 %i.cdz, label %.body.i452, label %bb.ack

bb.ack:                                           ; preds = %.body.i.i9.i
  %.val1.i.i16.i.i.i = load ptr, ptr %.sroa.6.sroa.6.0..sroa_idx.i.i.i.i, align 8, !alias.scope !14305, !noalias !14261, !nonnull !28, !noundef !28
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i16.i.i.i, i64 noundef %.val.i.i15.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #41, !noalias !14306
  br label %.body.i452

bb.acl:                                           ; preds = %bb.acd
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cq), !noalias !14299
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cr), !noalias !14297
  call void @llvm.experimental.noalias.scope.decl(metadata !14307)
  call void @llvm.experimental.noalias.scope.decl(metadata !14308)
  %.val.i.i17.i.i.i = load i64, ptr %i.cx, align 8, !range !29, !alias.scope !14309, !noalias !14261, !noundef !28 ; 2 uses
  %i.cea = icmp eq i64 %.val.i.i17.i.i.i, 0
  br i1 %i.cea, label %"_ZN79_$LT$core..option..Option$LT$T$GT$$u20$as$u20$lsp_harness..output..LspDebug$GT$5debug17he27c4090f14fee29E.exit.thread32.i", label %bb.acm

bb.acm:                                           ; preds = %bb.acl
  %.val1.i.i18.i.i.i = load ptr, ptr %.sroa.6.sroa.6.0..sroa_idx.i.i.i.i, align 8, !alias.scope !14309, !noalias !14261, !nonnull !28, !noundef !28
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i18.i.i.i, i64 noundef %.val.i.i17.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #41, !noalias !14310
  br label %"_ZN79_$LT$core..option..Option$LT$T$GT$$u20$as$u20$lsp_harness..output..LspDebug$GT$5debug17he27c4090f14fee29E.exit.thread32.i"

"_ZN79_$LT$core..option..Option$LT$T$GT$$u20$as$u20$lsp_harness..output..LspDebug$GT$5debug17he27c4090f14fee29E.exit.thread32.i": ; preds = %bb.acm, %bb.acl
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cx), !noalias !14261
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cy), !noalias !14261
  br label %bb.afn

bb.acn:                                           ; preds = %bb.acf, %bb.ace
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cq), !noalias !14299
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cr), !noalias !14297
  call void @llvm.experimental.noalias.scope.decl(metadata !14311)
  call void @llvm.experimental.noalias.scope.decl(metadata !14312)
  %.val.i.i20.i.i.i = load i64, ptr %i.cx, align 8, !range !29, !alias.scope !14313, !noalias !14261, !noundef !28 ; 2 uses
  %i.ceb = icmp eq i64 %.val.i.i20.i.i.i, 0
  br i1 %i.ceb, label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h5c0850ed224dc6b9E.exit22.i.i.i", label %bb.aco

bb.aco:                                           ; preds = %bb.acn
  %.val1.i.i21.i.i.i = load ptr, ptr %.sroa.6.sroa.6.0..sroa_idx.i.i.i.i, align 8, !alias.scope !14313, !noalias !14261, !nonnull !28, !noundef !28
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i21.i.i.i, i64 noundef %.val.i.i20.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #41, !noalias !14314
  br label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h5c0850ed224dc6b9E.exit22.i.i.i"

"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h5c0850ed224dc6b9E.exit22.i.i.i": ; preds = %bb.aco, %bb.acn
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cx), !noalias !14261
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cy), !noalias !14261
  %i.cec = call i64 @llvm.umax.i64(i64 %.sroa.046.050.i.i, i64 -9223372036854775808)
  %i.ced = and i64 %i.cec, 9223372036854775807
  switch i64 %i.ced, label %bb.acp [
    i64 0, label %bb.acq
    i64 1, label %bb.acr
    i64 2, label %bb.adk
  ]

bb.acp:                                           ; preds = %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h5c0850ed224dc6b9E.exit22.i.i.i"
  unreachable

bb.acq:                                           ; preds = %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h5c0850ed224dc6b9E.exit22.i.i.i"
  %i.cee = invoke fastcc noundef ptr @"_ZN73_$LT$lsp_types..MarkedString$u20$as$u20$lsp_harness..output..LspDebug$GT$5debug17h7af7e328a5676fecE"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(72) %i.eq, ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ccn)
          to label %"_ZN79_$LT$core..option..Option$LT$T$GT$$u20$as$u20$lsp_harness..output..LspDebug$GT$5debug17he27c4090f14fee29E.exit.i" unwind label %bb.afl, !noalias !14254

bb.acr:                                           ; preds = %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h5c0850ed224dc6b9E.exit22.i.i.i"
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cw), !noalias !14261
  %.val10.i.i.i = load ptr, ptr %.sroa.13.0..sroa_idx.i450, align 8, !alias.scope !14315, !noalias !14316, !nonnull !28, !noundef !28 ; 2 uses
  %i.cef = getelementptr inbounds nuw i8, ptr %i.eq, i64 24
  %.val11.i.i.i = load i64, ptr %i.cef, align 8, !alias.scope !14315, !noalias !14316, !noundef !28 ; 8 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !14317)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.co), !noalias !14318
  %i.ceg = mul i64 %.val11.i.i.i, 48              ; 3 uses
  %or.cond.i.i.i.i.i.i.i.i = icmp ugt i64 %.val11.i.i.i, 192153584101141162
  br i1 %or.cond.i.i.i.i.i.i.i.i, label %bb.act, label %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i.i, !prof !44

_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i.i: ; preds = %bb.acr
  %i.ceh = icmp eq i64 %i.ceg, 0
  br i1 %i.ceh, label %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17hf5149a4291ac7aa1E.exit.thread.i.i.i.i.i", label %bb.acs

"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17hf5149a4291ac7aa1E.exit.thread.i.i.i.i.i": ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i.i
  %i.cei = icmp eq i64 %.val11.i.i.i, 0
  call void @llvm.assume(i1 %i.cei)
  store i64 0, ptr %i.co, align 8, !noalias !14318
  %i.cej = getelementptr inbounds nuw i8, ptr %i.co, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %i.cej, align 8, !noalias !14318
  %i.cek = getelementptr inbounds nuw i8, ptr %i.co, i64 16
  br label %"_ZN67_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h1cb09a615c336eecE.exit.i.i.i"

bb.acs:                                           ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i.i
  call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #41, !noalias !14319
  %i.cel = call noundef align 8 ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef %i.ceg, i64 noundef range(i64 1, 9) 8) #41, !noalias !14319 ; 3 uses
  %i.cem = icmp eq ptr %i.cel, null
  br i1 %i.cem, label %bb.act, label %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17hf5149a4291ac7aa1E.exit.i.i.i.i13.i"

bb.act:                                           ; preds = %bb.acs, %bb.acr
  %.sroa.4.0.ph.i.i.i.i.i.i = phi i64 [ 8, %bb.acs ], [ 0, %bb.acr ]
  invoke void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef %.sroa.4.0.ph.i.i.i.i.i.i, i64 %i.ceg, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @1034) #42
          to label %.noexc21.i unwind label %bb.afl, !noalias !14254

.noexc21.i:                                       ; preds = %bb.act
  unreachable

"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17hf5149a4291ac7aa1E.exit.i.i.i.i13.i": ; preds = %bb.acs
  store i64 %.val11.i.i.i, ptr %i.co, align 8, !noalias !14318
  %i.cen = getelementptr inbounds nuw i8, ptr %i.co, i64 8
  store ptr %i.cel, ptr %i.cen, align 8, !noalias !14318
  %i.ceo = getelementptr inbounds nuw i8, ptr %i.co, i64 16 ; 4 uses
  %i.cep = getelementptr inbounds nuw [48 x i8], ptr %.val10.i.i.i, i64 %.val11.i.i.i
  %2 = icmp eq i64 %.val11.i.i.i, 0
  br i1 %2, label %"_ZN67_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h1cb09a615c336eecE.exit.i.i.i", label %.lr.ph.i.i.i.i.i462

.lr.ph.i.i.i.i.i462:                              ; preds = %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17hf5149a4291ac7aa1E.exit.i.i.i.i13.i"
  %3 = getelementptr inbounds nuw i8, ptr %i.cm, i64 24
  %4 = getelementptr inbounds nuw i8, ptr %i.cn, i64 8
  br label %bb.acu

bb.acu:                                           ; preds = %"_ZN62_$LT$lsp_types..MarkedString$u20$as$u20$core..clone..Clone$GT$5clone17hd1c3234b869f9472E.exit.i.i.i.i.i", %.lr.ph.i.i.i.i.i462
  %.sroa.013.026.i.i.i.i.i = phi ptr [ %.val10.i.i.i, %.lr.ph.i.i.i.i.i462 ], [ %i.ces, %"_ZN62_$LT$lsp_types..MarkedString$u20$as$u20$core..clone..Clone$GT$5clone17hd1c3234b869f9472E.exit.i.i.i.i.i" ] ; 6 uses
  %.sroa.7.025.i.i.i.i.i = phi i64 [ 0, %.lr.ph.i.i.i.i.i462 ], [ %i.cet, %"_ZN62_$LT$lsp_types..MarkedString$u20$as$u20$core..clone..Clone$GT$5clone17hd1c3234b869f9472E.exit.i.i.i.i.i" ] ; 3 uses
  %.sroa.10.024.i.i.i.i.i = phi i64 [ %.val11.i.i.i, %.lr.ph.i.i.i.i.i462 ], [ %i.ceq, %"_ZN62_$LT$lsp_types..MarkedString$u20$as$u20$core..clone..Clone$GT$5clone17hd1c3234b869f9472E.exit.i.i.i.i.i" ]
  %i.ceq = add nsw i64 %.sroa.10.024.i.i.i.i.i, -1 ; 2 uses
  %i.cer = icmp eq ptr %.sroa.013.026.i.i.i.i.i, %i.cep
  br i1 %i.cer, label %"_ZN67_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h1cb09a615c336eecE.exit.i.i.i", label %bb.acv

.loopexit.i.i.i.i.i463:                           ; preds = %bb.acz, %bb.acw
  %lpad.loopexit.i.i.i.i.i464 = landingpad { ptr, i32 }
          cleanup
  br label %bb.ada

bb.acv:                                           ; preds = %bb.acu
  %i.ces = getelementptr inbounds nuw i8, ptr %.sroa.013.026.i.i.i.i.i, i64 48
  %i.cet = add nuw nsw i64 %.sroa.7.025.i.i.i.i.i, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cn), !noalias !14318
  call void @llvm.experimental.noalias.scope.decl(metadata !14320)
  call void @llvm.experimental.noalias.scope.decl(metadata !14321)
  %i.ceu = load i64, ptr %.sroa.013.026.i.i.i.i.i, align 8, !range !34, !alias.scope !14322, !noalias !14323, !noundef !28
  %.not.i.i.i23.i.i.i = icmp eq i64 %i.ceu, -9223372036854775808
  br i1 %.not.i.i.i23.i.i.i, label %bb.acz, label %bb.acw

bb.acw:                                           ; preds = %bb.acv
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cm)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cl), !noalias !14324
  invoke void @"_ZN60_$LT$alloc..string..String$u20$as$u20$core..clone..Clone$GT$5clone17h123bb51dd192bfa5E"(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.cl, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %.sroa.013.026.i.i.i.i.i, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @937)
          to label %.noexc.i.i.i.i.i unwind label %.loopexit.i.i.i.i.i463, !noalias !14325

.noexc.i.i.i.i.i:                                 ; preds = %bb.acw
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ck), !noalias !14324
  %i.cev = getelementptr inbounds nuw i8, ptr %.sroa.013.026.i.i.i.i.i, i64 24
  invoke void @"_ZN60_$LT$alloc..string..String$u20$as$u20$core..clone..Clone$GT$5clone17h123bb51dd192bfa5E"(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.ck, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.cev, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @937)
          to label %"_ZN64_$LT$lsp_types..LanguageString$u20$as$u20$core..clone..Clone$GT$5clone17ha0508ffdcb803748E.exit.i.i.i.i.i.i" unwind label %bb.acx, !noalias !14326

bb.acx:                                           ; preds = %.noexc.i.i.i.i.i
  %i.cew = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !14327)
  call void @llvm.experimental.noalias.scope.decl(metadata !14328)
  %.val.i.i.i.i.i.i.i.i.i465 = load i64, ptr %i.cl, align 8, !range !29, !alias.scope !14329, !noalias !14324, !noundef !28 ; 2 uses
  %i.cex = icmp eq i64 %.val.i.i.i.i.i.i.i.i.i465, 0
  br i1 %i.cex, label %bb.ada, label %bb.acy

bb.acy:                                           ; preds = %bb.acx
  %i.cey = getelementptr inbounds nuw i8, ptr %i.cl, i64 8
  %.val1.i.i.i.i.i.i.i.i.i466 = load ptr, ptr %i.cey, align 8, !alias.scope !14329, !noalias !14324, !nonnull !28, !noundef !28
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i.i.i.i.i.i.i466, i64 noundef %.val.i.i.i.i.i.i.i.i.i465, i64 noundef range(i64 1, -9223372036854775807) 1) #41, !noalias !14330
  br label %bb.ada

"_ZN64_$LT$lsp_types..LanguageString$u20$as$u20$core..clone..Clone$GT$5clone17ha0508ffdcb803748E.exit.i.i.i.i.i.i": ; preds = %.noexc.i.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.cm, ptr noundef nonnull align 8 dereferenceable(24) %i.cl, i64 24, i1 false), !noalias !14331
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(24) %i.ck, i64 24, i1 false), !noalias !14331
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ck), !noalias !14324
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cl), !noalias !14324
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.cn, ptr noundef nonnull align 8 dereferenceable(48) %i.cm, i64 48, i1 false), !noalias !14332
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cm)
  br label %"_ZN62_$LT$lsp_types..MarkedString$u20$as$u20$core..clone..Clone$GT$5clone17hd1c3234b869f9472E.exit.i.i.i.i.i"

bb.acz:                                           ; preds = %bb.acv
  %i.cez = getelementptr inbounds nuw i8, ptr %.sroa.013.026.i.i.i.i.i, i64 8
  invoke void @"_ZN60_$LT$alloc..string..String$u20$as$u20$core..clone..Clone$GT$5clone17h123bb51dd192bfa5E"(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %4, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.cez, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @919)
          to label %.noexc12.i.i.i.i17.i unwind label %.loopexit.i.i.i.i.i463, !noalias !14325

.noexc12.i.i.i.i17.i:                             ; preds = %bb.acz
  store i64 -9223372036854775808, ptr %i.cn, align 8, !alias.scope !14320, !noalias !14332
  br label %"_ZN62_$LT$lsp_types..MarkedString$u20$as$u20$core..clone..Clone$GT$5clone17hd1c3234b869f9472E.exit.i.i.i.i.i"

"_ZN62_$LT$lsp_types..MarkedString$u20$as$u20$core..clone..Clone$GT$5clone17hd1c3234b869f9472E.exit.i.i.i.i.i": ; preds = %.noexc12.i.i.i.i17.i, %"_ZN64_$LT$lsp_types..LanguageString$u20$as$u20$core..clone..Clone$GT$5clone17ha0508ffdcb803748E.exit.i.i.i.i.i.i"
  %i.cfa = getelementptr inbounds nuw [48 x i8], ptr %i.cel, i64 %.sroa.7.025.i.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.cfa, ptr noundef nonnull align 8 dereferenceable(48) %i.cn, i64 48, i1 false), !noalias !14325
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cn), !noalias !14318
  %i.cfb = icmp eq i64 %i.ceq, 0
  br i1 %i.cfb, label %"_ZN67_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h1cb09a615c336eecE.exit.i.i.i", label %bb.acu

bb.ada:                                           ; preds = %bb.acy, %bb.acx, %.loopexit.i.i.i.i.i463
  %eh.lpad-body.i.i.i.i.i = phi { ptr, i32 } [ %i.cew, %bb.acx ], [ %i.cew, %bb.acy ], [ %lpad.loopexit.i.i.i.i.i464, %.loopexit.i.i.i.i.i463 ]
  store i64 %.sroa.7.025.i.i.i.i.i, ptr %i.ceo, align 8, !alias.scope !14333, !noalias !14318
  call fastcc void @"_ZN4core3ptr67drop_in_place$LT$alloc..vec..Vec$LT$lsp_types..MarkedString$GT$$GT$17hf6aae2bd971fc620E"(ptr noalias noundef align 8 dereferenceable(24) %i.co) #43, !noalias !14325
  br label %.body.i452

"_ZN67_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h1cb09a615c336eecE.exit.i.i.i": ; preds = %"_ZN62_$LT$lsp_types..MarkedString$u20$as$u20$core..clone..Clone$GT$5clone17hd1c3234b869f9472E.exit.i.i.i.i.i", %bb.acu, %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17hf5149a4291ac7aa1E.exit.i.i.i.i13.i", %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17hf5149a4291ac7aa1E.exit.thread.i.i.i.i.i"
  %5 = phi ptr [ %i.cek, %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17hf5149a4291ac7aa1E.exit.thread.i.i.i.i.i" ], [ %i.ceo, %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17hf5149a4291ac7aa1E.exit.i.i.i.i13.i" ], [ %i.ceo, %bb.acu ], [ %i.ceo, %"_ZN62_$LT$lsp_types..MarkedString$u20$as$u20$core..clone..Clone$GT$5clone17hd1c3234b869f9472E.exit.i.i.i.i.i" ]
  store i64 %.val11.i.i.i, ptr %5, align 8, !noalias !14318
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.cw, ptr noundef nonnull align 8 dereferenceable(24) %i.co, i64 24, i1 false), !noalias !14334
  call void @llvm.lifetime.end.p0(ptr nonnull %i.co), !noalias !14318
  %i.cfc = getelementptr inbounds nuw i8, ptr %i.cw, i64 8
  %i.cfd = load ptr, ptr %i.cfc, align 8, !noalias !14261, !nonnull !28, !noundef !28 ; 6 uses
  %i.cfe = getelementptr inbounds nuw i8, ptr %i.cw, i64 16
  %i.cff = load i64, ptr %i.cfe, align 8, !noalias !14261, !noundef !28 ; 14 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !14335)
  %i.cfg = icmp ult i64 %i.cff, 2
  br i1 %i.cfg, label %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$18sort_by_cached_key17h656d6de9f33beef4E.exit.i.i.i", label %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i.i.i.i.i

_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i.i.i.i.i: ; preds = %"_ZN67_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h1cb09a615c336eecE.exit.i.i.i"
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cj), !noalias !14336
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ci), !noalias !14337
  %i.cfh = shl nuw i64 %i.cff, 5                  ; 2 uses
  call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #41, !noalias !14338
  %i.cfi = call noundef align 8 ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef %i.cfh, i64 noundef range(i64 1, 9) 8) #41, !noalias !14338 ; 3 uses
  %i.cfj = icmp eq ptr %i.cfi, null
  br i1 %i.cfj, label %.invoke.i.i.i, label %.preheader.i.i.preheader.i.i.i.i.i.i.i.i

.preheader.i.i.preheader.i.i.i.i.i.i.i.i:         ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i.i.i.i.i
  store i64 %i.cff, ptr %i.ci, align 8, !noalias !14337
  %i.cfk = getelementptr inbounds nuw i8, ptr %i.ci, i64 8
  store ptr %i.cfi, ptr %i.cfk, align 8, !noalias !14337
  %i.cfl = getelementptr inbounds nuw i8, ptr %i.ci, i64 16 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !14339)
  call void @llvm.experimental.noalias.scope.decl(metadata !14340)
  br label %.preheader.i.i.i.i.i.i.i.i.i.i

.preheader.i.i.i.i.i.i.i.i.i.i:                   ; preds = %bb.adb, %.preheader.i.i.preheader.i.i.i.i.i.i.i.i
  %.val20.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.cfq, %bb.adb ], [ 0, %.preheader.i.i.preheader.i.i.i.i.i.i.i.i ] ; 5 uses
  %i.cfm = getelementptr inbounds nuw [48 x i8], ptr %i.cfd, i64 %.val20.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !14341)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ch), !noalias !14342
  %i.cfn = load i64, ptr %i.cfm, align 8, !range !34, !alias.scope !14343, !noalias !14344, !noundef !28
  %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i467 = icmp eq i64 %i.cfn, -9223372036854775808 ; 2 uses
  %..i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = select i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i467, i64 8, i64 24
  %.3.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = select i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i467, ptr @1018, ptr @1019
  %i.cfo = getelementptr inbounds nuw i8, ptr %i.cfm, i64 %..i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  invoke void @"_ZN60_$LT$alloc..string..String$u20$as$u20$core..clone..Clone$GT$5clone17h123bb51dd192bfa5E"(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.ch, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.cfo, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %.3.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i)
          to label %bb.adb unwind label %.body.i.i.i.i.i.i.i14.i, !noalias !14345

bb.adb:                                           ; preds = %.preheader.i.i.i.i.i.i.i.i.i.i
  %i.cfp = getelementptr inbounds nuw [32 x i8], ptr %i.cfi, i64 %.val20.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.cfp, ptr noundef nonnull readonly align 8 dereferenceable(24) %i.ch, i64 24, i1 false), !noalias !14346
  %.sroa.43.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.cfp, i64 24
  store i64 %.val20.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, ptr %.sroa.43.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, align 8, !noalias !14347
  %i.cfq = add nuw i64 %.val20.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, 1 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ch), !noalias !14342
  %i.cfr = icmp eq i64 %i.cfq, %i.cff
  br i1 %i.cfr, label %_ZN4core4iter6traits8iterator8Iterator7collect17hb32d5ee91d6fbe51E.exit.i.i.i.i, label %.preheader.i.i.i.i.i.i.i.i.i.i

common.resume.i.i.i.i:                            ; preds = %bb.adf, %.body.i.i.i.i.i.i.i14.i
  %.sink.i.i.i.i = phi ptr [ %i.cj, %bb.adf ], [ %i.ci, %.body.i.i.i.i.i.i.i14.i ]
  %common.resume.op.i.i.i.i = phi { ptr, i32 } [ %i.cfz, %bb.adf ], [ %i.cfs, %.body.i.i.i.i.i.i.i14.i ]
  call fastcc void @"_ZN4core3ptr81drop_in_place$LT$alloc..vec..Vec$LT$$LP$alloc..string..String$C$usize$RP$$GT$$GT$17hdab74322fd5881bcE"(ptr noalias noundef align 8 dereferenceable(24) %.sink.i.i.i.i) #43, !noalias !14254
  br label %.body25.i.i.i

.body.i.i.i.i.i.i.i14.i:                          ; preds = %.preheader.i.i.i.i.i.i.i.i.i.i
  %i.cfs = landingpad { ptr, i32 }
          cleanup
  store i64 %.val20.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, ptr %i.cfl, align 8, !alias.scope !14348, !noalias !14349
  br label %common.resume.i.i.i.i

_ZN4core4iter6traits8iterator8Iterator7collect17hb32d5ee91d6fbe51E.exit.i.i.i.i: ; preds = %bb.adb
  store i64 %i.cff, ptr %i.cfl, align 8, !alias.scope !14348, !noalias !14349
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.cj, ptr noundef nonnull align 8 dereferenceable(24) %i.ci, i64 24, i1 false), !noalias !14350
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ci), !noalias !14337
  %i.cft = getelementptr inbounds nuw i8, ptr %i.cj, i64 8
  %i.cfu = load ptr, ptr %i.cft, align 8, !noalias !14336, !nonnull !28, !noundef !28 ; 6 uses
  %i.cfv = getelementptr inbounds nuw i8, ptr %i.cj, i64 16
  %i.cfw = load i64, ptr %i.cfv, align 8, !noalias !14336, !noundef !28 ; 7 uses
  %i.cfx = icmp ult i64 %i.cfw, 2
  br i1 %i.cfx, label %.split25.i.i.i.i.preheader, label %bb.adc, !prof !32

.split25.i.i.i.i.preheader:                       ; preds = %bb.ade, %bb.add, %_ZN4core4iter6traits8iterator8Iterator7collect17hb32d5ee91d6fbe51E.exit.i.i.i.i
  br label %.split25.i.i.i.i

bb.adc:                                           ; preds = %_ZN4core4iter6traits8iterator8Iterator7collect17hb32d5ee91d6fbe51E.exit.i.i.i.i
  %i.cfy = icmp ult i64 %i.cfw, 21
  br i1 %i.cfy, label %bb.ade, label %bb.add, !prof !32

bb.add:                                           ; preds = %bb.adc
  invoke void @_ZN4core5slice4sort8unstable7ipnsort17h41727b333b5481cfE(ptr noalias noundef nonnull align 8 %i.cfu, i64 noundef %i.cfw, ptr noalias noundef nonnull align 1 %i.a)
          to label %.split25.i.i.i.i.preheader unwind label %bb.adf, !noalias !14254

bb.ade:                                           ; preds = %bb.adc
  call fastcc void @_ZN4core5slice4sort6shared9smallsort25insertion_sort_shift_left17h97563dcbdcbd223fE(ptr noalias noundef nonnull align 8 %i.cfu, i64 noundef %i.cfw)
  br label %.split25.i.i.i.i.preheader

bb.adf:                                           ; preds = %.invoke.i.i.i15.i, %bb.add
  %i.cfz = landingpad { ptr, i32 }
          cleanup
  br label %common.resume.i.i.i.i

.split25.i.i.i.i:                                 ; preds = %.split25.i.i.i.i.preheader, %bb.adj
  %.sroa.01.127.i.i.i.i = phi i64 [ %.sroa.01.1.i.i.i.i, %bb.adj ], [ 1, %.split25.i.i.i.i.preheader ] ; 3 uses
  %.sroa.01.026.i.i.i.i = phi i64 [ %.sroa.01.127.i.i.i.i, %bb.adj ], [ 0, %.split25.i.i.i.i.preheader ] ; 6 uses
  %i.cga = icmp ult i64 %.sroa.01.026.i.i.i.i, %i.cfw
  br i1 %i.cga, label %.split.i.i.i.i, label %.invoke.i.i.i15.i

.lr.ph.i.i.i.preheader.i.i.i.i:                   ; preds = %bb.adj
  call void @llvm.experimental.noalias.scope.decl(metadata !14351)
  call void @llvm.experimental.noalias.scope.decl(metadata !14352)
  br label %.lr.ph.i.i.i.i.i.i.i468

.lr.ph.i.i.i.i.i.i.i468:                          ; preds = %"_ZN4core3ptr58drop_in_place$LT$$LP$alloc..string..String$C$usize$RP$$GT$17ha26f860a628cb362E.exit.i.i.i.i.i.i.i", %.lr.ph.i.i.i.preheader.i.i.i.i
  %.sroa.0.011.i.i.i.i.i.i.i = phi i64 [ %i.cgc, %"_ZN4core3ptr58drop_in_place$LT$$LP$alloc..string..String$C$usize$RP$$GT$17ha26f860a628cb362E.exit.i.i.i.i.i.i.i" ], [ 0, %.lr.ph.i.i.i.preheader.i.i.i.i ] ; 2 uses
  %i.cgb = getelementptr inbounds nuw [32 x i8], ptr %i.cfu, i64 %.sroa.0.011.i.i.i.i.i.i.i ; 2 uses
  %i.cgc = add nuw i64 %.sroa.0.011.i.i.i.i.i.i.i, 1 ; 2 uses
  %.val8.i.i.i.i.i.i.i = load i64, ptr %i.cgb, align 8, !range !29, !alias.scope !14353, !noalias !14354, !noundef !28 ; 2 uses
  %i.cgd = icmp eq i64 %.val8.i.i.i.i.i.i.i, 0
  br i1 %i.cgd, label %"_ZN4core3ptr58drop_in_place$LT$$LP$alloc..string..String$C$usize$RP$$GT$17ha26f860a628cb362E.exit.i.i.i.i.i.i.i", label %bb.adg

bb.adg:                                           ; preds = %.lr.ph.i.i.i.i.i.i.i468
  %i.cge = getelementptr i8, ptr %i.cgb, i64 8
  %.val9.i.i.i.i.i.i.i = load ptr, ptr %i.cge, align 8, !alias.scope !14352, !noalias !14354, !nonnull !28, !noundef !28
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val9.i.i.i.i.i.i.i, i64 noundef %.val8.i.i.i.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #41, !noalias !14355
  br label %"_ZN4core3ptr58drop_in_place$LT$$LP$alloc..string..String$C$usize$RP$$GT$17ha26f860a628cb362E.exit.i.i.i.i.i.i.i"

"_ZN4core3ptr58drop_in_place$LT$$LP$alloc..string..String$C$usize$RP$$GT$17ha26f860a628cb362E.exit.i.i.i.i.i.i.i": ; preds = %bb.adg, %.lr.ph.i.i.i.i.i.i.i468
  %i.cgf = icmp eq i64 %i.cgc, %i.cfw
  br i1 %i.cgf, label %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17haf0e88ce3d509250E.exit.i.i.i.i.i", label %.lr.ph.i.i.i.i.i.i.i468

"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17haf0e88ce3d509250E.exit.i.i.i.i.i": ; preds = %"_ZN4core3ptr58drop_in_place$LT$$LP$alloc..string..String$C$usize$RP$$GT$17ha26f860a628cb362E.exit.i.i.i.i.i.i.i"
  %.val2.i.i.i.i.i469 = load i64, ptr %i.cj, align 8, !range !29, !alias.scope !14351, !noalias !14336, !noundef !28 ; 2 uses
  %i.cgg = icmp eq i64 %.val2.i.i.i.i.i469, 0
  br i1 %i.cgg, label %"_ZN4core3ptr81drop_in_place$LT$alloc..vec..Vec$LT$$LP$alloc..string..String$C$usize$RP$$GT$$GT$17hdab74322fd5881bcE.exit.i.i.i.i", label %bb.adh

bb.adh:                                           ; preds = %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17haf0e88ce3d509250E.exit.i.i.i.i.i"
  %i.cgh = shl nuw i64 %.val2.i.i.i.i.i469, 5
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.cfu, i64 noundef %i.cgh, i64 noundef range(i64 1, -9223372036854775807) 8) #41, !noalias !14354
  br label %"_ZN4core3ptr81drop_in_place$LT$alloc..vec..Vec$LT$$LP$alloc..string..String$C$usize$RP$$GT$$GT$17hdab74322fd5881bcE.exit.i.i.i.i"

"_ZN4core3ptr81drop_in_place$LT$alloc..vec..Vec$LT$$LP$alloc..string..String$C$usize$RP$$GT$$GT$17hdab74322fd5881bcE.exit.i.i.i.i": ; preds = %bb.adh, %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17haf0e88ce3d509250E.exit.i.i.i.i.i"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cj), !noalias !14336
  br label %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$18sort_by_cached_key17h656d6de9f33beef4E.exit.i.i.i"

.split.i.i.i.i:                                   ; preds = %.split25.i.i.i.i, %.split.i.i.i.i
  %i.cgi = phi i64 [ %.sroa.06.0.i.i.i.i, %.split.i.i.i.i ], [ %.sroa.01.026.i.i.i.i, %.split25.i.i.i.i ]
  %i.cgj = getelementptr inbounds nuw [32 x i8], ptr %i.cfu, i64 %i.cgi
  %.sroa.06.0.in.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.cgj, i64 24
  %.sroa.06.0.i.i.i.i = load i64, ptr %.sroa.06.0.in.i.i.i.i, align 8, !noalias !14254, !noundef !28 ; 6 uses
  %i.cgk = icmp ult i64 %.sroa.06.0.i.i.i.i, %.sroa.01.026.i.i.i.i
  br i1 %i.cgk, label %.split.i.i.i.i, label %bb.adi

bb.adi:                                           ; preds = %.split.i.i.i.i
  %i.cgl = getelementptr inbounds nuw [32 x i8], ptr %i.cfu, i64 %.sroa.01.026.i.i.i.i
  %i.cgm = getelementptr inbounds nuw i8, ptr %i.cgl, i64 24
  store i64 %.sroa.06.0.i.i.i.i, ptr %i.cgm, align 8, !noalias !14254
  %i.cgn = icmp ult i64 %.sroa.06.0.i.i.i.i, %i.cff
  br i1 %i.cgn, label %bb.adj, label %.invoke.i.i.i15.i

bb.adj:                                           ; preds = %bb.adi
  %i.cgo = getelementptr inbounds nuw [48 x i8], ptr %i.cfd, i64 %.sroa.01.026.i.i.i.i ; 2 uses
  %i.cgp = getelementptr inbounds nuw [48 x i8], ptr %i.cfd, i64 %.sroa.06.0.i.i.i.i ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cg)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.cg, ptr noundef nonnull align 8 dereferenceable(48) %i.cgo, i64 48, i1 false), !noalias !14254
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.cgo, ptr noundef nonnull align 8 dereferenceable(48) %i.cgp, i64 48, i1 false), !alias.scope !14335, !noalias !14254
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.cgp, ptr noundef nonnull align 8 dereferenceable(48) %i.cg, i64 48, i1 false), !noalias !14254
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cg)
  %i.cgq = icmp ult i64 %.sroa.01.127.i.i.i.i, %i.cff ; 2 uses
  %i.cgr = zext i1 %i.cgq to i64
  %.sroa.01.1.i.i.i.i = add nuw i64 %.sroa.01.127.i.i.i.i, %i.cgr
  br i1 %i.cgq, label %.split25.i.i.i.i, label %.lr.ph.i.i.i.preheader.i.i.i.i

.invoke.i.i.i15.i:                                ; preds = %bb.adi, %.split25.i.i.i.i
  %i.cgs = phi i64 [ %.sroa.01.026.i.i.i.i, %.split25.i.i.i.i ], [ %.sroa.06.0.i.i.i.i, %bb.adi ]
  %i.cgt = phi i64 [ %i.cfw, %.split25.i.i.i.i ], [ %i.cff, %bb.adi ]
  invoke void @_ZN4core9panicking18panic_bounds_check17hbc09f5d79f1a5789E(i64 noundef %i.cgs, i64 noundef %i.cgt, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @908) #42
          to label %.cont.i.i.i.i unwind label %bb.adf, !noalias !14254

.cont.i.i.i.i:                                    ; preds = %.invoke.i.i.i15.i
  unreachable

bb.adk:                                           ; preds = %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h5c0850ed224dc6b9E.exit22.i.i.i"
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cf), !noalias !14356
  store ptr %.sroa.8.0..sroa_idx.i449, ptr %i.cf, align 8, !noalias !14356
  %.sroa.42.0..sroa_idx.i.i.i.i455 = getelementptr inbounds nuw i8, ptr %i.cf, i64 8
  store ptr @"_ZN60_$LT$alloc..string..String$u20$as$u20$core..fmt..Display$GT$3fmt17h86a528f6a97fe10dE", ptr %.sroa.42.0..sroa_idx.i.i.i.i455, align 8, !noalias !14356
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ce), !noalias !14357
  store ptr @0, ptr %i.ce, align 8, !noalias !14358
  %.sroa.5.0..sroa_idx.i.i.i10.i = getelementptr inbounds nuw i8, ptr %i.ce, i64 8
  store i64 1, ptr %.sroa.5.0..sroa_idx.i.i.i10.i, align 8, !noalias !14358
  %.sroa.7.0..sroa_idx.i.i.i11.i = getelementptr inbounds nuw i8, ptr %i.ce, i64 16
  store ptr %i.cf, ptr %.sroa.7.0..sroa_idx.i.i.i11.i, align 8, !noalias !14358
  %.sroa.8.0..sroa_idx.i27.i.i.i = getelementptr inbounds nuw i8, ptr %i.ce, i64 24
  store i64 1, ptr %.sroa.8.0..sroa_idx.i27.i.i.i, align 8, !noalias !14358
  %.sroa.10.0..sroa_idx.i.i.i.i456 = getelementptr inbounds nuw i8, ptr %i.ce, i64 32
  store ptr null, ptr %.sroa.10.0..sroa_idx.i.i.i.i456, align 8, !noalias !14358
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cd), !noalias !14359
  store ptr %i.ccn, ptr %i.cd, align 8, !noalias !14359
  %i.cgu = getelementptr inbounds nuw i8, ptr %i.cd, i64 8 ; 5 uses
  store ptr null, ptr %i.cgu, align 8, !noalias !14359
  %i.cgv = invoke noundef zeroext i1 @_ZN4core3fmt5write17h80461e1e45e4fdd2E(ptr noundef nonnull align 1 %i.cd, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) @776, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.ce)
          to label %bb.adn unwind label %bb.adl, !noalias !14360

bb.adl:                                           ; preds = %bb.adr, %bb.adk
  %i.cgw = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.cgx = load ptr, ptr %i.cgu, align 8, !alias.scope !14361, !noalias !14359, !noundef !28
end_hunk_0
begin_hunk_1_@"_ZN67_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h115a6a79783cb764E":bb.a
"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17hf5149a4291ac7aa1E.exit": ; preds = %bb.b
  store i64 %i.i, ptr %i.e, align 8, !noalias !36448
  %i.s = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store ptr %i.q, ptr %i.s, align 8, !noalias !36448
  %i.t = getelementptr inbounds nuw i8, ptr %i.e, i64 16 ; 4 uses
  %i.u = getelementptr inbounds nuw [32 x i8], ptr %i.h, i64 %i.i
  %i.v = icmp eq i64 %i.i, 0
  br i1 %i.v, label %"_ZN87_$LT$T$u20$as$u20$alloc..slice..$LT$impl$u20$$u5b$T$u5d$$GT$..to_vec_in..ConvertVec$GT$6to_vec17h439875e67d69a33cE.exit", label %.lr.ph

.lr.ph:                                           ; preds = %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17hf5149a4291ac7aa1E.exit"
  %i.w = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %.sroa.9.8..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.9, i64 7 ; 3 uses
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph, %"_ZN63_$LT$serde_json..value..Value$u20$as$u20$core..clone..Clone$GT$5clone17h627f2ce74479242dE.exit"
  %.sroa.01.028 = phi ptr [ %i.h, %.lr.ph ], [ %i.z, %"_ZN63_$LT$serde_json..value..Value$u20$as$u20$core..clone..Clone$GT$5clone17h627f2ce74479242dE.exit" ] ; 10 uses
  %.sroa.7.026 = phi i64 [ 0, %.lr.ph ], [ %i.aa, %"_ZN63_$LT$serde_json..value..Value$u20$as$u20$core..clone..Clone$GT$5clone17h627f2ce74479242dE.exit" ] ; 3 uses
  %.sroa.10.025 = phi i64 [ %i.i, %.lr.ph ], [ %i.x, %"_ZN63_$LT$serde_json..value..Value$u20$as$u20$core..clone..Clone$GT$5clone17h627f2ce74479242dE.exit" ]
  %i.x = add nsw i64 %.sroa.10.025, -1            ; 2 uses
  %i.y = icmp eq ptr %.sroa.01.028, %i.u
  br i1 %i.y, label %"_ZN87_$LT$T$u20$as$u20$alloc..slice..$LT$impl$u20$$u5b$T$u5d$$GT$..to_vec_in..ConvertVec$GT$6to_vec17h439875e67d69a33cE.exit", label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.z = getelementptr inbounds nuw i8, ptr %.sroa.01.028, i64 32
  %i.aa = add nuw nsw i64 %.sroa.7.026, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.9)
  call void @llvm.experimental.noalias.scope.decl(metadata !36450)
  call void @llvm.experimental.noalias.scope.decl(metadata !36451)
  %i.ab = load i8, ptr %.sroa.01.028, align 8, !range !59, !alias.scope !36451, !noalias !36452, !noundef !28 ; 2 uses
  switch i8 %i.ab, label %default.unreachable [
    i8 0, label %"_ZN63_$LT$serde_json..value..Value$u20$as$u20$core..clone..Clone$GT$5clone17h627f2ce74479242dE.exit"
    i8 1, label %bb.f
    i8 2, label %bb.g
    i8 3, label %bb.h
    i8 4, label %bb.i
    i8 5, label %bb.j
  ]

default.unreachable:                              ; preds = %bb.e
  unreachable

bb.f:                                             ; preds = %bb.e
  %.sroa.9.0..sroa_idx6 = getelementptr inbounds nuw i8, ptr %.sroa.01.028, i64 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(31) %.sroa.9, ptr noundef nonnull align 1 dereferenceable(31) %.sroa.9.0..sroa_idx6, i64 31, i1 false), !alias.scope !36453, !noalias !36454
  br label %"_ZN63_$LT$serde_json..value..Value$u20$as$u20$core..clone..Clone$GT$5clone17h627f2ce74479242dE.exit"

bb.g:                                             ; preds = %bb.e
  %.sroa.9.0..sroa_idx5 = getelementptr inbounds nuw i8, ptr %.sroa.01.028, i64 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(31) %.sroa.9, ptr noundef nonnull align 1 dereferenceable(31) %.sroa.9.0..sroa_idx5, i64 31, i1 false), !alias.scope !36453, !noalias !36454
  br label %"_ZN63_$LT$serde_json..value..Value$u20$as$u20$core..clone..Clone$GT$5clone17h627f2ce74479242dE.exit"

bb.h:                                             ; preds = %bb.e
  %i.ac = getelementptr inbounds nuw i8, ptr %.sroa.01.028, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !36455
  invoke void @"_ZN60_$LT$alloc..string..String$u20$as$u20$core..clone..Clone$GT$5clone17h123bb51dd192bfa5E"(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.d, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ac, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @931)
          to label %.noexc unwind label %.loopexit, !inline_history !36437

.noexc:                                           ; preds = %bb.h
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(24) %.sroa.9.8..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %i.d, i64 24, i1 false), !noalias !36456
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !36455
  br label %"_ZN63_$LT$serde_json..value..Value$u20$as$u20$core..clone..Clone$GT$5clone17h627f2ce74479242dE.exit"

bb.i:                                             ; preds = %bb.e
  %i.ad = getelementptr inbounds nuw i8, ptr %.sroa.01.028, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !36455
  invoke fastcc void @"_ZN67_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h115a6a79783cb764E"(ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.c, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ad)
          to label %.noexc1 unwind label %.loopexit

.noexc1:                                          ; preds = %bb.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(24) %.sroa.9.8..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false), !noalias !36456
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !36455
  br label %"_ZN63_$LT$serde_json..value..Value$u20$as$u20$core..clone..Clone$GT$5clone17h627f2ce74479242dE.exit"

bb.j:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !36457
  call void @llvm.experimental.noalias.scope.decl(metadata !36458)
  call void @llvm.experimental.noalias.scope.decl(metadata !36459)
  %i.ae = getelementptr inbounds nuw i8, ptr %.sroa.01.028, i64 24
  %i.af = load i64, ptr %i.ae, align 8, !alias.scope !36459, !noalias !36458, !noundef !28
  %i.ag = icmp eq i64 %i.af, 0
  br i1 %i.ag, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  store ptr null, ptr %i.a, align 8, !alias.scope !36458, !noalias !36459
  store i64 0, ptr %i.w, align 8, !alias.scope !36458, !noalias !36459
  br label %.noexc2

bb.l:                                             ; preds = %bb.j
  %i.ah = getelementptr inbounds nuw i8, ptr %.sroa.01.028, i64 8
  %i.ai = load ptr, ptr %i.ah, align 8, !alias.scope !36459, !noalias !36458, !noundef !28 ; 2 uses
  %.not.i3 = icmp eq ptr %i.ai, null
  br i1 %.not.i3, label %bb.n, label %bb.m, !prof !30

bb.m:                                             ; preds = %bb.l
  %i.aj = getelementptr inbounds nuw i8, ptr %.sroa.01.028, i64 16
  %i.ak = load i64, ptr %i.aj, align 8, !alias.scope !36459, !noalias !36458, !noundef !28
  invoke fastcc void @"_ZN96_$LT$alloc..collections..btree..map..BTreeMap$LT$K$C$V$C$A$GT$$u20$as$u20$core..clone..Clone$GT$5clone13clone_subtree17hcb1a9ae3da21c450E"(ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.a, ptr noundef nonnull %i.ai, i64 noundef %i.ak)
          to label %.noexc2 unwind label %.loopexit, !inline_history !36444

bb.n:                                             ; preds = %bb.l
  invoke void @_ZN4core6option13unwrap_failed17h13b3e6f702cb1c04E(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1068) #42
          to label %.noexc5 unwind label %.loopexit.split-lp, !inline_history !36444

.noexc5:                                          ; preds = %bb.n
  unreachable

.noexc2:                                          ; preds = %bb.k, %bb.m
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.b, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false), !noalias !36460
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !36457
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(24) %.sroa.9.8..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false), !noalias !36456
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %"_ZN63_$LT$serde_json..value..Value$u20$as$u20$core..clone..Clone$GT$5clone17h627f2ce74479242dE.exit"

"_ZN63_$LT$serde_json..value..Value$u20$as$u20$core..clone..Clone$GT$5clone17h627f2ce74479242dE.exit": ; preds = %.noexc2, %.noexc1, %.noexc, %bb.g, %bb.f, %bb.e
  %i.al = getelementptr inbounds nuw [32 x i8], ptr %i.q, i64 %.sroa.7.026 ; 2 uses
  %.sroa.412.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.al, i64 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(31) %.sroa.412.0..sroa_idx, ptr noundef nonnull align 1 dereferenceable(31) %.sroa.9, i64 31, i1 false), !noalias !36454
  store i8 %i.ab, ptr %i.al, align 8, !noalias !36454
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.9)
  %i.am = icmp eq i64 %i.x, 0
  br i1 %i.am, label %"_ZN87_$LT$T$u20$as$u20$alloc..slice..$LT$impl$u20$$u5b$T$u5d$$GT$..to_vec_in..ConvertVec$GT$6to_vec17h439875e67d69a33cE.exit", label %bb.d

bb.o:                                             ; preds = %bb.p
  %i.an = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #40, !noalias !36454, !inline_history !36445
  unreachable

.loopexit:                                        ; preds = %bb.i, %bb.m, %bb.h
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.p

.loopexit.split-lp:                               ; preds = %bb.n
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.p

bb.p:                                             ; preds = %.loopexit.split-lp, %.loopexit
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  store i64 %.sroa.7.026, ptr %i.t, align 8, !alias.scope !36461, !noalias !36454
  invoke fastcc void @"_ZN4core3ptr68drop_in_place$LT$alloc..vec..Vec$LT$serde_json..value..Value$GT$$GT$17hb1370c816d5955a9E"(ptr noalias noundef align 8 dereferenceable(24) %i.e) #43
          to label %bb.q unwind label %bb.o, !noalias !36454, !inline_history !36445

bb.q:                                             ; preds = %bb.p
  resume { ptr, i32 } %lpad.phi

"_ZN87_$LT$T$u20$as$u20$alloc..slice..$LT$impl$u20$$u5b$T$u5d$$GT$..to_vec_in..ConvertVec$GT$6to_vec17h439875e67d69a33cE.exit": ; preds = %"_ZN63_$LT$serde_json..value..Value$u20$as$u20$core..clone..Clone$GT$5clone17h627f2ce74479242dE.exit", %bb.d, %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17hf5149a4291ac7aa1E.exit.thread", %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17hf5149a4291ac7aa1E.exit"
  %i.ao = phi ptr [ %i.p, %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17hf5149a4291ac7aa1E.exit.thread" ], [ %i.t, %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17hf5149a4291ac7aa1E.exit" ], [ %i.t, %bb.d ], [ %i.t, %"_ZN63_$LT$serde_json..value..Value$u20$as$u20$core..clone..Clone$GT$5clone17h627f2ce74479242dE.exit" ]
  store i64 %i.i, ptr %i.ao, align 8, !noalias !36448
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.e, i64 24, i1 false), !noalias !36462
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !36448
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @"_ZN67_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h181067632ab1ef1dE"(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(24) %0, ptr nofree readonly captures(address, read_provenance) %.8.val, i64 %.16.val) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 4 uses
  %i.c = alloca [24 x i8], align 8                ; 6 uses
  %i.d = alloca [24 x i8], align 8                ; 6 uses
  %i.e = alloca [24 x i8], align 8                ; 7 uses
  %i.f = alloca [24 x i8], align 8                ; 7 uses
  %i.g = alloca [56 x i8], align 8                ; 9 uses
  %i.h = alloca [40 x i8], align 8                ; 7 uses
  %i.i = alloca [24 x i8], align 8                ; 6 uses
  %i.j = alloca [24 x i8], align 8                ; 6 uses
  %i.k = alloca [32 x i8], align 8                ; 10 uses
  %i.l = alloca [24 x i8], align 8                ; 6 uses
  %.sroa.5112.i.sroa.6.i = alloca [24 x i8], align 8 ; 5 uses
  %i.m = alloca [24 x i8], align 8                ; 6 uses
  %i.n = alloca [24 x i8], align 8                ; 6 uses
  %i.o = alloca [24 x i8], align 8                ; 6 uses
  %i.p = alloca [32 x i8], align 8                ; 7 uses
  %i.q = alloca [24 x i8], align 8                ; 6 uses
  %i.r = alloca [32 x i8], align 8                ; 7 uses
  %.sroa.10118.i = alloca [24 x i8], align 8      ; 4 uses
  %i.s = alloca [24 x i8], align 8                ; 6 uses
  %.sroa.065.i = alloca [24 x i8], align 8        ; 4 uses
  %.sroa.2486.sroa.6.i = alloca [24 x i8], align 8 ; 4 uses
  %.sroa.3193.i = alloca [32 x i8], align 8       ; 4 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.8.val) ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !36625)
  %i.t = mul i64 %.16.val, 464                    ; 5 uses
  %or.cond.i.i.i.i = icmp ugt i64 %.16.val, 19877956975980120
  br i1 %or.cond.i.i.i.i, label %bb.c, label %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i, !prof !44

_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i: ; preds = %bb.a
  %i.u = icmp eq i64 %i.t, 0
  br i1 %i.u, label %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17hf5149a4291ac7aa1E.exit.thread.i", label %bb.b

"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17hf5149a4291ac7aa1E.exit.thread.i": ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i
  %i.v = icmp eq i64 %.16.val, 0
  tail call void @llvm.assume(i1 %i.v)
  br label %"_ZN87_$LT$T$u20$as$u20$alloc..slice..$LT$impl$u20$$u5b$T$u5d$$GT$..to_vec_in..ConvertVec$GT$6to_vec17hd5130cc855bc4c46E.exit"

bb.b:                                             ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #41, !noalias !36626
  %i.w = tail call noundef align 8 ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef %i.t, i64 noundef range(i64 1, 9) 8) #41, !noalias !36626 ; 9 uses
  %i.x = icmp eq ptr %i.w, null
  br i1 %i.x, label %bb.c, label %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17hf5149a4291ac7aa1E.exit.i"

bb.c:                                             ; preds = %bb.b, %bb.a
  %.sroa.4.0.ph.i.i = phi i64 [ 8, %bb.b ], [ 0, %bb.a ]
  tail call void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef %.sroa.4.0.ph.i.i, i64 %i.t, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @1034) #42, !noalias !36627
  unreachable

"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17hf5149a4291ac7aa1E.exit.i": ; preds = %bb.b
  %1 = getelementptr inbounds nuw [464 x i8], ptr %.8.val, i64 %.16.val
  %2 = icmp eq i64 %.16.val, 0
  br i1 %2, label %"_ZN87_$LT$T$u20$as$u20$alloc..slice..$LT$impl$u20$$u5b$T$u5d$$GT$..to_vec_in..ConvertVec$GT$6to_vec17hd5130cc855bc4c46E.exit", label %.lr.ph.i

.lr.ph.i:                                         ; preds = %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17hf5149a4291ac7aa1E.exit.i"
  %.sroa.6.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %.sroa.7.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %.sroa.5.0..sroa_idx2.i.i.i = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %.sroa.5.i.i.sroa.4.0..sroa.5.0..sroa_idx2.i.i.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %.sroa.6.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %.sroa.7.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  %.sroa.4.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.p, i64 24 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.p, i64 8 ; 2 uses
  %.sroa.8108.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  %.sroa.685.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %.sroa.788.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  %.sroa.693.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %.sroa.796.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  %.sroa.6101.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %.sroa.7104.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  %i.z = getelementptr inbounds nuw i8, ptr %i.g, i64 24 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.g, i64 40
  %.sroa.5112.0..sroa_idx113.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %.sroa.5112.i.sroa.5.0..sroa.5112.0..sroa_idx113.i.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %.sroa.6114.0..sroa_idx115.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 48
  %i.ab = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  %.sroa.5112.i.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %.sroa.5112.i.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %.sroa.6124.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %.sroa.7126.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %.sroa.5.0..sroa_idx2.i57.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %.sroa.5.i53.i.sroa.4.0..sroa.5.0..sroa_idx2.i57.i.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %.sroa.0117.i.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.f, i64 8 ; 2 uses
  %.sroa.0117.i.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %.sroa.0117.i.sroa.8.24..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 2 uses
  %.sroa.0117.i.sroa.9.24..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.ac = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.ad = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.ae = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.af = getelementptr inbounds nuw i8, ptr %i.k, i64 8 ; 3 uses
  br label %bb.d

bb.d:                                             ; preds = %.loopexit.i, %.lr.ph.i
  %.sroa.027.0705.i = phi ptr [ %.8.val, %.lr.ph.i ], [ %i.ai, %.loopexit.i ] ; 43 uses
  %.sroa.7.0704.i = phi i64 [ 0, %.lr.ph.i ], [ %i.aj, %.loopexit.i ] ; 6 uses
  %.sroa.10.0703.i = phi i64 [ %.16.val, %.lr.ph.i ], [ %i.ag, %.loopexit.i ]
  %i.ag = add nsw i64 %.sroa.10.0703.i, -1        ; 2 uses
  %i.ah = icmp eq ptr %.sroa.027.0705.i, %1
  br i1 %i.ah, label %"_ZN87_$LT$T$u20$as$u20$alloc..slice..$LT$impl$u20$$u5b$T$u5d$$GT$..to_vec_in..ConvertVec$GT$6to_vec17hd5130cc855bc4c46E.exit", label %bb.e

.loopexit160.i:                                   ; preds = %bb.e
  %lpad.loopexit.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.dg

bb.e:                                             ; preds = %bb.d
  %i.ai = getelementptr inbounds nuw i8, ptr %.sroa.027.0705.i, i64 464
  %i.aj = add nuw nsw i64 %.sroa.7.0704.i, 1
  call void @llvm.experimental.noalias.scope.decl(metadata !36628)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s), !noalias !36629
  invoke void @"_ZN60_$LT$alloc..string..String$u20$as$u20$core..clone..Clone$GT$5clone17h123bb51dd192bfa5E"(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.s, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(464) %.sroa.027.0705.i, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1024)
          to label %.noexc.i unwind label %.loopexit160.i, !noalias !36627

.noexc.i:                                         ; preds = %bb.e
  %i.ak = getelementptr inbounds nuw i8, ptr %.sroa.027.0705.i, i64 264 ; 2 uses
  %i.al = load i64, ptr %i.ak, align 8, !range !40, !alias.scope !36630, !noalias !36631, !noundef !28 ; 2 uses
  %.not.i.i = icmp eq i64 %i.al, -9223372036854775807
  br i1 %.not.i.i, label %bb.m, label %bb.f

bb.f:                                             ; preds = %.noexc.i
  call void @llvm.experimental.noalias.scope.decl(metadata !36632)
  %.not.i.i.i = icmp eq i64 %i.al, -9223372036854775808
  br i1 %.not.i.i.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !36633
  invoke void @"_ZN60_$LT$alloc..string..String$u20$as$u20$core..clone..Clone$GT$5clone17h123bb51dd192bfa5E"(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.j, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.ak, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @862)
          to label %.noexc.i.i unwind label %bb.o, !noalias !36631

.noexc.i.i:                                       ; preds = %bb.g
  %.sroa.0.0.copyload.i.i.i = load i64, ptr %i.j, align 8, !noalias !36633
  %.sroa.6.0.copyload.i.i.i = load ptr, ptr %.sroa.6.0..sroa_idx.i.i.i, align 8, !noalias !36633
  %.sroa.7.0.copyload.i.i.i = load i64, ptr %.sroa.7.0..sroa_idx.i.i.i, align 8, !noalias !36633
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !36633
  br label %bb.h

bb.h:                                             ; preds = %.noexc.i.i, %bb.f
  %.sroa.7.0.i.i.i = phi i64 [ %.sroa.7.0.copyload.i.i.i, %.noexc.i.i ], [ undef, %bb.f ] ; 2 uses
  %.sroa.6.0.i.i.i = phi ptr [ %.sroa.6.0.copyload.i.i.i, %.noexc.i.i ], [ undef, %bb.f ] ; 4 uses
  %.sroa.0.010.i.i.i = phi i64 [ %.sroa.0.0.copyload.i.i.i, %.noexc.i.i ], [ -9223372036854775808, %bb.f ] ; 4 uses
  %i.am = getelementptr inbounds nuw i8, ptr %.sroa.027.0705.i, i64 288 ; 2 uses
  %i.an = load i64, ptr %i.am, align 8, !range !34, !alias.scope !36634, !noalias !36635, !noundef !28
  %.not4.i.i.i = icmp eq i64 %i.an, -9223372036854775808
  br i1 %.not4.i.i.i, label %bb.m, label %bb.i

bb.i:                                             ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !36633
  invoke void @"_ZN60_$LT$alloc..string..String$u20$as$u20$core..clone..Clone$GT$5clone17h123bb51dd192bfa5E"(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.am, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @862)
          to label %bb.l unwind label %bb.j, !noalias !36635

bb.j:                                             ; preds = %bb.i
  %i.ao = landingpad { ptr, i32 }
          cleanup                                 ; 3 uses
  switch i64 %.sroa.0.010.i.i.i, label %bb.k [
    i64 -9223372036854775808, label %.body.i.i
    i64 0, label %.body.i.i
  ]

bb.k:                                             ; preds = %bb.j
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.6.0.i.i.i) ]
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.6.0.i.i.i, i64 noundef %.sroa.0.010.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #41, !noalias !36636
  br label %.body.i.i

bb.l:                                             ; preds = %bb.i
  %.sroa.0.0.copyload1.i.i.i = load i64, ptr %i.i, align 8, !noalias !36633
  %.sroa.5.i.i.sroa.0.0.copyload.i = load ptr, ptr %.sroa.5.0..sroa_idx2.i.i.i, align 8, !noalias !36633
  %.sroa.5.i.i.sroa.4.0.copyload.i = load i64, ptr %.sroa.5.i.i.sroa.4.0..sroa.5.0..sroa_idx2.i.i.sroa_idx.i, align 8, !noalias !36633
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !36633
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.h, %.noexc.i
  %.sroa.13102.0.i = phi i64 [ undef, %.noexc.i ], [ undef, %bb.h ], [ %.sroa.5.i.i.sroa.4.0.copyload.i, %bb.l ]
  %.sroa.11101.0.i = phi ptr [ undef, %.noexc.i ], [ undef, %bb.h ], [ %.sroa.5.i.i.sroa.0.0.copyload.i, %bb.l ] ; 3 uses
  %.sroa.9100.0.i = phi i64 [ undef, %.noexc.i ], [ -9223372036854775808, %bb.h ], [ %.sroa.0.0.copyload1.i.i.i, %bb.l ] ; 3 uses
  %.sroa.899.0.i = phi i64 [ undef, %.noexc.i ], [ %.sroa.7.0.i.i.i, %bb.h ], [ %.sroa.7.0.i.i.i, %bb.l ]
  %.sroa.698.0.i = phi ptr [ undef, %.noexc.i ], [ %.sroa.6.0.i.i.i, %bb.h ], [ %.sroa.6.0.i.i.i, %bb.l ] ; 3 uses
  %.sroa.097.0.i = phi i64 [ -9223372036854775807, %.noexc.i ], [ %.sroa.0.010.i.i.i, %bb.h ], [ %.sroa.0.010.i.i.i, %bb.l ] ; 3 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %.sroa.027.0705.i, i64 400
  %i.aq = load i32, ptr %i.ap, align 8, !range !51, !alias.scope !36630, !noalias !36631, !noundef !28 ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %.sroa.027.0705.i, i64 404
  %i.as = load i32, ptr %i.ar, align 4, !alias.scope !36630, !noalias !36631
  %i.at = getelementptr inbounds nuw i8, ptr %.sroa.027.0705.i, i64 24 ; 2 uses
  %i.au = load i64, ptr %i.at, align 8, !range !34, !alias.scope !36630, !noalias !36631, !noundef !28
  %.not12.i.i = icmp eq i64 %i.au, -9223372036854775808
  br i1 %.not12.i.i, label %bb.q, label %bb.p

.body.i.i:                                        ; preds = %bb.s, %"_ZN4core3ptr70drop_in_place$LT$core..option..Option$LT$alloc..string..String$GT$$GT$17h04d9f720c1044bd5E.exit.i.i.i", %"_ZN4core3ptr70drop_in_place$LT$core..option..Option$LT$alloc..string..String$GT$$GT$17h04d9f720c1044bd5E.exit.i.i.i", %"_ZN4core3ptr70drop_in_place$LT$core..option..Option$LT$alloc..string..String$GT$$GT$17h04d9f720c1044bd5E.exit.i.i", %bb.o, %bb.k, %bb.j, %bb.j
  %.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.i.i = phi { ptr, i32 } [ %i.ao, %bb.j ], [ %i.ax, %bb.o ], [ %i.ao, %bb.k ], [ %i.ao, %bb.j ], [ %.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.i.i, %"_ZN4core3ptr70drop_in_place$LT$core..option..Option$LT$alloc..string..String$GT$$GT$17h04d9f720c1044bd5E.exit.i.i" ], [ %.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.i.i, %"_ZN4core3ptr70drop_in_place$LT$core..option..Option$LT$alloc..string..String$GT$$GT$17h04d9f720c1044bd5E.exit.i.i.i" ], [ %.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.i.i, %"_ZN4core3ptr70drop_in_place$LT$core..option..Option$LT$alloc..string..String$GT$$GT$17h04d9f720c1044bd5E.exit.i.i.i" ], [ %.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.i.i, %bb.s ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !36637)
  call void @llvm.experimental.noalias.scope.decl(metadata !36638)
  %.val.i.i.i.i = load i64, ptr %i.s, align 8, !range !29, !alias.scope !36639, !noalias !36629, !noundef !28 ; 2 uses
  %i.av = icmp eq i64 %.val.i.i.i.i, 0
  br i1 %i.av, label %bb.dg, label %bb.n

bb.n:                                             ; preds = %.body.i.i
  %i.aw = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %.val1.i.i.i.i = load ptr, ptr %i.aw, align 8, !alias.scope !36639, !noalias !36629, !nonnull !28, !noundef !28
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i.i, i64 noundef %.val.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #41, !noalias !36640
  br label %bb.dg

bb.o:                                             ; preds = %bb.g
  %i.ax = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i

bb.p:                                             ; preds = %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q), !noalias !36629
  invoke void @"_ZN60_$LT$alloc..string..String$u20$as$u20$core..clone..Clone$GT$5clone17h123bb51dd192bfa5E"(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.q, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.at, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @862)
          to label %bb.u unwind label %bb.t, !noalias !36631

bb.q:                                             ; preds = %bb.u, %bb.m
  %.sroa.7.0.i.i = phi i64 [ %.sroa.7.0.copyload.i.i, %bb.u ], [ undef, %bb.m ]
  %.sroa.6.0.i.i = phi ptr [ %.sroa.6.0.copyload.i.i, %bb.u ], [ undef, %bb.m ] ; 3 uses
  %.sroa.0.0123.i.i = phi i64 [ %.sroa.0.0.copyload.i.i, %bb.u ], [ -9223372036854775808, %bb.m ] ; 3 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %.sroa.027.0705.i, i64 312 ; 2 uses
  %i.az = load i64, ptr %i.ay, align 8, !range !40, !alias.scope !36630, !noalias !36631, !noundef !28 ; 2 uses
  %.not13.i.i = icmp eq i64 %i.az, -9223372036854775807
  br i1 %.not13.i.i, label %bb.y, label %bb.v

"_ZN4core3ptr70drop_in_place$LT$core..option..Option$LT$alloc..string..String$GT$$GT$17h04d9f720c1044bd5E.exit.i.i": ; preds = %bb.z, %"_ZN4core3ptr73drop_in_place$LT$core..option..Option$LT$lsp_types..Documentation$GT$$GT$17hcf80bc318efed637E.exit.i", %"_ZN4core3ptr73drop_in_place$LT$core..option..Option$LT$lsp_types..Documentation$GT$$GT$17hcf80bc318efed637E.exit.i", %bb.t
  %.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.i.i = phi { ptr, i32 } [ %i.ba, %bb.t ], [ %.pn.pn.pn.pn.pn.pn.pn.pn.pn.i.i, %"_ZN4core3ptr73drop_in_place$LT$core..option..Option$LT$lsp_types..Documentation$GT$$GT$17hcf80bc318efed637E.exit.i" ], [ %.pn.pn.pn.pn.pn.pn.pn.pn.pn.i.i, %"_ZN4core3ptr73drop_in_place$LT$core..option..Option$LT$lsp_types..Documentation$GT$$GT$17hcf80bc318efed637E.exit.i" ], [ %.pn.pn.pn.pn.pn.pn.pn.pn.pn.i.i, %bb.z ] ; 4 uses
  switch i64 %.sroa.097.0.i, label %bb.r [
    i64 -9223372036854775807, label %.body.i.i
    i64 -9223372036854775808, label %"_ZN4core3ptr70drop_in_place$LT$core..option..Option$LT$alloc..string..String$GT$$GT$17h04d9f720c1044bd5E.exit.i.i.i"
    i64 0, label %"_ZN4core3ptr70drop_in_place$LT$core..option..Option$LT$alloc..string..String$GT$$GT$17h04d9f720c1044bd5E.exit.i.i.i"
  ]

bb.r:                                             ; preds = %"_ZN4core3ptr70drop_in_place$LT$core..option..Option$LT$alloc..string..String$GT$$GT$17h04d9f720c1044bd5E.exit.i.i"
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.698.0.i) ]
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.698.0.i, i64 noundef %.sroa.097.0.i, i64 noundef range(i64 1, -9223372036854775807) 1) #41, !noalias !36641
  br label %"_ZN4core3ptr70drop_in_place$LT$core..option..Option$LT$alloc..string..String$GT$$GT$17h04d9f720c1044bd5E.exit.i.i.i"

"_ZN4core3ptr70drop_in_place$LT$core..option..Option$LT$alloc..string..String$GT$$GT$17h04d9f720c1044bd5E.exit.i.i.i": ; preds = %bb.r, %"_ZN4core3ptr70drop_in_place$LT$core..option..Option$LT$alloc..string..String$GT$$GT$17h04d9f720c1044bd5E.exit.i.i", %"_ZN4core3ptr70drop_in_place$LT$core..option..Option$LT$alloc..string..String$GT$$GT$17h04d9f720c1044bd5E.exit.i.i"
  switch i64 %.sroa.9100.0.i, label %bb.s [
    i64 -9223372036854775808, label %.body.i.i
    i64 0, label %.body.i.i
  ]

bb.s:                                             ; preds = %"_ZN4core3ptr70drop_in_place$LT$core..option..Option$LT$alloc..string..String$GT$$GT$17h04d9f720c1044bd5E.exit.i.i.i"
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.11101.0.i) ]
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.11101.0.i, i64 noundef %.sroa.9100.0.i, i64 noundef range(i64 1, -9223372036854775807) 1) #41, !noalias !36642
  br label %.body.i.i

bb.t:                                             ; preds = %bb.p
  %i.ba = landingpad { ptr, i32 }
          cleanup
  br label %"_ZN4core3ptr70drop_in_place$LT$core..option..Option$LT$alloc..string..String$GT$$GT$17h04d9f720c1044bd5E.exit.i.i"

bb.u:                                             ; preds = %bb.p
  %.sroa.0.0.copyload.i.i = load i64, ptr %i.q, align 8, !noalias !36629
  %.sroa.6.0.copyload.i.i = load ptr, ptr %.sroa.6.0..sroa_idx.i.i, align 8, !noalias !36629
  %.sroa.7.0.copyload.i.i = load i64, ptr %.sroa.7.0..sroa_idx.i.i, align 8, !noalias !36629
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !noalias !36629
  br label %bb.q

end_hunk_1
begin_hunk_2_@"_ZN67_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h181067632ab1ef1dE":bb.a

"_ZN80_$LT$lsp_types..completion..CompletionTextEdit$u20$as$u20$core..clone..Clone$GT$5clone17h550ff0dbcdabc413E.exit.i.i": ; preds = %.noexc50.i.i, %.noexc49.i.i
  %.sroa.5112.i.sroa.0.0.i = phi i64 [ %.sroa.5112.i.sroa.0.0.copyload149.i, %.noexc50.i.i ], [ %.sroa.5112.i.sroa.0.0.copyload.i, %.noexc49.i.i ]
  %.sroa.5112.i.sroa.5.0.i = phi ptr [ %.sroa.5112.i.sroa.5.0.copyload150.i, %.noexc50.i.i ], [ %.sroa.5112.i.sroa.5.0.copyload.i, %.noexc49.i.i ]
  %.sroa.6114.0.i.i = phi i64 [ undef, %.noexc50.i.i ], [ %.sroa.6114.0.copyload116.i.i, %.noexc49.i.i ]
  %.sroa.0110.0.i.i = phi i64 [ -9223372036854775808, %.noexc50.i.i ], [ %.sroa.0110.0.copyload111.i.i, %.noexc49.i.i ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.10118.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.5112.i.sroa.6.i, i64 24, i1 false), !noalias !36629
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5112.i.sroa.6.i)
  br label %bb.au

bb.ax:                                            ; preds = %bb.au
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !36629
  %i.cm = getelementptr inbounds nuw i8, ptr %.sroa.027.0705.i, i64 128
  %.val.i.i = load ptr, ptr %i.cm, align 8, !alias.scope !36630, !noalias !36631, !nonnull !28, !noundef !28
  %i.cn = getelementptr inbounds nuw i8, ptr %.sroa.027.0705.i, i64 136
  %.val36.i.i = load i64, ptr %i.cn, align 8, !alias.scope !36630, !noalias !36631, !noundef !28
  invoke fastcc void @"_ZN67_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..clone..Clone$GT$5clone17hea6e08763bf87b5fE"(ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.l, ptr nonnull %.val.i.i, i64 %.val36.i.i)
          to label %bb.bc unwind label %bb.bb, !noalias !36631

bb.ay:                                            ; preds = %bb.bc, %bb.au
  %.sroa.0122.0.i = phi i64 [ %.sroa.0122.0.copyload.i, %bb.bc ], [ -9223372036854775808, %bb.au ] ; 4 uses
  %.sroa.6124.0.i = phi ptr [ %.sroa.6124.0.copyload.i, %bb.bc ], [ undef, %bb.au ] ; 4 uses
  %.sroa.7126.0.i = phi i64 [ %.sroa.7126.0.copyload.i, %bb.bc ], [ undef, %bb.au ] ; 3 uses
  %i.co = getelementptr inbounds nuw i8, ptr %.sroa.027.0705.i, i64 144 ; 2 uses
  %i.cp = load i64, ptr %i.co, align 8, !range !34, !alias.scope !36630, !noalias !36631, !noundef !28
  %.not21.i.i = icmp eq i64 %i.cp, -9223372036854775808
  br i1 %.not21.i.i, label %bb.bl, label %bb.bd

"_ZN4core3ptr91drop_in_place$LT$core..option..Option$LT$alloc..vec..Vec$LT$lsp_types..TextEdit$GT$$GT$$GT$17h7185a156a0ba04ecE.exit.i": ; preds = %bb.bo, %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h93df7a45a8bce036E.exit.i.i.i", %.body61.i.i, %bb.bb
  %.pn.pn.pn.pn.i.i = phi { ptr, i32 } [ %i.ct, %bb.bb ], [ %.pn.pn.pn.i.i, %.body61.i.i ], [ %.pn.pn.pn.i.i, %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h93df7a45a8bce036E.exit.i.i.i" ], [ %.pn.pn.pn.i.i, %bb.bo ] ; 4 uses
  %i.cq = icmp eq i64 %.sroa.0115.0.i, -9223372036854775807
  br i1 %i.cq, label %"_ZN4core3ptr90drop_in_place$LT$core..option..Option$LT$lsp_types..completion..CompletionTextEdit$GT$$GT$17he9d4230c46bb4d77E.exit.i", label %bb.az

bb.az:                                            ; preds = %"_ZN4core3ptr91drop_in_place$LT$core..option..Option$LT$alloc..vec..Vec$LT$lsp_types..TextEdit$GT$$GT$$GT$17h7185a156a0ba04ecE.exit.i"
  %i.cr = inttoptr i64 %.sroa.6116.0.i to ptr
  switch i64 %.sroa.0115.0.i, label %"_ZN4core3ptr40drop_in_place$LT$lsp_types..TextEdit$GT$17h4b1d1e831c9f902bE.exit.sink.split.i.i.i" [
    i64 -9223372036854775808, label %bb.ba
    i64 0, label %"_ZN4core3ptr90drop_in_place$LT$core..option..Option$LT$lsp_types..completion..CompletionTextEdit$GT$$GT$17he9d4230c46bb4d77E.exit.i"
  ]

bb.ba:                                            ; preds = %bb.az
  %i.cs = icmp eq i64 %.sroa.6116.0.i, 0
  br i1 %i.cs, label %"_ZN4core3ptr90drop_in_place$LT$core..option..Option$LT$lsp_types..completion..CompletionTextEdit$GT$$GT$17he9d4230c46bb4d77E.exit.i", label %"_ZN4core3ptr40drop_in_place$LT$lsp_types..TextEdit$GT$17h4b1d1e831c9f902bE.exit.sink.split.i.i.i"

"_ZN4core3ptr40drop_in_place$LT$lsp_types..TextEdit$GT$17h4b1d1e831c9f902bE.exit.sink.split.i.i.i": ; preds = %bb.ba, %bb.az
  %.sink5.i.i.sroa.phi.sroa.speculated.i = phi ptr [ %.sroa.9117.0.i, %bb.ba ], [ %i.cr, %bb.az ]
  %.sink.i.i.i = phi i64 [ %.sroa.6116.0.i, %bb.ba ], [ %.sroa.0115.0.i, %bb.az ]
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sink5.i.i.sroa.phi.sroa.speculated.i, i64 noundef %.sink.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #41, !noalias !36656
  br label %"_ZN4core3ptr90drop_in_place$LT$core..option..Option$LT$lsp_types..completion..CompletionTextEdit$GT$$GT$17he9d4230c46bb4d77E.exit.i"

bb.bb:                                            ; preds = %bb.ax
  %i.ct = landingpad { ptr, i32 }
          cleanup
  br label %"_ZN4core3ptr91drop_in_place$LT$core..option..Option$LT$alloc..vec..Vec$LT$lsp_types..TextEdit$GT$$GT$$GT$17h7185a156a0ba04ecE.exit.i"

bb.bc:                                            ; preds = %bb.ax
  %.sroa.0122.0.copyload.i = load i64, ptr %i.l, align 8, !noalias !36629
  %.sroa.6124.0.copyload.i = load ptr, ptr %.sroa.6124.0..sroa_idx.i, align 8, !noalias !36629
  %.sroa.7126.0.copyload.i = load i64, ptr %.sroa.7126.0..sroa_idx.i, align 8, !noalias !36629
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !36629
  br label %bb.ay

bb.bd:                                            ; preds = %bb.ay
  call void @llvm.experimental.noalias.scope.decl(metadata !36657)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !36658
  invoke void @"_ZN60_$LT$alloc..string..String$u20$as$u20$core..clone..Clone$GT$5clone17h123bb51dd192bfa5E"(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.f, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(72) %i.co, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @860)
          to label %.noexc60.i.i unwind label %bb.bp, !noalias !36631

.noexc60.i.i:                                     ; preds = %bb.bd
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !36658
  %i.cu = getelementptr inbounds nuw i8, ptr %.sroa.027.0705.i, i64 168
  invoke void @"_ZN60_$LT$alloc..string..String$u20$as$u20$core..clone..Clone$GT$5clone17h123bb51dd192bfa5E"(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.e, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.cu, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @860)
          to label %bb.bg unwind label %bb.bf, !noalias !36659

"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h5c0850ed224dc6b9E.exit7.i.i.i": ; preds = %bb.bj, %bb.bi, %bb.bf
  %.pn.i.i.i = phi { ptr, i32 } [ %i.cw, %bb.bf ], [ %i.cz, %bb.bi ], [ %i.cz, %bb.bj ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !36660)
  call void @llvm.experimental.noalias.scope.decl(metadata !36661)
  %.val.i.i.i.i.i = load i64, ptr %i.f, align 8, !range !29, !alias.scope !36662, !noalias !36658, !noundef !28 ; 2 uses
  %i.cv = icmp eq i64 %.val.i.i.i.i.i, 0
  br i1 %i.cv, label %.body61.i.i, label %bb.be

bb.be:                                            ; preds = %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h5c0850ed224dc6b9E.exit7.i.i.i"
  %.val1.i.i.i54.i.i = load ptr, ptr %.sroa.0117.i.sroa.4.0..sroa_idx.i, align 8, !alias.scope !36662, !noalias !36658, !nonnull !28, !noundef !28
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i54.i.i, i64 noundef %.val.i.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #41, !noalias !36663
  br label %.body61.i.i

bb.bf:                                            ; preds = %.noexc60.i.i
  %i.cw = landingpad { ptr, i32 }
          cleanup
  br label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h5c0850ed224dc6b9E.exit7.i.i.i"

bb.bg:                                            ; preds = %.noexc60.i.i
  %i.cx = getelementptr inbounds nuw i8, ptr %.sroa.027.0705.i, i64 192 ; 2 uses
  %i.cy = load i64, ptr %i.cx, align 8, !range !34, !alias.scope !36664, !noalias !36659, !noundef !28
  %.not.i55.i.i = icmp eq i64 %i.cy, -9223372036854775808
  br i1 %.not.i55.i.i, label %bb.bq, label %bb.bh

bb.bh:                                            ; preds = %bb.bg
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !36658
  invoke fastcc void @"_ZN67_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h115a6a79783cb764E"(ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.d, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.cx)
          to label %bb.bk unwind label %bb.bi, !noalias !36659

bb.bi:                                            ; preds = %bb.bh
  %i.cz = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !36665)
  call void @llvm.experimental.noalias.scope.decl(metadata !36666)
  %.val.i.i5.i.i.i = load i64, ptr %i.e, align 8, !range !29, !alias.scope !36667, !noalias !36658, !noundef !28 ; 2 uses
  %i.da = icmp eq i64 %.val.i.i5.i.i.i, 0
  br i1 %i.da, label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h5c0850ed224dc6b9E.exit7.i.i.i", label %bb.bj

bb.bj:                                            ; preds = %bb.bi
  %.val1.i.i6.i.i.i = load ptr, ptr %.sroa.0117.i.sroa.8.24..sroa_idx.i, align 8, !alias.scope !36667, !noalias !36658, !nonnull !28, !noundef !28
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i6.i.i.i, i64 noundef %.val.i.i5.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #41, !noalias !36668
  br label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h5c0850ed224dc6b9E.exit7.i.i.i"

bb.bk:                                            ; preds = %bb.bh
  %.sroa.0.0.copyload1.i56.i.i = load i64, ptr %i.d, align 8, !noalias !36658
  %.sroa.5.i53.i.sroa.0.0.copyload.i = load ptr, ptr %.sroa.5.0..sroa_idx2.i57.i.i, align 8, !noalias !36658
  %.sroa.5.i53.i.sroa.4.0.copyload.i = load i64, ptr %.sroa.5.i53.i.sroa.4.0..sroa.5.0..sroa_idx2.i57.i.sroa_idx.i, align 8, !noalias !36658
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !36658
  br label %bb.bq

bb.bl:                                            ; preds = %bb.bq, %bb.ay
  %.sroa.0128.0.i = phi i64 [ %.sroa.0117.i.sroa.0.0.copyload.i, %bb.bq ], [ -9223372036854775808, %bb.ay ] ; 3 uses
  %.sroa.6130.0.i = phi ptr [ %.sroa.0117.i.sroa.4.0.copyload.i, %bb.bq ], [ undef, %bb.ay ] ; 3 uses
  %.sroa.7132.0.i = phi i64 [ %.sroa.0117.i.sroa.5.0.copyload.i, %bb.bq ], [ undef, %bb.ay ]
  %.sroa.7134.0.i = phi i64 [ %.sroa.0117.i.sroa.6.24.copyload.i, %bb.bq ], [ undef, %bb.ay ] ; 3 uses
  %.sroa.8136.0.i = phi ptr [ %.sroa.0117.i.sroa.8.24.copyload.i, %bb.bq ], [ undef, %bb.ay ] ; 3 uses
  %.sroa.9138.0.i = phi i64 [ %.sroa.0117.i.sroa.9.24.copyload.i, %bb.bq ], [ undef, %bb.ay ]
  %.sroa.9140.0.i = phi i64 [ %.sroa.0.0.i58.i.i, %bb.bq ], [ undef, %bb.ay ] ; 6 uses
  %.sroa.13141.0.i = phi ptr [ %.sroa.5.i53.i.sroa.0.0.i, %bb.bq ], [ undef, %bb.ay ] ; 6 uses
  %.sroa.15142.0.i = phi i64 [ %.sroa.5.i53.i.sroa.4.0.i, %bb.bq ], [ undef, %bb.ay ] ; 5 uses
  %i.db = getelementptr inbounds nuw i8, ptr %.sroa.027.0705.i, i64 216
  %i.dc = load i64, ptr %i.db, align 8, !range !34, !alias.scope !36630, !noalias !36631, !noundef !28
  %.not22.i.i = icmp eq i64 %i.dc, -9223372036854775808
  br i1 %.not22.i.i, label %bb.bx, label %bb.br

.body61.i.i:                                      ; preds = %bb.cg, %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hbb08077075643c6eE.exit.i.i", %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h5c0850ed224dc6b9E.exit7.i.i14.i", %.body64.i.i, %bb.bp, %bb.be, %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h5c0850ed224dc6b9E.exit7.i.i.i"
  %.pn.pn.pn.i.i = phi { ptr, i32 } [ %.pn.i.i.i, %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h5c0850ed224dc6b9E.exit7.i.i.i" ], [ %i.dm, %bb.bp ], [ %.pn.i.i.i, %bb.be ], [ %.pn.pn.i.i, %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hbb08077075643c6eE.exit.i.i" ], [ %.pn.pn.i.i, %bb.cg ], [ %.pn.pn.i.i, %.body64.i.i ], [ %.pn.pn.i.i, %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h5c0850ed224dc6b9E.exit7.i.i14.i" ] ; 3 uses
  %i.dd = icmp eq i64 %.sroa.0122.0.i, -9223372036854775808
  br i1 %i.dd, label %"_ZN4core3ptr91drop_in_place$LT$core..option..Option$LT$alloc..vec..Vec$LT$lsp_types..TextEdit$GT$$GT$$GT$17h7185a156a0ba04ecE.exit.i", label %bb.bm

bb.bm:                                            ; preds = %.body61.i.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.6124.0.i) ]
  call void @llvm.experimental.noalias.scope.decl(metadata !36669), !noalias !36670
  %i.de = icmp eq i64 %.sroa.7126.0.i, 0
  br i1 %i.de, label %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h93df7a45a8bce036E.exit.i.i.i", label %.lr.ph.i.i.i.i18.i

.lr.ph.i.i.i.i18.i:                               ; preds = %bb.bm, %"_ZN4core3ptr40drop_in_place$LT$lsp_types..TextEdit$GT$17h4b1d1e831c9f902bE.exit.i.i.i.i.i"
  %.sroa.0.011.i.i.i.i.i = phi i64 [ %i.dg, %"_ZN4core3ptr40drop_in_place$LT$lsp_types..TextEdit$GT$17h4b1d1e831c9f902bE.exit.i.i.i.i.i" ], [ 0, %bb.bm ] ; 2 uses
  %i.df = getelementptr inbounds nuw [40 x i8], ptr %.sroa.6124.0.i, i64 %.sroa.0.011.i.i.i.i.i ; 2 uses
  %i.dg = add nuw i64 %.sroa.0.011.i.i.i.i.i, 1   ; 2 uses
  %.val8.i.i.i.i.i = load i64, ptr %i.df, align 8, !range !29, !alias.scope !36671, !noalias !36672, !noundef !28 ; 2 uses
  %i.dh = icmp eq i64 %.val8.i.i.i.i.i, 0
  br i1 %i.dh, label %"_ZN4core3ptr40drop_in_place$LT$lsp_types..TextEdit$GT$17h4b1d1e831c9f902bE.exit.i.i.i.i.i", label %bb.bn

bb.bn:                                            ; preds = %.lr.ph.i.i.i.i18.i
  %i.di = getelementptr i8, ptr %i.df, i64 8
  %.val9.i.i.i.i.i = load ptr, ptr %i.di, align 8, !alias.scope !36669, !noalias !36672, !nonnull !28, !noundef !28
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val9.i.i.i.i.i, i64 noundef %.val8.i.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #41, !noalias !36673
  br label %"_ZN4core3ptr40drop_in_place$LT$lsp_types..TextEdit$GT$17h4b1d1e831c9f902bE.exit.i.i.i.i.i"

"_ZN4core3ptr40drop_in_place$LT$lsp_types..TextEdit$GT$17h4b1d1e831c9f902bE.exit.i.i.i.i.i": ; preds = %bb.bn, %.lr.ph.i.i.i.i18.i
  %i.dj = icmp eq i64 %i.dg, %.sroa.7126.0.i
  br i1 %i.dj, label %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h93df7a45a8bce036E.exit.i.i.i", label %.lr.ph.i.i.i.i18.i

"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h93df7a45a8bce036E.exit.i.i.i": ; preds = %"_ZN4core3ptr40drop_in_place$LT$lsp_types..TextEdit$GT$17h4b1d1e831c9f902bE.exit.i.i.i.i.i", %bb.bm
  %i.dk = icmp eq i64 %.sroa.0122.0.i, 0
  br i1 %i.dk, label %"_ZN4core3ptr91drop_in_place$LT$core..option..Option$LT$alloc..vec..Vec$LT$lsp_types..TextEdit$GT$$GT$$GT$17h7185a156a0ba04ecE.exit.i", label %bb.bo

bb.bo:                                            ; preds = %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h93df7a45a8bce036E.exit.i.i.i"
  %i.dl = mul nuw i64 %.sroa.0122.0.i, 40
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.6124.0.i, i64 noundef %i.dl, i64 noundef range(i64 1, -9223372036854775807) 8) #41, !noalias !36672
  br label %"_ZN4core3ptr91drop_in_place$LT$core..option..Option$LT$alloc..vec..Vec$LT$lsp_types..TextEdit$GT$$GT$$GT$17h7185a156a0ba04ecE.exit.i"

bb.bp:                                            ; preds = %bb.bd
  %i.dm = landingpad { ptr, i32 }
          cleanup
  br label %.body61.i.i

bb.bq:                                            ; preds = %bb.bk, %bb.bg
  %.sroa.5.i53.i.sroa.0.0.i = phi ptr [ undef, %bb.bg ], [ %.sroa.5.i53.i.sroa.0.0.copyload.i, %bb.bk ]
  %.sroa.5.i53.i.sroa.4.0.i = phi i64 [ undef, %bb.bg ], [ %.sroa.5.i53.i.sroa.4.0.copyload.i, %bb.bk ]
  %.sroa.0.0.i58.i.i = phi i64 [ -9223372036854775808, %bb.bg ], [ %.sroa.0.0.copyload1.i56.i.i, %bb.bk ]
  %.sroa.0117.i.sroa.0.0.copyload.i = load i64, ptr %i.f, align 8, !noalias !36674
  %.sroa.0117.i.sroa.4.0.copyload.i = load ptr, ptr %.sroa.0117.i.sroa.4.0..sroa_idx.i, align 8, !noalias !36674
  %.sroa.0117.i.sroa.5.0.copyload.i = load i64, ptr %.sroa.0117.i.sroa.5.0..sroa_idx.i, align 8, !noalias !36674
  %.sroa.0117.i.sroa.6.24.copyload.i = load i64, ptr %i.e, align 8, !noalias !36674
  %.sroa.0117.i.sroa.8.24.copyload.i = load ptr, ptr %.sroa.0117.i.sroa.8.24..sroa_idx.i, align 8, !noalias !36674
  %.sroa.0117.i.sroa.9.24.copyload.i = load i64, ptr %.sroa.0117.i.sroa.9.24..sroa_idx.i, align 8, !noalias !36674
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !36658
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !36658
  br label %bb.bl

bb.br:                                            ; preds = %bb.bl
  %i.dn = getelementptr inbounds nuw i8, ptr %.sroa.027.0705.i, i64 224
  %.val37.i.i = load ptr, ptr %i.dn, align 8, !alias.scope !36630, !noalias !36631, !nonnull !28, !noundef !28 ; 2 uses
  %i.do = getelementptr inbounds nuw i8, ptr %.sroa.027.0705.i, i64 232
  %.val38.i.i = load i64, ptr %i.do, align 8, !alias.scope !36630, !noalias !36631, !noundef !28 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !36675
  %i.dp = mul i64 %.val38.i.i, 24                 ; 3 uses
  %or.cond.i.i.i.i.i.i.i = icmp ugt i64 %.val38.i.i, 384307168202282325
  br i1 %or.cond.i.i.i.i.i.i.i, label %bb.bt, label %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i, !prof !44

_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i: ; preds = %bb.br
  %i.dq = icmp eq i64 %i.dp, 0
  br i1 %i.dq, label %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17hf5149a4291ac7aa1E.exit.thread.i.i.i.i", label %bb.bs

"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17hf5149a4291ac7aa1E.exit.thread.i.i.i.i": ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i
  %i.dr = icmp eq i64 %.val38.i.i, 0
  call void @llvm.assume(i1 %i.dr)
  br label %.loopexit.i.i

bb.bs:                                            ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i
  call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #41, !noalias !36676
  %i.ds = call noundef align 8 ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef %i.dp, i64 noundef range(i64 1, 9) 8) #41, !noalias !36676 ; 6 uses
  %i.dt = icmp eq ptr %i.ds, null
  br i1 %i.dt, label %bb.bt, label %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17hf5149a4291ac7aa1E.exit.i.i.i.i"

bb.bt:                                            ; preds = %bb.bs, %bb.br
  %.sroa.4.0.ph.i.i.i.i.i = phi i64 [ 8, %bb.bs ], [ 0, %bb.br ]
  invoke void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef %.sroa.4.0.ph.i.i.i.i.i, i64 %i.dp, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @1034) #42
          to label %.noexc63.i.i unwind label %bb.ch, !noalias !36631

.noexc63.i.i:                                     ; preds = %bb.bt
  unreachable

"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17hf5149a4291ac7aa1E.exit.i.i.i.i": ; preds = %bb.bs
  store i64 %.val38.i.i, ptr %i.c, align 8, !noalias !36675
  store ptr %i.ds, ptr %i.ac, align 8, !noalias !36675
  %i.du = getelementptr inbounds nuw [24 x i8], ptr %.val37.i.i, i64 %.val38.i.i
  %3 = icmp eq i64 %.val38.i.i, 0
  br i1 %3, label %.loopexit.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17hf5149a4291ac7aa1E.exit.i.i.i.i", %bb.bv
  %.sroa.012.023.i.i.i.i = phi ptr [ %i.dy, %bb.bv ], [ %.val37.i.i, %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17hf5149a4291ac7aa1E.exit.i.i.i.i" ] ; 3 uses
  %.sroa.7.022.i.i.i.i = phi i64 [ %i.dx, %bb.bv ], [ 0, %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17hf5149a4291ac7aa1E.exit.i.i.i.i" ] ; 3 uses
  %.sroa.10.021.i.i.i.i = phi i64 [ %i.dv, %bb.bv ], [ %.val38.i.i, %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17hf5149a4291ac7aa1E.exit.i.i.i.i" ]
  %i.dv = add nsw i64 %.sroa.10.021.i.i.i.i, -1   ; 2 uses
  %i.dw = icmp eq ptr %.sroa.012.023.i.i.i.i, %i.du
  br i1 %i.dw, label %.loopexit.i.i, label %bb.bu

bb.bu:                                            ; preds = %.lr.ph.i.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !36675
  invoke void @"_ZN60_$LT$alloc..string..String$u20$as$u20$core..clone..Clone$GT$5clone17h123bb51dd192bfa5E"(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.b, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %.sroa.012.023.i.i.i.i, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1035)
          to label %bb.bv unwind label %bb.bw, !noalias !36677

bb.bv:                                            ; preds = %bb.bu
  %i.dx = add nuw nsw i64 %.sroa.7.022.i.i.i.i, 1
  %i.dy = getelementptr inbounds nuw i8, ptr %.sroa.012.023.i.i.i.i, i64 24
  %i.dz = getelementptr inbounds nuw [24 x i8], ptr %i.ds, i64 %.sroa.7.022.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.dz, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false), !noalias !36677
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !36675
  %i.ea = icmp eq i64 %i.dv, 0
  br i1 %i.ea, label %.loopexit.i.i, label %.lr.ph.i.i.i.i

bb.bw:                                            ; preds = %bb.bu
  %lpad.loopexit.i.i.i.i = landingpad { ptr, i32 }
          cleanup
  store i64 %.sroa.7.022.i.i.i.i, ptr %i.ad, align 8, !alias.scope !36678, !noalias !36675
  call void @"_ZN4core3ptr65drop_in_place$LT$alloc..vec..Vec$LT$alloc..string..String$GT$$GT$17h87f623b39691dec1E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c) #43, !noalias !36677
  br label %.body64.i.i

bb.bx:                                            ; preds = %.loopexit.i.i, %bb.bl
  %.sroa.0143.0.i = phi i64 [ %.val38.i.i, %.loopexit.i.i ], [ -9223372036854775808, %bb.bl ] ; 4 uses
  %.sroa.6145.0.i = phi ptr [ %4, %.loopexit.i.i ], [ undef, %bb.bl ] ; 4 uses
  %.sroa.7147.0.i = phi i64 [ %.val38.i.i, %.loopexit.i.i ], [ undef, %bb.bl ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r), !noalias !36629
  %i.eb = getelementptr inbounds nuw i8, ptr %.sroa.027.0705.i, i64 424 ; 3 uses
  %i.ec = load i8, ptr %i.eb, align 8, !range !45, !alias.scope !36630, !noalias !36631, !noundef !28 ; 2 uses
  %.not23.i.i = icmp eq i8 %i.ec, 6
  br i1 %.not23.i.i, label %bb.ct, label %bb.ci

.body64.i.i:                                      ; preds = %bb.cx, %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h8ac9a7b7c12b2c75E.exit.i.i.i", %"_ZN4core3ptr73drop_in_place$LT$core..option..Option$LT$serde_json..value..Value$GT$$GT$17h79d9528608d63f86E.exit.i.i", %bb.ch, %bb.bw
  %.pn.pn.i.i = phi { ptr, i32 } [ %lpad.loopexit.i.i.i.i, %bb.bw ], [ %i.et, %bb.ch ], [ %.pn.i.i, %"_ZN4core3ptr73drop_in_place$LT$core..option..Option$LT$serde_json..value..Value$GT$$GT$17h79d9528608d63f86E.exit.i.i" ], [ %.pn.i.i, %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h8ac9a7b7c12b2c75E.exit.i.i.i" ], [ %.pn.i.i, %bb.cx ] ; 4 uses
  switch i64 %.sroa.0128.0.i, label %bb.by [
    i64 -9223372036854775808, label %.body61.i.i
    i64 0, label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h5c0850ed224dc6b9E.exit.i.i.i"
  ]

bb.by:                                            ; preds = %.body64.i.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.6130.0.i) ]
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.6130.0.i, i64 noundef %.sroa.0128.0.i, i64 noundef range(i64 1, -9223372036854775807) 1) #41, !noalias !36679
  br label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h5c0850ed224dc6b9E.exit.i.i.i"

"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h5c0850ed224dc6b9E.exit.i.i.i": ; preds = %bb.by, %.body64.i.i
  %i.ed = icmp eq i64 %.sroa.7134.0.i, 0
  br i1 %i.ed, label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h5c0850ed224dc6b9E.exit7.i.i14.i", label %bb.bz

bb.bz:                                            ; preds = %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h5c0850ed224dc6b9E.exit.i.i.i"
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.8136.0.i) ]
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.8136.0.i, i64 noundef %.sroa.7134.0.i, i64 noundef range(i64 1, -9223372036854775807) 1) #41, !noalias !36680
  br label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h5c0850ed224dc6b9E.exit7.i.i14.i"

"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h5c0850ed224dc6b9E.exit7.i.i14.i": ; preds = %bb.bz, %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h5c0850ed224dc6b9E.exit.i.i.i"
  %i.ee = icmp eq i64 %.sroa.9140.0.i, -9223372036854775808
  br i1 %i.ee, label %.body61.i.i, label %bb.ca

bb.ca:                                            ; preds = %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h5c0850ed224dc6b9E.exit7.i.i14.i"
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.13141.0.i) ]
  %i.ef = icmp eq i64 %.sroa.15142.0.i, 0
  br i1 %i.ef, label %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hbb08077075643c6eE.exit.i.i", label %.lr.ph

bb.cb:                                            ; preds = %.lr.ph
  %i.eg = icmp eq i64 %i.ei, %.sroa.15142.0.i
  br i1 %i.eg, label %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hbb08077075643c6eE.exit.i.i", label %.lr.ph

.lr.ph:                                           ; preds = %bb.ca, %bb.cb
  %.sroa.0.0.i.i.i.i2027 = phi i64 [ %i.ei, %bb.cb ], [ 0, %bb.ca ] ; 2 uses
  %i.eh = getelementptr inbounds nuw [32 x i8], ptr %.sroa.13141.0.i, i64 %.sroa.0.0.i.i.i.i2027
  %i.ei = add i64 %.sroa.0.0.i.i.i.i2027, 1       ; 4 uses
  invoke fastcc void @"_ZN4core3ptr45drop_in_place$LT$serde_json..value..Value$GT$17hd30bb28c59a03f14E"(ptr noalias noundef readonly align 8 dereferenceable(32) %i.eh)
          to label %bb.cb unwind label %bb.cd, !noalias !36681, !inline_history !0

bb.cc:                                            ; preds = %.lr.ph2029
  %i.ej = add i64 %.sroa.0.1.i.i.i.i2028, 1       ; 2 uses
  %i.ek = icmp eq i64 %i.ej, %.sroa.15142.0.i
  br i1 %i.ek, label %.body.i23.i, label %.lr.ph2029

bb.cd:                                            ; preds = %.lr.ph
  %i.el = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  %i.em = icmp eq i64 %i.ei, %.sroa.15142.0.i
  br i1 %i.em, label %.body.i23.i, label %.lr.ph2029

.lr.ph2029:                                       ; preds = %bb.cd, %bb.cc
  %.sroa.0.1.i.i.i.i2028 = phi i64 [ %i.ej, %bb.cc ], [ %i.ei, %bb.cd ] ; 2 uses
  %i.en = getelementptr inbounds nuw [32 x i8], ptr %.sroa.13141.0.i, i64 %.sroa.0.1.i.i.i.i2028
  invoke fastcc void @"_ZN4core3ptr45drop_in_place$LT$serde_json..value..Value$GT$17hd30bb28c59a03f14E"(ptr noalias noundef readonly align 8 dereferenceable(32) %i.en) #43
          to label %bb.cc unwind label %bb.ce, !noalias !36681, !inline_history !0

bb.ce:                                            ; preds = %.lr.ph2029
  %i.eo = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #40, !noalias !36681, !inline_history !0
  unreachable

.body.i23.i:                                      ; preds = %bb.cc, %bb.cd
  %i.ep = icmp eq i64 %.sroa.9140.0.i, 0
  br i1 %i.ep, label %.body25.i, label %bb.cf

bb.cf:                                            ; preds = %.body.i23.i
  %i.eq = shl nuw i64 %.sroa.9140.0.i, 5
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.13141.0.i, i64 noundef %i.eq, i64 noundef range(i64 1, -9223372036854775807) 8) #41, !noalias !36681, !inline_history !58
  br label %.body25.i

"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hbb08077075643c6eE.exit.i.i": ; preds = %bb.cb, %bb.ca
  %i.er = icmp eq i64 %.sroa.9140.0.i, 0
  br i1 %i.er, label %.body61.i.i, label %bb.cg

bb.cg:                                            ; preds = %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hbb08077075643c6eE.exit.i.i"
  %i.es = shl nuw i64 %.sroa.9140.0.i, 5
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.13141.0.i, i64 noundef %i.es, i64 noundef range(i64 1, -9223372036854775807) 8) #41, !noalias !36681, !inline_history !58
  br label %.body61.i.i

bb.ch:                                            ; preds = %bb.bt
  %i.et = landingpad { ptr, i32 }
          cleanup
  br label %.body64.i.i

.loopexit.i.i:                                    ; preds = %bb.bv, %.lr.ph.i.i.i.i, %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17hf5149a4291ac7aa1E.exit.i.i.i.i", %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17hf5149a4291ac7aa1E.exit.thread.i.i.i.i"
  %4 = phi ptr [ inttoptr (i64 8 to ptr), %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17hf5149a4291ac7aa1E.exit.thread.i.i.i.i" ], [ %i.ds, %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17hf5149a4291ac7aa1E.exit.i.i.i.i" ], [ %i.ds, %.lr.ph.i.i.i.i ], [ %i.ds, %bb.bv ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !36675
  br label %bb.bx

bb.ci:                                            ; preds = %bb.bx
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !36629
  call void @llvm.experimental.noalias.scope.decl(metadata !36682)
  call void @llvm.experimental.noalias.scope.decl(metadata !36683)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !36629
  switch i8 %i.ec, label %default.unreachable [
    i8 0, label %bb.cj
    i8 1, label %bb.ck
    i8 2, label %bb.cl
    i8 3, label %bb.cm
    i8 4, label %bb.cn
    i8 5, label %bb.co
  ]

default.unreachable:                              ; preds = %bb.ci
  unreachable

bb.cj:                                            ; preds = %bb.ci
  store i8 0, ptr %i.k, align 8, !alias.scope !36682, !noalias !36684
  br label %bb.cy

bb.ck:                                            ; preds = %bb.ci
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.k, ptr noundef nonnull readonly align 8 dereferenceable(32) %i.eb, i64 32, i1 false), !alias.scope !36685, !noalias !36631
  br label %bb.cy

bb.cl:                                            ; preds = %bb.ci
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.k, ptr noundef nonnull readonly align 8 dereferenceable(32) %i.eb, i64 32, i1 false), !alias.scope !36685, !noalias !36631
  br label %bb.cy

bb.cm:                                            ; preds = %bb.ci
  %i.eu = getelementptr inbounds nuw i8, ptr %.sroa.027.0705.i, i64 432
  invoke void @"_ZN60_$LT$alloc..string..String$u20$as$u20$core..clone..Clone$GT$5clone17h123bb51dd192bfa5E"(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.af, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.eu, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @931)
          to label %.noexc66.i.i unwind label %.loopexit161.i, !noalias !36631, !inline_history !19

.noexc66.i.i:                                     ; preds = %bb.cm
  store i8 3, ptr %i.k, align 8, !alias.scope !36682, !noalias !36684
  br label %bb.cy

bb.cn:                                            ; preds = %bb.ci
  %i.ev = getelementptr inbounds nuw i8, ptr %.sroa.027.0705.i, i64 432
  invoke fastcc void @"_ZN67_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h115a6a79783cb764E"(ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.af, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ev)
          to label %.noexc67.i.i unwind label %.loopexit161.i, !noalias !36631, !inline_history !19

.noexc67.i.i:                                     ; preds = %bb.cn
  store i8 4, ptr %i.k, align 8, !alias.scope !36682, !noalias !36684
  br label %bb.cy

bb.co:                                            ; preds = %bb.ci
  %i.ew = getelementptr inbounds nuw i8, ptr %.sroa.027.0705.i, i64 448
  %i.ex = load i64, ptr %i.ew, align 8, !alias.scope !36686, !noalias !36687, !noundef !28
  %i.ey = icmp eq i64 %i.ex, 0
  br i1 %i.ey, label %bb.cp, label %bb.cq

bb.cp:                                            ; preds = %bb.co
  store ptr null, ptr %i.a, align 8, !noalias !36688
  store i64 0, ptr %i.ae, align 8, !noalias !36688
  br label %"_ZN96_$LT$alloc..collections..btree..map..BTreeMap$LT$K$C$V$C$A$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h44ac1e5157f50ecaE.exit.i.i.i"

bb.cq:                                            ; preds = %bb.co
  %i.ez = getelementptr inbounds nuw i8, ptr %.sroa.027.0705.i, i64 432
  %i.fa = load ptr, ptr %i.ez, align 8, !alias.scope !36686, !noalias !36687, !noundef !28 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.fa, null
  br i1 %.not.i.i.i.i, label %bb.cs, label %bb.cr, !prof !30

bb.cr:                                            ; preds = %bb.cq
  %i.fb = getelementptr inbounds nuw i8, ptr %.sroa.027.0705.i, i64 440
  %i.fc = load i64, ptr %i.fb, align 8, !alias.scope !36686, !noalias !36687, !noundef !28
  invoke fastcc void @"_ZN96_$LT$alloc..collections..btree..map..BTreeMap$LT$K$C$V$C$A$GT$$u20$as$u20$core..clone..Clone$GT$5clone13clone_subtree17hcb1a9ae3da21c450E"(ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.a, ptr noundef nonnull %i.fa, i64 noundef %i.fc)
          to label %"_ZN96_$LT$alloc..collections..btree..map..BTreeMap$LT$K$C$V$C$A$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h44ac1e5157f50ecaE.exit.i.i.i" unwind label %.loopexit161.i, !noalias !36631, !inline_history !19

bb.cs:                                            ; preds = %bb.cq
  invoke void @_ZN4core6option13unwrap_failed17h13b3e6f702cb1c04E(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1068) #42
          to label %.noexc69.i.i unwind label %.loopexit.split-lp162.i, !noalias !36631, !inline_history !19

.noexc69.i.i:                                     ; preds = %bb.cs
  unreachable

"_ZN96_$LT$alloc..collections..btree..map..BTreeMap$LT$K$C$V$C$A$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h44ac1e5157f50ecaE.exit.i.i.i": ; preds = %bb.cr, %bb.cp
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.af, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false), !noalias !36684
  store i8 5, ptr %i.k, align 8, !alias.scope !36682, !noalias !36684
  br label %bb.cy

bb.ct:                                            ; preds = %bb.bx
  store i8 6, ptr %i.r, align 8, !noalias !36629
  br label %bb.cu

bb.cu:                                            ; preds = %bb.cy, %bb.ct
  %i.fd = getelementptr inbounds nuw i8, ptr %.sroa.027.0705.i, i64 240
  %i.fe = load i64, ptr %i.fd, align 8, !range !34, !alias.scope !36630, !noalias !36631, !noundef !28
  %.not24.i.i = icmp eq i64 %i.fe, -9223372036854775808
  br i1 %.not24.i.i, label %.loopexit.i, label %bb.cz

"_ZN4core3ptr73drop_in_place$LT$core..option..Option$LT$serde_json..value..Value$GT$$GT$17h79d9528608d63f86E.exit.i.i": ; preds = %bb.de, %bb.dd, %.loopexit.split-lp162.i, %.loopexit161.i
  %.pn.i.i = phi { ptr, i32 } [ %i.gr, %bb.dd ], [ %i.gr, %bb.de ], [ %lpad.loopexit163.i, %.loopexit161.i ], [ %lpad.loopexit.split-lp164.i, %.loopexit.split-lp162.i ] ; 3 uses
  %i.ff = icmp eq i64 %.sroa.0143.0.i, -9223372036854775808
  br i1 %i.ff, label %.body64.i.i, label %bb.cv

bb.cv:                                            ; preds = %"_ZN4core3ptr73drop_in_place$LT$core..option..Option$LT$serde_json..value..Value$GT$$GT$17h79d9528608d63f86E.exit.i.i"
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.6145.0.i) ]
  call void @llvm.experimental.noalias.scope.decl(metadata !36689), !noalias !36670
  %i.fg = icmp eq i64 %.sroa.7147.0.i, 0
  br i1 %i.fg, label %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h8ac9a7b7c12b2c75E.exit.i.i.i", label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.cv, %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h5c0850ed224dc6b9E.exit.i.i.i.i.i"
  %.sroa.0.010.i.i.i.i.i = phi i64 [ %i.fi, %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h5c0850ed224dc6b9E.exit.i.i.i.i.i" ], [ 0, %bb.cv ] ; 2 uses
  %i.fh = getelementptr inbounds nuw [24 x i8], ptr %.sroa.6145.0.i, i64 %.sroa.0.010.i.i.i.i.i ; 2 uses
  %i.fi = add nuw i64 %.sroa.0.010.i.i.i.i.i, 1   ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !36690), !noalias !36670
  call void @llvm.experimental.noalias.scope.decl(metadata !36691), !noalias !36670
  %.val.i.i.i.i.i.i.i = load i64, ptr %i.fh, align 8, !range !29, !alias.scope !36692, !noalias !36693, !noundef !28 ; 2 uses
  %i.fj = icmp eq i64 %.val.i.i.i.i.i.i.i, 0
  br i1 %i.fj, label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h5c0850ed224dc6b9E.exit.i.i.i.i.i", label %bb.cw

bb.cw:                                            ; preds = %.lr.ph.i.i.i.i.i
  %i.fk = getelementptr inbounds nuw i8, ptr %i.fh, i64 8
  %.val1.i.i.i.i.i.i.i = load ptr, ptr %i.fk, align 8, !alias.scope !36692, !noalias !36693, !nonnull !28, !noundef !28
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i.i.i.i.i, i64 noundef %.val.i.i.i.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #41, !noalias !36694
  br label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h5c0850ed224dc6b9E.exit.i.i.i.i.i"

"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h5c0850ed224dc6b9E.exit.i.i.i.i.i": ; preds = %bb.cw, %.lr.ph.i.i.i.i.i
  %i.fl = icmp eq i64 %i.fi, %.sroa.7147.0.i
  br i1 %i.fl, label %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h8ac9a7b7c12b2c75E.exit.i.i.i", label %.lr.ph.i.i.i.i.i

"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h8ac9a7b7c12b2c75E.exit.i.i.i": ; preds = %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h5c0850ed224dc6b9E.exit.i.i.i.i.i", %bb.cv
  %i.fm = icmp eq i64 %.sroa.0143.0.i, 0
  br i1 %i.fm, label %.body64.i.i, label %bb.cx

bb.cx:                                            ; preds = %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h8ac9a7b7c12b2c75E.exit.i.i.i"
  %i.fn = mul nuw i64 %.sroa.0143.0.i, 24
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.6145.0.i, i64 noundef %i.fn, i64 noundef range(i64 1, -9223372036854775807) 8) #41, !noalias !36693
  br label %.body64.i.i

.loopexit161.i:                                   ; preds = %bb.cr, %bb.cn, %bb.cm
  %lpad.loopexit163.i = landingpad { ptr, i32 }
          cleanup
  br label %"_ZN4core3ptr73drop_in_place$LT$core..option..Option$LT$serde_json..value..Value$GT$$GT$17h79d9528608d63f86E.exit.i.i"

.loopexit.split-lp162.i:                          ; preds = %bb.cs
  %lpad.loopexit.split-lp164.i = landingpad { ptr, i32 }
          cleanup
  br label %"_ZN4core3ptr73drop_in_place$LT$core..option..Option$LT$serde_json..value..Value$GT$$GT$17h79d9528608d63f86E.exit.i.i"

bb.cy:                                            ; preds = %"_ZN96_$LT$alloc..collections..btree..map..BTreeMap$LT$K$C$V$C$A$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h44ac1e5157f50ecaE.exit.i.i.i", %.noexc67.i.i, %.noexc66.i.i, %bb.cl, %bb.ck, %bb.cj
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !36629
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.r, ptr noundef nonnull align 8 dereferenceable(32) %i.k, i64 32, i1 false), !noalias !36629
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !36629
  br label %bb.cu

bb.cz:                                            ; preds = %bb.cu
  %i.fo = getelementptr inbounds nuw i8, ptr %.sroa.027.0705.i, i64 248
  %.val39.i.i = load ptr, ptr %i.fo, align 8, !alias.scope !36630, !noalias !36631, !nonnull !28, !noundef !28 ; 4 uses
  %i.fp = getelementptr inbounds nuw i8, ptr %.sroa.027.0705.i, i64 256
  %.val40.i.i = load i64, ptr %i.fp, align 8, !alias.scope !36630, !noalias !36631, !noundef !28 ; 13 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !36695)
  %i.fq = shl i64 %.val40.i.i, 2                  ; 4 uses
  %i.fr = icmp ugt i64 %.val40.i.i, 4611686018427387903
  %i.fs = icmp ugt i64 %i.fq, 9223372036854775804
  %or.cond.i.i.i.i.i70.i.i = or i1 %i.fr, %i.fs
  br i1 %or.cond.i.i.i.i.i70.i.i, label %bb.db, label %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i71.i.i, !prof !44

_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i71.i.i: ; preds = %bb.cz
  %i.ft = icmp eq i64 %i.fq, 0
  br i1 %i.ft, label %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17hf5149a4291ac7aa1E.exit.thread.i.i75.i.i", label %bb.da

"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17hf5149a4291ac7aa1E.exit.thread.i.i75.i.i": ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i71.i.i
  %i.fu = icmp eq i64 %.val40.i.i, 0
  call void @llvm.assume(i1 %i.fu)
  br label %.loopexit.i

bb.da:                                            ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i71.i.i
  call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #41, !noalias !36696
  %i.fv = call noundef align 4 ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef %i.fq, i64 noundef range(i64 1, 9) 4) #41, !noalias !36696 ; 6 uses
  %i.fw = icmp eq ptr %i.fv, null
  br i1 %i.fw, label %bb.db, label %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17hf5149a4291ac7aa1E.exit.i.i72.i.i"

bb.db:                                            ; preds = %bb.da, %bb.cz
  %.sroa.4.0.ph.i.i.i74.i.i = phi i64 [ 4, %bb.da ], [ 0, %bb.cz ]
  invoke void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef %.sroa.4.0.ph.i.i.i74.i.i, i64 %i.fq, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @1034) #42
          to label %.noexc76.i.i unwind label %bb.dd, !noalias !36631

.noexc76.i.i:                                     ; preds = %bb.db
  unreachable

"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17hf5149a4291ac7aa1E.exit.i.i72.i.i": ; preds = %bb.da
  %5 = getelementptr inbounds nuw [4 x i8], ptr %.val39.i.i, i64 %.val40.i.i
  %6 = icmp eq i64 %.val40.i.i, 0
  br i1 %6, label %.loopexit.i, label %.lr.ph.i.i73.i.i.preheader.a

.lr.ph.i.i73.i.i.preheader.a:                     ; preds = %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17hf5149a4291ac7aa1E.exit.i.i72.i.i"
  %i.fx = add nsw i64 %.val40.i.i, -1
  %i.fy = call i64 @llvm.umin.i64(i64 %.val40.i.i, i64 %i.fx) ; 2 uses
  %min.iters.check = icmp ult i64 %i.fy, 8
  br i1 %min.iters.check, label %.lr.ph.i.i73.i.i.preheader2041, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i73.i.i.preheader.a
  %i.fz = add nuw nsw i64 %i.fy, 1                ; 2 uses
  %i.ga = and i64 %i.fz, 7                        ; 2 uses
  %i.gb = icmp eq i64 %i.ga, 0
  %i.gc = select i1 %i.gb, i64 8, i64 %i.ga
  %n.vec = sub nsw i64 %i.fz, %i.gc               ; 4 uses
  %i.gd = shl i64 %n.vec, 2
  %i.ge = getelementptr i8, ptr %.val39.i.i, i64 %i.gd
  %i.gf = sub i64 %.val40.i.i, %n.vec
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.gg = shl i64 %index, 2
  %next.gep = getelementptr i8, ptr %.val39.i.i, i64 %i.gg ; 2 uses
  %i.gh = getelementptr i8, ptr %next.gep, i64 16
  %wide.load = load <4 x i32>, ptr %next.gep, align 4, !alias.scope !36695, !noalias !36697
  %wide.load2035 = load <4 x i32>, ptr %i.gh, align 4, !alias.scope !36695, !noalias !36697
  %i.gi = getelementptr inbounds nuw [4 x i8], ptr %i.fv, i64 %index ; 2 uses
  %i.gj = getelementptr inbounds nuw i8, ptr %i.gi, i64 16
  store <4 x i32> %wide.load, ptr %i.gi, align 4, !noalias !36698
  store <4 x i32> %wide.load2035, ptr %i.gj, align 4, !noalias !36698
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.gk = icmp eq i64 %index.next, %n.vec
  br i1 %i.gk, label %.lr.ph.i.i73.i.i.preheader2041, label %vector.body, !llvm.loop !36617

.lr.ph.i.i73.i.i.preheader2041:                   ; preds = %vector.body, %.lr.ph.i.i73.i.i.preheader.a
  %.sroa.015.024.i.i.i.i.ph = phi ptr [ %.val39.i.i, %.lr.ph.i.i73.i.i.preheader.a ], [ %i.ge, %vector.body ]
  %.sroa.7.023.i.i.i.i.ph = phi i64 [ 0, %.lr.ph.i.i73.i.i.preheader.a ], [ %n.vec, %vector.body ]
  %.sroa.10.022.i.i.i.i.ph = phi i64 [ %.val40.i.i, %.lr.ph.i.i73.i.i.preheader.a ], [ %i.gf, %vector.body ]
  br label %.lr.ph.i.i73.i.i

.lr.ph.i.i73.i.i:                                 ; preds = %.lr.ph.i.i73.i.i.preheader2041, %bb.dc
  %.sroa.015.024.i.i.i.i = phi ptr [ %i.go, %bb.dc ], [ %.sroa.015.024.i.i.i.i.ph, %.lr.ph.i.i73.i.i.preheader2041 ] ; 3 uses
  %.sroa.7.023.i.i.i.i = phi i64 [ %i.gn, %bb.dc ], [ %.sroa.7.023.i.i.i.i.ph, %.lr.ph.i.i73.i.i.preheader2041 ] ; 2 uses
  %.sroa.10.022.i.i.i.i = phi i64 [ %i.gm, %bb.dc ], [ %.sroa.10.022.i.i.i.i.ph, %.lr.ph.i.i73.i.i.preheader2041 ]
  %i.gl = icmp eq ptr %.sroa.015.024.i.i.i.i, %5
  br i1 %i.gl, label %.loopexit.i, label %bb.dc

bb.dc:                                            ; preds = %.lr.ph.i.i73.i.i
  %i.gm = add nsw i64 %.sroa.10.022.i.i.i.i, -1   ; 2 uses
  %i.gn = add nuw nsw i64 %.sroa.7.023.i.i.i.i, 1
  %i.go = getelementptr inbounds nuw i8, ptr %.sroa.015.024.i.i.i.i, i64 4
  %.val14.i.i.i.i = load i32, ptr %.sroa.015.024.i.i.i.i, align 4, !alias.scope !36695, !noalias !36697, !noundef !28
  %i.gp = getelementptr inbounds nuw [4 x i8], ptr %i.fv, i64 %.sroa.7.023.i.i.i.i
  store i32 %.val14.i.i.i.i, ptr %i.gp, align 4, !noalias !36698
  %i.gq = icmp eq i64 %i.gm, 0
  br i1 %i.gq, label %.loopexit.i, label %.lr.ph.i.i73.i.i, !llvm.loop !36618

bb.dd:                                            ; preds = %bb.db
  %i.gr = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.gs = load i8, ptr %i.r, align 8, !range !45, !alias.scope !36699, !noalias !36629, !noundef !28
  %i.gt = icmp eq i8 %i.gs, 6
  br i1 %i.gt, label %"_ZN4core3ptr73drop_in_place$LT$core..option..Option$LT$serde_json..value..Value$GT$$GT$17h79d9528608d63f86E.exit.i.i", label %bb.de

bb.de:                                            ; preds = %bb.dd
  invoke fastcc void @"_ZN4core3ptr45drop_in_place$LT$serde_json..value..Value$GT$17hd30bb28c59a03f14E"(ptr noalias noundef nonnull readonly align 8 dereferenceable(32) %i.r)
          to label %"_ZN4core3ptr73drop_in_place$LT$core..option..Option$LT$serde_json..value..Value$GT$$GT$17h79d9528608d63f86E.exit.i.i" unwind label %bb.df, !noalias !36631

bb.df:                                            ; preds = %bb.de
  %i.gu = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  br label %.body25.i

.body25.i:                                        ; preds = %bb.df, %bb.cf, %.body.i23.i
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #40, !noalias !36631
  unreachable

.loopexit.i:                                      ; preds = %bb.dc, %.lr.ph.i.i73.i.i, %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17hf5149a4291ac7aa1E.exit.i.i72.i.i", %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17hf5149a4291ac7aa1E.exit.thread.i.i75.i.i", %bb.cu
  %.sroa.59.sroa.4.0.i.i = phi i64 [ undef, %bb.cu ], [ 0, %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17hf5149a4291ac7aa1E.exit.i.i72.i.i" ], [ 0, %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17hf5149a4291ac7aa1E.exit.thread.i.i75.i.i" ], [ %.val40.i.i, %.lr.ph.i.i73.i.i ], [ %.val40.i.i, %bb.dc ]
  %.sroa.59.sroa.0.0.i.i = phi ptr [ undef, %bb.cu ], [ %i.fv, %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17hf5149a4291ac7aa1E.exit.i.i72.i.i" ], [ inttoptr (i64 4 to ptr), %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17hf5149a4291ac7aa1E.exit.thread.i.i75.i.i" ], [ %i.fv, %.lr.ph.i.i73.i.i ], [ %i.fv, %bb.dc ]
  %.sroa.07.0.i.i = phi i64 [ -9223372036854775808, %bb.cu ], [ 0, %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17hf5149a4291ac7aa1E.exit.i.i72.i.i" ], [ 0, %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17hf5149a4291ac7aa1E.exit.thread.i.i75.i.i" ], [ %.val40.i.i, %.lr.ph.i.i73.i.i ], [ %.val40.i.i, %bb.dc ]
  %i.gv = trunc nuw i32 %i.bz to i1
  %.sroa.56.0.i.i = select i1 %i.gv, i32 %i.cb, i32 undef
  %i.gw = trunc nuw i32 %i.bv to i1
  %.sroa.54.0.i.i = select i1 %i.gw, i32 %i.bx, i32 undef
  %i.gx = trunc nuw i32 %i.aq to i1
  %.sroa.5.0.i.i = select i1 %i.gx, i32 %i.as, i32 undef
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.065.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.065.i, ptr noundef nonnull align 8 dereferenceable(24) %i.s, i64 24, i1 false), !noalias !36700
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.2486.sroa.6.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.2486.sroa.6.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.10118.i, i64 24, i1 false), !noalias !36700
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.3193.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.3193.i, ptr noundef nonnull align 8 dereferenceable(32) %i.r, i64 32, i1 false), !noalias !36700
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !noalias !36629
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.10118.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !noalias !36629
  %i.gy = getelementptr inbounds nuw [464 x i8], ptr %i.w, i64 %.sroa.7.0704.i ; 55 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.gy, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.065.i, i64 24, i1 false), !noalias !36627
  %.sroa.466.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.gy, i64 24
  store i64 %.sroa.0.0123.i.i, ptr %.sroa.466.0..sroa_idx.i, align 8, !noalias !36627
  %.sroa.567.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.gy, i64 32
  store ptr %.sroa.6.0.i.i, ptr %.sroa.567.0..sroa_idx.i, align 8, !noalias !36627
  %.sroa.668.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.gy, i64 40
  store i64 %.sroa.7.0.i.i, ptr %.sroa.668.0..sroa_idx.i, align 8, !noalias !36627
  %.sroa.769.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.gy, i64 48
  store i64 %.sroa.083.0.i.i, ptr %.sroa.769.0..sroa_idx.i, align 8, !noalias !36627
  %.sroa.870.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.gy, i64 56
  store ptr %.sroa.685.0.i.i, ptr %.sroa.870.0..sroa_idx.i, align 8, !noalias !36627
  %.sroa.971.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.gy, i64 64
  store i64 %.sroa.788.0.i.i, ptr %.sroa.971.0..sroa_idx.i, align 8, !noalias !36627
  %.sroa.1072.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.gy, i64 72
  store i64 %.sroa.091.0.i.i, ptr %.sroa.1072.0..sroa_idx.i, align 8, !noalias !36627
  %.sroa.1173.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.gy, i64 80
  store ptr %.sroa.693.0.i.i, ptr %.sroa.1173.0..sroa_idx.i, align 8, !noalias !36627
  %.sroa.1274.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.gy, i64 88
  store i64 %.sroa.796.0.i.i, ptr %.sroa.1274.0..sroa_idx.i, align 8, !noalias !36627
  %.sroa.1375.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.gy, i64 96
  store i64 %.sroa.099.0.i.i, ptr %.sroa.1375.0..sroa_idx.i, align 8, !noalias !36627
  %.sroa.1476.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.gy, i64 104
  store ptr %.sroa.6101.0.i.i, ptr %.sroa.1476.0..sroa_idx.i, align 8, !noalias !36627
  %.sroa.1577.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.gy, i64 112
  store i64 %.sroa.7104.0.i.i, ptr %.sroa.1577.0..sroa_idx.i, align 8, !noalias !36627
  %.sroa.1678.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.gy, i64 120
  store i64 %.sroa.0122.0.i, ptr %.sroa.1678.0..sroa_idx.i, align 8, !noalias !36627
  %.sroa.1678.sroa.4.0..sroa.1678.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.gy, i64 128
  store ptr %.sroa.6124.0.i, ptr %.sroa.1678.sroa.4.0..sroa.1678.0..sroa_idx.sroa_idx.i, align 8, !noalias !36627
  %.sroa.1678.sroa.5.0..sroa.1678.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.gy, i64 136
  store i64 %.sroa.7126.0.i, ptr %.sroa.1678.sroa.5.0..sroa.1678.0..sroa_idx.sroa_idx.i, align 8, !noalias !36627
  %.sroa.1779.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.gy, i64 144
  store i64 %.sroa.0128.0.i, ptr %.sroa.1779.0..sroa_idx.i, align 8, !noalias !36627
  %.sroa.1779.sroa.4.0..sroa.1779.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.gy, i64 152
  store ptr %.sroa.6130.0.i, ptr %.sroa.1779.sroa.4.0..sroa.1779.0..sroa_idx.sroa_idx.i, align 8, !noalias !36627
  %.sroa.1779.sroa.5.0..sroa.1779.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.gy, i64 160
  store i64 %.sroa.7132.0.i, ptr %.sroa.1779.sroa.5.0..sroa.1779.0..sroa_idx.sroa_idx.i, align 8, !noalias !36627
  %.sroa.1779.sroa.6.0..sroa.1779.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.gy, i64 168
  store i64 %.sroa.7134.0.i, ptr %.sroa.1779.sroa.6.0..sroa.1779.0..sroa_idx.sroa_idx.i, align 8, !noalias !36627
  %.sroa.1779.sroa.7.0..sroa.1779.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.gy, i64 176
  store ptr %.sroa.8136.0.i, ptr %.sroa.1779.sroa.7.0..sroa.1779.0..sroa_idx.sroa_idx.i, align 8, !noalias !36627
  %.sroa.1779.sroa.8.0..sroa.1779.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.gy, i64 184
  store i64 %.sroa.9138.0.i, ptr %.sroa.1779.sroa.8.0..sroa.1779.0..sroa_idx.sroa_idx.i, align 8, !noalias !36627
  %.sroa.1779.sroa.9.0..sroa.1779.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.gy, i64 192
  store i64 %.sroa.9140.0.i, ptr %.sroa.1779.sroa.9.0..sroa.1779.0..sroa_idx.sroa_idx.i, align 8, !noalias !36627
  %.sroa.1779.sroa.10.0..sroa.1779.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.gy, i64 200
  store ptr %.sroa.13141.0.i, ptr %.sroa.1779.sroa.10.0..sroa.1779.0..sroa_idx.sroa_idx.i, align 8, !noalias !36627
  %.sroa.1779.sroa.11.0..sroa.1779.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.gy, i64 208
  store i64 %.sroa.15142.0.i, ptr %.sroa.1779.sroa.11.0..sroa.1779.0..sroa_idx.sroa_idx.i, align 8, !noalias !36627
  %.sroa.1880.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.gy, i64 216
  store i64 %.sroa.0143.0.i, ptr %.sroa.1880.0..sroa_idx.i, align 8, !noalias !36627
  %.sroa.1880.sroa.4.0..sroa.1880.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.gy, i64 224
  store ptr %.sroa.6145.0.i, ptr %.sroa.1880.sroa.4.0..sroa.1880.0..sroa_idx.sroa_idx.i, align 8, !noalias !36627
  %.sroa.1880.sroa.5.0..sroa.1880.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.gy, i64 232
  store i64 %.sroa.7147.0.i, ptr %.sroa.1880.sroa.5.0..sroa.1880.0..sroa_idx.sroa_idx.i, align 8, !noalias !36627
  %.sroa.1981.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.gy, i64 240
  store i64 %.sroa.07.0.i.i, ptr %.sroa.1981.0..sroa_idx.i, align 8, !noalias !36627
  %.sroa.2082.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.gy, i64 248
  store ptr %.sroa.59.sroa.0.0.i.i, ptr %.sroa.2082.0..sroa_idx.i, align 8, !noalias !36627
  %.sroa.2183.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.gy, i64 256
  store i64 %.sroa.59.sroa.4.0.i.i, ptr %.sroa.2183.0..sroa_idx.i, align 8, !noalias !36627
  %.sroa.2284.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.gy, i64 264
  store i64 %.sroa.097.0.i, ptr %.sroa.2284.0..sroa_idx.i, align 8, !noalias !36627
  %.sroa.2284.sroa.4.0..sroa.2284.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.gy, i64 272
  store ptr %.sroa.698.0.i, ptr %.sroa.2284.sroa.4.0..sroa.2284.0..sroa_idx.sroa_idx.i, align 8, !noalias !36627
  %.sroa.2284.sroa.5.0..sroa.2284.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.gy, i64 280
  store i64 %.sroa.899.0.i, ptr %.sroa.2284.sroa.5.0..sroa.2284.0..sroa_idx.sroa_idx.i, align 8, !noalias !36627
  %.sroa.2284.sroa.6.0..sroa.2284.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.gy, i64 288
  store i64 %.sroa.9100.0.i, ptr %.sroa.2284.sroa.6.0..sroa.2284.0..sroa_idx.sroa_idx.i, align 8, !noalias !36627
  %.sroa.2284.sroa.7.0..sroa.2284.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.gy, i64 296
  store ptr %.sroa.11101.0.i, ptr %.sroa.2284.sroa.7.0..sroa.2284.0..sroa_idx.sroa_idx.i, align 8, !noalias !36627
  %.sroa.2284.sroa.8.0..sroa.2284.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.gy, i64 304
  store i64 %.sroa.13102.0.i, ptr %.sroa.2284.sroa.8.0..sroa.2284.0..sroa_idx.sroa_idx.i, align 8, !noalias !36627
  %.sroa.2385.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.gy, i64 312
  store i64 %.sroa.0104.0.i, ptr %.sroa.2385.0..sroa_idx.i, align 8, !noalias !36627
  %.sroa.2385.sroa.4.0..sroa.2385.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.gy, i64 320
  store i64 %.sroa.6106.0.i, ptr %.sroa.2385.sroa.4.0..sroa.2385.0..sroa_idx.sroa_idx.i, align 8, !noalias !36627
  %.sroa.2385.sroa.5.0..sroa.2385.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.gy, i64 328
  store ptr %.sroa.8108.0.i, ptr %.sroa.2385.sroa.5.0..sroa.2385.0..sroa_idx.sroa_idx.i, align 8, !noalias !36627
  %.sroa.2385.sroa.6.0..sroa.2385.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.gy, i64 336
  store i64 %.sroa.9110.0.i, ptr %.sroa.2385.sroa.6.0..sroa.2385.0..sroa_idx.sroa_idx.i, align 8, !noalias !36627
  %.sroa.2486.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.gy, i64 344
  store i64 %.sroa.0115.0.i, ptr %.sroa.2486.0..sroa_idx.i, align 8, !noalias !36627
  %.sroa.2486.sroa.4.0..sroa.2486.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.gy, i64 352
  store i64 %.sroa.6116.0.i, ptr %.sroa.2486.sroa.4.0..sroa.2486.0..sroa_idx.sroa_idx.i, align 8, !noalias !36627
  %.sroa.2486.sroa.5.0..sroa.2486.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.gy, i64 360
  store ptr %.sroa.9117.0.i, ptr %.sroa.2486.sroa.5.0..sroa.2486.0..sroa_idx.sroa_idx.i, align 8, !noalias !36627
  %.sroa.2486.sroa.6.0..sroa.2486.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.gy, i64 368
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.2486.sroa.6.0..sroa.2486.0..sroa_idx.sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.2486.sroa.6.i, i64 24, i1 false), !noalias !36627
  %.sroa.2486.sroa.7.0..sroa.2486.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.gy, i64 392
  store i64 %.sroa.10119.0.i, ptr %.sroa.2486.sroa.7.0..sroa.2486.0..sroa_idx.sroa_idx.i, align 8, !noalias !36627
  %.sroa.2587.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.gy, i64 400
  store i32 %i.aq, ptr %.sroa.2587.0..sroa_idx.i, align 8, !noalias !36627
  %.sroa.2688.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.gy, i64 404
  store i32 %.sroa.5.0.i.i, ptr %.sroa.2688.0..sroa_idx.i, align 4, !noalias !36627
  %.sroa.2789.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.gy, i64 408
  store i32 %i.bv, ptr %.sroa.2789.0..sroa_idx.i, align 8, !noalias !36627
  %.sroa.2890.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.gy, i64 412
  store i32 %.sroa.54.0.i.i, ptr %.sroa.2890.0..sroa_idx.i, align 4, !noalias !36627
  %.sroa.2991.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.gy, i64 416
  store i32 %i.bz, ptr %.sroa.2991.0..sroa_idx.i, align 8, !noalias !36627
  %.sroa.3092.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.gy, i64 420
  store i32 %.sroa.56.0.i.i, ptr %.sroa.3092.0..sroa_idx.i, align 4, !noalias !36627
  %.sroa.3193.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.gy, i64 424
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.3193.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.3193.i, i64 32, i1 false), !noalias !36627
  %.sroa.3294.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.gy, i64 456
  store i8 %i.bf, ptr %.sroa.3294.0..sroa_idx.i, align 8, !noalias !36627
  %.sroa.3395.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.gy, i64 457
  store i8 %i.bh, ptr %.sroa.3395.0..sroa_idx.i, align 1, !noalias !36627
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.065.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.2486.sroa.6.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.3193.i)
  %i.gz = icmp eq i64 %i.ag, 0
  br i1 %i.gz, label %"_ZN87_$LT$T$u20$as$u20$alloc..slice..$LT$impl$u20$$u5b$T$u5d$$GT$..to_vec_in..ConvertVec$GT$6to_vec17hd5130cc855bc4c46E.exit", label %bb.d

bb.dg:                                            ; preds = %bb.n, %.body.i.i, %.loopexit160.i
  %eh.lpad-body.i = phi { ptr, i32 } [ %.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.i.i, %.body.i.i ], [ %.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.i.i, %bb.n ], [ %lpad.loopexit.i, %.loopexit160.i ]
  %i.ha = icmp eq i64 %.sroa.7.0704.i, 0
  br i1 %i.ha, label %._crit_edge, label %.lr.ph2031

bb.dh:                                            ; preds = %.lr.ph2031
  %i.hb = icmp eq i64 %i.hd, %.sroa.7.0704.i
  br i1 %i.hb, label %._crit_edge, label %.lr.ph2031

.lr.ph2031:                                       ; preds = %bb.dg, %bb.dh
  %.sroa.0.0.i.i.i2030 = phi i64 [ %i.hd, %bb.dh ], [ 0, %bb.dg ] ; 2 uses
  %i.hc = getelementptr inbounds nuw [464 x i8], ptr %i.w, i64 %.sroa.0.0.i.i.i2030
  %i.hd = add i64 %.sroa.0.0.i.i.i2030, 1         ; 4 uses
  invoke fastcc void @"_ZN4core3ptr58drop_in_place$LT$lsp_types..completion..CompletionItem$GT$17h72d57bb2a92e3f4dE"(ptr noalias noundef readonly align 8 dereferenceable(464) %i.hc)
          to label %bb.dh unwind label %bb.dj, !noalias !36701

bb.di:                                            ; preds = %.lr.ph2034
  %i.he = add i64 %.sroa.0.1.i.i.i2032, 1         ; 2 uses
  %i.hf = icmp eq i64 %i.he, %.sroa.7.0704.i
  br i1 %i.hf, label %"_ZN4core3ptr88drop_in_place$LT$alloc..raw_vec..RawVec$LT$lsp_types..completion..CompletionItem$GT$$GT$17h55280cb01fe317afE.exit.i", label %.lr.ph2034

bb.dj:                                            ; preds = %.lr.ph2031
  %i.hg = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  %i.hh = icmp eq i64 %i.hd, %.sroa.7.0704.i
  br i1 %i.hh, label %"_ZN4core3ptr88drop_in_place$LT$alloc..raw_vec..RawVec$LT$lsp_types..completion..CompletionItem$GT$$GT$17h55280cb01fe317afE.exit.i", label %.lr.ph2034

.lr.ph2034:                                       ; preds = %bb.dj, %bb.di
  %.sroa.0.1.i.i.i2032 = phi i64 [ %i.he, %bb.di ], [ %i.hd, %bb.dj ] ; 2 uses
  %i.hi = getelementptr inbounds nuw [464 x i8], ptr %i.w, i64 %.sroa.0.1.i.i.i2032
  invoke fastcc void @"_ZN4core3ptr58drop_in_place$LT$lsp_types..completion..CompletionItem$GT$17h72d57bb2a92e3f4dE"(ptr noalias noundef readonly align 8 dereferenceable(464) %i.hi) #43
          to label %bb.di unwind label %bb.dk, !noalias !36701

bb.dk:                                            ; preds = %.lr.ph2034
  %i.hj = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #40, !noalias !36702
  unreachable

"_ZN4core3ptr88drop_in_place$LT$alloc..raw_vec..RawVec$LT$lsp_types..completion..CompletionItem$GT$$GT$17h55280cb01fe317afE.exit.i": ; preds = %bb.di, %bb.dj
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.w, i64 noundef %i.t, i64 noundef range(i64 1, -9223372036854775807) 8) #41, !noalias !36701
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #40, !noalias !36627
  unreachable

._crit_edge:                                      ; preds = %bb.dh, %bb.dg
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.w, i64 noundef %i.t, i64 noundef range(i64 1, -9223372036854775807) 8) #41, !noalias !36701
  resume { ptr, i32 } %eh.lpad-body.i

"_ZN87_$LT$T$u20$as$u20$alloc..slice..$LT$impl$u20$$u5b$T$u5d$$GT$..to_vec_in..ConvertVec$GT$6to_vec17hd5130cc855bc4c46E.exit": ; preds = %bb.d, %.loopexit.i, %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17hf5149a4291ac7aa1E.exit.thread.i", %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17hf5149a4291ac7aa1E.exit.i"
  %.sroa.7.0 = phi ptr [ inttoptr (i64 8 to ptr), %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17hf5149a4291ac7aa1E.exit.thread.i" ], [ %i.w, %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17hf5149a4291ac7aa1E.exit.i" ], [ %i.w, %.loopexit.i ], [ %i.w, %bb.d ]
  store i64 %.16.val, ptr %0, align 8, !noalias !36625
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.7.0, ptr %.sroa.7.0..sroa_idx, align 8, !noalias !36625
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.16.val, ptr %.sroa.10.0..sroa_idx, align 8, !noalias !36625
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @"_ZN67_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..clone..Clone$GT$5clone17hea6e08763bf87b5fE"(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(24) %0, ptr nofree readonly captures(address, read_provenance) %.8.val, i64 %.16.val) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [40 x i8], align 8                ; 5 uses
  %i.b = alloca [24 x i8], align 8                ; 10 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.8.val) ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !36715
  %i.c = mul i64 %.16.val, 40                     ; 3 uses
  %or.cond.i.i.i.i = icmp ugt i64 %.16.val, 230584300921369395
  br i1 %or.cond.i.i.i.i, label %bb.c, label %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i, !prof !44

_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i: ; preds = %bb.a
  %i.d = icmp eq i64 %i.c, 0
  br i1 %i.d, label %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17hf5149a4291ac7aa1E.exit.thread.i", label %bb.b

"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17hf5149a4291ac7aa1E.exit.thread.i": ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i
  %i.e = icmp eq i64 %.16.val, 0
  tail call void @llvm.assume(i1 %i.e)
  store i64 0, ptr %i.b, align 8, !noalias !36715
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %i.f, align 8, !noalias !36715
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  br label %"_ZN87_$LT$T$u20$as$u20$alloc..slice..$LT$impl$u20$$u5b$T$u5d$$GT$..to_vec_in..ConvertVec$GT$6to_vec17hc131ba69dc5127b1E.exit"

bb.b:                                             ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #41, !noalias !36716
  %i.h = tail call noundef align 8 ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef %i.c, i64 noundef range(i64 1, 9) 8) #41, !noalias !36716 ; 3 uses
  %i.i = icmp eq ptr %i.h, null
  br i1 %i.i, label %bb.c, label %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17hf5149a4291ac7aa1E.exit.i"

bb.c:                                             ; preds = %bb.b, %bb.a
  %.sroa.4.0.ph.i.i = phi i64 [ 8, %bb.b ], [ 0, %bb.a ]
  tail call void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef %.sroa.4.0.ph.i.i, i64 %i.c, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @1034) #42, !noalias !36715
  unreachable

"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17hf5149a4291ac7aa1E.exit.i": ; preds = %bb.b
  store i64 %.16.val, ptr %i.b, align 8, !noalias !36715
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %i.h, ptr %i.j, align 8, !noalias !36715
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 4 uses
  %i.l = getelementptr inbounds nuw [40 x i8], ptr %.8.val, i64 %.16.val
  %1 = icmp eq i64 %.16.val, 0
  br i1 %1, label %"_ZN87_$LT$T$u20$as$u20$alloc..slice..$LT$impl$u20$$u5b$T$u5d$$GT$..to_vec_in..ConvertVec$GT$6to_vec17hc131ba69dc5127b1E.exit", label %.lr.ph.i

.lr.ph.i:                                         ; preds = %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17hf5149a4291ac7aa1E.exit.i"
  %2 = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  br label %bb.d

bb.d:                                             ; preds = %"_ZN58_$LT$lsp_types..TextEdit$u20$as$u20$core..clone..Clone$GT$5clone17h5c68822b688bc4c7E.exit.i", %.lr.ph.i
  %.sroa.012.023.i = phi ptr [ %.8.val, %.lr.ph.i ], [ %i.q, %"_ZN58_$LT$lsp_types..TextEdit$u20$as$u20$core..clone..Clone$GT$5clone17h5c68822b688bc4c7E.exit.i" ] ; 4 uses
  %.sroa.7.022.i = phi i64 [ 0, %.lr.ph.i ], [ %i.p, %"_ZN58_$LT$lsp_types..TextEdit$u20$as$u20$core..clone..Clone$GT$5clone17h5c68822b688bc4c7E.exit.i" ] ; 3 uses
  %.sroa.10.021.i = phi i64 [ %.16.val, %.lr.ph.i ], [ %i.m, %"_ZN58_$LT$lsp_types..TextEdit$u20$as$u20$core..clone..Clone$GT$5clone17h5c68822b688bc4c7E.exit.i" ]
  %i.m = add nsw i64 %.sroa.10.021.i, -1          ; 2 uses
  %i.n = icmp eq ptr %.sroa.012.023.i, %i.l
  br i1 %i.n, label %"_ZN87_$LT$T$u20$as$u20$alloc..slice..$LT$impl$u20$$u5b$T$u5d$$GT$..to_vec_in..ConvertVec$GT$6to_vec17hc131ba69dc5127b1E.exit", label %bb.e

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !36715
  %i.o = getelementptr inbounds nuw i8, ptr %.sroa.012.023.i, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull readonly align 8 dereferenceable(16) %i.o, i64 16, i1 false), !alias.scope !36717, !noalias !36718
  invoke void @"_ZN60_$LT$alloc..string..String$u20$as$u20$core..clone..Clone$GT$5clone17h123bb51dd192bfa5E"(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(40) %i.a, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %.sroa.012.023.i, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @876)
          to label %"_ZN58_$LT$lsp_types..TextEdit$u20$as$u20$core..clone..Clone$GT$5clone17h5c68822b688bc4c7E.exit.i" unwind label %bb.f, !noalias !36718

"_ZN58_$LT$lsp_types..TextEdit$u20$as$u20$core..clone..Clone$GT$5clone17h5c68822b688bc4c7E.exit.i": ; preds = %bb.e
  %i.p = add nuw nsw i64 %.sroa.7.022.i, 1
  %i.q = getelementptr inbounds nuw i8, ptr %.sroa.012.023.i, i64 40
  %i.r = getelementptr inbounds nuw [40 x i8], ptr %i.h, i64 %.sroa.7.022.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.r, ptr noundef nonnull align 8 dereferenceable(40) %i.a, i64 40, i1 false), !noalias !36718
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !36715
  %i.s = icmp eq i64 %i.m, 0
  br i1 %i.s, label %"_ZN87_$LT$T$u20$as$u20$alloc..slice..$LT$impl$u20$$u5b$T$u5d$$GT$..to_vec_in..ConvertVec$GT$6to_vec17hc131ba69dc5127b1E.exit", label %bb.d

bb.f:                                             ; preds = %bb.e
  %lpad.loopexit.i = landingpad { ptr, i32 }
          cleanup
  store i64 %.sroa.7.022.i, ptr %i.k, align 8, !alias.scope !36719, !noalias !36715
  call fastcc void @"_ZN4core3ptr63drop_in_place$LT$alloc..vec..Vec$LT$lsp_types..TextEdit$GT$$GT$17h76b566cf8131b402E"(ptr noalias noundef align 8 dereferenceable(24) %i.b) #43, !noalias !36718
  resume { ptr, i32 } %lpad.loopexit.i

"_ZN87_$LT$T$u20$as$u20$alloc..slice..$LT$impl$u20$$u5b$T$u5d$$GT$..to_vec_in..ConvertVec$GT$6to_vec17hc131ba69dc5127b1E.exit": ; preds = %bb.d, %"_ZN58_$LT$lsp_types..TextEdit$u20$as$u20$core..clone..Clone$GT$5clone17h5c68822b688bc4c7E.exit.i", %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17hf5149a4291ac7aa1E.exit.thread.i", %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17hf5149a4291ac7aa1E.exit.i"
  %3 = phi ptr [ %i.g, %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17hf5149a4291ac7aa1E.exit.thread.i" ], [ %i.k, %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17hf5149a4291ac7aa1E.exit.i" ], [ %i.k, %"_ZN58_$LT$lsp_types..TextEdit$u20$as$u20$core..clone..Clone$GT$5clone17h5c68822b688bc4c7E.exit.i" ], [ %i.k, %bb.d ]
  store i64 %.16.val, ptr %3, align 8, !noalias !36715
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false), !noalias !36720
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !36715
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @"_ZN67_$LT$lsp_harness..TestHarness$u20$as$u20$core..default..Default$GT$7default17hd541449ee1d99cbdE"(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([136 x i8]) align 8 captures(none) dereferenceable(136) %0) unnamed_addr #1 {
bb.a:
  tail call void @_ZN11lsp_harness11TestHarness3new17hd26058b15222c1beE(ptr noalias noundef nonnull sret([136 x i8]) align 8 captures(address) dereferenceable(136) %0)
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @"_ZN68_$LT$core..num..error..ParseIntError$u20$as$u20$core..fmt..Debug$GT$3fmt17ha3a87f33f6dad506E"(ptr noalias noundef readonly align 1 captures(address, read_provenance) dereferenceable(1) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %0, ptr %i.a, align 8
  %i.b = call noundef zeroext i1 @_ZN4core3fmt9Formatter26debug_struct_field1_finish17h8a12e96a3fe33b10E(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @967, i64 noundef 13, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @442, i64 noundef 4, ptr noundef nonnull align 1 %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @966)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i1 %i.b
}

; Function Attrs: nonlazybind uwtable
define internal noundef zeroext i1 @"_ZN69_$LT$anyhow..context..Quoted$LT$C$GT$$u20$as$u20$core..fmt..Debug$GT$3fmt17hda04cb8d06c81d42E"(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #1 {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 8 uses
  %i.b = alloca [16 x i8], align 8                ; 5 uses
  %i.c = alloca [8 x i8], align 8                 ; 4 uses
  %i.d = tail call noundef zeroext i1 @"_ZN57_$LT$core..fmt..Formatter$u20$as$u20$core..fmt..Write$GT$10write_char17h44b6dc644adef020E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, i32 noundef 34)
  br i1 %i.d, label %bb.c, label %"_ZN75_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write..write_fmt..SpecWriteFmt$GT$14spec_write_fmt17hb34aa6d29dda0d1aE.exit"

"_ZN75_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write..write_fmt..SpecWriteFmt$GT$14spec_write_fmt17hb34aa6d29dda0d1aE.exit": ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store ptr %1, ptr %i.c, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr %0, ptr %i.b, align 8
  %.sroa.43.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr @"_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17hdc83aebc8e7c489fE", ptr %.sroa.43.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !36724
  store ptr @0, ptr %i.a, align 8, !noalias !36725
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 1, ptr %.sroa.5.0..sroa_idx, align 8, !noalias !36725
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.b, ptr %.sroa.7.0..sroa_idx, align 8, !noalias !36725
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i64 1, ptr %.sroa.8.0..sroa_idx, align 8, !noalias !36725
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store ptr null, ptr %.sroa.10.0..sroa_idx, align 8, !noalias !36725
  %i.e = call noundef zeroext i1 @_ZN4core3fmt5write17h80461e1e45e4fdd2E(ptr noundef nonnull align 8 dereferenceable(8) %i.c, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) @1021, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.a), !noalias !36726, !inline_history !2
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !36724
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br i1 %i.e, label %bb.c, label %bb.b

bb.b:                                             ; preds = %"_ZN75_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write..write_fmt..SpecWriteFmt$GT$14spec_write_fmt17hb34aa6d29dda0d1aE.exit"
  %i.f = call noundef zeroext i1 @"_ZN57_$LT$core..fmt..Formatter$u20$as$u20$core..fmt..Write$GT$10write_char17h44b6dc644adef020E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, i32 noundef 34)
  br label %bb.c

bb.c:                                             ; preds = %"_ZN75_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write..write_fmt..SpecWriteFmt$GT$14spec_write_fmt17hb34aa6d29dda0d1aE.exit", %bb.b, %bb.a
  %.sroa.0.0 = phi i1 [ true, %bb.a ], [ %i.f, %bb.b ], [ true, %"_ZN75_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write..write_fmt..SpecWriteFmt$GT$14spec_write_fmt17hb34aa6d29dda0d1aE.exit" ]
  ret i1 %.sroa.0.0
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @"_ZN69_$LT$assert_cmd..cargo..NotFoundError$u20$as$u20$core..fmt..Debug$GT$3fmt17h345398676082839dE"(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %0, ptr %i.a, align 8
  %i.b = call noundef zeroext i1 @_ZN4core3fmt9Formatter26debug_struct_field1_finish17h8a12e96a3fe33b10E(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @969, i64 noundef 13, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @803, i64 noundef 4, ptr noundef nonnull align 1 %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @968)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i1 %i.b
}

; Function Attrs: nonlazybind uwtable
define internal fastcc noundef ptr @"_ZN69_$LT$lsp_types..Location$u20$as$u20$lsp_harness..output..LspDebug$GT$5debug17h9ea4e88270541208E"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(104) %0, ptr noalias noundef nonnull align 8 dereferenceable(24) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 7 uses
  %i.b = alloca [16 x i8], align 8                ; 5 uses
  %i.c = alloca [48 x i8], align 8                ; 8 uses
  %i.d = alloca [32 x i8], align 8                ; 7 uses
  %i.e = alloca [24 x i8], align 8                ; 8 uses
  %i.f = alloca [16 x i8], align 8                ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !nonnull !28, !noundef !28
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.j = load i64, ptr %i.i, align 8, !noundef !28
  store ptr %i.h, ptr %i.f, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store i64 %i.j, ptr %i.k, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 88
  call fastcc void @_ZN11lsp_harness6output8LspDebug9debug_str17h43c04ff35db25d4dE(ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.e, ptr noalias noundef readonly align 4 captures(address, read_provenance) dereferenceable(16) %i.l)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store ptr %i.f, ptr %i.d, align 8
  %.sroa.42.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr @"_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17hddac863775644774E", ptr %.sroa.42.0..sroa_idx, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  store ptr %i.e, ptr %i.m, align 8
  %.sroa.46.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  store ptr @"_ZN60_$LT$alloc..string..String$u20$as$u20$core..fmt..Display$GT$3fmt17h86a528f6a97fe10dE", ptr %.sroa.46.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !36747
  store ptr @970, ptr %i.c, align 8, !noalias !36748
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store i64 2, ptr %.sroa.5.0..sroa_idx, align 8, !noalias !36748
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store ptr %i.d, ptr %.sroa.7.0..sroa_idx, align 8, !noalias !36748
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  store i64 2, ptr %.sroa.8.0..sroa_idx, align 8, !noalias !36748
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  store ptr null, ptr %.sroa.10.0..sroa_idx, align 8, !noalias !36748
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !36749
  store ptr %1, ptr %i.b, align 8, !noalias !36749
  %i.n = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 5 uses
  store ptr null, ptr %i.n, align 8, !noalias !36749
  %i.o = invoke noundef zeroext i1 @_ZN4core3fmt5write17h80461e1e45e4fdd2E(ptr noundef nonnull align 1 %i.b, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) @776, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.c)
          to label %bb.d unwind label %bb.b, !noalias !36750

bb.b:                                             ; preds = %bb.h, %bb.a
  %i.p = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.q = load ptr, ptr %i.n, align 8, !alias.scope !36751, !noalias !36749, !noundef !28
  %i.r = icmp eq ptr %i.q, null
  br i1 %i.r, label %.body, label %bb.c

bb.c:                                             ; preds = %bb.b
  invoke void @"_ZN4core3ptr42drop_in_place$LT$std..io..error..Error$GT$17h018e918931649ff7E"(ptr noalias noundef nonnull readonly align 8 dereferenceable(8) %i.n)
          to label %.body unwind label %bb.j, !noalias !36752

bb.d:                                             ; preds = %bb.a
  %i.s = load ptr, ptr %i.n, align 8, !noalias !36749, !noundef !28 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.s, null            ; 2 uses
  br i1 %i.o, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  br i1 %.not.i.i.i, label %bb.h, label %_ZN3std2io17default_write_fmt17hae749fb490f6f0b5E.exit.i.i, !prof !30

bb.f:                                             ; preds = %bb.d
  br i1 %.not.i.i.i, label %_ZN3std2io17default_write_fmt17hae749fb490f6f0b5E.exit.i.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  invoke void @"_ZN4core3ptr42drop_in_place$LT$std..io..error..Error$GT$17h018e918931649ff7E"(ptr noalias noundef nonnull readonly align 8 dereferenceable(8) %i.n)
          to label %_ZN3std2io17default_write_fmt17hae749fb490f6f0b5E.exit.i.i unwind label %bb.l

bb.h:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !36749
  store ptr @774, ptr %i.a, align 8, !noalias !36749
  %i.t = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 1, ptr %i.t, align 8, !noalias !36749
  %i.u = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store ptr null, ptr %i.u, align 8, !noalias !36749
  %i.v = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr inttoptr (i64 8 to ptr), ptr %i.v, align 8, !noalias !36749
  %i.w = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i64 0, ptr %i.w, align 8, !noalias !36749
  invoke void @_ZN4core9panicking9panic_fmt17h92c8e5abe71dd8d1E(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @775) #42
          to label %bb.i unwind label %bb.b, !noalias !36752

bb.i:                                             ; preds = %bb.h
  unreachable

bb.j:                                             ; preds = %bb.c
  %i.x = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #40, !noalias !36752
  unreachable

_ZN3std2io17default_write_fmt17hae749fb490f6f0b5E.exit.i.i: ; preds = %bb.g, %bb.f, %bb.e
  %.sroa.0.0.i.i.i = phi ptr [ %i.s, %bb.e ], [ null, %bb.f ], [ null, %bb.g ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !36749
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !36747
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.experimental.noalias.scope.decl(metadata !36753)
  call void @llvm.experimental.noalias.scope.decl(metadata !36754)
  %.val.i.i10 = load i64, ptr %i.e, align 8, !range !29, !alias.scope !36755, !noundef !28 ; 2 uses
  %i.y = icmp eq i64 %.val.i.i10, 0
  br i1 %i.y, label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h5c0850ed224dc6b9E.exit12", label %bb.n

bb.k:                                             ; preds = %bb.m, %.body
  resume { ptr, i32 } %eh.lpad-body

bb.l:                                             ; preds = %bb.g
  %i.z = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.b, %bb.c, %bb.l
  %eh.lpad-body = phi { ptr, i32 } [ %i.z, %bb.l ], [ %i.p, %bb.c ], [ %i.p, %bb.b ]
  call void @llvm.experimental.noalias.scope.decl(metadata !36756)
  call void @llvm.experimental.noalias.scope.decl(metadata !36757)
  %.val.i.i = load i64, ptr %i.e, align 8, !range !29, !alias.scope !36758, !noundef !28 ; 2 uses
  %i.aa = icmp eq i64 %.val.i.i, 0
  br i1 %i.aa, label %bb.k, label %bb.m

bb.m:                                             ; preds = %.body
  %i.ab = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %.val1.i.i = load ptr, ptr %i.ab, align 8, !alias.scope !36758, !nonnull !28, !noundef !28
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i, i64 noundef %.val.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #41, !noalias !36758
end_hunk_2
