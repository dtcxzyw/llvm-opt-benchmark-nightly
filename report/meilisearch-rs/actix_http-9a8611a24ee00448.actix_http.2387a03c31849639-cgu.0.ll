Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/meilisearch-rs/original/actix_http-9a8611a24ee00448.actix_http.2387a03c31849639-cgu.0?download=true
inline.NumInlined: 6414
inline.NumDeleted: 2069
loop-unroll.NumCompletelyUnrolled: 166
loop-unroll.NumRuntimeUnrolled: 60
loop-unroll.NumUnrolled: 290
begin_hunk_0_@"_ZN108_$LT$brotli..enc..prior_eval..PriorEval$LT$Alloc$GT$$u20$as$u20$brotli..enc..interface..CommandProcessor$GT$4push17hddadbec000589963E":bb.a
  %i.aaa = load <8 x i16>, ptr %i.zq, align 2, !noalias !323
  %.sroa.0.i.sroa.16.0..sroa.02594.0.2596.sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.zq, i64 16 ; 2 uses
  %i.aab = add <8 x i16> %i.aaa, %i.pf            ; 2 uses
  %i.aac = load i16, ptr %i.zx, align 2, !noalias !321, !noundef !21 ; 2 uses
  %i.aad = load <8 x i16>, ptr %.sroa.0.i.sroa.16.0..sroa.02594.0.2596.sroa_idx.i.i.i, align 2, !noalias !278
  %i.aae = zext i16 %i.aac to i64
  %i.aaf = getelementptr inbounds nuw [4 x i8], ptr @_ZN6brotli3enc12log_table_167logs_1617hb46601a5d9902f59E, i64 %i.aae
  %i.aag = load float, ptr %i.aaf, align 4, !noalias !322, !noundef !21
  %i.aah = fsub float %i.aag, %i.zz
  %i.aai = add i16 %i.aac, %i.bz
  %i.aaj = add <8 x i16> %i.aad, %i.pw            ; 2 uses
  %.not.i.i.i.i = icmp slt i16 %i.aai, %i.ca
  br i1 %.not.i.i.i.i, label %_ZN6brotli3enc10prior_eval3CDF6update17h0d75a222314d31cfE.exit.i.i.i, label %bb.bp

bb.bp:                                            ; preds = %_ZN6brotli3enc10prior_eval3CDF4cost17hb1ca1772f8a91b55E.exit.i.i.i
  %i.aak = add <8 x i16> %i.aab, <i16 1, i16 2, i16 3, i16 4, i16 5, i16 6, i16 7, i16 8> ; 2 uses
  %i.aal = add <8 x i16> %i.aaj, <i16 9, i16 10, i16 11, i16 12, i16 13, i16 14, i16 15, i16 16> ; 2 uses
  %i.aam = ashr <8 x i16> %i.aak, splat (i16 2)
  %i.aan = ashr <8 x i16> %i.aal, splat (i16 2)
  %i.aao = sub <8 x i16> %i.aak, %i.aam
  %i.aap = sub <8 x i16> %i.aal, %i.aan
  br label %_ZN6brotli3enc10prior_eval3CDF6update17h0d75a222314d31cfE.exit.i.i.i

_ZN6brotli3enc10prior_eval3CDF6update17h0d75a222314d31cfE.exit.i.i.i: ; preds = %bb.bp, %_ZN6brotli3enc10prior_eval3CDF4cost17hb1ca1772f8a91b55E.exit.i.i.i
  %i.aaq = phi <8 x i16> [ %i.aab, %_ZN6brotli3enc10prior_eval3CDF4cost17hb1ca1772f8a91b55E.exit.i.i.i ], [ %i.aao, %bb.bp ]
  %i.aar = phi <8 x i16> [ %i.aaj, %_ZN6brotli3enc10prior_eval3CDF4cost17hb1ca1772f8a91b55E.exit.i.i.i ], [ %i.aap, %bb.bp ]
  store <8 x i16> %i.aaq, ptr %i.zq, align 2, !noalias !323
  store <8 x i16> %i.aar, ptr %.sroa.0.i.sroa.16.0..sroa.02594.0.2596.sroa_idx.i.i.i, align 2, !noalias !323
  %i.aas = icmp ult i64 %i.df, %.val2534.i.i.i
  br i1 %i.aas, label %bb.br, label %bb.bs

bb.bq:                                            ; preds = %_ZN6brotli3enc10prior_eval3CDF6update17h0d75a222314d31cfE.exit159.i.i.i
  tail call void @_ZN4core9panicking18panic_bounds_check17hbc09f5d79f1a5789E(i64 noundef %i.zo, i64 noundef %.val2502.i.i.i, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @854) #46, !noalias !278
  unreachable

bb.br:                                            ; preds = %_ZN6brotli3enc10prior_eval3CDF6update17h0d75a222314d31cfE.exit.i.i.i
  %i.aat = getelementptr inbounds nuw [32 x i8], ptr %.val2533.i.i.i, i64 %i.df ; 3 uses
  %i.aau = load <4 x float>, ptr %i.aat, align 4, !noalias !278
  %i.aav = insertelement <4 x float> poison, float %i.hb, i64 0
  %i.aaw = insertelement <4 x float> %i.aav, float %i.aah, i64 1
  %i.aax = insertelement <4 x float> %i.aaw, float %i.jh, i64 2
  %i.aay = insertelement <4 x float> %i.aax, float %i.mf, i64 3
  %i.aaz = fadd <4 x float> %i.aay, %i.aau
  store <4 x float> %i.aaz, ptr %i.aat, align 4, !noalias !278
  %i.aba = getelementptr inbounds nuw i8, ptr %i.aat, i64 16 ; 2 uses
  %i.abb = load <4 x float>, ptr %i.aba, align 4, !noalias !278
  %i.abc = insertelement <4 x float> poison, float %i.pq, i64 0
  %i.abd = insertelement <4 x float> %i.abc, float %i.sl, i64 1
  %i.abe = insertelement <4 x float> %i.abd, float %i.vd, i64 2
  %i.abf = insertelement <4 x float> %i.abe, float %i.xu, i64 3
  %i.abg = fadd <4 x float> %i.abf, %i.abb
  store <4 x float> %i.abg, ptr %i.aba, align 4, !noalias !278
  %i.abh = icmp ult i64 %i.da, %.val2534.i.i.i
  br i1 %i.abh, label %"_ZN108_$LT$brotli..enc..prior_eval..PriorEval$LT$Alloc$GT$$u20$as$u20$brotli..enc..ir_interpret..IRInterpreter$GT$11update_cost17hf26c78691aeb8068E.exit.i", label %bb.bt

bb.bs:                                            ; preds = %_ZN6brotli3enc10prior_eval3CDF6update17h0d75a222314d31cfE.exit.i.i.i
  tail call void @_ZN4core9panicking18panic_bounds_check17hbc09f5d79f1a5789E(i64 noundef %i.df, i64 noundef %.val2534.i.i.i, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @855) #46, !noalias !278
  unreachable

bb.bt:                                            ; preds = %bb.br
  tail call void @_ZN4core9panicking18panic_bounds_check17hbc09f5d79f1a5789E(i64 noundef %i.da, i64 noundef %.val2534.i.i.i, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @856) #46, !noalias !278
  unreachable

"_ZN108_$LT$brotli..enc..prior_eval..PriorEval$LT$Alloc$GT$$u20$as$u20$brotli..enc..ir_interpret..IRInterpreter$GT$11update_cost17hf26c78691aeb8068E.exit.i": ; preds = %bb.br
  %i.abi = insertelement <4 x float> poison, float %i.et, i64 0
  %i.abj = insertelement <4 x float> %i.abi, float %i.za, i64 1
  %i.abk = insertelement <4 x float> %i.abj, float %i.ih, i64 2
  %i.abl = insertelement <4 x float> %i.abk, float %i.ky, i64 3
  %i.abm = insertelement <4 x float> poison, float %i.ds, i64 0
  %i.abn = insertelement <4 x float> %i.abm, float %i.yt, i64 1
  %i.abo = insertelement <4 x float> %i.abn, float %i.ib, i64 2
  %i.abp = insertelement <4 x float> %i.abo, float %i.kd, i64 3
  %i.abq = fsub <4 x float> %i.abl, %i.abp
  %i.abr = insertelement <4 x float> poison, float %i.nw, i64 0
  %i.abs = insertelement <4 x float> %i.abr, float %i.rc, i64 1
  %i.abt = insertelement <4 x float> %i.abs, float %i.tu, i64 2
  %i.abu = insertelement <4 x float> %i.abt, float %i.wl, i64 3
  %i.abv = insertelement <4 x float> poison, float %i.nf, i64 0
  %i.abw = insertelement <4 x float> %i.abv, float %i.qv, i64 1
  %i.abx = insertelement <4 x float> %i.abw, float %i.tn, i64 2
  %i.aby = insertelement <4 x float> %i.abx, float %i.we, i64 3
  %i.abz = fsub <4 x float> %i.abu, %i.aby
  %i.aca = getelementptr inbounds nuw [32 x i8], ptr %.val2533.i.i.i, i64 %i.da ; 3 uses
  %i.acb = load <4 x float>, ptr %i.aca, align 4, !noalias !278
  %i.acc = fadd <4 x float> %i.abq, %i.acb
  store <4 x float> %i.acc, ptr %i.aca, align 4, !noalias !278
  %i.acd = getelementptr inbounds nuw i8, ptr %i.aca, i64 16 ; 2 uses
  %i.ace = load <4 x float>, ptr %i.acd, align 4, !noalias !278
  %i.acf = fadd <4 x float> %i.abz, %i.ace
  store <4 x float> %i.acf, ptr %i.acd, align 4, !noalias !278
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !273
  %i.acg = load i8, ptr %.sroa.012.0254.i, align 1, !noalias !266, !noundef !21
  %i.ach = getelementptr inbounds nuw i8, ptr %i.b, i64 %.sroa.01.0255.i
  store i8 %i.acg, ptr %i.ach, align 1, !noalias !269
  %i.aci = add nuw nsw i64 %.sroa.01.0255.i, 1
  %i.acj = and i64 %i.aci, 7
  %i.ack = icmp eq ptr %i.cg, %i.adz
  br i1 %i.ack, label %._crit_edge.loopexit.i, label %bb.f

