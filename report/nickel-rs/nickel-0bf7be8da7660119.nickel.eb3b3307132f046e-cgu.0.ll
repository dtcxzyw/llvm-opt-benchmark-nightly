Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/nickel-rs/original/nickel-0bf7be8da7660119.nickel.eb3b3307132f046e-cgu.0?download=true
inline.NumInlined: 19446
inline.NumDeleted: 8632
loop-unroll.NumCompletelyUnrolled: 43
loop-unroll.NumRuntimeUnrolled: 85
loop-unroll.NumUnrolled: 133
begin_hunk_0_@_ZN6nickel9customize18CustomizableFields11extend_with17h9378fbae81340e66E:bb.a
  %.sroa.0.0.i.i.i413 = phi i64 [ %i.dg, %"_ZN4core3ptr60drop_in_place$LT$nickel_lang_core..term..RuntimeContract$GT$17h60f605e65a039407E.exit" ], [ 0, %"_ZN4core3ptr67drop_in_place$LT$nickel_lang_core..term..record..SharedMetadata$GT$17h0324633f657496e5E.exit6.i" ] ; 2 uses
  %i.df = getelementptr inbounds nuw [160 x i8], ptr %.val.i97, i64 %.sroa.0.0.i.i.i413 ; 3 uses
  %i.dg = add i64 %.sroa.0.0.i.i.i413, 1          ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !59307)
  %i.dh = getelementptr inbounds nuw i8, ptr %i.df, i64 152
  call void @llvm.experimental.noalias.scope.decl(metadata !59308), !noalias !59306
  %.val.i.i = load ptr, ptr %i.dh, align 8, !alias.scope !59309, !noalias !59306, !nonnull !34, !noundef !34 ; 4 uses
  %i.di = ptrtoint ptr %.val.i.i to i64
  %i.dj = and i64 %i.di, 3
  %..i.i.i = call i64 @llvm.umin.i64(i64 %i.dj, i64 2)
  switch i64 %..i.i.i, label %"_ZN4core3ptr63drop_in_place$LT$nickel_lang_core..eval..value..NickelValue$GT$17h2043370c4e326e18E.exit.i" [
    i64 2, label %bb.aa
    i64 0, label %bb.ab
  ], !prof !47

bb.aa:                                            ; preds = %.lr.ph
  invoke void @_ZN4core6result13unwrap_failed17h0501379eaec3e720E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @767, i64 noundef 43, ptr noundef nonnull align 1 %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @777, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @318) #59
          to label %.noexc.i100 unwind label %.loopexit.split-lp, !noalias !59310

.noexc.i100:                                      ; preds = %bb.aa
  unreachable

bb.ab:                                            ; preds = %.lr.ph
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !59311
  store ptr %.val.i.i, ptr %i.c, align 8, !noalias !59311
  %i.dk = load i64, ptr %.val.i.i, align 8, !noalias !59312, !noundef !34 ; 3 uses
  %i.dl = and i64 %i.dk, 72057594037927935
  %i.dm = add nsw i64 %i.dl, -1                   ; 3 uses
  %i.dn = and i64 %i.dk, 1080863910568919040
  %i.do = icmp ult i64 %i.dk, 864691128455135232
  call void @llvm.assume(i1 %i.do), !noalias !59306
  %i.dp = or i64 %i.dm, %i.dn
  store i64 %i.dp, ptr %.val.i.i, align 8, !noalias !59312
  %i.dq = icmp ugt i64 %i.dm, 72057594037927935
  br i1 %i.dq, label %bb.ad, label %bb.ac, !prof !37

bb.ac:                                            ; preds = %bb.ab
  %i.dr = icmp eq i64 %i.dm, 0
  br i1 %i.dr, label %bb.ae, label %"_ZN4core3ptr64drop_in_place$LT$nickel_lang_core..eval..value..ValueBlockRc$GT$17h1496bbc7960f880bE.exit.i.i.i"

bb.ad:                                            ; preds = %bb.ab
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !59312
  store ptr @1344, ptr %i.b, align 8, !noalias !59312
  %i.ds = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 1, ptr %i.ds, align 8, !noalias !59312
  %i.dt = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  store ptr null, ptr %i.dt, align 8, !noalias !59312
  %i.du = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store ptr inttoptr (i64 8 to ptr), ptr %i.du, align 8, !noalias !59312
  %i.dv = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store i64 0, ptr %i.dv, align 8, !noalias !59312
  invoke void @_ZN4core9panicking9panic_fmt17h92c8e5abe71dd8d1E(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.b, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1345) #59
          to label %.noexc1.i unwind label %.loopexit.split-lp, !noalias !59310

.noexc1.i:                                        ; preds = %bb.ad
  unreachable

bb.ae:                                            ; preds = %bb.ac
  invoke void @_ZN16nickel_lang_core4eval5value12ValueBlockRc9drop_slow17ha5a2a8b11d052046E(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.c)
          to label %"_ZN4core3ptr64drop_in_place$LT$nickel_lang_core..eval..value..ValueBlockRc$GT$17h1496bbc7960f880bE.exit.i.i.i" unwind label %.loopexit, !noalias !59310

"_ZN4core3ptr64drop_in_place$LT$nickel_lang_core..eval..value..ValueBlockRc$GT$17h1496bbc7960f880bE.exit.i.i.i": ; preds = %bb.ae, %bb.ac
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !59311
  br label %"_ZN4core3ptr63drop_in_place$LT$nickel_lang_core..eval..value..NickelValue$GT$17h2043370c4e326e18E.exit.i"

.loopexit:                                        ; preds = %bb.ae
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.af

.loopexit.split-lp:                               ; preds = %bb.aa, %bb.ad
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.af

bb.af:                                            ; preds = %.loopexit.split-lp, %.loopexit
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  invoke fastcc void @"_ZN4core3ptr51drop_in_place$LT$nickel_lang_core..label..Label$GT$17h387e0da7d287577cE"(ptr noalias noundef nonnull align 8 dereferenceable(160) %i.df) #61
          to label %.body102 unwind label %bb.ag, !noalias !59306

"_ZN4core3ptr63drop_in_place$LT$nickel_lang_core..eval..value..NickelValue$GT$17h2043370c4e326e18E.exit.i": ; preds = %"_ZN4core3ptr64drop_in_place$LT$nickel_lang_core..eval..value..ValueBlockRc$GT$17h1496bbc7960f880bE.exit.i.i.i", %.lr.ph
  invoke fastcc void @"_ZN4core3ptr51drop_in_place$LT$nickel_lang_core..label..Label$GT$17h387e0da7d287577cE"(ptr noalias noundef nonnull align 8 dereferenceable(160) %i.df)
          to label %"_ZN4core3ptr60drop_in_place$LT$nickel_lang_core..term..RuntimeContract$GT$17h60f605e65a039407E.exit" unwind label %bb.ai

bb.ag:                                            ; preds = %bb.af
  %i.dw = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #60, !noalias !59306
  unreachable

bb.ah:                                            ; preds = %.lr.ph415
  %i.dx = add i64 %.sroa.0.1.i.i.i414, 1          ; 2 uses
  %i.dy = icmp eq i64 %i.dx, %.val1.i
  br i1 %i.dy, label %.body.i, label %.lr.ph415

bb.ai:                                            ; preds = %"_ZN4core3ptr63drop_in_place$LT$nickel_lang_core..eval..value..NickelValue$GT$17h2043370c4e326e18E.exit.i"
  %i.dz = landingpad { ptr, i32 }
          cleanup
  br label %.body102

.body102:                                         ; preds = %bb.af, %bb.ai
  %eh.lpad-body103 = phi { ptr, i32 } [ %i.dz, %bb.ai ], [ %lpad.phi, %bb.af ] ; 2 uses
  %i.ea = icmp eq i64 %i.dg, %.val1.i
  br i1 %i.ea, label %.body.i, label %.lr.ph415

.lr.ph415:                                        ; preds = %.body102, %bb.ah
  %.sroa.0.1.i.i.i414 = phi i64 [ %i.dx, %bb.ah ], [ %i.dg, %.body102 ] ; 2 uses
  %i.eb = getelementptr inbounds nuw [160 x i8], ptr %.val.i97, i64 %.sroa.0.1.i.i.i414
  invoke fastcc void @"_ZN4core3ptr60drop_in_place$LT$nickel_lang_core..term..RuntimeContract$GT$17h60f605e65a039407E"(ptr noalias noundef align 8 dereferenceable(160) %i.eb) #61
          to label %bb.ah unwind label %bb.aj, !noalias !59306

bb.aj:                                            ; preds = %.lr.ph415
  %i.ec = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #60, !noalias !59306
  unreachable

.body.i:                                          ; preds = %bb.ah, %.body102
  %.val4.i = load i64, ptr %i.bs, align 8, !range !42, !alias.scope !59306, !noundef !34 ; 2 uses
  %i.ed = icmp eq i64 %.val4.i, 0
  br i1 %i.ed, label %.body91, label %bb.ak

bb.ak:                                            ; preds = %.body.i
  %i.ee = mul nuw i64 %.val4.i, 160
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i97, i64 noundef %i.ee, i64 noundef range(i64 1, -9223372036854775807) 8) #53, !noalias !59306
  br label %.body91

"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h2f95d0f5b6a89b90E.exit.i": ; preds = %"_ZN4core3ptr60drop_in_place$LT$nickel_lang_core..term..RuntimeContract$GT$17h60f605e65a039407E.exit", %"_ZN4core3ptr67drop_in_place$LT$nickel_lang_core..term..record..SharedMetadata$GT$17h0324633f657496e5E.exit6.i"
  %.val2.i = load i64, ptr %i.bs, align 8, !range !42, !alias.scope !59306, !noundef !34 ; 2 uses
  %i.ef = icmp eq i64 %.val2.i, 0
  br i1 %i.ef, label %.noexc93, label %bb.al

bb.al:                                            ; preds = %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h2f95d0f5b6a89b90E.exit.i"
  %i.eg = mul nuw i64 %.val2.i, 160
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i97, i64 noundef %i.eg, i64 noundef range(i64 1, -9223372036854775807) 8) #53, !noalias !59306
  br label %.noexc93

bb.am:                                            ; preds = %"_ZN4core3ptr67drop_in_place$LT$nickel_lang_core..term..record..SharedMetadata$GT$17h0324633f657496e5E.exit.i", %bb.w
  %i.eh = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #60
  unreachable

.noexc93:                                         ; preds = %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h2f95d0f5b6a89b90E.exit.i", %bb.al
  %.old5.i.i.i.i.i = icmp eq i64 %i.br, 0
  br i1 %.old5.i.i.i.i.i, label %"_ZN9hashbrown3raw16RawIter$LT$T$GT$13drop_elements17h7a29949d88bde275E.exit.i.i.i.i", label %bb.j

"_ZN9hashbrown3raw16RawIter$LT$T$GT$13drop_elements17h7a29949d88bde275E.exit.i.i.i.i": ; preds = %.noexc93, %.thread, %bb.i
  %.not.i.i.i.i = icmp eq i64 %i.aj, 0
  br i1 %.not.i.i.i.i, label %_ZN4core4iter8adapters7flatten17and_then_or_clear17h6c24d68a6706aa43E.exit.thread96.i, label %bb.an

bb.an:                                            ; preds = %"_ZN9hashbrown3raw16RawIter$LT$T$GT$13drop_elements17h7a29949d88bde275E.exit.i.i.i.i"
  %i.ei = load i64, ptr %.sroa.535.0..sroa_idx36.i, align 8, !alias.scope !59313, !noalias !59285, !noundef !34 ; 2 uses
  %i.ej = icmp eq i64 %i.ei, 0
  br i1 %i.ej, label %_ZN4core4iter8adapters7flatten17and_then_or_clear17h6c24d68a6706aa43E.exit.thread96.i, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.ek = load ptr, ptr %.sroa.638.0..sroa_idx39.i, align 8, !alias.scope !59313, !noalias !59285, !nonnull !34, !noundef !34
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.ek, i64 noundef %i.ei, i64 noundef range(i64 1, -9223372036854775807) %i.aj) #53, !noalias !59314
  br label %_ZN4core4iter8adapters7flatten17and_then_or_clear17h6c24d68a6706aa43E.exit.thread96.i

.body91:                                          ; preds = %"_ZN4core3ptr67drop_in_place$LT$nickel_lang_core..term..record..SharedMetadata$GT$17h0324633f657496e5E.exit.i", %.body.i, %bb.ak, %bb.m
  %eh.lpad-body92 = phi { ptr, i32 } [ %i.bw, %bb.m ], [ %.pn.i, %"_ZN4core3ptr67drop_in_place$LT$nickel_lang_core..term..record..SharedMetadata$GT$17h0324633f657496e5E.exit.i" ], [ %eh.lpad-body103, %.body.i ], [ %eh.lpad-body103, %bb.ak ]
  store i64 -9223372036854775807, ptr %.sroa.2.0..sroa_idx, align 8, !alias.scope !59315, !noalias !59285
  invoke fastcc void @"_ZN4core3ptr144drop_in_place$LT$core..option..Option$LT$$LP$nickel_lang_parser..identifier..LocIdent$C$nickel..customize..interface..FieldInterface$RP$$GT$$GT$17h6bab97a1c0aca5a3E"(ptr noalias noundef align 8 dereferenceable(112) %i.j) #61
          to label %.body unwind label %bb.ap, !noalias !59269

