Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/nickel-rs/original/nickel_lang_package-a9f8ff2ef7d48f62.nickel_lang_package.b5fe27ed4146988a-cgu.0?download=true
inline.NumInlined: 25765
inline.NumDeleted: 11076
loop-unroll.NumCompletelyUnrolled: 62
loop-unroll.NumRuntimeUnrolled: 162
loop-unroll.NumUnrolled: 230
loop-unroll.NumUnrolledNotLatch: 1
begin_hunk_0_@_ZN19nickel_lang_package8manifest12ManifestFile13from_contents17h8eeeb07a36eb7c85E:bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(280) %.sroa.66.sroa.10, ptr noundef nonnull align 8 dereferenceable(280) %.sroa.536.sroa.8.0..sroa.536.0..sroa_idx.sroa_idx, i64 280, i1 false)
  %.sroa.637.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.q, i64 328
  %.sroa.8.0..sroa_idx3 = getelementptr inbounds nuw i8, ptr %i.n, i64 328
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(464) %.sroa.8.0..sroa_idx3, ptr noundef nonnull align 8 dereferenceable(464) %.sroa.637.0..sroa_idx, i64 464, i1 false)
  %.sroa.6.0..sroa_idx2 = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %i.bh = load <2 x i64>, ptr %i.at, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q)
  store i64 %i.ar, ptr %i.n, align 8
  store <2 x i64> %i.bh, ptr %.sroa.6.0..sroa_idx2, align 8
  %.sroa.6.sroa.8.0..sroa.6.0..sroa_idx2.sroa_idx = getelementptr inbounds nuw i8, ptr %i.n, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6.sroa.8.0..sroa.6.0..sroa_idx2.sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.66.sroa.8, i64 16, i1 false)
  %.sroa.6.sroa.9.0..sroa.6.0..sroa_idx2.sroa_idx = getelementptr inbounds nuw i8, ptr %i.n, i64 40
  store ptr %.sroa.536.sroa.7.0.copyload, ptr %.sroa.6.sroa.9.0..sroa.6.0..sroa_idx2.sroa_idx, align 8
  %.sroa.6.sroa.10.0..sroa.6.0..sroa_idx2.sroa_idx = getelementptr inbounds nuw i8, ptr %i.n, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(280) %.sroa.6.sroa.10.0..sroa.6.0..sroa_idx2.sroa_idx, ptr noundef nonnull align 8 dereferenceable(280) %.sroa.66.sroa.10, i64 280, i1 false)
  call void @_ZN19nickel_lang_package8manifest12ManifestFile9from_prog17hd8f5c931380be5dfE(ptr noalias noundef nonnull sret([320 x i8]) align 8 captures(address) dereferenceable(320) %0, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @856, i64 noundef 11, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(792) %i.n)
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %"_ZN19nickel_lang_package8manifest12ManifestFile13from_contents28_$u7b$$u7b$closure$u7d$$u7d$17h21f04db74edd19b9E.exit"
  ret void

bb.ae:                                            ; preds = %bb.c
  %i.bi = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr62drop_in_place$LT$nickel_lang_core..program..ProgramBuilder$GT$17h0db9343166ca4499E"(ptr noalias noundef align 8 dereferenceable(264) %i.o) #75
          to label %common.resume unwind label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.bj = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #74
  unreachable
}

; Function Attrs: nonlazybind uwtable
define void @_ZN19nickel_lang_package8manifest12ManifestFile15regenerate_lock17h7f02acf67864d349E(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([1528 x i8]) align 8 captures(none) dereferenceable(1528) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(272) %1, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(400) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 6 uses
  %i.b = alloca [400 x i8], align 8               ; 4 uses
  %i.c = alloca [144 x i8], align 8               ; 2 uses
  %i.d = alloca [320 x i8], align 8               ; 7 uses
  %.sroa.6 = alloca [144 x i8], align 8           ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !alias.scope !36157, !nonnull !41, !noundef !41
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.h = load i64, ptr %i.g, align 8, !alias.scope !36157, !noundef !41
  invoke void @_ZN19nickel_lang_package8snapshot8Snapshot3new17hf75c31090d39eaacE(ptr noalias noundef nonnull sret([320 x i8]) align 8 captures(address) dereferenceable(320) %i.d, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(400) %2, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.f, i64 noundef %i.h, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(272) %1)
          to label %_ZN19nickel_lang_package8manifest12ManifestFile21snapshot_dependencies17hfbeffdf9580837b1E.exit unwind label %bb.e

_ZN19nickel_lang_package8manifest12ManifestFile21snapshot_dependencies17hfbeffdf9580837b1E.exit: ; preds = %bb.a
  %i.i = load i64, ptr %i.d, align 8, !range !65, !noundef !41 ; 2 uses
  %.not = icmp eq i64 %i.i, -9223372036854775788
  %i.j = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(144) %.sroa.6, ptr noundef nonnull align 8 dereferenceable(144) %i.j, i64 144, i1 false)
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %_ZN19nickel_lang_package8manifest12ManifestFile21snapshot_dependencies17hfbeffdf9580837b1E.exit
  %.sroa.69.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 152
  %.sroa.318.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 208
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(168) %.sroa.318.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(168) %.sroa.69.0..sroa_idx, i64 168, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  %.sroa.217.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 64
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(144) %.sroa.217.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(144) %.sroa.6, i64 144, i1 false)
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i64 %i.i, ptr %i.k, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i64 -9223372036854775808, ptr %i.l, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6)
  tail call fastcc void @"_ZN4core3ptr56drop_in_place$LT$nickel_lang_package..config..Config$GT$17h8aad23ed11dd624aE"(ptr noalias noundef align 8 dereferenceable(400) %2)
  br label %bb.d

bb.c:                                             ; preds = %_ZN19nickel_lang_package8manifest12ManifestFile21snapshot_dependencies17hfbeffdf9580837b1E.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(144) %i.c, ptr noundef nonnull align 8 dereferenceable(144) %.sroa.6, i64 144, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(400) %i.b, ptr noundef nonnull align 8 dereferenceable(400) %2, i64 400, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr null, ptr %i.a, align 8
  %.sroa.512.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %.sroa.515.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  store i64 0, ptr %.sroa.515.0..sroa_idx, align 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.512.0..sroa_idx, i8 0, i64 16, i1 false)
  call fastcc void @_ZN19nickel_lang_package8manifest12ManifestFile9make_lock17h3c37ae22f338bbc4E(ptr noalias noundef align 8 captures(address) dereferenceable(1528) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(272) %1, ptr noalias noundef align 8 captures(address) dereferenceable(400) %i.b, ptr noalias noundef align 8 captures(address) dereferenceable(144) %i.c, ptr noalias noundef align 8 captures(address) dereferenceable(48) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  ret void

bb.e:                                             ; preds = %bb.a
  %i.m = landingpad { ptr, i32 }
          cleanup
  tail call fastcc void @"_ZN4core3ptr56drop_in_place$LT$nickel_lang_package..config..Config$GT$17h8aad23ed11dd624aE"(ptr noalias noundef align 8 dereferenceable(400) %2) #75
  resume { ptr, i32 } %i.m
}

; Function Attrs: nonlazybind uwtable
define void @_ZN19nickel_lang_package8manifest12ManifestFile19sorted_dependencies17h763180af43aa0a25E(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(272) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 5 uses
  %i.b = alloca [24 x i8], align 8                ; 11 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 216
  tail call void @llvm.experimental.noalias.scope.decl(metadata !36212)
  %i.d = load ptr, ptr %i.c, align 8, !alias.scope !36212, !nonnull !41, !noundef !41 ; 4 uses
  %.val13.i.i = load <16 x i8>, ptr %i.d, align 16, !noalias !36213
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 240
  %i.f = load i64, ptr %i.e, align 8, !alias.scope !36212, !noundef !41 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !36214
  %i.g = icmp eq i64 %i.f, 0
  br i1 %i.g, label %_ZN4core4iter6traits8iterator8Iterator7collect17h73770f6ab8eb1cc4E.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = icmp sgt <16 x i8> %.val13.i.i, splat (i8 -1)
  %i.i = bitcast <16 x i1> %i.h to i16            ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.d, i64 16 ; 2 uses
  %.not13.i.i.i.i.i.i.i.i = icmp eq i16 %i.i, 0
  br i1 %.not13.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i, label %"_ZN102_$LT$core..iter..adapters..map..Map$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h9bcf6caf99d0b580E.exit.i.i.i.i"

.lr.ph.i.i.i.i.i.i.i.i:                           ; preds = %bb.b, %.lr.ph.i.i.i.i.i.i.i.i
  %i.k = phi ptr [ %i.o, %.lr.ph.i.i.i.i.i.i.i.i ], [ %i.j, %bb.b ] ; 2 uses
  %i.l = phi ptr [ %i.n, %.lr.ph.i.i.i.i.i.i.i.i ], [ %i.d, %bb.b ]
  %.val911.i.i.i.i.i.i.i.i = load <16 x i8>, ptr %i.k, align 16, !noalias !36215
  %i.m = icmp sgt <16 x i8> %.val911.i.i.i.i.i.i.i.i, splat (i8 -1)
  %i.n = getelementptr inbounds i8, ptr %i.l, i64 -3072 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.k, i64 16 ; 2 uses
  %.cast.i.i.i.i.i.i.i.i = bitcast <16 x i1> %i.m to i16 ; 2 uses
  %.not.i.i.i.i.i.i.i.i = icmp eq i16 %.cast.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i, label %"_ZN102_$LT$core..iter..adapters..map..Map$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h9bcf6caf99d0b580E.exit.i.i.i.i"

"_ZN102_$LT$core..iter..adapters..map..Map$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h9bcf6caf99d0b580E.exit.i.i.i.i": ; preds = %.lr.ph.i.i.i.i.i.i.i.i, %bb.b
  %.sroa.5.0.i.i = phi ptr [ %i.j, %bb.b ], [ %i.o, %.lr.ph.i.i.i.i.i.i.i.i ]
  %.sroa.09.0.copyload.i.i.i.i = phi ptr [ %i.d, %bb.b ], [ %i.n, %.lr.ph.i.i.i.i.i.i.i.i ] ; 2 uses
  %.lcssa.i.i.i.i.i.i.i.i = phi i16 [ %i.i, %bb.b ], [ %.cast.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i ] ; 3 uses
  %i.p = add i16 %.lcssa.i.i.i.i.i.i.i.i, -1
  %i.q = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i.i.i.i.i.i.i.i, i1 true)
  %i.r = zext nneg i16 %i.q to i64
  %i.s = and i16 %i.p, %.lcssa.i.i.i.i.i.i.i.i
  %i.t = sub nsw i64 0, %i.r
  %i.u = getelementptr inbounds [192 x i8], ptr %.sroa.09.0.copyload.i.i.i.i, i64 %i.t ; 2 uses
  %i.v = add nsw i64 %i.f, -1                     ; 2 uses
  %i.w = getelementptr inbounds i8, ptr %i.u, i64 -192
  %i.x = getelementptr inbounds i8, ptr %i.u, i64 -184
  %i.y = tail call { ptr, i64 } @_ZN18nickel_lang_parser10identifier5Ident5label17h633c8803c249f138E(ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(4) %i.w), !noalias !36216 ; 2 uses
  %i.z = extractvalue { ptr, i64 } %i.y, 0        ; 2 uses
  %i.aa = extractvalue { ptr, i64 } %i.y, 1
  %.not.i.i.i.i = icmp eq ptr %i.z, null
  br i1 %.not.i.i.i.i, label %_ZN4core4iter6traits8iterator8Iterator7collect17h73770f6ab8eb1cc4E.exit.thread, label %bb.c

