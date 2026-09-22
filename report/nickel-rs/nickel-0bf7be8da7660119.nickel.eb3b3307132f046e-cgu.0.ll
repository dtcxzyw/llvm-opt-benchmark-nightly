Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/nickel-rs/original/nickel-0bf7be8da7660119.nickel.eb3b3307132f046e-cgu.0?download=true
inline.NumInlined: 19446
inline.NumDeleted: 8632
loop-unroll.NumCompletelyUnrolled: 43
loop-unroll.NumRuntimeUnrolled: 85
loop-unroll.NumUnrolled: 133
begin_hunk_0_@"_ZN135_$LT$clap_builder..builder..value_parser..EnumValueParser$LT$E$GT$$u20$as$u20$clap_builder..builder..value_parser..TypedValueParser$GT$9parse_ref17h6fc4b96aa14785c2E":bb.a
  %i.ak = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  store i32 -536870880, ptr %i.ak, align 8, !noalias !12992
  %.sroa.4.0..sroa_idx.i6.i = getelementptr inbounds nuw i8, ptr %i.h, i64 20
  store i16 0, ptr %.sroa.4.0..sroa_idx.i6.i, align 4, !noalias !12992
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 22
  store i16 0, ptr %.sroa.5.0..sroa_idx.i.i, align 2, !noalias !12992
  store ptr %i.i, ptr %i.h, align 8, !noalias !12992
  %i.al = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  store ptr @744, ptr %i.al, align 8, !noalias !12992
  %i.am = invoke noundef zeroext i1 @"_ZN70_$LT$clap_builder..builder..arg..Arg$u20$as$u20$core..fmt..Display$GT$3fmt17h4699aed67ecd8f44E"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(624) %2, ptr noalias noundef nonnull align 8 dereferenceable(24) %i.h)
          to label %bb.p unwind label %bb.n, !noalias !12993

bb.n:                                             ; preds = %bb.q, %bb.m
  %i.an = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !12994)
  call void @llvm.experimental.noalias.scope.decl(metadata !12995)
  %.val.i.i.i.i = load i64, ptr %i.i, align 8, !range !42, !alias.scope !12996, !noalias !12992, !noundef !34 ; 2 uses
  %i.ao = icmp eq i64 %.val.i.i.i.i, 0
  br i1 %i.ao, label %.body.thread.i, label %bb.o

bb.o:                                             ; preds = %bb.n
  %.val1.i.i.i.i = load ptr, ptr %.sroa.42.0..sroa_idx.i.i, align 8, !alias.scope !12996, !noalias !12992, !nonnull !34, !noundef !34
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i.i, i64 noundef %.val.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #53, !noalias !12997
  br label %.body.thread.i

bb.p:                                             ; preds = %bb.m
  br i1 %i.am, label %bb.q, label %bb.v, !prof !37

bb.q:                                             ; preds = %bb.p
  invoke void @_ZN4core6result13unwrap_failed17h0501379eaec3e720E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @745, i64 noundef 55, ptr noundef nonnull align 1 %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @765, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @747) #59
          to label %.noexc.i.i unwind label %bb.n, !noalias !12993

.noexc.i.i:                                       ; preds = %bb.q
  unreachable

bb.r:                                             ; preds = %bb.l
  call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #53, !noalias !12998
  %i.ap = call noundef dereferenceable_or_null(3) ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef 3, i64 noundef range(i64 1, 9) 1) #53, !noalias !12998 ; 3 uses
  %i.aq = icmp eq ptr %i.ap, null
  br i1 %i.aq, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  invoke void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef 1, i64 3, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @1401) #59
          to label %.noexc.i unwind label %.body.thread23.i, !noalias !12984

.body.thread23.i:                                 ; preds = %bb.s
  %i.ar = landingpad { ptr, i32 }
          cleanup
  br label %.body.thread.i

.noexc.i:                                         ; preds = %bb.s
  unreachable

.body.i:                                          ; preds = %bb.u
  %i.as = landingpad { ptr, i32 }
          cleanup
  br label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17hfedeefc8cce81a05E.exit15.i"

bb.t:                                             ; preds = %bb.r
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %i.ap, i8 46, i64 3, i1 false), !noalias !12984
  store i64 3, ptr %i.j, align 8, !noalias !12984
  %.sroa.417.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  store ptr %i.ap, ptr %.sroa.417.0..sroa_idx.i, align 8, !noalias !12984
  %.sroa.518.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  store i64 3, ptr %.sroa.518.0..sroa_idx.i, align 8, !noalias !12984
  br label %bb.u