_ZN4core4iter8adapters7flatten17and_then_or_clear17h6c24d68a6706aa43E.exit.thread96.i: ; preds = %bb.ao, %bb.an, %"_ZN9hashbrown3raw16RawIter$LT$T$GT$13drop_elements17h7a29949d88bde275E.exit.i.i.i.i"
  store i64 -9223372036854775807, ptr %.sroa.2.0..sroa_idx, align 8, !alias.scope !59315, !noalias !59285
  br label %"_ZN4core3ptr144drop_in_place$LT$core..option..Option$LT$$LP$nickel_lang_parser..identifier..LocIdent$C$nickel..customize..interface..FieldInterface$RP$$GT$$GT$17h6bab97a1c0aca5a3E.exit.i"

bb.ap:                                            ; preds = %.body91
  %i.el = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #60, !noalias !59269
  unreachable

"_ZN4core3ptr144drop_in_place$LT$core..option..Option$LT$$LP$nickel_lang_parser..identifier..LocIdent$C$nickel..customize..interface..FieldInterface$RP$$GT$$GT$17h6bab97a1c0aca5a3E.exit.i": ; preds = %_ZN4core4iter8adapters7flatten17and_then_or_clear17h6c24d68a6706aa43E.exit.thread96.i, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !59269
  call void @llvm.experimental.noalias.scope.decl(metadata !59316)
  %i.em = load i64, ptr %i.p, align 8, !range !55, !alias.scope !59317, !noalias !59318, !noundef !34
  %i.en = trunc nuw i64 %i.em to i1
  br i1 %i.en, label %bb.aq, label %.loopexit138

bb.aq:                                            ; preds = %"_ZN4core3ptr144drop_in_place$LT$core..option..Option$LT$$LP$nickel_lang_parser..identifier..LocIdent$C$nickel..customize..interface..FieldInterface$RP$$GT$$GT$17h6bab97a1c0aca5a3E.exit.i"
  call void @llvm.experimental.noalias.scope.decl(metadata !59319)
  call void @llvm.experimental.noalias.scope.decl(metadata !59320)
  %.sroa.0.0.copyload1.i.i.i = load ptr, ptr %.sroa.011.sroa.2.0..sroa_idx, align 8, !alias.scope !59321, !noalias !59322 ; 6 uses
  %.sroa.5.sroa.0.0.copyload.i.i.i = load i64, ptr %.sroa.5.0..sroa_idx2.i.i.i, align 8, !alias.scope !59321, !noalias !59322 ; 4 uses
  %.sroa.5.sroa.5.0.copyload.i.i.i = load i64, ptr %.sroa.5.sroa.5.0..sroa.5.0..sroa_idx2.sroa_idx.i.i.i, align 8, !alias.scope !59321, !noalias !59322
  store ptr null, ptr %.sroa.011.sroa.2.0..sroa_idx, align 8, !alias.scope !59323, !noalias !59324
  %.not.i.i.i = icmp eq ptr %.sroa.0.0.copyload1.i.i.i, null
  br i1 %.not.i.i.i, label %.loopexit138, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %.val3.i.i.i.i.i.i.i = load <16 x i8>, ptr %.sroa.0.0.copyload1.i.i.i, align 16, !noalias !59325
  %i.eo = icmp eq i64 %.sroa.5.sroa.0.0.copyload.i.i.i, 0
  br i1 %i.eo, label %"_ZN4core3ptr181drop_in_place$LT$core..option..Option$LT$std..collections..hash..map..IntoIter$LT$nickel_lang_parser..identifier..LocIdent$C$nickel..customize..interface..FieldInterface$GT$$GT$$GT$17h65e427f971656e28E.exit.i", label %_ZN9hashbrown3raw11TableLayout20calculate_layout_for17hb76643e6316511fcE.exit.i.i.i.i.i.i.i.i

_ZN9hashbrown3raw11TableLayout20calculate_layout_for17hb76643e6316511fcE.exit.i.i.i.i.i.i.i.i: ; preds = %bb.ar
  %i.ep = mul i64 %.sroa.5.sroa.0.0.copyload.i.i.i, -112
  %3 = mul i64 %.sroa.5.sroa.0.0.copyload.i.i.i, 113
  %i.eq = add i64 %3, 129
  %4 = getelementptr i8, ptr %.sroa.0.0.copyload1.i.i.i, i64 %i.ep
  %i.er = getelementptr i8, ptr %4, i64 -112
  br label %"_ZN4core3ptr181drop_in_place$LT$core..option..Option$LT$std..collections..hash..map..IntoIter$LT$nickel_lang_parser..identifier..LocIdent$C$nickel..customize..interface..FieldInterface$GT$$GT$$GT$17h65e427f971656e28E.exit.i"

"_ZN4core3ptr181drop_in_place$LT$core..option..Option$LT$std..collections..hash..map..IntoIter$LT$nickel_lang_parser..identifier..LocIdent$C$nickel..customize..interface..FieldInterface$GT$$GT$$GT$17h65e427f971656e28E.exit.i": ; preds = %_ZN9hashbrown3raw11TableLayout20calculate_layout_for17hb76643e6316511fcE.exit.i.i.i.i.i.i.i.i, %bb.ar
  %.sroa.5.sroa.0.0.i.i.i.i.i.i.i.i = phi i64 [ %i.eq, %_ZN9hashbrown3raw11TableLayout20calculate_layout_for17hb76643e6316511fcE.exit.i.i.i.i.i.i.i.i ], [ undef, %bb.ar ]
  %.sroa.5.sroa.4.0.i.i.i.i.i.i.i.i = phi ptr [ %i.er, %_ZN9hashbrown3raw11TableLayout20calculate_layout_for17hb76643e6316511fcE.exit.i.i.i.i.i.i.i.i ], [ undef, %bb.ar ]
  %.sroa.0.0.i.i.i.i.i.i.i.i = phi i64 [ 16, %_ZN9hashbrown3raw11TableLayout20calculate_layout_for17hb76643e6316511fcE.exit.i.i.i.i.i.i.i.i ], [ 0, %bb.ar ] ; 2 uses
  %i.es = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload1.i.i.i, i64 16
  %i.et = icmp sgt <16 x i8> %.val3.i.i.i.i.i.i.i, splat (i8 -1)
  %i.eu = getelementptr i8, ptr %.sroa.0.0.copyload1.i.i.i, i64 %.sroa.5.sroa.0.0.copyload.i.i.i
  %i.ev = getelementptr i8, ptr %i.eu, i64 1
  store i64 %.sroa.0.0.i.i.i.i.i.i.i.i, ptr %.sroa.2.0..sroa_idx, align 8, !alias.scope !59267, !noalias !59326
  store i64 %.sroa.5.sroa.0.0.i.i.i.i.i.i.i.i, ptr %.sroa.535.0..sroa_idx36.i, align 8, !alias.scope !59267, !noalias !59326
  store ptr %.sroa.5.sroa.4.0.i.i.i.i.i.i.i.i, ptr %.sroa.638.0..sroa_idx39.i, align 8, !alias.scope !59267, !noalias !59326
  store ptr %.sroa.0.0.copyload1.i.i.i, ptr %i.aa, align 8, !alias.scope !59267, !noalias !59326
  store ptr %i.es, ptr %i.ac, align 8, !alias.scope !59267, !noalias !59326
  store ptr %i.ev, ptr %.sroa.947.0..sroa_idx48.i, align 8, !alias.scope !59267, !noalias !59326
  store <16 x i1> %i.et, ptr %i.ab, align 8, !alias.scope !59267, !noalias !59326
  store i64 %.sroa.5.sroa.5.0.copyload.i.i.i, ptr %i.z, align 8, !alias.scope !59267, !noalias !59326
  br label %bb.e

.body:                                            ; preds = %bb.bb, %.body91, %bb.bh
  %.pn.pn = phi { ptr, i32 } [ %.pn.ph, %bb.bh ], [ %eh.lpad-body92, %.body91 ], [ %i.fh, %bb.bb ]
  invoke fastcc void @"_ZN4core3ptr358drop_in_place$LT$core..iter..adapters..flatten..FlatMap$LT$core..option..IntoIter$LT$nickel..customize..interface..ValueInterface$GT$$C$std..collections..hash..map..IntoIter$LT$nickel_lang_parser..identifier..LocIdent$C$nickel..customize..interface..FieldInterface$GT$$C$nickel..customize..CustomizableFields..extend_with..$u7b$$u7b$closure$u7d$$u7d$$GT$$GT$17hd6c54f6453654231E"(ptr noalias noundef align 8 dereferenceable(184) %i.p) #61
          to label %.body67 unwind label %bb.bg

bb.as:                                            ; preds = %_ZN4core3ops8function6FnOnce9call_once17hcedf2d63eac2c1bcE.exit.i.i
  %i.ew = getelementptr inbounds i8, ptr %i.ay, i64 -80
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !59269
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %.sroa.10.24..sroa_idx, ptr noundef nonnull align 8 dereferenceable(80) %i.ew, i64 80, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %i.o, ptr noundef nonnull align 8 dereferenceable(20) %i.ba, i64 20, i1 false)
  store i64 %.pre.i.i, ptr %i.n, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m)
  br i1 %or.cond.i.i.i.i.i, label %bb.au, label %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i, !prof !49

_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i: ; preds = %bb.as
  br i1 %i.ag, label %bb.az, label %bb.at

bb.at:                                            ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i
  call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #53, !noalias !59327
  %i.ex = call noundef align 4 ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef %i.af, i64 noundef range(i64 1, 9) 4) #53, !noalias !59327 ; 2 uses
  %i.ey = icmp eq ptr %i.ex, null
  br i1 %i.ey, label %bb.au, label %bb.az

bb.au:                                            ; preds = %bb.at, %bb.as
  %.sroa.4.0.ph.i.i.i = phi i64 [ 4, %bb.at ], [ 0, %bb.as ]
  invoke void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef %.sroa.4.0.ph.i.i.i, i64 %i.af, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @1401) #59
          to label %.noexc unwind label %bb.ay

.noexc:                                           ; preds = %bb.au
  unreachable

.loopexit138:                                     ; preds = %bb.aq, %"_ZN4core3ptr144drop_in_place$LT$core..option..Option$LT$$LP$nickel_lang_parser..identifier..LocIdent$C$nickel..customize..interface..FieldInterface$RP$$GT$$GT$17h6bab97a1c0aca5a3E.exit.i"
  invoke fastcc void @"_ZN4core3ptr358drop_in_place$LT$core..iter..adapters..flatten..FlatMap$LT$core..option..IntoIter$LT$nickel..customize..interface..ValueInterface$GT$$C$std..collections..hash..map..IntoIter$LT$nickel_lang_parser..identifier..LocIdent$C$nickel..customize..interface..FieldInterface$GT$$C$nickel..customize..CustomizableFields..extend_with..$u7b$$u7b$closure$u7d$$u7d$$GT$$GT$17hd6c54f6453654231E"(ptr noalias noundef align 8 dereferenceable(184) %i.p)
          to label %bb.aw unwind label %bb.av

.body67:                                          ; preds = %bb.bz, %bb.bs, %bb.av, %.body
  %.val38 = phi ptr [ %.val43, %.body ], [ %.val41, %bb.bs ], [ %.val38245, %bb.av ], [ %.val39, %bb.bz ]
  %.pn24 = phi { ptr, i32 } [ %.pn.pn, %.body ], [ %i.gn, %bb.bs ], [ %i.fb, %bb.av ], [ %i.gx, %bb.bz ]
  %.sroa.04.0 = phi i1 [ false, %.body ], [ false, %bb.bs ], [ %.sroa.04.1, %bb.av ], [ false, %bb.bz ] ; 2 uses
  %.sroa.0.0 = phi i1 [ true, %.body ], [ false, %bb.bs ], [ %.sroa.0.1, %bb.av ], [ false, %bb.bz ] ; 2 uses
  %.val37 = load i64, ptr %2, align 8             ; 2 uses
  %i.ez = icmp eq i64 %.val37, 0
  br i1 %i.ez, label %"_ZN4core3ptr57drop_in_place$LT$nickel_lang_core..program..FieldPath$GT$17hffeeb8db24aee35aE.exit", label %.split

.split:                                           ; preds = %.body67
  %i.fa = mul nuw i64 %.val37, 20
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val38, i64 noundef %i.fa, i64 noundef range(i64 1, -9223372036854775807) 4) #53
  br i1 %.sroa.04.0, label %bb.cd, label %"_ZN4core3ptr57drop_in_place$LT$nickel_lang_core..program..FieldPath$GT$17hffeeb8db24aee35aE.exit.thread"