bb.c:                                             ; preds = %"_ZN102_$LT$core..iter..adapters..map..Map$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h9bcf6caf99d0b580E.exit.i.i.i.i"
  %.sroa.0.0.i.i.i.i.i = tail call noundef i64 @llvm.umax.i64(i64 %i.f, i64 4) ; 3 uses
  %i.ab = mul i64 %.sroa.0.0.i.i.i.i.i, 24        ; 3 uses
  %or.cond.i.i.i.i.i.i.i = icmp ugt i64 %i.f, 384307168202282325
  br i1 %or.cond.i.i.i.i.i.i.i, label %bb.e, label %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i, !prof !53

_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i: ; preds = %bb.c
  %i.ac = icmp eq i64 %i.ab, 0
  br i1 %i.ac, label %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17h646ae71b84e0cae6E.exit.i.i.i.i", label %bb.d

bb.d:                                             ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #67, !noalias !36217
  %i.ad = tail call noundef align 8 ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef %i.ab, i64 noundef range(i64 1, 9) 8) #67, !noalias !36217 ; 2 uses
  %i.ae = icmp eq ptr %i.ad, null
  br i1 %i.ae, label %bb.e, label %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17h646ae71b84e0cae6E.exit.i.i.i.i"

bb.e:                                             ; preds = %bb.d, %bb.c
  %.sroa.4.0.ph.i.i.i.i.i = phi i64 [ 8, %bb.d ], [ 0, %bb.c ]
  tail call void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef %.sroa.4.0.ph.i.i.i.i.i, i64 %i.ab, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @1139) #73, !noalias !36214
  unreachable

"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17h646ae71b84e0cae6E.exit.i.i.i.i": ; preds = %bb.d, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i
  %.sroa.6.0.copyload529 = phi ptr [ inttoptr (i64 8 to ptr), %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i ], [ %i.ad, %bb.d ] ; 6 uses
  %.sroa.0.0.copyload328 = phi i64 [ 0, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i ], [ %.sroa.0.0.i.i.i.i.i, %bb.d ] ; 3 uses
  %i.af = icmp ule i64 %.sroa.0.0.i.i.i.i.i, %.sroa.0.0.copyload328
  tail call void @llvm.assume(i1 %i.af)
  store ptr %i.z, ptr %.sroa.6.0.copyload529, align 8, !noalias !36214
  %.sroa.47.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.6.0.copyload529, i64 8
  store i64 %i.aa, ptr %.sroa.47.0..sroa_idx.i.i.i.i, align 8, !noalias !36214
  %.sroa.58.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.6.0.copyload529, i64 16
  store ptr %i.x, ptr %.sroa.58.0..sroa_idx.i.i.i.i, align 8, !noalias !36214
  store i64 %.sroa.0.0.copyload328, ptr %i.b, align 8, !noalias !36214
  %.sroa.4.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 4 uses
  store ptr %.sroa.6.0.copyload529, ptr %.sroa.4.0..sroa_idx.i.i.i.i, align 8, !noalias !36214
  %.sroa.6.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  store i64 1, ptr %.sroa.6.0..sroa_idx.i.i.i.i, align 8, !noalias !36214
  tail call void @llvm.experimental.noalias.scope.decl(metadata !36218)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !36219)
  %i.ag = icmp eq i64 %i.v, 0
  br i1 %i.ag, label %_ZN4core4iter6traits8iterator8Iterator7collect17h73770f6ab8eb1cc4E.exit.thread26, label %.lr.ph.i.i.i.i.i.i

_ZN4core4iter6traits8iterator8Iterator7collect17h73770f6ab8eb1cc4E.exit.thread26: ; preds = %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17h646ae71b84e0cae6E.exit.i.i.i.i"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !36214
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !36220
  br label %bb.n

