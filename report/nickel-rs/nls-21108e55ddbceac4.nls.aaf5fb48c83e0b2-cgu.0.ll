Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/nickel-rs/original/nls-21108e55ddbceac4.nls.aaf5fb48c83e0b2-cgu.0?download=true
inline.NumInlined: 33049
inline.NumDeleted: 15304
loop-unroll.NumCompletelyUnrolled: 63
loop-unroll.NumRuntimeUnrolled: 88
loop-unroll.NumUnrolled: 158
begin_hunk_0_@_ZN3nls9contracts22ContractConfigsWatcher11load_config17h97a3f663580e3870E:bb.a
  %i.dz = icmp eq i64 %.val.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, 0
  br i1 %i.dz, label %"_ZN4core3ptr57drop_in_place$LT$nls..contracts..ContractConfigFormat$GT$17hbb8632201fc9a935E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i", label %bb.aw

bb.aw:                                            ; preds = %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h24b598f56fd0df8eE.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i"
  %i.ea = getelementptr inbounds nuw i8, ptr %i.du, i64 32
  %.val1.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.ea, align 8, !alias.scope !70563, !noalias !70560, !nonnull !44, !noundef !44
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 noundef %.val.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #66, !noalias !70564
  br label %"_ZN4core3ptr57drop_in_place$LT$nls..contracts..ContractConfigFormat$GT$17hbb8632201fc9a935E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i"

"_ZN4core3ptr57drop_in_place$LT$nls..contracts..ContractConfigFormat$GT$17hbb8632201fc9a935E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i": ; preds = %bb.aw, %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h24b598f56fd0df8eE.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i"
  %i.eb = icmp eq i64 %i.dv, %i.ds
  br i1 %i.eb, label %"_ZN4core3ptr67drop_in_place$LT$$u5b$nls..contracts..ContractConfigFormat$u5d$$GT$17hd448b17f71484103E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i", label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i

"_ZN4core3ptr67drop_in_place$LT$$u5b$nls..contracts..ContractConfigFormat$u5d$$GT$17hd448b17f71484103E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i": ; preds = %"_ZN4core3ptr57drop_in_place$LT$nls..contracts..ContractConfigFormat$GT$17hbb8632201fc9a935E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i", %bb.au
  %i.ec = load i64, ptr %.sroa.011.sroa.5.0..sroa_idx.i.i, align 8, !alias.scope !70553, !noalias !70554, !noundef !44 ; 2 uses
  %i.ed = icmp eq i64 %i.ec, 0
  br i1 %i.ed, label %"_ZN136_$LT$core..result..Result$LT$V$C$E$GT$$u20$as$u20$core..iter..traits..collect..FromIterator$LT$core..result..Result$LT$A$C$E$GT$$GT$$GT$9from_iter28_$u7b$$u7b$closure$u7d$$u7d$17hbc01fa8b84690316E.exit.i.i.i.i.i", label %bb.ax

bb.ax:                                            ; preds = %"_ZN4core3ptr67drop_in_place$LT$$u5b$nls..contracts..ContractConfigFormat$u5d$$GT$17hd448b17f71484103E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i"
  %i.ee = load ptr, ptr %i.k, align 8, !alias.scope !70553, !noalias !70554, !nonnull !44, !noundef !44
  %i.ef = mul nuw i64 %i.ec, 48
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.ee, i64 noundef %i.ef, i64 noundef range(i64 1, -9223372036854775807) 8) #66, !noalias !70560
  br label %"_ZN136_$LT$core..result..Result$LT$V$C$E$GT$$u20$as$u20$core..iter..traits..collect..FromIterator$LT$core..result..Result$LT$A$C$E$GT$$GT$$GT$9from_iter28_$u7b$$u7b$closure$u7d$$u7d$17hbc01fa8b84690316E.exit.i.i.i.i.i"

bb.ay:                                            ; preds = %bb.az
  %i.eg = landingpad { ptr, i32 }
          cleanup
  call fastcc void @"_ZN4core3ptr51drop_in_place$LT$nls..contracts..ContractConfig$GT$17hbda8b4c3bc884c64E"(ptr noalias noundef align 8 dereferenceable(80) %i.i) #77, !noalias !70565
  br label %bb.bl

bb.az:                                            ; preds = %bb.at
  invoke void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef 8, i64 320, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @119) #75
          to label %.noexc.i.i.i.i.i.i.i.i.i.i.i unwind label %bb.ay, !noalias !70565

.noexc.i.i.i.i.i.i.i.i.i.i.i:                     ; preds = %bb.az
  unreachable

bb.ba:                                            ; preds = %bb.at
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.dm, ptr noundef nonnull align 8 dereferenceable(80) %i.i, i64 80, i1 false), !noalias !70565
  store i64 4, ptr %i.j, align 8, !noalias !70546
  %.sroa.4.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.j, i64 8 ; 2 uses
  store ptr %i.dm, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i, align 8, !noalias !70546
  %.sroa.6.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.j, i64 16 ; 2 uses
  store i64 1, ptr %.sroa.6.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i, align 8, !noalias !70546
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !70546
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.h, ptr noundef nonnull align 8 dereferenceable(56) %i.k, i64 56, i1 false), !noalias !70554
  call void @llvm.experimental.noalias.scope.decl(metadata !70566)
  call void @llvm.experimental.noalias.scope.decl(metadata !70567)
  call void @llvm.experimental.noalias.scope.decl(metadata !70568)
  call void @llvm.experimental.noalias.scope.decl(metadata !70569)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !70570
  br label %bb.bb

bb.bb:                                            ; preds = %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17hc8248b5d7a7edfc6E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i", %bb.ba
  %.sroa.6.0.copyload9.i.i.i.i.i = phi ptr [ %i.fh, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17hc8248b5d7a7edfc6E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i" ], [ %i.dm, %bb.ba ] ; 2 uses
  %.sroa.8.0.copyload11.i.i.i.i.i = phi i64 [ %i.fj, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17hc8248b5d7a7edfc6E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i" ], [ 1, %bb.ba ] ; 6 uses
  invoke fastcc void @"_ZN106_$LT$core..iter..adapters..GenericShunt$LT$I$C$R$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h8e2e8c5a77213578E"(ptr noalias noundef align 8 captures(address) dereferenceable(80) %i.g, ptr noalias noundef nonnull align 8 dereferenceable(56) %i.h)
          to label %bb.bd unwind label %bb.bc, !noalias !70571

.body.i.i.i.i.i.i.i.i.i.i.i:                      ; preds = %bb.bj, %bb.bc
  %.pn.i.i.i.i.i.i.i.i.i.i.i.i.i = phi { ptr, i32 } [ %i.fk, %bb.bj ], [ %i.eh, %bb.bc ]
  call fastcc void @"_ZN4core3ptr337drop_in_place$LT$core..iter..adapters..GenericShunt$LT$core..iter..adapters..map..Map$LT$alloc..vec..into_iter..IntoIter$LT$nls..contracts..ContractConfigFormat$GT$$C$nls..contracts..LocalConfigFormat..into_local_config..$u7b$$u7b$closure$u7d$$u7d$$GT$$C$core..result..Result$LT$core..convert..Infallible$C$glob..PatternError$GT$$GT$$GT$17h9686434daa5cd964E"(ptr noalias noundef nonnull align 8 dereferenceable(56) %i.h) #77, !noalias !70571
  call fastcc void @"_ZN4core3ptr74drop_in_place$LT$alloc..vec..Vec$LT$nls..contracts..ContractConfig$GT$$GT$17hb62bf39402c50b10E"(ptr noalias noundef align 8 dereferenceable(24) %i.j) #77, !noalias !70565
  br label %common.resume

bb.bc:                                            ; preds = %bb.bb
  %i.eh = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i.i.i.i.i.i.i.i.i.i

bb.bd:                                            ; preds = %bb.bb
  %i.ei = load i64, ptr %i.g, align 8, !range !70, !noalias !70572, !noundef !44
  %.not.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq i64 %i.ei, -9223372036854775808
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i.i, label %bb.bf, label %bb.be

bb.be:                                            ; preds = %bb.bd
  %i.ej = icmp samesign ult i64 %.sroa.8.0.copyload11.i.i.i.i.i, 115292150460684698
  call void @llvm.assume(i1 %i.ej)
  %i.ek = load i64, ptr %i.j, align 8, !range !74, !alias.scope !70573, !noalias !70574, !noundef !44
  %i.el = icmp eq i64 %.sroa.8.0.copyload11.i.i.i.i.i, %i.ek
  br i1 %i.el, label %"_ZN106_$LT$core..iter..adapters..GenericShunt$LT$I$C$R$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$9size_hint17hc81dfe4c9e0ff6f8E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i", label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17hc8248b5d7a7edfc6E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i"

bb.bf:                                            ; preds = %bb.bd
  call void @llvm.experimental.noalias.scope.decl(metadata !70575)
  call void @llvm.experimental.noalias.scope.decl(metadata !70576)
  call void @llvm.experimental.noalias.scope.decl(metadata !70577)
  call void @llvm.experimental.noalias.scope.decl(metadata !70578)
  %i.em = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.en = load ptr, ptr %i.em, align 8, !alias.scope !70579, !noalias !70580, !nonnull !44, !noundef !44 ; 3 uses
  %i.eo = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  %.val2.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.eo, align 8, !alias.scope !70579, !noalias !70580, !nonnull !44, !noundef !44 ; 2 uses
  %i.ep = ptrtoint ptr %.val2.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i to i64
  %i.eq = ptrtoint ptr %i.en to i64
  %i.er = sub nuw i64 %i.ep, %i.eq
  %i.es = udiv exact i64 %i.er, 48
  call void @llvm.experimental.noalias.scope.decl(metadata !70581)
  %i.et = icmp eq ptr %.val2.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %i.en
  br i1 %i.et, label %"_ZN4core3ptr67drop_in_place$LT$$u5b$nls..contracts..ContractConfigFormat$u5d$$GT$17hd448b17f71484103E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i", label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i:       ; preds = %bb.bf, %"_ZN4core3ptr57drop_in_place$LT$nls..contracts..ContractConfigFormat$GT$17hbb8632201fc9a935E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i"
  %.sroa.0.07.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.ev, %"_ZN4core3ptr57drop_in_place$LT$nls..contracts..ContractConfigFormat$GT$17hbb8632201fc9a935E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i" ], [ 0, %bb.bf ] ; 2 uses
  %i.eu = getelementptr inbounds nuw [48 x i8], ptr %i.en, i64 %.sroa.0.07.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ; 4 uses
  %i.ev = add nuw i64 %.sroa.0.07.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, 1 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !70582)
  call void @llvm.experimental.noalias.scope.decl(metadata !70583)
  call void @llvm.experimental.noalias.scope.decl(metadata !70584)
  %.val.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = load i64, ptr %i.eu, align 8, !range !74, !alias.scope !70585, !noalias !70586, !noundef !44 ; 2 uses
  %i.ew = icmp eq i64 %.val.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, 0
  br i1 %i.ew, label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h24b598f56fd0df8eE.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i", label %bb.bg

bb.bg:                                            ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.ex = getelementptr inbounds nuw i8, ptr %i.eu, i64 8
  %.val1.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.ex, align 8, !alias.scope !70585, !noalias !70586, !nonnull !44, !noundef !44
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 noundef %.val.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #66, !noalias !70587
  br label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h24b598f56fd0df8eE.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i"

"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h24b598f56fd0df8eE.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i": ; preds = %bb.bg, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.ey = getelementptr inbounds nuw i8, ptr %i.eu, i64 24
  %.val.i.i.i.i.i.i.i.i5.i.i.i.i.i.i.i.i.i.i.i = load i64, ptr %i.ey, align 8, !range !74, !alias.scope !70588, !noalias !70586, !noundef !44 ; 2 uses
  %i.ez = icmp eq i64 %.val.i.i.i.i.i.i.i.i5.i.i.i.i.i.i.i.i.i.i.i, 0
  br i1 %i.ez, label %"_ZN4core3ptr57drop_in_place$LT$nls..contracts..ContractConfigFormat$GT$17hbb8632201fc9a935E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i", label %bb.bh

bb.bh:                                            ; preds = %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h24b598f56fd0df8eE.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i"
  %i.fa = getelementptr inbounds nuw i8, ptr %i.eu, i64 32
  %.val1.i.i.i.i.i.i.i.i6.i.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.fa, align 8, !alias.scope !70589, !noalias !70586, !nonnull !44, !noundef !44
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i.i.i.i.i.i6.i.i.i.i.i.i.i.i.i.i.i, i64 noundef %.val.i.i.i.i.i.i.i.i5.i.i.i.i.i.i.i.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #66, !noalias !70590
  br label %"_ZN4core3ptr57drop_in_place$LT$nls..contracts..ContractConfigFormat$GT$17hbb8632201fc9a935E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i"

"_ZN4core3ptr57drop_in_place$LT$nls..contracts..ContractConfigFormat$GT$17hbb8632201fc9a935E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i": ; preds = %bb.bh, %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h24b598f56fd0df8eE.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i"
  %i.fb = icmp eq i64 %i.ev, %i.es
  br i1 %i.fb, label %"_ZN4core3ptr67drop_in_place$LT$$u5b$nls..contracts..ContractConfigFormat$u5d$$GT$17hd448b17f71484103E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i", label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i

"_ZN4core3ptr67drop_in_place$LT$$u5b$nls..contracts..ContractConfigFormat$u5d$$GT$17hd448b17f71484103E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i": ; preds = %"_ZN4core3ptr57drop_in_place$LT$nls..contracts..ContractConfigFormat$GT$17hbb8632201fc9a935E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i", %bb.bf
  %i.fc = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.fd = load i64, ptr %i.fc, align 8, !alias.scope !70579, !noalias !70580, !noundef !44 ; 2 uses
  %i.fe = icmp eq i64 %i.fd, 0
  br i1 %i.fe, label %bb.bk, label %bb.bi