bb.av:                                            ; preds = %"_ZN4core3ptr65drop_in_place$LT$nickel..customize..interface..FieldInterface$GT$17h7053ae3f74cf12d2E.exit.i.i71", %bb.bw, %"_ZN4core3ptr65drop_in_place$LT$nickel..customize..interface..FieldInterface$GT$17h7053ae3f74cf12d2E.exit.i.i", %bb.bp, %bb.bo, %bb.bl, %.loopexit138
  %.val38245 = phi ptr [ %.val39, %"_ZN4core3ptr65drop_in_place$LT$nickel..customize..interface..FieldInterface$GT$17h7053ae3f74cf12d2E.exit.i.i71" ], [ %.val39, %bb.bo ], [ %.val41, %"_ZN4core3ptr65drop_in_place$LT$nickel..customize..interface..FieldInterface$GT$17h7053ae3f74cf12d2E.exit.i.i" ], [ %.val41, %bb.bl ], [ %.val43, %.loopexit138 ], [ %.val41, %bb.bp ], [ %.val39, %bb.bw ]
  %.sroa.04.1 = phi i1 [ false, %"_ZN4core3ptr65drop_in_place$LT$nickel..customize..interface..FieldInterface$GT$17h7053ae3f74cf12d2E.exit.i.i71" ], [ true, %bb.bo ], [ false, %"_ZN4core3ptr65drop_in_place$LT$nickel..customize..interface..FieldInterface$GT$17h7053ae3f74cf12d2E.exit.i.i" ], [ true, %bb.bl ], [ false, %.loopexit138 ], [ false, %bb.bp ], [ false, %bb.bw ]
  %.sroa.0.1 = phi i1 [ false, %"_ZN4core3ptr65drop_in_place$LT$nickel..customize..interface..FieldInterface$GT$17h7053ae3f74cf12d2E.exit.i.i71" ], [ true, %bb.bo ], [ false, %"_ZN4core3ptr65drop_in_place$LT$nickel..customize..interface..FieldInterface$GT$17h7053ae3f74cf12d2E.exit.i.i" ], [ true, %bb.bl ], [ true, %.loopexit138 ], [ false, %bb.bp ], [ false, %bb.bw ]
  %i.fb = landingpad { ptr, i32 }
          cleanup
  br label %.body67

bb.aw:                                            ; preds = %.loopexit138
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p)
  %.val35 = load i64, ptr %2, align 8             ; 2 uses
  %i.fc = icmp eq i64 %.val35, 0
  br i1 %i.fc, label %"_ZN4core3ptr57drop_in_place$LT$nickel_lang_core..program..FieldPath$GT$17hffeeb8db24aee35aE.exit45", label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %i.fd = mul nuw i64 %.val35, 20
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val43, i64 noundef %i.fd, i64 noundef range(i64 1, -9223372036854775807) 4) #53
  br label %"_ZN4core3ptr57drop_in_place$LT$nickel_lang_core..program..FieldPath$GT$17hffeeb8db24aee35aE.exit45"

"_ZN4core3ptr57drop_in_place$LT$nickel_lang_core..program..FieldPath$GT$17hffeeb8db24aee35aE.exit": ; preds = %.body67
  br i1 %.sroa.04.0, label %bb.cd, label %"_ZN4core3ptr57drop_in_place$LT$nickel_lang_core..program..FieldPath$GT$17hffeeb8db24aee35aE.exit.thread"

"_ZN4core3ptr57drop_in_place$LT$nickel_lang_core..program..FieldPath$GT$17hffeeb8db24aee35aE.exit70": ; preds = %bb.cc, %bb.cb, %bb.bv, %bb.bu, %"_ZN4core3ptr57drop_in_place$LT$nickel_lang_core..program..FieldPath$GT$17hffeeb8db24aee35aE.exit45"
  ret void

"_ZN4core3ptr57drop_in_place$LT$nickel_lang_core..program..FieldPath$GT$17hffeeb8db24aee35aE.exit45": ; preds = %bb.ax, %bb.aw
  call fastcc void @"_ZN4core3ptr58drop_in_place$LT$nickel_lang_core..term..record..Field$GT$17heaed33bcf911817eE"(ptr noalias noundef align 8 dereferenceable(40) %1)
  br label %"_ZN4core3ptr57drop_in_place$LT$nickel_lang_core..program..FieldPath$GT$17hffeeb8db24aee35aE.exit70"

bb.ay:                                            ; preds = %bb.au
  %i.fe = landingpad { ptr, i32 }
          cleanup
  br label %bb.bh

bb.az:                                            ; preds = %bb.at, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i
  %.sroa.10.0.i.i.i = phi ptr [ inttoptr (i64 4 to ptr), %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i ], [ %i.ex, %bb.at ] ; 3 uses
  %.sroa.4.0.i.i.i = phi i64 [ 0, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i ], [ %.val44, %bb.at ] ; 3 uses
  %i.ff = icmp samesign ule i64 %.val44, %.sroa.4.0.i.i.i
  call void @llvm.assume(i1 %i.ff)
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %.sroa.10.0.i.i.i, ptr nonnull readonly align 4 %.val43, i64 %i.af, i1 false), !noalias !59328
  store i64 %.sroa.4.0.i.i.i, ptr %i.m, align 8
  store ptr %.sroa.10.0.i.i.i, ptr %.sroa.4109.0..sroa_idx, align 8
  store i64 %.val44, ptr %.sroa.5110.0..sroa_idx, align 8
  %i.fg = icmp eq i64 %.val44, %.sroa.4.0.i.i.i
  br i1 %i.fg, label %bb.ba, label %bb.bc

bb.ba:                                            ; preds = %bb.az
  invoke void @"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$8grow_one17h072b3d36556954afE"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.m, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @989)
          to label %._crit_edge unwind label %bb.be

._crit_edge:                                      ; preds = %bb.ba
  %.pre = load ptr, ptr %.sroa.4109.0..sroa_idx, align 8, !alias.scope !59329, !noalias !59330
  br label %bb.bc

bb.bb:                                            ; preds = %bb.bc
  %i.fh = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.bc:                                            ; preds = %._crit_edge, %bb.az
  %i.fi = phi ptr [ %.pre, %._crit_edge ], [ %.sroa.10.0.i.i.i, %bb.az ]
  %i.fj = getelementptr inbounds nuw [20 x i8], ptr %i.fi, i64 %.val44
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %i.fj, ptr noundef nonnull readonly align 4 dereferenceable(20) %i.o, i64 20, i1 false)
  store i64 %i.ah, ptr %.sroa.5110.0..sroa_idx, align 8, !alias.scope !59329, !noalias !59330
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %i.l, ptr noundef nonnull align 8 dereferenceable(88) %i.n, i64 88, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.k, ptr noundef nonnull align 8 dereferenceable(24) %i.m, i64 24, i1 false)
  invoke fastcc void @_ZN6nickel9customize18CustomizableFields11extend_with17h9378fbae81340e66E(ptr noalias noundef align 8 dereferenceable(96) %0, ptr noalias noundef align 8 captures(address) dereferenceable(88) %i.l, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.k)
          to label %bb.bd unwind label %bb.bb

bb.bd:                                            ; preds = %bb.bc
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n)
  %.pre.i.pre = load i64, ptr %.sroa.2.0..sroa_idx, align 8, !range !67, !alias.scope !59315, !noalias !59285
  br label %bb.d

bb.be:                                            ; preds = %bb.ba
  %i.fk = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.val33 = load i64, ptr %i.m, align 8           ; 2 uses
  %i.fl = icmp eq i64 %.val33, 0
  br i1 %i.fl, label %bb.bh, label %bb.bf

bb.bf:                                            ; preds = %bb.be
  %.val34 = load ptr, ptr %.sroa.4109.0..sroa_idx, align 8, !nonnull !34, !noundef !34
  %i.fm = mul nuw i64 %.val33, 20
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val34, i64 noundef %i.fm, i64 noundef range(i64 1, -9223372036854775807) 4) #53
  br label %bb.bh

bb.bg:                                            ; preds = %bb.ce, %bb.cf, %bb.bh, %.body
  %i.fn = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #60
  unreachable

bb.bh:                                            ; preds = %bb.ay, %bb.be, %bb.bf
  %.pn.ph = phi { ptr, i32 } [ %i.fe, %bb.ay ], [ %i.fk, %bb.be ], [ %i.fk, %bb.bf ]
  invoke fastcc void @"_ZN4core3ptr65drop_in_place$LT$nickel..customize..interface..FieldInterface$GT$17h7053ae3f74cf12d2E"(ptr noalias noundef align 8 dereferenceable(88) %i.n) #61
          to label %.body unwind label %bb.bg

bb.bi:                                            ; preds = %bb.b
  %i.fo = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.fp = load ptr, ptr %i.fo, align 8, !noundef !34 ; 2 uses
  %.not23 = icmp eq ptr %i.fp, null
  %i.fq = getelementptr inbounds nuw i8, ptr %i.fp, i64 296
  %.sroa.05.0 = select i1 %.not23, ptr @990, ptr %i.fq
  %i.fr = load i64, ptr %.sroa.05.0, align 8, !range !70, !noundef !34 ; 2 uses
  %i.fs = icmp ne i64 %i.fr, -9223372036854775805
  tail call void @llvm.assume(i1 %i.fs)
  %i.ft = icmp eq i64 %i.fr, -9223372036854775807
  br i1 %i.ft, label %bb.bm, label %bb.bj

bb.bj:                                            ; preds = %bb.bi
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q)
  %i.fu = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.val41 = load ptr, ptr %i.fu, align 8, !nonnull !34, !noundef !34 ; 6 uses
  %i.fv = getelementptr inbounds nuw i8, ptr %2, i64 16
  %.val42 = load i64, ptr %i.fv, align 8, !noundef !34 ; 5 uses
  %i.fw = mul i64 %.val42, 20                     ; 4 uses
  %or.cond.i.i.i.i.i48 = icmp ugt i64 %.val42, 461168601842738790
  br i1 %or.cond.i.i.i.i.i48, label %bb.bl, label %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i49, !prof !49

_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i49: ; preds = %bb.bj
  %i.fx = icmp eq i64 %i.fw, 0
  br i1 %i.fx, label %bb.bp, label %bb.bk

bb.bk:                                            ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i49
end_hunk_0
begin_hunk_1_@"_ZN83_$LT$nickel..input..InputOptions$LT$C$C$F$GT$$u20$as$u20$nickel..input..Prepare$GT$7prepare17h1002e097e5878156E":bb.a
  invoke fastcc void @"_ZN16nickel_lang_core7program17Program$LT$EC$GT$17prepare_eval_impl17h3d3b78486917b6c2E"(ptr noalias noundef nonnull align 8 captures(address) dereferenceable(32) %i.cg, ptr noalias noundef nonnull align 8 dereferenceable(792) %i.ct, i1 noundef zeroext false)
          to label %.noexc.i.i unwind label %.split.thread290.i.i, !noalias !65341

.noexc.i.i:                                       ; preds = %bb.p
  %i.fi = load i64, ptr %i.cg, align 8, !range !69, !noalias !65340, !noundef !34 ; 2 uses
  %.not.i.i.i = icmp eq i64 %i.fi, 7
  %i.fj = getelementptr inbounds nuw i8, ptr %i.cg, i64 8
  %.sroa.012.0.copyload.i.i.i = load ptr, ptr %i.fj, align 8, !noalias !65340 ; 2 uses
  %.sroa.5.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.cg, i64 16
  %.sroa.5.0.copyload.i.i.i = load ptr, ptr %.sroa.5.0..sroa_idx.i.i.i, align 8, !noalias !65340 ; 2 uses
  %.sroa.6.0..sroa_idx13.i.i.i = getelementptr inbounds nuw i8, ptr %i.cg, i64 24
  %.sroa.6.0.copyload.i.i.i = load ptr, ptr %.sroa.6.0..sroa_idx13.i.i.i, align 8, !noalias !65340 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cg), !noalias !65340
  br i1 %.not.i.i.i, label %bb.q, label %"_ZN16nickel_lang_core7program17Program$LT$EC$GT$34maybe_closurized_eval_record_spine17h3b49d2d95fc9df37E.exit.thread.i.i"

"_ZN16nickel_lang_core7program17Program$LT$EC$GT$34maybe_closurized_eval_record_spine17h3b49d2d95fc9df37E.exit.thread.i.i": ; preds = %.noexc.i.i
  %.sroa.2.0..sroa_idx21.i.i.i = getelementptr inbounds nuw i8, ptr %i.ch, i64 8
  store ptr %.sroa.012.0.copyload.i.i.i, ptr %.sroa.2.0..sroa_idx21.i.i.i, align 8, !noalias !65339
  %.sroa.322.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.ch, i64 16
  store ptr %.sroa.5.0.copyload.i.i.i, ptr %.sroa.322.0..sroa_idx.i.i.i, align 8, !noalias !65339
  %.sroa.423.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.ch, i64 24
  store ptr %.sroa.6.0.copyload.i.i.i, ptr %.sroa.423.0..sroa_idx.i.i.i, align 8, !noalias !65339
  br label %bb.s