.lr.ph.i.i.i.i.i.i:                               ; preds = %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17h646ae71b84e0cae6E.exit.i.i.i.i", %.noexc7.i.i.i.i
  %i.ah = phi ptr [ %i.bc, %.noexc7.i.i.i.i ], [ %.sroa.6.0.copyload529, %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17h646ae71b84e0cae6E.exit.i.i.i.i" ]
  %.sroa.9.0.copyload7.pr = phi i64 [ %i.be, %.noexc7.i.i.i.i ], [ 1, %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17h646ae71b84e0cae6E.exit.i.i.i.i" ] ; 5 uses
  %.lcssa22.i.i.i.i.i.i = phi ptr [ %.lcssa21.i.i.i.i.i.i, %.noexc7.i.i.i.i ], [ %.sroa.5.0.i.i, %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17h646ae71b84e0cae6E.exit.i.i.i.i" ] ; 2 uses
  %i.ai = phi i16 [ %i.ar, %.noexc7.i.i.i.i ], [ %i.s, %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17h646ae71b84e0cae6E.exit.i.i.i.i" ] ; 2 uses
  %.val1318.i.i.i.i.i.i = phi i64 [ %i.au, %.noexc7.i.i.i.i ], [ %i.v, %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17h646ae71b84e0cae6E.exit.i.i.i.i" ] ; 2 uses
  %.pre.i.i.i.i1617.i.i.i.i.i.i = phi ptr [ %.pre.i.i.i.i15.i.i.i.i.i.i, %.noexc7.i.i.i.i ], [ %.sroa.09.0.copyload.i.i.i.i, %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17h646ae71b84e0cae6E.exit.i.i.i.i" ] ; 2 uses
  %.not13.i.i.i.i.i.i.i.i.i.i = icmp eq i16 %i.ai, 0
  br i1 %.not13.i.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i, label %"_ZN102_$LT$core..iter..adapters..map..Map$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h9bcf6caf99d0b580E.exit.i.i.i.i.i.i"

.lr.ph.i.i.i.i.i.i.i.i.i.i:                       ; preds = %.lr.ph.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i.i
  %i.aj = phi ptr [ %i.an, %.lr.ph.i.i.i.i.i.i.i.i.i.i ], [ %.lcssa22.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i ] ; 2 uses
  %i.ak = phi ptr [ %i.am, %.lr.ph.i.i.i.i.i.i.i.i.i.i ], [ %.pre.i.i.i.i1617.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i ]
  %.val911.i.i.i.i.i.i.i.i.i.i = load <16 x i8>, ptr %i.aj, align 16, !noalias !36221
  %i.al = icmp sgt <16 x i8> %.val911.i.i.i.i.i.i.i.i.i.i, splat (i8 -1)
  %i.am = getelementptr inbounds i8, ptr %i.ak, i64 -3072 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.aj, i64 16 ; 2 uses
  %.cast.i.i.i.i.i.i.i.i.i.i = bitcast <16 x i1> %i.al to i16 ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i.i = icmp eq i16 %.cast.i.i.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i, label %"_ZN102_$LT$core..iter..adapters..map..Map$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h9bcf6caf99d0b580E.exit.i.i.i.i.i.i"

"_ZN102_$LT$core..iter..adapters..map..Map$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h9bcf6caf99d0b580E.exit.i.i.i.i.i.i": ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i
  %.lcssa21.i.i.i.i.i.i = phi ptr [ %.lcssa22.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i ], [ %i.an, %.lr.ph.i.i.i.i.i.i.i.i.i.i ]
  %.pre.i.i.i.i15.i.i.i.i.i.i = phi ptr [ %.pre.i.i.i.i1617.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i ], [ %i.am, %.lr.ph.i.i.i.i.i.i.i.i.i.i ] ; 2 uses
  %.lcssa.i.i.i.i.i.i.i.i.i.i = phi i16 [ %i.ai, %.lr.ph.i.i.i.i.i.i ], [ %.cast.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i.i ] ; 3 uses
  %i.ao = add i16 %.lcssa.i.i.i.i.i.i.i.i.i.i, -1
  %i.ap = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i.i.i.i.i.i.i.i.i.i, i1 true)
  %i.aq = zext nneg i16 %i.ap to i64
  %i.ar = and i16 %i.ao, %.lcssa.i.i.i.i.i.i.i.i.i.i
  %i.as = sub nsw i64 0, %i.aq
  %i.at = getelementptr inbounds [192 x i8], ptr %.pre.i.i.i.i15.i.i.i.i.i.i, i64 %i.as ; 2 uses
  %i.au = add i64 %.val1318.i.i.i.i.i.i, -1       ; 2 uses
  %i.av = getelementptr inbounds i8, ptr %i.at, i64 -192
  %i.aw = getelementptr inbounds i8, ptr %i.at, i64 -184
  %i.ax = invoke { ptr, i64 } @_ZN18nickel_lang_parser10identifier5Ident5label17h633c8803c249f138E(ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(4) %i.av)
          to label %.noexc.i.i.i.i unwind label %bb.g, !noalias !36214 ; 2 uses

.noexc.i.i.i.i:                                   ; preds = %"_ZN102_$LT$core..iter..adapters..map..Map$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h9bcf6caf99d0b580E.exit.i.i.i.i.i.i"
  %i.ay = extractvalue { ptr, i64 } %i.ax, 0      ; 2 uses
  %i.az = extractvalue { ptr, i64 } %i.ax, 1
  %.not.i.i.i.i.i.i = icmp eq ptr %i.ay, null
  br i1 %.not.i.i.i.i.i.i, label %_ZN4core4iter6traits8iterator8Iterator7collect17h73770f6ab8eb1cc4E.exit, label %bb.f

bb.f:                                             ; preds = %.noexc.i.i.i.i
  %i.ba = load i64, ptr %i.b, align 8, !range !43, !alias.scope !36222, !noalias !36214, !noundef !41
  %i.bb = icmp eq i64 %.sroa.9.0.copyload7.pr, %i.ba
  br i1 %i.bb, label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17he155e442296bbfc4E.exit.i.i.i.i.i.i", label %.noexc7.i.i.i.i

"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17he155e442296bbfc4E.exit.i.i.i.i.i.i": ; preds = %bb.f
  invoke fastcc void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$7reserve21do_reserve_and_handle17he4e09bb53e25f47cE"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.b, i64 noundef %.sroa.9.0.copyload7.pr, i64 noundef range(i64 1, 0) %.val1318.i.i.i.i.i.i, i64 noundef 8, i64 noundef 24)
          to label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17he155e442296bbfc4E.exit.i.i..noexc7_crit_edge.i.i.i.i" unwind label %bb.g, !noalias !36214

"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17he155e442296bbfc4E.exit.i.i..noexc7_crit_edge.i.i.i.i": ; preds = %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17he155e442296bbfc4E.exit.i.i.i.i.i.i"
  %.pre.i.i.i.i = load ptr, ptr %.sroa.4.0..sroa_idx.i.i.i.i, align 8, !alias.scope !36222, !noalias !36214
  br label %.noexc7.i.i.i.i

.noexc7.i.i.i.i:                                  ; preds = %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17he155e442296bbfc4E.exit.i.i..noexc7_crit_edge.i.i.i.i", %bb.f
  %i.bc = phi ptr [ %.pre.i.i.i.i, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17he155e442296bbfc4E.exit.i.i..noexc7_crit_edge.i.i.i.i" ], [ %i.ah, %bb.f ] ; 2 uses
  %i.bd = getelementptr inbounds nuw [24 x i8], ptr %i.bc, i64 %.sroa.9.0.copyload7.pr ; 3 uses
  store ptr %i.ay, ptr %i.bd, align 8, !noalias !36223
  %.sroa.46.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.bd, i64 8
  store i64 %i.az, ptr %.sroa.46.0..sroa_idx.i.i.i.i.i.i, align 8, !noalias !36223
  %.sroa.57.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.bd, i64 16
  store ptr %i.aw, ptr %.sroa.57.0..sroa_idx.i.i.i.i.i.i, align 8, !noalias !36223
  %i.be = add nuw nsw i64 %.sroa.9.0.copyload7.pr, 1 ; 2 uses
  store i64 %i.be, ptr %.sroa.6.0..sroa_idx.i.i.i.i, align 8, !alias.scope !36222, !noalias !36214
  %i.bf = icmp eq i64 %i.au, 0
  br i1 %i.bf, label %_ZN4core4iter6traits8iterator8Iterator7collect17h73770f6ab8eb1cc4E.exit, label %.lr.ph.i.i.i.i.i.i

bb.g:                                             ; preds = %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17he155e442296bbfc4E.exit.i.i.i.i.i.i", %"_ZN102_$LT$core..iter..adapters..map..Map$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h9bcf6caf99d0b580E.exit.i.i.i.i.i.i"
  %i.bg = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.val5.i.i.i.i = load i64, ptr %i.b, align 8, !noalias !36214 ; 2 uses
  %i.bh = icmp eq i64 %.val5.i.i.i.i, 0
  br i1 %i.bh, label %common.resume, label %bb.h

bb.h:                                             ; preds = %bb.g
  %.val6.i.i.i.i = load ptr, ptr %.sroa.4.0..sroa_idx.i.i.i.i, align 8, !noalias !36214, !nonnull !41, !noundef !41
  %i.bi = mul nuw i64 %.val5.i.i.i.i, 24
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val6.i.i.i.i, i64 noundef %i.bi, i64 noundef range(i64 1, -9223372036854775807) 8) #67, !noalias !36214
  br label %common.resume

common.resume:                                    ; preds = %bb.l, %bb.m, %bb.g, %bb.h
  %common.resume.op = phi { ptr, i32 } [ %i.bg, %bb.g ], [ %i.bg, %bb.h ], [ %i.bl, %bb.m ], [ %i.bl, %bb.l ]
  resume { ptr, i32 } %common.resume.op

_ZN4core4iter6traits8iterator8Iterator7collect17h73770f6ab8eb1cc4E.exit.thread: ; preds = %"_ZN102_$LT$core..iter..adapters..map..Map$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h9bcf6caf99d0b580E.exit.i.i.i.i", %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !36214
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !36224
  br label %bb.n

_ZN4core4iter6traits8iterator8Iterator7collect17h73770f6ab8eb1cc4E.exit: ; preds = %.noexc7.i.i.i.i, %.noexc.i.i.i.i
  %.sroa.9.0.copyload7 = phi i64 [ %.sroa.9.0.copyload7.pr, %.noexc.i.i.i.i ], [ %i.f, %.noexc7.i.i.i.i ] ; 7 uses
  %.sroa.0.0.copyload3 = load i64, ptr %i.b, align 8, !noalias !36225 ; 5 uses
  %.sroa.6.0.copyload5 = load ptr, ptr %.sroa.4.0..sroa_idx.i.i.i.i, align 8, !noalias !36225 ; 7 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !36214
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !36226
  %i.bj = icmp ult i64 %.sroa.9.0.copyload7, 2
  br i1 %i.bj, label %bb.n, label %bb.i, !prof !36227

bb.i:                                             ; preds = %_ZN4core4iter6traits8iterator8Iterator7collect17h73770f6ab8eb1cc4E.exit
  %i.bk = icmp ult i64 %.sroa.9.0.copyload7, 21
  br i1 %i.bk, label %bb.k, label %bb.j, !prof !48

bb.j:                                             ; preds = %bb.i
  invoke void @_ZN4core5slice4sort6stable14driftsort_main17h7070273b90ef25eeE(ptr noalias noundef nonnull align 8 %.sroa.6.0.copyload5, i64 noundef %.sroa.9.0.copyload7, ptr noalias noundef nonnull align 8 dereferenceable(8) %i.a)
          to label %bb.n unwind label %bb.l

bb.k:                                             ; preds = %bb.i
  tail call fastcc void @_ZN4core5slice4sort6shared9smallsort25insertion_sort_shift_left17h3a6a551767bf2549E(ptr noalias noundef nonnull align 8 %.sroa.6.0.copyload5, i64 noundef %.sroa.9.0.copyload7)
  br label %bb.n

bb.l:                                             ; preds = %bb.j
  %i.bl = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bm = icmp eq i64 %.sroa.0.0.copyload3, 0
  br i1 %i.bm, label %common.resume, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bn = mul nuw i64 %.sroa.0.0.copyload3, 24
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.6.0.copyload5) ]
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.6.0.copyload5, i64 noundef %i.bn, i64 noundef range(i64 1, -9223372036854775807) 8) #67
  br label %common.resume

bb.n:                                             ; preds = %bb.k, %_ZN4core4iter6traits8iterator8Iterator7collect17h73770f6ab8eb1cc4E.exit, %_ZN4core4iter6traits8iterator8Iterator7collect17h73770f6ab8eb1cc4E.exit.thread, %_ZN4core4iter6traits8iterator8Iterator7collect17h73770f6ab8eb1cc4E.exit.thread26, %bb.j
  %.sroa.0.025 = phi i64 [ 0, %_ZN4core4iter6traits8iterator8Iterator7collect17h73770f6ab8eb1cc4E.exit.thread ], [ %.sroa.0.0.copyload3, %_ZN4core4iter6traits8iterator8Iterator7collect17h73770f6ab8eb1cc4E.exit ], [ %.sroa.0.0.copyload328, %_ZN4core4iter6traits8iterator8Iterator7collect17h73770f6ab8eb1cc4E.exit.thread26 ], [ %.sroa.0.0.copyload3, %bb.k ], [ %.sroa.0.0.copyload3, %bb.j ]
  %.sroa.6.024 = phi ptr [ inttoptr (i64 8 to ptr), %_ZN4core4iter6traits8iterator8Iterator7collect17h73770f6ab8eb1cc4E.exit.thread ], [ %.sroa.6.0.copyload5, %_ZN4core4iter6traits8iterator8Iterator7collect17h73770f6ab8eb1cc4E.exit ], [ %.sroa.6.0.copyload529, %_ZN4core4iter6traits8iterator8Iterator7collect17h73770f6ab8eb1cc4E.exit.thread26 ], [ %.sroa.6.0.copyload5, %bb.k ], [ %.sroa.6.0.copyload5, %bb.j ]
  %.sroa.9.023 = phi i64 [ 0, %_ZN4core4iter6traits8iterator8Iterator7collect17h73770f6ab8eb1cc4E.exit.thread ], [ %.sroa.9.0.copyload7, %_ZN4core4iter6traits8iterator8Iterator7collect17h73770f6ab8eb1cc4E.exit ], [ 1, %_ZN4core4iter6traits8iterator8Iterator7collect17h73770f6ab8eb1cc4E.exit.thread26 ], [ %.sroa.9.0.copyload7, %bb.k ], [ %.sroa.9.0.copyload7, %bb.j ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !36226
  store i64 %.sroa.0.025, ptr %0, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.6.024, ptr %.sroa.6.0..sroa_idx, align 8
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.9.023, ptr %.sroa.9.0..sroa_idx, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_ZN19nickel_lang_package8manifest12ManifestFile21default_lockfile_path17h88d719ea39017049E(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([320 x i8]) align 8 captures(none) dereferenceable(320) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(272) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !41, !noundef !41
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.d = load i64, ptr %i.c, align 8, !noundef !41
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @_ZN3std4path4Path5_join17h7844c17c52e6efdbE(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.e, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.b, i64 noundef %i.d, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @857, i64 noundef 15)
  store i64 -9223372036854775788, ptr %0, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_ZN19nickel_lang_package8manifest12ManifestFile21snapshot_dependencies17hfbeffdf9580837b1E(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([320 x i8]) align 8 captures(none) dereferenceable(320) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(272) %1, ptr noalias noundef readonly align 8 captures(none) dereferenceable(400) %2) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !41, !noundef !41
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.d = load i64, ptr %i.c, align 8, !noundef !41
  tail call void @_ZN19nickel_lang_package8snapshot8Snapshot3new17hf75c31090d39eaacE(ptr noalias noundef nonnull sret([320 x i8]) align 8 captures(address) dereferenceable(320) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(400) %2, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.b, i64 noundef %i.d, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(272) %1)
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc noundef zeroext i1 @_ZN19nickel_lang_package8manifest12ManifestFile23is_lock_file_up_to_date14up_to_date_rec17hef1aed4889e199a4E(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(144) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(48) %1, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(272) %2, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %3, i64 noundef %4, ptr noalias noundef readonly align 8 captures(address_is_null) dereferenceable_or_null(200) %5) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [176 x i8], align 8               ; 8 uses
  %i.b = alloca [24 x i8], align 8                ; 7 uses
  %i.c = alloca [24 x i8], align 8                ; 9 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !36305)
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 240
  %i.e = load i64, ptr %i.d, align 8, !alias.scope !36305, !noundef !41 ; 2 uses
  %.sink1.i.sroa.gep39 = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.f = icmp eq i64 %i.e, 0
  br i1 %i.f, label %"_ZN5alloc11collections5btree3map25BTreeMap$LT$K$C$V$C$A$GT$3get17h6790d58a8d24a4e2E.exit.thread", label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 216
  %i.h = load ptr, ptr %i.g, align 8, !alias.scope !36305, !nonnull !41, !noundef !41 ; 5 uses
  %.val13.i.i = load <16 x i8>, ptr %i.h, align 16, !noalias !36306
  %i.i = icmp sgt <16 x i8> %.val13.i.i, splat (i8 -1)
  %i.j = bitcast <16 x i1> %i.i to i16            ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.h, i64 16 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.val15 = load ptr, ptr %i.l, align 8
  %.val15.fr = freeze ptr %.val15                 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 32
  %.val16 = load i64, ptr %i.m, align 8
  %.not.i = icmp eq ptr %.val15.fr, null
  %i.n = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.o = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.p = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.q = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.r = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.sroa.555.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 96
  br i1 %.not.i, label %.lr.ph.split.us, label %.lr.ph.split

.lr.ph.split.us:                                  ; preds = %.lr.ph
  %.not13.i.i.us = icmp eq i16 %i.j, 0
  br i1 %.not13.i.i.us, label %.lr.ph.i.i.us, label %.loopexit.us

.lr.ph.i.i.us:                                    ; preds = %.lr.ph.split.us, %.lr.ph.i.i.us
  %i.t = phi ptr [ %i.x, %.lr.ph.i.i.us ], [ %i.k, %.lr.ph.split.us ] ; 2 uses
  %i.u = phi ptr [ %i.w, %.lr.ph.i.i.us ], [ %i.h, %.lr.ph.split.us ]
  %.val911.i.i.us = load <16 x i8>, ptr %i.t, align 16, !noalias !36307
  %i.v = icmp sgt <16 x i8> %.val911.i.i.us, splat (i8 -1)
  %i.w = getelementptr inbounds i8, ptr %i.u, i64 -3072 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  %.cast.i.i.us = bitcast <16 x i1> %i.v to i16   ; 2 uses
  %.not.i.i.us = icmp eq i16 %.cast.i.i.us, 0
  br i1 %.not.i.i.us, label %.lr.ph.i.i.us, label %.loopexit.us

.loopexit.us:                                     ; preds = %.lr.ph.i.i.us, %.lr.ph.split.us
  %.sroa.0.1.us = phi ptr [ %i.h, %.lr.ph.split.us ], [ %i.w, %.lr.ph.i.i.us ]
  %.lcssa.i.i.us = phi i16 [ %i.j, %.lr.ph.split.us ], [ %.cast.i.i.us, %.lr.ph.i.i.us ]
  %i.y = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i.i.us, i1 true)
  %i.z = zext nneg i16 %i.y to i64
  %i.aa = sub nsw i64 0, %i.z
  %i.ab = getelementptr inbounds [192 x i8], ptr %.sroa.0.1.us, i64 %i.aa
  %i.ac = getelementptr inbounds i8, ptr %i.ab, i64 -192
  %i.ad = tail call { ptr, i64 } @_ZN18nickel_lang_parser10identifier5Ident5label17h633c8803c249f138E(ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(4) %i.ac) ; 2 uses
  %i.ae = extractvalue { ptr, i64 } %i.ad, 0
  %i.af = extractvalue { ptr, i64 } %i.ad, 1
  %i.ag = tail call noundef align 8 dereferenceable_or_null(216) ptr @_ZN19nickel_lang_package4lock8LockFile10dependency17h97393f12400a1c49E(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(200) %5, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.ae, i64 noundef %i.af)
  %.not10.us = icmp eq ptr %i.ag, null
  br i1 %.not10.us, label %"_ZN5alloc11collections5btree3map25BTreeMap$LT$K$C$V$C$A$GT$3get17h6790d58a8d24a4e2E.exit.thread", label %"._ZN5alloc11collections5btree3map25BTreeMap$LT$K$C$V$C$A$GT$3get17h6790d58a8d24a4e2E.exit.thread.loopexit67_crit_edge109.split.us"

"._ZN5alloc11collections5btree3map25BTreeMap$LT$K$C$V$C$A$GT$3get17h6790d58a8d24a4e2E.exit.thread.loopexit67_crit_edge109.split.us": ; preds = %.loopexit.us
  tail call void @llvm.experimental.noalias.scope.decl(metadata !36308)
  br label %"_ZN5alloc11collections5btree3map25BTreeMap$LT$K$C$V$C$A$GT$3get17h6790d58a8d24a4e2E.exit.thread"

.lr.ph.split:                                     ; preds = %.lr.ph, %bb.k
  %.sroa.0.0108 = phi ptr [ %.sroa.0.1, %bb.k ], [ %i.h, %.lr.ph ] ; 2 uses
  %.sroa.7.0107 = phi ptr [ %.sroa.7.1, %bb.k ], [ %i.k, %.lr.ph ] ; 2 uses
  %.sroa.936.0106 = phi i16 [ %i.ap, %bb.k ], [ %i.j, %.lr.ph ] ; 2 uses
  %.sroa.1137.0105 = phi i64 [ %i.as, %bb.k ], [ %i.e, %.lr.ph ]
  %.not13.i.i = icmp eq i16 %.sroa.936.0106, 0
  br i1 %.not13.i.i, label %.lr.ph.i.i, label %.loopexit

.lr.ph.i.i:                                       ; preds = %.lr.ph.split, %.lr.ph.i.i
  %i.ah = phi ptr [ %i.al, %.lr.ph.i.i ], [ %.sroa.7.0107, %.lr.ph.split ] ; 2 uses
  %i.ai = phi ptr [ %i.ak, %.lr.ph.i.i ], [ %.sroa.0.0108, %.lr.ph.split ]
  %.val911.i.i = load <16 x i8>, ptr %i.ah, align 16, !noalias !36307
  %i.aj = icmp sgt <16 x i8> %.val911.i.i, splat (i8 -1)
  %i.ak = getelementptr inbounds i8, ptr %i.ai, i64 -3072 ; 2 uses
end_hunk_0
begin_hunk_1_@_ZN3std6thread6scoped5scope17h4f3245114f91edc8E:bb.a
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.17.0..sroa_idx.i.i.i.i.i, i8 0, i64 16, i1 false), !noalias !44996
  %i.dz = getelementptr inbounds nuw i8, ptr %i.bl, i64 512
  store i64 1, ptr %i.dz, align 128, !noalias !44996
  %i.ea = getelementptr inbounds nuw i8, ptr %i.bl, i64 520
  store i64 1, ptr %i.ea, align 8, !noalias !44996
  %i.eb = getelementptr inbounds nuw i8, ptr %i.bl, i64 528
  store i8 0, ptr %i.eb, align 16, !noalias !44996
  store i64 0, ptr %i.bl, align 128, !noalias !44996
  %.sroa.437.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.bl, i64 128
  store i64 0, ptr %.sroa.437.0..sroa_idx.i.i.i.i.i, align 128, !noalias !44996
  %.sroa.538.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.bl, i64 256
  store i32 0, ptr %.sroa.538.0..sroa_idx.i.i.i.i.i, align 128, !noalias !44996
  %.sroa.6.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.bl, i64 260
  store i8 0, ptr %.sroa.6.0..sroa_idx.i.i.i.i.i, align 4, !noalias !44996
  %.sroa.739.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.bl, i64 264
  store i64 0, ptr %.sroa.739.0..sroa_idx.i.i.i.i.i, align 8, !noalias !44996
  %.sroa.8.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.bl, i64 272
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.8.0..sroa_idx.i.i.i.i.i, align 16, !noalias !44996
  %.sroa.10.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.bl, i64 296
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.10.0..sroa_idx.i.i.i.i.i, align 8, !noalias !44996
  %.sroa.11.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.bl, i64 304
  store i64 0, ptr %.sroa.11.0..sroa_idx.i.i.i.i.i, align 16, !noalias !44996
  %.sroa.12.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.bl, i64 312
  store i8 1, ptr %.sroa.12.0..sroa_idx.i.i.i.i.i, align 8, !noalias !44996
  %.sroa.1340.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.bl, i64 320
  store i32 0, ptr %.sroa.1340.0..sroa_idx.i.i.i.i.i, align 64, !noalias !44996
  %.sroa.14.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.bl, i64 324
  store i8 0, ptr %.sroa.14.0..sroa_idx.i.i.i.i.i, align 4, !noalias !44996
  %.sroa.1541.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.bl, i64 328
  store i64 0, ptr %.sroa.1541.0..sroa_idx.i.i.i.i.i, align 8, !noalias !44996
  %.sroa.16.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.bl, i64 336
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.16.0..sroa_idx.i.i.i.i.i, align 16, !noalias !44996
  %.sroa.18.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.bl, i64 360
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.18.0..sroa_idx.i.i.i.i.i, align 8, !noalias !44996
  %.sroa.19.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.bl, i64 368
  store i64 0, ptr %.sroa.19.0..sroa_idx.i.i.i.i.i, align 16, !noalias !44996
  %.sroa.20.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.bl, i64 376
  store i8 1, ptr %.sroa.20.0..sroa_idx.i.i.i.i.i, align 8, !noalias !44996
  %.sroa.2142.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.bl, i64 384
  store i64 %i.cv, ptr %.sroa.2142.0..sroa_idx.i.i.i.i.i, align 128, !noalias !44996
  %.sroa.22.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.bl, i64 392
  store i64 %i.dx, ptr %.sroa.22.0..sroa_idx.i.i.i.i.i, align 8, !noalias !44996
  %.sroa.23.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.bl, i64 400
  store i64 %i.dw, ptr %.sroa.23.0..sroa_idx.i.i.i.i.i, align 16, !noalias !44996
  %.sroa.24.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.bl, i64 408
  store ptr %i.dh, ptr %.sroa.24.0..sroa_idx.i.i.i.i.i, align 8, !noalias !44996
  %.sroa.25.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.bl, i64 416
  store i64 %i.cv, ptr %.sroa.25.0..sroa_idx.i.i.i.i.i, align 32, !noalias !44996
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #67, !noalias !45002
  %i.ec = tail call noundef align 128 dereferenceable_or_null(640) ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef 640, i64 noundef range(i64 1, -9223372036854775807) 128) #67, !noalias !45002 ; 13 uses
  %i.ed = icmp eq ptr %i.ec, null
  br i1 %i.ed, label %bb.n, label %bb.u, !prof !49