bb.u:                                             ; preds = %bb.v, %bb.t
  %i.at = invoke fastcc noundef nonnull align 8 ptr @"_ZN12clap_builder5error14Error$LT$F$GT$13invalid_value17hc6cd23f15e25306cE"(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(776) %1, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.m, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %i.ah, i64 noundef %i.aj, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.j)
          to label %bb.w unwind label %.body.i, !noalias !12984

bb.v:                                             ; preds = %bb.p
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.j, ptr noundef nonnull align 8 dereferenceable(24) %i.i, i64 24, i1 false), !noalias !12984
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !12992
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !12992
  br label %bb.u

bb.w:                                             ; preds = %bb.u
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !12984
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !12984
  call void @llvm.experimental.noalias.scope.decl(metadata !12999)
  call void @llvm.experimental.noalias.scope.decl(metadata !13000)
  %i.au = icmp eq i64 %i.aj, 0
  br i1 %i.au, label %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hacb39932c9a98aa8E.exit.i.i", label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.w, %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17hfedeefc8cce81a05E.exit.i.i.i.i"
  %.sroa.0.010.i.i.i.i = phi i64 [ %i.aw, %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17hfedeefc8cce81a05E.exit.i.i.i.i" ], [ 0, %bb.w ] ; 2 uses
  %i.av = getelementptr inbounds nuw [24 x i8], ptr %i.ah, i64 %.sroa.0.010.i.i.i.i ; 2 uses
  %i.aw = add nuw i64 %.sroa.0.010.i.i.i.i, 1     ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !13001)
  call void @llvm.experimental.noalias.scope.decl(metadata !13002)
  %.val.i.i.i.i.i.i = load i64, ptr %i.av, align 8, !range !42, !alias.scope !13003, !noalias !13004, !noundef !34 ; 2 uses
  %i.ax = icmp eq i64 %.val.i.i.i.i.i.i, 0
  br i1 %i.ax, label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17hfedeefc8cce81a05E.exit.i.i.i.i", label %bb.x

bb.x:                                             ; preds = %.lr.ph.i.i.i.i
  %i.ay = getelementptr inbounds nuw i8, ptr %i.av, i64 8
  %.val1.i.i.i.i.i.i = load ptr, ptr %i.ay, align 8, !alias.scope !13003, !noalias !13004, !nonnull !34, !noundef !34
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i.i.i.i, i64 noundef %.val.i.i.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #53, !noalias !13005
  br label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17hfedeefc8cce81a05E.exit.i.i.i.i"

"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17hfedeefc8cce81a05E.exit.i.i.i.i": ; preds = %bb.x, %.lr.ph.i.i.i.i
  %i.az = icmp eq i64 %i.aw, %i.aj
  br i1 %i.az, label %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hacb39932c9a98aa8E.exit.i.i", label %.lr.ph.i.i.i.i

"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hacb39932c9a98aa8E.exit.i.i": ; preds = %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17hfedeefc8cce81a05E.exit.i.i.i.i", %bb.w
  %.val2.i.i = load i64, ptr %i.k, align 8, !range !42, !alias.scope !12999, !noalias !12984, !noundef !34 ; 2 uses
  %i.ba = icmp eq i64 %.val2.i.i, 0
  br i1 %i.ba, label %"_ZN135_$LT$clap_builder..builder..value_parser..EnumValueParser$LT$E$GT$$u20$as$u20$clap_builder..builder..value_parser..TypedValueParser$GT$9parse_ref28_$u7b$$u7b$closure$u7d$$u7d$17h3eb369c7717c0983E.exit", label %bb.y

bb.y:                                             ; preds = %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hacb39932c9a98aa8E.exit.i.i"
  %i.bb = mul nuw i64 %.val2.i.i, 24
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.ah, i64 noundef %i.bb, i64 noundef range(i64 1, -9223372036854775807) 8) #53, !noalias !13004
  br label %"_ZN135_$LT$clap_builder..builder..value_parser..EnumValueParser$LT$E$GT$$u20$as$u20$clap_builder..builder..value_parser..TypedValueParser$GT$9parse_ref28_$u7b$$u7b$closure$u7d$$u7d$17h3eb369c7717c0983E.exit"