._crit_edge.loopexit.i:                           ; preds = %"_ZN108_$LT$brotli..enc..prior_eval..PriorEval$LT$Alloc$GT$$u20$as$u20$brotli..enc..ir_interpret..IRInterpreter$GT$11update_cost17hf26c78691aeb8068E.exit.i"
  %.pre.i = load i64, ptr %i.p, align 8, !alias.scope !324, !noalias !266
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %.thread583.i, %._crit_edge.loopexit.i
  %i.acl = phi i64 [ %.pre.i, %._crit_edge.loopexit.i ], [ %.val14.i, %.thread583.i ]
  %i.acm = add i64 %i.acl, %i.ady
  store i64 %i.acm, ptr %i.p, align 8, !alias.scope !324, !noalias !266
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !269
  br label %_ZN6brotli3enc12ir_interpret9push_base17hfddf9bd19a5c0f72E.exit

bb.bu:                                            ; preds = %bb.d
  %i.acn = add i64 %.val14.i, -1
  %i.aco = tail call noundef align 1 dereferenceable(1) ptr @"_ZN91_$LT$brotli..enc..input_pair..InputPair$u20$as$u20$core..ops..index..Index$LT$usize$GT$$GT$5index17h932e9143e3f0d077E"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(296) %0, i64 noundef %i.acn, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @21), !noalias !266
  %i.acp = load i8, ptr %i.aco, align 1, !noalias !266, !noundef !21
  %i.acq = getelementptr inbounds nuw i8, ptr %i.b, i64 7
  store i8 %i.acp, ptr %i.acq, align 1, !noalias !269
  %.not840.i = icmp eq i64 %.val14.i, 1
  br i1 %.not840.i, label %.thread583.i, label %bb.bv

bb.bv:                                            ; preds = %bb.bu
  %i.acr = add i64 %.val14.i, -2
  %i.acs = tail call noundef align 1 dereferenceable(1) ptr @"_ZN91_$LT$brotli..enc..input_pair..InputPair$u20$as$u20$core..ops..index..Index$LT$usize$GT$$GT$5index17h932e9143e3f0d077E"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(296) %0, i64 noundef %i.acr, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @21), !noalias !266
  %i.act = load i8, ptr %i.acs, align 1, !noalias !266, !noundef !21
  %i.acu = getelementptr inbounds nuw i8, ptr %i.b, i64 6
  store i8 %i.act, ptr %i.acu, align 2, !noalias !269
  %i.acv = icmp ugt i64 %.val14.i, 2
  br i1 %i.acv, label %bb.bw, label %.thread583.i

bb.bw:                                            ; preds = %bb.bv
  %i.acw = add i64 %.val14.i, -3
  %i.acx = tail call noundef align 1 dereferenceable(1) ptr @"_ZN91_$LT$brotli..enc..input_pair..InputPair$u20$as$u20$core..ops..index..Index$LT$usize$GT$$GT$5index17h932e9143e3f0d077E"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(296) %0, i64 noundef %i.acw, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @21), !noalias !266
  %i.acy = load i8, ptr %i.acx, align 1, !noalias !266, !noundef !21
  %i.acz = getelementptr inbounds nuw i8, ptr %i.b, i64 5
  store i8 %i.acy, ptr %i.acz, align 1, !noalias !269
  %.not841.i = icmp eq i64 %.val14.i, 3
  br i1 %.not841.i, label %.thread583.i, label %bb.bx

bb.bx:                                            ; preds = %bb.bw
  %i.ada = add i64 %.val14.i, -4
  %i.adb = tail call noundef align 1 dereferenceable(1) ptr @"_ZN91_$LT$brotli..enc..input_pair..InputPair$u20$as$u20$core..ops..index..Index$LT$usize$GT$$GT$5index17h932e9143e3f0d077E"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(296) %0, i64 noundef %i.ada, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @21), !noalias !266
  %i.adc = load i8, ptr %i.adb, align 1, !noalias !266, !noundef !21
  %i.add = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  store i8 %i.adc, ptr %i.add, align 4, !noalias !269
  %i.ade = icmp ugt i64 %.val14.i, 4
  br i1 %i.ade, label %bb.by, label %.thread583.i

bb.by:                                            ; preds = %bb.bx
  %i.adf = add i64 %.val14.i, -5
  %i.adg = tail call noundef align 1 dereferenceable(1) ptr @"_ZN91_$LT$brotli..enc..input_pair..InputPair$u20$as$u20$core..ops..index..Index$LT$usize$GT$$GT$5index17h932e9143e3f0d077E"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(296) %0, i64 noundef %i.adf, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @21), !noalias !266
  %i.adh = load i8, ptr %i.adg, align 1, !noalias !266, !noundef !21
  %i.adi = getelementptr inbounds nuw i8, ptr %i.b, i64 3
  store i8 %i.adh, ptr %i.adi, align 1, !noalias !269
  %.not842.i = icmp eq i64 %.val14.i, 5
  br i1 %.not842.i, label %.thread583.i, label %bb.bz

bb.bz:                                            ; preds = %bb.by
  %i.adj = add i64 %.val14.i, -6
  %i.adk = tail call noundef align 1 dereferenceable(1) ptr @"_ZN91_$LT$brotli..enc..input_pair..InputPair$u20$as$u20$core..ops..index..Index$LT$usize$GT$$GT$5index17h932e9143e3f0d077E"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(296) %0, i64 noundef %i.adj, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @21), !noalias !266
  %i.adl = load i8, ptr %i.adk, align 1, !noalias !266, !noundef !21
  %i.adm = getelementptr inbounds nuw i8, ptr %i.b, i64 2
  store i8 %i.adl, ptr %i.adm, align 2, !noalias !269
  %i.adn = icmp ugt i64 %.val14.i, 6
  br i1 %i.adn, label %bb.ca, label %.thread583.i

bb.ca:                                            ; preds = %bb.bz
  %i.ado = add i64 %.val14.i, -7
  %i.adp = tail call noundef align 1 dereferenceable(1) ptr @"_ZN91_$LT$brotli..enc..input_pair..InputPair$u20$as$u20$core..ops..index..Index$LT$usize$GT$$GT$5index17h932e9143e3f0d077E"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(296) %0, i64 noundef %i.ado, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @21), !noalias !266
  %i.adq = load i8, ptr %i.adp, align 1, !noalias !266, !noundef !21
  %i.adr = getelementptr inbounds nuw i8, ptr %i.b, i64 1
  store i8 %i.adq, ptr %i.adr, align 1, !noalias !269
  %.not843.i = icmp eq i64 %.val14.i, 7
  br i1 %.not843.i, label %.thread583.i, label %bb.cb

bb.cb:                                            ; preds = %bb.ca
  %i.ads = add i64 %.val14.i, -8
  %i.adt = tail call noundef align 1 dereferenceable(1) ptr @"_ZN91_$LT$brotli..enc..input_pair..InputPair$u20$as$u20$core..ops..index..Index$LT$usize$GT$$GT$5index17h932e9143e3f0d077E"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(296) %0, i64 noundef %i.ads, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @21), !noalias !266
  %i.adu = load i8, ptr %i.adt, align 1, !noalias !266, !noundef !21
  store i8 %i.adu, ptr %i.b, align 8, !noalias !269
  br label %.thread583.i

.thread583.i:                                     ; preds = %bb.cb, %bb.ca, %bb.bz, %bb.by, %bb.bx, %bb.bw, %bb.bv, %bb.bu, %bb.d
  %i.adv = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.adw = load ptr, ptr %i.adv, align 8, !alias.scope !266, !noalias !265, !nonnull !21, !align !29, !noundef !21 ; 2 uses
  %i.adx = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ady = load i64, ptr %i.adx, align 8, !alias.scope !266, !noalias !265, !noundef !21 ; 3 uses
  %i.adz = getelementptr inbounds nuw i8, ptr %i.adw, i64 %i.ady
  %i.aea = icmp samesign eq i64 %i.ady, 0
  br i1 %i.aea, label %._crit_edge.i, label %.lr.ph.i

_ZN6brotli3enc12ir_interpret9push_base17hfddf9bd19a5c0f72E.exit: ; preds = %bb.a, %bb.a, %bb.a, %bb.b, %bb.c, %bb.e, %._crit_edge.i
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_ZN10actix_http10extensions10Extensions6extend17hd651424c8cdb1aecE(ptr noalias noundef align 8 dereferenceable(32) %0, ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(32) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [64 x i8], align 8                ; 9 uses
  %i.b = alloca [64 x i8], align 8                ; 12 uses
  %.sroa.0.0.copyload = load ptr, ptr %1, align 8, !nonnull !21, !noundef !21 ; 5 uses
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.4.0.copyload = load i64, ptr %.sroa.4.0..sroa_idx, align 8 ; 5 uses
  %.sroa.51.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.sroa.51.0.copyload = load i64, ptr %.sroa.51.0..sroa_idx, align 8 ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !378)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !379
  tail call void @llvm.experimental.noalias.scope.decl(metadata !380)
  %.val3.i.i.i.i.i = load <16 x i8>, ptr %.sroa.0.0.copyload, align 16, !noalias !381
  %i.c = icmp eq i64 %.sroa.4.0.copyload, 0
  br i1 %i.c, label %"_ZN115_$LT$std..collections..hash..map..HashMap$LT$K$C$V$C$S$GT$$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17h4a2b2e9dc8a532eaE.exit.i", label %_ZN9hashbrown3raw11TableLayout20calculate_layout_for17hb76643e6316511fcE.exit.i.i.i.i.i.i