bb.n:                                             ; preds = %"_ZN17crossbeam_channel7flavors5array16Channel$LT$T$GT$13with_capacity17had11c3f47af356e8E.exit.i.i.i.i.i"
  invoke void @_ZN5alloc5alloc18handle_alloc_error17h8f86e24af4223f3dE(i64 noundef 128, i64 noundef 640) #73
          to label %.noexc35.i.i.i.i.i unwind label %bb.o, !noalias !44998

.noexc35.i.i.i.i.i:                               ; preds = %bb.n
  unreachable

bb.o:                                             ; preds = %bb.n
  %i.ee = landingpad { ptr, i32 }
          cleanup
          catch ptr null
  invoke fastcc void @"_ZN4core3ptr196drop_in_place$LT$crossbeam_channel..counter..Counter$LT$crossbeam_channel..flavors..array..Channel$LT$alloc..vec..Vec$LT$$LP$$RF$mut$u20$gix_index..Entry$C$$RF$bstr..bstr..BStr$RP$$GT$$GT$$GT$$GT$17h5fd4ee7d1ad05de5E"(ptr noalias noundef nonnull align 128 dereferenceable(640) %i.bl) #75
          to label %.body.i.i.i.i unwind label %bb.p, !noalias !44998

bb.p:                                             ; preds = %bb.o
  %i.ef = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #74, !noalias !44998
  unreachable

