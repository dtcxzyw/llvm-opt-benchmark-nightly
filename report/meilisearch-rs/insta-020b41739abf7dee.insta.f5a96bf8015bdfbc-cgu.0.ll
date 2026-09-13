Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/meilisearch-rs/original/insta-020b41739abf7dee.insta.f5a96bf8015bdfbc-cgu.0?download=true
inline.NumInlined: 7723
inline.NumDeleted: 3104
loop-unroll.NumCompletelyUnrolled: 22
loop-unroll.NumRuntimeUnrolled: 123
loop-unroll.NumUnrolled: 145
begin_hunk_0_@"_ZN89_$LT$insta..content..yaml..vendored..scanner..ScanError$u20$as$u20$core..fmt..Display$GT$3fmt17h8c169444a3192a69E":_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.f = load i64, ptr %i.e, align 8, !noundef !17
  %i.g = add i64 %i.f, 1
  store i64 %i.g, ptr %i.c, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr %0, ptr %i.b, align 8
  %.sroa.42.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr @"_ZN60_$LT$alloc..string..String$u20$as$u20$core..fmt..Display$GT$3fmt17h86a528f6a97fe10dE", ptr %.sroa.42.0..sroa_idx, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store ptr %i.d, ptr %i.h, align 8
  %.sroa.46.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store ptr @"_ZN4core3fmt3num3imp54_$LT$impl$u20$core..fmt..Display$u20$for$u20$usize$GT$3fmt17h47414302a1568dceE", ptr %.sroa.46.0..sroa_idx, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  store ptr %i.c, ptr %i.i, align 8
  %.sroa.410.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  store ptr @"_ZN4core3fmt3num3imp54_$LT$impl$u20$core..fmt..Display$u20$for$u20$usize$GT$3fmt17h47414302a1568dceE", ptr %.sroa.410.0..sroa_idx, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val11 = load ptr, ptr %i.j, align 8
  %.val = load ptr, ptr %1, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !23896
  store ptr @956, ptr %i.a, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 3, ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.b, ptr %.sroa.7.0..sroa_idx, align 8
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i64 3, ptr %.sroa.8.0..sroa_idx, align 8
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store ptr null, ptr %.sroa.10.0..sroa_idx, align 8
  %i.k = call noundef zeroext i1 @_ZN4core3fmt5write17h80461e1e45e4fdd2E(ptr noundef nonnull align 1 %.val, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %.val11, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.a), !noalias !23896
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !23896
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  ret i1 %i.k
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @"_ZN90_$LT$insta..content..yaml..vendored..scanner..TScalarStyle$u20$as$u20$core..fmt..Debug$GT$3fmt17hfad6da63c9c4009eE"(ptr noalias noundef readonly align 1 captures(none) dereferenceable(1) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #1 {
switch.lookup:
  %i.a = load i8, ptr %0, align 1, !range !37, !noundef !17 ; 2 uses
  %i.b = zext nneg i8 %i.a to i64
  %switch.gep = getelementptr inbounds nuw i8, ptr @"switch.table._ZN90_$LT$insta..content..yaml..vendored..scanner..TScalarStyle$u20$as$u20$core..fmt..Debug$GT$3fmt17hfad6da63c9c4009eE", i64 %i.b
  %switch.load = load i8, ptr %switch.gep, align 1
  %switch.ext = zext i8 %switch.load to i64
  %i.c = zext nneg i8 %i.a to i64
  %switch.gep2 = getelementptr inbounds nuw [8 x i8], ptr @"switch.table._ZN90_$LT$insta..content..yaml..vendored..scanner..TScalarStyle$u20$as$u20$core..fmt..Debug$GT$3fmt17hfad6da63c9c4009eE.1376", i64 %i.c
  %switch.load3 = load ptr, ptr %switch.gep2, align 8
  %i.d = tail call noundef zeroext i1 @_ZN4core3fmt9Formatter9write_str17haacafd99ed76659fE(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %switch.load3, i64 noundef %switch.ext)
  ret i1 %i.d
}

; Function Attrs: nonlazybind uwtable
define void @"_ZN91_$LT$insta..redaction..Redaction$u20$as$u20$core..convert..From$LT$$RF$$u5b$u8$u5d$$GT$$GT$4from17hdeb0ed21dca4d093E"(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([64 x i8]) align 16 captures(none) dereferenceable(64) %0, ptr noalias noundef nonnull readonly align 1 captures(none) %1, i64 noundef %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = icmp slt i64 %2, 0
  br i1 %i.a, label %bb.b, label %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i, !prof !15

_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i: ; preds = %bb.a
  %i.b = icmp eq i64 %2, 0
  br i1 %i.b, label %"_ZN87_$LT$insta..content..Content$u20$as$u20$core..convert..From$LT$$RF$$u5b$u8$u5d$$GT$$GT$4from17hcbdc23319b7a7a1aE.exit", label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h2c5e185936086779E.exit.i.i.i.i"

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h2c5e185936086779E.exit.i.i.i.i": ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #51, !noalias !23907
  %i.c = tail call noundef ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef %2, i64 noundef range(i64 1, 17) 1) #51, !noalias !23907 ; 2 uses
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %bb.b, label %"_ZN87_$LT$insta..content..Content$u20$as$u20$core..convert..From$LT$$RF$$u5b$u8$u5d$$GT$$GT$4from17hcbdc23319b7a7a1aE.exit"