"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17hfedeefc8cce81a05E.exit15.i": ; preds = %bb.z, %.body.thread.i, %.body.i
  %eh.lpad-body21.i = phi { ptr, i32 } [ %i.as, %.body.i ], [ %eh.lpad-body22.i, %.body.thread.i ], [ %eh.lpad-body22.i, %bb.z ]
  call fastcc void @"_ZN4core3ptr65drop_in_place$LT$alloc..vec..Vec$LT$alloc..string..String$GT$$GT$17h5566d11dfcc7545bE"(ptr noalias noundef align 8 dereferenceable(24) %i.k) #61, !noalias !12984
  br label %common.resume

.body.thread.i:                                   ; preds = %.body.thread23.i, %bb.o, %bb.n
  %eh.lpad-body22.i = phi { ptr, i32 } [ %i.ar, %.body.thread23.i ], [ %i.an, %bb.o ], [ %i.an, %bb.n ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !13006)
  call void @llvm.experimental.noalias.scope.decl(metadata !13007)
  %.val.i.i13.i = load i64, ptr %i.m, align 8, !range !42, !alias.scope !13008, !noalias !12984, !noundef !34 ; 2 uses
  %i.bc = icmp eq i64 %.val.i.i13.i, 0
  br i1 %i.bc, label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17hfedeefc8cce81a05E.exit15.i", label %bb.z

bb.z:                                             ; preds = %.body.thread.i
  %i.bd = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %.val1.i.i14.i = load ptr, ptr %i.bd, align 8, !alias.scope !13008, !noalias !12984, !nonnull !34, !noundef !34
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i14.i, i64 noundef %.val.i.i13.i, i64 noundef range(i64 1, -9223372036854775807) 1) #53, !noalias !13009
  br label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17hfedeefc8cce81a05E.exit15.i"

common.resume:                                    ; preds = %bb.ag, %bb.ah, %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17hfedeefc8cce81a05E.exit14.i", %bb.j, %bb.k, %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17hfedeefc8cce81a05E.exit15.i", %bb.ab
  %common.resume.op = phi { ptr, i32 } [ %i.ad, %bb.k ], [ %i.bk, %bb.ab ], [ %eh.lpad-body21.i, %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17hfedeefc8cce81a05E.exit15.i" ], [ %i.ad, %bb.j ], [ %eh.lpad-body20.i, %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17hfedeefc8cce81a05E.exit14.i" ], [ %i.br, %bb.ag ], [ %i.br, %bb.ah ]
  resume { ptr, i32 } %common.resume.op

"_ZN135_$LT$clap_builder..builder..value_parser..EnumValueParser$LT$E$GT$$u20$as$u20$clap_builder..builder..value_parser..TypedValueParser$GT$9parse_ref28_$u7b$$u7b$closure$u7d$$u7d$17h3eb369c7717c0983E.exit": ; preds = %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hacb39932c9a98aa8E.exit.i.i", %bb.y
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !12984
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.at, ptr %i.be, align 8
  br label %bb.ax

bb.aa:                                            ; preds = %bb.c
  %i.bf = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %i.bg = load ptr, ptr %i.bf, align 8, !nonnull !34, !align !52, !noundef !34 ; 3 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  %i.bi = load i64, ptr %i.bh, align 8, !noundef !34 ; 11 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n)
  %.sroa.5.0..sroa_idx.i.i10 = getelementptr inbounds nuw i8, ptr %i.g, i64 8 ; 2 uses
  %.sroa.6.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 16 ; 2 uses
  %.sroa.7.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 24 ; 2 uses
  %.sroa.8.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 32 ; 2 uses
  %.sroa.9.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 40 ; 2 uses
  %.sroa.10.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 48 ; 2 uses
  %.sroa.111.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 72 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !13010
  store i64 0, ptr %i.g, align 8, !noalias !13010
  store ptr @450, ptr %.sroa.5.0..sroa_idx.i.i10, align 8, !noalias !13010
  store i64 4, ptr %.sroa.6.0..sroa_idx.i.i, align 8, !noalias !13010
  store i64 0, ptr %.sroa.7.0..sroa_idx.i.i, align 8, !noalias !13010
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.8.0..sroa_idx.i.i, align 8, !noalias !13010
  store i64 0, ptr %.sroa.9.0..sroa_idx.i.i, align 8, !noalias !13010
  store i64 -9223372036854775808, ptr %.sroa.10.0..sroa_idx.i.i, align 8, !noalias !13010
  store i8 0, ptr %.sroa.111.0..sroa_idx.i.i, align 8, !noalias !13010
  %i.bj = invoke noundef zeroext i1 @_ZN12clap_builder7builder14possible_value13PossibleValue7matches17h9def629761e18b17E(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(80) %i.g, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.bg, i64 noundef %i.bi, i1 noundef zeroext %storemerge)
          to label %"_ZN135_$LT$clap_builder..builder..value_parser..EnumValueParser$LT$E$GT$$u20$as$u20$clap_builder..builder..value_parser..TypedValueParser$GT$9parse_ref28_$u7b$$u7b$closure$u7d$$u7d$17h734f4dddf6aa5ab8E.exit.i" unwind label %bb.ab, !noalias !13010