.body.i.i.i.i:                                    ; preds = %bb.mt, %.body128.i.i.i.i, %.thread39.i.i.i.i, %bb.cq, %bb.o, %bb.j
  %.pn35.pn.pn.pn.i.i.i.i = phi { ptr, i32 } [ %.pn35.pn.i.i.i.i, %bb.mt ], [ %.pn35.pn.i.i.i.i, %bb.cq ], [ %i.lg, %.thread39.i.i.i.i ], [ %eh.lpad-body129.i.i.i.i, %.body128.i.i.i.i ], [ %i.dc, %bb.j ], [ %i.ee, %bb.o ]
  invoke fastcc void @"_ZN4core3ptr208drop_in_place$LT$gix_worktree_state..checkout..chunk..Context$LT$gix_odb..memory..Proxy$LT$gix_odb..Cache$LT$gix_odb..store_impls..dynamic..Handle$LT$alloc..sync..Arc$LT$gix_odb..Store$GT$$GT$$GT$$GT$$GT$$GT$17hc8e414881fa24383E"(ptr noalias noundef nonnull align 8 dereferenceable(2232) %i.cf)
          to label %"_ZN4core3ptr269drop_in_place$LT$gix_worktree_state..checkout..function..checkout_inner$LT$gix_odb..memory..Proxy$LT$gix_odb..Cache$LT$gix_odb..store_impls..dynamic..Handle$LT$alloc..sync..Arc$LT$gix_odb..Store$GT$$GT$$GT$$GT$$C$$RF$std..path..Path$GT$..$u7b$$u7b$closure$u7d$$u7d$$GT$17h2d073fb2fb21aac4E.exit.i.i.i.i" unwind label %bb.jm, !noalias !45000