bb.b:                                             ; preds = %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h2c5e185936086779E.exit.i.i.i.i", %bb.a
  %.sroa.4.0.ph.i.i.i = phi i64 [ 1, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h2c5e185936086779E.exit.i.i.i.i" ], [ 0, %bb.a ]
  tail call void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef %.sroa.4.0.ph.i.i.i, i64 %2, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @927) #54, !noalias !23908
  unreachable

"_ZN87_$LT$insta..content..Content$u20$as$u20$core..convert..From$LT$$RF$$u5b$u8$u5d$$GT$$GT$4from17hcbdc23319b7a7a1aE.exit": ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h2c5e185936086779E.exit.i.i.i.i"
  %.sroa.10.0.i.i.i = phi ptr [ inttoptr (i64 1 to ptr), %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i ], [ %i.c, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h2c5e185936086779E.exit.i.i.i.i" ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %.sroa.10.0.i.i.i, ptr nonnull readonly align 1 %1, i64 %2, i1 false), !noalias !23909
  store i8 15, ptr %0, align 16
  %.sroa.41.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %2, ptr %.sroa.41.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %.sroa.10.0.i.i.i, ptr %.sroa.5.0..sroa_idx, align 16
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %2, ptr %.sroa.6.0..sroa_idx, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @"_ZN97_$LT$pest..iterators..pairs..Pairs$LT$R$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hcf8c485c864ef256E"(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(40) %0, ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(56) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [40 x i8], align 8                ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !23913)
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.c = load i64, ptr %i.b, align 8, !alias.scope !23913, !noalias !23914, !noundef !17 ; 5 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.e = load i64, ptr %i.d, align 8, !alias.scope !23913, !noalias !23914, !noundef !17
  %i.f = icmp ult i64 %i.c, %i.e
  br i1 %i.f, label %bb.b, label %bb.h

bb.b:                                             ; preds = %bb.a
  %i.g = load ptr, ptr %1, align 8, !alias.scope !23913, !noalias !23914, !nonnull !17, !noundef !17 ; 5 uses
  %.val.i.i = load i64, ptr %i.g, align 8, !noalias !23915, !noundef !17 ; 2 uses
  %i.h = icmp ne i64 %.val.i.i, 0
  tail call void @llvm.assume(i1 %i.h)
  %i.i = add i64 %.val.i.i, 1                     ; 2 uses
  store i64 %i.i, ptr %i.g, align 8, !noalias !23915
  %i.j = icmp eq i64 %i.i, 0
  br i1 %i.j, label %bb.c, label %_ZN5alloc2rc10RcInnerPtr10inc_strong17h9d504cd18b3685c3E.exit.i, !prof !22

bb.c:                                             ; preds = %bb.b
  tail call void @llvm.trap()
  unreachable

_ZN5alloc2rc10RcInnerPtr10inc_strong17h9d504cd18b3685c3E.exit.i: ; preds = %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.l = load ptr, ptr %i.k, align 8, !alias.scope !23913, !noalias !23914, !nonnull !17, !align !31, !noundef !17
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.n = load i64, ptr %i.m, align 8, !alias.scope !23913, !noalias !23914, !noundef !17
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.p = load ptr, ptr %i.o, align 8, !alias.scope !23913, !noalias !23914, !nonnull !17, !noundef !17 ; 3 uses
  %.val.i4.i = load i64, ptr %i.p, align 8, !noalias !23915, !noundef !17 ; 2 uses
  %i.q = icmp ne i64 %.val.i4.i, 0
  tail call void @llvm.assume(i1 %i.q)
  %i.r = add i64 %.val.i4.i, 1                    ; 2 uses
  store i64 %i.r, ptr %i.p, align 8, !noalias !23915
  %i.s = icmp eq i64 %i.r, 0
  br i1 %i.s, label %bb.d, label %"_ZN4pest9iterators5pairs14Pairs$LT$R$GT$4peek17h8355c3d18f789451E.exit", !prof !22

bb.d:                                             ; preds = %_ZN5alloc2rc10RcInnerPtr10inc_strong17h9d504cd18b3685c3E.exit.i
  tail call void @llvm.trap()
  unreachable

"_ZN4pest9iterators5pairs14Pairs$LT$R$GT$4peek17h8355c3d18f789451E.exit": ; preds = %_ZN5alloc2rc10RcInnerPtr10inc_strong17h9d504cd18b3685c3E.exit.i
  store ptr %i.g, ptr %i.a, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %i.l, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.512.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i64 %i.n, ptr %.sroa.512.0..sroa_idx, align 8
  %.sroa.613.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store ptr %i.p, ptr %.sroa.613.0..sroa_idx, align 8
  %.sroa.714.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store i64 %i.c, ptr %.sroa.714.0..sroa_idx, align 8
  %i.t = getelementptr inbounds nuw i8, ptr %i.g, i64 32
  %i.u = load i64, ptr %i.t, align 8, !noundef !17 ; 2 uses
  %i.v = icmp ult i64 %i.c, %i.u
  br i1 %i.v, label %bb.e, label %bb.f

bb.e:                                             ; preds = %"_ZN4pest9iterators5pairs14Pairs$LT$R$GT$4peek17h8355c3d18f789451E.exit"
  %i.w = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  %i.x = load ptr, ptr %i.w, align 8, !nonnull !17, !noundef !17
  %i.y = getelementptr inbounds nuw [40 x i8], ptr %i.x, i64 %i.c ; 2 uses
  %i.z = load i8, ptr %i.y, align 8, !range !21, !noundef !17
  %i.aa = trunc nuw i8 %i.z to i1
  br i1 %i.aa, label %bb.g, label %bb.k, !prof !22

bb.f:                                             ; preds = %"_ZN4pest9iterators5pairs14Pairs$LT$R$GT$4peek17h8355c3d18f789451E.exit"
  invoke void @_ZN4core9panicking18panic_bounds_check17hbc09f5d79f1a5789E(i64 noundef %i.c, i64 noundef %i.u, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @163) #54
          to label %.noexc unwind label %bb.j

.noexc:                                           ; preds = %bb.f
  unreachable

bb.g:                                             ; preds = %bb.e
  invoke void @_ZN4core9panicking5panic17ha264d2bb233f2b69E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @45, i64 noundef 40, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @164) #54
          to label %.noexc2 unwind label %bb.j