bb.bi:                                            ; preds = %"_ZN4core3ptr67drop_in_place$LT$$u5b$nls..contracts..ContractConfigFormat$u5d$$GT$17hd448b17f71484103E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i"
  %i.ff = load ptr, ptr %i.h, align 8, !alias.scope !70579, !noalias !70580, !nonnull !44, !noundef !44
  %i.fg = mul nuw i64 %i.fd, 48
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.ff, i64 noundef %i.fg, i64 noundef range(i64 1, -9223372036854775807) 8) #66, !noalias !70586
  br label %bb.bk

"_ZN106_$LT$core..iter..adapters..GenericShunt$LT$I$C$R$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$9size_hint17hc81dfe4c9e0ff6f8E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i": ; preds = %bb.be
  invoke fastcc void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$7reserve21do_reserve_and_handle17hf28d563308425255E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.j, i64 noundef %.sroa.8.0.copyload11.i.i.i.i.i, i64 noundef range(i64 1, 0) 1, i64 noundef 8, i64 noundef 80)
          to label %"_ZN106_$LT$core..iter..adapters..GenericShunt$LT$I$C$R$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$9size_hint17hc81dfe4c9e0ff6f8E.exit.i.i._ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17hc8248b5d7a7edfc6E.exit.i.i_crit_edge.i.i.i.i.i.i.i.i.i.i.i" unwind label %bb.bj, !noalias !70591

"_ZN106_$LT$core..iter..adapters..GenericShunt$LT$I$C$R$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$9size_hint17hc81dfe4c9e0ff6f8E.exit.i.i._ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17hc8248b5d7a7edfc6E.exit.i.i_crit_edge.i.i.i.i.i.i.i.i.i.i.i": ; preds = %"_ZN106_$LT$core..iter..adapters..GenericShunt$LT$I$C$R$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$9size_hint17hc81dfe4c9e0ff6f8E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i"
  %.pre.i.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i, align 8, !alias.scope !70573, !noalias !70574
  br label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17hc8248b5d7a7edfc6E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i"

"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17hc8248b5d7a7edfc6E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i": ; preds = %"_ZN106_$LT$core..iter..adapters..GenericShunt$LT$I$C$R$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$9size_hint17hc81dfe4c9e0ff6f8E.exit.i.i._ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17hc8248b5d7a7edfc6E.exit.i.i_crit_edge.i.i.i.i.i.i.i.i.i.i.i", %bb.be
  %i.fh = phi ptr [ %.pre.i.i.i.i.i.i.i.i.i.i.i, %"_ZN106_$LT$core..iter..adapters..GenericShunt$LT$I$C$R$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$9size_hint17hc81dfe4c9e0ff6f8E.exit.i.i._ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17hc8248b5d7a7edfc6E.exit.i.i_crit_edge.i.i.i.i.i.i.i.i.i.i.i" ], [ %.sroa.6.0.copyload9.i.i.i.i.i, %bb.be ] ; 2 uses
  %i.fi = getelementptr inbounds nuw [80 x i8], ptr %i.fh, i64 %.sroa.8.0.copyload11.i.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.fi, ptr noundef nonnull align 8 dereferenceable(80) %i.g, i64 80, i1 false), !noalias !70592
  %i.fj = add nuw nsw i64 %.sroa.8.0.copyload11.i.i.i.i.i, 1 ; 2 uses
  store i64 %i.fj, ptr %.sroa.6.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i, align 8, !alias.scope !70573, !noalias !70574
  br label %bb.bb

bb.bj:                                            ; preds = %"_ZN106_$LT$core..iter..adapters..GenericShunt$LT$I$C$R$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$9size_hint17hc81dfe4c9e0ff6f8E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i"
  %i.fk = landingpad { ptr, i32 }
          cleanup
  call fastcc void @"_ZN4core3ptr51drop_in_place$LT$nls..contracts..ContractConfig$GT$17hbda8b4c3bc884c64E"(ptr noalias noundef align 8 dereferenceable(80) %i.g) #77, !noalias !70592
  br label %.body.i.i.i.i.i.i.i.i.i.i.i

bb.bk:                                            ; preds = %bb.bi, %"_ZN4core3ptr67drop_in_place$LT$$u5b$nls..contracts..ContractConfigFormat$u5d$$GT$17hd448b17f71484103E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !70570
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !70546
  %.sroa.0.0.copyload7.i.i.i.i.i = load i64, ptr %i.j, align 8, !noalias !70593
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !70546
  br label %"_ZN136_$LT$core..result..Result$LT$V$C$E$GT$$u20$as$u20$core..iter..traits..collect..FromIterator$LT$core..result..Result$LT$A$C$E$GT$$GT$$GT$9from_iter28_$u7b$$u7b$closure$u7d$$u7d$17hbc01fa8b84690316E.exit.i.i.i.i.i"

bb.bl:                                            ; preds = %bb.ay, %bb.ar
  %.pn.ph.i.i.i.i.i.i.i.i.i.i.i = phi { ptr, i32 } [ %i.dk, %bb.ar ], [ %i.eg, %bb.ay ]
  call fastcc void @"_ZN4core3ptr337drop_in_place$LT$core..iter..adapters..GenericShunt$LT$core..iter..adapters..map..Map$LT$alloc..vec..into_iter..IntoIter$LT$nls..contracts..ContractConfigFormat$GT$$C$nls..contracts..LocalConfigFormat..into_local_config..$u7b$$u7b$closure$u7d$$u7d$$GT$$C$core..result..Result$LT$core..convert..Infallible$C$glob..PatternError$GT$$GT$$GT$17h9686434daa5cd964E"(ptr noalias noundef nonnull align 8 dereferenceable(56) %i.k) #77, !noalias !70547
  br label %common.resume

"_ZN136_$LT$core..result..Result$LT$V$C$E$GT$$u20$as$u20$core..iter..traits..collect..FromIterator$LT$core..result..Result$LT$A$C$E$GT$$GT$$GT$9from_iter28_$u7b$$u7b$closure$u7d$$u7d$17hbc01fa8b84690316E.exit.i.i.i.i.i": ; preds = %bb.bk, %bb.ax, %"_ZN4core3ptr67drop_in_place$LT$$u5b$nls..contracts..ContractConfigFormat$u5d$$GT$17hd448b17f71484103E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i"
  %.sroa.8.0.i.i.i.i.i = phi i64 [ 0, %"_ZN4core3ptr67drop_in_place$LT$$u5b$nls..contracts..ContractConfigFormat$u5d$$GT$17hd448b17f71484103E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i" ], [ 0, %bb.ax ], [ %.sroa.8.0.copyload11.i.i.i.i.i, %bb.bk ] ; 3 uses
  %.sroa.6.0.i.i.i.i.i = phi ptr [ inttoptr (i64 8 to ptr), %"_ZN4core3ptr67drop_in_place$LT$$u5b$nls..contracts..ContractConfigFormat$u5d$$GT$17hd448b17f71484103E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i" ], [ inttoptr (i64 8 to ptr), %bb.ax ], [ %.sroa.6.0.copyload9.i.i.i.i.i, %bb.bk ] ; 4 uses
  %.sroa.0.0.i.i.i.i45.i = phi i64 [ 0, %"_ZN4core3ptr67drop_in_place$LT$$u5b$nls..contracts..ContractConfigFormat$u5d$$GT$17hd448b17f71484103E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i" ], [ 0, %bb.ax ], [ %.sroa.0.0.copyload7.i.i.i.i.i, %bb.bk ] ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !70545
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !70538
  %i.fl = load ptr, ptr %i.l, align 8, !noalias !70537, !noundef !44 ; 2 uses
  %.not.not.i.i.i.i.i = icmp eq ptr %i.fl, null
  %i.fm = ptrtoint ptr %i.fl to i64
  br i1 %.not.not.i.i.i.i.i, label %_ZN3nls9contracts11LocalConfig9from_file17h4f2bb6ebc3a55e31E.exit, label %bb.bm

bb.bm:                                            ; preds = %"_ZN136_$LT$core..result..Result$LT$V$C$E$GT$$u20$as$u20$core..iter..traits..collect..FromIterator$LT$core..result..Result$LT$A$C$E$GT$$GT$$GT$9from_iter28_$u7b$$u7b$closure$u7d$$u7d$17hbc01fa8b84690316E.exit.i.i.i.i.i"
  %.sroa.10.8..sroa_idx5.i.i = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %.sroa.10.8.copyload6.i.i = load ptr, ptr %.sroa.10.8..sroa_idx5.i.i, align 8, !noalias !70594
  %.sroa.11.8..sroa_idx9.i.i = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %.sroa.11.8.copyload10.i.i = load i64, ptr %.sroa.11.8..sroa_idx9.i.i, align 8, !noalias !70594
  %i.fn = icmp eq i64 %.sroa.8.0.i.i.i.i.i, 0
  br i1 %i.fn, label %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h4d770e494fb351ceE.exit.i.i.i.i.i.i", label %.lr.ph.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i:                           ; preds = %bb.bm, %.lr.ph.i.i.i.i.i.i.i.i
  %.sroa.0.07.i.i.i.i.i.i.i.i = phi i64 [ %i.fp, %.lr.ph.i.i.i.i.i.i.i.i ], [ 0, %bb.bm ] ; 2 uses
  %i.fo = getelementptr inbounds nuw [80 x i8], ptr %.sroa.6.0.i.i.i.i.i, i64 %.sroa.0.07.i.i.i.i.i.i.i.i
  %i.fp = add nuw nsw i64 %.sroa.0.07.i.i.i.i.i.i.i.i, 1 ; 2 uses
  call fastcc void @"_ZN4core3ptr51drop_in_place$LT$nls..contracts..ContractConfig$GT$17hbda8b4c3bc884c64E"(ptr noalias noundef readonly align 8 dereferenceable(80) %i.fo), !noalias !70595
  %i.fq = icmp eq i64 %i.fp, %.sroa.8.0.i.i.i.i.i
  br i1 %i.fq, label %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h4d770e494fb351ceE.exit.i.i.i.i.i.i", label %.lr.ph.i.i.i.i.i.i.i.i

"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h4d770e494fb351ceE.exit.i.i.i.i.i.i": ; preds = %.lr.ph.i.i.i.i.i.i.i.i, %bb.bm
  %i.fr = icmp eq i64 %.sroa.0.0.i.i.i.i45.i, 0
  br i1 %i.fr, label %.noexc.i, label %bb.bn

bb.bn:                                            ; preds = %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h4d770e494fb351ceE.exit.i.i.i.i.i.i"
  %i.fs = mul nuw i64 %.sroa.0.0.i.i.i.i45.i, 80
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.6.0.i.i.i.i.i, i64 noundef %i.fs, i64 noundef range(i64 1, -9223372036854775807) 8) #66, !noalias !70595
  br label %.noexc.i

.noexc.i:                                         ; preds = %bb.bn, %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h4d770e494fb351ceE.exit.i.i.i.i.i.i"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !70537
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !noalias !70596
  store i64 %i.fm, ptr %i.m, align 8, !noalias !70596
  %.sroa.237.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  store ptr %.sroa.10.8.copyload6.i.i, ptr %.sroa.237.0..sroa_idx.i.i, align 8, !noalias !70596
  %.sroa.338.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  store i64 %.sroa.11.8.copyload10.i.i, ptr %.sroa.338.0..sroa_idx.i.i, align 8, !noalias !70596
  %i.ft = call fastcc noundef nonnull ptr @"_ZN6anyhow5error72_$LT$impl$u20$core..convert..From$LT$E$GT$$u20$for$u20$anyhow..Error$GT$4from17hf3ef8b45bdd1736bE"(ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.m), !noalias !70525
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !70596
  br label %_ZN3nls9contracts11LocalConfig9from_file17h4f2bb6ebc3a55e31E.exit.thread

bb.bo:                                            ; preds = %bb.ap
  %i.fu = invoke fastcc noundef nonnull ptr @"_ZN3nls9contracts11LocalConfig9from_file28_$u7b$$u7b$closure$u7d$$u7d$17h7897ee94e66a9568E"(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %0, i64 noundef %1)
          to label %bb.bp unwind label %bb.bt, !noalias !70525 ; 2 uses

bb.bp:                                            ; preds = %bb.bo
  tail call void @llvm.experimental.noalias.scope.decl(metadata !70597)
  %i.fv = icmp eq i64 %.sroa.626.0.copyload.i, 0
  br i1 %i.fv, label %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hf116ef6e218e7182E.exit.i.i.i", label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.bp, %"_ZN4core3ptr57drop_in_place$LT$nls..contracts..ContractConfigFormat$GT$17hbb8632201fc9a935E.exit.i.i.i.i.i"
  %.sroa.0.07.i.i.i.i.i = phi i64 [ %i.fx, %"_ZN4core3ptr57drop_in_place$LT$nls..contracts..ContractConfigFormat$GT$17hbb8632201fc9a935E.exit.i.i.i.i.i" ], [ 0, %bb.bp ] ; 2 uses
  %i.fw = getelementptr inbounds nuw [48 x i8], ptr %.sroa.525.0.copyload.i, i64 %.sroa.0.07.i.i.i.i.i ; 4 uses
  %i.fx = add nuw i64 %.sroa.0.07.i.i.i.i.i, 1    ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !70598)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !70599)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !70600)
  %.val.i.i.i.i.i.i.i.i = load i64, ptr %i.fw, align 8, !range !74, !alias.scope !70601, !noalias !70602, !noundef !44 ; 2 uses
  %i.fy = icmp eq i64 %.val.i.i.i.i.i.i.i.i, 0
  br i1 %i.fy, label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h24b598f56fd0df8eE.exit.i.i.i.i.i.i", label %bb.bq

bb.bq:                                            ; preds = %.lr.ph.i.i.i.i.i
  %i.fz = getelementptr inbounds nuw i8, ptr %i.fw, i64 8
  %.val1.i.i.i.i.i.i.i.i = load ptr, ptr %i.fz, align 8, !alias.scope !70601, !noalias !70602, !nonnull !44, !noundef !44
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i.i.i.i.i.i, i64 noundef %.val.i.i.i.i.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #66, !noalias !70603
  br label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h24b598f56fd0df8eE.exit.i.i.i.i.i.i"