bb.q:                                             ; preds = %bb.h
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(136) %i.da, ptr noundef nonnull align 8 dereferenceable(136) %i.bm, i64 136, i1 false), !noalias !44998
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bm), !noalias !44996
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ce), !noalias !45003
  store i64 2, ptr %i.ce, align 8, !noalias !45003
  %i.eg = getelementptr inbounds nuw i8, ptr %i.ce, i64 8
  store ptr %i.da, ptr %i.eg, align 8, !noalias !45003
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bk), !noalias !45004
  %i.eh = getelementptr inbounds nuw i8, ptr %i.bk, i64 112
  store i64 1, ptr %i.eh, align 8, !noalias !45004
  %i.ei = getelementptr inbounds nuw i8, ptr %i.bk, i64 120
  store i64 1, ptr %i.ei, align 8, !noalias !45004
  %i.ej = getelementptr inbounds nuw i8, ptr %i.bk, i64 128
  store i8 0, ptr %i.ej, align 8, !noalias !45004
  store i32 0, ptr %i.bk, align 8, !noalias !45004
  %.sroa.420.0..sroa_idx.i99.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.bk, i64 4
  store i8 0, ptr %.sroa.420.0..sroa_idx.i99.i.i.i.i, align 4, !noalias !45004
  %.sroa.521.sroa.4.0..sroa.521.0..sroa_idx.sroa_idx.i100.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.bk, i64 8
  store i64 0, ptr %.sroa.521.sroa.4.0..sroa.521.0..sroa_idx.sroa_idx.i100.i.i.i.i, align 8, !noalias !45004
  %.sroa.521.sroa.5.0..sroa.521.0..sroa_idx.sroa_idx.i101.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.bk, i64 16
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.521.sroa.5.0..sroa.521.0..sroa_idx.sroa_idx.i101.i.i.i.i, align 8, !noalias !45004
  %.sroa.521.sroa.6.0..sroa.521.0..sroa_idx.sroa_idx.i102.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.bk, i64 24
  %.sroa.521.sroa.8.0..sroa.521.0..sroa_idx.sroa_idx.i103.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.bk, i64 40
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.521.sroa.6.0..sroa.521.0..sroa_idx.sroa_idx.i102.i.i.i.i, i8 0, i64 16, i1 false), !noalias !45004
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.521.sroa.8.0..sroa.521.0..sroa_idx.sroa_idx.i103.i.i.i.i, align 8, !noalias !45004
  %.sroa.521.sroa.9.0..sroa.521.0..sroa_idx.sroa_idx.i104.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.bk, i64 48
  %.sroa.521.sroa.11.0..sroa.521.0..sroa_idx.sroa_idx.i105.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.bk, i64 64
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.521.sroa.9.0..sroa.521.0..sroa_idx.sroa_idx.i104.i.i.i.i, i8 0, i64 16, i1 false), !noalias !45004
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.521.sroa.11.0..sroa.521.0..sroa_idx.sroa_idx.i105.i.i.i.i, align 8, !noalias !45004
  %.sroa.521.sroa.12.0..sroa.521.0..sroa_idx.sroa_idx.i106.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.bk, i64 72
  %.sroa.521.sroa.14.0..sroa.521.0..sroa_idx.sroa_idx.i107.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.bk, i64 88
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.521.sroa.12.0..sroa.521.0..sroa_idx.sroa_idx.i106.i.i.i.i, i8 0, i64 16, i1 false), !noalias !45004
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.521.sroa.14.0..sroa.521.0..sroa_idx.sroa_idx.i107.i.i.i.i, align 8, !noalias !45004
  %.sroa.521.sroa.15.0..sroa.521.0..sroa_idx.sroa_idx.i108.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.bk, i64 96
  store i64 0, ptr %.sroa.521.sroa.15.0..sroa.521.0..sroa_idx.sroa_idx.i108.i.i.i.i, align 8, !noalias !45004
  %.sroa.521.sroa.16.0..sroa.521.0..sroa_idx.sroa_idx.i109.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.bk, i64 104
  store i8 0, ptr %.sroa.521.sroa.16.0..sroa.521.0..sroa_idx.sroa_idx.i109.i.i.i.i, align 8, !noalias !45004
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #67, !noalias !45005
  %i.ek = tail call noundef align 8 dereferenceable_or_null(136) ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef 136, i64 noundef range(i64 1, -9223372036854775807) 8) #67, !noalias !45005 ; 4 uses
  %i.el = icmp eq ptr %i.ek, null
  br i1 %i.el, label %bb.r, label %_ZN17crossbeam_channel7channel7bounded17h4fe6350061dd5559E.exit.i.thread.i.i.i, !prof !49

bb.r:                                             ; preds = %bb.q
  invoke void @_ZN5alloc5alloc18handle_alloc_error17h8f86e24af4223f3dE(i64 noundef 8, i64 noundef 136) #73
          to label %.noexc.i110.i.i.i.i unwind label %bb.s, !noalias !45006

.noexc.i110.i.i.i.i:                              ; preds = %bb.r
  unreachable

bb.s:                                             ; preds = %bb.r
  %i.em = landingpad { ptr, i32 }
          cleanup
          catch ptr null
  invoke fastcc void @"_ZN4core3ptr99drop_in_place$LT$std..sync..poison..mutex..Mutex$LT$crossbeam_channel..flavors..zero..Inner$GT$$GT$17h9525e037ec666045E"(ptr noalias noundef nonnull readonly align 8 dereferenceable(136) %i.bk)
          to label %.body111.i.i.i.i unwind label %bb.t, !noalias !45006

bb.t:                                             ; preds = %bb.s
  %i.en = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #74, !noalias !45006
  unreachable

_ZN17crossbeam_channel7channel7bounded17h4fe6350061dd5559E.exit.i.thread.i.i.i: ; preds = %bb.q
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(136) %i.ek, ptr noundef nonnull align 8 dereferenceable(136) %i.bk, i64 136, i1 false), !noalias !45006
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bk), !noalias !45004
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cd), !noalias !45003
  store i64 2, ptr %i.cd, align 8, !noalias !45003
  %i.eo = getelementptr inbounds nuw i8, ptr %i.cd, i64 8
  store ptr %i.ek, ptr %i.eo, align 8, !noalias !45003
  br label %._crit_edge.i.i.i.i

bb.u:                                             ; preds = %"_ZN17crossbeam_channel7flavors5array16Channel$LT$T$GT$13with_capacity17had11c3f47af356e8E.exit.i.i.i.i.i"
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 128 dereferenceable(640) %i.ec, ptr noundef nonnull align 128 dereferenceable(640) %i.bl, i64 640, i1 false), !noalias !44998
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bl), !noalias !44996
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ce), !noalias !45003
  store i64 0, ptr %i.ce, align 8, !noalias !45003
  %i.ep = getelementptr inbounds nuw i8, ptr %i.ce, i64 8 ; 2 uses
  store ptr %i.ec, ptr %i.ep, align 8, !noalias !45003
  %i.eq = shl i64 %i.cv, 8                        ; 3 uses
  %i.er = icmp samesign ugt i64 %i.cv, 72057594037927935
  %i.es = icmp ugt i64 %i.eq, 9223372036854775800
  %or.cond.i.i.i.i.i.i.i.i.i.i.i67.i.i.i.i = or i1 %i.er, %i.es
  br i1 %or.cond.i.i.i.i.i.i.i.i.i.i.i67.i.i.i.i, label %bb.v, label %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i.i.i.i.i68.i.i.i.i, !prof !53

_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i.i.i.i.i68.i.i.i.i: ; preds = %bb.u
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #67, !noalias !45007
  %i.et = tail call noundef align 8 ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef %i.eq, i64 noundef range(i64 1, 9) 8) #67, !noalias !45007 ; 7 uses
  %i.eu = icmp eq ptr %i.et, null
  br i1 %i.eu, label %bb.v, label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h2e9e181ec7043619E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.preheader"

"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h2e9e181ec7043619E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.preheader": ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i.i.i.i.i68.i.i.i.i
  %xtraiter991 = and i64 %i.cv, 3                 ; 3 uses
  %i.ev = icmp samesign ult i64 %i.cv, 4
  br i1 %i.ev, label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h2e9e181ec7043619E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.epil.preheader", label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h2e9e181ec7043619E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.preheader.new"

"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h2e9e181ec7043619E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.preheader.new": ; preds = %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h2e9e181ec7043619E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.preheader"
  %unroll_iter995 = and i64 %i.cv, 72057594037927932
  br label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h2e9e181ec7043619E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i"

bb.v:                                             ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i.i.i.i.i68.i.i.i.i, %bb.u
  %.sroa.4.0.ph.i.i.i.i.i.i.i.i.i98.i.i.i.i = phi i64 [ 8, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i.i.i.i.i68.i.i.i.i ], [ 0, %bb.u ]
  invoke void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef %.sroa.4.0.ph.i.i.i.i.i.i.i.i.i98.i.i.i.i, i64 %i.eq, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @1139) #73
          to label %.noexc113.i.i.i.i unwind label %bb.z, !noalias !45000

.noexc113.i.i.i.i:                                ; preds = %bb.v
  unreachable

"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h2e9e181ec7043619E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i": ; preds = %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h2e9e181ec7043619E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i", %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h2e9e181ec7043619E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.preheader.new"
  %.sroa.0.011.i.i.i.i.i.i.i.i.i.i.i.i.i69.i.i.i.i = phi i64 [ 0, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h2e9e181ec7043619E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.preheader.new" ], [ %i.fc, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h2e9e181ec7043619E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i" ] ; 6 uses
  %niter996 = phi i64 [ 0, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h2e9e181ec7043619E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.preheader.new" ], [ %niter996.next.3, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h2e9e181ec7043619E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i" ]
  %i.ew = or disjoint i64 %.sroa.0.011.i.i.i.i.i.i.i.i.i.i.i.i.i69.i.i.i.i, 1 ; 2 uses
  %i.ex = getelementptr inbounds nuw [256 x i8], ptr %i.et, i64 %.sroa.0.011.i.i.i.i.i.i.i.i.i.i.i.i.i69.i.i.i.i
  store i64 %.sroa.0.011.i.i.i.i.i.i.i.i.i.i.i.i.i69.i.i.i.i, ptr %i.ex, align 8, !noalias !45008
  %i.ey = or disjoint i64 %.sroa.0.011.i.i.i.i.i.i.i.i.i.i.i.i.i69.i.i.i.i, 2 ; 2 uses
  %i.ez = getelementptr inbounds nuw [256 x i8], ptr %i.et, i64 %i.ew
  store i64 %i.ew, ptr %i.ez, align 8, !noalias !45008
  %i.fa = or disjoint i64 %.sroa.0.011.i.i.i.i.i.i.i.i.i.i.i.i.i69.i.i.i.i, 3 ; 2 uses
  %i.fb = getelementptr inbounds nuw [256 x i8], ptr %i.et, i64 %i.ey
  store i64 %i.ey, ptr %i.fb, align 8, !noalias !45008
  %i.fc = add nuw nsw i64 %.sroa.0.011.i.i.i.i.i.i.i.i.i.i.i.i.i69.i.i.i.i, 4 ; 2 uses
  %i.fd = getelementptr inbounds nuw [256 x i8], ptr %i.et, i64 %i.fa
  store i64 %i.fa, ptr %i.fd, align 8, !noalias !45008
  %niter996.next.3 = add nuw nsw i64 %niter996, 4 ; 2 uses
  %niter996.ncmp.3 = icmp eq i64 %niter996.next.3, %unroll_iter995
  br i1 %niter996.ncmp.3, label %"_ZN17crossbeam_channel7flavors5array16Channel$LT$T$GT$13with_capacity17he3465818ab032d47E.exit.i.i.i.i.i.unr-lcssa", label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h2e9e181ec7043619E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i"