bb.ab:                                            ; preds = %bb.ac, %bb.aa
  %i.bk = landingpad { ptr, i32 }
          cleanup
  call fastcc void @"_ZN4core3ptr73drop_in_place$LT$clap_builder..builder..possible_value..PossibleValue$GT$17h29cfb4bf04935890E"(ptr noalias noundef align 8 dereferenceable(80) %i.g) #61, !noalias !13010
  br label %common.resume

"_ZN135_$LT$clap_builder..builder..value_parser..EnumValueParser$LT$E$GT$$u20$as$u20$clap_builder..builder..value_parser..TypedValueParser$GT$9parse_ref28_$u7b$$u7b$closure$u7d$$u7d$17h734f4dddf6aa5ab8E.exit.i": ; preds = %bb.aa
  call fastcc void @"_ZN4core3ptr73drop_in_place$LT$clap_builder..builder..possible_value..PossibleValue$GT$17h29cfb4bf04935890E"(ptr noalias noundef align 8 dereferenceable(80) %i.g), !noalias !13010
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !13010
  br i1 %i.bj, label %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4find17hda9a5c293dd9196aE.exit", label %bb.ac

bb.ac:                                            ; preds = %"_ZN135_$LT$clap_builder..builder..value_parser..EnumValueParser$LT$E$GT$$u20$as$u20$clap_builder..builder..value_parser..TypedValueParser$GT$9parse_ref28_$u7b$$u7b$closure$u7d$$u7d$17h734f4dddf6aa5ab8E.exit.i"
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !13010
  store i64 0, ptr %i.g, align 8, !noalias !13010
  store ptr @1091, ptr %.sroa.5.0..sroa_idx.i.i10, align 8, !noalias !13010
  store i64 8, ptr %.sroa.6.0..sroa_idx.i.i, align 8, !noalias !13010
  store i64 0, ptr %.sroa.7.0..sroa_idx.i.i, align 8, !noalias !13010
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.8.0..sroa_idx.i.i, align 8, !noalias !13010
  store i64 0, ptr %.sroa.9.0..sroa_idx.i.i, align 8, !noalias !13010
  store i64 -9223372036854775808, ptr %.sroa.10.0..sroa_idx.i.i, align 8, !noalias !13010
  store i8 0, ptr %.sroa.111.0..sroa_idx.i.i, align 8, !noalias !13010
  %i.bl = invoke noundef zeroext i1 @_ZN12clap_builder7builder14possible_value13PossibleValue7matches17h9def629761e18b17E(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(80) %i.g, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.bg, i64 noundef %i.bi, i1 noundef zeroext %storemerge)
          to label %"_ZN135_$LT$clap_builder..builder..value_parser..EnumValueParser$LT$E$GT$$u20$as$u20$clap_builder..builder..value_parser..TypedValueParser$GT$9parse_ref28_$u7b$$u7b$closure$u7d$$u7d$17h734f4dddf6aa5ab8E.exit.i.1" unwind label %bb.ab, !noalias !13010

"_ZN135_$LT$clap_builder..builder..value_parser..EnumValueParser$LT$E$GT$$u20$as$u20$clap_builder..builder..value_parser..TypedValueParser$GT$9parse_ref28_$u7b$$u7b$closure$u7d$$u7d$17h734f4dddf6aa5ab8E.exit.i.1": ; preds = %bb.ac
  call fastcc void @"_ZN4core3ptr73drop_in_place$LT$clap_builder..builder..possible_value..PossibleValue$GT$17h29cfb4bf04935890E"(ptr noalias noundef align 8 dereferenceable(80) %i.g), !noalias !13010
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !13010
  br i1 %i.bl, label %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4find17hda9a5c293dd9196aE.exit", label %bb.ad