bb.q:                                             ; preds = %.noexc.i.i
  invoke fastcc void @"_ZN16nickel_lang_core7program17Program$LT$EC$GT$34maybe_closurized_eval_record_spine12eval_guarded17hef0e4f70218c329fE"(ptr noalias noundef nonnull align 8 captures(address) dereferenceable(32) %i.ch, ptr noalias noundef nonnull align 8 dereferenceable(792) %i.ct, ptr noundef nonnull %.sroa.012.0.copyload.i.i.i, ptr noundef nonnull %.sroa.5.0.copyload.i.i.i, ptr noundef %.sroa.6.0.copyload.i.i.i, i1 noundef zeroext false)
          to label %"_ZN16nickel_lang_core7program17Program$LT$EC$GT$34maybe_closurized_eval_record_spine17h3b49d2d95fc9df37E.exit.i.i" unwind label %.split.thread290.i.i, !noalias !65341

bb.r:                                             ; preds = %"_ZN4core3ptr64drop_in_place$LT$nickel_lang_core..eval..value..ValueBlockRc$GT$17h1496bbc7960f880bE.exit.i.i.i", %.body.i.i
  br i1 %.sroa.029.2.i.i, label %bb.kb, label %.body.thread

.split.thread290.i.i:                             ; preds = %bb.q, %bb.p
  %lpad.thr_comm288.i.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.kb

.split.i.i:                                       ; preds = %bb.jl, %bb.jk, %bb.jh
  %lpad.thr_comm.split-lp289.i.i = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  br i1 %i.pg, label %bb.kb, label %.body.thread

"_ZN16nickel_lang_core7program17Program$LT$EC$GT$34maybe_closurized_eval_record_spine17h3b49d2d95fc9df37E.exit.i.i": ; preds = %bb.q
  %.pre.i.i = load i64, ptr %i.ch, align 8, !noalias !65339 ; 2 uses
  %.not.i.i = icmp eq i64 %.pre.i.i, 7
  br i1 %.not.i.i, label %bb.v, label %bb.s

bb.s:                                             ; preds = %"_ZN16nickel_lang_core7program17Program$LT$EC$GT$34maybe_closurized_eval_record_spine17h3b49d2d95fc9df37E.exit.i.i", %"_ZN16nickel_lang_core7program17Program$LT$EC$GT$34maybe_closurized_eval_record_spine17h3b49d2d95fc9df37E.exit.thread.i.i"
  %.sroa.020.0.copyload295.in.i.i = phi i64 [ %i.fi, %"_ZN16nickel_lang_core7program17Program$LT$EC$GT$34maybe_closurized_eval_record_spine17h3b49d2d95fc9df37E.exit.thread.i.i" ], [ %.pre.i.i, %"_ZN16nickel_lang_core7program17Program$LT$EC$GT$34maybe_closurized_eval_record_spine17h3b49d2d95fc9df37E.exit.i.i" ]
  %.sroa.521.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.ch, i64 8
  call void @llvm.experimental.noalias.scope.decl(metadata !65342)
  call void @llvm.experimental.noalias.scope.decl(metadata !65343)
  %i.fk = getelementptr inbounds nuw i8, ptr %i.ct, i64 168
  %i.fl = load ptr, ptr %i.fk, align 8, !alias.scope !65344, !noalias !65345, !noundef !34 ; 4 uses
  %.not.i.i.i.i = icmp eq ptr %i.fl, null
  br i1 %.not.i.i.i.i, label %bb.ka, label %bb.t

bb.t:                                             ; preds = %bb.s
  %.val.i.i.i.i.i = load i64, ptr %i.fl, align 8, !noalias !65346, !noundef !34 ; 2 uses
  %i.fm = icmp ne i64 %.val.i.i.i.i.i, 0
  call void @llvm.assume(i1 %i.fm)
  %i.fn = add i64 %.val.i.i.i.i.i, 1              ; 2 uses
  store i64 %i.fn, ptr %i.fl, align 8, !noalias !65346
  %i.fo = icmp eq i64 %i.fn, 0
  br i1 %i.fo, label %bb.u, label %bb.ka, !prof !37

bb.u:                                             ; preds = %bb.t
  call void @llvm.trap()
  unreachable

bb.v:                                             ; preds = %"_ZN16nickel_lang_core7program17Program$LT$EC$GT$34maybe_closurized_eval_record_spine17h3b49d2d95fc9df37E.exit.i.i"
  %i.fp = getelementptr inbounds nuw i8, ptr %i.ch, i64 8
  %i.fq = load ptr, ptr %i.fp, align 8, !noalias !65339, !nonnull !34, !noundef !34 ; 13 uses
  store ptr %i.fq, ptr %i.co, align 8, !noalias !65339
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cn), !noalias !65339
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cm), !noalias !65339
  invoke fastcc void @"_ZN138_$LT$nickel..customize..interface..ValueInterface$u20$as$u20$core..convert..From$LT$$RF$nickel_lang_core..eval..value..NickelValue$GT$$GT$4from17h21803901892ac0edE"(ptr noalias noundef align 8 captures(address) dereferenceable(48) %i.cm, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.co)
          to label %bb.ac unwind label %bb.ab, !noalias !65341

.body.i.i:                                        ; preds = %bb.ar, %bb.jy, %bb.jm, %bb.jc, %.body80.i.i.i, %bb.ik, %bb.ae, %bb.ab
  %.sroa.029.2.i.i = phi i1 [ true, %bb.ae ], [ false, %.body80.i.i.i ], [ true, %bb.jm ], [ false, %bb.ik ], [ true, %bb.ab ], [ true, %bb.ar ], [ false, %bb.jc ], [ true, %bb.jy ]
  %.pn48.i.i = phi { ptr, i32 } [ %.pn.pn.i.i.i, %bb.ae ], [ %.pn11.i.i.i, %.body80.i.i.i ], [ %i.adj, %bb.jm ], [ %i.aba, %bb.ik ], [ %i.gf, %bb.ab ], [ %i.hx, %bb.ar ], [ %.pn11.i.i.i, %bb.jc ], [ %.pn.ph.i.i, %bb.jy ] ; 2 uses
  %i.fr = ptrtoint ptr %i.fq to i64
  %i.fs = and i64 %i.fr, 3
  %..i.i.i = call i64 @llvm.umin.i64(i64 %i.fs, i64 2)
  switch i64 %..i.i.i, label %bb.r [
    i64 2, label %bb.w
    i64 0, label %bb.x
  ], !prof !47

bb.w:                                             ; preds = %.body.i.i
  invoke void @_ZN4core6result13unwrap_failed17h0501379eaec3e720E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @767, i64 noundef 43, ptr noundef nonnull align 1 %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @777, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @318) #59
          to label %.noexc.i unwind label %bb.jv, !noalias !65337

.noexc.i:                                         ; preds = %bb.w
  unreachable

bb.x:                                             ; preds = %.body.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !65347
  store ptr %i.fq, ptr %i.c, align 8, !noalias !65347
  %i.ft = load i64, ptr %i.fq, align 8, !noalias !65348, !noundef !34 ; 3 uses
  %i.fu = and i64 %i.ft, 72057594037927935
  %i.fv = add nsw i64 %i.fu, -1                   ; 3 uses
  %i.fw = and i64 %i.ft, 1080863910568919040
  %i.fx = icmp ult i64 %i.ft, 864691128455135232
  call void @llvm.assume(i1 %i.fx), !noalias !65334
  %i.fy = or i64 %i.fv, %i.fw
  store i64 %i.fy, ptr %i.fq, align 8, !noalias !65348
  %i.fz = icmp ugt i64 %i.fv, 72057594037927935
  br i1 %i.fz, label %bb.z, label %bb.y, !prof !37

bb.y:                                             ; preds = %bb.x
  %i.ga = icmp eq i64 %i.fv, 0
  br i1 %i.ga, label %bb.aa, label %"_ZN4core3ptr64drop_in_place$LT$nickel_lang_core..eval..value..ValueBlockRc$GT$17h1496bbc7960f880bE.exit.i.i.i"

bb.z:                                             ; preds = %bb.x
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !65349
  store ptr @1344, ptr %i.b, align 8, !noalias !65349
  %i.gb = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 1, ptr %i.gb, align 8, !noalias !65349
  %i.gc = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  store ptr null, ptr %i.gc, align 8, !noalias !65349
  %i.gd = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store ptr inttoptr (i64 8 to ptr), ptr %i.gd, align 8, !noalias !65349
  %i.ge = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store i64 0, ptr %i.ge, align 8, !noalias !65349
  invoke void @_ZN4core9panicking9panic_fmt17h92c8e5abe71dd8d1E(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.b, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1345) #59
          to label %.noexc13.i unwind label %bb.jv, !noalias !65337

.noexc13.i:                                       ; preds = %bb.z
  unreachable

bb.aa:                                            ; preds = %bb.y
  invoke void @_ZN16nickel_lang_core4eval5value12ValueBlockRc9drop_slow17ha5a2a8b11d052046E(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.c)
          to label %"_ZN4core3ptr64drop_in_place$LT$nickel_lang_core..eval..value..ValueBlockRc$GT$17h1496bbc7960f880bE.exit.i.i.i" unwind label %bb.jv, !noalias !65337

"_ZN4core3ptr64drop_in_place$LT$nickel_lang_core..eval..value..ValueBlockRc$GT$17h1496bbc7960f880bE.exit.i.i.i": ; preds = %bb.aa, %bb.y
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !65347
  br label %bb.r

bb.ab:                                            ; preds = %bb.jn, %bb.v
  %i.gf = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i

bb.ac:                                            ; preds = %bb.v
  call void @llvm.experimental.noalias.scope.decl(metadata !65350)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0.i.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cf), !noalias !65351
  call void @llvm.experimental.noalias.scope.decl(metadata !65352)
  %i.gg = call align 8 ptr @llvm.threadlocal.address.p0(ptr @"_ZN3std4hash6random11RandomState3new4KEYS29_$u7b$$u7b$constant$u7d$$u7d$28_$u7b$$u7b$closure$u7d$$u7d$3VAL17h3d0bd8071983845cE") ; 5 uses
  %i.gh = getelementptr inbounds nuw i8, ptr %i.gg, i64 16 ; 2 uses
  %i.gi = load i8, ptr %i.gh, align 8, !range !44, !noalias !65353, !noundef !34
  %i.gj = trunc nuw i8 %i.gi to i1
  br i1 %i.gj, label %._ZN4core3ops8function6FnOnce9call_once17h2017926fa805e40bE.exit_crit_edge.i.i.i.i.i.i, label %"_ZN3std3sys12thread_local6native4lazy20Storage$LT$T$C$D$GT$16get_or_init_slow17h63b4bd0ba0722244E.exit.i.i.i.i.i.i", !prof !40

._ZN4core3ops8function6FnOnce9call_once17h2017926fa805e40bE.exit_crit_edge.i.i.i.i.i.i: ; preds = %bb.ac
  %.pre.i.i.i.i.i.i = load i64, ptr %i.gg, align 8, !noalias !65354
  %.phi.trans.insert.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.gg, i64 8
  %.pre1.i.i.i.i.i.i = load i64, ptr %.phi.trans.insert.i.i.i.i.i.i, align 8, !noalias !65354
  br label %bb.ad

"_ZN3std3sys12thread_local6native4lazy20Storage$LT$T$C$D$GT$16get_or_init_slow17h63b4bd0ba0722244E.exit.i.i.i.i.i.i": ; preds = %bb.ac
  %i.gk = invoke { i64, i64 } @_ZN3std3sys6random5linux19hashmap_random_keys17he133c8f345d0b53aE()
          to label %.noexc.i.i.i unwind label %bb.ar, !noalias !65355 ; 2 uses

.noexc.i.i.i:                                     ; preds = %"_ZN3std3sys12thread_local6native4lazy20Storage$LT$T$C$D$GT$16get_or_init_slow17h63b4bd0ba0722244E.exit.i.i.i.i.i.i"
  %i.gl = extractvalue { i64, i64 } %i.gk, 0
  %i.gm = extractvalue { i64, i64 } %i.gk, 1      ; 2 uses
  %i.gn = getelementptr inbounds nuw i8, ptr %i.gg, i64 8
  store i64 %i.gm, ptr %i.gn, align 8, !noalias !65356
  store i8 1, ptr %i.gh, align 8, !noalias !65356
  br label %bb.ad