.noexc2:                                          ; preds = %bb.g
  unreachable

bb.h:                                             ; preds = %bb.a
  store ptr null, ptr %0, align 8
  br label %bb.i

bb.i:                                             ; preds = %bb.k, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void

bb.j:                                             ; preds = %bb.g, %bb.f
  %i.ab = landingpad { ptr, i32 }
          cleanup
  call fastcc void @"_ZN4core3ptr78drop_in_place$LT$pest..iterators..pair..Pair$LT$insta..redaction..Rule$GT$$GT$17hd0a9ef325a6d58f4E"(ptr noalias noundef align 8 dereferenceable(40) %i.a) #55
  resume { ptr, i32 } %i.ab

bb.k:                                             ; preds = %bb.e
  %i.ac = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  %i.ad = load i64, ptr %i.ac, align 8, !noundef !17
  %i.ae = add i64 %i.ad, 1
  store i64 %i.ae, ptr %i.b, align 8
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 2 uses
  %i.ag = load i64, ptr %i.af, align 8, !noundef !17
  %i.ah = add i64 %i.ag, -1
  store i64 %i.ah, ptr %i.af, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(40) %i.a, i64 40, i1 false)
  br label %bb.i
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @"_ZN98_$LT$alloc..vec..Vec$LT$T$GT$$u20$as$u20$alloc..vec..spec_from_iter..SpecFromIter$LT$T$C$I$GT$$GT$9from_iter17h96c76bf58e26adcdE"(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(24) %0, ptr noundef nonnull %1, ptr noundef nonnull %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [72 x i8], align 8                ; 2 uses
  %i.b = alloca [24 x i8], align 8                ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !23928
  %i.c = ptrtoint ptr %2 to i64
  %i.d = ptrtoint ptr %1 to i64
  %i.e = sub nuw i64 %i.c, %i.d                   ; 2 uses
  %i.f = lshr exact i64 %i.e, 6                   ; 4 uses
  %i.g = mul nuw nsw i64 %i.f, 72                 ; 2 uses
  %or.cond.i.i.i = icmp ugt i64 %i.e, 8198552921648689600
  br i1 %or.cond.i.i.i, label %bb.b, label %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i, !prof !15

_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i: ; preds = %bb.a
  %i.h = icmp eq ptr %2, %1
  br i1 %i.h, label %.noexc1.thread, label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h2c5e185936086779E.exit.i.i"

.noexc1.thread:                                   ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i
  store i64 0, ptr %i.b, align 8, !noalias !23928
  %3 = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %3, align 8, !noalias !23928
  %4 = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i64 0, ptr %4, align 8, !noalias !23928
  br label %"_ZN111_$LT$alloc..vec..Vec$LT$T$GT$$u20$as$u20$alloc..vec..spec_from_iter_nested..SpecFromIterNested$LT$T$C$I$GT$$GT$9from_iter17h4a5617397ac58bfbE.exit"

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h2c5e185936086779E.exit.i.i": ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #51, !noalias !23929
  %i.i = tail call noundef align 8 ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef %i.g, i64 noundef range(i64 1, 17) 8) #51, !noalias !23929 ; 3 uses
  %i.j = icmp eq ptr %i.i, null
  br i1 %i.j, label %bb.b, label %.noexc1