"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h24b598f56fd0df8eE.exit.i.i.i.i.i.i": ; preds = %bb.bq, %.lr.ph.i.i.i.i.i
  %i.ga = getelementptr inbounds nuw i8, ptr %i.fw, i64 24
  %.val.i.i.i.i.i.i = load i64, ptr %i.ga, align 8, !range !74, !alias.scope !70604, !noalias !70602, !noundef !44 ; 2 uses
  %i.gb = icmp eq i64 %.val.i.i.i.i.i.i, 0
  br i1 %i.gb, label %"_ZN4core3ptr57drop_in_place$LT$nls..contracts..ContractConfigFormat$GT$17hbb8632201fc9a935E.exit.i.i.i.i.i", label %bb.br

bb.br:                                            ; preds = %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h24b598f56fd0df8eE.exit.i.i.i.i.i.i"
  %i.gc = getelementptr inbounds nuw i8, ptr %i.fw, i64 32
  %.val1.i.i.i.i.i.i = load ptr, ptr %i.gc, align 8, !alias.scope !70605, !noalias !70602, !nonnull !44, !noundef !44
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i.i.i.i, i64 noundef %.val.i.i.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #66, !noalias !70606
  br label %"_ZN4core3ptr57drop_in_place$LT$nls..contracts..ContractConfigFormat$GT$17hbb8632201fc9a935E.exit.i.i.i.i.i"

"_ZN4core3ptr57drop_in_place$LT$nls..contracts..ContractConfigFormat$GT$17hbb8632201fc9a935E.exit.i.i.i.i.i": ; preds = %bb.br, %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h24b598f56fd0df8eE.exit.i.i.i.i.i.i"
  %i.gd = icmp eq i64 %i.fx, %.sroa.626.0.copyload.i
  br i1 %i.gd, label %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hf116ef6e218e7182E.exit.i.i.i", label %.lr.ph.i.i.i.i.i

"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hf116ef6e218e7182E.exit.i.i.i": ; preds = %"_ZN4core3ptr57drop_in_place$LT$nls..contracts..ContractConfigFormat$GT$17hbb8632201fc9a935E.exit.i.i.i.i.i", %bb.bp
  %i.ge = icmp eq i64 %.sroa.024.0.copyload.i, 0
  br i1 %i.ge, label %_ZN3nls9contracts11LocalConfig9from_file17h4f2bb6ebc3a55e31E.exit.thread, label %bb.bs

bb.bs:                                            ; preds = %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hf116ef6e218e7182E.exit.i.i.i"
  %i.gf = mul nuw i64 %.sroa.024.0.copyload.i, 48
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.525.0.copyload.i, i64 noundef %i.gf, i64 noundef range(i64 1, -9223372036854775807) 8) #66, !noalias !70602
  br label %_ZN3nls9contracts11LocalConfig9from_file17h4f2bb6ebc3a55e31E.exit.thread

bb.bt:                                            ; preds = %bb.bo, %bb.ao
  %lpad.thr_comm.i = landingpad { ptr, i32 }
          cleanup
  call fastcc void @"_ZN4core3ptr54drop_in_place$LT$nls..contracts..LocalConfigFormat$GT$17h84d4a3716c3499ceE"(ptr noalias noundef align 8 dereferenceable(24) %i.y) #77, !noalias !70525
  br label %common.resume

_ZN3nls9contracts11LocalConfig9from_file17h4f2bb6ebc3a55e31E.exit.thread: ; preds = %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hf116ef6e218e7182E.exit.i.i.i", %bb.bs, %.noexc.i, %"_ZN3nls9contracts11LocalConfig9from_file28_$u7b$$u7b$closure$u7d$$u7d$17h0514039b9e68ef62E.exit.i"
  %.sroa.8.0.ph = phi ptr [ %i.dc, %"_ZN3nls9contracts11LocalConfig9from_file28_$u7b$$u7b$closure$u7d$$u7d$17h0514039b9e68ef62E.exit.i" ], [ %i.ft, %.noexc.i ], [ %i.fu, %bb.bs ], [ %i.fu, %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hf116ef6e218e7182E.exit.i.i.i" ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y), !noalias !70473
  br label %bb.dg

_ZN3nls9contracts11LocalConfig9from_file17h4f2bb6ebc3a55e31E.exit: ; preds = %"_ZN136_$LT$core..result..Result$LT$V$C$E$GT$$u20$as$u20$core..iter..traits..collect..FromIterator$LT$core..result..Result$LT$A$C$E$GT$$GT$$GT$9from_iter28_$u7b$$u7b$closure$u7d$$u7d$17hbc01fa8b84690316E.exit.i.i.i.i.i"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !70537
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y), !noalias !70473
  %i.gg = icmp eq i64 %.sroa.0.0.i.i.i.i45.i, -9223372036854775808
  br i1 %i.gg, label %bb.dg, label %bb.bv

bb.bu:                                            ; preds = %.body33
  br i1 %.sroa.03.2.lpad-body, label %.body.thread, label %common.resume

.body.thread34:                                   ; preds = %bb.bx, %bb.cc, %bb.bw, %bb.cb
  %lpad.thr_comm = landingpad { ptr, i32 }
          cleanup
  br label %.body.thread

bb.bv:                                            ; preds = %_ZN3nls9contracts11LocalConfig9from_file17h4f2bb6ebc3a55e31E.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ag)
  store i64 %.sroa.0.0.i.i.i.i45.i, ptr %i.ag, align 8
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ag, i64 8 ; 2 uses
  store ptr %.sroa.6.0.i.i.i.i.i, ptr %.sroa.8.0..sroa_idx, align 8
  %.sroa.13.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ag, i64 16 ; 2 uses
  store i64 %.sroa.8.0.i.i.i.i.i, ptr %.sroa.13.0..sroa_idx, align 8
  %i.gh = load atomic i64, ptr @_ZN3log20MAX_LOG_LEVEL_FILTER17hf1aeb8105e2d9ecfE monotonic, align 8 ; 2 uses
  %i.gi = icmp ult i64 %i.gh, 6
  call void @llvm.assume(i1 %i.gi)
  %i.gj = icmp samesign ugt i64 %i.gh, 2
  br i1 %i.gj, label %bb.bx, label %bb.bw

bb.bw:                                            ; preds = %bb.by, %bb.bv
  %i.gk = invoke { ptr, i64 } @_ZN3std4path4Path6parent17h3c6e49002294403cE(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %0, i64 noundef %1)
          to label %bb.bz unwind label %.body.thread34 ; 2 uses

bb.bx:                                            ; preds = %bb.bv
  call void @llvm.lifetime.start.p0(ptr nonnull %i.af)
  store ptr %0, ptr %i.af, align 8
  %i.gl = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  store i64 %1, ptr %i.gl, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ae)
  store ptr %i.ag, ptr %i.ae, align 8
  %.sroa.47.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  store ptr @"_ZN64_$LT$nls..contracts..LocalConfig$u20$as$u20$core..fmt..Debug$GT$3fmt17h23957b47bad3d02dE", ptr %.sroa.47.0..sroa_idx, align 8
  %i.gm = getelementptr inbounds nuw i8, ptr %i.ae, i64 16
  store ptr %i.af, ptr %i.gm, align 8
  %.sroa.411.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ae, i64 24
  store ptr @"_ZN57_$LT$std..path..Display$u20$as$u20$core..fmt..Display$GT$3fmt17hdd6e065e2a6605deE", ptr %.sroa.411.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !70607
  %i.gn = getelementptr inbounds nuw i8, ptr %i.f, i64 48
  store i64 3, ptr %i.gn, align 8, !noalias !70607
  %.sroa.431.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 56
  store ptr @1148, ptr %.sroa.431.0..sroa_idx.i.i, align 8, !noalias !70607
  %.sroa.532.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 64
  store i64 14, ptr %.sroa.532.0..sroa_idx.i.i, align 8, !noalias !70607
  %i.go = getelementptr inbounds nuw i8, ptr %i.f, i64 80
  store ptr @1147, ptr %i.go, align 8, !noalias !70607
  %.sroa.449.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 88
  store i64 2, ptr %.sroa.449.0..sroa_idx.i.i, align 8, !noalias !70607
  %.sroa.550.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 96
  store ptr %i.ae, ptr %.sroa.550.0..sroa_idx.i.i, align 8, !noalias !70607
  %.sroa.651.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 104
  store i64 2, ptr %.sroa.651.0..sroa_idx.i.i, align 8, !noalias !70607
  %.sroa.752.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 112
  store ptr null, ptr %.sroa.752.0..sroa_idx.i.i, align 8, !noalias !70607
  store i64 0, ptr %i.f, align 8, !noalias !70607
  %.sroa.462.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store ptr @1148, ptr %.sroa.462.0..sroa_idx.i.i, align 8, !noalias !70607
  %.sroa.563.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  store i64 14, ptr %.sroa.563.0..sroa_idx.i.i, align 8, !noalias !70607
  %i.gp = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  store i64 0, ptr %i.gp, align 8, !noalias !70607
  %.sroa.524.0..sroa_idx25.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 32
  store ptr @1143, ptr %.sroa.524.0..sroa_idx25.i.i, align 8, !noalias !70607
  %.sroa.524.sroa.5.0..sroa.524.0..sroa_idx25.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 40
  store i64 24, ptr %.sroa.524.sroa.5.0..sroa.524.0..sroa_idx25.sroa_idx.i.i, align 8, !noalias !70607
  %i.gq = getelementptr inbounds nuw i8, ptr %i.f, i64 72
  store i32 1, ptr %i.gq, align 8, !noalias !70607
  %i.gr = getelementptr inbounds nuw i8, ptr %i.f, i64 76
  store i32 204, ptr %i.gr, align 4, !noalias !70607
  invoke void @"_ZN61_$LT$log..__private_api..GlobalLogger$u20$as$u20$log..Log$GT$3log17h0d08e70e01426ab4E"(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.a, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(128) %i.f)
          to label %bb.by unwind label %.body.thread34

bb.by:                                            ; preds = %bb.bx
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !70607
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ae)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.af)
  br label %bb.bw

bb.bz:                                            ; preds = %bb.bw
  %i.gs = extractvalue { ptr, i64 } %i.gk, 0      ; 2 uses
  %i.gt = extractvalue { ptr, i64 } %i.gk, 1
  %.not = icmp eq ptr %i.gs, null
  br i1 %.not, label %bb.dc, label %bb.ca

bb.ca:                                            ; preds = %bb.bz
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  %i.gu = getelementptr inbounds nuw i8, ptr %.0.val, i64 16 ; 6 uses
  %i.gv = cmpxchg weak ptr %i.gu, i32 0, i32 1073741823 acquire monotonic, align 4, !noalias !70608
  %i.gw = extractvalue { i32, i1 } %i.gv, 1
  br i1 %i.gw, label %.noexc, label %bb.cb, !prof !46

bb.cb:                                            ; preds = %bb.ca
  invoke void @_ZN3std3sys4sync6rwlock5futex6RwLock15write_contended17h55a2cbc8e1b81353E(ptr noundef nonnull align 8 %i.gu)
          to label %.noexc unwind label %.body.thread34

.noexc:                                           ; preds = %bb.cb, %bb.ca
  %i.gx = load atomic i64, ptr @_ZN3std9panicking11panic_count18GLOBAL_PANIC_COUNT17h933148eac7c069a2E monotonic, align 8, !noalias !70608
  %i.gy = and i64 %i.gx, 9223372036854775807
  %i.gz = icmp eq i64 %i.gy, 0
  br i1 %i.gz, label %bb.cd, label %bb.cc, !prof !46

bb.cc:                                            ; preds = %.noexc
  %i.ha = invoke noundef zeroext i1 @_ZN3std9panicking11panic_count17is_zero_slow_path17hca8cf3adadc2c48aE()
          to label %.noexc25 unwind label %.body.thread34

.noexc25:                                         ; preds = %bb.cc
end_hunk_0
begin_hunk_1_@_ZN4core4iter6traits8iterator8Iterator7collect17h826b144d8605d39eE:bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  %.val5.i.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.l, align 8, !alias.scope !91792, !noalias !91786, !nonnull !44, !noundef !44
  %i.m = shl nuw i64 %.val4.i.i.i.i.i.i.i.i.i.i.i, 4
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val5.i.i.i.i.i.i.i.i.i.i.i, i64 noundef %i.m, i64 noundef range(i64 1, -9223372036854775807) 8) #66, !noalias !91793
  br label %"_ZN4core3ptr182drop_in_place$LT$core..option..Option$LT$core..iter..adapters..take..Take$LT$nickel_lang_vector..vector..Iter$LT$nickel_lang_core..eval..value..NickelValue$C$32_usize$GT$$GT$$GT$$GT$17hf114ef07dcd9f3adE.exit.i.i.i.i.i.i.i.i.i.i.i"

"_ZN4core3ptr182drop_in_place$LT$core..option..Option$LT$core..iter..adapters..take..Take$LT$nickel_lang_vector..vector..Iter$LT$nickel_lang_core..eval..value..NickelValue$C$32_usize$GT$$GT$$GT$$GT$17hf114ef07dcd9f3adE.exit.i.i.i.i.i.i.i.i.i.i.i": ; preds = %bb.f, %bb.e
  %i.n = getelementptr inbounds nuw i8, ptr %i.e, i64 64
  %.val.i.i.i.i5.i.i.i.i.i.i.i = load i64, ptr %i.n, align 8, !range !70, !alias.scope !91792, !noalias !91786, !noundef !44 ; 2 uses
  %switch8.i.i.i.i.i.i.i.i.i.i.i = icmp sgt i64 %.val.i.i.i.i5.i.i.i.i.i.i.i, 0
  br i1 %switch8.i.i.i.i.i.i.i.i.i.i.i, label %bb.g, label %bb.v