bb.ad:                                            ; preds = %.noexc.i.i.i, %._ZN4core3ops8function6FnOnce9call_once17h2017926fa805e40bE.exit_crit_edge.i.i.i.i.i.i
  %.pre1.i.i14.i.i.i.i = phi i64 [ %.pre1.i.i.i.i.i.i, %._ZN4core3ops8function6FnOnce9call_once17h2017926fa805e40bE.exit_crit_edge.i.i.i.i.i.i ], [ %i.gm, %.noexc.i.i.i ] ; 2 uses
  %i.go = phi i64 [ %.pre.i.i.i.i.i.i, %._ZN4core3ops8function6FnOnce9call_once17h2017926fa805e40bE.exit_crit_edge.i.i.i.i.i.i ], [ %i.gl, %.noexc.i.i.i ] ; 3 uses
  %i.gp = add i64 %i.go, 1
  %i.gq = add i64 %i.go, 2
  store i64 %i.gq, ptr %i.gg, align 8, !noalias !65357
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.cf, ptr noundef nonnull align 8 dereferenceable(32) @1, i64 32, i1 false), !noalias !65351
  %.sroa.433.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.cf, i64 32
  store i64 %i.go, ptr %.sroa.433.0..sroa_idx.i.i.i, align 8, !noalias !65351
  %.sroa.534.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.cf, i64 40
  store i64 %.pre1.i.i14.i.i.i.i, ptr %.sroa.534.0..sroa_idx.i.i.i, align 8, !noalias !65351
  %i.gr = getelementptr inbounds nuw i8, ptr %i.cf, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.gr, ptr noundef nonnull align 8 dereferenceable(32) @1, i64 32, i1 false), !noalias !65351
  %.sroa.45.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.cf, i64 80
  store i64 %i.gp, ptr %.sroa.45.0..sroa_idx.i.i.i.i, align 8, !alias.scope !65352, !noalias !65351
  %.sroa.56.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.cf, i64 88
  store i64 %.pre1.i.i14.i.i.i.i, ptr %.sroa.56.0..sroa_idx.i.i.i.i, align 8, !alias.scope !65352, !noalias !65351
  %.sroa.029.0.copyload.i.i.i = load ptr, ptr %i.cm, align 8, !alias.scope !65350, !noalias !65358, !nonnull !34, !noundef !34 ; 6 uses
  %.sroa.2.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.cm, i64 8
  %.sroa.2.0.copyload.i.i.i = load i64, ptr %.sroa.2.0..sroa_idx.i.i.i, align 8, !alias.scope !65350, !noalias !65358 ; 4 uses
  %.sroa.330.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.cm, i64 24
  %.sroa.330.0.copyload.i.i.i = load i64, ptr %.sroa.330.0..sroa_idx.i.i.i, align 8, !alias.scope !65350, !noalias !65358 ; 3 uses
  %.val3.i.i.i.i.i.i = load <16 x i8>, ptr %.sroa.029.0.copyload.i.i.i, align 16, !noalias !65359
  %i.gs = icmp eq i64 %.sroa.2.0.copyload.i.i.i, 0
  br i1 %i.gs, label %bb.ag, label %_ZN9hashbrown3raw11TableLayout20calculate_layout_for17hb76643e6316511fcE.exit.i.i.i.i.i.i.i

_ZN9hashbrown3raw11TableLayout20calculate_layout_for17hb76643e6316511fcE.exit.i.i.i.i.i.i.i: ; preds = %bb.ad
  %i.gt = mul i64 %.sroa.2.0.copyload.i.i.i, -112
  %3 = mul i64 %.sroa.2.0.copyload.i.i.i, 113
  %i.gu = add i64 %3, 129
  %4 = getelementptr i8, ptr %.sroa.029.0.copyload.i.i.i, i64 %i.gt
  %i.gv = getelementptr i8, ptr %4, i64 -112
  br label %bb.ag

bb.ae:                                            ; preds = %bb.ai, %bb.af
  %.pn.pn.i.i.i = phi { ptr, i32 } [ %.pn.i.i.i, %bb.ai ], [ %i.gw, %bb.af ]
  invoke fastcc void @"_ZN4core3ptr58drop_in_place$LT$nickel..customize..CustomizableFields$GT$17hbf461f3b100f7c10E"(ptr noalias noundef align 8 dereferenceable(96) %i.cf) #61
          to label %.body.i.i unwind label %bb.aq, !noalias !65355

bb.af:                                            ; preds = %"_ZN99_$LT$hashbrown..raw..RawIntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hb22e3441712241a0E.exit.thread.i.i.i"
  %i.gw = landingpad { ptr, i32 }
          cleanup
  br label %bb.ae

bb.ag:                                            ; preds = %_ZN9hashbrown3raw11TableLayout20calculate_layout_for17hb76643e6316511fcE.exit.i.i.i.i.i.i.i, %bb.ad
  %.sroa.5.sroa.0.0.i.i.i.i.i.i.i = phi i64 [ %i.gu, %_ZN9hashbrown3raw11TableLayout20calculate_layout_for17hb76643e6316511fcE.exit.i.i.i.i.i.i.i ], [ undef, %bb.ad ]
  %.sroa.5.sroa.4.0.i.i.i.i.i.i.i = phi ptr [ %i.gv, %_ZN9hashbrown3raw11TableLayout20calculate_layout_for17hb76643e6316511fcE.exit.i.i.i.i.i.i.i ], [ undef, %bb.ad ]
  %.sroa.0.0.i.i.i.i.i.i.i = phi i64 [ 16, %_ZN9hashbrown3raw11TableLayout20calculate_layout_for17hb76643e6316511fcE.exit.i.i.i.i.i.i.i ], [ 0, %bb.ad ]
  %i.gx = getelementptr inbounds nuw i8, ptr %.sroa.029.0.copyload.i.i.i, i64 16 ; 2 uses
  %i.gy = icmp sgt <16 x i8> %.val3.i.i.i.i.i.i, splat (i8 -1) ; 2 uses
  %i.gz = getelementptr i8, ptr %.sroa.029.0.copyload.i.i.i, i64 %.sroa.2.0.copyload.i.i.i
  %i.ha = getelementptr i8, ptr %i.gz, i64 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ce), !noalias !65351
  store i64 %.sroa.0.0.i.i.i.i.i.i.i, ptr %i.ce, align 8, !noalias !65351
  %.sroa.422.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.ce, i64 8
  store i64 %.sroa.5.sroa.0.0.i.i.i.i.i.i.i, ptr %.sroa.422.0..sroa_idx.i.i.i, align 8, !noalias !65351
  %.sroa.523.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.ce, i64 16
  store ptr %.sroa.5.sroa.4.0.i.i.i.i.i.i.i, ptr %.sroa.523.0..sroa_idx.i.i.i, align 8, !noalias !65351
  %.sroa.624.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.ce, i64 24 ; 2 uses
  store ptr %.sroa.029.0.copyload.i.i.i, ptr %.sroa.624.0..sroa_idx.i.i.i, align 8, !noalias !65351
  %.sroa.725.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.ce, i64 32 ; 2 uses
  store ptr %i.gx, ptr %.sroa.725.0..sroa_idx.i.i.i, align 8, !noalias !65351
  %.sroa.826.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.ce, i64 40
  store ptr %i.ha, ptr %.sroa.826.0..sroa_idx.i.i.i, align 8, !noalias !65351
  %.sroa.927.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.ce, i64 48 ; 4 uses
  store <16 x i1> %i.gy, ptr %.sroa.927.0..sroa_idx.i.i.i, align 8, !noalias !65351
  %.sroa.11.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.ce, i64 56 ; 4 uses
  store i64 %.sroa.330.0.copyload.i.i.i, ptr %.sroa.11.0..sroa_idx.i.i.i, align 8, !noalias !65351
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.8.i.i.i)
  %i.hb = icmp eq i64 %.sroa.330.0.copyload.i.i.i, 0
  br i1 %i.hb, label %"_ZN99_$LT$hashbrown..raw..RawIntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hb22e3441712241a0E.exit.thread.i.i.i", label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.ag
  %.sroa.927.0..sroa_idx.promoted.cast.i.i.i = bitcast <16 x i1> %i.gy to i16
  %.sroa.4.0..sroa_idx.i54.i.i = getelementptr inbounds nuw i8, ptr %i.cd, i64 8
  %.sroa.414.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.cc, i64 8
  %.sroa.515.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.cc, i64 16
  br label %bb.ah

bb.ah:                                            ; preds = %bb.an, %.lr.ph.i.i.i
  %i.hc = phi i64 [ %.sroa.330.0.copyload.i.i.i, %.lr.ph.i.i.i ], [ %i.hp, %bb.an ]
  %i.hd = phi i16 [ %.sroa.927.0..sroa_idx.promoted.cast.i.i.i, %.lr.ph.i.i.i ], [ %i.hm, %bb.an ] ; 2 uses
  %.pre.i.i4549.i.i.i = phi ptr [ %.sroa.029.0.copyload.i.i.i, %.lr.ph.i.i.i ], [ %.pre.i.i44.i.i.i, %bb.an ] ; 2 uses
  %.promoted15.i.i4748.i.i.i = phi ptr [ %i.gx, %.lr.ph.i.i.i ], [ %.promoted15.i.i46.i.i.i, %bb.an ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !65360)
  call void @llvm.experimental.noalias.scope.decl(metadata !65361)
  %.not13.i.i.i.i.i = icmp eq i16 %i.hd, 0
  br i1 %.not13.i.i.i.i.i, label %.lr.ph.i.i.i.i.i, label %"_ZN99_$LT$hashbrown..raw..RawIntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hb22e3441712241a0E.exit.i.i.i"

._crit_edge.i.i.i.i.i:                            ; preds = %.lr.ph.i.i.i.i.i
  store ptr %i.hi, ptr %.sroa.725.0..sroa_idx.i.i.i, align 8, !alias.scope !65362, !noalias !65363
  store ptr %i.hh, ptr %.sroa.624.0..sroa_idx.i.i.i, align 8, !alias.scope !65362, !noalias !65363
  br label %"_ZN99_$LT$hashbrown..raw..RawIntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hb22e3441712241a0E.exit.i.i.i"

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.ah, %.lr.ph.i.i.i.i.i
  %i.he = phi ptr [ %i.hi, %.lr.ph.i.i.i.i.i ], [ %.promoted15.i.i4748.i.i.i, %bb.ah ] ; 2 uses
  %i.hf = phi ptr [ %i.hh, %.lr.ph.i.i.i.i.i ], [ %.pre.i.i4549.i.i.i, %bb.ah ]
  %.val11.i.i.i.i.i = load <16 x i8>, ptr %i.he, align 16, !noalias !65364
  %i.hg = icmp sgt <16 x i8> %.val11.i.i.i.i.i, splat (i8 -1)
  %i.hh = getelementptr inbounds i8, ptr %i.hf, i64 -1792 ; 3 uses
  %i.hi = getelementptr inbounds nuw i8, ptr %i.he, i64 16 ; 3 uses
  %.cast.i.i.i.i.i = bitcast <16 x i1> %i.hg to i16 ; 2 uses
  %.not.i.i.i.i.i = icmp eq i16 %.cast.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i, label %.lr.ph.i.i.i.i.i, label %._crit_edge.i.i.i.i.i

bb.ai:                                            ; preds = %bb.ap, %bb.aj
  %.pn.i.i.i = phi { ptr, i32 } [ %i.hv, %bb.ap ], [ %i.hr, %bb.aj ]
  invoke fastcc void @"_ZN4core3ptr153drop_in_place$LT$std..collections..hash..map..IntoIter$LT$nickel_lang_parser..identifier..LocIdent$C$nickel..customize..interface..FieldInterface$GT$$GT$17hfabac9689aa21878E"(ptr noalias noundef align 8 dereferenceable(64) %i.ce) #61
          to label %bb.ae unwind label %bb.aq, !noalias !65355

"_ZN99_$LT$hashbrown..raw..RawIntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hb22e3441712241a0E.exit.i.i.i": ; preds = %._crit_edge.i.i.i.i.i, %bb.ah
  %.promoted15.i.i46.i.i.i = phi ptr [ %i.hi, %._crit_edge.i.i.i.i.i ], [ %.promoted15.i.i4748.i.i.i, %bb.ah ]
  %.pre.i.i44.i.i.i = phi ptr [ %i.hh, %._crit_edge.i.i.i.i.i ], [ %.pre.i.i4549.i.i.i, %bb.ah ] ; 2 uses
  %.lcssa.i.i.i.i.i = phi i16 [ %.cast.i.i.i.i.i, %._crit_edge.i.i.i.i.i ], [ %i.hd, %bb.ah ] ; 3 uses
  %i.hj = add i16 %.lcssa.i.i.i.i.i, -1
  %i.hk = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i.i.i.i.i, i1 true)
  %i.hl = zext nneg i16 %i.hk to i64
  %i.hm = and i16 %i.hj, %.lcssa.i.i.i.i.i        ; 4 uses
  %i.hn = sub nsw i64 0, %i.hl
  %i.ho = getelementptr inbounds [112 x i8], ptr %.pre.i.i44.i.i.i, i64 %i.hn ; 3 uses
  %i.hp = add i64 %i.hc, -1                       ; 5 uses
  %i.hq = getelementptr inbounds i8, ptr %i.ho, i64 -112
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0.i.i.i, ptr noundef nonnull align 8 dereferenceable(24) %i.hq, i64 24, i1 false), !noalias !65355
  %.sroa.5.0..sroa_idx.i55.i.i = getelementptr inbounds i8, ptr %i.ho, i64 -88
  %.sroa.5.0.copyload.i56.i.i = load i64, ptr %.sroa.5.0..sroa_idx.i55.i.i, align 8, !noalias !65365 ; 2 uses
  %.sroa.8.0..sroa_idx.i.i.i = getelementptr inbounds i8, ptr %i.ho, i64 -80
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %.sroa.8.i.i.i, ptr noundef nonnull align 8 dereferenceable(80) %.sroa.8.0..sroa_idx.i.i.i, i64 80, i1 false), !noalias !65365
  %.not.i57.i.i = icmp eq i64 %.sroa.5.0.copyload.i56.i.i, -9223372036854775808
  br i1 %.not.i57.i.i, label %"_ZN99_$LT$hashbrown..raw..RawIntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hb22e3441712241a0E.exit.thread.sink.split.i.i.i", label %bb.ak