bb.b:                                             ; preds = %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h2c5e185936086779E.exit.i.i", %bb.a
  %.sroa.10.0.ph.i = phi i64 [ %i.g, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h2c5e185936086779E.exit.i.i" ], [ undef, %bb.a ]
  %.sroa.4.0.ph.i = phi i64 [ 8, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h2c5e185936086779E.exit.i.i" ], [ 0, %bb.a ]
  tail call void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef %.sroa.4.0.ph.i, i64 %.sroa.10.0.ph.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @98) #54, !noalias !23928
  unreachable

.noexc1:                                          ; preds = %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h2c5e185936086779E.exit.i.i"
  store i64 %i.f, ptr %i.b, align 8, !noalias !23928
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %i.i, ptr %i.k, align 8, !noalias !23928
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  br label %.preheader

.preheader:                                       ; preds = %.noexc1, %"_ZN4core4iter8adapters3map8map_fold28_$u7b$$u7b$closure$u7d$$u7d$17h492b47a98e4f6cccE.exit.i.i"
  %.sroa.6.0 = phi i64 [ %i.o, %"_ZN4core4iter8adapters3map8map_fold28_$u7b$$u7b$closure$u7d$$u7d$17h492b47a98e4f6cccE.exit.i.i" ], [ 0, %.noexc1 ] ; 4 uses
  %i.m = getelementptr inbounds nuw [64 x i8], ptr %1, i64 %.sroa.6.0
  invoke fastcc void @_ZN5insta7content4yaml13to_yaml_value17hc53fd79ff101fe7cE(ptr noalias noundef nonnull align 8 captures(address) dereferenceable(72) %i.a, ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(64) %i.m)
          to label %"_ZN4core4iter8adapters3map8map_fold28_$u7b$$u7b$closure$u7d$$u7d$17h492b47a98e4f6cccE.exit.i.i" unwind label %.body, !inline_history !23922

"_ZN4core4iter8adapters3map8map_fold28_$u7b$$u7b$closure$u7d$$u7d$17h492b47a98e4f6cccE.exit.i.i": ; preds = %.preheader
  %i.n = getelementptr inbounds nuw [72 x i8], ptr %i.i, i64 %.sroa.6.0
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.n, ptr noundef nonnull align 8 dereferenceable(72) %i.a, i64 72, i1 false)
  %i.o = add i64 %.sroa.6.0, 1                    ; 2 uses
  %i.p = icmp eq i64 %i.o, %i.f
  br i1 %i.p, label %bb.c, label %.preheader

bb.c:                                             ; preds = %"_ZN4core4iter8adapters3map8map_fold28_$u7b$$u7b$closure$u7d$$u7d$17h492b47a98e4f6cccE.exit.i.i"
  store i64 %i.f, ptr %i.l, align 8, !noalias !23930
  br label %"_ZN111_$LT$alloc..vec..Vec$LT$T$GT$$u20$as$u20$alloc..vec..spec_from_iter_nested..SpecFromIterNested$LT$T$C$I$GT$$GT$9from_iter17h4a5617397ac58bfbE.exit"

.body:                                            ; preds = %.preheader
  %i.q = landingpad { ptr, i32 }
          cleanup
  store i64 %.sroa.6.0, ptr %i.l, align 8, !noalias !23930
  invoke fastcc void @"_ZN4core3ptr86drop_in_place$LT$alloc..vec..Vec$LT$insta..content..yaml..vendored..yaml..Yaml$GT$$GT$17h43e739234e4e0f0bE"(ptr noalias noundef align 8 dereferenceable(24) %i.b) #55
          to label %bb.e unwind label %bb.d, !noalias !23928, !inline_history !23927

bb.d:                                             ; preds = %.body
  %i.r = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #56, !noalias !23928, !inline_history !23927
  unreachable