"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4find17hda9a5c293dd9196aE.exit": ; preds = %"_ZN135_$LT$clap_builder..builder..value_parser..EnumValueParser$LT$E$GT$$u20$as$u20$clap_builder..builder..value_parser..TypedValueParser$GT$9parse_ref28_$u7b$$u7b$closure$u7d$$u7d$17h734f4dddf6aa5ab8E.exit.i.1", %"_ZN135_$LT$clap_builder..builder..value_parser..EnumValueParser$LT$E$GT$$u20$as$u20$clap_builder..builder..value_parser..TypedValueParser$GT$9parse_ref28_$u7b$$u7b$closure$u7d$$u7d$17h734f4dddf6aa5ab8E.exit.i"
  %.ptr.lcssa19 = phi ptr [ @1090, %"_ZN135_$LT$clap_builder..builder..value_parser..EnumValueParser$LT$E$GT$$u20$as$u20$clap_builder..builder..value_parser..TypedValueParser$GT$9parse_ref28_$u7b$$u7b$closure$u7d$$u7d$17h734f4dddf6aa5ab8E.exit.i" ], [ getelementptr inbounds nuw (i8, ptr @1090, i64 1), %"_ZN135_$LT$clap_builder..builder..value_parser..EnumValueParser$LT$E$GT$$u20$as$u20$clap_builder..builder..value_parser..TypedValueParser$GT$9parse_ref28_$u7b$$u7b$closure$u7d$$u7d$17h734f4dddf6aa5ab8E.exit.i.1" ]
  %.val = load i8, ptr %.ptr.lcssa19, align 1, !range !44, !noundef !34
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 %.val, ptr %i.bm, align 1
  br label %bb.ax

bb.ad:                                            ; preds = %"_ZN135_$LT$clap_builder..builder..value_parser..EnumValueParser$LT$E$GT$$u20$as$u20$clap_builder..builder..value_parser..TypedValueParser$GT$9parse_ref28_$u7b$$u7b$closure$u7d$$u7d$17h734f4dddf6aa5ab8E.exit.i.1"
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !13011
  %i.bn = icmp slt i64 %i.bi, 0
  br i1 %i.bn, label %bb.af, label %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i11, !prof !49

_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i11: ; preds = %bb.ad
  %i.bo = icmp eq i64 %i.bi, 0                    ; 3 uses
  br i1 %i.bo, label %"_ZN87_$LT$T$u20$as$u20$alloc..slice..$LT$impl$u20$$u5b$T$u5d$$GT$..to_vec_in..ConvertVec$GT$6to_vec17hd4f26c4e8ee570bdE.exit.i12", label %bb.ae

bb.ae:                                            ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i11
  call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #53, !noalias !13012
  %i.bp = call noundef ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef %i.bi, i64 noundef range(i64 1, 9) 1) #53, !noalias !13012 ; 2 uses
  %i.bq = icmp eq ptr %i.bp, null
  br i1 %i.bq, label %bb.af, label %"_ZN87_$LT$T$u20$as$u20$alloc..slice..$LT$impl$u20$$u5b$T$u5d$$GT$..to_vec_in..ConvertVec$GT$6to_vec17hd4f26c4e8ee570bdE.exit.i12"

bb.af:                                            ; preds = %bb.ae, %bb.ad
  %.sroa.4.0.ph.i.i.i36 = phi i64 [ 1, %bb.ae ], [ 0, %bb.ad ]
  call void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef %.sroa.4.0.ph.i.i.i36, i64 %i.bi, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @1401) #59, !noalias !13013
  unreachable

"_ZN87_$LT$T$u20$as$u20$alloc..slice..$LT$impl$u20$$u5b$T$u5d$$GT$..to_vec_in..ConvertVec$GT$6to_vec17hd4f26c4e8ee570bdE.exit.i12": ; preds = %bb.ae, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i11
  %.sroa.10.0.i.i.i13 = phi ptr [ inttoptr (i64 1 to ptr), %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i11 ], [ %i.bp, %bb.ae ] ; 4 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %.sroa.10.0.i.i.i13, ptr nonnull readonly align 1 %i.bg, i64 %i.bi, i1 false), !noalias !13014
  store i64 %i.bi, ptr %i.f, align 8, !noalias !13011
  %.sroa.4.0..sroa_idx.i14 = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store ptr %.sroa.10.0.i.i.i13, ptr %.sroa.4.0..sroa_idx.i14, align 8, !noalias !13011
  %.sroa.5.0..sroa_idx.i15 = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  store i64 %i.bi, ptr %.sroa.5.0..sroa_idx.i15, align 8, !noalias !13011
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !13011
  invoke fastcc void @"_ZN135_$LT$clap_builder..builder..value_parser..EnumValueParser$LT$E$GT$$u20$as$u20$clap_builder..builder..value_parser..TypedValueParser$GT$9parse_ref28_$u7b$$u7b$closure$u7d$$u7d$17h546c9754ad0b06a3E"(ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.e)
          to label %bb.ai unwind label %bb.ag, !noalias !13011