"_ZN99_$LT$hashbrown..raw..RawIntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hb22e3441712241a0E.exit.thread.sink.split.i.i.i": ; preds = %bb.an, %"_ZN99_$LT$hashbrown..raw..RawIntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hb22e3441712241a0E.exit.i.i.i"
  %.lcssa70.sink.i.i.i = phi i64 [ 0, %bb.an ], [ %i.hp, %"_ZN99_$LT$hashbrown..raw..RawIntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hb22e3441712241a0E.exit.i.i.i" ]
  store i16 %i.hm, ptr %.sroa.927.0..sroa_idx.i.i.i, align 8, !alias.scope !65362, !noalias !65363
  store i64 %.lcssa70.sink.i.i.i, ptr %.sroa.11.0..sroa_idx.i.i.i, align 8, !alias.scope !65360, !noalias !65363
  br label %"_ZN99_$LT$hashbrown..raw..RawIntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hb22e3441712241a0E.exit.thread.i.i.i"

"_ZN99_$LT$hashbrown..raw..RawIntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hb22e3441712241a0E.exit.thread.i.i.i": ; preds = %"_ZN99_$LT$hashbrown..raw..RawIntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hb22e3441712241a0E.exit.thread.sink.split.i.i.i", %bb.ag
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.8.i.i.i)
  invoke fastcc void @"_ZN4core3ptr153drop_in_place$LT$std..collections..hash..map..IntoIter$LT$nickel_lang_parser..identifier..LocIdent$C$nickel..customize..interface..FieldInterface$GT$$GT$17hfabac9689aa21878E"(ptr noalias noundef align 8 dereferenceable(64) %i.ce)
          to label %bb.as unwind label %bb.af, !noalias !65355

bb.aj:                                            ; preds = %bb.am
  %i.hr = landingpad { ptr, i32 }
          cleanup
  store i16 %i.hm, ptr %.sroa.927.0..sroa_idx.i.i.i, align 8, !alias.scope !65362, !noalias !65363
  store i64 %i.hp, ptr %.sroa.11.0..sroa_idx.i.i.i, align 8, !alias.scope !65360, !noalias !65363
  br label %bb.ai

bb.ak:                                            ; preds = %"_ZN99_$LT$hashbrown..raw..RawIntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hb22e3441712241a0E.exit.i.i.i"
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cd), !noalias !65351
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %.sroa.4.0..sroa_idx.i54.i.i, ptr noundef nonnull align 8 dereferenceable(80) %.sroa.8.i.i.i, i64 80, i1 false), !noalias !65351
  store i64 %.sroa.5.0.copyload.i56.i.i, ptr %i.cd, align 8, !noalias !65351
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cc), !noalias !65351
  call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #53, !noalias !65355
  %i.hs = call noundef align 4 dereferenceable_or_null(20) ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef 20, i64 noundef 4) #53, !noalias !65355 ; 3 uses
  %i.ht = icmp eq ptr %i.hs, null
  br i1 %i.ht, label %bb.al, label %bb.am, !prof !37

bb.al:                                            ; preds = %bb.ak
  store i16 %i.hm, ptr %.sroa.927.0..sroa_idx.i.i.i, align 8, !alias.scope !65362, !noalias !65363
  store i64 %i.hp, ptr %.sroa.11.0..sroa_idx.i.i.i, align 8, !alias.scope !65360, !noalias !65363
  invoke void @_ZN5alloc5alloc18handle_alloc_error17h8f86e24af4223f3dE(i64 noundef 4, i64 noundef 20) #59
          to label %bb.ao unwind label %bb.ap, !noalias !65355

bb.am:                                            ; preds = %bb.ak
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %i.hs, ptr noundef nonnull align 8 dereferenceable(20) %.sroa.0.i.i.i, i64 20, i1 false), !noalias !65355
  store i64 1, ptr %i.cc, align 8, !noalias !65351
  store ptr %i.hs, ptr %.sroa.414.0..sroa_idx.i.i.i, align 8, !noalias !65351
  store i64 1, ptr %.sroa.515.0..sroa_idx.i.i.i, align 8, !noalias !65351
  invoke fastcc void @_ZN6nickel9customize18CustomizableFields11extend_with17h9378fbae81340e66E(ptr noalias noundef align 8 dereferenceable(96) %i.cf, ptr noalias noundef align 8 captures(address) dereferenceable(88) %i.cd, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.cc)
          to label %bb.an unwind label %bb.aj, !noalias !65355

bb.an:                                            ; preds = %bb.am
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cc), !noalias !65351
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cd), !noalias !65351
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.8.i.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.8.i.i.i)
  %i.hu = icmp eq i64 %i.hp, 0
  br i1 %i.hu, label %"_ZN99_$LT$hashbrown..raw..RawIntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hb22e3441712241a0E.exit.thread.sink.split.i.i.i", label %bb.ah

bb.ao:                                            ; preds = %bb.al
  unreachable

bb.ap:                                            ; preds = %bb.al
  %i.hv = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr65drop_in_place$LT$nickel..customize..interface..FieldInterface$GT$17h7053ae3f74cf12d2E"(ptr noalias noundef align 8 dereferenceable(88) %i.cd) #61
          to label %bb.ai unwind label %bb.aq, !noalias !65355

bb.aq:                                            ; preds = %bb.ar, %bb.ap, %bb.ai, %bb.ae
  %i.hw = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #60, !noalias !65355
  unreachable

bb.ar:                                            ; preds = %"_ZN3std3sys12thread_local6native4lazy20Storage$LT$T$C$D$GT$16get_or_init_slow17h63b4bd0ba0722244E.exit.i.i.i.i.i.i"
  %i.hx = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_ZN9hashbrown3raw13RawTableInner16drop_inner_table17h726dcb279a4f63e4E(ptr noalias noundef nonnull readonly align 8 dereferenceable(48) %i.cm)
          to label %.body.i.i unwind label %bb.aq

bb.as:                                            ; preds = %"_ZN99_$LT$hashbrown..raw..RawIntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hb22e3441712241a0E.exit.thread.i.i.i"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ce), !noalias !65351
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %i.cn, ptr noundef nonnull align 8 dereferenceable(96) %i.cf, i64 96, i1 false), !noalias !65366
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cf), !noalias !65351
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.i.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cm), !noalias !65339
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cl), !noalias !65339
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i74) ]
  call void @llvm.experimental.noalias.scope.decl(metadata !65367)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6.sroa.2.i.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cb), !noalias !65368
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ca), !noalias !65368
  invoke fastcc void @"_ZN92_$LT$nickel..customize..CustomizeOptions$u20$as$u20$clap_builder..derive..CommandFactory$GT$7command17hfe596f6c86cedc45E"(ptr noalias noundef align 8 captures(address) dereferenceable(776) %i.ca)
          to label %.noexc62.i.i unwind label %bb.eh, !noalias !65341

.noexc62.i.i:                                     ; preds = %bb.as
  call void @llvm.experimental.noalias.scope.decl(metadata !65369)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.by), !noalias !65370
  call void @llvm.experimental.noalias.scope.decl(metadata !65371)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bw), !noalias !65372
  call void @llvm.experimental.noalias.scope.decl(metadata !65373)
  %.idx.i.i = mul nuw nsw i64 %.val12.i, 24       ; 3 uses
  call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #53, !noalias !65374
  %i.hy = call noundef align 8 ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef %.idx.i.i, i64 noundef range(i64 1, 9) 8) #53, !noalias !65374 ; 7 uses
  %i.hz = icmp eq ptr %i.hy, null
  br i1 %i.hz, label %bb.at, label %.preheader.i.i.i.i.i.i.i.i.i.i.i.i

bb.at:                                            ; preds = %.noexc62.i.i
  invoke void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef 8, i64 %.idx.i.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @758) #59
          to label %.noexc.i.i.i.i unwind label %.body.thread13.i.i.i.i, !noalias !65375

end_hunk_1
begin_hunk_2_@"_ZN84_$LT$nickel_lang_vector..vector..Node$LT$T$C$_$GT$$u20$as$u20$core..clone..Clone$GT$5clone17he97e7a23bf195e15E":bb.a
  %.val.i2 = load ptr, ptr %i.ap, align 8, !alias.scope !65801, !noalias !65803, !nonnull !34, !noundef !34 ; 4 uses
  %i.aq = ptrtoint ptr %.val.i2 to i64
  %i.ar = and i64 %i.aq, 3
  %..i.i = tail call i64 @llvm.umin.i64(i64 %i.ar, i64 2)
  switch i64 %..i.i, label %"_ZN81_$LT$nickel_lang_core..eval..value..NickelValue$u20$as$u20$core..clone..Clone$GT$5clone17h7dff85222f529735E.exit.i" [
    i64 2, label %bb.d
    i64 0, label %bb.e
  ], !prof !47

bb.d:                                             ; preds = %.lr.ph.i1
  invoke void @_ZN4core6result13unwrap_failed17h0501379eaec3e720E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @767, i64 noundef 43, ptr noundef nonnull align 1 %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @777, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @318) #59
          to label %.noexc.i unwind label %bb.g, !noalias !65802

.noexc.i:                                         ; preds = %bb.d
  unreachable

bb.e:                                             ; preds = %.lr.ph.i1
  %i.as = load i64, ptr %.val.i2, align 8, !noalias !65802, !noundef !34 ; 3 uses
  %i.at = and i64 %i.as, 72057594037927935        ; 3 uses
  %i.au = icmp ne i64 %i.at, 0
  tail call void @llvm.assume(i1 %i.au)
  %i.av = add nuw nsw i64 %i.at, 1
  %i.aw = and i64 %i.as, 1080863910568919040
  %i.ax = icmp ult i64 %i.as, 864691128455135232
  tail call void @llvm.assume(i1 %i.ax)
  %i.ay = or i64 %i.av, %i.aw
  store i64 %i.ay, ptr %.val.i2, align 8, !noalias !65802
  %i.az = icmp eq i64 %i.at, 72057594037927935
  br i1 %i.az, label %bb.f, label %"_ZN81_$LT$nickel_lang_core..eval..value..NickelValue$u20$as$u20$core..clone..Clone$GT$5clone17h7dff85222f529735E.exit.i", !prof !37

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !65802
  store ptr @1344, ptr %i.b, align 8, !noalias !65802
  %i.ba = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 1, ptr %i.ba, align 8, !noalias !65802
  %i.bb = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  store ptr null, ptr %i.bb, align 8, !noalias !65802
  %i.bc = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store ptr inttoptr (i64 8 to ptr), ptr %i.bc, align 8, !noalias !65802
  %i.bd = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store i64 0, ptr %i.bd, align 8, !noalias !65802
  invoke void @_ZN4core9panicking9panic_fmt17h92c8e5abe71dd8d1E(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.b, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1345) #59
          to label %.noexc5.i unwind label %bb.g, !noalias !65802

.noexc5.i:                                        ; preds = %bb.f
  unreachable

bb.g:                                             ; preds = %bb.f, %bb.d
  %i.be = landingpad { ptr, i32 }
          cleanup
  %i.bf = load i64, ptr %i.aj, align 8, !alias.scope !65804, !noalias !65802, !noundef !34 ; 2 uses
  %i.bg = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %i.bf
  %i.bh = sub i64 %i.ao, %i.bf
  invoke fastcc void @"_ZN4core3ptr73drop_in_place$LT$$u5b$nickel_lang_core..eval..value..NickelValue$u5d$$GT$17h60f6974b28fae480E"(ptr noalias noundef nonnull readonly align 8 %i.bg, i64 noundef %i.bh)
          to label %"_ZN4core3ptr119drop_in_place$LT$imbl_sized_chunks..sized_chunk..Chunk$LT$nickel_lang_core..eval..value..NickelValue$C$32_usize$GT$$GT$17hce55fc27b446ed5bE.exit.i" unwind label %bb.h, !noalias !65802

"_ZN81_$LT$nickel_lang_core..eval..value..NickelValue$u20$as$u20$core..clone..Clone$GT$5clone17h7dff85222f529735E.exit.i": ; preds = %bb.e, %.lr.ph.i1
  %i.bi = add nuw nsw i64 %i.ao, 1                ; 3 uses
  %i.bj = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %i.ao
  store ptr %.val.i2, ptr %i.bj, align 8, !noalias !65802
  store i64 %i.bi, ptr %i.ak, align 8, !noalias !65802
  %exitcond.not.i3 = icmp eq i64 %i.bi, %i.am
  br i1 %exitcond.not.i3, label %"_ZN89_$LT$imbl_sized_chunks..sized_chunk..Chunk$LT$A$C$_$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h442e4bb8c69340b4E.exit", label %.lr.ph.i1