_ZN9hashbrown3raw11TableLayout20calculate_layout_for17hb76643e6316511fcE.exit.i.i.i.i.i.i: ; preds = %bb.a
  %2 = icmp slt i64 %.sroa.4.0.copyload, 576460752303423487
  tail call void @llvm.assume(i1 %2)
  %i.d = shl i64 %.sroa.4.0.copyload, 5           ; 2 uses
  %3 = add i64 %i.d, 32                           ; 2 uses
  %4 = add nsw i64 %.sroa.4.0.copyload, 17
  %i.e = add i64 %4, %3                           ; 3 uses
  %5 = icmp uge i64 %i.e, %3
  tail call void @llvm.assume(i1 %5)
  %6 = icmp ult i64 %i.e, 9223372036854775793
  tail call void @llvm.assume(i1 %6)
  %i.f = sub nuw nsw i64 -32, %i.d
  %i.g = getelementptr inbounds i8, ptr %.sroa.0.0.copyload, i64 %i.f
  br label %"_ZN115_$LT$std..collections..hash..map..HashMap$LT$K$C$V$C$S$GT$$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17h4a2b2e9dc8a532eaE.exit.i"

"_ZN115_$LT$std..collections..hash..map..HashMap$LT$K$C$V$C$S$GT$$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17h4a2b2e9dc8a532eaE.exit.i": ; preds = %_ZN9hashbrown3raw11TableLayout20calculate_layout_for17hb76643e6316511fcE.exit.i.i.i.i.i.i, %bb.a
  %.sroa.5.sroa.0.0.i.i.i.i.i.i = phi i64 [ %i.e, %_ZN9hashbrown3raw11TableLayout20calculate_layout_for17hb76643e6316511fcE.exit.i.i.i.i.i.i ], [ undef, %bb.a ]
  %.sroa.5.sroa.4.0.i.i.i.i.i.i = phi ptr [ %i.g, %_ZN9hashbrown3raw11TableLayout20calculate_layout_for17hb76643e6316511fcE.exit.i.i.i.i.i.i ], [ undef, %bb.a ]
  %.sroa.0.0.i.i.i.i.i.i = phi i64 [ 16, %_ZN9hashbrown3raw11TableLayout20calculate_layout_for17hb76643e6316511fcE.exit.i.i.i.i.i.i ], [ 0, %bb.a ]
  %i.h = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload, i64 16
  %i.i = icmp sgt <16 x i8> %.val3.i.i.i.i.i, splat (i8 -1)
  %i.j = getelementptr i8, ptr %.sroa.0.0.copyload, i64 %.sroa.4.0.copyload
  %i.k = getelementptr i8, ptr %i.j, i64 1
  store i64 %.sroa.0.0.i.i.i.i.i.i, ptr %i.b, align 8, !alias.scope !380, !noalias !382
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 %.sroa.5.sroa.0.0.i.i.i.i.i.i, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !alias.scope !380, !noalias !382
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store ptr %.sroa.5.sroa.4.0.i.i.i.i.i.i, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !alias.scope !380, !noalias !382
  %.sroa.6.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store ptr %.sroa.0.0.copyload, ptr %.sroa.6.0..sroa_idx.i.i, align 8, !alias.scope !380, !noalias !382
  %.sroa.7.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  store ptr %i.h, ptr %.sroa.7.0..sroa_idx.i.i, align 8, !alias.scope !380, !noalias !382
  %.sroa.8.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  store ptr %i.k, ptr %.sroa.8.0..sroa_idx.i.i, align 8, !alias.scope !380, !noalias !382
  %.sroa.9.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  store <16 x i1> %i.i, ptr %.sroa.9.0..sroa_idx.i.i, align 8, !alias.scope !380, !noalias !382
  %.sroa.101.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  store i64 %.sroa.51.0.copyload, ptr %.sroa.101.0..sroa_idx.i.i, align 8, !alias.scope !380, !noalias !382
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.m = load i64, ptr %i.l, align 8, !alias.scope !378, !noalias !383, !noundef !21
  %i.n = icmp eq i64 %i.m, 0
  %i.o = add i64 %.sroa.51.0.copyload, 1
  %i.p = lshr i64 %i.o, 1
  %.sroa.0.0.i = select i1 %i.n, i64 %.sroa.51.0.copyload, i64 %i.p ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  %i.s = load i64, ptr %i.r, align 8, !alias.scope !384, !noalias !385, !noundef !21
  %i.t = icmp ugt i64 %.sroa.0.0.i, %i.s
  br i1 %i.t, label %bb.b, label %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$7reserve17hdc538cc0d2283dffE.exit.i", !prof !30

bb.b:                                             ; preds = %"_ZN115_$LT$std..collections..hash..map..HashMap$LT$K$C$V$C$S$GT$$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17h4a2b2e9dc8a532eaE.exit.i"
  %i.u = invoke { i64, i64 } @"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$14reserve_rehash17h77a9c9ef68d52054E"(ptr noalias noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %.sroa.0.0.i, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.q, i1 noundef zeroext true)
          to label %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$7reserve17hdc538cc0d2283dffE.exit.i" unwind label %bb.s, !noalias !383 ; 0 uses

"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$7reserve17hdc538cc0d2283dffE.exit.i": ; preds = %bb.b, %"_ZN115_$LT$std..collections..hash..map..HashMap$LT$K$C$V$C$S$GT$$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17h4a2b2e9dc8a532eaE.exit.i"
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !386
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.a, ptr noundef nonnull align 8 dereferenceable(64) %i.b, i64 64, i1 false), !noalias !379
  tail call void @llvm.experimental.noalias.scope.decl(metadata !387)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !388)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !389)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !390)
  %i.v = getelementptr inbounds nuw i8, ptr %i.a, i64 56 ; 4 uses
  %.promoted.i.i.i.i = load i64, ptr %i.v, align 8, !alias.scope !391, !noalias !392 ; 2 uses
  %i.w = icmp eq i64 %.promoted.i.i.i.i, 0
  br i1 %i.w, label %"_ZN121_$LT$hashbrown..map..HashMap$LT$K$C$V$C$S$C$A$GT$$u20$as$u20$core..iter..traits..collect..Extend$LT$$LP$K$C$V$RP$$GT$$GT$6extend17hb8b8ffdc36728f35E.exit", label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$7reserve17hdc538cc0d2283dffE.exit.i"
  %i.x = getelementptr inbounds nuw i8, ptr %i.a, i64 24 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.a, i64 48 ; 4 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.a, i64 32 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.promoted24.i.i.i.i = load i16, ptr %i.y, align 8, !alias.scope !393, !noalias !392
  %.promoted25.i.i.i.i = load ptr, ptr %i.x, align 8, !alias.scope !389, !noalias !394
  %.promoted28.i.i.i.i = load ptr, ptr %i.z, align 8, !alias.scope !389, !noalias !394
  br label %bb.c

bb.c:                                             ; preds = %"_ZN4core4iter6traits8iterator8Iterator8for_each4call28_$u7b$$u7b$closure$u7d$$u7d$17h97176fea8250cbd0E.exit.i.i.i.i", %.lr.ph.i.i.i.i
  %.lcssa30.i.i.i.i = phi ptr [ %.promoted28.i.i.i.i, %.lr.ph.i.i.i.i ], [ %.lcssa29.i.i.i.i, %"_ZN4core4iter6traits8iterator8Iterator8for_each4call28_$u7b$$u7b$closure$u7d$$u7d$17h97176fea8250cbd0E.exit.i.i.i.i" ] ; 2 uses
  %.lcssa1627.i.i.i.i = phi ptr [ %.promoted25.i.i.i.i, %.lr.ph.i.i.i.i ], [ %.lcssa1626.i.i.i.i, %"_ZN4core4iter6traits8iterator8Iterator8for_each4call28_$u7b$$u7b$closure$u7d$$u7d$17h97176fea8250cbd0E.exit.i.i.i.i" ] ; 2 uses
  %i.ab = phi i16 [ %.promoted24.i.i.i.i, %.lr.ph.i.i.i.i ], [ %i.al, %"_ZN4core4iter6traits8iterator8Iterator8for_each4call28_$u7b$$u7b$closure$u7d$$u7d$17h97176fea8250cbd0E.exit.i.i.i.i" ] ; 2 uses
  %i.ac = phi i64 [ %.promoted.i.i.i.i, %.lr.ph.i.i.i.i ], [ %i.ao, %"_ZN4core4iter6traits8iterator8Iterator8for_each4call28_$u7b$$u7b$closure$u7d$$u7d$17h97176fea8250cbd0E.exit.i.i.i.i" ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !395)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !396)
  %.not13.i.i.i.i.i.i = icmp eq i16 %i.ab, 0
  br i1 %.not13.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i, label %"_ZN99_$LT$hashbrown..raw..RawIntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hc1f52d97ddea0bb1E.exit.i.i.i.i"

._crit_edge.i.i.i.i.i.i:                          ; preds = %.lr.ph.i.i.i.i.i.i
  store ptr %i.ah, ptr %i.z, align 8, !alias.scope !393, !noalias !392
  store ptr %i.ag, ptr %i.x, align 8, !alias.scope !393, !noalias !392
  br label %"_ZN99_$LT$hashbrown..raw..RawIntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hc1f52d97ddea0bb1E.exit.i.i.i.i"

.lr.ph.i.i.i.i.i.i:                               ; preds = %bb.c, %.lr.ph.i.i.i.i.i.i
  %i.ad = phi ptr [ %i.ah, %.lr.ph.i.i.i.i.i.i ], [ %.lcssa30.i.i.i.i, %bb.c ] ; 2 uses
  %i.ae = phi ptr [ %i.ag, %.lr.ph.i.i.i.i.i.i ], [ %.lcssa1627.i.i.i.i, %bb.c ]
  %.val11.i.i.i.i.i.i = load <16 x i8>, ptr %i.ad, align 16, !noalias !397
  %i.af = icmp sgt <16 x i8> %.val11.i.i.i.i.i.i, splat (i8 -1)
  %i.ag = getelementptr inbounds i8, ptr %i.ae, i64 -512 ; 3 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ad, i64 16 ; 3 uses
  %.cast.i.i.i.i.i.i = bitcast <16 x i1> %i.af to i16 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq i16 %.cast.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i