"_ZN17crossbeam_channel7flavors5array16Channel$LT$T$GT$13with_capacity17he3465818ab032d47E.exit.i.i.i.i.i.unr-lcssa": ; preds = %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h2e9e181ec7043619E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i"
  %lcmp.mod993.not = icmp eq i64 %xtraiter991, 0
  br i1 %lcmp.mod993.not, label %"_ZN17crossbeam_channel7flavors5array16Channel$LT$T$GT$13with_capacity17he3465818ab032d47E.exit.i.i.i.i.i", label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h2e9e181ec7043619E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.epil.preheader"

"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h2e9e181ec7043619E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.epil.preheader": ; preds = %"_ZN17crossbeam_channel7flavors5array16Channel$LT$T$GT$13with_capacity17he3465818ab032d47E.exit.i.i.i.i.i.unr-lcssa", %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h2e9e181ec7043619E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.preheader"
  %.sroa.0.011.i.i.i.i.i.i.i.i.i.i.i.i.i69.i.i.i.i.epil.init = phi i64 [ 0, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h2e9e181ec7043619E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.preheader" ], [ %i.fc, %"_ZN17crossbeam_channel7flavors5array16Channel$LT$T$GT$13with_capacity17he3465818ab032d47E.exit.i.i.i.i.i.unr-lcssa" ]
  %lcmp.mod994 = icmp ne i64 %xtraiter991, 0
  tail call void @llvm.assume(i1 %lcmp.mod994)
  br label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h2e9e181ec7043619E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.epil"

"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h2e9e181ec7043619E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.epil": ; preds = %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h2e9e181ec7043619E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.epil", %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h2e9e181ec7043619E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.epil.preheader"
  %.sroa.0.011.i.i.i.i.i.i.i.i.i.i.i.i.i69.i.i.i.i.epil = phi i64 [ %i.fe, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h2e9e181ec7043619E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.epil" ], [ %.sroa.0.011.i.i.i.i.i.i.i.i.i.i.i.i.i69.i.i.i.i.epil.init, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h2e9e181ec7043619E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.epil.preheader" ] ; 3 uses
  %epil.iter992 = phi i64 [ %epil.iter992.next, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h2e9e181ec7043619E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.epil" ], [ 0, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h2e9e181ec7043619E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.epil.preheader" ]
  %i.fe = add nuw nsw i64 %.sroa.0.011.i.i.i.i.i.i.i.i.i.i.i.i.i69.i.i.i.i.epil, 1
  %i.ff = getelementptr inbounds nuw [256 x i8], ptr %i.et, i64 %.sroa.0.011.i.i.i.i.i.i.i.i.i.i.i.i.i69.i.i.i.i.epil
  store i64 %.sroa.0.011.i.i.i.i.i.i.i.i.i.i.i.i.i69.i.i.i.i.epil, ptr %i.ff, align 8, !noalias !45008
  %epil.iter992.next = add i64 %epil.iter992, 1   ; 2 uses
  %epil.iter992.cmp.not = icmp eq i64 %epil.iter992.next, %xtraiter991
  br i1 %epil.iter992.cmp.not, label %"_ZN17crossbeam_channel7flavors5array16Channel$LT$T$GT$13with_capacity17he3465818ab032d47E.exit.i.i.i.i.i", label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h2e9e181ec7043619E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.epil", !llvm.loop !44605

"_ZN17crossbeam_channel7flavors5array16Channel$LT$T$GT$13with_capacity17he3465818ab032d47E.exit.i.i.i.i.i": ; preds = %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h2e9e181ec7043619E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.epil", %"_ZN17crossbeam_channel7flavors5array16Channel$LT$T$GT$13with_capacity17he3465818ab032d47E.exit.i.i.i.i.i.unr-lcssa"
  %i.fg = icmp samesign ult i64 %i.cv, 36028797018963968
  tail call void @llvm.assume(i1 %i.fg)
  %.sroa.9.0..sroa_idx.i71.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.bj, i64 280
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bj), !noalias !45004
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.9.0..sroa_idx.i71.i.i.i.i, i8 0, i64 16, i1 false), !noalias !45004
  %.sroa.17.0..sroa_idx.i72.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.bj, i64 344
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.17.0..sroa_idx.i72.i.i.i.i, i8 0, i64 16, i1 false), !noalias !45004
  %i.fh = getelementptr inbounds nuw i8, ptr %i.bj, i64 512
  store i64 1, ptr %i.fh, align 128, !noalias !45004
  %i.fi = getelementptr inbounds nuw i8, ptr %i.bj, i64 520
  store i64 1, ptr %i.fi, align 8, !noalias !45004
  %i.fj = getelementptr inbounds nuw i8, ptr %i.bj, i64 528
  store i8 0, ptr %i.fj, align 16, !noalias !45004
  store i64 0, ptr %i.bj, align 128, !noalias !45004
  %.sroa.437.0..sroa_idx.i73.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.bj, i64 128
  store i64 0, ptr %.sroa.437.0..sroa_idx.i73.i.i.i.i, align 128, !noalias !45004
  %.sroa.538.0..sroa_idx.i74.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.bj, i64 256
  store i32 0, ptr %.sroa.538.0..sroa_idx.i74.i.i.i.i, align 128, !noalias !45004
  %.sroa.6.0..sroa_idx.i75.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.bj, i64 260
  store i8 0, ptr %.sroa.6.0..sroa_idx.i75.i.i.i.i, align 4, !noalias !45004
  %.sroa.739.0..sroa_idx.i76.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.bj, i64 264
  store i64 0, ptr %.sroa.739.0..sroa_idx.i76.i.i.i.i, align 8, !noalias !45004
  %.sroa.8.0..sroa_idx.i77.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.bj, i64 272
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.8.0..sroa_idx.i77.i.i.i.i, align 16, !noalias !45004
  %.sroa.10.0..sroa_idx.i78.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.bj, i64 296
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.10.0..sroa_idx.i78.i.i.i.i, align 8, !noalias !45004
  %.sroa.11.0..sroa_idx.i79.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.bj, i64 304
  store i64 0, ptr %.sroa.11.0..sroa_idx.i79.i.i.i.i, align 16, !noalias !45004
  %.sroa.12.0..sroa_idx.i80.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.bj, i64 312
  store i8 1, ptr %.sroa.12.0..sroa_idx.i80.i.i.i.i, align 8, !noalias !45004
  %.sroa.1340.0..sroa_idx.i81.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.bj, i64 320
  store i32 0, ptr %.sroa.1340.0..sroa_idx.i81.i.i.i.i, align 64, !noalias !45004
  %.sroa.14.0..sroa_idx.i82.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.bj, i64 324
  store i8 0, ptr %.sroa.14.0..sroa_idx.i82.i.i.i.i, align 4, !noalias !45004
  %.sroa.1541.0..sroa_idx.i83.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.bj, i64 328
  store i64 0, ptr %.sroa.1541.0..sroa_idx.i83.i.i.i.i, align 8, !noalias !45004
  %.sroa.16.0..sroa_idx.i84.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.bj, i64 336
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.16.0..sroa_idx.i84.i.i.i.i, align 16, !noalias !45004
  %.sroa.18.0..sroa_idx.i85.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.bj, i64 360
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.18.0..sroa_idx.i85.i.i.i.i, align 8, !noalias !45004
  %.sroa.19.0..sroa_idx.i86.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.bj, i64 368
  store i64 0, ptr %.sroa.19.0..sroa_idx.i86.i.i.i.i, align 16, !noalias !45004
  %.sroa.20.0..sroa_idx.i87.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.bj, i64 376
  store i8 1, ptr %.sroa.20.0..sroa_idx.i87.i.i.i.i, align 8, !noalias !45004
  %.sroa.2142.0..sroa_idx.i88.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.bj, i64 384
  store i64 %i.cv, ptr %.sroa.2142.0..sroa_idx.i88.i.i.i.i, align 128, !noalias !45004
  %.sroa.22.0..sroa_idx.i89.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.bj, i64 392
  store i64 %i.dx, ptr %.sroa.22.0..sroa_idx.i89.i.i.i.i, align 8, !noalias !45004
  %.sroa.23.0..sroa_idx.i90.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.bj, i64 400
  store i64 %i.dw, ptr %.sroa.23.0..sroa_idx.i90.i.i.i.i, align 16, !noalias !45004
  %.sroa.24.0..sroa_idx.i91.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.bj, i64 408
  store ptr %i.et, ptr %.sroa.24.0..sroa_idx.i91.i.i.i.i, align 8, !noalias !45004
  %.sroa.25.0..sroa_idx.i92.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.bj, i64 416
  store i64 %i.cv, ptr %.sroa.25.0..sroa_idx.i92.i.i.i.i, align 32, !noalias !45004
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #67, !noalias !45009
  %i.fk = tail call noundef align 128 dereferenceable_or_null(640) ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef 640, i64 noundef range(i64 1, -9223372036854775807) 128) #67, !noalias !45009 ; 14 uses
  %i.fl = icmp eq ptr %i.fk, null
  br i1 %i.fl, label %bb.w, label %.lr.ph.i.i.i.i, !prof !49