bb.h:                                             ; preds = %bb.g
  %i.bk = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #60, !noalias !65802
  unreachable

"_ZN4core3ptr119drop_in_place$LT$imbl_sized_chunks..sized_chunk..Chunk$LT$nickel_lang_core..eval..value..NickelValue$C$32_usize$GT$$GT$17hce55fc27b446ed5bE.exit.i": ; preds = %bb.g
  resume { ptr, i32 } %i.be

"_ZN89_$LT$imbl_sized_chunks..sized_chunk..Chunk$LT$A$C$_$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h442e4bb8c69340b4E.exit": ; preds = %"_ZN81_$LT$nickel_lang_core..eval..value..NickelValue$u20$as$u20$core..clone..Clone$GT$5clone17h7dff85222f529735E.exit.i", %bb.c
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(272) %i.bl, ptr noundef nonnull align 8 dereferenceable(272) %i.c, i64 272, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !65802
  br label %bb.i

bb.i:                                             ; preds = %"_ZN89_$LT$imbl_sized_chunks..sized_chunk..Chunk$LT$A$C$_$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h442e4bb8c69340b4E.exit", %"_ZN89_$LT$imbl_sized_chunks..sized_chunk..Chunk$LT$A$C$_$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h363d6a3f2a0277edE.exit"
  %storemerge = phi i64 [ 0, %"_ZN89_$LT$imbl_sized_chunks..sized_chunk..Chunk$LT$A$C$_$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h442e4bb8c69340b4E.exit" ], [ 1, %"_ZN89_$LT$imbl_sized_chunks..sized_chunk..Chunk$LT$A$C$_$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h363d6a3f2a0277edE.exit" ]
  store i64 %storemerge, ptr %0, align 8
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @"_ZN85_$LT$nickel_lang_core..cache..CacheError$LT$E$C$S$GT$$u20$as$u20$core..fmt..Debug$GT$3fmt17h3805e4cce6d279b9E"(ptr noalias noundef readonly align 1 captures(address, read_provenance) dereferenceable(1) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = load i8, ptr %0, align 1, !range !64, !noundef !34
  %.not = icmp eq i8 %i.c, 3
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %0, ptr %i.a, align 8
  %i.d = call noundef zeroext i1 @_ZN4core3fmt9Formatter26debug_struct_field1_finish17h8a12e96a3fe33b10E(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @1389, i64 noundef 17, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @1390, i64 noundef 4, ptr noundef nonnull align 1 %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @1388)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr %0, ptr %i.b, align 8
  %i.e = call noundef zeroext i1 @_ZN4core3fmt9Formatter25debug_tuple_field1_finish17h8f1f32fd9454ecadE(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @312, i64 noundef 5, ptr noundef nonnull align 1 %i.b, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @860)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.sroa.0.0.in = phi i1 [ %i.d, %bb.b ], [ %i.e, %bb.c ]
  ret i1 %.sroa.0.0.in
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @"_ZN85_$LT$nickel_lang_core..cache..CacheError$LT$E$C$S$GT$$u20$as$u20$core..fmt..Debug$GT$3fmt17h7f0ca6408db0bdcaE"(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(16) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = load i64, ptr %0, align 8, !range !113, !noundef !34
  %.not = icmp eq i64 %i.c, 8
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %0, ptr %i.a, align 8
  %i.d = call noundef zeroext i1 @_ZN4core3fmt9Formatter26debug_struct_field1_finish17h8a12e96a3fe33b10E(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @1389, i64 noundef 17, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @1390, i64 noundef 4, ptr noundef nonnull align 1 %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @1391)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr %0, ptr %i.b, align 8
  %i.e = call noundef zeroext i1 @_ZN4core3fmt9Formatter25debug_tuple_field1_finish17h8f1f32fd9454ecadE(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @312, i64 noundef 5, ptr noundef nonnull align 1 %i.b, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @860)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.sroa.0.0.in = phi i1 [ %i.d, %bb.b ], [ %i.e, %bb.c ]
  ret i1 %.sroa.0.0.in
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @"_ZN86_$LT$core..option..Option$LT$T$GT$$u20$as$u20$nickel_lang_parser..combine..Combine$GT$7combine17h242753b69914fa18E"(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(48) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(48) %1, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(48) %2) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1                 ; 3 uses
  %i.b = alloca [48 x i8], align 8                ; 7 uses
  %i.c = alloca [8 x i8], align 8                 ; 4 uses
  %i.d = alloca [48 x i8], align 8                ; 7 uses
  %i.e = alloca [8 x i8], align 8                 ; 4 uses
  %i.f = alloca [48 x i8], align 8                ; 7 uses
  %i.g = alloca [8 x i8], align 8                 ; 4 uses
  %i.h = alloca [8 x i8], align 8                 ; 4 uses
  %.sroa.8 = alloca [80 x i8], align 8            ; 4 uses
  %i.i = alloca [48 x i8], align 8                ; 6 uses
  %.sroa.0 = alloca [24 x i8], align 8            ; 5 uses
  %i.j = alloca [88 x i8], align 8                ; 5 uses
  %i.k = alloca [88 x i8], align 8                ; 7 uses
  %i.l = alloca [88 x i8], align 8                ; 8 uses
  %i.m = alloca [88 x i8], align 8                ; 9 uses
  %i.n = alloca [88 x i8], align 8                ; 7 uses
  %i.o = alloca [88 x i8], align 8                ; 10 uses
  %i.p = alloca [64 x i8], align 8                ; 12 uses
  %i.q = alloca [48 x i8], align 8                ; 13 uses
  %i.r = load ptr, ptr %1, align 8, !noundef !34
  %.not = icmp eq ptr %i.r, null
  %i.s = load ptr, ptr %2, align 8, !noundef !34  ; 7 uses
  %.not1 = icmp eq ptr %i.s, null                 ; 2 uses
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  br i1 %.not1, label %bb.f, label %bb.g

bb.c:                                             ; preds = %bb.a
  br i1 %.not1, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  store ptr null, ptr %0, align 8
  br label %bb.e

bb.e:                                             ; preds = %"_ZN101_$LT$nickel..customize..interface..ValueInterface$u20$as$u20$nickel_lang_parser..combine..Combine$GT$7combine17hd5f244adbebdd3aeE.exit", %bb.f, %bb.d
  ret void

bb.f:                                             ; preds = %bb.c, %bb.b
  %.sink = phi ptr [ %1, %bb.b ], [ %2, %bb.c ]
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(48) %.sink, i64 48, i1 false)
  br label %bb.e

bb.g:                                             ; preds = %bb.b
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.sroa.2.0.copyload = load i64, ptr %.sroa.2.0..sroa_idx, align 8 ; 4 uses
  %.sroa.471.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 24
  %.sroa.471.0.copyload = load i64, ptr %.sroa.471.0..sroa_idx, align 8 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q), !noalias !65926
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.q, ptr noundef nonnull readonly align 8 dereferenceable(48) %1, i64 48, i1 false), !noalias !65927
  %.val3.i.i.i = load <16 x i8>, ptr %i.s, align 16, !noalias !65928
  %i.t = icmp eq i64 %.sroa.2.0.copyload, 0
  br i1 %i.t, label %bb.j, label %_ZN9hashbrown3raw11TableLayout20calculate_layout_for17hb76643e6316511fcE.exit.i.i.i.i

_ZN9hashbrown3raw11TableLayout20calculate_layout_for17hb76643e6316511fcE.exit.i.i.i.i: ; preds = %bb.g
  %i.u = mul i64 %.sroa.2.0.copyload, -112
  %3 = mul i64 %.sroa.2.0.copyload, 113
  %i.v = add i64 %3, 129
  %4 = getelementptr i8, ptr %i.s, i64 %i.u
  %i.w = getelementptr i8, ptr %4, i64 -112
  br label %bb.j

bb.h:                                             ; preds = %.body, %bb.i
  %.pn.pn.i = phi { ptr, i32 } [ %.pn.i, %.body ], [ %i.x, %bb.i ]
  invoke fastcc void @_ZN9hashbrown3raw13RawTableInner16drop_inner_table17h726dcb279a4f63e4E(ptr noalias noundef nonnull readonly align 8 dereferenceable(48) %i.q)
          to label %"_ZN4core3ptr152drop_in_place$LT$std..collections..hash..map..HashMap$LT$nickel_lang_parser..identifier..LocIdent$C$nickel..customize..interface..FieldInterface$GT$$GT$17h3cefd1000a332b4bE.exit" unwind label %bb.cf

bb.i:                                             ; preds = %"_ZN99_$LT$hashbrown..raw..RawIntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hb22e3441712241a0E.exit.thread"
  %i.x = landingpad { ptr, i32 }
          cleanup
  br label %bb.h

bb.j:                                             ; preds = %_ZN9hashbrown3raw11TableLayout20calculate_layout_for17hb76643e6316511fcE.exit.i.i.i.i, %bb.g
  %.sroa.5.sroa.0.0.i.i.i.i = phi i64 [ %i.v, %_ZN9hashbrown3raw11TableLayout20calculate_layout_for17hb76643e6316511fcE.exit.i.i.i.i ], [ undef, %bb.g ]
  %.sroa.5.sroa.4.0.i.i.i.i = phi ptr [ %i.w, %_ZN9hashbrown3raw11TableLayout20calculate_layout_for17hb76643e6316511fcE.exit.i.i.i.i ], [ undef, %bb.g ]
  %.sroa.0.0.i.i.i.i = phi i64 [ 16, %_ZN9hashbrown3raw11TableLayout20calculate_layout_for17hb76643e6316511fcE.exit.i.i.i.i ], [ 0, %bb.g ]
  %i.y = getelementptr inbounds nuw i8, ptr %i.s, i64 16 ; 2 uses
  %i.z = icmp sgt <16 x i8> %.val3.i.i.i, splat (i8 -1) ; 2 uses
  %i.aa = getelementptr i8, ptr %i.s, i64 %.sroa.2.0.copyload
  %i.ab = getelementptr i8, ptr %i.aa, i64 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p), !noalias !65926
  store i64 %.sroa.0.0.i.i.i.i, ptr %i.p, align 8, !noalias !65926
  %.sroa.458.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  store i64 %.sroa.5.sroa.0.0.i.i.i.i, ptr %.sroa.458.0..sroa_idx, align 8, !noalias !65926
  %.sroa.559.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  store ptr %.sroa.5.sroa.4.0.i.i.i.i, ptr %.sroa.559.0..sroa_idx, align 8, !noalias !65926
  %.sroa.660.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.p, i64 24 ; 2 uses
  store ptr %i.s, ptr %.sroa.660.0..sroa_idx, align 8, !noalias !65926
  %.sroa.761.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.p, i64 32 ; 2 uses
  store ptr %i.y, ptr %.sroa.761.0..sroa_idx, align 8, !noalias !65926
  %.sroa.862.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.p, i64 40
  store ptr %i.ab, ptr %.sroa.862.0..sroa_idx, align 8, !noalias !65926
  %.sroa.963.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.p, i64 48 ; 18 uses
  store <16 x i1> %i.z, ptr %.sroa.963.0..sroa_idx, align 8, !noalias !65926
  %.sroa.11.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.p, i64 56 ; 18 uses
  store i64 %.sroa.471.0.copyload, ptr %.sroa.11.0..sroa_idx, align 8, !noalias !65926
  %i.ac = icmp eq i64 %.sroa.471.0.copyload, 0
  br i1 %i.ac, label %"_ZN99_$LT$hashbrown..raw..RawIntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hb22e3441712241a0E.exit.thread", label %.lr.ph

.lr.ph:                                           ; preds = %bb.j
  %.sroa.963.0..sroa_idx.promoted.cast = bitcast <16 x i1> %i.z to i16
  %i.ad = getelementptr inbounds nuw i8, ptr %i.q, i64 32
  %i.ae = getelementptr inbounds nuw i8, ptr %i.q, i64 40
  %i.af = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %i.ag = getelementptr inbounds nuw i8, ptr %i.q, i64 16 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.q, i64 24 ; 2 uses
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.o, i64 8 ; 3 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.o, i64 40
  %i.aj = getelementptr inbounds nuw i8, ptr %i.o, i64 32 ; 3 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.l, i64 32 ; 3 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.o, i64 24 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.l, i64 24 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.m, i64 40
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.m, i64 24
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.m, i64 32
  %i.ao = getelementptr inbounds nuw i8, ptr %i.l, i64 8 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %i.aq = getelementptr inbounds nuw i8, ptr %i.o, i64 16 ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.n, i64 40 ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.k, i64 40 ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %.sroa.8, i64 32
  %.sroa.5.0..sroa_idx326 = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %.sroa.5.0..sroa_idx489 = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  %.sroa.1.0..sroa.0.sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.0, i64 16
  br label %bb.k