.body.i.i.i.i:                                    ; preds = %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i4.i.i.i.i.i.i.i.i", %bb.q, %bb.l
  %eh.lpad-body.i.i.i.i = phi { ptr, i32 } [ %i.de, %bb.q ], [ %i.cr, %bb.l ], [ %i.de, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i4.i.i.i.i.i.i.i.i" ]
  invoke fastcc void @"_ZN4core3ptr131drop_in_place$LT$hashbrown..raw..RawIntoIter$LT$$LP$core..any..TypeId$C$alloc..boxed..Box$LT$dyn$u20$core..any..Any$GT$$RP$$GT$$GT$17hf1ebde9ab7f25989E"(ptr noalias noundef nonnull align 8 dereferenceable(64) %i.a) #47
          to label %.body.thread.i unwind label %bb.r, !noalias !398

"_ZN99_$LT$hashbrown..raw..RawIntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hc1f52d97ddea0bb1E.exit.i.i.i.i": ; preds = %._crit_edge.i.i.i.i.i.i, %bb.c
  %.lcssa29.i.i.i.i = phi ptr [ %i.ah, %._crit_edge.i.i.i.i.i.i ], [ %.lcssa30.i.i.i.i, %bb.c ]
  %.lcssa1626.i.i.i.i = phi ptr [ %i.ag, %._crit_edge.i.i.i.i.i.i ], [ %.lcssa1627.i.i.i.i, %bb.c ] ; 2 uses
  %.lcssa.i.i.i.i.i.i = phi i16 [ %.cast.i.i.i.i.i.i, %._crit_edge.i.i.i.i.i.i ], [ %i.ab, %bb.c ] ; 3 uses
  %i.ai = add i16 %.lcssa.i.i.i.i.i.i, -1
  %i.aj = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i.i.i.i.i.i, i1 true)
  %i.ak = zext nneg i16 %i.aj to i64
  %i.al = and i16 %i.ai, %.lcssa.i.i.i.i.i.i      ; 4 uses
  %i.am = sub nsw i64 0, %i.ak
  %i.an = getelementptr inbounds [32 x i8], ptr %.lcssa1626.i.i.i.i, i64 %i.am ; 4 uses
  %i.ao = add i64 %i.ac, -1                       ; 5 uses
  %i.ap = getelementptr inbounds i8, ptr %i.an, i64 -32
  %.sroa.02.sroa.0.0.copyload.i.i.i.i = load i64, ptr %i.ap, align 8, !noalias !399 ; 2 uses
  %.sroa.02.sroa.5.0..sroa_idx.i.i.i.i = getelementptr inbounds i8, ptr %i.an, i64 -24
  %.sroa.02.sroa.5.0.copyload.i.i.i.i = load i64, ptr %.sroa.02.sroa.5.0..sroa_idx.i.i.i.i, align 8, !noalias !399 ; 4 uses
  %.sroa.5.0..sroa_idx3.i.i.i.i = getelementptr inbounds i8, ptr %i.an, i64 -16
  %.sroa.5.0.copyload4.i.i.i.i = load ptr, ptr %.sroa.5.0..sroa_idx3.i.i.i.i, align 8, !noalias !399 ; 4 uses
  %.not.i.i.i.i = icmp eq ptr %.sroa.5.0.copyload4.i.i.i.i, null
  br i1 %.not.i.i.i.i, label %_ZN4core4iter6traits8iterator8Iterator4fold17h18ef23aa661f1e98E.exit.loopexit.i.i.i, label %bb.d

bb.d:                                             ; preds = %"_ZN99_$LT$hashbrown..raw..RawIntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hc1f52d97ddea0bb1E.exit.i.i.i.i"
  %.sroa.7.0..sroa_idx5.i.i.i.i = getelementptr inbounds i8, ptr %i.an, i64 -8
  %.sroa.7.0.copyload6.i.i.i.i = load i64, ptr %.sroa.7.0..sroa_idx5.i.i.i.i, align 8, !noalias !399
  %i.aq = inttoptr i64 %.sroa.7.0.copyload6.i.i.i.i to ptr ; 3 uses
  %i.ar = load i64, ptr %i.r, align 8, !alias.scope !400, !noalias !401, !noundef !21
  %i.as = icmp eq i64 %i.ar, 0
  br i1 %i.as, label %bb.e, label %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$7reserve17hdc538cc0d2283dffE.exit.i.i.i.i.i.i.i.i", !prof !30

bb.e:                                             ; preds = %bb.d
  %i.at = invoke { i64, i64 } @"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$14reserve_rehash17h77a9c9ef68d52054E"(ptr noalias noundef nonnull align 8 dereferenceable(32) %0, i64 noundef 1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.q, i1 noundef zeroext true)
          to label %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$7reserve17hdc538cc0d2283dffE.exit.i.i.i.i.i.i.i.i" unwind label %bb.l, !noalias !402 ; 0 uses

"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$7reserve17hdc538cc0d2283dffE.exit.i.i.i.i.i.i.i.i": ; preds = %bb.e, %bb.d
  %.val.i.i.i.i.i.i.i.i = load ptr, ptr %0, align 8, !alias.scope !403, !noalias !404, !nonnull !21, !noundef !21 ; 8 uses
  %.val7.i.i.i.i.i.i.i.i = load i64, ptr %i.aa, align 8, !alias.scope !403, !noalias !404, !noundef !21 ; 4 uses
  %i.au = lshr i64 %.sroa.02.sroa.5.0.copyload.i.i.i.i, 57
  %i.av = trunc nuw nsw i64 %i.au to i8           ; 3 uses
  %.sroa.0.0.vec.insert.i.i.i.i.i.i.i.i.i.i = insertelement <16 x i8> poison, i8 %i.av, i64 0
  %.sroa.0.15.vec.insert.i.i.i.i.i.i.i.i.i.i = shufflevector <16 x i8> %.sroa.0.0.vec.insert.i.i.i.i.i.i.i.i.i.i, <16 x i8> poison, <16 x i32> zeroinitializer
  %.sroa.3.0.insert.ext.i.i.i.i.i.i = zext i64 %.sroa.02.sroa.5.0.copyload.i.i.i.i to i128
  %.sroa.3.0.insert.shift.i.i.i.i.i.i = shl nuw i128 %.sroa.3.0.insert.ext.i.i.i.i.i.i, 64
  %.sroa.0.0.insert.ext.i.i.i.i.i.i = zext i64 %.sroa.02.sroa.0.0.copyload.i.i.i.i to i128
  %.sroa.0.0.insert.insert.i.i.i.i.i.i = or disjoint i128 %.sroa.3.0.insert.shift.i.i.i.i.i.i, %.sroa.0.0.insert.ext.i.i.i.i.i.i
  br label %bb.f