bb.e:                                             ; preds = %.body
  resume { ptr, i32 } %i.q

"_ZN111_$LT$alloc..vec..Vec$LT$T$GT$$u20$as$u20$alloc..vec..spec_from_iter_nested..SpecFromIterNested$LT$T$C$I$GT$$GT$9from_iter17h4a5617397ac58bfbE.exit": ; preds = %.noexc1.thread, %bb.c
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !23928
  ret void
}

; Function Attrs: nonlazybind uwtable
define noundef nonnull align 8 dereferenceable(72) ptr @"_ZN99_$LT$insta..content..yaml..vendored..yaml..Yaml$u20$as$u20$core..ops..index..Index$LT$usize$GT$$GT$5index17hc8f3ca14a6231c4aE"(ptr noalias noundef readonly align 8 captures(none) dereferenceable(72) %0, i64 noundef %1, ptr noalias noundef readonly align 8 captures(none) dereferenceable(24) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [72 x i8], align 8                ; 6 uses
  %i.b = load i8, ptr %0, align 8, !range !16, !noundef !17
  switch i8 %i.b, label %bb.c [
    i8 4, label %bb.b
    i8 5, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.d = load i64, ptr %i.c, align 8, !noundef !17
  %i.e = icmp ult i64 %1, %i.d
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.g = load ptr, ptr %i.f, align 8, !nonnull !17
  %i.h = getelementptr inbounds nuw [72 x i8], ptr %i.g, i64 %1
  %.sroa.02.0 = select i1 %i.e, ptr %i.h, ptr @_ZN5insta7content4yaml8vendored4yaml9BAD_VALUE17hafa023aeb1ede197E
  br label %bb.c

bb.c:                                             ; preds = %bb.d, %bb.a, %bb.b
  %.sroa.0.0 = phi ptr [ %.sroa.02.0, %bb.b ], [ %_ZN5insta7content4yaml8vendored4yaml9BAD_VALUE17hafa023aeb1ede197E., %bb.d ], [ @_ZN5insta7content4yaml8vendored4yaml9BAD_VALUE17hafa023aeb1ede197E, %bb.a ]
  ret ptr %.sroa.0.0

bb.d:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 %1, ptr %i.j, align 8
  store i8 1, ptr %i.a, align 8
  %i.k = call fastcc noundef align 8 dereferenceable_or_null(72) ptr @"_ZN15linked_hash_map30LinkedHashMap$LT$K$C$V$C$S$GT$3get17h80951a8a965ccc7dE"(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(64) %i.i, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(72) %i.a) ; 2 uses
  %.not = icmp eq ptr %i.k, null
  %_ZN5insta7content4yaml8vendored4yaml9BAD_VALUE17hafa023aeb1ede197E. = select i1 %.not, ptr @_ZN5insta7content4yaml8vendored4yaml9BAD_VALUE17hafa023aeb1ede197E, ptr %i.k
  call fastcc void @"_ZN4core3ptr63drop_in_place$LT$insta..content..yaml..vendored..yaml..Yaml$GT$17hb8081eeb1d574197E"(ptr noalias noundef align 8 dereferenceable(72) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.c
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @"_ZN9hashbrown11rustc_entry62_$LT$impl$u20$hashbrown..map..HashMap$LT$K$C$V$C$S$C$A$GT$$GT$11rustc_entry17h896609c81019143bE"(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(32) %0, ptr noalias noundef nonnull align 8 dereferenceable(48) %1, i64 noundef range(i64 0, 2) %2, ptr noundef nonnull %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [1 x i8], align 1                 ; 4 uses
  %i.b = alloca [1 x i8], align 1                 ; 4 uses
  %i.c = alloca [72 x i8], align 16               ; 13 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !23983
  %.sroa.48.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %.sroa.59.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 2 uses
  %.sroa.610.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %.sroa.711.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %i.e = load <2 x i64>, ptr %i.d, align 8        ; 3 uses
  %i.f = shufflevector <2 x i64> %i.e, <2 x i64> poison, <2 x i32> zeroinitializer
  %i.g = xor <2 x i64> %i.f, <i64 8317987319222330741, i64 7816392313619706465>
  store <2 x i64> %i.g, ptr %i.c, align 16, !alias.scope !23984, !noalias !23983
  %i.h = shufflevector <2 x i64> %i.e, <2 x i64> poison, <2 x i32> <i32 1, i32 1>
  %i.i = xor <2 x i64> %i.h, <i64 7237128888997146477, i64 8387220255154660723>
  store <2 x i64> %i.i, ptr %.sroa.59.0..sroa_idx.i.i, align 16, !alias.scope !23984, !noalias !23983
  store <2 x i64> %i.e, ptr %.sroa.711.0..sroa_idx.i.i, align 16, !alias.scope !23984, !noalias !23983
  %.sroa.913.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 48 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %.sroa.913.0..sroa_idx.i.i, i8 0, i64 24, i1 false), !alias.scope !23984, !noalias !23983
  %i.j = trunc nuw i64 %2 to i1                   ; 2 uses
  %.val2.i.i.i = load ptr, ptr %3, align 8, !noalias !23985, !nonnull !17, !align !31, !noundef !17 ; 2 uses
  %i.k = getelementptr i8, ptr %3, i64 8
  %.val3.i.i.i = load i64, ptr %i.k, align 8, !noalias !23985, !noundef !17 ; 5 uses
  call fastcc void @"_ZN71_$LT$core..hash..sip..Hasher$LT$S$GT$$u20$as$u20$core..hash..Hasher$GT$5write17he374cecf129c27d4E"(ptr noalias noundef nonnull align 8 dereferenceable(72) %i.c, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %.val2.i.i.i, i64 noundef %.val3.i.i.i), !noalias !23983
  br i1 %i.j, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !23986
  store i8 -1, ptr %i.b, align 1, !noalias !23986
  call fastcc void @"_ZN71_$LT$core..hash..sip..Hasher$LT$S$GT$$u20$as$u20$core..hash..Hasher$GT$5write17he374cecf129c27d4E"(ptr noalias noundef nonnull align 8 dereferenceable(72) %i.c, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.b, i64 noundef 1), !noalias !23987
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !23986
  br label %_ZN4core4hash11BuildHasher8hash_one17he739ad583b9a31c5E.exit

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !23988
  store i8 -1, ptr %i.a, align 1, !noalias !23988
  call fastcc void @"_ZN71_$LT$core..hash..sip..Hasher$LT$S$GT$$u20$as$u20$core..hash..Hasher$GT$5write17he374cecf129c27d4E"(ptr noalias noundef nonnull align 8 dereferenceable(72) %i.c, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.a, i64 noundef 1), !noalias !23989
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !23988
  br label %_ZN4core4hash11BuildHasher8hash_one17he739ad583b9a31c5E.exit

_ZN4core4hash11BuildHasher8hash_one17he739ad583b9a31c5E.exit: ; preds = %bb.b, %bb.c
  %.sroa.0.0.copyload.i.i.i = load i64, ptr %i.c, align 16, !alias.scope !23990, !noalias !23983
  %.sroa.10.0.copyload.i.i.i = load i64, ptr %.sroa.48.0..sroa_idx.i.i, align 8, !alias.scope !23990, !noalias !23983
  %.sroa.17.0.copyload.i.i.i = load i64, ptr %.sroa.59.0..sroa_idx.i.i, align 16, !alias.scope !23990, !noalias !23983 ; 3 uses
  %.sroa.22.0.copyload.i.i.i = load i64, ptr %.sroa.610.0..sroa_idx.i.i, align 8, !alias.scope !23990, !noalias !23983
  %i.l = load i64, ptr %.sroa.913.0..sroa_idx.i.i, align 16, !alias.scope !23990, !noalias !23983, !noundef !17
  %i.m = shl i64 %i.l, 56
  %i.n = getelementptr inbounds nuw i8, ptr %i.c, i64 56
  %i.o = load i64, ptr %i.n, align 8, !alias.scope !23990, !noalias !23983, !noundef !17
  %i.p = or i64 %i.m, %i.o                        ; 2 uses
  %i.q = xor i64 %i.p, %.sroa.22.0.copyload.i.i.i ; 3 uses
  %i.r = add i64 %.sroa.17.0.copyload.i.i.i, %.sroa.0.0.copyload.i.i.i ; 3 uses
  %i.s = add i64 %i.q, %.sroa.10.0.copyload.i.i.i ; 2 uses
  %i.t = tail call i64 @llvm.fshl.i64(i64 %.sroa.17.0.copyload.i.i.i, i64 %.sroa.17.0.copyload.i.i.i, i64 13)
  %i.u = xor i64 %i.t, %i.r                       ; 3 uses
  %i.v = tail call i64 @llvm.fshl.i64(i64 %i.q, i64 %i.q, i64 16)
  %i.w = xor i64 %i.v, %i.s                       ; 3 uses
  %i.x = tail call i64 @llvm.fshl.i64(i64 %i.r, i64 %i.r, i64 32)
  %i.y = add i64 %i.s, %i.u                       ; 3 uses
  %i.z = add i64 %i.w, %i.x                       ; 2 uses
  %i.aa = tail call i64 @llvm.fshl.i64(i64 %i.u, i64 %i.u, i64 17)
  %i.ab = xor i64 %i.y, %i.aa                     ; 3 uses
  %i.ac = tail call i64 @llvm.fshl.i64(i64 %i.w, i64 %i.w, i64 21)
  %i.ad = xor i64 %i.ac, %i.z                     ; 3 uses
  %i.ae = tail call i64 @llvm.fshl.i64(i64 %i.y, i64 %i.y, i64 32)
  %i.af = xor i64 %i.z, %i.p
  %i.ag = xor i64 %i.ae, 255
  %i.ah = add i64 %i.af, %i.ab                    ; 3 uses
  %i.ai = add i64 %i.ad, %i.ag                    ; 2 uses
  %i.aj = tail call i64 @llvm.fshl.i64(i64 %i.ab, i64 %i.ab, i64 13)
  %i.ak = xor i64 %i.ah, %i.aj                    ; 3 uses
  %i.al = tail call i64 @llvm.fshl.i64(i64 %i.ad, i64 %i.ad, i64 16)
  %i.am = xor i64 %i.al, %i.ai                    ; 3 uses
  %i.an = tail call i64 @llvm.fshl.i64(i64 %i.ah, i64 %i.ah, i64 32)
  %i.ao = add i64 %i.ak, %i.ai                    ; 3 uses
  %i.ap = add i64 %i.am, %i.an                    ; 2 uses
  %i.aq = tail call i64 @llvm.fshl.i64(i64 %i.ak, i64 %i.ak, i64 17)
  %i.ar = xor i64 %i.ao, %i.aq                    ; 3 uses
  %i.as = tail call i64 @llvm.fshl.i64(i64 %i.am, i64 %i.am, i64 21)
  %i.at = xor i64 %i.as, %i.ap                    ; 3 uses
  %i.au = tail call i64 @llvm.fshl.i64(i64 %i.ao, i64 %i.ao, i64 32)
  %i.av = add i64 %i.ar, %i.ap                    ; 3 uses
  %i.aw = add i64 %i.at, %i.au                    ; 2 uses
  %i.ax = tail call i64 @llvm.fshl.i64(i64 %i.ar, i64 %i.ar, i64 13)
  %i.ay = xor i64 %i.ax, %i.av                    ; 3 uses
  %i.az = tail call i64 @llvm.fshl.i64(i64 %i.at, i64 %i.at, i64 16)
  %i.ba = xor i64 %i.az, %i.aw                    ; 3 uses
  %i.bb = tail call i64 @llvm.fshl.i64(i64 %i.av, i64 %i.av, i64 32)
  %i.bc = add i64 %i.ay, %i.aw                    ; 3 uses
  %i.bd = add i64 %i.ba, %i.bb                    ; 2 uses
  %i.be = tail call i64 @llvm.fshl.i64(i64 %i.ay, i64 %i.ay, i64 17)
  %i.bf = xor i64 %i.be, %i.bc                    ; 3 uses
  %i.bg = tail call i64 @llvm.fshl.i64(i64 %i.ba, i64 %i.ba, i64 21)
  %i.bh = xor i64 %i.bg, %i.bd                    ; 3 uses
  %i.bi = tail call i64 @llvm.fshl.i64(i64 %i.bc, i64 %i.bc, i64 32)
  %i.bj = add i64 %i.bf, %i.bd
  %i.bk = add i64 %i.bh, %i.bi                    ; 2 uses
  %i.bl = tail call i64 @llvm.fshl.i64(i64 %i.bf, i64 %i.bf, i64 13)
  %i.bm = xor i64 %i.bl, %i.bj                    ; 3 uses
  %i.bn = tail call i64 @llvm.fshl.i64(i64 %i.bh, i64 %i.bh, i64 16)
  %i.bo = xor i64 %i.bn, %i.bk                    ; 2 uses
  %i.bp = add i64 %i.bm, %i.bk                    ; 3 uses
  %i.bq = tail call i64 @llvm.fshl.i64(i64 %i.bm, i64 %i.bm, i64 17)
  %i.br = tail call i64 @llvm.fshl.i64(i64 %i.bo, i64 %i.bo, i64 21)
  %i.bs = tail call i64 @llvm.fshl.i64(i64 %i.bp, i64 %i.bp, i64 32)
  %i.bt = xor i64 %i.br, %i.bq
  %i.bu = xor i64 %i.bt, %i.bs
  %i.bv = xor i64 %i.bu, %i.bp                    ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !23983
  tail call void @llvm.experimental.noalias.scope.decl(metadata !23991)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !23992)
  %i.bw = lshr i64 %i.bv, 57
  %i.bx = trunc nuw nsw i64 %i.bw to i8
  %i.by = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.bz = load i64, ptr %i.by, align 8, !alias.scope !23993, !noalias !23994, !noundef !17 ; 4 uses
  %i.ca = load ptr, ptr %1, align 8, !alias.scope !23993, !noalias !23994, !nonnull !17, !noundef !17 ; 5 uses
  %.sroa.0.0.vec.insert.i.i = insertelement <16 x i8> poison, i8 %i.bx, i64 0
  %.sroa.0.15.vec.insert.i.i = shufflevector <16 x i8> %.sroa.0.0.vec.insert.i.i, <16 x i8> poison, <16 x i32> zeroinitializer ; 2 uses
  br i1 %i.j, label %.split.us.i, label %.split.i

.split.us.i:                                      ; preds = %_ZN4core4hash11BuildHasher8hash_one17he739ad583b9a31c5E.exit, %bb.d
  %.sroa.9.0.i.us.i = phi i64 [ %i.cv, %bb.d ], [ 0, %_ZN4core4hash11BuildHasher8hash_one17he739ad583b9a31c5E.exit ]
  %.pn.us.i = phi i64 [ %i.cw, %bb.d ], [ %i.bv, %_ZN4core4hash11BuildHasher8hash_one17he739ad583b9a31c5E.exit ]
  %.sroa.01.0.i.us.i = and i64 %.pn.us.i, %i.bz   ; 3 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 %.sroa.01.0.i.us.i
  %.sroa.0.0.copyload.i27.us.i = load <16 x i8>, ptr %i.cb, align 1, !noalias !23995 ; 2 uses
  %i.cc = icmp eq <16 x i8> %.sroa.0.0.copyload.i27.us.i, %.sroa.0.15.vec.insert.i.i
  %i.cd = bitcast <16 x i1> %i.cc to i16          ; 2 uses
  %.not.i.not33.us.i = icmp eq i16 %i.cd, 0
  br i1 %.not.i.not33.us.i, label %._crit_edge.split.us.us.i, label %.lr.ph.us.i

.lr.ph.us.i:                                      ; preds = %.split.us.i, %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$4find28_$u7b$$u7b$closure$u7d$$u7d$17h976b2aae2fd20704E.exit.thread.us.us.i"
  %.sroa.06.0.i34.us.us.i = phi i16 [ %i.cr, %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$4find28_$u7b$$u7b$closure$u7d$$u7d$17h976b2aae2fd20704E.exit.thread.us.us.i" ], [ %i.cd, %.split.us.i ] ; 3 uses
  %i.ce = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.06.0.i34.us.us.i, i1 true)
  %i.cf = zext nneg i16 %i.ce to i64
  %i.cg = add i64 %.sroa.01.0.i.us.i, %i.cf
  %i.ch = and i64 %i.cg, %i.bz
  %i.ci = sub nsw i64 0, %i.ch                    ; 2 uses
  %i.cj = getelementptr inbounds [24 x i8], ptr %i.ca, i64 %i.ci ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !23996), !noalias !23997
  %i.ck = getelementptr inbounds i8, ptr %i.cj, i64 -16
  %.val.i.i.us.us.i = load ptr, ptr %i.ck, align 8, !noalias !23998, !nonnull !17, !align !29, !noundef !17 ; 3 uses
  %i.cl = getelementptr i8, ptr %.val.i.i.us.us.i, i64 8
  %.val1.i12.i.i.us.us.i = load i64, ptr %i.cl, align 8, !noalias !23999, !noundef !17
  %.not.i.i.i14.i.i.us.us.i = icmp eq i64 %.val1.i12.i.i.us.us.i, %.val3.i.i.i
  br i1 %.not.i.i.i14.i.i.us.us.i, label %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$4find28_$u7b$$u7b$closure$u7d$$u7d$17h976b2aae2fd20704E.exit.us.us.i", label %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$4find28_$u7b$$u7b$closure$u7d$$u7d$17h976b2aae2fd20704E.exit.thread.us.us.i", !prof !72

"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$4find28_$u7b$$u7b$closure$u7d$$u7d$17h976b2aae2fd20704E.exit.us.us.i": ; preds = %.lr.ph.us.i
  %i.cm = getelementptr inbounds i8, ptr %i.cj, i64 -24
  %i.cn = load i64, ptr %i.cm, align 8, !range !44, !alias.scope !24000, !noalias !24001, !noundef !17
  %i.co = trunc nuw i64 %i.cn to i1               ; 2 uses
  %.val.i.i.us.us.i. = select i1 %i.co, ptr %.val.i.i.us.us.i, ptr %3
  %..val.i.i.us.us.i = select i1 %i.co, ptr %3, ptr %.val.i.i.us.us.i
  %.val2.i16.i.i.us.us.i = load ptr, ptr %..val.i.i.us.us.i, align 8, !noalias !23999, !nonnull !17, !align !31, !noundef !17
end_hunk_0