bb.g:                                             ; preds = %"_ZN4core3ptr182drop_in_place$LT$core..option..Option$LT$core..iter..adapters..take..Take$LT$nickel_lang_vector..vector..Iter$LT$nickel_lang_core..eval..value..NickelValue$C$32_usize$GT$$GT$$GT$$GT$17hf114ef07dcd9f3adE.exit.i.i.i.i.i.i.i.i.i.i.i"
  %i.o = getelementptr inbounds nuw i8, ptr %i.e, i64 72
  %.val1.i.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.o, align 8, !alias.scope !91792, !noalias !91786, !nonnull !44, !noundef !44
  %i.p = shl nuw i64 %.val.i.i.i.i5.i.i.i.i.i.i.i, 4
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i.i.i.i.i.i.i.i.i, i64 noundef %i.p, i64 noundef range(i64 1, -9223372036854775807) 8) #66, !noalias !91793
  br label %bb.v

bb.h:                                             ; preds = %bb.j
  %i.q = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.r = icmp eq i64 %i.h, 0
  br i1 %i.r, label %bb.u, label %bb.i

bb.i:                                             ; preds = %bb.h
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.5.0.copyload.i.i.i.i.i.i.i) ]
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.5.0.copyload.i.i.i.i.i.i.i, i64 noundef %i.h, i64 noundef range(i64 1, -9223372036854775807) 1) #66, !noalias !91794
  br label %bb.u

bb.j:                                             ; preds = %bb.d
  invoke void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef 8, i64 96, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @1283) #75
          to label %.noexc.i.i.i.i.i.i.i unwind label %bb.h, !noalias !91786

.noexc.i.i.i.i.i.i.i:                             ; preds = %bb.j
  unreachable

bb.k:                                             ; preds = %bb.d
  store i64 %i.h, ptr %i.i, align 8, !noalias !91786
  %.sroa.410.0..sroa_idx.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  store ptr %.sroa.5.0.copyload.i.i.i.i.i.i.i, ptr %.sroa.410.0..sroa_idx.i.i.i.i.i.i.i, align 8, !noalias !91786
  %.sroa.511.0..sroa_idx.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  store i64 %.sroa.6.0.copyload.i.i.i.i.i.i.i, ptr %.sroa.511.0..sroa_idx.i.i.i.i.i.i.i, align 8, !noalias !91786
  store i64 4, ptr %i.d, align 8, !noalias !91785
  %.sroa.4.0..sroa_idx.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 3 uses
  store ptr %i.i, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i.i.i, align 8, !noalias !91785
  %.sroa.6.0..sroa_idx.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 16 ; 2 uses
  store i64 1, ptr %.sroa.6.0..sroa_idx.i.i.i.i.i.i.i, align 8, !noalias !91785
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !91785
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !91785
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(152) %i.b, ptr noundef nonnull align 8 dereferenceable(152) %i.e, i64 152, i1 false), !noalias !91786
  call void @llvm.experimental.noalias.scope.decl(metadata !91795)
  call void @llvm.experimental.noalias.scope.decl(metadata !91796)
  call void @llvm.experimental.noalias.scope.decl(metadata !91797)
  call void @llvm.experimental.noalias.scope.decl(metadata !91798)
  %.sroa.5.0..sroa_idx.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.sroa.6.0..sroa_idx.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  br label %bb.l

bb.l:                                             ; preds = %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17haa24c2994780394fE.exit.i.i.i.i.i.i.i.i.i", %bb.k
  %i.s = phi ptr [ %i.ae, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17haa24c2994780394fE.exit.i.i.i.i.i.i.i.i.i" ], [ %i.i, %bb.k ]
  %.sroa.8.0.copyload17.i.i = phi i64 [ %i.ag, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17haa24c2994780394fE.exit.i.i.i.i.i.i.i.i.i" ], [ 1, %bb.k ] ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !91799
  invoke fastcc void @"_ZN106_$LT$core..iter..adapters..GenericShunt$LT$I$C$R$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h8c77c51f5741327cE"(ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(152) %i.b)
          to label %bb.n unwind label %bb.m, !noalias !91800

"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h24b598f56fd0df8eE.exit.i.i.i.i.i.i.i.i.i": ; preds = %bb.t, %bb.s, %bb.m
  %.pn.i.i.i.i.i.i.i.i.i = phi { ptr, i32 } [ %i.t, %bb.m ], [ %i.ah, %bb.s ], [ %i.ah, %bb.t ]
  call fastcc void @"_ZN4core3ptr830drop_in_place$LT$core..iter..adapters..GenericShunt$LT$core..iter..adapters..map..Map$LT$core..iter..adapters..flatten..FlatMap$LT$core..option..IntoIter$LT$$RF$nickel_lang_core..eval..value..ArrayData$GT$$C$core..iter..adapters..take..Take$LT$nickel_lang_vector..vector..Iter$LT$nickel_lang_core..eval..value..NickelValue$C$32_usize$GT$$GT$$C$nickel_lang_core..eval..value..Container$LT$$RF$nickel_lang_core..eval..value..ArrayData$GT$..iter..$u7b$$u7b$closure$u7d$$u7d$$GT$$C$nickel_lang_core..eval..operation..$LT$impl$u20$nickel_lang_core..eval..VirtualMachine$LT$nickel_lang_core..cache..CacheHub$C$nickel_lang_core..eval..cache..lazy..CBNCache$GT$$GT$..eval_op2..$u7b$$u7b$closure$u7d$$u7d$$GT$$C$core..result..Result$LT$core..convert..Infallible$C$alloc..boxed..Box$LT$nickel_lang_core..error..EvalErrorKind$GT$$GT$$GT$$GT$17h93272a7d2e91be51E"(ptr noalias noundef nonnull align 8 dereferenceable(152) %i.b) #77, !noalias !91800
  call fastcc void @"_ZN4core3ptr65drop_in_place$LT$alloc..vec..Vec$LT$alloc..string..String$GT$$GT$17h7f234fa731c4181cE"(ptr noalias noundef align 8 dereferenceable(24) %i.d) #77, !noalias !91786
  br label %.body.i.i

bb.m:                                             ; preds = %bb.l
  %i.t = landingpad { ptr, i32 }
          cleanup
  br label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h24b598f56fd0df8eE.exit.i.i.i.i.i.i.i.i.i"

bb.n:                                             ; preds = %bb.l
  %i.u = load i64, ptr %i.a, align 8, !range !70, !noalias !91799, !noundef !44 ; 4 uses
  %.not.i.i.i.i.i.i.i.i.i = icmp eq i64 %i.u, -9223372036854775808
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %.sroa.5.0.copyload.i.i.i.i.i.i.i.i.i = load ptr, ptr %.sroa.5.0..sroa_idx.i.i.i.i.i.i.i.i.i, align 8, !noalias !91799 ; 3 uses
  %.sroa.6.0.copyload.i.i.i.i.i.i.i.i.i = load i64, ptr %.sroa.6.0..sroa_idx.i.i.i.i.i.i.i.i.i, align 8, !noalias !91799
  %i.v = icmp samesign ult i64 %.sroa.8.0.copyload17.i.i, 384307168202282326
  call void @llvm.assume(i1 %i.v)
  %i.w = load i64, ptr %i.d, align 8, !range !74, !alias.scope !91801, !noalias !91802, !noundef !44
  %i.x = icmp eq i64 %.sroa.8.0.copyload17.i.i, %i.w
  br i1 %i.x, label %"_ZN106_$LT$core..iter..adapters..GenericShunt$LT$I$C$R$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$9size_hint17h72719c93414e1eb7E.exit.i.i.i.i.i.i.i.i.i", label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17haa24c2994780394fE.exit.i.i.i.i.i.i.i.i.i"

bb.p:                                             ; preds = %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !91799
  call void @llvm.experimental.noalias.scope.decl(metadata !91803)
  call void @llvm.experimental.noalias.scope.decl(metadata !91804)
  call void @llvm.experimental.noalias.scope.decl(metadata !91805)
  call void @llvm.experimental.noalias.scope.decl(metadata !91806)
  %i.y = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %.val4.i.i.i.i.i.i.i.i.i.i.i.i.i = load i64, ptr %i.y, align 8, !range !70, !alias.scope !91807, !noalias !91808, !noundef !44 ; 2 uses
  %switch.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp sgt i64 %.val4.i.i.i.i.i.i.i.i.i.i.i.i.i, 0
  br i1 %switch.i.i.i.i.i.i.i.i.i.i.i.i.i, label %bb.q, label %"_ZN4core3ptr182drop_in_place$LT$core..option..Option$LT$core..iter..adapters..take..Take$LT$nickel_lang_vector..vector..Iter$LT$nickel_lang_core..eval..value..NickelValue$C$32_usize$GT$$GT$$GT$$GT$17hf114ef07dcd9f3adE.exit.i.i.i.i.i.i.i.i.i.i.i.i.i"

bb.q:                                             ; preds = %bb.p
  %i.z = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %.val5.i.i.i.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.z, align 8, !alias.scope !91807, !noalias !91808, !nonnull !44, !noundef !44
  %i.aa = shl nuw i64 %.val4.i.i.i.i.i.i.i.i.i.i.i.i.i, 4
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val5.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 noundef %i.aa, i64 noundef range(i64 1, -9223372036854775807) 8) #66, !noalias !91809
  br label %"_ZN4core3ptr182drop_in_place$LT$core..option..Option$LT$core..iter..adapters..take..Take$LT$nickel_lang_vector..vector..Iter$LT$nickel_lang_core..eval..value..NickelValue$C$32_usize$GT$$GT$$GT$$GT$17hf114ef07dcd9f3adE.exit.i.i.i.i.i.i.i.i.i.i.i.i.i"

"_ZN4core3ptr182drop_in_place$LT$core..option..Option$LT$core..iter..adapters..take..Take$LT$nickel_lang_vector..vector..Iter$LT$nickel_lang_core..eval..value..NickelValue$C$32_usize$GT$$GT$$GT$$GT$17hf114ef07dcd9f3adE.exit.i.i.i.i.i.i.i.i.i.i.i.i.i": ; preds = %bb.q, %bb.p
  %i.ab = getelementptr inbounds nuw i8, ptr %i.b, i64 64
  %.val.i.i.i.i.i.i.i.i.i.i.i.i.i = load i64, ptr %i.ab, align 8, !range !70, !alias.scope !91807, !noalias !91808, !noundef !44 ; 2 uses
  %switch8.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp sgt i64 %.val.i.i.i.i.i.i.i.i.i.i.i.i.i, 0
  br i1 %switch8.i.i.i.i.i.i.i.i.i.i.i.i.i, label %bb.r, label %"_ZN97_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$alloc..vec..spec_extend..SpecExtend$LT$T$C$I$GT$$GT$11spec_extend17h327599d7cfc16f0dE.exit.i.i.i.i.i.i.i"

bb.r:                                             ; preds = %"_ZN4core3ptr182drop_in_place$LT$core..option..Option$LT$core..iter..adapters..take..Take$LT$nickel_lang_vector..vector..Iter$LT$nickel_lang_core..eval..value..NickelValue$C$32_usize$GT$$GT$$GT$$GT$17hf114ef07dcd9f3adE.exit.i.i.i.i.i.i.i.i.i.i.i.i.i"
  %i.ac = getelementptr inbounds nuw i8, ptr %i.b, i64 72
  %.val1.i.i.i.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.ac, align 8, !alias.scope !91807, !noalias !91808, !nonnull !44, !noundef !44
  %i.ad = shl nuw i64 %.val.i.i.i.i.i.i.i.i.i.i.i.i.i, 4
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 noundef %i.ad, i64 noundef range(i64 1, -9223372036854775807) 8) #66, !noalias !91809
  br label %"_ZN97_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$alloc..vec..spec_extend..SpecExtend$LT$T$C$I$GT$$GT$11spec_extend17h327599d7cfc16f0dE.exit.i.i.i.i.i.i.i"

"_ZN106_$LT$core..iter..adapters..GenericShunt$LT$I$C$R$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$9size_hint17h72719c93414e1eb7E.exit.i.i.i.i.i.i.i.i.i": ; preds = %bb.o
  invoke fastcc void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$7reserve21do_reserve_and_handle17hf28d563308425255E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.d, i64 noundef %.sroa.8.0.copyload17.i.i, i64 noundef 1, i64 noundef 8, i64 noundef 24)
          to label %"_ZN106_$LT$core..iter..adapters..GenericShunt$LT$I$C$R$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$9size_hint17h72719c93414e1eb7E.exit.i.i._ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17haa24c2994780394fE.exit.i.i_crit_edge.i.i.i.i.i.i.i" unwind label %bb.s, !noalias !91786

"_ZN106_$LT$core..iter..adapters..GenericShunt$LT$I$C$R$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$9size_hint17h72719c93414e1eb7E.exit.i.i._ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17haa24c2994780394fE.exit.i.i_crit_edge.i.i.i.i.i.i.i": ; preds = %"_ZN106_$LT$core..iter..adapters..GenericShunt$LT$I$C$R$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$9size_hint17h72719c93414e1eb7E.exit.i.i.i.i.i.i.i.i.i"
  %.pre.i.i.i.i.i.i.i = load ptr, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i.i.i, align 8, !alias.scope !91801, !noalias !91802
  br label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17haa24c2994780394fE.exit.i.i.i.i.i.i.i.i.i"