bb.f:                                             ; preds = %bb.i, %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$7reserve17hdc538cc0d2283dffE.exit.i.i.i.i.i.i.i.i"
  %.pn.i.i.i.i.i.i.i.i.i = phi i64 [ %.sroa.02.sroa.5.0.copyload.i.i.i.i, %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$7reserve17hdc538cc0d2283dffE.exit.i.i.i.i.i.i.i.i" ], [ %i.bu, %bb.i ]
  %.sroa.6.0.i.i.i.i.i.i.i.i.i = phi i64 [ undef, %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$7reserve17hdc538cc0d2283dffE.exit.i.i.i.i.i.i.i.i" ], [ %.sroa.6.120.i.i.i.i.i.i.i.i.i, %bb.i ]
  %.sroa.01.0.i.i.i.i.i.i.i.i.i = phi i64 [ 0, %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$7reserve17hdc538cc0d2283dffE.exit.i.i.i.i.i.i.i.i" ], [ %.sroa.01.122.i.i.i.i.i.i.i.i.i, %bb.i ]
  %i.aw = phi i64 [ 0, %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$7reserve17hdc538cc0d2283dffE.exit.i.i.i.i.i.i.i.i" ], [ %i.bt, %bb.i ]
  %.sroa.0.017.i.i.i.i.i.i.i.i.i = and i64 %.pn.i.i.i.i.i.i.i.i.i, %.val7.i.i.i.i.i.i.i.i ; 4 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i.i.i.i.i, i64 %.sroa.0.017.i.i.i.i.i.i.i.i.i
  %.sroa.0.0.copyload.i24.i.i.i.i.i.i.i.i.i = load <16 x i8>, ptr %i.ax, align 1, !noalias !405 ; 3 uses
  %i.ay = icmp eq <16 x i8> %.sroa.0.0.copyload.i24.i.i.i.i.i.i.i.i.i, %.sroa.0.15.vec.insert.i.i.i.i.i.i.i.i.i.i
  %i.az = bitcast <16 x i1> %i.ay to i16          ; 2 uses
  %.not25.i.i.i.i.i.i.i.i.i = icmp eq i16 %i.az, 0
  br i1 %.not25.i.i.i.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i:                         ; preds = %bb.f, %bb.g
  %.sroa.05.026.i.i.i.i.i.i.i.i.i = phi i16 [ %i.bj, %bb.g ], [ %i.az, %bb.f ] ; 3 uses
  %i.ba = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.05.026.i.i.i.i.i.i.i.i.i, i1 true)
  %i.bb = zext nneg i16 %i.ba to i64
  %i.bc = add i64 %.sroa.0.017.i.i.i.i.i.i.i.i.i, %i.bb
  %i.bd = and i64 %i.bc, %.val7.i.i.i.i.i.i.i.i
  %i.be = sub nsw i64 0, %i.bd
  %i.bf = getelementptr inbounds [32 x i8], ptr %.val.i.i.i.i.i.i.i.i, i64 %i.be ; 3 uses
  %i.bg = getelementptr inbounds i8, ptr %i.bf, i64 -32
  %.val3.i.i.i.i.i.i.i.i.i = load i128, ptr %i.bg, align 8, !noalias !406
  %i.bh = icmp eq i128 %.sroa.0.0.insert.insert.i.i.i.i.i.i, %.val3.i.i.i.i.i.i.i.i.i
  br i1 %i.bh, label %bb.n, label %bb.g, !prof !31

._crit_edge.i.i.i.i.i.i.i.i.i:                    ; preds = %bb.g, %bb.f
  %.not13.i.i.i.i.i.i.i.i.i = icmp eq i64 %.sroa.01.0.i.i.i.i.i.i.i.i.i, 1
  br i1 %.not13.i.i.i.i.i.i.i.i.i, label %.thread.i.i.i.i.i.i.i.i.i, label %bb.h, !prof !30

bb.g:                                             ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i
  %i.bi = add i16 %.sroa.05.026.i.i.i.i.i.i.i.i.i, -1
  %i.bj = and i16 %i.bi, %.sroa.05.026.i.i.i.i.i.i.i.i.i ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i = icmp eq i16 %i.bj, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i

bb.h:                                             ; preds = %._crit_edge.i.i.i.i.i.i.i.i.i
  %i.bk = icmp slt <16 x i8> %.sroa.0.0.copyload.i24.i.i.i.i.i.i.i.i.i, zeroinitializer
  %i.bl = bitcast <16 x i1> %i.bk to i16          ; 2 uses
  %.not.not.i.not.i.i.i.i.i.i.i.i.i = icmp eq i16 %i.bl, 0 ; 2 uses
  %i.bm = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.bl, i1 true)
  %i.bn = zext nneg i16 %i.bm to i64
  %.sroa.6.0.i.i.i.i.i.i.i.i.i.i = select i1 %.not.not.i.not.i.i.i.i.i.i.i.i.i, i64 undef, i64 %i.bn
  %i.bo = add i64 %.sroa.6.0.i.i.i.i.i.i.i.i.i.i, %.sroa.0.017.i.i.i.i.i.i.i.i.i
  %i.bp = and i64 %i.bo, %.val7.i.i.i.i.i.i.i.i
  br i1 %.not.not.i.not.i.i.i.i.i.i.i.i.i, label %bb.i, label %.thread.i.i.i.i.i.i.i.i.i

.thread.i.i.i.i.i.i.i.i.i:                        ; preds = %bb.h, %._crit_edge.i.i.i.i.i.i.i.i.i
  %.sroa.6.121.i.i.i.i.i.i.i.i.i = phi i64 [ %i.bp, %bb.h ], [ %.sroa.6.0.i.i.i.i.i.i.i.i.i, %._crit_edge.i.i.i.i.i.i.i.i.i ] ; 3 uses
  %i.bq = icmp eq <16 x i8> %.sroa.0.0.copyload.i24.i.i.i.i.i.i.i.i.i, splat (i8 -1)
  %i.br = bitcast <16 x i1> %i.bq to i16
  %i.bs = icmp eq i16 %i.br, 0
  br i1 %i.bs, label %bb.i, label %bb.j, !prof !30

bb.i:                                             ; preds = %.thread.i.i.i.i.i.i.i.i.i, %bb.h
  %.sroa.01.122.i.i.i.i.i.i.i.i.i = phi i64 [ 1, %.thread.i.i.i.i.i.i.i.i.i ], [ 0, %bb.h ]
  %.sroa.6.120.i.i.i.i.i.i.i.i.i = phi i64 [ %.sroa.6.121.i.i.i.i.i.i.i.i.i, %.thread.i.i.i.i.i.i.i.i.i ], [ undef, %bb.h ]
  %i.bt = add i64 %i.aw, 16                       ; 2 uses
  %i.bu = add i64 %i.bt, %.sroa.0.017.i.i.i.i.i.i.i.i.i
end_hunk_0
begin_hunk_1_@_ZN10actix_http6config13ServiceConfig3new17h8306cd92e3b96c59E:bb.a
bb.d:                                             ; preds = %bb.c
  %i.m = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #48
  unreachable

"_ZN4core3ptr72drop_in_place$LT$alloc..rc..RcInner$LT$actix_http..config..Inner$GT$$GT$17h8a3c7f100e125401E.exit": ; preds = %bb.c
  resume { ptr, i32 } %i.l

"_ZN5alloc5boxed12Box$LT$T$GT$3new17hddfced9702900d44E.exit": ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %i.j, ptr noundef nonnull align 8 dereferenceable(128) %i.a, i64 128, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.9)
  ret ptr %i.j
}

; Function Attrs: nonlazybind uwtable
define void @_ZN10actix_http6config20ServiceConfigBuilder3new17h53a8c93cdbd2de42E(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([112 x i8]) align 8 captures(none) dereferenceable(112) initializes((0, 12), (16, 28), (32, 44), (48, 50), (80, 107)) %0) unnamed_addr #0 {
bb.a:
  %i.a = tail call fastcc { ptr, ptr } @_ZN10actix_http4date11DateService3new17h3c8edbd5929d35f2E(), !noalias !1120 ; 2 uses
  %i.b = extractvalue { ptr, ptr } %i.a, 0
  %i.c = extractvalue { ptr, ptr } %i.a, 1
  store i64 5, ptr %0, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 0, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.51.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 0, ptr %.sroa.51.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i32 0, ptr %.sroa.6.0..sroa_idx, align 8
  %.sroa.72.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 5, ptr %.sroa.72.0..sroa_idx, align 8
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i32 0, ptr %.sroa.8.0..sroa_idx, align 8
  %.sroa.93.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i16 2, ptr %.sroa.93.0..sroa_idx, align 8
  %.sroa.104.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 80
  store ptr %i.b, ptr %.sroa.104.0..sroa_idx, align 8
  %.sroa.11.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 88
  store ptr %i.c, ptr %.sroa.11.0..sroa_idx, align 8
  %.sroa.12.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 96
  store i32 2097152, ptr %.sroa.12.0..sroa_idx, align 8
  %.sroa.13.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 100
  store i32 1048576, ptr %.sroa.13.0..sroa_idx, align 4
  %.sroa.14.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 104
  store i8 0, ptr %.sroa.14.0..sroa_idx, align 8
  %.sroa.15.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 105
  store i8 1, ptr %.sroa.15.0..sroa_idx, align 1
  %.sroa.16.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 106
  store i8 2, ptr %.sroa.16.0..sroa_idx, align 2
  ret void
}

; Function Attrs: nonlazybind uwtable
define noalias noundef nonnull ptr @_ZN10actix_http6config20ServiceConfigBuilder5build17ha6f103bd7972c2f0E(ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(112) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [128 x i8], align 8               ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i64 1, ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 1, ptr %i.b, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(112) %i.c, ptr noundef nonnull align 8 dereferenceable(112) %0, i64 112, i1 false)
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #45, !noalias !1123
  %i.d = tail call noundef align 8 dereferenceable_or_null(128) ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef 128, i64 noundef range(i64 1, -9223372036854775807) 8) #45, !noalias !1123 ; 3 uses
  %i.e = icmp eq ptr %i.d, null
  br i1 %i.e, label %bb.b, label %"_ZN5alloc5boxed12Box$LT$T$GT$3new17hddfced9702900d44E.exit", !prof !24

bb.b:                                             ; preds = %bb.a
  invoke void @_ZN5alloc5alloc18handle_alloc_error17h8f86e24af4223f3dE(i64 noundef 8, i64 noundef 128) #46
          to label %.noexc unwind label %bb.c

.noexc:                                           ; preds = %bb.b
  unreachable

bb.c:                                             ; preds = %bb.b
  %i.f = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr46drop_in_place$LT$actix_http..config..Inner$GT$17h8e0a0fd6aa807a26E"(ptr noalias noundef readonly align 8 dereferenceable(112) %i.c)
          to label %"_ZN4core3ptr72drop_in_place$LT$alloc..rc..RcInner$LT$actix_http..config..Inner$GT$$GT$17h8a3c7f100e125401E.exit" unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.g = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #48
  unreachable

"_ZN4core3ptr72drop_in_place$LT$alloc..rc..RcInner$LT$actix_http..config..Inner$GT$$GT$17h8a3c7f100e125401E.exit": ; preds = %bb.c
  resume { ptr, i32 } %i.f

"_ZN5alloc5boxed12Box$LT$T$GT$3new17hddfced9702900d44E.exit": ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %i.d, ptr noundef nonnull align 8 dereferenceable(128) %i.a, i64 128, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret ptr %i.d
}