bb.ag:                                            ; preds = %"_ZN87_$LT$T$u20$as$u20$alloc..slice..$LT$impl$u20$$u5b$T$u5d$$GT$..to_vec_in..ConvertVec$GT$6to_vec17hd4f26c4e8ee570bdE.exit.i12"
  %i.br = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  br i1 %i.bo, label %common.resume, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.10.0.i.i.i13, i64 noundef %i.bi, i64 noundef range(i64 1, -9223372036854775807) 1) #53, !noalias !13015
  br label %common.resume

bb.ai:                                            ; preds = %"_ZN87_$LT$T$u20$as$u20$alloc..slice..$LT$impl$u20$$u5b$T$u5d$$GT$..to_vec_in..ConvertVec$GT$6to_vec17hd4f26c4e8ee570bdE.exit.i12"
  %i.bs = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.bt = load ptr, ptr %i.bs, align 8, !noalias !13011, !nonnull !34, !noundef !34 ; 3 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.bv = load i64, ptr %i.bu, align 8, !noalias !13011, !noundef !34 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !13011
  br i1 %.not, label %bb.ao, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !13016
  store i64 0, ptr %i.c, align 8, !noalias !13016
  %.sroa.42.0..sroa_idx.i.i19 = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 2 uses
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.42.0..sroa_idx.i.i19, align 8, !noalias !13016
  %.sroa.53.0..sroa_idx.i.i20 = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store i64 0, ptr %.sroa.53.0..sroa_idx.i.i20, align 8, !noalias !13016
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !13016
  %i.bw = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i32 -536870880, ptr %i.bw, align 8, !noalias !13016
  %.sroa.4.0..sroa_idx.i5.i = getelementptr inbounds nuw i8, ptr %i.b, i64 20
  store i16 0, ptr %.sroa.4.0..sroa_idx.i5.i, align 4, !noalias !13016
  %.sroa.5.0..sroa_idx.i.i21 = getelementptr inbounds nuw i8, ptr %i.b, i64 22
  store i16 0, ptr %.sroa.5.0..sroa_idx.i.i21, align 2, !noalias !13016
  store ptr %i.c, ptr %i.b, align 8, !noalias !13016
  %i.bx = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr @744, ptr %i.bx, align 8, !noalias !13016
  %i.by = invoke noundef zeroext i1 @"_ZN70_$LT$clap_builder..builder..arg..Arg$u20$as$u20$core..fmt..Display$GT$3fmt17h4699aed67ecd8f44E"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(624) %2, ptr noalias noundef nonnull align 8 dereferenceable(24) %i.b)
          to label %bb.am unwind label %bb.ak, !noalias !13017

bb.ak:                                            ; preds = %bb.an, %bb.aj
  %i.bz = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !13018)
  call void @llvm.experimental.noalias.scope.decl(metadata !13019)
  %.val.i.i.i.i22 = load i64, ptr %i.c, align 8, !range !42, !alias.scope !13020, !noalias !13016, !noundef !34 ; 2 uses
  %i.ca = icmp eq i64 %.val.i.i.i.i22, 0
  br i1 %i.ca, label %.body.thread.i24, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %.val1.i.i.i.i23 = load ptr, ptr %.sroa.42.0..sroa_idx.i.i19, align 8, !alias.scope !13020, !noalias !13016, !nonnull !34, !noundef !34
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i.i23, i64 noundef %.val.i.i.i.i22, i64 noundef range(i64 1, -9223372036854775807) 1) #53, !noalias !13021
  br label %.body.thread.i24

bb.am:                                            ; preds = %bb.aj
  br i1 %i.by, label %bb.an, label %bb.as, !prof !37

bb.an:                                            ; preds = %bb.am
  invoke void @_ZN4core6result13unwrap_failed17h0501379eaec3e720E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @745, i64 noundef 55, ptr noundef nonnull align 1 %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @765, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @747) #59
          to label %.noexc.i.i34 unwind label %bb.ak, !noalias !13017

.noexc.i.i34:                                     ; preds = %bb.an
  unreachable

bb.ao:                                            ; preds = %bb.ai
  call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #53, !noalias !13022
  %i.cb = call noundef dereferenceable_or_null(3) ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef 3, i64 noundef range(i64 1, 9) 1) #53, !noalias !13022 ; 3 uses
  %i.cc = icmp eq ptr %i.cb, null
  br i1 %i.cc, label %bb.ap, label %bb.aq