"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17haa24c2994780394fE.exit.i.i.i.i.i.i.i.i.i": ; preds = %"_ZN106_$LT$core..iter..adapters..GenericShunt$LT$I$C$R$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$9size_hint17h72719c93414e1eb7E.exit.i.i._ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17haa24c2994780394fE.exit.i.i_crit_edge.i.i.i.i.i.i.i", %bb.o
  %i.ae = phi ptr [ %.pre.i.i.i.i.i.i.i, %"_ZN106_$LT$core..iter..adapters..GenericShunt$LT$I$C$R$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$9size_hint17h72719c93414e1eb7E.exit.i.i._ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17haa24c2994780394fE.exit.i.i_crit_edge.i.i.i.i.i.i.i" ], [ %i.s, %bb.o ] ; 2 uses
  %i.af = getelementptr inbounds nuw [24 x i8], ptr %i.ae, i64 %.sroa.8.0.copyload17.i.i ; 3 uses
  store i64 %i.u, ptr %i.af, align 8, !noalias !91800
  %.sroa.49.0..sroa_idx.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  store ptr %.sroa.5.0.copyload.i.i.i.i.i.i.i.i.i, ptr %.sroa.49.0..sroa_idx.i.i.i.i.i.i.i.i.i, align 8, !noalias !91800
  %.sroa.510.0..sroa_idx.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.af, i64 16
  store i64 %.sroa.6.0.copyload.i.i.i.i.i.i.i.i.i, ptr %.sroa.510.0..sroa_idx.i.i.i.i.i.i.i.i.i, align 8, !noalias !91800
  %i.ag = add nuw nsw i64 %.sroa.8.0.copyload17.i.i, 1 ; 2 uses
  store i64 %i.ag, ptr %.sroa.6.0..sroa_idx.i.i.i.i.i.i.i, align 8, !alias.scope !91801, !noalias !91802
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !91799
  br label %bb.l

bb.s:                                             ; preds = %"_ZN106_$LT$core..iter..adapters..GenericShunt$LT$I$C$R$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$9size_hint17h72719c93414e1eb7E.exit.i.i.i.i.i.i.i.i.i"
  %i.ah = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ai = icmp eq i64 %i.u, 0
  br i1 %i.ai, label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h24b598f56fd0df8eE.exit.i.i.i.i.i.i.i.i.i", label %bb.t

bb.t:                                             ; preds = %bb.s
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.5.0.copyload.i.i.i.i.i.i.i.i.i) ]
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.5.0.copyload.i.i.i.i.i.i.i.i.i, i64 noundef %i.u, i64 noundef range(i64 1, -9223372036854775807) 1) #66, !noalias !91810
  br label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h24b598f56fd0df8eE.exit.i.i.i.i.i.i.i.i.i"

"_ZN97_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$alloc..vec..spec_extend..SpecExtend$LT$T$C$I$GT$$GT$11spec_extend17h327599d7cfc16f0dE.exit.i.i.i.i.i.i.i": ; preds = %bb.r, %"_ZN4core3ptr182drop_in_place$LT$core..option..Option$LT$core..iter..adapters..take..Take$LT$nickel_lang_vector..vector..Iter$LT$nickel_lang_core..eval..value..NickelValue$C$32_usize$GT$$GT$$GT$$GT$17hf114ef07dcd9f3adE.exit.i.i.i.i.i.i.i.i.i.i.i.i.i"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !91785
  %.sroa.0.0.copyload13.i.i = load i64, ptr %i.d, align 8, !noalias !91811
  %.sroa.6.0.copyload15.i.i = load ptr, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i.i.i, align 8, !noalias !91811
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !91785
  br label %bb.v

bb.u:                                             ; preds = %bb.i, %bb.h, %bb.b
  %.pn.ph.i.i.i.i.i.i.i = phi { ptr, i32 } [ %i.g, %bb.b ], [ %i.q, %bb.h ], [ %i.q, %bb.i ]
  call fastcc void @"_ZN4core3ptr830drop_in_place$LT$core..iter..adapters..GenericShunt$LT$core..iter..adapters..map..Map$LT$core..iter..adapters..flatten..FlatMap$LT$core..option..IntoIter$LT$$RF$nickel_lang_core..eval..value..ArrayData$GT$$C$core..iter..adapters..take..Take$LT$nickel_lang_vector..vector..Iter$LT$nickel_lang_core..eval..value..NickelValue$C$32_usize$GT$$GT$$C$nickel_lang_core..eval..value..Container$LT$$RF$nickel_lang_core..eval..value..ArrayData$GT$..iter..$u7b$$u7b$closure$u7d$$u7d$$GT$$C$nickel_lang_core..eval..operation..$LT$impl$u20$nickel_lang_core..eval..VirtualMachine$LT$nickel_lang_core..cache..CacheHub$C$nickel_lang_core..eval..cache..lazy..CBNCache$GT$$GT$..eval_op2..$u7b$$u7b$closure$u7d$$u7d$$GT$$C$core..result..Result$LT$core..convert..Infallible$C$alloc..boxed..Box$LT$nickel_lang_core..error..EvalErrorKind$GT$$GT$$GT$$GT$17h93272a7d2e91be51E"(ptr noalias noundef nonnull align 8 dereferenceable(152) %i.e) #77, !noalias !91786
  br label %.body.i.i

.body.i.i:                                        ; preds = %bb.u, %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h24b598f56fd0df8eE.exit.i.i.i.i.i.i.i.i.i"
  %.pn.i.i = phi { ptr, i32 } [ %.pn.ph.i.i.i.i.i.i.i, %bb.u ], [ %.pn.i.i.i.i.i.i.i.i.i, %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h24b598f56fd0df8eE.exit.i.i.i.i.i.i.i.i.i" ]
  %i.aj = load ptr, ptr %i.f, align 8, !noalias !91778, !align !50, !noundef !44 ; 2 uses
  %.not.i.i = icmp eq ptr %i.aj, null
  br i1 %.not.i.i, label %.body.thread.i.i, label %bb.ab

bb.v:                                             ; preds = %"_ZN97_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$alloc..vec..spec_extend..SpecExtend$LT$T$C$I$GT$$GT$11spec_extend17h327599d7cfc16f0dE.exit.i.i.i.i.i.i.i", %bb.g, %"_ZN4core3ptr182drop_in_place$LT$core..option..Option$LT$core..iter..adapters..take..Take$LT$nickel_lang_vector..vector..Iter$LT$nickel_lang_core..eval..value..NickelValue$C$32_usize$GT$$GT$$GT$$GT$17hf114ef07dcd9f3adE.exit.i.i.i.i.i.i.i.i.i.i.i"
  %.sroa.8.0.i.i = phi i64 [ 0, %bb.g ], [ 0, %"_ZN4core3ptr182drop_in_place$LT$core..option..Option$LT$core..iter..adapters..take..Take$LT$nickel_lang_vector..vector..Iter$LT$nickel_lang_core..eval..value..NickelValue$C$32_usize$GT$$GT$$GT$$GT$17hf114ef07dcd9f3adE.exit.i.i.i.i.i.i.i.i.i.i.i" ], [ %.sroa.8.0.copyload17.i.i, %"_ZN97_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$alloc..vec..spec_extend..SpecExtend$LT$T$C$I$GT$$GT$11spec_extend17h327599d7cfc16f0dE.exit.i.i.i.i.i.i.i" ] ; 3 uses
  %.sroa.6.0.i.i = phi ptr [ inttoptr (i64 8 to ptr), %bb.g ], [ inttoptr (i64 8 to ptr), %"_ZN4core3ptr182drop_in_place$LT$core..option..Option$LT$core..iter..adapters..take..Take$LT$nickel_lang_vector..vector..Iter$LT$nickel_lang_core..eval..value..NickelValue$C$32_usize$GT$$GT$$GT$$GT$17hf114ef07dcd9f3adE.exit.i.i.i.i.i.i.i.i.i.i.i" ], [ %.sroa.6.0.copyload15.i.i, %"_ZN97_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$alloc..vec..spec_extend..SpecExtend$LT$T$C$I$GT$$GT$11spec_extend17h327599d7cfc16f0dE.exit.i.i.i.i.i.i.i" ] ; 3 uses
  %.sroa.0.0.i.i = phi i64 [ 0, %bb.g ], [ 0, %"_ZN4core3ptr182drop_in_place$LT$core..option..Option$LT$core..iter..adapters..take..Take$LT$nickel_lang_vector..vector..Iter$LT$nickel_lang_core..eval..value..NickelValue$C$32_usize$GT$$GT$$GT$$GT$17hf114ef07dcd9f3adE.exit.i.i.i.i.i.i.i.i.i.i.i" ], [ %.sroa.0.0.copyload13.i.i, %"_ZN97_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$alloc..vec..spec_extend..SpecExtend$LT$T$C$I$GT$$GT$11spec_extend17h327599d7cfc16f0dE.exit.i.i.i.i.i.i.i" ] ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !91779
  %i.ak = load ptr, ptr %i.f, align 8, !noalias !91778, !align !50, !noundef !44 ; 2 uses
  %.not.not.i.i = icmp eq ptr %i.ak, null
  br i1 %.not.not.i.i, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  store i64 %.sroa.0.0.i.i, ptr %0, align 8, !alias.scope !91812, !noalias !91813
  %.sroa.4.0..sroa_idx19.i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.6.0.i.i, ptr %.sroa.4.0..sroa_idx19.i.i, align 8, !alias.scope !91812, !noalias !91813
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.8.0.i.i, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !alias.scope !91812, !noalias !91813
  br label %"_ZN136_$LT$core..result..Result$LT$V$C$E$GT$$u20$as$u20$core..iter..traits..collect..FromIterator$LT$core..result..Result$LT$A$C$E$GT$$GT$$GT$9from_iter17hf0eb976204a6e966E.exit"

bb.x:                                             ; preds = %bb.v
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.ak, ptr %i.al, align 8, !alias.scope !91814, !noalias !91815
  store i64 -9223372036854775808, ptr %0, align 8, !alias.scope !91814, !noalias !91815
  call void @llvm.experimental.noalias.scope.decl(metadata !91816)
  %i.am = icmp eq i64 %.sroa.8.0.i.i, 0
  br i1 %i.am, label %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h42cd9ce836496da3E.exit.i.i.i", label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.x, %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h24b598f56fd0df8eE.exit.i.i.i.i.i"
  %.sroa.0.010.i.i.i.i.i = phi i64 [ %i.ao, %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h24b598f56fd0df8eE.exit.i.i.i.i.i" ], [ 0, %bb.x ] ; 2 uses
  %i.an = getelementptr inbounds nuw [24 x i8], ptr %.sroa.6.0.i.i, i64 %.sroa.0.010.i.i.i.i.i ; 2 uses
  %i.ao = add nuw nsw i64 %.sroa.0.010.i.i.i.i.i, 1 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !91817)
  call void @llvm.experimental.noalias.scope.decl(metadata !91818)
  %.val.i.i.i.i.i.i.i = load i64, ptr %i.an, align 8, !range !74, !alias.scope !91819, !noalias !91820, !noundef !44 ; 2 uses
  %i.ap = icmp eq i64 %.val.i.i.i.i.i.i.i, 0
  br i1 %i.ap, label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h24b598f56fd0df8eE.exit.i.i.i.i.i", label %bb.y

bb.y:                                             ; preds = %.lr.ph.i.i.i.i.i
  %i.aq = getelementptr inbounds nuw i8, ptr %i.an, i64 8
  %.val1.i.i.i.i.i.i.i = load ptr, ptr %i.aq, align 8, !alias.scope !91819, !noalias !91820, !nonnull !44, !noundef !44
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i.i.i.i.i, i64 noundef %.val.i.i.i.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #66, !noalias !91821
  br label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h24b598f56fd0df8eE.exit.i.i.i.i.i"

"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h24b598f56fd0df8eE.exit.i.i.i.i.i": ; preds = %bb.y, %.lr.ph.i.i.i.i.i
  %i.ar = icmp eq i64 %i.ao, %.sroa.8.0.i.i
  br i1 %i.ar, label %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h42cd9ce836496da3E.exit.i.i.i", label %.lr.ph.i.i.i.i.i

"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h42cd9ce836496da3E.exit.i.i.i": ; preds = %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h24b598f56fd0df8eE.exit.i.i.i.i.i", %bb.x
  %i.as = icmp eq i64 %.sroa.0.0.i.i, 0
  br i1 %i.as, label %"_ZN136_$LT$core..result..Result$LT$V$C$E$GT$$u20$as$u20$core..iter..traits..collect..FromIterator$LT$core..result..Result$LT$A$C$E$GT$$GT$$GT$9from_iter17hf0eb976204a6e966E.exit", label %bb.z

bb.z:                                             ; preds = %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h42cd9ce836496da3E.exit.i.i.i"
  %i.at = mul nuw i64 %.sroa.0.0.i.i, 24
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.6.0.i.i, i64 noundef %i.at, i64 noundef range(i64 1, -9223372036854775807) 8) #66, !noalias !91820
  br label %"_ZN136_$LT$core..result..Result$LT$V$C$E$GT$$u20$as$u20$core..iter..traits..collect..FromIterator$LT$core..result..Result$LT$A$C$E$GT$$GT$$GT$9from_iter17hf0eb976204a6e966E.exit"

bb.aa:                                            ; preds = %bb.ab
  %i.au = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #76, !noalias !91778
  unreachable

.body.thread.i.i:                                 ; preds = %bb.ab, %.body.i.i
  resume { ptr, i32 } %.pn.i.i

bb.ab:                                            ; preds = %.body.i.i
  invoke fastcc void @"_ZN4core3ptr140drop_in_place$LT$core..result..Result$LT$core..convert..Infallible$C$alloc..boxed..Box$LT$nickel_lang_core..error..EvalErrorKind$GT$$GT$$GT$17h54e53be8f62a1db8E"(ptr %i.aj) #77
          to label %.body.thread.i.i unwind label %bb.aa, !noalias !91778