; Function Attrs: nonlazybind uwtable
define void @"_ZN10actix_http6header3map120_$LT$impl$u20$core..convert..From$LT$actix_http..header..map..HeaderMap$GT$$u20$for$u20$http..header..map..HeaderMap$GT$4from17h1ed91704e540821dE"(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([96 x i8]) align 8 captures(none) dereferenceable(96) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(40) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1                 ; 2 uses
  %i.b = alloca [40 x i8], align 8                ; 4 uses
  %i.c = alloca [32 x i8], align 8                ; 4 uses
  %i.d = alloca [40 x i8], align 8                ; 4 uses
  %i.e = alloca [40 x i8], align 8                ; 5 uses
  %i.f = alloca [32 x i8], align 8                ; 5 uses
  %i.g = alloca [40 x i8], align 8                ; 14 uses
  %i.h = alloca [32 x i8], align 8                ; 12 uses
  %i.i = alloca [72 x i8], align 8                ; 7 uses
  %i.j = alloca [296 x i8], align 8               ; 6 uses
  %i.k = alloca [296 x i8], align 8               ; 14 uses
  %i.l = alloca [96 x i8], align 8                ; 22 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1227)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !1228
  %.sroa.7.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.l, i64 40 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.7.0..sroa_idx.i, i8 0, i64 16, i1 false), !noalias !1228
  store i64 0, ptr %i.l, align 8, !alias.scope !1229, !noalias !1228
  %.sroa.58.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.l, i64 24 ; 5 uses
  store i64 0, ptr %.sroa.58.0..sroa_idx.i, align 8, !alias.scope !1229, !noalias !1228
  %.sroa.69.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.l, i64 32 ; 4 uses
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.69.0..sroa_idx.i, align 8, !alias.scope !1229, !noalias !1228
  %.sroa.8.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.l, i64 56
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.8.0..sroa_idx.i, align 8, !alias.scope !1229, !noalias !1228
  %.sroa.9.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.l, i64 64
  store i64 0, ptr %.sroa.9.0..sroa_idx.i, align 8, !alias.scope !1229, !noalias !1228
  %.sroa.10.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.l, i64 72 ; 6 uses
  store ptr inttoptr (i64 2 to ptr), ptr %.sroa.10.0..sroa_idx.i, align 8, !alias.scope !1229, !noalias !1228
  %.sroa.11.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.l, i64 80 ; 6 uses
  store i64 0, ptr %.sroa.11.0..sroa_idx.i, align 8, !alias.scope !1229, !noalias !1228
  %.sroa.12.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.l, i64 88 ; 3 uses
  store i16 0, ptr %.sroa.12.0..sroa_idx.i, align 8, !alias.scope !1229, !noalias !1228
  %.sroa.0.0.copyload.i = load ptr, ptr %1, align 8, !alias.scope !1227, !noalias !1230, !nonnull !21, !noundef !21 ; 6 uses
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.4.0.copyload.i = load i64, ptr %.sroa.4.0..sroa_idx.i, align 8, !alias.scope !1227, !noalias !1230 ; 4 uses
  %.sroa.55.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.sroa.55.0.copyload.i = load i64, ptr %.sroa.55.0..sroa_idx.i, align 8, !alias.scope !1227, !noalias !1230 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1231)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !1228
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !1228
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !1232
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1233)
  %.val3.i.i.i.i.i.i = load <16 x i8>, ptr %.sroa.0.0.copyload.i, align 16, !noalias !1234
  %i.m = icmp sgt <16 x i8> %.val3.i.i.i.i.i.i, splat (i8 -1) ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i, i64 16 ; 2 uses
  %i.o = bitcast <16 x i1> %i.m to i16
  br label %.outer.i.i.i.i.i.i.i

.outer.i.i.i.i.i.i.i:                             ; preds = %"_ZN92_$LT$hashbrown..map..Iter$LT$K$C$V$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold28_$u7b$$u7b$closure$u7d$$u7d$17h0a54da1fcddbcc0eE.exit.i.i.i.i.i.i.i", %bb.a
  %i.p = phi i16 [ %i.u, %"_ZN92_$LT$hashbrown..map..Iter$LT$K$C$V$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold28_$u7b$$u7b$closure$u7d$$u7d$17h0a54da1fcddbcc0eE.exit.i.i.i.i.i.i.i" ], [ %i.o, %bb.a ] ; 2 uses
  %.lcssa2631.i.i.i.i.i.i.i = phi ptr [ %.lcssa2630.i.i.i.i.i.i.i, %"_ZN92_$LT$hashbrown..map..Iter$LT$K$C$V$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold28_$u7b$$u7b$closure$u7d$$u7d$17h0a54da1fcddbcc0eE.exit.i.i.i.i.i.i.i" ], [ %i.n, %bb.a ] ; 2 uses
  %.lcssa2529.i.i.i.i.i.i.i = phi ptr [ %.lcssa2528.i.i.i.i.i.i.i, %"_ZN92_$LT$hashbrown..map..Iter$LT$K$C$V$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold28_$u7b$$u7b$closure$u7d$$u7d$17h0a54da1fcddbcc0eE.exit.i.i.i.i.i.i.i" ], [ %.sroa.0.0.copyload.i, %bb.a ] ; 2 uses
  %.sroa.02.0.ph.i.i.i.i.i.i.i = phi i64 [ %i.ac, %"_ZN92_$LT$hashbrown..map..Iter$LT$K$C$V$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold28_$u7b$$u7b$closure$u7d$$u7d$17h0a54da1fcddbcc0eE.exit.i.i.i.i.i.i.i" ], [ 0, %bb.a ] ; 5 uses
  %.sroa.0.0.ph.i.i.i.i.i.i.i = phi i64 [ %i.ad, %"_ZN92_$LT$hashbrown..map..Iter$LT$K$C$V$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold28_$u7b$$u7b$closure$u7d$$u7d$17h0a54da1fcddbcc0eE.exit.i.i.i.i.i.i.i" ], [ %.sroa.55.0.copyload.i, %bb.a ] ; 2 uses
  %.not22.i.i.i.i.i.i.i = icmp eq i16 %i.p, 0
  br i1 %.not22.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %.outer.i.i.i.i.i.i.i
  %i.q = icmp eq i64 %.sroa.0.0.ph.i.i.i.i.i.i.i, 0
  br i1 %i.q, label %_ZN10actix_http6header3map9HeaderMap3len17h48b3e145e4f4a5c5E.exit.i.i.i, label %.lr.ph.split.i.i.i.i.i.i.i

._crit_edge.i.i.i.i.i.i.i:                        ; preds = %.lr.ph.split.i.i.i.i.i.i.i, %.outer.i.i.i.i.i.i.i
  %.lcssa2630.i.i.i.i.i.i.i = phi ptr [ %.lcssa2631.i.i.i.i.i.i.i, %.outer.i.i.i.i.i.i.i ], [ %i.ai, %.lr.ph.split.i.i.i.i.i.i.i ]
  %.lcssa2528.i.i.i.i.i.i.i = phi ptr [ %.lcssa2529.i.i.i.i.i.i.i, %.outer.i.i.i.i.i.i.i ], [ %i.ah, %.lr.ph.split.i.i.i.i.i.i.i ] ; 2 uses
  %.lcssa.i.i.i.i.i.i.i = phi i16 [ %i.p, %.outer.i.i.i.i.i.i.i ], [ %.cast.i.i.i.i.i.i.i, %.lr.ph.split.i.i.i.i.i.i.i ] ; 3 uses
  %i.r = add i16 %.lcssa.i.i.i.i.i.i.i, -1
  %i.s = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i.i.i.i.i.i.i, i1 true)
  %i.t = zext nneg i16 %i.s to i64
  %i.u = and i16 %i.r, %.lcssa.i.i.i.i.i.i.i
  %i.v = sub nsw i64 0, %i.t
  %i.w = getelementptr inbounds [200 x i8], ptr %.lcssa2528.i.i.i.i.i.i.i, i64 %i.v ; 2 uses
  %i.x = getelementptr inbounds i8, ptr %i.w, i64 -8
  %i.y = load i64, ptr %i.x, align 8, !noalias !1235, !noundef !21 ; 2 uses
  %i.z = icmp ugt i64 %i.y, 4
  br i1 %i.z, label %bb.b, label %"_ZN92_$LT$hashbrown..map..Iter$LT$K$C$V$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold28_$u7b$$u7b$closure$u7d$$u7d$17h0a54da1fcddbcc0eE.exit.i.i.i.i.i.i.i"

bb.b:                                             ; preds = %._crit_edge.i.i.i.i.i.i.i
  %i.aa = getelementptr inbounds i8, ptr %i.w, i64 -160
  %i.ab = load i64, ptr %i.aa, align 8, !noalias !1235, !noundef !21
  br label %"_ZN92_$LT$hashbrown..map..Iter$LT$K$C$V$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold28_$u7b$$u7b$closure$u7d$$u7d$17h0a54da1fcddbcc0eE.exit.i.i.i.i.i.i.i"

"_ZN92_$LT$hashbrown..map..Iter$LT$K$C$V$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold28_$u7b$$u7b$closure$u7d$$u7d$17h0a54da1fcddbcc0eE.exit.i.i.i.i.i.i.i": ; preds = %bb.b, %._crit_edge.i.i.i.i.i.i.i
  %.sink10.i.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.ab, %bb.b ], [ %i.y, %._crit_edge.i.i.i.i.i.i.i ]
  %i.ac = add i64 %.sink10.i.i.i.i.i.i.i.i.i.i.i.i, %.sroa.02.0.ph.i.i.i.i.i.i.i
  %i.ad = add i64 %.sroa.0.0.ph.i.i.i.i.i.i.i, -1
  br label %.outer.i.i.i.i.i.i.i

.lr.ph.split.i.i.i.i.i.i.i:                       ; preds = %.lr.ph.i.i.i.i.i.i.i, %.lr.ph.split.i.i.i.i.i.i.i
  %i.ae = phi ptr [ %i.ai, %.lr.ph.split.i.i.i.i.i.i.i ], [ %.lcssa2631.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i ] ; 2 uses
  %i.af = phi ptr [ %i.ah, %.lr.ph.split.i.i.i.i.i.i.i ], [ %.lcssa2529.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i ]
  %.val18.i.i.i.i.i.i.i = load <16 x i8>, ptr %i.ae, align 16, !noalias !1236
  %i.ag = icmp sgt <16 x i8> %.val18.i.i.i.i.i.i.i, splat (i8 -1)
  %i.ah = getelementptr inbounds i8, ptr %i.af, i64 -3200 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ae, i64 16 ; 2 uses
  %.cast.i.i.i.i.i.i.i = bitcast <16 x i1> %i.ag to i16 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq i16 %.cast.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i.i.i, label %.lr.ph.split.i.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i.i

_ZN10actix_http6header3map9HeaderMap3len17h48b3e145e4f4a5c5E.exit.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i
  %i.aj = icmp eq i64 %.sroa.4.0.copyload.i, 0
  br i1 %i.aj, label %bb.c, label %_ZN9hashbrown3raw11TableLayout20calculate_layout_for17hb76643e6316511fcE.exit.i.i.i.i.i.i.i