bb.ap:                                            ; preds = %bb.ao
  invoke void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef 1, i64 3, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @1401) #59
          to label %.noexc.i35 unwind label %.body.thread22.i, !noalias !13011

.body.thread22.i:                                 ; preds = %bb.ap
  %i.cd = landingpad { ptr, i32 }
          cleanup
  br label %.body.thread.i24

.noexc.i35:                                       ; preds = %bb.ap
  unreachable

.body.i26:                                        ; preds = %bb.ar
  %i.ce = landingpad { ptr, i32 }
          cleanup
  br label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17hfedeefc8cce81a05E.exit14.i"

bb.aq:                                            ; preds = %bb.ao
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %i.cb, i8 46, i64 3, i1 false), !noalias !13011
  store i64 3, ptr %i.d, align 8, !noalias !13011
  %.sroa.416.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr %i.cb, ptr %.sroa.416.0..sroa_idx.i, align 8, !noalias !13011
  %.sroa.517.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  store i64 3, ptr %.sroa.517.0..sroa_idx.i, align 8, !noalias !13011
  br label %bb.ar

bb.ar:                                            ; preds = %bb.as, %bb.aq
  %i.cf = invoke fastcc noundef nonnull align 8 ptr @"_ZN12clap_builder5error14Error$LT$F$GT$13invalid_value17hc6cd23f15e25306cE"(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(776) %1, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.f, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %i.bt, i64 noundef %i.bv, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.d)
          to label %bb.at unwind label %.body.i26, !noalias !13011

bb.as:                                            ; preds = %bb.am
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.d, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false), !noalias !13011
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !13016
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !13016
  br label %bb.ar

bb.at:                                            ; preds = %bb.ar
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !13011
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !13011
  call void @llvm.experimental.noalias.scope.decl(metadata !13023)
  call void @llvm.experimental.noalias.scope.decl(metadata !13024)
  %i.cg = icmp eq i64 %i.bv, 0
  br i1 %i.cg, label %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hacb39932c9a98aa8E.exit.i.i32", label %.lr.ph.i.i.i.i27

.lr.ph.i.i.i.i27:                                 ; preds = %bb.at, %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17hfedeefc8cce81a05E.exit.i.i.i.i31"
  %.sroa.0.010.i.i.i.i28 = phi i64 [ %i.ci, %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17hfedeefc8cce81a05E.exit.i.i.i.i31" ], [ 0, %bb.at ] ; 2 uses
  %i.ch = getelementptr inbounds nuw [24 x i8], ptr %i.bt, i64 %.sroa.0.010.i.i.i.i28 ; 2 uses
  %i.ci = add nuw i64 %.sroa.0.010.i.i.i.i28, 1   ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !13025)
  call void @llvm.experimental.noalias.scope.decl(metadata !13026)
  %.val.i.i.i.i.i.i29 = load i64, ptr %i.ch, align 8, !range !42, !alias.scope !13027, !noalias !13028, !noundef !34 ; 2 uses
  %i.cj = icmp eq i64 %.val.i.i.i.i.i.i29, 0
  br i1 %i.cj, label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17hfedeefc8cce81a05E.exit.i.i.i.i31", label %bb.au

bb.au:                                            ; preds = %.lr.ph.i.i.i.i27
  %i.ck = getelementptr inbounds nuw i8, ptr %i.ch, i64 8
  %.val1.i.i.i.i.i.i30 = load ptr, ptr %i.ck, align 8, !alias.scope !13027, !noalias !13028, !nonnull !34, !noundef !34
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i.i.i.i30, i64 noundef %.val.i.i.i.i.i.i29, i64 noundef range(i64 1, -9223372036854775807) 1) #53, !noalias !13029
  br label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17hfedeefc8cce81a05E.exit.i.i.i.i31"

"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17hfedeefc8cce81a05E.exit.i.i.i.i31": ; preds = %bb.au, %.lr.ph.i.i.i.i27
  %i.cl = icmp eq i64 %i.ci, %i.bv
  br i1 %i.cl, label %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hacb39932c9a98aa8E.exit.i.i32", label %.lr.ph.i.i.i.i27