"_ZN136_$LT$core..result..Result$LT$V$C$E$GT$$u20$as$u20$core..iter..traits..collect..FromIterator$LT$core..result..Result$LT$A$C$E$GT$$GT$$GT$9from_iter17hf0eb976204a6e966E.exit": ; preds = %bb.w, %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h42cd9ce836496da3E.exit.i.i.i", %bb.z
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !91778
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_ZN4core4iter6traits8iterator8Iterator7collect17h83b82f8f7a6979dcE(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(32) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 7 uses
  %i.b = alloca [48 x i8], align 8                ; 7 uses
  %i.c = alloca [48 x i8], align 8                ; 7 uses
  %i.d = alloca [296 x i8], align 8               ; 7 uses
  %i.e = alloca [48 x i8], align 8                ; 17 uses
  %i.f = alloca [24 x i8], align 8                ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !91895
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 8 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  tail call void @llvm.experimental.noalias.scope.decl(metadata !91896)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(17) %i.f, i8 0, i64 17, i1 false), !noalias !91895
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !91897
  tail call void @llvm.experimental.noalias.scope.decl(metadata !91898)
  %i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.i, ptr noundef nonnull readonly align 8 dereferenceable(32) %1, i64 32, i1 false), !alias.scope !91899, !noalias !91900
  store i64 0, ptr %i.e, align 8, !alias.scope !91901, !noalias !91902
  tail call void @llvm.experimental.noalias.scope.decl(metadata !91903)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !91904)
  %i.j = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 6 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !91905)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !91906)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !91907)
  %i.k = getelementptr inbounds nuw i8, ptr %i.e, i64 40 ; 3 uses
  %i.l = load ptr, ptr %i.k, align 8, !alias.scope !91908, !noalias !91909, !nonnull !44, !noundef !44
  %i.m = getelementptr inbounds nuw i8, ptr %i.e, i64 24 ; 6 uses
  %i.n = load ptr, ptr %i.m, align 8, !alias.scope !91908, !noalias !91909, !nonnull !44, !noundef !44 ; 5 uses
  %i.o = icmp eq ptr %i.n, %i.l
  br i1 %i.o, label %.thread.i.i, label %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hea273651768ed231E.exit.i.i.i.i.i"

"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hea273651768ed231E.exit.i.i.i.i.i": ; preds = %bb.a
  %i.p = getelementptr inbounds nuw i8, ptr %i.n, i64 24
  store ptr %i.p, ptr %i.m, align 8, !alias.scope !91908, !noalias !91909
  %.sroa.0.0.copyload1.i.i.i.i.i = load i64, ptr %i.n, align 8, !noalias !91910 ; 3 uses
  %.sroa.6.sroa.4.0..sroa.6.0..sroa_idx2.sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  %.sroa.6.sroa.4.0.copyload.i.i.i.i.i = load i64, ptr %.sroa.6.sroa.4.0..sroa.6.0..sroa_idx2.sroa_idx.i.i.i.i.i, align 8, !noalias !91910
  %.not.i.i.i.i.i = icmp eq i64 %.sroa.0.0.copyload1.i.i.i.i.i, -9223372036854775807
  br i1 %.not.i.i.i.i.i, label %.thread.i.i, label %bb.b

bb.b:                                             ; preds = %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hea273651768ed231E.exit.i.i.i.i.i"
  %.sroa.6.0..sroa_idx2.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %.sroa.6.sroa.0.0.copyload.i.i.i.i.i = load ptr, ptr %.sroa.6.0..sroa_idx2.i.i.i.i.i, align 8, !noalias !91910
  %.not.i.i.i.i.i.i = icmp eq i64 %.sroa.0.0.copyload1.i.i.i.i.i, -9223372036854775808 ; 3 uses
  %.sroa.04.0.i.i.i.i.i.i = select i1 %.not.i.i.i.i.i.i, i64 0, i64 %.sroa.0.0.copyload1.i.i.i.i.i ; 3 uses
  %.sroa.56.0.i.i.i.i.i.i = select i1 %.not.i.i.i.i.i.i, ptr inttoptr (i64 1 to ptr), ptr %.sroa.6.sroa.0.0.copyload.i.i.i.i.i ; 3 uses
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #66, !noalias !91911
  %i.q = tail call noundef align 8 dereferenceable_or_null(40) ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef 40, i64 noundef 8) #66, !noalias !91911 ; 7 uses
  %i.r = icmp eq ptr %i.q, null
  br i1 %i.r, label %bb.e, label %bb.g, !prof !49

bb.c:                                             ; preds = %bb.e
  %i.s = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.t = icmp eq i64 %.sroa.04.0.i.i.i.i.i.i, 0
  br i1 %i.t, label %.body.i.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.56.0.i.i.i.i.i.i) ]
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.56.0.i.i.i.i.i.i, i64 noundef %.sroa.04.0.i.i.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #66, !noalias !91912
  br label %.body.i.i

bb.e:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !91913
  store ptr @363, ptr %i.c, align 8, !noalias !91913
  %i.u = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store i64 1, ptr %i.u, align 8, !noalias !91913
  %i.v = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  store ptr null, ptr %i.v, align 8, !noalias !91913
  %i.w = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store ptr inttoptr (i64 8 to ptr), ptr %i.w, align 8, !noalias !91913
  %i.x = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  store i64 0, ptr %i.x, align 8, !noalias !91913
  invoke void @_ZN4core9panicking9panic_fmt17h92c8e5abe71dd8d1E(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.c, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @364) #75
          to label %bb.f unwind label %bb.c, !noalias !91911

bb.f:                                             ; preds = %bb.e
  unreachable

.body.i.i:                                        ; preds = %bb.af, %bb.ae, %bb.o, %bb.n, %bb.i, %.loopexit.split-lp.i.i, %.loopexit.i.i, %bb.d, %bb.c
  %.pn.i.i = phi { ptr, i32 } [ %lpad.loopexit.split-lp.i.i, %.loopexit.split-lp.i.i ], [ %i.ao, %bb.n ], [ %i.s, %bb.c ], [ %i.s, %bb.d ], [ %i.ae, %bb.i ], [ %i.by, %bb.ae ], [ %i.ao, %bb.o ], [ %i.by, %bb.af ], [ %lpad.loopexit.i.i, %.loopexit.i.i ]
  invoke fastcc void @"_ZN4core3ptr439drop_in_place$LT$core..iter..adapters..peekable..Peekable$LT$core..iter..adapters..map..Map$LT$alloc..vec..into_iter..IntoIter$LT$core..option..Option$LT$nickel_lang_core..term..string..NickelString$GT$$GT$$C$nickel_lang_core..eval..operation..$LT$impl$u20$nickel_lang_core..eval..VirtualMachine$LT$nickel_lang_core..cache..CacheHub$C$nickel_lang_core..eval..cache..lazy..CBNCache$GT$$GT$..eval_op1..$u7b$$u7b$closure$u7d$$u7d$$GT$$GT$$GT$17h78059e201a13cbd1E"(ptr noalias noundef align 8 dereferenceable(48) %i.e) #77
          to label %.body.i unwind label %bb.ak, !noalias !91914

.loopexit.i.i:                                    ; preds = %bb.aj, %bb.z, %bb.y, %bb.u
  %lpad.loopexit.i.i = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i

.loopexit.split-lp.i.i:                           ; preds = %bb.v
  %lpad.loopexit.split-lp.i.i = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i

.thread.i.i:                                      ; preds = %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hea273651768ed231E.exit.i.i.i.i.i", %bb.a
  store i64 1, ptr %i.e, align 8, !alias.scope !91903, !noalias !91915
  store ptr null, ptr %i.j, align 8, !alias.scope !91903, !noalias !91915
  br label %.preheader

bb.g:                                             ; preds = %bb.b
  %.sroa.6.0.i.i.i.i.i.i = select i1 %.not.i.i.i.i.i.i, i64 0, i64 %.sroa.6.sroa.4.0.copyload.i.i.i.i.i
  store i64 216172782113783809, ptr %i.q, align 8, !noalias !91911
  %i.y = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  store i32 -1, ptr %i.y, align 8, !noalias !91911
  %i.z = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  store i64 %.sroa.04.0.i.i.i.i.i.i, ptr %i.z, align 8, !noalias !91916
  %.sroa.5.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.q, i64 24
  store ptr %.sroa.56.0.i.i.i.i.i.i, ptr %.sroa.5.0..sroa_idx.i.i.i.i.i.i, align 8, !noalias !91916
  %.sroa.7.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.q, i64 32
  store i64 %.sroa.6.0.i.i.i.i.i.i, ptr %.sroa.7.0..sroa_idx.i.i.i.i.i.i, align 8, !noalias !91916
  store i64 1, ptr %i.e, align 8, !alias.scope !91903, !noalias !91915
  store ptr %i.q, ptr %i.j, align 8, !alias.scope !91903, !noalias !91915
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !91897
  store i64 1, ptr %i.d, align 8, !noalias !91897
  %i.aa = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store i64 1, ptr %i.aa, align 8, !noalias !91897
  %i.ab = getelementptr inbounds nuw i8, ptr %i.d, i64 16 ; 2 uses
  store i64 0, ptr %i.ab, align 8, !noalias !91897
  %.sroa.4.sroa.4.0..sroa.4.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 280
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.4.sroa.4.0..sroa.4.0..sroa_idx.sroa_idx.i.i, i8 0, i64 16, i1 false), !noalias !91897
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #66, !noalias !91917
  %i.ac = tail call noundef align 8 dereferenceable_or_null(296) ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef 296, i64 noundef range(i64 1, -9223372036854775807) 8) #66, !noalias !91917 ; 3 uses
  %i.ad = icmp eq ptr %i.ac, null
  br i1 %i.ad, label %bb.h, label %"_ZN4core3ptr163drop_in_place$LT$core..option..Option$LT$alloc..rc..Rc$LT$nickel_lang_vector..vector..Node$LT$nickel_lang_core..eval..value..NickelValue$C$32_usize$GT$$GT$$GT$$GT$17h995816004d9ccde7E.exit.i.i", !prof !47

bb.h:                                             ; preds = %bb.g
  invoke void @_ZN5alloc5alloc18handle_alloc_error17h8f86e24af4223f3dE(i64 noundef 8, i64 noundef 296) #75
          to label %.noexc.i.i unwind label %bb.i, !noalias !91914

.noexc.i.i:                                       ; preds = %bb.h
  unreachable

bb.i:                                             ; preds = %bb.h
  %i.ae = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr114drop_in_place$LT$nickel_lang_vector..vector..Node$LT$nickel_lang_core..eval..value..NickelValue$C$32_usize$GT$$GT$17h950ffcace6aea9cdE"(ptr noalias noundef align 8 dereferenceable(280) %i.ab)
          to label %.body.i.i unwind label %bb.j, !noalias !91914

bb.j:                                             ; preds = %bb.i
  %i.af = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #76, !noalias !91914
  unreachable

"_ZN4core3ptr163drop_in_place$LT$core..option..Option$LT$alloc..rc..Rc$LT$nickel_lang_vector..vector..Node$LT$nickel_lang_core..eval..value..NickelValue$C$32_usize$GT$$GT$$GT$$GT$17h995816004d9ccde7E.exit.i.i": ; preds = %bb.g
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(296) %i.ac, ptr noundef nonnull align 8 dereferenceable(296) %i.d, i64 296, i1 false), !noalias !91914
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !91897
  store ptr %i.ac, ptr %i.f, align 8, !alias.scope !91896, !noalias !91914
  br label %.preheader

.preheader:                                       ; preds = %"_ZN4core3ptr163drop_in_place$LT$core..option..Option$LT$alloc..rc..Rc$LT$nickel_lang_vector..vector..Node$LT$nickel_lang_core..eval..value..NickelValue$C$32_usize$GT$$GT$$GT$$GT$17h995816004d9ccde7E.exit.i.i", %.thread.i.i
  br label %bb.k

bb.k:                                             ; preds = %.backedge, %.preheader
  %i.ag = phi i64 [ 1, %.preheader ], [ %.be, %.backedge ]
  call void @llvm.experimental.noalias.scope.decl(metadata !91918)
end_hunk_1
begin_hunk_2_@_ZN4core4iter6traits8iterator8Iterator7collect17h985ef55a169428abE:bb.a

bb.e:                                             ; preds = %bb.d
  %i.j = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %.val9.i.i.i.i.i.i.i = load ptr, ptr %i.j, align 8, !alias.scope !92300, !noalias !92299, !nonnull !44, !noundef !44
  %i.k = shl nuw i64 %.val8.i.i.i.i.i.i.i, 4
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val9.i.i.i.i.i.i.i, i64 noundef %i.k, i64 noundef range(i64 1, -9223372036854775807) 8) #66, !noalias !92299
  br label %bb.w

bb.f:                                             ; preds = %bb.i
  %i.l = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.m = icmp eq i64 %i.h, 0
  br i1 %i.m, label %bb.u, label %bb.g

bb.g:                                             ; preds = %bb.f
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.5.0.copyload.i.i.i.i.i.i.i) ]
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.5.0.copyload.i.i.i.i.i.i.i, i64 noundef %i.h, i64 noundef range(i64 1, -9223372036854775807) 1) #66, !noalias !92301
  br label %bb.u

bb.h:                                             ; preds = %bb.c
  %.sroa.5.0..sroa_idx.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %.sroa.5.0.copyload.i.i.i.i.i.i.i = load ptr, ptr %.sroa.5.0..sroa_idx.i.i.i.i.i.i.i, align 8, !noalias !92298 ; 3 uses
  %.sroa.6.0..sroa_idx4.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %.sroa.6.0.copyload.i.i.i.i.i.i.i = load i64, ptr %.sroa.6.0..sroa_idx4.i.i.i.i.i.i.i, align 8, !noalias !92298
  call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #66, !noalias !92302
  %i.n = call noundef align 8 dereferenceable_or_null(96) ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef 96, i64 noundef range(i64 1, 9) 8) #66, !noalias !92302 ; 6 uses
  %i.o = icmp eq ptr %i.n, null
  br i1 %i.o, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  invoke void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef 8, i64 96, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @1283) #75
          to label %.noexc.i.i.i.i.i.i.i unwind label %bb.f, !noalias !92299

.noexc.i.i.i.i.i.i.i:                             ; preds = %bb.i
  unreachable