bb.k:                                             ; preds = %.lr.ph, %bb.bz
  %i.au = phi i64 [ %.sroa.471.0.copyload, %.lr.ph ], [ %i.bh, %bb.bz ]
  %i.av = phi i16 [ %.sroa.963.0..sroa_idx.promoted.cast, %.lr.ph ], [ %i.be, %bb.bz ] ; 2 uses
  %.pre.i.i187191 = phi ptr [ %i.s, %.lr.ph ], [ %.pre.i.i186, %bb.bz ] ; 2 uses
  %.promoted15.i.i189190 = phi ptr [ %i.y, %.lr.ph ], [ %.promoted15.i.i188, %bb.bz ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !65929)
  call void @llvm.experimental.noalias.scope.decl(metadata !65930), !noalias !65926
  %.not13.i.i = icmp eq i16 %i.av, 0
  br i1 %.not13.i.i, label %.lr.ph.i.i, label %"_ZN99_$LT$hashbrown..raw..RawIntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hb22e3441712241a0E.exit"

._crit_edge.i.i:                                  ; preds = %.lr.ph.i.i
  store ptr %i.ba, ptr %.sroa.761.0..sroa_idx, align 8, !alias.scope !65931, !noalias !65932
  store ptr %i.az, ptr %.sroa.660.0..sroa_idx, align 8, !alias.scope !65931, !noalias !65932
  br label %"_ZN99_$LT$hashbrown..raw..RawIntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hb22e3441712241a0E.exit"

.lr.ph.i.i:                                       ; preds = %bb.k, %.lr.ph.i.i
  %i.aw = phi ptr [ %i.ba, %.lr.ph.i.i ], [ %.promoted15.i.i189190, %bb.k ] ; 2 uses
  %i.ax = phi ptr [ %i.az, %.lr.ph.i.i ], [ %.pre.i.i187191, %bb.k ]
  %.val11.i.i = load <16 x i8>, ptr %i.aw, align 16, !noalias !65933
  %i.ay = icmp sgt <16 x i8> %.val11.i.i, splat (i8 -1)
  %i.az = getelementptr inbounds i8, ptr %i.ax, i64 -1792 ; 3 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %i.aw, i64 16 ; 3 uses
  %.cast.i.i = bitcast <16 x i1> %i.ay to i16     ; 2 uses
  %.not.i.i16 = icmp eq i16 %.cast.i.i, 0
  br i1 %.not.i.i16, label %.lr.ph.i.i, label %._crit_edge.i.i

.body:                                            ; preds = %bb.bq, %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h2f95d0f5b6a89b90E.exit.i486", %bb.q, %bb.bb, %.body.i, %bb.bx, %bb.cd
  %.pn.i = phi { ptr, i32 } [ %i.hs, %bb.cd ], [ %i.hl, %bb.bx ], [ %eh.lpad-body40, %bb.bb ], [ %eh.lpad-body40, %.body.i ], [ %i.cx, %bb.q ], [ %.pn12.i102113, %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h2f95d0f5b6a89b90E.exit.i486" ], [ %.pn12.i102113, %bb.bq ]
  invoke fastcc void @"_ZN4core3ptr153drop_in_place$LT$std..collections..hash..map..IntoIter$LT$nickel_lang_parser..identifier..LocIdent$C$nickel..customize..interface..FieldInterface$GT$$GT$17hfabac9689aa21878E"(ptr noalias noundef align 8 dereferenceable(64) %i.p) #61
          to label %bb.h unwind label %bb.cf, !noalias !65926, !inline_history !65822

"_ZN99_$LT$hashbrown..raw..RawIntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hb22e3441712241a0E.exit": ; preds = %bb.k, %._crit_edge.i.i
  %.promoted15.i.i188 = phi ptr [ %i.ba, %._crit_edge.i.i ], [ %.promoted15.i.i189190, %bb.k ]
  %.pre.i.i186 = phi ptr [ %i.az, %._crit_edge.i.i ], [ %.pre.i.i187191, %bb.k ] ; 2 uses
  %.lcssa.i.i = phi i16 [ %.cast.i.i, %._crit_edge.i.i ], [ %i.av, %bb.k ] ; 3 uses
  %i.bb = add i16 %.lcssa.i.i, -1
  %i.bc = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i.i, i1 true)
  %i.bd = zext nneg i16 %i.bc to i64
  %i.be = and i16 %i.bb, %.lcssa.i.i              ; 18 uses
  %i.bf = sub nsw i64 0, %i.bd
  %i.bg = getelementptr inbounds [112 x i8], ptr %.pre.i.i186, i64 %i.bf ; 3 uses
  %i.bh = add i64 %i.au, -1                       ; 19 uses
  %i.bi = getelementptr inbounds i8, ptr %i.bg, i64 -112
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0, ptr noundef nonnull align 8 dereferenceable(24) %i.bi, i64 24, i1 false)
  %.sroa.5.0..sroa_idx = getelementptr inbounds i8, ptr %i.bg, i64 -88
  %.sroa.5.0.copyload = load i64, ptr %.sroa.5.0..sroa_idx, align 8, !noalias !65934 ; 7 uses
  %.sroa.8.0..sroa_idx = getelementptr inbounds i8, ptr %i.bg, i64 -80
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %.sroa.8, ptr noundef nonnull align 8 dereferenceable(80) %.sroa.8.0..sroa_idx, i64 80, i1 false)
  %.not.i = icmp eq i64 %.sroa.5.0.copyload, -9223372036854775808
  br i1 %.not.i, label %"_ZN99_$LT$hashbrown..raw..RawIntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hb22e3441712241a0E.exit.thread.sink.split", label %bb.l

bb.l:                                             ; preds = %"_ZN99_$LT$hashbrown..raw..RawIntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hb22e3441712241a0E.exit"
  %.sroa.1.0.copyload = load i32, ptr %.sroa.1.0..sroa.0.sroa_idx, align 8
  call void @llvm.experimental.noalias.scope.decl(metadata !65935)
  call void @llvm.experimental.noalias.scope.decl(metadata !65936), !noalias !65926
  %.val.i.i = load i64, ptr %i.ad, align 8, !alias.scope !65937, !noalias !65938, !noundef !34
  %.val1.i.i = load i64, ptr %i.ae, align 8, !alias.scope !65937, !noalias !65938, !noundef !34
  %i.bj = call fastcc noundef i64 @_ZN4core4hash11BuildHasher8hash_one17hbde8381f93093315E(i64 %.val.i.i, i64 %.val1.i.i, ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(20) %.sroa.0) ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !65939), !noalias !65926
  call void @llvm.experimental.noalias.scope.decl(metadata !65940), !noalias !65926
  call void @llvm.experimental.noalias.scope.decl(metadata !65941), !noalias !65926
  %i.bk = lshr i64 %i.bj, 57
  %i.bl = trunc nuw nsw i64 %i.bk to i8
  %i.bm = load i64, ptr %i.af, align 8, !alias.scope !65942, !noalias !65943, !noundef !34 ; 3 uses
  %i.bn = load ptr, ptr %i.q, align 8, !alias.scope !65942, !noalias !65943, !nonnull !34, !noundef !34 ; 4 uses
  %.sroa.0.0.vec.insert.i.i.i.i.i = insertelement <16 x i8> poison, i8 %i.bl, i64 0
  %.sroa.0.15.vec.insert.i.i.i.i.i = shufflevector <16 x i8> %.sroa.0.0.vec.insert.i.i.i.i.i, <16 x i8> poison, <16 x i32> zeroinitializer
  br label %bb.m

bb.m:                                             ; preds = %bb.o, %bb.l
  %.sroa.9.0.i.i.i.i.i = phi i64 [ 0, %bb.l ], [ %i.ce, %bb.o ]
  %.pn.i.i.i.i = phi i64 [ %i.bj, %bb.l ], [ %i.cf, %bb.o ]
  %.sroa.01.0.i.i.i.i.i = and i64 %.pn.i.i.i.i, %i.bm ; 3 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 %.sroa.01.0.i.i.i.i.i
  %.sroa.0.0.copyload.i26.i.i.i.i = load <16 x i8>, ptr %i.bo, align 1, !noalias !65944 ; 2 uses
  %i.bp = icmp eq <16 x i8> %.sroa.0.0.copyload.i26.i.i.i.i, %.sroa.0.15.vec.insert.i.i.i.i.i
  %i.bq = bitcast <16 x i1> %i.bp to i16          ; 2 uses
  %.not.i.not32.i.i.i.i = icmp eq i16 %i.bq, 0
  br i1 %.not.i.not32.i.i.i.i, label %._crit_edge.i.i.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.m, %bb.n
  %.sroa.06.0.i33.i.i.i.i = phi i16 [ %i.cd, %bb.n ], [ %i.bq, %bb.m ] ; 3 uses
  %i.br = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.06.0.i33.i.i.i.i, i1 true)
  %i.bs = zext nneg i16 %i.br to i64
  %i.bt = add i64 %.sroa.01.0.i.i.i.i.i, %i.bs
  %i.bu = and i64 %i.bt, %i.bm                    ; 2 uses
  %i.bv = sub nsw i64 0, %i.bu
  %i.bw = getelementptr inbounds [112 x i8], ptr %i.bn, i64 %i.bv ; 3 uses
  %i.bx = getelementptr i8, ptr %i.bw, i64 -96
  %.val3.i.i.i.i.i = load i32, ptr %i.bx, align 4, !noalias !65945, !noundef !34
  %i.by = icmp eq i32 %.sroa.1.0.copyload, %.val3.i.i.i.i.i
  br i1 %i.by, label %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$4find17ha670a4f5a7678958E.exit.i.i.i", label %bb.n, !prof !40

._crit_edge.i.i.i.i:                              ; preds = %bb.n, %bb.m
  %i.bz = icmp eq <16 x i8> %.sroa.0.0.copyload.i26.i.i.i.i, splat (i8 -1)
  %i.ca = bitcast <16 x i1> %i.bz to i16
  %i.cb = icmp eq i16 %i.ca, 0
  br i1 %i.cb, label %bb.o, label %.loopexit123, !prof !37

bb.n:                                             ; preds = %.lr.ph.i.i.i.i
  %i.cc = add i16 %.sroa.06.0.i33.i.i.i.i, -1
  %i.cd = and i16 %i.cc, %.sroa.06.0.i33.i.i.i.i  ; 2 uses
  %.not.i.not.i.i.i.i = icmp eq i16 %i.cd, 0
  br i1 %.not.i.not.i.i.i.i, label %._crit_edge.i.i.i.i, label %.lr.ph.i.i.i.i

bb.o:                                             ; preds = %._crit_edge.i.i.i.i
  %i.ce = add i64 %.sroa.9.0.i.i.i.i.i, 16        ; 2 uses
  %i.cf = add i64 %.sroa.01.0.i.i.i.i.i, %i.ce
  br label %bb.m

"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$4find17ha670a4f5a7678958E.exit.i.i.i": ; preds = %.lr.ph.i.i.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !65946), !noalias !65926
  call void @llvm.experimental.noalias.scope.decl(metadata !65947), !noalias !65926
  %.idx.neg.i.i.i = mul i64 %i.bu, 112
  %i.cg = sdiv exact i64 %.idx.neg.i.i.i, 112     ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !65948), !noalias !65926
  %i.ch = add nsw i64 %i.cg, -16
  %i.ci = and i64 %i.ch, %i.bm
  %i.cj = getelementptr inbounds nuw i8, ptr %i.bn, i64 %i.ci ; 2 uses
  %.sroa.0.0.copyload.i24.i.i.i.i.i.i = load <16 x i8>, ptr %i.cj, align 1, !noalias !65949
  %i.ck = icmp eq <16 x i8> %.sroa.0.0.copyload.i24.i.i.i.i.i.i, splat (i8 -1)
  %i.cl = bitcast <16 x i1> %i.ck to i16
  %i.cm = getelementptr inbounds nuw i8, ptr %i.bn, i64 %i.cg ; 2 uses
  %.sroa.0.0.copyload.i825.i.i.i.i.i.i = load <16 x i8>, ptr %i.cm, align 1, !noalias !65950
  %i.cn = icmp eq <16 x i8> %.sroa.0.0.copyload.i825.i.i.i.i.i.i, splat (i8 -1)
  %i.co = bitcast <16 x i1> %i.cn to i16
  %i.cp = call range(i16 0, 17) i16 @llvm.ctlz.i16(i16 %i.cl, i1 false)
  %i.cq = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.co, i1 false)
  %narrow.i.i.i.i.i.i = add nuw nsw i16 %i.cq, %i.cp
  %i.cr = icmp samesign ugt i16 %narrow.i.i.i.i.i.i, 15
  br i1 %i.cr, label %"_ZN9hashbrown3map28HashMap$LT$K$C$V$C$S$C$A$GT$12remove_entry17h1cd3c98144d7b20dE.exit.i", label %bb.p

bb.p:                                             ; preds = %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$4find17ha670a4f5a7678958E.exit.i.i.i"
end_hunk_2