bb.w:                                             ; preds = %"_ZN17crossbeam_channel7flavors5array16Channel$LT$T$GT$13with_capacity17he3465818ab032d47E.exit.i.i.i.i.i"
  invoke void @_ZN5alloc5alloc18handle_alloc_error17h8f86e24af4223f3dE(i64 noundef 128, i64 noundef 640) #73
          to label %.noexc35.i97.i.i.i.i unwind label %bb.x, !noalias !45006

.noexc35.i97.i.i.i.i:                             ; preds = %bb.w
  unreachable

bb.x:                                             ; preds = %bb.w
  %i.fm = landingpad { ptr, i32 }
          cleanup
          catch ptr null
  invoke fastcc void @"_ZN4core3ptr224drop_in_place$LT$crossbeam_channel..counter..Counter$LT$crossbeam_channel..flavors..array..Channel$LT$core..result..Result$LT$gix_worktree_state..checkout..chunk..Outcome$C$gix_worktree_state..checkout..Error$GT$$GT$$GT$$GT$17h6a814fa0412715d7E"(ptr noalias noundef nonnull align 128 dereferenceable(640) %i.bj) #75
          to label %.body111.i.i.i.i unwind label %bb.y, !noalias !45006

bb.y:                                             ; preds = %bb.x
  %i.fn = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #74, !noalias !45006
  unreachable

.body111.i.i.i.i:                                 ; preds = %bb.ms, %bb.z, %bb.x, %bb.s
  %.sink50.i.i405.i.i.i = phi ptr [ %.sink50.i.i407.i.i.i, %bb.ms ], [ %.sink50.i.i406.i.i.i, %bb.z ], [ %i.da, %bb.s ], [ %i.ec, %bb.x ]
  %.sink52.i.i388.i.i.i = phi i64 [ %i.la, %bb.ms ], [ %.sink52.i.i389.i.i.i, %bb.z ], [ 2, %bb.s ], [ 0, %bb.x ]
  %.pn35.pn.i.i.i.i = phi { ptr, i32 } [ %.pn35.i.i.i.i, %bb.ms ], [ %i.fo, %bb.z ], [ %i.em, %bb.s ], [ %i.fm, %bb.x ] ; 2 uses
  %.sroa.08.0.i.i.i.i = phi i1 [ %.sroa.08.2.i.i.i.i, %bb.ms ], [ %.sroa.08.1.i.i.i.i, %bb.z ], [ true, %bb.s ], [ true, %bb.x ]
  invoke fastcc void @"_ZN4core3ptr147drop_in_place$LT$crossbeam_channel..channel..Receiver$LT$alloc..vec..Vec$LT$$LP$$RF$mut$u20$gix_index..Entry$C$$RF$bstr..bstr..BStr$RP$$GT$$GT$$GT$17hbd00761b78317468E"(ptr noalias noundef align 8 dereferenceable(16) %i.ce) #75
          to label %bb.cq unwind label %bb.jm, !noalias !45000

bb.z:                                             ; preds = %bb.co, %bb.v
  %.sink50.i.i406.i.i.i = phi ptr [ %.sink50.i.i399418.i.i.i, %bb.co ], [ %i.ec, %bb.v ]
  %.sink52.i.i389.i.i.i = phi i64 [ %i.gp, %bb.co ], [ 0, %bb.v ]
  %.sroa.08.1.i.i.i.i = phi i1 [ false, %bb.co ], [ true, %bb.v ]
  %i.fo = landingpad { ptr, i32 }
          cleanup
          catch ptr null
  br label %.body111.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %"_ZN17crossbeam_channel7flavors5array16Channel$LT$T$GT$13with_capacity17he3465818ab032d47E.exit.i.i.i.i.i"
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 128 dereferenceable(640) %i.fk, ptr noundef nonnull align 128 dereferenceable(640) %i.bj, i64 640, i1 false), !noalias !45006
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bj), !noalias !45004
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cd), !noalias !45003
  store i64 0, ptr %i.cd, align 8, !noalias !45003
  %i.fp = getelementptr inbounds nuw i8, ptr %i.cd, i64 8
  store ptr %i.fk, ptr %i.fp, align 8, !noalias !45003
  %i.fq = getelementptr inbounds nuw i8, ptr %i.bz, i64 16
  %i.fr = getelementptr inbounds nuw i8, ptr %i.bz, i64 40
  %.sroa.418.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.bx, i64 8
  %.sroa.416.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.bi, i64 8
  %.sroa.517.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.bi, i64 16
  %.sroa.618.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.bi, i64 24
  %.sroa.7.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.bi, i64 32
  %i.fs = getelementptr inbounds nuw i8, ptr %i.fk, i64 512
  %i.ft = getelementptr inbounds nuw i8, ptr %i.bv, i64 8
  %i.fu = getelementptr inbounds nuw i8, ptr %i.cf, i64 2144
  %i.fv = getelementptr inbounds nuw i8, ptr %i.cf, i64 2160
  %i.fw = getelementptr inbounds nuw i8, ptr %i.bw, i64 2072
  %i.fx = getelementptr inbounds nuw i8, ptr %i.bw, i64 2024 ; 3 uses
  %i.fy = getelementptr inbounds nuw i8, ptr %i.bw, i64 2032
  %i.fz = getelementptr inbounds nuw i8, ptr %i.bw, i64 2008 ; 3 uses
  %i.ga = getelementptr inbounds nuw i8, ptr %i.bw, i64 2016 ; 3 uses
  %i.gb = getelementptr inbounds nuw i8, ptr %i.bw, i64 2040
  %i.gc = getelementptr inbounds nuw i8, ptr %i.bw, i64 2056
  %i.gd = getelementptr inbounds nuw i8, ptr %i.ca, i64 16 ; 2 uses
  %.sroa.6.0..sroa_idx53.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ca, i64 24 ; 2 uses
  %.sroa.7.0..sroa_idx.i.i180.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ca, i64 32
  %i.ge = getelementptr inbounds nuw i8, ptr %i.ca, i64 40
  %.sroa.56.0..sroa_idx.i.i.i204.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %.sroa.67.0..sroa_idx.i.i.i206.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.gf = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.gg = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.gh = getelementptr inbounds nuw i8, ptr %i.ca, i64 8
  %.sroa.6.0..sroa_idx54.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %.sroa.7.0..sroa_idx56.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %i.gi = getelementptr inbounds nuw i8, ptr %i.i, i64 24
  %.sroa.4.0..sroa_idx22.i.i200.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %.sroa.523.0..sroa_idx.i.i201.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %i.gj = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.gk = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %.sroa.4.0..sroa_idx.i.i195.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %i.gl = getelementptr inbounds nuw i8, ptr %i.f, i64 48
  %i.gm = getelementptr inbounds nuw i8, ptr %i.f, i64 32
  %i.gn = getelementptr inbounds nuw i8, ptr %i.f, i64 40
  %.sroa.614.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.cb, i64 8
  %.sroa.9.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.cb, i64 16
  br label %bb.ab

._crit_edge.i.i.i.i:                              ; preds = %bb.mq, %_ZN17crossbeam_channel7channel7bounded17h4fe6350061dd5559E.exit.i.thread.i.i.i
  %i.go = phi ptr [ %i.ek, %_ZN17crossbeam_channel7channel7bounded17h4fe6350061dd5559E.exit.i.thread.i.i.i ], [ %i.fk, %bb.mq ] ; 9 uses
  %i.gp = phi i64 [ 2, %_ZN17crossbeam_channel7channel7bounded17h4fe6350061dd5559E.exit.i.thread.i.i.i ], [ 0, %bb.mq ] ; 12 uses
  %.sink50.i.i399418.i.i.i = phi ptr [ %i.da, %_ZN17crossbeam_channel7channel7bounded17h4fe6350061dd5559E.exit.i.thread.i.i.i ], [ %i.ec, %bb.mq ] ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bt), !noalias !45003
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bs), !noalias !45003
  call void @llvm.lifetime.start.p0(ptr nonnull %i.br), !noalias !45003
  %i.gq = getelementptr inbounds nuw i8, ptr %i.br, i64 16
  store i64 -9223372036854775808, ptr %i.gq, align 8, !noalias !45003
  store i64 0, ptr %i.br, align 8, !noalias !45003
  %i.gr = getelementptr inbounds nuw i8, ptr %i.br, i64 40
  store i8 0, ptr %i.gr, align 8, !noalias !45003
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bq), !noalias !45003
  call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #67, !noalias !45010
  %i.gs = call noundef dereferenceable_or_null(25) ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef 25, i64 noundef range(i64 1, 9) 1) #67, !noalias !45010 ; 3 uses
  %i.gt = icmp eq ptr %i.gs, null
  br i1 %i.gt, label %bb.aa, label %bb.ac

bb.aa:                                            ; preds = %._crit_edge.i.i.i.i
  invoke void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef 1, i64 25, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @2532) #73
          to label %.noexc115.i.i.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.i.i, !noalias !45000

.noexc115.i.i.i.i:                                ; preds = %bb.aa
  unreachable

bb.ab:                                            ; preds = %bb.mq, %.lr.ph.i.i.i.i
  %.sroa.026.0322.i.i.i.i = phi i64 [ 0, %.lr.ph.i.i.i.i ], [ %i.gu, %bb.mq ] ; 2 uses
  %i.gu = add nuw nsw i64 %.sroa.026.0322.i.i.i.i, 1 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cc), !noalias !45003
  store i64 %.sroa.026.0322.i.i.i.i, ptr %i.cc, align 8, !noalias !45003
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cb), !noalias !45003
end_hunk_1