bb.j:                                             ; preds = %bb.h
  store i64 %i.h, ptr %i.n, align 8, !noalias !92299
  %.sroa.410.0..sroa_idx.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  store ptr %.sroa.5.0.copyload.i.i.i.i.i.i.i, ptr %.sroa.410.0..sroa_idx.i.i.i.i.i.i.i, align 8, !noalias !92299
  %.sroa.511.0..sroa_idx.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  store i64 %.sroa.6.0.copyload.i.i.i.i.i.i.i, ptr %.sroa.511.0..sroa_idx.i.i.i.i.i.i.i, align 8, !noalias !92299
  store i64 4, ptr %i.d, align 8, !noalias !92298
  %.sroa.4.0..sroa_idx.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 3 uses
  store ptr %i.n, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i.i.i, align 8, !noalias !92298
  %.sroa.6.0..sroa_idx.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 16 ; 2 uses
  store i64 1, ptr %.sroa.6.0..sroa_idx.i.i.i.i.i.i.i, align 8, !noalias !92298
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !92298
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !92298
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %i.b, ptr noundef nonnull align 8 dereferenceable(88) %i.e, i64 88, i1 false), !noalias !92299
  call void @llvm.experimental.noalias.scope.decl(metadata !92303)
  call void @llvm.experimental.noalias.scope.decl(metadata !92304)
  call void @llvm.experimental.noalias.scope.decl(metadata !92305)
  call void @llvm.experimental.noalias.scope.decl(metadata !92306)
  %.sroa.5.0..sroa_idx.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.sroa.6.0..sroa_idx.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  br label %bb.k

bb.k:                                             ; preds = %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17haa24c2994780394fE.exit.i.i.i.i.i.i.i.i.i", %bb.j
  %i.p = phi ptr [ %i.ab, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17haa24c2994780394fE.exit.i.i.i.i.i.i.i.i.i" ], [ %i.n, %bb.j ]
  %.sroa.8.0.copyload17.i.i = phi i64 [ %i.ad, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17haa24c2994780394fE.exit.i.i.i.i.i.i.i.i.i" ], [ 1, %bb.j ] ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !92307
  invoke fastcc void @"_ZN106_$LT$core..iter..adapters..GenericShunt$LT$I$C$R$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h1544b7782c5ed86aE"(ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(88) %i.b)
          to label %bb.n unwind label %bb.m, !noalias !92308

"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h24b598f56fd0df8eE.exit.i.i.i.i.i.i.i.i.i": ; preds = %bb.s, %bb.r, %bb.m
  %.pn.i.i.i.i.i.i.i.i.i = phi { ptr, i32 } [ %i.t, %bb.m ], [ %i.ae, %bb.r ], [ %i.ae, %bb.s ]
  %.val7.i.i.i.i.i.i.i.i.i = load i64, ptr %i.b, align 8, !alias.scope !92309, !noalias !92310 ; 2 uses
  %i.q = icmp eq i64 %.val7.i.i.i.i.i.i.i.i.i, 0
  br i1 %i.q, label %.body.i.i.i.i.i.i.i, label %bb.l

bb.l:                                             ; preds = %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h24b598f56fd0df8eE.exit.i.i.i.i.i.i.i.i.i"
  %i.r = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.val8.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.r, align 8, !alias.scope !92309, !noalias !92310, !nonnull !44, !noundef !44
  %i.s = shl nuw i64 %.val7.i.i.i.i.i.i.i.i.i, 4
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val8.i.i.i.i.i.i.i.i.i, i64 noundef %i.s, i64 noundef range(i64 1, -9223372036854775807) 8) #66, !noalias !92308
  br label %.body.i.i.i.i.i.i.i

bb.m:                                             ; preds = %bb.k
  %i.t = landingpad { ptr, i32 }
          cleanup
  br label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h24b598f56fd0df8eE.exit.i.i.i.i.i.i.i.i.i"

bb.n:                                             ; preds = %bb.k
  %i.u = load i64, ptr %i.a, align 8, !range !70, !noalias !92307, !noundef !44 ; 4 uses
  %.not.i.i.i.i.i.i.i.i.i = icmp eq i64 %i.u, -9223372036854775808
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %.sroa.5.0.copyload.i.i.i.i.i.i.i.i.i = load ptr, ptr %.sroa.5.0..sroa_idx.i.i.i.i.i.i.i.i.i, align 8, !noalias !92307 ; 3 uses
  %.sroa.6.0.copyload.i.i.i.i.i.i.i.i.i = load i64, ptr %.sroa.6.0..sroa_idx.i.i.i.i.i.i.i.i.i, align 8, !noalias !92307
  %i.v = icmp samesign ult i64 %.sroa.8.0.copyload17.i.i, 384307168202282326
  call void @llvm.assume(i1 %i.v)
  %i.w = load i64, ptr %i.d, align 8, !range !74, !alias.scope !92311, !noalias !92312, !noundef !44
  %i.x = icmp eq i64 %.sroa.8.0.copyload17.i.i, %i.w
  br i1 %i.x, label %bb.t, label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17haa24c2994780394fE.exit.i.i.i.i.i.i.i.i.i"

bb.p:                                             ; preds = %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !92307
  %.val5.i.i.i.i.i.i.i.i.i = load i64, ptr %i.b, align 8, !alias.scope !92309, !noalias !92310 ; 2 uses
  %i.y = icmp eq i64 %.val5.i.i.i.i.i.i.i.i.i, 0
  br i1 %i.y, label %"_ZN97_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$alloc..vec..spec_extend..SpecExtend$LT$T$C$I$GT$$GT$11spec_extend17h4dd2c2503167becbE.exit.i.i.i.i.i.i.i", label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.z = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.val6.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.z, align 8, !alias.scope !92309, !noalias !92310, !nonnull !44, !noundef !44
  %i.aa = shl nuw i64 %.val5.i.i.i.i.i.i.i.i.i, 4
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val6.i.i.i.i.i.i.i.i.i, i64 noundef %i.aa, i64 noundef range(i64 1, -9223372036854775807) 8) #66, !noalias !92308
  br label %"_ZN97_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$alloc..vec..spec_extend..SpecExtend$LT$T$C$I$GT$$GT$11spec_extend17h4dd2c2503167becbE.exit.i.i.i.i.i.i.i"

"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17haa24c2994780394fE.exit.i.i.i.i.i.i.i.i.i": ; preds = %"._ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17haa24c2994780394fE.exit.i.i_crit_edge.i.i.i.i.i.i.i", %bb.o
  %i.ab = phi ptr [ %.pre.i.i.i.i.i.i.i, %"._ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17haa24c2994780394fE.exit.i.i_crit_edge.i.i.i.i.i.i.i" ], [ %i.p, %bb.o ] ; 2 uses
  %i.ac = getelementptr inbounds nuw [24 x i8], ptr %i.ab, i64 %.sroa.8.0.copyload17.i.i ; 3 uses
  store i64 %i.u, ptr %i.ac, align 8, !noalias !92308
  %.sroa.49.0..sroa_idx.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  store ptr %.sroa.5.0.copyload.i.i.i.i.i.i.i.i.i, ptr %.sroa.49.0..sroa_idx.i.i.i.i.i.i.i.i.i, align 8, !noalias !92308
  %.sroa.510.0..sroa_idx.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ac, i64 16
  store i64 %.sroa.6.0.copyload.i.i.i.i.i.i.i.i.i, ptr %.sroa.510.0..sroa_idx.i.i.i.i.i.i.i.i.i, align 8, !noalias !92308
  %i.ad = add nuw nsw i64 %.sroa.8.0.copyload17.i.i, 1 ; 2 uses
  store i64 %i.ad, ptr %.sroa.6.0..sroa_idx.i.i.i.i.i.i.i, align 8, !alias.scope !92311, !noalias !92312
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !92307
  br label %bb.k

bb.r:                                             ; preds = %bb.t
  %i.ae = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.af = icmp eq i64 %i.u, 0
  br i1 %i.af, label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h24b598f56fd0df8eE.exit.i.i.i.i.i.i.i.i.i", label %bb.s

bb.s:                                             ; preds = %bb.r
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.5.0.copyload.i.i.i.i.i.i.i.i.i) ]
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.5.0.copyload.i.i.i.i.i.i.i.i.i, i64 noundef %i.u, i64 noundef range(i64 1, -9223372036854775807) 1) #66, !noalias !92313
  br label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h24b598f56fd0df8eE.exit.i.i.i.i.i.i.i.i.i"

bb.t:                                             ; preds = %bb.o
  invoke fastcc void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$7reserve21do_reserve_and_handle17hf28d563308425255E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.d, i64 noundef %.sroa.8.0.copyload17.i.i, i64 noundef 1, i64 noundef 8, i64 noundef 24)
          to label %"._ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17haa24c2994780394fE.exit.i.i_crit_edge.i.i.i.i.i.i.i" unwind label %bb.r, !noalias !92299

"._ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17haa24c2994780394fE.exit.i.i_crit_edge.i.i.i.i.i.i.i": ; preds = %bb.t
  %.pre.i.i.i.i.i.i.i = load ptr, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i.i.i, align 8, !alias.scope !92311, !noalias !92312
  br label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17haa24c2994780394fE.exit.i.i.i.i.i.i.i.i.i"

.body.i.i.i.i.i.i.i:                              ; preds = %bb.l, %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h24b598f56fd0df8eE.exit.i.i.i.i.i.i.i.i.i"
  call fastcc void @"_ZN4core3ptr65drop_in_place$LT$alloc..vec..Vec$LT$alloc..string..String$GT$$GT$17h7f234fa731c4181cE"(ptr noalias noundef align 8 dereferenceable(24) %i.d) #77, !noalias !92299
  br label %.body.i.i

"_ZN97_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$alloc..vec..spec_extend..SpecExtend$LT$T$C$I$GT$$GT$11spec_extend17h4dd2c2503167becbE.exit.i.i.i.i.i.i.i": ; preds = %bb.q, %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !92298
  %.sroa.0.0.copyload13.i.i = load i64, ptr %i.d, align 8, !noalias !92314
  %.sroa.6.0.copyload15.i.i = load ptr, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i.i.i, align 8, !noalias !92314
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !92298
  br label %bb.w

bb.u:                                             ; preds = %bb.g, %bb.f, %bb.b
  %.pn.ph.i.i.i.i.i.i.i = phi { ptr, i32 } [ %i.g, %bb.b ], [ %i.l, %bb.f ], [ %i.l, %bb.g ] ; 2 uses
  %.val6.i.i.i.i.i.i.i = load i64, ptr %i.e, align 8, !alias.scope !92300, !noalias !92299 ; 2 uses
  %i.ag = icmp eq i64 %.val6.i.i.i.i.i.i.i, 0
  br i1 %i.ag, label %.body.i.i, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.ah = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %.val7.i.i.i.i.i.i.i = load ptr, ptr %i.ah, align 8, !alias.scope !92300, !noalias !92299, !nonnull !44, !noundef !44
  %i.ai = shl nuw i64 %.val6.i.i.i.i.i.i.i, 4
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val7.i.i.i.i.i.i.i, i64 noundef %i.ai, i64 noundef range(i64 1, -9223372036854775807) 8) #66, !noalias !92299
  br label %.body.i.i

.body.i.i:                                        ; preds = %bb.v, %bb.u, %.body.i.i.i.i.i.i.i
  %.pn.i.i = phi { ptr, i32 } [ %.pn.ph.i.i.i.i.i.i.i, %bb.u ], [ %.pn.i.i.i.i.i.i.i.i.i, %.body.i.i.i.i.i.i.i ], [ %.pn.ph.i.i.i.i.i.i.i, %bb.v ]
  %i.aj = load ptr, ptr %i.f, align 8, !noalias !92291, !align !50, !noundef !44 ; 2 uses
  %.not.i.i = icmp eq ptr %i.aj, null
  br i1 %.not.i.i, label %.body.thread.i.i, label %bb.ac

bb.w:                                             ; preds = %"_ZN97_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$alloc..vec..spec_extend..SpecExtend$LT$T$C$I$GT$$GT$11spec_extend17h4dd2c2503167becbE.exit.i.i.i.i.i.i.i", %bb.e, %bb.d
  %.sroa.8.0.i.i = phi i64 [ 0, %bb.d ], [ 0, %bb.e ], [ %.sroa.8.0.copyload17.i.i, %"_ZN97_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$alloc..vec..spec_extend..SpecExtend$LT$T$C$I$GT$$GT$11spec_extend17h4dd2c2503167becbE.exit.i.i.i.i.i.i.i" ] ; 3 uses
  %.sroa.6.0.i.i = phi ptr [ inttoptr (i64 8 to ptr), %bb.d ], [ inttoptr (i64 8 to ptr), %bb.e ], [ %.sroa.6.0.copyload15.i.i, %"_ZN97_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$alloc..vec..spec_extend..SpecExtend$LT$T$C$I$GT$$GT$11spec_extend17h4dd2c2503167becbE.exit.i.i.i.i.i.i.i" ] ; 3 uses
  %.sroa.0.0.i.i = phi i64 [ 0, %bb.d ], [ 0, %bb.e ], [ %.sroa.0.0.copyload13.i.i, %"_ZN97_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$alloc..vec..spec_extend..SpecExtend$LT$T$C$I$GT$$GT$11spec_extend17h4dd2c2503167becbE.exit.i.i.i.i.i.i.i" ] ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !92292
  %i.ak = load ptr, ptr %i.f, align 8, !noalias !92291, !align !50, !noundef !44 ; 2 uses
  %.not.not.i.i = icmp eq ptr %i.ak, null
  br i1 %.not.not.i.i, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w
  store i64 %.sroa.0.0.i.i, ptr %0, align 8, !alias.scope !92315, !noalias !92316
  %.sroa.4.0..sroa_idx19.i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.6.0.i.i, ptr %.sroa.4.0..sroa_idx19.i.i, align 8, !alias.scope !92315, !noalias !92316
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.8.0.i.i, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !alias.scope !92315, !noalias !92316
  br label %"_ZN136_$LT$core..result..Result$LT$V$C$E$GT$$u20$as$u20$core..iter..traits..collect..FromIterator$LT$core..result..Result$LT$A$C$E$GT$$GT$$GT$9from_iter17ha4de483142757873E.exit"