"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hacb39932c9a98aa8E.exit.i.i32": ; preds = %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17hfedeefc8cce81a05E.exit.i.i.i.i31", %bb.at
  %.val2.i.i33 = load i64, ptr %i.e, align 8, !range !42, !alias.scope !13023, !noalias !13011, !noundef !34 ; 2 uses
  %i.cm = icmp eq i64 %.val2.i.i33, 0
  br i1 %i.cm, label %"_ZN135_$LT$clap_builder..builder..value_parser..EnumValueParser$LT$E$GT$$u20$as$u20$clap_builder..builder..value_parser..TypedValueParser$GT$9parse_ref28_$u7b$$u7b$closure$u7d$$u7d$17h94a5ef62e8a503d6E.exit", label %bb.av

bb.av:                                            ; preds = %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hacb39932c9a98aa8E.exit.i.i32"
  %i.cn = mul nuw i64 %.val2.i.i33, 24
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.bt, i64 noundef %i.cn, i64 noundef range(i64 1, -9223372036854775807) 8) #53, !noalias !13028
  br label %"_ZN135_$LT$clap_builder..builder..value_parser..EnumValueParser$LT$E$GT$$u20$as$u20$clap_builder..builder..value_parser..TypedValueParser$GT$9parse_ref28_$u7b$$u7b$closure$u7d$$u7d$17h94a5ef62e8a503d6E.exit"

"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17hfedeefc8cce81a05E.exit14.i": ; preds = %bb.aw, %.body.thread.i24, %.body.i26
  %eh.lpad-body20.i = phi { ptr, i32 } [ %i.ce, %.body.i26 ], [ %eh.lpad-body21.i25, %.body.thread.i24 ], [ %eh.lpad-body21.i25, %bb.aw ]
  call fastcc void @"_ZN4core3ptr65drop_in_place$LT$alloc..vec..Vec$LT$alloc..string..String$GT$$GT$17h5566d11dfcc7545bE"(ptr noalias noundef align 8 dereferenceable(24) %i.e) #61, !noalias !13011
  br label %common.resume

.body.thread.i24:                                 ; preds = %.body.thread22.i, %bb.al, %bb.ak
  %eh.lpad-body21.i25 = phi { ptr, i32 } [ %i.cd, %.body.thread22.i ], [ %i.bz, %bb.al ], [ %i.bz, %bb.ak ] ; 2 uses
  br i1 %i.bo, label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17hfedeefc8cce81a05E.exit14.i", label %bb.aw

bb.aw:                                            ; preds = %.body.thread.i24
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.10.0.i.i.i13, i64 noundef %i.bi, i64 noundef range(i64 1, -9223372036854775807) 1) #53, !noalias !13030
  br label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17hfedeefc8cce81a05E.exit14.i"

"_ZN135_$LT$clap_builder..builder..value_parser..EnumValueParser$LT$E$GT$$u20$as$u20$clap_builder..builder..value_parser..TypedValueParser$GT$9parse_ref28_$u7b$$u7b$closure$u7d$$u7d$17h94a5ef62e8a503d6E.exit": ; preds = %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hacb39932c9a98aa8E.exit.i.i32", %bb.av
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !13011
  %i.co = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.cf, ptr %i.co, align 8
  br label %bb.ax

bb.ax:                                            ; preds = %"_ZN135_$LT$clap_builder..builder..value_parser..EnumValueParser$LT$E$GT$$u20$as$u20$clap_builder..builder..value_parser..TypedValueParser$GT$9parse_ref28_$u7b$$u7b$closure$u7d$$u7d$17h3eb369c7717c0983E.exit", %"_ZN135_$LT$clap_builder..builder..value_parser..EnumValueParser$LT$E$GT$$u20$as$u20$clap_builder..builder..value_parser..TypedValueParser$GT$9parse_ref28_$u7b$$u7b$closure$u7d$$u7d$17h94a5ef62e8a503d6E.exit", %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4find17hda9a5c293dd9196aE.exit"
  %.sink = phi i8 [ 1, %"_ZN135_$LT$clap_builder..builder..value_parser..EnumValueParser$LT$E$GT$$u20$as$u20$clap_builder..builder..value_parser..TypedValueParser$GT$9parse_ref28_$u7b$$u7b$closure$u7d$$u7d$17h3eb369c7717c0983E.exit" ], [ 1, %"_ZN135_$LT$clap_builder..builder..value_parser..EnumValueParser$LT$E$GT$$u20$as$u20$clap_builder..builder..value_parser..TypedValueParser$GT$9parse_ref28_$u7b$$u7b$closure$u7d$$u7d$17h94a5ef62e8a503d6E.exit" ], [ 0, %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4find17hda9a5c293dd9196aE.exit" ]
  store i8 %.sink, ptr %0, align 8
  ret void
}

end_hunk_0