_ZN9hashbrown3raw11TableLayout20calculate_layout_for17hb76643e6316511fcE.exit.i.i.i.i.i.i.i: ; preds = %_ZN10actix_http6header3map9HeaderMap3len17h48b3e145e4f4a5c5E.exit.i.i.i
  %i.ak = mul i64 %.sroa.4.0.copyload.i, 200      ; 2 uses
  %2 = add i64 %i.ak, 200
  %3 = icmp ult i64 %2, -15
  tail call void @llvm.assume(i1 %3)
  %i.al = and i64 %i.ak, -16                      ; 2 uses
  %4 = add i64 %i.al, 208                         ; 2 uses
  %i.am = add i64 %.sroa.4.0.copyload.i, 17
  %i.an = add i64 %i.am, %4                       ; 3 uses
  %5 = icmp uge i64 %i.an, %4
  tail call void @llvm.assume(i1 %5)
  %6 = icmp ult i64 %i.an, 9223372036854775793
  tail call void @llvm.assume(i1 %6)
  %i.ao = sub i64 -208, %i.al
  %i.ap = getelementptr inbounds i8, ptr %.sroa.0.0.copyload.i, i64 %i.ao
  br label %bb.c

.thread27.i.i:                                    ; preds = %"_ZN4http6header3map18HeaderMap$LT$T$GT$11try_reserve17hf69a570de10fd6d8E.exit.thread.i.i", %.invoke.i.i
  %lpad.thr_comm.i.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.an

bb.c:                                             ; preds = %_ZN10actix_http6header3map9HeaderMap3len17h48b3e145e4f4a5c5E.exit.i.i.i, %_ZN9hashbrown3raw11TableLayout20calculate_layout_for17hb76643e6316511fcE.exit.i.i.i.i.i.i.i
  %.sroa.5.sroa.0.0.i.i.i.i.i.i.i = phi i64 [ %i.an, %_ZN9hashbrown3raw11TableLayout20calculate_layout_for17hb76643e6316511fcE.exit.i.i.i.i.i.i.i ], [ undef, %_ZN10actix_http6header3map9HeaderMap3len17h48b3e145e4f4a5c5E.exit.i.i.i ]
  %.sroa.5.sroa.4.0.i.i.i.i.i.i.i = phi ptr [ %i.ap, %_ZN9hashbrown3raw11TableLayout20calculate_layout_for17hb76643e6316511fcE.exit.i.i.i.i.i.i.i ], [ undef, %_ZN10actix_http6header3map9HeaderMap3len17h48b3e145e4f4a5c5E.exit.i.i.i ]
  %.sroa.0.0.i.i.i.i.i.i.i = phi i64 [ 16, %_ZN9hashbrown3raw11TableLayout20calculate_layout_for17hb76643e6316511fcE.exit.i.i.i.i.i.i.i ], [ 0, %_ZN10actix_http6header3map9HeaderMap3len17h48b3e145e4f4a5c5E.exit.i.i.i ]
  %i.aq = getelementptr i8, ptr %.sroa.0.0.copyload.i, i64 %.sroa.4.0.copyload.i
  %i.ar = getelementptr i8, ptr %i.aq, i64 1
  %i.as = getelementptr inbounds nuw i8, ptr %i.k, i64 224
  store i64 %.sroa.0.0.i.i.i.i.i.i.i, ptr %i.as, align 8, !alias.scope !1233, !noalias !1237
  %.sroa.47.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.k, i64 232
  store i64 %.sroa.5.sroa.0.0.i.i.i.i.i.i.i, ptr %.sroa.47.0..sroa_idx.i.i.i, align 8, !alias.scope !1233, !noalias !1237
  %.sroa.58.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.k, i64 240
  store ptr %.sroa.5.sroa.4.0.i.i.i.i.i.i.i, ptr %.sroa.58.0..sroa_idx.i.i.i, align 8, !alias.scope !1233, !noalias !1237
  %.sroa.69.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.k, i64 248
  store ptr %.sroa.0.0.copyload.i, ptr %.sroa.69.0..sroa_idx.i.i.i, align 8, !alias.scope !1233, !noalias !1237
  %.sroa.710.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.k, i64 256
  store ptr %i.n, ptr %.sroa.710.0..sroa_idx.i.i.i, align 8, !alias.scope !1233, !noalias !1237
  %.sroa.811.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.k, i64 264
  store ptr %i.ar, ptr %.sroa.811.0..sroa_idx.i.i.i, align 8, !alias.scope !1233, !noalias !1237
  %.sroa.912.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.k, i64 272
  store <16 x i1> %i.m, ptr %.sroa.912.0..sroa_idx.i.i.i, align 8, !alias.scope !1233, !noalias !1237
  %.sroa.11.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.k, i64 280
  store i64 %.sroa.55.0.copyload.i, ptr %.sroa.11.0..sroa_idx.i.i.i, align 8, !alias.scope !1233, !noalias !1237
  store i64 0, ptr %i.k, align 8, !alias.scope !1233, !noalias !1237
  %i.at = getelementptr inbounds nuw i8, ptr %i.k, i64 288
  store i64 %.sroa.02.0.ph.i.i.i.i.i.i.i, ptr %i.at, align 8, !alias.scope !1233, !noalias !1237
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1238)
  %.not.i = icmp eq i64 %.sroa.02.0.ph.i.i.i.i.i.i.i, 0
  br i1 %.not.i, label %"_ZN4core6result19Result$LT$T$C$E$GT$6expect17hc1fd0f743d2fe2d3E.exit.i.i", label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.au = icmp eq i64 %.sroa.02.0.ph.i.i.i.i.i.i.i, 1 ; 2 uses
  %i.av = add i64 %.sroa.02.0.ph.i.i.i.i.i.i.i, -1
  %i.aw = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.av, i1 true)
  %i.ax = lshr i64 -1, %i.aw                      ; 4 uses
  %.sroa.018.0.i.i.i = select i1 %i.au, i64 0, i64 %i.ax ; 2 uses
  %i.ay = add nuw nsw i64 %.sroa.018.0.i.i.i, 1   ; 5 uses
  %or.cond.i.i.i = icmp ugt i64 %.sroa.018.0.i.i.i, 32767
  br i1 %or.cond.i.i.i, label %"_ZN4http6header3map18HeaderMap$LT$T$GT$11try_reserve17hf69a570de10fd6d8E.exit.thread.i.i", label %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i, !prof !49

_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i: ; preds = %bb.d
  %i.az = trunc nuw i64 %i.ay to i16
  %i.ba = add i16 %i.az, -1
  store i16 %i.ba, ptr %.sroa.12.0..sroa_idx.i, align 8, !alias.scope !1239, !noalias !1240
  %i.bb = shl nuw nsw i64 %i.ay, 2                ; 2 uses
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #45, !noalias !1241
  %i.bc = tail call noundef align 2 ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef %i.bb, i64 noundef range(i64 1, 9) 2) #45, !noalias !1241 ; 7 uses
  %i.bd = icmp eq ptr %i.bc, null
  br i1 %i.bd, label %.invoke.i.i, label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17hbdfca0cd9d76e044E.exit.i.i.i.i.i"

"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17hbdfca0cd9d76e044E.exit.i.i.i.i.i": ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i
  br i1 %i.au, label %"_ZN4core3ptr78drop_in_place$LT$alloc..boxed..Box$LT$$u5b$http..header..map..Pos$u5d$$GT$$GT$17h44109f16da85065bE.exit.i.i.i", label %.lr.ph.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17hbdfca0cd9d76e044E.exit.i.i.i.i.i"
  %min.iters.check = icmp ult i64 %i.ax, 8
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i.preheader109, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.i.i.preheader
  %n.vec = and i64 %i.ax, -8                      ; 3 uses
  %i.be = shl i64 %n.vec, 2
  %i.bf = getelementptr i8, ptr %i.bc, i64 %i.be
  %i.bg = or disjoint i64 %n.vec, 1
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.bh = shl i64 %index, 2                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.bc, i64 %i.bh
  %i.bi = getelementptr i8, ptr %i.bc, i64 %i.bh
  %next.gep89 = getelementptr i8, ptr %i.bi, i64 16
  store <8 x i16> <i16 -1, i16 0, i16 -1, i16 0, i16 -1, i16 0, i16 -1, i16 0>, ptr %next.gep, align 2, !noalias !1242
  store <8 x i16> <i16 -1, i16 0, i16 -1, i16 0, i16 -1, i16 0, i16 -1, i16 0>, ptr %next.gep89, align 2, !noalias !1242
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.bj = icmp eq i64 %index.next, %n.vec
  br i1 %i.bj, label %.lr.ph.i.i.i.i.i.preheader109, label %vector.body, !llvm.loop !1162

.lr.ph.i.i.i.i.i.preheader109:                    ; preds = %vector.body, %.lr.ph.i.i.i.i.i.preheader
  %.sroa.0.09.i.i.i.i.i.ph = phi ptr [ %i.bc, %.lr.ph.i.i.i.i.i.preheader ], [ %i.bf, %vector.body ]
  %.sroa.03.08.i.i.i.i.i.ph = phi i64 [ 1, %.lr.ph.i.i.i.i.i.preheader ], [ %i.bg, %vector.body ]
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.preheader109, %.lr.ph.i.i.i.i.i
  %.sroa.0.09.i.i.i.i.i = phi ptr [ %i.bm, %.lr.ph.i.i.i.i.i ], [ %.sroa.0.09.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader109 ] ; 3 uses
  %.sroa.03.08.i.i.i.i.i = phi i64 [ %i.bk, %.lr.ph.i.i.i.i.i ], [ %.sroa.03.08.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader109 ] ; 2 uses
  %i.bk = add nuw nsw i64 %.sroa.03.08.i.i.i.i.i, 1
  store i16 -1, ptr %.sroa.0.09.i.i.i.i.i, align 2, !noalias !1242
  %i.bl = getelementptr inbounds nuw i8, ptr %.sroa.0.09.i.i.i.i.i, i64 2
  store i16 0, ptr %i.bl, align 2, !noalias !1242
  %i.bm = getelementptr inbounds nuw i8, ptr %.sroa.0.09.i.i.i.i.i, i64 4 ; 2 uses
  %exitcond.not.i.i.i.i.i = icmp eq i64 %.sroa.03.08.i.i.i.i.i, %i.ax
  br i1 %exitcond.not.i.i.i.i.i, label %"_ZN4core3ptr78drop_in_place$LT$alloc..boxed..Box$LT$$u5b$http..header..map..Pos$u5d$$GT$$GT$17h44109f16da85065bE.exit.i.i.i", label %.lr.ph.i.i.i.i.i, !llvm.loop !1163