bb.y:                                             ; preds = %bb.w
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.ak, ptr %i.al, align 8, !alias.scope !92317, !noalias !92318
  store i64 -9223372036854775808, ptr %0, align 8, !alias.scope !92317, !noalias !92318
  call void @llvm.experimental.noalias.scope.decl(metadata !92319)
  %i.am = icmp eq i64 %.sroa.8.0.i.i, 0
  br i1 %i.am, label %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h42cd9ce836496da3E.exit.i.i.i", label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.y, %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h24b598f56fd0df8eE.exit.i.i.i.i.i"
  %.sroa.0.010.i.i.i.i.i = phi i64 [ %i.ao, %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h24b598f56fd0df8eE.exit.i.i.i.i.i" ], [ 0, %bb.y ] ; 2 uses
  %i.an = getelementptr inbounds nuw [24 x i8], ptr %.sroa.6.0.i.i, i64 %.sroa.0.010.i.i.i.i.i ; 2 uses
  %i.ao = add nuw nsw i64 %.sroa.0.010.i.i.i.i.i, 1 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !92320)
  call void @llvm.experimental.noalias.scope.decl(metadata !92321)
  %.val.i.i.i.i.i.i.i = load i64, ptr %i.an, align 8, !range !74, !alias.scope !92322, !noalias !92323, !noundef !44 ; 2 uses
  %i.ap = icmp eq i64 %.val.i.i.i.i.i.i.i, 0
  br i1 %i.ap, label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h24b598f56fd0df8eE.exit.i.i.i.i.i", label %bb.z

bb.z:                                             ; preds = %.lr.ph.i.i.i.i.i
  %i.aq = getelementptr inbounds nuw i8, ptr %i.an, i64 8
  %.val1.i.i.i.i.i.i.i = load ptr, ptr %i.aq, align 8, !alias.scope !92322, !noalias !92323, !nonnull !44, !noundef !44
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i.i.i.i.i, i64 noundef %.val.i.i.i.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #66, !noalias !92324
  br label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h24b598f56fd0df8eE.exit.i.i.i.i.i"

"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h24b598f56fd0df8eE.exit.i.i.i.i.i": ; preds = %bb.z, %.lr.ph.i.i.i.i.i
  %i.ar = icmp eq i64 %i.ao, %.sroa.8.0.i.i
  br i1 %i.ar, label %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h42cd9ce836496da3E.exit.i.i.i", label %.lr.ph.i.i.i.i.i

"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h42cd9ce836496da3E.exit.i.i.i": ; preds = %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h24b598f56fd0df8eE.exit.i.i.i.i.i", %bb.y
  %i.as = icmp eq i64 %.sroa.0.0.i.i, 0
  br i1 %i.as, label %"_ZN136_$LT$core..result..Result$LT$V$C$E$GT$$u20$as$u20$core..iter..traits..collect..FromIterator$LT$core..result..Result$LT$A$C$E$GT$$GT$$GT$9from_iter17ha4de483142757873E.exit", label %bb.aa

bb.aa:                                            ; preds = %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h42cd9ce836496da3E.exit.i.i.i"
  %i.at = mul nuw i64 %.sroa.0.0.i.i, 24
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.6.0.i.i, i64 noundef %i.at, i64 noundef range(i64 1, -9223372036854775807) 8) #66, !noalias !92323
  br label %"_ZN136_$LT$core..result..Result$LT$V$C$E$GT$$u20$as$u20$core..iter..traits..collect..FromIterator$LT$core..result..Result$LT$A$C$E$GT$$GT$$GT$9from_iter17ha4de483142757873E.exit"

bb.ab:                                            ; preds = %bb.ac
  %i.au = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #76, !noalias !92291
  unreachable

.body.thread.i.i:                                 ; preds = %bb.ac, %.body.i.i
  resume { ptr, i32 } %.pn.i.i

bb.ac:                                            ; preds = %.body.i.i
  invoke fastcc void @"_ZN4core3ptr140drop_in_place$LT$core..result..Result$LT$core..convert..Infallible$C$alloc..boxed..Box$LT$nickel_lang_core..error..EvalErrorKind$GT$$GT$$GT$17h54e53be8f62a1db8E"(ptr %i.aj) #77
          to label %.body.thread.i.i unwind label %bb.ab, !noalias !92291

"_ZN136_$LT$core..result..Result$LT$V$C$E$GT$$u20$as$u20$core..iter..traits..collect..FromIterator$LT$core..result..Result$LT$A$C$E$GT$$GT$$GT$9from_iter17ha4de483142757873E.exit": ; preds = %bb.x, %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h42cd9ce836496da3E.exit.i.i.i", %bb.aa
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !92291
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_ZN4core4iter6traits8iterator8Iterator7collect17ha87a171f32a63c00E(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(24) %0, ptr noundef nonnull %1, ptr noundef nonnull %2) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1                 ; 2 uses
  %i.b = alloca [48 x i8], align 8                ; 7 uses
  %i.c = alloca [8 x i8], align 8                 ; 4 uses
  %i.d = alloca [48 x i8], align 8                ; 7 uses
  %i.e = alloca [8 x i8], align 8                 ; 4 uses
  %i.f = alloca [24 x i8], align 8                ; 9 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !92343)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !92344)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !92345)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !92346
  %i.g = icmp eq ptr %1, %2
  br i1 %i.g, label %"_ZN102_$LT$core..iter..adapters..map..Map$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h063ec0f85d350ac6E.exit.i.i.i", label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 72 ; 3 uses
  %i.i = getelementptr i8, ptr %1, i64 24
  %.val.i.i.i.i = load ptr, ptr %i.i, align 8, !noalias !92347, !noundef !44 ; 6 uses
  %.not.i.i.i.i.i = icmp eq ptr %.val.i.i.i.i, null
  br i1 %.not.i.i.i.i.i, label %bb.g, label %bb.c, !prof !49

bb.c:                                             ; preds = %bb.b
  %i.j = ptrtoint ptr %.val.i.i.i.i to i64
  %i.k = and i64 %i.j, 3
  %..i.i.i.i.i.i = tail call i64 @llvm.umin.i64(i64 %i.k, i64 2)
  switch i64 %..i.i.i.i.i.i, label %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i [
    i64 2, label %bb.d
    i64 0, label %bb.e
  ], !prof !54

bb.d:                                             ; preds = %bb.c
  call void @_ZN4core6result13unwrap_failed17h0501379eaec3e720E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @1333, i64 noundef 43, ptr noundef nonnull align 1 %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @1339, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @361) #75, !noalias !92347
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.l = load i64, ptr %.val.i.i.i.i, align 8, !noalias !92347, !noundef !44 ; 3 uses
  %i.m = and i64 %i.l, 72057594037927935          ; 3 uses
  %i.n = icmp ne i64 %i.m, 0
  tail call void @llvm.assume(i1 %i.n)
  %i.o = add nuw nsw i64 %i.m, 1
  %i.p = and i64 %i.l, 1080863910568919040
  %i.q = icmp ult i64 %i.l, 864691128455135232
  tail call void @llvm.assume(i1 %i.q)
  %i.r = or i64 %i.o, %i.p
  store i64 %i.r, ptr %.val.i.i.i.i, align 8, !noalias !92347
  %i.s = icmp eq i64 %i.m, 72057594037927935
  br i1 %i.s, label %bb.f, label %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i, !prof !49

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !92347
  store ptr @2307, ptr %i.d, align 8, !noalias !92347
  %i.t = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store i64 1, ptr %i.t, align 8, !noalias !92347
  %i.u = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  store ptr null, ptr %i.u, align 8, !noalias !92347
  %i.v = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  store ptr inttoptr (i64 8 to ptr), ptr %i.v, align 8, !noalias !92347
  %i.w = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  store i64 0, ptr %i.w, align 8, !noalias !92347
  call void @_ZN4core9panicking9panic_fmt17h92c8e5abe71dd8d1E(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.d, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2308) #75, !noalias !92347
  unreachable

bb.g:                                             ; preds = %bb.b
  tail call void @_ZN4core6option13expect_failed17h1729d0bd73171c50E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @434, i64 noundef 90, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @435) #75, !noalias !92347
  unreachable

"_ZN102_$LT$core..iter..adapters..map..Map$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h063ec0f85d350ac6E.exit.i.i.i": ; preds = %bb.a
  store i64 0, ptr %0, align 8, !alias.scope !92346
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %i.x, align 8, !alias.scope !92346
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 0, ptr %i.y, align 8, !alias.scope !92346
  br label %"_ZN95_$LT$alloc..vec..Vec$LT$T$GT$$u20$as$u20$core..iter..traits..collect..FromIterator$LT$T$GT$$GT$9from_iter17hb0e702849d745aa6E.exit"

bb.h:                                             ; preds = %bb.i
  %i.z = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN4core3ptr63drop_in_place$LT$nickel_lang_core..eval..value..NickelValue$GT$17hc4da17c3e9a9e378E"(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.e) #77
          to label %bb.v unwind label %bb.u, !noalias !92346

_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i: ; preds = %bb.e, %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !92346
  store ptr %.val.i.i.i.i, ptr %i.e, align 8, !noalias !92346
  %i.aa = ptrtoint ptr %2 to i64                  ; 2 uses
  %i.ab = ptrtoint ptr %i.h to i64
  %i.ac = sub nuw i64 %i.aa, %i.ab
  %i.ad = udiv exact i64 %i.ac, 72
  %i.ae = tail call i64 @llvm.umax.i64(i64 %i.ad, i64 3)
  %.sroa.0.0.i8.i.i.i = add nuw nsw i64 %i.ae, 1  ; 2 uses
  %i.af = shl nuw nsw i64 %.sroa.0.0.i8.i.i.i, 3  ; 2 uses
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #66, !noalias !92348
  %i.ag = tail call noundef align 8 ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef %i.af, i64 noundef range(i64 1, 9) 8) #66, !noalias !92348 ; 4 uses
  %i.ah = icmp eq ptr %i.ag, null
  br i1 %i.ah, label %bb.i, label %bb.j

bb.i:                                             ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i
  invoke void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef 8, i64 %i.af, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @1283) #75
          to label %.noexc.i.i.i unwind label %bb.h, !noalias !92346

.noexc.i.i.i:                                     ; preds = %bb.i
  unreachable

bb.j:                                             ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i
  store ptr %.val.i.i.i.i, ptr %i.ag, align 8, !noalias !92346
  store i64 %.sroa.0.0.i8.i.i.i, ptr %i.f, align 8, !noalias !92346
  %.sroa.4.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 8 ; 2 uses
  store ptr %i.ag, ptr %.sroa.4.0..sroa_idx.i.i.i, align 8, !noalias !92346
  %.sroa.6.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 16 ; 2 uses
  store i64 1, ptr %.sroa.6.0..sroa_idx.i.i.i, align 8, !noalias !92346
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !92346
  tail call void @llvm.experimental.noalias.scope.decl(metadata !92349)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !92350)
  %i.ai = icmp eq ptr %i.h, %2
  br i1 %i.ai, label %"_ZN97_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$alloc..vec..spec_extend..SpecExtend$LT$T$C$I$GT$$GT$11spec_extend17h4df85c33d39c2ea8E.exit.i.i.i", label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.j, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h9576528df0fa11bcE.exit.i.i.i.i.i"
  %i.aj = phi ptr [ %i.be, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h9576528df0fa11bcE.exit.i.i.i.i.i" ], [ %i.ag, %bb.j ]
  %i.ak = phi i64 [ %i.bg, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h9576528df0fa11bcE.exit.i.i.i.i.i" ], [ 1, %bb.j ] ; 5 uses
  %.sroa.0.08.i.i.i.i.i = phi ptr [ %i.al, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h9576528df0fa11bcE.exit.i.i.i.i.i" ], [ %i.h, %bb.j ] ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i.i.i, i64 72 ; 3 uses
  %i.am = getelementptr i8, ptr %.sroa.0.08.i.i.i.i.i, i64 24
  %.val.i.i.i.i.i.i = load ptr, ptr %i.am, align 8, !noalias !92351, !noundef !44 ; 6 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %.val.i.i.i.i.i.i, null
  br i1 %.not.i.i.i.i.i.i.i, label %bb.o, label %bb.k, !prof !49

bb.k:                                             ; preds = %.lr.ph.i.i.i.i.i
  %i.an = ptrtoint ptr %.val.i.i.i.i.i.i to i64
  %i.ao = and i64 %i.an, 3
  %..i.i.i.i.i.i.i.i = tail call i64 @llvm.umin.i64(i64 %i.ao, i64 2)
  switch i64 %..i.i.i.i.i.i.i.i, label %bb.p [
    i64 2, label %bb.l
    i64 0, label %bb.m
  ], !prof !54

bb.l:                                             ; preds = %bb.k
  invoke void @_ZN4core6result13unwrap_failed17h0501379eaec3e720E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @1333, i64 noundef 43, ptr noundef nonnull align 1 %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @1339, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @361) #75
          to label %.noexc9.i.i.i unwind label %bb.t, !noalias !92346

.noexc9.i.i.i:                                    ; preds = %bb.l
  unreachable

bb.m:                                             ; preds = %bb.k
  %i.ap = load i64, ptr %.val.i.i.i.i.i.i, align 8, !noalias !92351, !noundef !44 ; 3 uses
  %i.aq = and i64 %i.ap, 72057594037927935        ; 3 uses
  %i.ar = icmp ne i64 %i.aq, 0
  tail call void @llvm.assume(i1 %i.ar)
  %i.as = add nuw nsw i64 %i.aq, 1
  %i.at = and i64 %i.ap, 1080863910568919040
  %i.au = icmp ult i64 %i.ap, 864691128455135232
  tail call void @llvm.assume(i1 %i.au)
  %i.av = or i64 %i.as, %i.at
  store i64 %i.av, ptr %.val.i.i.i.i.i.i, align 8, !noalias !92351
  %i.aw = icmp eq i64 %i.aq, 72057594037927935
  br i1 %i.aw, label %bb.n, label %bb.p, !prof !49

end_hunk_2