"_ZN4core3ptr78drop_in_place$LT$alloc..boxed..Box$LT$$u5b$http..header..map..Pos$u5d$$GT$$GT$17h44109f16da85065bE.exit.i.i.i": ; preds = %.lr.ph.i.i.i.i.i, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17hbdfca0cd9d76e044E.exit.i.i.i.i.i"
  %.sroa.0.0.lcssa16.i.i.i.i.i = phi ptr [ %i.bc, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17hbdfca0cd9d76e044E.exit.i.i.i.i.i" ], [ %i.bm, %.lr.ph.i.i.i.i.i ] ; 2 uses
  store i16 -1, ptr %.sroa.0.0.lcssa16.i.i.i.i.i, align 2, !noalias !1242
  %i.bn = getelementptr inbounds nuw i8, ptr %.sroa.0.0.lcssa16.i.i.i.i.i, i64 2
  store i16 0, ptr %i.bn, align 2, !noalias !1242
  store ptr %i.bc, ptr %.sroa.10.0..sroa_idx.i, align 8, !alias.scope !1239, !noalias !1240
  store i64 %i.ay, ptr %.sroa.11.0..sroa_idx.i, align 8, !alias.scope !1239, !noalias !1240
  %i.bo = lshr i64 %i.ay, 2
  %i.bp = sub nuw nsw i64 %i.ay, %i.bo            ; 3 uses
  %i.bq = mul nuw nsw i64 %i.bp, 104              ; 2 uses
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #45, !noalias !1243
  %i.br = tail call noundef align 8 ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef %i.bq, i64 noundef range(i64 1, 9) 8) #45, !noalias !1243 ; 3 uses
  %i.bs = icmp eq ptr %i.br, null
  br i1 %i.bs, label %.invoke.i.i, label %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17h235b1f0f1411e3bfE.exit.i.i.i"

.invoke.i.i:                                      ; preds = %"_ZN4core3ptr78drop_in_place$LT$alloc..boxed..Box$LT$$u5b$http..header..map..Pos$u5d$$GT$$GT$17h44109f16da85065bE.exit.i.i.i", %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i
  %i.bt = phi i64 [ 2, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i ], [ 8, %"_ZN4core3ptr78drop_in_place$LT$alloc..boxed..Box$LT$$u5b$http..header..map..Pos$u5d$$GT$$GT$17h44109f16da85065bE.exit.i.i.i" ]
  %i.bu = phi i64 [ %i.bb, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i ], [ %i.bq, %"_ZN4core3ptr78drop_in_place$LT$alloc..boxed..Box$LT$$u5b$http..header..map..Pos$u5d$$GT$$GT$17h44109f16da85065bE.exit.i.i.i" ]
  %i.bv = phi ptr [ @561, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i ], [ @562, %"_ZN4core3ptr78drop_in_place$LT$alloc..boxed..Box$LT$$u5b$http..header..map..Pos$u5d$$GT$$GT$17h44109f16da85065bE.exit.i.i.i" ]
  invoke void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef %i.bt, i64 %i.bu, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.bv) #46
          to label %.cont.i.i unwind label %.thread27.i.i, !noalias !1240

.cont.i.i:                                        ; preds = %.invoke.i.i
  unreachable

"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17h235b1f0f1411e3bfE.exit.i.i.i": ; preds = %"_ZN4core3ptr78drop_in_place$LT$alloc..boxed..Box$LT$$u5b$http..header..map..Pos$u5d$$GT$$GT$17h44109f16da85065bE.exit.i.i.i"
  invoke fastcc void @"_ZN4core3ptr109drop_in_place$LT$alloc..vec..Vec$LT$http..header..map..Bucket$LT$http..header..value..HeaderValue$GT$$GT$$GT$17h1de2d72d91212fafE"(ptr noalias noundef align 8 dereferenceable(24) %.sroa.58.0..sroa_idx.i)
          to label %bb.e unwind label %.thread23.i.i, !noalias !1240

.thread23.i.i:                                    ; preds = %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17h235b1f0f1411e3bfE.exit.i.i.i"
  %i.bw = landingpad { ptr, i32 }
          cleanup
  store i64 %i.bp, ptr %.sroa.58.0..sroa_idx.i, align 8, !alias.scope !1239, !noalias !1240
  store ptr %i.br, ptr %.sroa.69.0..sroa_idx.i, align 8, !alias.scope !1239, !noalias !1240
  br label %bb.an

bb.e:                                             ; preds = %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17h235b1f0f1411e3bfE.exit.i.i.i"
  store i64 %i.bp, ptr %.sroa.58.0..sroa_idx.i, align 8, !alias.scope !1239, !noalias !1240
  store ptr %i.br, ptr %.sroa.69.0..sroa_idx.i, align 8, !alias.scope !1239, !noalias !1240
  br label %"_ZN4core6result19Result$LT$T$C$E$GT$6expect17hc1fd0f743d2fe2d3E.exit.i.i"

"_ZN4http6header3map18HeaderMap$LT$T$GT$11try_reserve17hf69a570de10fd6d8E.exit.thread.i.i": ; preds = %bb.d
  invoke void @_ZN4core6result13unwrap_failed17h0501379eaec3e720E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @130, i64 noundef 23, ptr noundef nonnull align 1 %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @543, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @375) #46
          to label %.noexc7.i.i unwind label %.thread27.i.i, !noalias !1240

.noexc7.i.i:                                      ; preds = %"_ZN4http6header3map18HeaderMap$LT$T$GT$11try_reserve17hf69a570de10fd6d8E.exit.thread.i.i"
  unreachable

"_ZN4core6result19Result$LT$T$C$E$GT$6expect17hc1fd0f743d2fe2d3E.exit.i.i": ; preds = %bb.e, %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !1232
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(296) %i.j, ptr noundef nonnull align 8 dereferenceable(296) %i.k, i64 296, i1 false), !noalias !1232
  %i.bx = getelementptr inbounds nuw i8, ptr %i.i, i64 64
  %i.by = getelementptr inbounds nuw i8, ptr %i.i, i64 32
  %i.bz = getelementptr inbounds nuw i8, ptr %i.h, i64 8 ; 4 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %i.h, i64 16 ; 3 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %i.l, i64 48
  %i.cc = getelementptr inbounds nuw i8, ptr %i.h, i64 24 ; 3 uses
  br label %bb.f

bb.f:                                             ; preds = %"_ZN4core6result19Result$LT$T$C$E$GT$6expect17hef4946ab596fe8bdE.exit.i.i", %"_ZN4core6result19Result$LT$T$C$E$GT$6expect17hc1fd0f743d2fe2d3E.exit.i.i"
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !1232
  invoke void @"_ZN92_$LT$actix_http..header..map..IntoIter$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h845ed4ebfcb90ed9E"(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(address) dereferenceable(72) %i.i, ptr noalias noundef nonnull align 8 dereferenceable(296) %i.j)
          to label %bb.g unwind label %.loopexit.i.i, !noalias !1240

.loopexit.i.i:                                    ; preds = %bb.ae, %.noexc.i.i.i, %bb.n, %bb.f
  %lpad.loopexit.i.i = landingpad { ptr, i32 }
          cleanup
  br label %.body14.i.i

.loopexit.split-lp.i.i:                           ; preds = %.loopexit40.i.i, %bb.ah, %bb.q
  %lpad.loopexit.split-lp.i.i = landingpad { ptr, i32 }
          cleanup
  br label %.body14.i.i

.body14.i.i:                                      ; preds = %bb.ak, %.thread55.i.i.i, %.loopexit.split-lp.i.i, %.loopexit.i.i
  %eh.lpad-body15.i.i = phi { ptr, i32 } [ %.pn59.i.i.i, %.thread55.i.i.i ], [ %.pn59.i.i.i, %bb.ak ], [ %lpad.loopexit.i.i, %.loopexit.i.i ], [ %lpad.loopexit.split-lp.i.i, %.loopexit.split-lp.i.i ]
  invoke fastcc void @"_ZN4core3ptr54drop_in_place$LT$actix_http..header..map..IntoIter$GT$17h467e39a2065df9b5E"(ptr noalias noundef align 8 dereferenceable(296) %i.j) #47
          to label %.body.i unwind label %bb.am, !noalias !1240

bb.g:                                             ; preds = %bb.f
  %i.cd = load i8, ptr %i.bx, align 8, !range !22, !noalias !1232, !noundef !21
  %.not.i.i = icmp eq i8 %i.cd, 2
  br i1 %.not.i.i, label %bb.al, label %bb.h

bb.h:                                             ; preds = %bb.g
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.h, ptr noundef nonnull align 8 dereferenceable(32) %i.i, i64 32, i1 false), !noalias !1232
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.g, ptr noundef nonnull align 8 dereferenceable(40) %i.by, i64 40, i1 false), !noalias !1232
  call void @llvm.experimental.noalias.scope.decl(metadata !1244)
  call void @llvm.experimental.noalias.scope.decl(metadata !1245)
  call void @llvm.experimental.noalias.scope.decl(metadata !1246)
  %i.ce = invoke fastcc noundef zeroext i1 @"_ZN4http6header3map18HeaderMap$LT$T$GT$15try_reserve_one17hfc460cfa010b52f2E"(ptr noalias noundef nonnull align 8 dereferenceable(96) %i.l)
          to label %bb.i unwind label %.loopexit35.i.i, !noalias !1247

bb.i:                                             ; preds = %bb.h
  br i1 %i.ce, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.cf = call fastcc noundef i16 @_ZN4http6header3map15hash_elem_using17h9537a80642263a08E(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(96) %i.l, ptr noundef nonnull align 8 dereferenceable(32) %i.h), !noalias !1248 ; 6 uses
  %i.cg = load i16, ptr %.sroa.12.0..sroa_idx.i, align 8, !alias.scope !1249, !noalias !1247, !noundef !21 ; 3 uses
  %i.ch = and i16 %i.cg, %i.cf
end_hunk_1
