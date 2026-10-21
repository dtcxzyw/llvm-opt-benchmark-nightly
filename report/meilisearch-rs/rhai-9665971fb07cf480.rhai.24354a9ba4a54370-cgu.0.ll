Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/meilisearch-rs/original/rhai-9665971fb07cf480.rhai.24354a9ba4a54370-cgu.0?download=true
inline.NumInlined: 22837
inline.NumDeleted: 6491
loop-unroll.NumCompletelyUnrolled: 109
loop-unroll.NumRuntimeUnrolled: 148
loop-unroll.NumUnrolled: 257
begin_hunk_0_@"_ZN4rhai4eval8chaining38_$LT$impl$u20$rhai..engine..Engine$GT$24eval_dot_index_chain_raw17hc1815716e2083ea5E":bb.a
  %.sroa.6366.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ai, i64 17
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.6366.0..sroa_idx, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.6570.0..sroa_idx, i64 7, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ah)
  store ptr %i.axy, ptr %i.ai, align 8
  %.sroa.4364.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ai, i64 8
  store i64 %.sroa.4568.0.copyload, ptr %.sroa.4364.0..sroa_idx, align 8
  %.sroa.5365.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ai, i64 16
  store i8 %i.axw, ptr %.sroa.5365.0..sroa_idx, align 8
  invoke fastcc void @"_ZN4core3ptr48drop_in_place$LT$rhai..types..dynamic..Union$GT$17h49c4795ab223165bE"(ptr noalias noundef nonnull readonly align 8 dereferenceable(24) %i.ai)
          to label %"_ZN4core3ptr65drop_in_place$LT$$LP$rhai..types..dynamic..Dynamic$C$bool$RP$$GT$17he1f32ffe9269d53aE.exit1339" unwind label %bb.yo

"_ZN4core3ptr65drop_in_place$LT$$LP$rhai..types..dynamic..Dynamic$C$bool$RP$$GT$17he1f32ffe9269d53aE.exit1339": ; preds = %bb.zg
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ai)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aj)
  br label %bb.yd

bb.zh:                                            ; preds = %bb.yd
  call void @llvm.lifetime.end.p0(ptr nonnull %i.an)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ao)
  invoke fastcc void @"_ZN4core3ptr48drop_in_place$LT$rhai..types..dynamic..Union$GT$17h49c4795ab223165bE"(ptr noalias noundef readonly align 8 dereferenceable(16) %i.aq)
          to label %"_ZN4core3ptr50drop_in_place$LT$rhai..types..dynamic..Dynamic$GT$17hebb38c0752eb41d6E.exit1341" unwind label %.loopexit.split-lp.loopexit.split-lp, !inline_history !71

"_ZN4core3ptr50drop_in_place$LT$rhai..types..dynamic..Dynamic$GT$17hebb38c0752eb41d6E.exit1341": ; preds = %bb.zh
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aq)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ar)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.as)
  br label %bb.aaa

"_ZN4core3ptr50drop_in_place$LT$rhai..types..dynamic..Dynamic$GT$17hebb38c0752eb41d6E.exit1337": ; preds = %bb.zf
  call void @llvm.lifetime.end.p0(ptr nonnull %i.al)
  br label %bb.zi

bb.zi:                                            ; preds = %"_ZN4core3ptr50drop_in_place$LT$rhai..types..dynamic..Dynamic$GT$17hebb38c0752eb41d6E.exit1337", %bb.yb
  invoke fastcc void @"_ZN4core3ptr47drop_in_place$LT$rhai..eval..target..Target$GT$17hc78ff2920b6dc689E"(ptr noalias noundef align 8 dereferenceable(48) %i.an)
          to label %bb.zj unwind label %bb.xv

bb.zj:                                            ; preds = %bb.zi, %bb.xx
  %.sroa.0408.5 = phi i8 [ 1, %bb.xx ], [ 0, %bb.zi ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.an)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ao)
  invoke fastcc void @"_ZN4core3ptr48drop_in_place$LT$rhai..types..dynamic..Union$GT$17h49c4795ab223165bE"(ptr noalias noundef readonly align 8 dereferenceable(16) %i.aq)
          to label %"_ZN4core3ptr50drop_in_place$LT$rhai..types..dynamic..Dynamic$GT$17hebb38c0752eb41d6E.exit1343" unwind label %.loopexit.split-lp.loopexit.split-lp, !inline_history !71

"_ZN4core3ptr50drop_in_place$LT$rhai..types..dynamic..Dynamic$GT$17hebb38c0752eb41d6E.exit1343": ; preds = %bb.zj
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aq)
  %i.aya = trunc nuw i8 %.sroa.0408.5 to i1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ar)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.as)
  %i.ayb = load i8, ptr %10, align 8, !range !68
  %i.ayc = icmp ne i8 %i.ayb, 12
  %or.cond426.not = select i1 %i.aya, i1 %i.ayc, i1 false
  br i1 %or.cond426.not, label %bb.aae, label %"_ZN4core3ptr122drop_in_place$LT$core..option..Option$LT$$LP$rhai..types..dynamic..Dynamic$C$$RF$rhai..ast..stmt..OpAssignment$RP$$GT$$GT$17h2cd0bb27ecbc1f74E.exit1381"

bb.zk:                                            ; preds = %bb.wd
  %i.ayd = getelementptr inbounds nuw i8, ptr %i.arq, i64 2
  %i.aye = load i16, ptr %i.ayd, align 2, !noundef !53
  %i.ayf = getelementptr inbounds nuw i8, ptr %i.arq, i64 4
  %i.ayg = load i16, ptr %i.ayf, align 4, !noundef !53
  %i.ayh = getelementptr inbounds nuw i8, ptr %i.arq, i64 8
  %i.ayi = load ptr, ptr %i.ayh, align 8, !nonnull !53, !align !54, !noundef !53 ; 5 uses
  %i.ayj = getelementptr inbounds nuw i8, ptr %i.ayi, i64 48 ; 2 uses
  %i.ayk = getelementptr inbounds nuw i8, ptr %9, i64 80 ; 5 uses
  %i.ayl = load i64, ptr %i.ayk, align 8, !alias.scope !28108, !noundef !53 ; 2 uses
  %i.aym = icmp ugt i64 %i.ayl, 5                 ; 2 uses
  %i.ayn = load ptr, ptr %9, align 8, !alias.scope !28108, !nonnull !53
  %i.ayo = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 3 uses
  %i.ayp = load i64, ptr %i.ayo, align 8, !alias.scope !28108
  %.sink10.i1304 = select i1 %i.aym, i64 %i.ayp, i64 %i.ayl ; 4 uses
  %i.ayq = getelementptr inbounds nuw i8, ptr %i.ayi, i64 128
  %i.ayr = load i64, ptr %i.ayq, align 8, !alias.scope !28109, !noundef !53 ; 2 uses
  %i.ays = icmp ugt i64 %i.ayr, 5                 ; 2 uses
  %i.ayt = load ptr, ptr %i.ayj, align 8, !alias.scope !28109, !nonnull !53
  %i.ayu = getelementptr inbounds nuw i8, ptr %i.ayi, i64 56
  %i.ayv = load i64, ptr %i.ayu, align 8, !alias.scope !28109
  %.sink10.i1345 = select i1 %i.ays, i64 %i.ayv, i64 %i.ayr ; 4 uses
  %i.ayw = sub i64 %.sink10.i1304, %.sink10.i1345 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ae)
  %i.ayx = getelementptr inbounds nuw i8, ptr %i.ae, i64 16
  store ptr %9, ptr %i.ayx, align 8
  store i64 1, ptr %i.ae, align 8
  %i.ayy = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  store i64 %i.ayw, ptr %i.ayy, align 8
  %i.ayz = icmp ugt i64 %.sink10.i1345, %.sink10.i1304
  br i1 %i.ayz, label %bb.zl, label %bb.zn, !prof !64

bb.zl:                                            ; preds = %bb.zk
  invoke void @_ZN4core5slice5index16slice_index_fail17hfe436548ecebea33E(i64 noundef %i.ayw, i64 noundef %.sink10.i1304, i64 noundef %.sink10.i1304, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @668) #70
          to label %.noexc1349 unwind label %bb.zm

.noexc1349:                                       ; preds = %bb.zl
  unreachable

bb.zm:                                            ; preds = %bb.zs, %bb.zl, %bb.zt, %bb.zv
  %i.aza = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr243drop_in_place$LT$rhai..defer..Deferred$LT$smallvec..SmallVec$LT$$u5b$rhai..types..dynamic..Dynamic$u3b$$u20$5$u5d$$GT$$C$rhai..eval..chaining..$LT$impl$u20$rhai..engine..Engine$GT$..eval_dot_index_chain_raw..$u7b$$u7b$closure$u7d$$u7d$$GT$$GT$17h4fb65cca4c17ffcaE"(ptr noalias noundef align 8 dereferenceable(24) %i.ae) #72
          to label %.thread349 unwind label %bb.cz

bb.zn:                                            ; preds = %bb.zk
  %.sink10.i.i1348 = select i1 %i.aym, ptr %i.ayn, ptr %9
  %i.azb = getelementptr inbounds nuw [16 x i8], ptr %.sink10.i.i1348, i64 %i.ayw
  %.sink11.i1351 = select i1 %i.ays, ptr %i.ayt, ptr %i.ayj ; 6 uses
  %.not687 = icmp eq i64 %.sink10.i1345, 0
  br i1 %.not687, label %bb.zs, label %bb.zo

bb.zo:                                            ; preds = %bb.zn
  %i.azc = load i8, ptr %.sink11.i1351, align 8, !range !97, !alias.scope !28110, !noundef !53
  switch i8 %i.azc, label %default.unreachable [
    i8 0, label %bb.zr
    i8 1, label %bb.zr
    i8 2, label %bb.zr
    i8 3, label %bb.zp
    i8 4, label %bb.zr
    i8 5, label %bb.zr
    i8 6, label %bb.zr
    i8 7, label %bb.zr
    i8 8, label %bb.zr
    i8 9, label %bb.zr
    i8 10, label %bb.zr
    i8 11, label %bb.zr
    i8 12, label %bb.zr
    i8 13, label %bb.zr
    i8 14, label %bb.zq
    i8 15, label %bb.zr
    i8 16, label %bb.zr
    i8 17, label %bb.zr
    i8 18, label %bb.zr
    i8 19, label %bb.zr
    i8 20, label %bb.zr
  ]

bb.zp:                                            ; preds = %bb.zo
  %i.azd = getelementptr inbounds nuw i8, ptr %.sink11.i1351, i64 2
  %i.aze = getelementptr inbounds nuw i8, ptr %.sink11.i1351, i64 4
  br label %_ZN4core3ops8function6FnOnce9call_once17h4866a62065cda8c7E.exit.i1356

bb.zq:                                            ; preds = %bb.zo
  %i.azf = getelementptr inbounds nuw i8, ptr %.sink11.i1351, i64 8
  %i.azg = load ptr, ptr %i.azf, align 8, !alias.scope !28110, !nonnull !53, !align !54, !noundef !53 ; 2 uses
  %i.azh = getelementptr inbounds nuw i8, ptr %i.azg, i64 136
  %i.azi = getelementptr inbounds nuw i8, ptr %i.azg, i64 138
  br label %_ZN4core3ops8function6FnOnce9call_once17h4866a62065cda8c7E.exit.i1356

bb.zr:                                            ; preds = %bb.zo, %bb.zo, %bb.zo, %bb.zo, %bb.zo, %bb.zo, %bb.zo, %bb.zo, %bb.zo, %bb.zo, %bb.zo, %bb.zo, %bb.zo, %bb.zo, %bb.zo, %bb.zo, %bb.zo, %bb.zo, %bb.zo
  %.sroa.01.0.i.i.i1355 = getelementptr inbounds nuw i8, ptr %.sink11.i1351, i64 2
  %i.azj = getelementptr inbounds nuw i8, ptr %.sink11.i1351, i64 4
  br label %_ZN4core3ops8function6FnOnce9call_once17h4866a62065cda8c7E.exit.i1356

_ZN4core3ops8function6FnOnce9call_once17h4866a62065cda8c7E.exit.i1356: ; preds = %bb.zr, %bb.zq, %bb.zp
  %.sroa.4.0.in.i.i.i1357 = phi ptr [ %i.azj, %bb.zr ], [ %i.aze, %bb.zp ], [ %i.azi, %bb.zq ]
  %.sroa.0.0.in.i.i.i1358 = phi ptr [ %.sroa.01.0.i.i.i1355, %bb.zr ], [ %i.azd, %bb.zp ], [ %i.azh, %bb.zq ]
  %.sroa.0.0.i.i.i1359 = load i16, ptr %.sroa.0.0.in.i.i.i1358, align 2, !noundef !53
  %.sroa.4.0.i.i.i1360 = load i16, ptr %.sroa.4.0.in.i.i.i1357, align 2, !noundef !53
  br label %bb.zs

bb.zs:                                            ; preds = %_ZN4core3ops8function6FnOnce9call_once17h4866a62065cda8c7E.exit.i1356, %bb.zn
  %.sroa.3.0.i1361 = phi i16 [ %.sroa.4.0.i.i.i1360, %_ZN4core3ops8function6FnOnce9call_once17h4866a62065cda8c7E.exit.i1356 ], [ 0, %bb.zn ]
  %.sroa.02.0.i1362 = phi i16 [ %.sroa.0.0.i.i.i1359, %_ZN4core3ops8function6FnOnce9call_once17h4866a62065cda8c7E.exit.i1356 ], [ 0, %bb.zn ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ad)
  %i.azk = load ptr, ptr %i.dp, align 8, !nonnull !53, !align !54, !noundef !53
  %i.azl = load ptr, ptr %i.do, align 8, !nonnull !53, !align !54, !noundef !53
  %i.azm = getelementptr inbounds nuw i8, ptr %i.ayi, i64 40
  %i.azn = load ptr, ptr %i.azm, align 8, !nonnull !53, !noundef !53 ; 2 uses
  %i.azo = getelementptr inbounds nuw i8, ptr %i.azn, i64 16 ; 3 uses
  %i.azp = invoke noundef zeroext i1 @_ZN11smartstring5boxed11BoxedString15check_alignment17h45a5a60d2f25a250E(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.azo)
          to label %.noexc780 unwind label %bb.zm

.noexc780:                                        ; preds = %bb.zs
  br i1 %i.azp, label %bb.zt, label %bb.zu

bb.zt:                                            ; preds = %.noexc780
  %i.azq = invoke { ptr, i64 } @"_ZN77_$LT$smartstring..inline..InlineString$u20$as$u20$core..ops..deref..Deref$GT$5deref17h9358a1a898cbf6e4E"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.azo)
          to label %.noexc781 unwind label %bb.zm ; 2 uses

.noexc781:                                        ; preds = %bb.zt
  %i.azr = extractvalue { ptr, i64 } %i.azq, 0
  %i.azs = extractvalue { ptr, i64 } %i.azq, 1
  br label %bb.zv

bb.zu:                                            ; preds = %.noexc780
  %i.azt = load ptr, ptr %i.azo, align 8, !nonnull !53, !noundef !53
  %i.azu = getelementptr inbounds nuw i8, ptr %i.azn, i64 32
  %i.azv = load i64, ptr %i.azu, align 8, !noundef !53
  br label %bb.zv

bb.zv:                                            ; preds = %bb.zu, %.noexc781
  %.pre-phi481 = phi ptr [ %i.azt, %bb.zu ], [ %i.azr, %.noexc781 ] ; 2 uses
  %.merged.i = phi i64 [ %i.azv, %bb.zu ], [ %i.azs, %.noexc781 ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.pre-phi481) ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ac)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ac, ptr noundef nonnull align 8 dereferenceable(24) %i.ayi, i64 24, i1 false)
  %i.azw = load ptr, ptr %i.dn, align 8, !nonnull !53, !align !54, !noundef !53
  %i.azx = load ptr, ptr %i.dq, align 8, !nonnull !53, !align !54, !noundef !53
  invoke fastcc void @"_ZN4rhai4func4call38_$LT$impl$u20$rhai..engine..Engine$GT$16make_method_call17h50b909f062f62613E"(ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.ad, ptr noundef nonnull align 8 %i.azx, ptr noalias noundef align 8 dereferenceable(88) %i.azk, ptr noalias noundef align 8 dereferenceable(200) %i.azl, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %.pre-phi481, i64 noundef %.merged.i, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.ac, ptr noalias noundef align 8 dereferenceable(48) %i.azw, ptr noalias noundef nonnull align 8 %i.azb, i64 noundef %.sink10.i1345, i16 noundef %.sroa.02.0.i1362, i16 noundef %.sroa.3.0.i1361, i16 noundef %i.aye, i16 noundef %i.ayg)
          to label %bb.zw unwind label %bb.zm

bb.zw:                                            ; preds = %bb.zv
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ac)
  %i.azy = getelementptr inbounds nuw i8, ptr %i.ad, i64 16
  %i.azz = load i8, ptr %i.azy, align 8, !range !108, !noundef !53
  %i.baa = icmp eq i8 %i.azz, 2
  %.sroa.4572.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  %.sroa.4572.0.copyload = load i64, ptr %.sroa.4572.0..sroa_idx, align 8
  %.sroa.0371.0 = load ptr, ptr %i.ad, align 8    ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ad)
  br i1 %i.baa, label %"_ZN76_$LT$rhai..defer..Deferred$LT$T$C$R$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h4fedc6b8749b274cE.exit.i", label %"_ZN76_$LT$rhai..defer..Deferred$LT$T$C$R$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h4fedc6b8749b274cE.exit.i1373"

"_ZN76_$LT$rhai..defer..Deferred$LT$T$C$R$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h4fedc6b8749b274cE.exit.i": ; preds = %bb.zw
  store ptr %.sroa.0371.0, ptr %0, align 8
  %i.bab = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i8 2, ptr %i.bab, align 8
  %i.bac = load i64, ptr %i.ayk, align 8, !alias.scope !28111, !noalias !28112, !noundef !53
  %i.bad = icmp ugt i64 %i.bac, 5                 ; 2 uses
  %i.bae = load ptr, ptr %9, align 8, !alias.scope !28111, !noalias !28112, !nonnull !53
  %.sink10.i.i.i.i1368 = select i1 %i.bad, ptr %i.bae, ptr %9
  %.sink9.i.i.i.i1369 = select i1 %i.bad, ptr %i.ayo, ptr %i.ayk ; 3 uses
  %i.baf = load i64, ptr %.sink9.i.i.i.i1369, align 8, !alias.scope !28113, !noalias !28112, !noundef !53 ; 2 uses
  %i.bag = icmp ult i64 %i.ayw, %i.baf
  br i1 %i.bag, label %.lr.ph.i.i.i1370, label %.critedge721

.lr.ph.i.i.i1370:                                 ; preds = %"_ZN76_$LT$rhai..defer..Deferred$LT$T$C$R$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h4fedc6b8749b274cE.exit.i", %.noexc1372
  %i.bah = phi i64 [ %i.bak, %.noexc1372 ], [ %i.baf, %"_ZN76_$LT$rhai..defer..Deferred$LT$T$C$R$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h4fedc6b8749b274cE.exit.i" ]
  %i.bai = add i64 %i.bah, -1                     ; 2 uses
  store i64 %i.bai, ptr %.sink9.i.i.i.i1369, align 8, !alias.scope !28113, !noalias !28112
  %i.baj = getelementptr inbounds nuw [16 x i8], ptr %.sink10.i.i.i.i1368, i64 %i.bai
  invoke fastcc void @"_ZN4core3ptr48drop_in_place$LT$rhai..types..dynamic..Union$GT$17h49c4795ab223165bE"(ptr noalias noundef readonly align 8 dereferenceable(16) %i.baj)
          to label %.noexc1372 unwind label %.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc1372:                                       ; preds = %.lr.ph.i.i.i1370
  %i.bak = load i64, ptr %.sink9.i.i.i.i1369, align 8, !alias.scope !28113, !noalias !28112, !noundef !53 ; 2 uses
  %i.bal = icmp ult i64 %i.ayw, %i.bak
  br i1 %i.bal, label %.lr.ph.i.i.i1370, label %.critedge721

"_ZN76_$LT$rhai..defer..Deferred$LT$T$C$R$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h4fedc6b8749b274cE.exit.i1373": ; preds = %bb.zw
  %i.bam = load i64, ptr %i.ayk, align 8, !alias.scope !28114, !noalias !28115, !noundef !53
  %i.ban = icmp ugt i64 %i.bam, 5                 ; 2 uses
  %i.bao = load ptr, ptr %9, align 8, !alias.scope !28114, !noalias !28115, !nonnull !53
  %.sink10.i.i.i.i1374 = select i1 %i.ban, ptr %i.bao, ptr %9
  %.sink9.i.i.i.i1375 = select i1 %i.ban, ptr %i.ayo, ptr %i.ayk ; 3 uses
  %i.bap = load i64, ptr %.sink9.i.i.i.i1375, align 8, !alias.scope !28116, !noalias !28115, !noundef !53 ; 2 uses
  %i.baq = icmp ult i64 %i.ayw, %i.bap
  br i1 %i.baq, label %.lr.ph.i.i.i1376, label %.loopexit430

.lr.ph.i.i.i1376:                                 ; preds = %"_ZN76_$LT$rhai..defer..Deferred$LT$T$C$R$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h4fedc6b8749b274cE.exit.i1373", %.noexc1378
  %i.bar = phi i64 [ %i.bau, %.noexc1378 ], [ %i.bap, %"_ZN76_$LT$rhai..defer..Deferred$LT$T$C$R$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h4fedc6b8749b274cE.exit.i1373" ]
  %i.bas = add i64 %i.bar, -1                     ; 2 uses
  store i64 %i.bas, ptr %.sink9.i.i.i.i1375, align 8, !alias.scope !28116, !noalias !28115
  %i.bat = getelementptr inbounds nuw [16 x i8], ptr %.sink10.i.i.i.i1374, i64 %i.bas
  invoke fastcc void @"_ZN4core3ptr48drop_in_place$LT$rhai..types..dynamic..Union$GT$17h49c4795ab223165bE"(ptr noalias noundef readonly align 8 dereferenceable(16) %i.bat)
          to label %.noexc1378 unwind label %.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc1378:                                       ; preds = %.lr.ph.i.i.i1376
  %i.bau = load i64, ptr %.sink9.i.i.i.i1375, align 8, !alias.scope !28116, !noalias !28115, !noundef !53 ; 2 uses
  %i.bav = icmp ult i64 %i.ayw, %i.bau
  br i1 %i.bav, label %.lr.ph.i.i.i1376, label %.loopexit430

.loopexit430:                                     ; preds = %.noexc1378, %"_ZN76_$LT$rhai..defer..Deferred$LT$T$C$R$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h4fedc6b8749b274cE.exit.i1373"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ae)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ab)
  %i.baw = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  store ptr %.sroa.0371.0, ptr %i.baw, align 8
  %.sroa.4110.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ab, i64 16
  store i64 %.sroa.4572.0.copyload, ptr %.sroa.4110.0..sroa_idx, align 8
  store i8 2, ptr %i.ab, align 8
  %i.bax = load ptr, ptr %i.dp, align 8, !nonnull !53, !align !54, !noundef !53
  %i.bay = load ptr, ptr %i.do, align 8, !nonnull !53, !align !54, !noundef !53
  %i.baz = getelementptr inbounds nuw i8, ptr %i.arq, i64 16
  %i.bba = load ptr, ptr %i.dq, align 8, !nonnull !53, !align !54, !noundef !53
  invoke fastcc void @"_ZN4rhai4eval8chaining38_$LT$impl$u20$rhai..engine..Engine$GT$24eval_dot_index_chain_raw17hc1815716e2083ea5E"(ptr noalias noundef align 8 captures(address) dereferenceable(24) %0, ptr noundef nonnull align 8 %i.bba, ptr noalias noundef align 8 dereferenceable(88) %i.bax, ptr noalias noundef align 8 dereferenceable(200) %i.bay, ptr noalias noundef align 8 dereferenceable_or_null(24) %4, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(16) %5, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(16) %8, ptr noalias noundef align 8 dereferenceable(48) %i.ab, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.baz, ptr noalias noundef align 8 dereferenceable(88) %9, ptr noalias noundef align 8 captures(address) dereferenceable(24) %10)
          to label %bb.zy unwind label %bb.zx

bb.zx:                                            ; preds = %.loopexit430
  %i.bbb = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr47drop_in_place$LT$rhai..eval..target..Target$GT$17hc78ff2920b6dc689E"(ptr noalias noundef align 8 dereferenceable(48) %i.ab) #72
          to label %"_ZN4core3ptr122drop_in_place$LT$core..option..Option$LT$$LP$rhai..types..dynamic..Dynamic$C$$RF$rhai..ast..stmt..OpAssignment$RP$$GT$$GT$17h2cd0bb27ecbc1f74E.exit1388" unwind label %bb.cz

bb.zy:                                            ; preds = %.loopexit430
  invoke fastcc void @"_ZN4core3ptr47drop_in_place$LT$rhai..eval..target..Target$GT$17hc78ff2920b6dc689E"(ptr noalias noundef align 8 dereferenceable(48) %i.ab)
          to label %bb.zz unwind label %.loopexit.split-lp.loopexit.split-lp

bb.zz:                                            ; preds = %bb.zy
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab)
  br label %bb.aaa

bb.aaa:                                           ; preds = %bb.vu, %bb.vv, %"_ZN4core3ptr50drop_in_place$LT$rhai..types..dynamic..Dynamic$GT$17hebb38c0752eb41d6E.exit1341", %bb.zz, %"_ZN4core3ptr50drop_in_place$LT$rhai..types..dynamic..Dynamic$GT$17hebb38c0752eb41d6E.exit1189", %bb.pn, %"_ZN4core6result19Result$LT$T$C$E$GT$11map_or_else17h9019628b11d8973cE.exit", %"_ZN4core3ptr50drop_in_place$LT$rhai..types..dynamic..Dynamic$GT$17hebb38c0752eb41d6E.exit1205", %"_ZN4core3ptr50drop_in_place$LT$rhai..types..dynamic..Dynamic$GT$17hebb38c0752eb41d6E.exit1229", %"_ZN4core3ptr243drop_in_place$LT$rhai..defer..Deferred$LT$smallvec..SmallVec$LT$$u5b$rhai..types..dynamic..Dynamic$u3b$$u20$5$u5d$$GT$$C$rhai..eval..chaining..$LT$impl$u20$rhai..engine..Engine$GT$..eval_dot_index_chain_raw..$u7b$$u7b$closure$u7d$$u7d$$GT$$GT$17h43909b6de095df8dE.exit"
  %.sroa.0405.44 = phi i8 [ %.sroa.0405.28, %"_ZN4core3ptr50drop_in_place$LT$rhai..types..dynamic..Dynamic$GT$17hebb38c0752eb41d6E.exit1189" ], [ 0, %"_ZN4core3ptr50drop_in_place$LT$rhai..types..dynamic..Dynamic$GT$17hebb38c0752eb41d6E.exit1341" ], [ %.sroa.0405.36, %"_ZN4core3ptr50drop_in_place$LT$rhai..types..dynamic..Dynamic$GT$17hebb38c0752eb41d6E.exit1229" ], [ 0, %"_ZN4core3ptr50drop_in_place$LT$rhai..types..dynamic..Dynamic$GT$17hebb38c0752eb41d6E.exit1205" ], [ 0, %"_ZN4core3ptr243drop_in_place$LT$rhai..defer..Deferred$LT$smallvec..SmallVec$LT$$u5b$rhai..types..dynamic..Dynamic$u3b$$u20$5$u5d$$GT$$C$rhai..eval..chaining..$LT$impl$u20$rhai..engine..Engine$GT$..eval_dot_index_chain_raw..$u7b$$u7b$closure$u7d$$u7d$$GT$$GT$17h43909b6de095df8dE.exit" ], [ 0, %"_ZN4core6result19Result$LT$T$C$E$GT$11map_or_else17h9019628b11d8973cE.exit" ], [ %.sroa.0405.28, %bb.pn ], [ 0, %bb.zz ], [ %.sroa.0405.40, %bb.vv ], [ %.sroa.0405.40, %bb.vu ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ce)
  br label %bb.jk

bb.aab:                                           ; preds = %bb.aac, %bb.jk
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dm)
  br label %"_ZN4core3ptr122drop_in_place$LT$core..option..Option$LT$$LP$rhai..types..dynamic..Dynamic$C$$RF$rhai..ast..stmt..OpAssignment$RP$$GT$$GT$17h2cd0bb27ecbc1f74E.exit1386"

bb.aac:                                           ; preds = %bb.jk
  call void @"_ZN4core3ptr46drop_in_place$LT$rhai..types..scope..Scope$GT$17ha79202e60abd8a14E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.dm)
  br label %bb.aab

"_ZN4core3ptr122drop_in_place$LT$core..option..Option$LT$$LP$rhai..types..dynamic..Dynamic$C$$RF$rhai..ast..stmt..OpAssignment$RP$$GT$$GT$17h2cd0bb27ecbc1f74E.exit1386": ; preds = %bb.aai, %.critedge710, %.thread389, %bb.aab
  ret void

.critedge721:                                     ; preds = %.noexc1372, %"_ZN76_$LT$rhai..defer..Deferred$LT$T$C$R$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h4fedc6b8749b274cE.exit.i"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ae)
  br label %bb.aad

bb.aad:                                           ; preds = %.critedge726, %.critedge721
  %.old = load i8, ptr %10, align 8, !range !68, !noundef !53
  %.old425 = icmp eq i8 %.old, 12
  br i1 %.old425, label %"_ZN4core3ptr122drop_in_place$LT$core..option..Option$LT$$LP$rhai..types..dynamic..Dynamic$C$$RF$rhai..ast..stmt..OpAssignment$RP$$GT$$GT$17h2cd0bb27ecbc1f74E.exit1381", label %bb.aae

bb.aae:                                           ; preds = %"_ZN4core3ptr50drop_in_place$LT$rhai..types..dynamic..Dynamic$GT$17hebb38c0752eb41d6E.exit1343", %bb.aad
  invoke fastcc void @"_ZN4core3ptr48drop_in_place$LT$rhai..types..dynamic..Union$GT$17h49c4795ab223165bE"(ptr noalias noundef nonnull readonly align 8 dereferenceable(24) %10)
          to label %"_ZN4core3ptr122drop_in_place$LT$core..option..Option$LT$$LP$rhai..types..dynamic..Dynamic$C$$RF$rhai..ast..stmt..OpAssignment$RP$$GT$$GT$17h2cd0bb27ecbc1f74E.exit1381" unwind label %bb.nl

"_ZN4core3ptr122drop_in_place$LT$core..option..Option$LT$$LP$rhai..types..dynamic..Dynamic$C$$RF$rhai..ast..stmt..OpAssignment$RP$$GT$$GT$17h2cd0bb27ecbc1f74E.exit1381": ; preds = %bb.vy, %bb.vx, %"_ZN4core3ptr50drop_in_place$LT$rhai..types..dynamic..Dynamic$GT$17hebb38c0752eb41d6E.exit1231", %bb.ti, %"_ZN4core3ptr50drop_in_place$LT$rhai..types..dynamic..Dynamic$GT$17hebb38c0752eb41d6E.exit1343", %bb.aae, %bb.aad, %"_ZN4core3ptr50drop_in_place$LT$rhai..types..dynamic..Dynamic$GT$17hebb38c0752eb41d6E.exit1187", %bb.po, %"_ZN4core3ptr50drop_in_place$LT$rhai..types..dynamic..Dynamic$GT$17hebb38c0752eb41d6E.exit1209"
  %.sroa.0405.45 = phi i8 [ %.sroa.0405.28, %"_ZN4core3ptr50drop_in_place$LT$rhai..types..dynamic..Dynamic$GT$17hebb38c0752eb41d6E.exit1187" ], [ %.sroa.0405.36, %"_ZN4core3ptr50drop_in_place$LT$rhai..types..dynamic..Dynamic$GT$17hebb38c0752eb41d6E.exit1231" ], [ 0, %"_ZN4core3ptr50drop_in_place$LT$rhai..types..dynamic..Dynamic$GT$17hebb38c0752eb41d6E.exit1343" ], [ 0, %"_ZN4core3ptr50drop_in_place$LT$rhai..types..dynamic..Dynamic$GT$17hebb38c0752eb41d6E.exit1209" ], [ %.sroa.0405.28, %bb.po ], [ 0, %bb.aad ], [ 0, %bb.aae ], [ %.sroa.0405.36, %bb.ti ], [ %.sroa.0405.41340, %bb.vx ], [ %.sroa.0405.41340, %bb.vy ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ce)
  br label %bb.ay

.thread349:                                       ; preds = %.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.xr, %bb.xf, %bb.zm, %.body1321
  %.pn692352 = phi { ptr, i32 } [ %.pn692, %.body1321 ], [ %i.aza, %bb.zm ], [ %eh.lpad-body.i, %bb.xf ], [ %eh.lpad-body.i, %bb.xr ], [ %lpad.loopexit.split-lp740, %.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ] ; 2 uses
  %i.bbc = load i8, ptr %10, align 8, !range !68, !noundef !53
  %i.bbd = icmp eq i8 %i.bbc, 12
  br i1 %i.bbd, label %"_ZN4core3ptr122drop_in_place$LT$core..option..Option$LT$$LP$rhai..types..dynamic..Dynamic$C$$RF$rhai..ast..stmt..OpAssignment$RP$$GT$$GT$17h2cd0bb27ecbc1f74E.exit1388", label %bb.aaf

bb.aaf:                                           ; preds = %.thread349
  invoke fastcc void @"_ZN4core3ptr48drop_in_place$LT$rhai..types..dynamic..Union$GT$17h49c4795ab223165bE"(ptr noalias noundef nonnull readonly align 8 dereferenceable(24) %10)
          to label %"_ZN4core3ptr122drop_in_place$LT$core..option..Option$LT$$LP$rhai..types..dynamic..Dynamic$C$$RF$rhai..ast..stmt..OpAssignment$RP$$GT$$GT$17h2cd0bb27ecbc1f74E.exit1388" unwind label %bb.cz

.thread296:                                       ; preds = %.thread306.loopexit, %.thread306.loopexit.split-lp, %bb.to, %"_ZN4core3ptr50drop_in_place$LT$rhai..types..dynamic..Dynamic$GT$17hebb38c0752eb41d6E.exit1185", %bb.pp, %bb.oo, %bb.ob
  %.pn694287 = phi { ptr, i32 } [ %eh.lpad-body.i.i, %bb.oo ], [ %.pn660, %bb.pp ], [ %eh.lpad-body.i.i, %bb.ob ], [ %i.alx, %bb.to ], [ %.pn660, %"_ZN4core3ptr50drop_in_place$LT$rhai..types..dynamic..Dynamic$GT$17hebb38c0752eb41d6E.exit1185" ], [ %lpad.loopexit431, %.thread306.loopexit ], [ %lpad.loopexit.split-lp, %.thread306.loopexit.split-lp ] ; 2 uses
  %.sroa.0405.24286 = phi i8 [ 0, %bb.oo ], [ %.sroa.0405.26, %bb.pp ], [ 0, %bb.ob ], [ 0, %bb.to ], [ %.sroa.0405.26, %"_ZN4core3ptr50drop_in_place$LT$rhai..types..dynamic..Dynamic$GT$17hebb38c0752eb41d6E.exit1185" ], [ 0, %.thread306.loopexit ], [ %.sroa.0405.25.ph.ph, %.thread306.loopexit.split-lp ] ; 2 uses
  %.sroa.0425.0285 = phi i1 [ true, %bb.oo ], [ true, %bb.pp ], [ true, %bb.ob ], [ true, %bb.to ], [ true, %"_ZN4core3ptr50drop_in_place$LT$rhai..types..dynamic..Dynamic$GT$17hebb38c0752eb41d6E.exit1185" ], [ true, %.thread306.loopexit ], [ %.sroa.0425.1.ph.ph, %.thread306.loopexit.split-lp ]
  %i.bbe = load i8, ptr %i.ce, align 8, !range !68, !noundef !53
  %i.bbf = icmp ne i8 %i.bbe, 12
  %or.cond5 = and i1 %.sroa.0425.0285, %i.bbf
  br i1 %or.cond5, label %bb.aag, label %"_ZN4core3ptr50drop_in_place$LT$rhai..types..dynamic..Dynamic$GT$17hebb38c0752eb41d6E.exit1090"

bb.aag:                                           ; preds = %.thread296
  invoke fastcc void @"_ZN4core3ptr48drop_in_place$LT$rhai..types..dynamic..Union$GT$17h49c4795ab223165bE"(ptr noalias noundef readonly align 8 dereferenceable(16) %i.ce)
          to label %"_ZN4core3ptr50drop_in_place$LT$rhai..types..dynamic..Dynamic$GT$17hebb38c0752eb41d6E.exit1090" unwind label %bb.cz, !inline_history !71

.thread389:                                       ; preds = %bb.aah, %bb.ay
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dm)
  br label %"_ZN4core3ptr122drop_in_place$LT$core..option..Option$LT$$LP$rhai..types..dynamic..Dynamic$C$$RF$rhai..ast..stmt..OpAssignment$RP$$GT$$GT$17h2cd0bb27ecbc1f74E.exit1386"

bb.aah:                                           ; preds = %bb.ay
  call void @"_ZN4core3ptr46drop_in_place$LT$rhai..types..scope..Scope$GT$17ha79202e60abd8a14E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.dm)
  br label %.thread389

.critedge710:                                     ; preds = %"_ZN4core6option15Option$LT$T$GT$6map_or17hd0e64c201c6261fcE.exit1126", %bb.kg, %"_ZN4core6option15Option$LT$T$GT$6map_or17hd0e64c201c6261fcE.exit", %bb.x
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(17) %0, i8 0, i64 17, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dl)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dm)
  %i.bbg = load i8, ptr %10, align 8, !range !68, !alias.scope !28117, !noundef !53
  %i.bbh = icmp eq i8 %i.bbg, 12
  br i1 %i.bbh, label %"_ZN4core3ptr122drop_in_place$LT$core..option..Option$LT$$LP$rhai..types..dynamic..Dynamic$C$$RF$rhai..ast..stmt..OpAssignment$RP$$GT$$GT$17h2cd0bb27ecbc1f74E.exit1386", label %bb.aai

bb.aai:                                           ; preds = %.critedge710
  tail call fastcc void @"_ZN4core3ptr48drop_in_place$LT$rhai..types..dynamic..Union$GT$17h49c4795ab223165bE"(ptr noalias noundef nonnull readonly align 8 dereferenceable(24) %10), !inline_history !71
  br label %"_ZN4core3ptr122drop_in_place$LT$core..option..Option$LT$$LP$rhai..types..dynamic..Dynamic$C$$RF$rhai..ast..stmt..OpAssignment$RP$$GT$$GT$17h2cd0bb27ecbc1f74E.exit1386"

bb.aaj:                                           ; preds = %"_ZN4core3ptr50drop_in_place$LT$rhai..types..dynamic..Dynamic$GT$17hebb38c0752eb41d6E.exit1090"
  invoke void @"_ZN4core3ptr46drop_in_place$LT$rhai..types..scope..Scope$GT$17ha79202e60abd8a14E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.dm) #72
          to label %"_ZN4core3ptr122drop_in_place$LT$core..option..Option$LT$$LP$rhai..types..dynamic..Dynamic$C$$RF$rhai..ast..stmt..OpAssignment$RP$$GT$$GT$17h2cd0bb27ecbc1f74E.exit1388" unwind label %bb.cz

"_ZN4core3ptr122drop_in_place$LT$core..option..Option$LT$$LP$rhai..types..dynamic..Dynamic$C$$RF$rhai..ast..stmt..OpAssignment$RP$$GT$$GT$17h2cd0bb27ecbc1f74E.exit1388": ; preds = %"_ZN4core3ptr50drop_in_place$LT$rhai..types..dynamic..Dynamic$GT$17hebb38c0752eb41d6E.exit1197", %bb.ro, %.thread349, %bb.aaf, %bb.zx, %.body1321, %"_ZN4core3ptr50drop_in_place$LT$rhai..types..dynamic..Dynamic$GT$17hebb38c0752eb41d6E.exit1090", %bb.aaj, %bb.aak, %bb.aal, %.body, %bb.lr
  %.pn696.pn382 = phi { ptr, i32 } [ %.pn696.ph.ph, %bb.aak ], [ %eh.lpad-body, %bb.lr ], [ %eh.lpad-body, %.body ], [ %.pn696.ph.ph, %bb.aal ], [ %.pn667, %"_ZN4core3ptr50drop_in_place$LT$rhai..types..dynamic..Dynamic$GT$17hebb38c0752eb41d6E.exit1197" ], [ %.pn696, %"_ZN4core3ptr50drop_in_place$LT$rhai..types..dynamic..Dynamic$GT$17hebb38c0752eb41d6E.exit1090" ], [ %.pn696, %bb.aaj ], [ %.pn692352, %.thread349 ], [ %.pn692352, %bb.aaf ], [ %i.bbb, %bb.zx ], [ %.pn692, %.body1321 ], [ %.pn667, %bb.ro ]
  resume { ptr, i32 } %.pn696.pn382

bb.aak:                                           ; preds = %bb.lb, %bb.d, %bb.as
  %.pn696.ph.ph = phi { ptr, i32 } [ %i.ea, %bb.d ], [ %i.gw, %bb.as ], [ %i.wl, %bb.lb ] ; 2 uses
  %i.bbi = load i8, ptr %10, align 8, !range !68, !alias.scope !28118, !noundef !53
  %i.bbj = icmp eq i8 %i.bbi, 12
  br i1 %i.bbj, label %"_ZN4core3ptr122drop_in_place$LT$core..option..Option$LT$$LP$rhai..types..dynamic..Dynamic$C$$RF$rhai..ast..stmt..OpAssignment$RP$$GT$$GT$17h2cd0bb27ecbc1f74E.exit1388", label %bb.aal

bb.aal:                                           ; preds = %bb.aak
  invoke fastcc void @"_ZN4core3ptr48drop_in_place$LT$rhai..types..dynamic..Union$GT$17h49c4795ab223165bE"(ptr noalias noundef nonnull readonly align 8 dereferenceable(24) %10)
          to label %"_ZN4core3ptr122drop_in_place$LT$core..option..Option$LT$$LP$rhai..types..dynamic..Dynamic$C$$RF$rhai..ast..stmt..OpAssignment$RP$$GT$$GT$17h2cd0bb27ecbc1f74E.exit1388" unwind label %bb.cz
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @"_ZN4rhai4eval8chaining38_$LT$impl$u20$rhai..engine..Engine$GT$24eval_dot_index_chain_raw28_$u7b$$u7b$closure$u7d$$u7d$17h309f53e8c80b574cE"(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(64) %1, ptr noalias noundef nonnull align 8 %2) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 4 uses
  %i.c = alloca [16 x i8], align 8                ; 9 uses
  %i.d = alloca [8 x i8], align 8                 ; 2 uses
  store ptr %2, ptr %i.d, align 8
  %i.e = load i8, ptr %2, align 8, !range !77, !noundef !53
  %i.f = icmp eq i8 %i.e, 22
  br i1 %i.f, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.g = load ptr, ptr %1, align 8, !nonnull !53, !align !54, !noundef !53
  %i.h = load ptr, ptr %i.g, align 8, !nonnull !53, !align !54, !noundef !53 ; 10 uses
  %i.i = load i8, ptr %i.h, align 8, !range !112, !noundef !53
  switch i8 %i.i, label %default.unreachable20 [
    i8 0, label %bb.d
    i8 1, label %bb.e
    i8 2, label %bb.f
    i8 3, label %bb.g
    i8 4, label %bb.h
    i8 5, label %bb.i
    i8 6, label %bb.j
    i8 7, label %bb.k
  ]

bb.c:                                             ; preds = %bb.a
  store ptr %2, ptr %0, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i8 2, ptr %i.j, align 8
  br label %bb.z

default.unreachable20:                            ; preds = %bb.b
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.l = load ptr, ptr %i.k, align 8, !nonnull !53, !align !54, !noundef !53
  br label %bb.l

bb.e:                                             ; preds = %bb.b
  %i.m = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  %.val = load ptr, ptr %i.m, align 8, !nonnull !53, !noundef !53
  %i.n = getelementptr i8, ptr %i.h, i64 32
  %.val8 = load i8, ptr %i.n, align 8, !range !108, !noundef !53
  %.not.i = icmp eq i8 %.val8, 2
  %.sroa.0.0.idx.i = select i1 %.not.i, i64 0, i64 16
  %.sroa.0.0.i = getelementptr inbounds nuw i8, ptr %.val, i64 %.sroa.0.0.idx.i
  br label %bb.l

bb.f:                                             ; preds = %bb.b
  %i.o = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  br label %bb.l

bb.g:                                             ; preds = %bb.b
  %i.p = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  br label %bb.l

bb.h:                                             ; preds = %bb.b
  %i.q = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  br label %bb.l

bb.i:                                             ; preds = %bb.b
  %i.r = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  br label %bb.l

bb.j:                                             ; preds = %bb.b
  %i.s = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  br label %bb.l

bb.k:                                             ; preds = %bb.b
  %i.t = getelementptr inbounds nuw i8, ptr %i.h, i64 32
  br label %bb.l

bb.l:                                             ; preds = %bb.e, %bb.g, %bb.h, %bb.i, %bb.j, %bb.k, %bb.f, %bb.d
  %.sroa.01.0 = phi ptr [ %i.l, %bb.d ], [ %i.t, %bb.k ], [ %i.o, %bb.f ], [ %.sroa.0.0.i, %bb.e ], [ %i.p, %bb.g ], [ %i.q, %bb.h ], [ %i.r, %bb.i ], [ %i.s, %bb.j ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.v = load ptr, ptr %i.u, align 8, !nonnull !53, !align !54, !noundef !53
  %i.w = load ptr, ptr %i.v, align 8, !nonnull !53, !align !54, !noundef !53
  %.val9 = load ptr, ptr %i.w, align 8, !nonnull !53, !noundef !53 ; 2 uses
end_hunk_0
begin_hunk_1_@_ZN4rhai9optimizer13optimize_expr17haeffafea56131100E:bb.a
  %i.ex = getelementptr inbounds nuw i8, ptr %i.et, i64 8
  %i.ey = load i64, ptr %i.ex, align 8, !alias.scope !47958
  %.sink10.i = select i1 %i.ew, i64 %i.ey, i64 %i.ev
  switch i64 %.sink10.i, label %bb.fe [
    i64 0, label %bb.ep
    i64 1, label %bb.es
  ]

bb.g:                                             ; preds = %_ZN4rhai3ast4expr4Expr8position17h98cb13fac8750556E.exit
  %.sroa.01.0.i1124.le7070 = getelementptr inbounds nuw i8, ptr %.tr, i64 2 ; 13 uses
  %i.ez = getelementptr inbounds nuw i8, ptr %.tr, i64 4 ; 7 uses
  %i.fa = getelementptr inbounds nuw i8, ptr %.tr, i64 8 ; 33 uses
  %i.fb = load ptr, ptr %i.fa, align 8, !nonnull !53, !align !54, !noundef !53
  %i.fc = getelementptr inbounds nuw i8, ptr %i.fb, i64 40
  tail call void @llvm.experimental.noalias.scope.decl(metadata !47959)
  %i.fd = load ptr, ptr %i.fc, align 8, !alias.scope !47959, !nonnull !53, !noundef !53 ; 2 uses
  %i.fe = getelementptr inbounds nuw i8, ptr %i.fd, i64 16 ; 3 uses
  %i.ff = tail call noundef zeroext i1 @_ZN11smartstring5boxed11BoxedString15check_alignment17h45a5a60d2f25a250E(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.fe), !noalias !47960
  br i1 %i.ff, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.fg = tail call { ptr, i64 } @"_ZN77_$LT$smartstring..inline..InlineString$u20$as$u20$core..ops..deref..Deref$GT$5deref17h9358a1a898cbf6e4E"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.fe), !noalias !47960
  br label %"_ZN80_$LT$smartstring..SmartString$LT$Mode$GT$$u20$as$u20$core..ops..deref..Deref$GT$5deref17h8e4644c56b27445cE.exit.i1015"

bb.i:                                             ; preds = %bb.g
  %i.fh = load ptr, ptr %i.fe, align 8, !noalias !47960, !nonnull !53, !noundef !53
  %i.fi = getelementptr inbounds nuw i8, ptr %i.fd, i64 32
  %i.fj = load i64, ptr %i.fi, align 8, !noalias !47960, !noundef !53
  %i.fk = insertvalue { ptr, i64 } poison, ptr %i.fh, 0
  %i.fl = insertvalue { ptr, i64 } %i.fk, i64 %i.fj, 1
  br label %"_ZN80_$LT$smartstring..SmartString$LT$Mode$GT$$u20$as$u20$core..ops..deref..Deref$GT$5deref17h8e4644c56b27445cE.exit.i1015"

"_ZN80_$LT$smartstring..SmartString$LT$Mode$GT$$u20$as$u20$core..ops..deref..Deref$GT$5deref17h8e4644c56b27445cE.exit.i1015": ; preds = %bb.i, %bb.h
  %.merged.i.i1017 = phi { ptr, i64 } [ %i.fg, %bb.h ], [ %i.fl, %bb.i ] ; 2 uses
  %i.fm = extractvalue { ptr, i64 } %.merged.i.i1017, 1
  %.not.i1018 = icmp eq i64 %i.fm, 1
  br i1 %.not.i1018, label %"_ZN96_$LT$rhai..types..immutable_string..ImmutableString$u20$as$u20$core..cmp..PartialEq$LT$S$GT$$GT$2eq17hee9cb2eb15199edaE.exit1021", label %"_ZN80_$LT$smartstring..SmartString$LT$Mode$GT$$u20$as$u20$core..ops..deref..Deref$GT$5deref17h8e4644c56b27445cE.exit.i1015._ZN96_$LT$rhai..types..immutable_string..ImmutableString$u20$as$u20$core..cmp..PartialEq$LT$S$GT$$GT$2eq17hee9cb2eb15199edaE.exit1021.thread_crit_edge"

"_ZN80_$LT$smartstring..SmartString$LT$Mode$GT$$u20$as$u20$core..ops..deref..Deref$GT$5deref17h8e4644c56b27445cE.exit.i1015._ZN96_$LT$rhai..types..immutable_string..ImmutableString$u20$as$u20$core..cmp..PartialEq$LT$S$GT$$GT$2eq17hee9cb2eb15199edaE.exit1021.thread_crit_edge": ; preds = %"_ZN80_$LT$smartstring..SmartString$LT$Mode$GT$$u20$as$u20$core..ops..deref..Deref$GT$5deref17h8e4644c56b27445cE.exit.i1015"
  %.pre3024 = load ptr, ptr %i.fa, align 8
  br label %"_ZN96_$LT$rhai..types..immutable_string..ImmutableString$u20$as$u20$core..cmp..PartialEq$LT$S$GT$$GT$2eq17hee9cb2eb15199edaE.exit1021.thread"

"_ZN96_$LT$rhai..types..immutable_string..ImmutableString$u20$as$u20$core..cmp..PartialEq$LT$S$GT$$GT$2eq17hee9cb2eb15199edaE.exit1021": ; preds = %"_ZN80_$LT$smartstring..SmartString$LT$Mode$GT$$u20$as$u20$core..ops..deref..Deref$GT$5deref17h8e4644c56b27445cE.exit.i1015"
  %i.fn = extractvalue { ptr, i64 } %.merged.i.i1017, 0
  %lhsc = load i8, ptr %i.fn, align 1
  %i.fo = icmp eq i8 %lhsc, 33
  %.pre3025 = load ptr, ptr %i.fa, align 8        ; 6 uses
  br i1 %i.fo, label %bb.fl, label %"_ZN96_$LT$rhai..types..immutable_string..ImmutableString$u20$as$u20$core..cmp..PartialEq$LT$S$GT$$GT$2eq17hee9cb2eb15199edaE.exit1021.thread"

bb.j:                                             ; preds = %_ZN4rhai3ast4expr4Expr8position17h98cb13fac8750556E.exit
  %i.fp = getelementptr inbounds nuw i8, ptr %.tr, i64 8 ; 4 uses
  %i.fq = getelementptr inbounds nuw i8, ptr %.tr, i64 1
  %i.fr = load i8, ptr %i.fq, align 1, !noundef !53
  %i.fs = and i8 %i.fr, 4
  %.not761 = icmp eq i8 %i.fs, 0
  %.pre4924.a = load ptr, ptr %i.fp, align 8      ; 26 uses
  br i1 %.not761, label %bb.mu, label %bb.mt

bb.k:                                             ; preds = %_ZN4rhai3ast4expr4Expr8position17h98cb13fac8750556E.exit
  %i.ft = getelementptr inbounds nuw i8, ptr %.tr, i64 8 ; 12 uses
  %i.fu = getelementptr inbounds nuw i8, ptr %.tr, i64 1
  %i.fv = load i8, ptr %i.fu, align 1, !noundef !53
  %i.fw = and i8 %i.fv, 4
  %.not737 = icmp eq i8 %i.fw, 0
  %.pre4921 = load ptr, ptr %i.ft, align 8        ; 36 uses
  br i1 %.not737, label %bb.pz, label %bb.py

bb.l:                                             ; preds = %bb.b
  %i.fx = getelementptr inbounds nuw i8, ptr %1, i64 328
  store i8 1, ptr %i.fx, align 8
  %i.fy = getelementptr inbounds nuw i8, ptr %1, i64 112
  %i.fz = load ptr, ptr %i.fy, align 8, !nonnull !53, !align !54, !noundef !53
  %i.ga = tail call fastcc noundef nonnull ptr @_ZN4rhai6engine6Engine19get_interned_string17heaefd3ff7337519aE(ptr noundef nonnull align 8 %i.fz, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) inttoptr (i64 1 to ptr), i64 noundef 0) ; 2 uses
  %i.gb = load <2 x i16>, ptr %.sroa.01.0.i1124.le7078, align 2 ; 3 uses
  invoke void @"_ZN4core3ptr42drop_in_place$LT$rhai..ast..expr..Expr$GT$17h95304b11a9a8ee5eE"(ptr noalias noundef nonnull align 8 dereferenceable(16) %.tr)
          to label %bb.o unwind label %bb.n

bb.m:                                             ; preds = %bb.b
  %i.gc = tail call fastcc noundef zeroext i1 @_ZN4rhai3ast4expr4Expr11is_constant17h1f9df6ab7c006f86E(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(16) %.tr)
  br i1 %i.gc, label %bb.q, label %.lr.ph2556

bb.n:                                             ; preds = %bb.l
  %i.gd = landingpad { ptr, i32 }
          cleanup
  store i8 5, ptr %.tr, align 8
  %i.ge = extractelement <2 x i16> %i.gb, i64 0
  store i16 %i.ge, ptr %.sroa.01.0.i1124.le7078, align 2
  %i.gf = extractelement <2 x i16> %i.gb, i64 1
  store i16 %i.gf, ptr %i.ee, align 4
  store ptr %i.ga, ptr %i.ef, align 8
  br label %common.resume

bb.o:                                             ; preds = %bb.l
  store i8 5, ptr %.tr, align 8
  store <2 x i16> %i.gb, ptr %.sroa.01.0.i1124.le7078, align 2
  store ptr %i.ga, ptr %i.ef, align 8
  br label %"_ZN8thin_vec16ThinVec$LT$T$GT$13shrink_to_fit17h7220b9c8b2993500E.exit"

common.resume:                                    ; preds = %bb.aj, %bb.ah, %bb.ak, %bb.ab, %bb.bo, %bb.bn, %bb.cd, %bb.ce, %bb.rg, %bb.iz, %bb.hk, %.thread1881, %bb.gg, %bb.dv, %bb.dk, %bb.n, %bb.u, %bb.cx, %.thread1803.thread.thread, %bb.de, %bb.dp, %bb.ea, %bb.em, %bb.eq, %bb.eu, %bb.ff, %bb.fj, %bb.fs, %bb.hw, %"_ZN4core3ptr85drop_in_place$LT$smallvec..SmallVec$LT$$u5b$core..any..TypeId$u3b$$u20$5$u5d$$GT$$GT$17hd31a4616f37a851fE.exit", %bb.lo, %bb.ms, %bb.mw, %.body, %bb.pw, %bb.qb, %bb.si, %bb.sk, %bb.te, %bb.ti, %.body3874, %bb.wg, %bb.wj, %bb.wn, %bb.wz, %bb.xc, %bb.xg, %bb.xp, %bb.xt, %bb.rm, %bb.cz, %.thread, %.thread1889, %bb.ho, %bb.hr, %.thread1919, %bb.ml, %bb.mo, %bb.oo, %bb.om, %bb.on, %.thread1941, %bb.pa, %bb.pj, %bb.tt, %bb.ty, %bb.vl, %bb.vj, %bb.vk, %.thread2006, %bb.vx, %bb.cw, %bb.co, %bb.cu
  %common.resume.op = phi { ptr, i32 } [ %eh.lpad-body, %.thread1881 ], [ %i.bpe, %bb.vj ], [ %i.mn, %bb.dk ], [ %i.nn, %bb.dv ], [ %i.wb, %bb.gg ], [ %eh.lpad-body, %bb.hk ], [ %i.gd, %bb.n ], [ %i.mb, %bb.de ], [ %i.lk, %bb.cu ], [ %i.ic, %bb.ah ], [ %i.ava, %bb.oo ], [ %i.bqc, %bb.vx ], [ %lpad.thr_comm.split-lp, %bb.aj ], [ %.pn839.pn179818533196, %.thread1803.thread.thread ], [ %.pn839.pn17993161, %bb.cx ], [ %i.gy, %bb.u ], [ %i.mv, %bb.dp ], [ %i.lb, %bb.co ], [ %i.nv, %bb.ea ], [ %.pn822.pn.ph, %bb.cw ], [ %i.qi, %bb.em ], [ %i.rb, %bb.eq ], [ %.pn814, %bb.eu ], [ %i.sj, %bb.fj ], [ %i.rv, %bb.ff ], [ %i.ub, %bb.fs ], [ %i.yj, %bb.ho ], [ %i.yu, %bb.hw ], [ %i.apc, %bb.ms ], [ %i.aot, %bb.ml ], [ %.pn801, %"_ZN4core3ptr85drop_in_place$LT$smallvec..SmallVec$LT$$u5b$core..any..TypeId$u3b$$u20$5$u5d$$GT$$GT$17hd31a4616f37a851fE.exit" ], [ %.pn782, %bb.lo ], [ %i.apg, %bb.mw ], [ %i.avz, %bb.pa ], [ %i.azj, %bb.pw ], [ %.pn770, %.body ], [ %i.avx, %.thread1941 ], [ %i.acw, %bb.iz ], [ %i.aow, %bb.mo ], [ %i.azn, %bb.qb ], [ %.pn759, %bb.rm ], [ %i.bee, %bb.sk ], [ %i.bds, %bb.si ], [ %i.bhi, %bb.ti ], [ %i.bgz, %bb.te ], [ %i.bpf, %bb.vk ], [ %i.bju, %bb.ty ], [ %i.bpf, %bb.vl ], [ %i.bji, %bb.tt ], [ %.pn744, %.body3874 ], [ %i.bqa, %.thread2006 ], [ %i.bbl, %bb.rg ], [ %.pn774, %bb.pj ], [ %i.bry, %bb.wg ], [ %i.bsc, %bb.wj ], [ %i.bsl, %bb.wn ], [ %i.buv, %bb.wz ], [ %i.buz, %bb.xc ], [ %i.bvi, %bb.xg ], [ %i.bwv, %bb.xp ], [ %i.bxe, %bb.xt ], [ %i.ava, %bb.on ], [ %.pn839.pn17981853, %bb.cz ], [ %.pn839.pn17981853, %.thread ], [ %i.yp, %.thread1889 ], [ %i.ym, %bb.hr ], [ %i.aoz, %.thread1919 ], [ %i.auz, %bb.om ], [ %.pn827, %bb.cd ], [ %i.ho, %bb.ab ], [ %.pn827, %bb.ce ], [ %.pn831, %bb.bn ], [ %.pn831, %bb.bo ], [ %lpad.thr_comm.split-lp, %bb.ak ]
  resume { ptr, i32 } %common.resume.op

.lr.ph2556:                                       ; preds = %bb.m
  %i.gg = getelementptr inbounds nuw i8, ptr %i.eg, i64 16 ; 2 uses
  %.idx2568 = shl nuw nsw i64 %i.eh, 4
  %i.gh = getelementptr inbounds nuw i8, ptr %i.gg, i64 %.idx2568
  br label %bb.p

"_ZN94_$LT$core..slice..iter..IterMut$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$8for_each17h05e0907d856bbdd8E.exit.preheader": ; preds = %bb.p
  %.pre3035 = load ptr, ptr %i.ef, align 8        ; 3 uses
  %.pre3036 = load i64, ptr %.pre3035, align 8    ; 2 uses
  %.not2569 = icmp eq i64 %.pre3036, 1
  br i1 %.not2569, label %"_ZN94_$LT$core..slice..iter..IterMut$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$8for_each17h05e0907d856bbdd8E.exit._crit_edge", label %.lr.ph2559

.lr.ph2559:                                       ; preds = %"_ZN94_$LT$core..slice..iter..IterMut$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$8for_each17h05e0907d856bbdd8E.exit.preheader"
  %i.gi = getelementptr inbounds nuw i8, ptr %i.bh, i64 16 ; 14 uses
  %i.gj = getelementptr inbounds nuw i8, ptr %i.bh, i64 8 ; 4 uses
  %i.gk = getelementptr inbounds nuw i8, ptr %i.bh, i64 2
  %i.gl = getelementptr inbounds nuw i8, ptr %i.bh, i64 24 ; 4 uses
  %i.gm = getelementptr inbounds nuw i8, ptr %i.bp, i64 8
  %i.gn = getelementptr inbounds nuw i8, ptr %i.bp, i64 2
  %i.go = getelementptr inbounds nuw i8, ptr %1, i64 328 ; 5 uses
  br label %bb.s

bb.p:                                             ; preds = %.lr.ph2556, %bb.p
  %.sroa.01741.02555 = phi ptr [ %i.gg, %.lr.ph2556 ], [ %i.gp, %bb.p ] ; 2 uses
  %i.gp = getelementptr inbounds nuw i8, ptr %.sroa.01741.02555, i64 16 ; 2 uses
  tail call fastcc void @_ZN4rhai9optimizer13optimize_expr17haeffafea56131100E(ptr noalias noundef nonnull align 8 dereferenceable(16) %.sroa.01741.02555, ptr noalias noundef align 8 dereferenceable(336) %1, i1 noundef zeroext false), !noalias !47961, !inline_history !47501
  %i.gq = icmp eq ptr %i.gp, %i.gh
  br i1 %i.gq, label %"_ZN94_$LT$core..slice..iter..IterMut$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$8for_each17h05e0907d856bbdd8E.exit.preheader", label %bb.p

bb.q:                                             ; preds = %bb.m
  %i.gr = getelementptr inbounds nuw i8, ptr %1, i64 328
  store i8 1, ptr %i.gr, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bt)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bs)
  call fastcc void @_ZN4rhai3ast4expr4Expr17get_literal_value17h1232769a034b966dE(ptr noalias noundef align 8 captures(address) dereferenceable(16) %i.bs, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(16) %.tr, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(88) null)
  %i.gs = load i8, ptr %i.bs, align 8, !range !68, !noundef !53
  %.not842 = icmp eq i8 %i.gs, 12
  br i1 %.not842, label %bb.dc, label %bb.da, !prof !64

"_ZN94_$LT$core..slice..iter..IterMut$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$8for_each17h05e0907d856bbdd8E.exit._crit_edge": ; preds = %"_ZN94_$LT$core..slice..iter..IterMut$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$8for_each17h05e0907d856bbdd8E.exit", %"_ZN94_$LT$core..slice..iter..IterMut$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$8for_each17h05e0907d856bbdd8E.exit.preheader"
  %.lcssa2133 = phi ptr [ %.pre3035, %"_ZN94_$LT$core..slice..iter..IterMut$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$8for_each17h05e0907d856bbdd8E.exit.preheader" ], [ %i.lg, %"_ZN94_$LT$core..slice..iter..IterMut$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$8for_each17h05e0907d856bbdd8E.exit" ]
  %.lcssa2106 = phi i64 [ 1, %"_ZN94_$LT$core..slice..iter..IterMut$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$8for_each17h05e0907d856bbdd8E.exit.preheader" ], [ %i.lh, %"_ZN94_$LT$core..slice..iter..IterMut$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$8for_each17h05e0907d856bbdd8E.exit" ] ; 2 uses
  %i.gt = getelementptr inbounds nuw i8, ptr %.lcssa2133, i64 8
  %i.gu = load i64, ptr %i.gt, align 8, !noalias !47962, !noundef !53
  %.not.i1128 = icmp ult i64 %.lcssa2106, %i.gu
  br i1 %.not.i1128, label %bb.r, label %"_ZN8thin_vec16ThinVec$LT$T$GT$13shrink_to_fit17h7220b9c8b2993500E.exit"

bb.r:                                             ; preds = %"_ZN94_$LT$core..slice..iter..IterMut$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$8for_each17h05e0907d856bbdd8E.exit._crit_edge"
  tail call fastcc void @"_ZN8thin_vec16ThinVec$LT$T$GT$10reallocate17hcf3ac2019c2dfe2aE"(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.ef, i64 noundef %.lcssa2106)
  br label %"_ZN8thin_vec16ThinVec$LT$T$GT$13shrink_to_fit17h7220b9c8b2993500E.exit"

bb.s:                                             ; preds = %.lr.ph2559, %"_ZN94_$LT$core..slice..iter..IterMut$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$8for_each17h05e0907d856bbdd8E.exit"
  %i.gv = phi i64 [ %.pre3036, %.lr.ph2559 ], [ %i.lh, %"_ZN94_$LT$core..slice..iter..IterMut$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$8for_each17h05e0907d856bbdd8E.exit" ] ; 2 uses
  %i.gw = phi ptr [ %.pre3035, %.lr.ph2559 ], [ %i.lg, %"_ZN94_$LT$core..slice..iter..IterMut$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$8for_each17h05e0907d856bbdd8E.exit" ]
  %.sroa.0253.02557 = phi i64 [ 0, %.lr.ph2559 ], [ %.sroa.0253.117852019, %"_ZN94_$LT$core..slice..iter..IterMut$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$8for_each17h05e0907d856bbdd8E.exit" ] ; 27 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.br)
  %i.gx = icmp ult i64 %.sroa.0253.02557, %i.gv
  br i1 %i.gx, label %bb.v, label %bb.t

bb.t:                                             ; preds = %bb.s
  tail call void @_ZN4core9panicking18panic_bounds_check17hbc09f5d79f1a5789E(i64 noundef %.sroa.0253.02557, i64 noundef %i.gv, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2165) #70
  unreachable

bb.u:                                             ; preds = %bb.x
  %i.gy = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN4core3ptr42drop_in_place$LT$rhai..ast..expr..Expr$GT$17h95304b11a9a8ee5eE"(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.br) #72
          to label %common.resume unwind label %bb.ai

bb.v:                                             ; preds = %bb.s
  %i.gz = getelementptr inbounds nuw i8, ptr %i.gw, i64 16
  %i.ha = getelementptr inbounds nuw [16 x i8], ptr %i.gz, i64 %.sroa.0253.02557 ; 4 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.br, ptr noundef nonnull align 8 dereferenceable(16) %i.ha, i64 16, i1 false)
  store i8 9, ptr %i.ha, align 8
  %.sroa.4603.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ha, i64 2
  store i16 0, ptr %.sroa.4603.0..sroa_idx, align 2
  %.sroa.5604.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ha, i64 4
  store i16 0, ptr %.sroa.5604.0..sroa_idx, align 4
  %.val1033 = load ptr, ptr %i.ef, align 8, !nonnull !53, !noundef !53 ; 2 uses
  %i.hb = load i64, ptr %.val1033, align 8, !noundef !53 ; 2 uses
  %i.hc = add nuw i64 %.sroa.0253.02557, 1        ; 18 uses
  %i.hd = icmp ult i64 %i.hc, %i.hb
  br i1 %i.hd, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  %i.he = getelementptr inbounds nuw i8, ptr %.val1033, i64 16
  %i.hf = getelementptr inbounds nuw [16 x i8], ptr %i.he, i64 %i.hc ; 4 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.gi, ptr noundef nonnull align 8 dereferenceable(16) %i.hf, i64 16, i1 false)
  store i8 9, ptr %i.hf, align 8
  %.sroa.4608.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.hf, i64 2
  store i16 0, ptr %.sroa.4608.0..sroa_idx, align 2
  %.sroa.5609.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.hf, i64 4
  store i16 0, ptr %.sroa.5609.0..sroa_idx, align 4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bh, ptr noundef nonnull align 8 dereferenceable(16) %i.br, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.br)
  %i.hg = load i8, ptr %i.bh, align 8, !range !97, !noundef !53 ; 2 uses
  %i.hh = icmp ne i8 %i.hg, 5                     ; 3 uses
  %i.hi = load i8, ptr %i.gi, align 8, !range !97 ; 2 uses
  %i.hj = icmp ne i8 %i.hi, 5                     ; 8 uses
  %or.cond.not = select i1 %i.hh, i1 true, i1 %i.hj
  br i1 %or.cond.not, label %bb.z, label %bb.aa

bb.x:                                             ; preds = %bb.v
  invoke void @_ZN4core9panicking18panic_bounds_check17hbc09f5d79f1a5789E(i64 noundef %i.hc, i64 noundef %i.hb, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2166) #70
          to label %bb.y unwind label %bb.u

bb.y:                                             ; preds = %bb.ey, %bb.cr, %bb.cn, %bb.cb, %bb.bl, %bb.ay, %bb.ap, %bb.ae, %bb.x
  unreachable

bb.z:                                             ; preds = %bb.w
  %i.hk = icmp eq i8 %i.hi, 9
  br i1 %i.hk, label %bb.an, label %bb.al

bb.aa:                                            ; preds = %bb.w
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bq)
  %i.hl = load ptr, ptr %i.gj, align 8, !nonnull !53, !noundef !53
  store ptr %i.hl, ptr %i.bq, align 8
  %i.hm = load <2 x i16>, ptr %i.gk, align 2
  %i.hn = load ptr, ptr %i.gl, align 8, !nonnull !53, !noundef !53
  invoke fastcc void @"_ZN94_$LT$rhai..types..immutable_string..ImmutableString$u20$as$u20$core..ops..arith..AddAssign$GT$10add_assign17h471f6420cfa01a13E"(ptr noalias noundef align 8 dereferenceable(8) %i.bq, ptr noundef nonnull %i.hn)
          to label %bb.ac unwind label %bb.aj

bb.ab:                                            ; preds = %bb.ad
  %i.ho = landingpad { ptr, i32 }
          cleanup
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ht, ptr noundef nonnull align 8 dereferenceable(16) %i.bp, i64 16, i1 false)
  br label %common.resume

bb.ac:                                            ; preds = %bb.aa
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bp)
  %i.hp = load ptr, ptr %i.bq, align 8, !nonnull !53, !noundef !53
  store ptr %i.hp, ptr %i.gm, align 8
  store <2 x i16> %i.hm, ptr %i.gn, align 2
  store i8 5, ptr %i.bp, align 8
  %.val1032 = load ptr, ptr %i.ef, align 8, !nonnull !53, !noundef !53 ; 2 uses
  %i.hq = load i64, ptr %.val1032, align 8, !noundef !53 ; 2 uses
  %i.hr = icmp ult i64 %.sroa.0253.02557, %i.hq
  br i1 %i.hr, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %bb.ac
  %i.hs = getelementptr inbounds nuw i8, ptr %.val1032, i64 16
  %i.ht = getelementptr inbounds nuw [16 x i8], ptr %i.hs, i64 %.sroa.0253.02557 ; 3 uses
  invoke void @"_ZN4core3ptr42drop_in_place$LT$rhai..ast..expr..Expr$GT$17h95304b11a9a8ee5eE"(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.ht)
          to label %bb.af unwind label %bb.ab

bb.ae:                                            ; preds = %bb.ac
  invoke void @_ZN4core9panicking18panic_bounds_check17hbc09f5d79f1a5789E(i64 noundef %.sroa.0253.02557, i64 noundef %i.hq, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2167) #70
          to label %bb.y unwind label %bb.ah

bb.af:                                            ; preds = %bb.ad
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ht, ptr noundef nonnull align 8 dereferenceable(16) %i.bp, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bp)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bo)
  %.val1095 = load ptr, ptr %i.ef, align 8, !nonnull !53, !noundef !53 ; 3 uses
  %i.hu = load i64, ptr %.val1095, align 8, !noalias !47963, !noundef !53 ; 3 uses
  %i.hv = icmp ult i64 %i.hc, %i.hu
  br i1 %i.hv, label %bb.ag, label %.noexc1129, !prof !72

.noexc1129:                                       ; preds = %bb.af
  tail call void @_ZN4core9panicking5panic17ha264d2bb233f2b69E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @3274, i64 noundef 19, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @3275) #70
  unreachable

bb.ag:                                            ; preds = %bb.af
  %i.hw = add i64 %i.hu, -1
  store i64 %i.hw, ptr %.val1095, align 8, !noalias !47963
  %i.hx = getelementptr inbounds nuw i8, ptr %.val1095, i64 16
  %i.hy = getelementptr inbounds nuw [16 x i8], ptr %i.hx, i64 %i.hc ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bo, ptr noundef nonnull align 8 dereferenceable(16) %i.hy, i64 16, i1 false)
  %i.hz = getelementptr i8, ptr %i.hy, i64 16
  %reass.sub2043 = sub nuw i64 %i.hu, %.sroa.0253.02557
  %i.ia = shl i64 %reass.sub2043, 4
  %i.ib = add i64 %i.ia, -32
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.hy, ptr align 8 %i.hz, i64 %i.ib, i1 false), !noalias !47963
  call void @"_ZN4core3ptr42drop_in_place$LT$rhai..ast..expr..Expr$GT$17h95304b11a9a8ee5eE"(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.bo)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bo)
  store i8 1, ptr %i.go, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bq)
  br label %"_ZN94_$LT$core..slice..iter..IterMut$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$8for_each17h05e0907d856bbdd8E.exit"

bb.ah:                                            ; preds = %bb.ae
  %i.ic = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN4core3ptr42drop_in_place$LT$rhai..ast..expr..Expr$GT$17h95304b11a9a8ee5eE"(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.bp) #72
          to label %common.resume unwind label %bb.ai

bb.ai:                                            ; preds = %bb.vx, %bb.vl, %bb.pj, %bb.pa, %bb.oo, %bb.cz, %bb.cy, %bb.ce, %bb.bo, %bb.ak, %bb.ru, %bb.rm, %.body3874, %.body, %bb.ms, %bb.lo, %"_ZN4core3ptr85drop_in_place$LT$smallvec..SmallVec$LT$$u5b$core..any..TypeId$u3b$$u20$5$u5d$$GT$$GT$17hd31a4616f37a851fE.exit", %bb.hw, %bb.fd, %bb.fc, %bb.eu, %.thread1803.thread.thread, %.thread1787.thread3156, %bb.cw, %bb.cv, %bb.cu, %bb.cj, %bb.bt, %bb.bc, %bb.at, %bb.ah, %bb.u
  %i.id = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #73
  unreachable

.thread1849.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.as, %bb.ar
  %lpad.loopexit.split-lp7542 = landingpad { ptr, i32 }
          cleanup
  br label %.thread1803.thread.thread

bb.aj:                                            ; preds = %bb.aa
  %lpad.thr_comm.split-lp = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !47964)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !47965)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !47966)
  %i.ie = load ptr, ptr %i.bq, align 8, !alias.scope !47967, !nonnull !53, !noundef !53
  %i.if = atomicrmw sub ptr %i.ie, i64 1 release, align 8, !noalias !47967
  %i.ig = icmp eq i64 %i.if, 1
  br i1 %i.ig, label %bb.ak, label %common.resume

bb.ak:                                            ; preds = %bb.aj
  fence acquire
  invoke void @"_ZN5alloc4sync16Arc$LT$T$C$A$GT$9drop_slow17h9676a7fc3180fc2bE"(ptr noalias noundef nonnull readonly align 8 dereferenceable(8) %i.bq)
          to label %common.resume unwind label %bb.ai

bb.al:                                            ; preds = %bb.z
  %.not3812 = icmp eq i8 %i.hg, 9                 ; 2 uses
  br i1 %.not3812, label %bb.aw, label %bb.au

bb.am:                                            ; preds = %bb.ao
  %i.ih = landingpad { ptr, i32 }
          cleanup
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.il, ptr noundef nonnull align 8 dereferenceable(16) %i.bh, i64 16, i1 false)
  br label %.thread1803.thread.thread

bb.an:                                            ; preds = %bb.z
  %.val1031 = load ptr, ptr %i.ef, align 8, !nonnull !53, !noundef !53 ; 2 uses
  %i.ii = load i64, ptr %.val1031, align 8, !noundef !53 ; 2 uses
  %i.ij = icmp ult i64 %.sroa.0253.02557, %i.ii
  br i1 %i.ij, label %bb.ao, label %bb.ap

bb.ao:                                            ; preds = %bb.an
  %i.ik = getelementptr inbounds nuw i8, ptr %.val1031, i64 16
  %i.il = getelementptr inbounds nuw [16 x i8], ptr %i.ik, i64 %.sroa.0253.02557 ; 3 uses
  invoke void @"_ZN4core3ptr42drop_in_place$LT$rhai..ast..expr..Expr$GT$17h95304b11a9a8ee5eE"(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.il)
          to label %bb.aq unwind label %bb.am

bb.ap:                                            ; preds = %bb.an
  invoke void @_ZN4core9panicking18panic_bounds_check17hbc09f5d79f1a5789E(i64 noundef %.sroa.0253.02557, i64 noundef %i.ii, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2168) #70
          to label %bb.y unwind label %bb.at

bb.aq:                                            ; preds = %bb.ao
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.il, ptr noundef nonnull align 8 dereferenceable(16) %i.bh, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bn)
  %.val1094 = load ptr, ptr %i.ef, align 8, !nonnull !53, !noundef !53 ; 3 uses
  %i.im = load i64, ptr %.val1094, align 8, !noalias !47968, !noundef !53 ; 3 uses
  %i.in = icmp ult i64 %i.hc, %i.im
  br i1 %i.in, label %bb.as, label %bb.ar, !prof !72

bb.ar:                                            ; preds = %bb.aq
  invoke void @_ZN4core9panicking5panic17ha264d2bb233f2b69E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @3274, i64 noundef 19, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @3275) #70
          to label %.noexc1131 unwind label %.thread1849.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc1131:                                       ; preds = %bb.ar
  unreachable

bb.as:                                            ; preds = %bb.aq
  %i.io = add i64 %i.im, -1
  store i64 %i.io, ptr %.val1094, align 8, !noalias !47968
  %i.ip = getelementptr inbounds nuw i8, ptr %.val1094, i64 16
  %i.iq = getelementptr inbounds nuw [16 x i8], ptr %i.ip, i64 %i.hc ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bn, ptr noundef nonnull align 8 dereferenceable(16) %i.iq, i64 16, i1 false)
  %i.ir = getelementptr i8, ptr %i.iq, i64 16
  %reass.sub = sub nuw i64 %i.im, %.sroa.0253.02557
  %i.is = shl i64 %reass.sub, 4
  %i.it = add i64 %i.is, -32
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.iq, ptr align 8 %i.ir, i64 %i.it, i1 false), !noalias !47968
  invoke void @"_ZN4core3ptr42drop_in_place$LT$rhai..ast..expr..Expr$GT$17h95304b11a9a8ee5eE"(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.bn)
          to label %3 unwind label %.thread1849.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

3:                                                ; preds = %bb.as
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bn)
  store i8 1, ptr %i.go, align 8
  br label %.thread1779

bb.at:                                            ; preds = %bb.ap
  %i.iu = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN4core3ptr42drop_in_place$LT$rhai..ast..expr..Expr$GT$17h95304b11a9a8ee5eE"(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.bh) #72
          to label %.thread1803.thread.thread unwind label %bb.ai

bb.au:                                            ; preds = %bb.al
  br i1 %i.hj, label %bb.bg, label %bb.bd

bb.av:                                            ; preds = %bb.ax
  %i.iv = landingpad { ptr, i32 }
          cleanup
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.iz, ptr noundef nonnull align 8 dereferenceable(16) %i.gi, i64 16, i1 false)
  br label %.thread1787.thread3156

bb.aw:                                            ; preds = %bb.al
  %.val1030 = load ptr, ptr %i.ef, align 8, !nonnull !53, !noundef !53 ; 2 uses
  %i.iw = load i64, ptr %.val1030, align 8, !noundef !53 ; 2 uses
  %i.ix = icmp ult i64 %i.hc, %i.iw
  br i1 %i.ix, label %bb.ax, label %bb.ay

bb.ax:                                            ; preds = %bb.aw
  %i.iy = getelementptr inbounds nuw i8, ptr %.val1030, i64 16
  %i.iz = getelementptr inbounds nuw [16 x i8], ptr %i.iy, i64 %i.hc ; 3 uses
  invoke void @"_ZN4core3ptr42drop_in_place$LT$rhai..ast..expr..Expr$GT$17h95304b11a9a8ee5eE"(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.iz)
          to label %bb.az unwind label %bb.av

bb.ay:                                            ; preds = %bb.aw
  invoke void @_ZN4core9panicking18panic_bounds_check17hbc09f5d79f1a5789E(i64 noundef %i.hc, i64 noundef %i.iw, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2169) #70
          to label %bb.y unwind label %bb.bc

bb.az:                                            ; preds = %bb.ax
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.iz, ptr noundef nonnull align 8 dereferenceable(16) %i.gi, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bm)
  %.val1093 = load ptr, ptr %i.ef, align 8, !nonnull !53, !noundef !53 ; 3 uses
  %i.ja = load i64, ptr %.val1093, align 8, !noalias !47969, !noundef !53 ; 3 uses
  %i.jb = icmp ult i64 %.sroa.0253.02557, %i.ja
  br i1 %i.jb, label %bb.bb, label %bb.ba, !prof !72

bb.ba:                                            ; preds = %bb.az
  invoke void @_ZN4core9panicking5panic17ha264d2bb233f2b69E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @3274, i64 noundef 19, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @3275) #70
          to label %.noexc1133 unwind label %.thread1787.thread3171.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc1133:                                       ; preds = %bb.ba
  unreachable

bb.bb:                                            ; preds = %bb.az
  %i.jc = add i64 %i.ja, -1
  store i64 %i.jc, ptr %.val1093, align 8, !noalias !47969
  %i.jd = getelementptr inbounds nuw i8, ptr %.val1093, i64 16
  %i.je = getelementptr inbounds nuw [16 x i8], ptr %i.jd, i64 %.sroa.0253.02557 ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bm, ptr noundef nonnull align 8 dereferenceable(16) %i.je, i64 16, i1 false)
  %i.jf = getelementptr i8, ptr %i.je, i64 16
  %i.jg = xor i64 %.sroa.0253.02557, -1
  %i.jh = add i64 %i.ja, %i.jg
  %i.ji = shl i64 %i.jh, 4
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.je, ptr align 8 %i.jf, i64 %i.ji, i1 false), !noalias !47969
  invoke void @"_ZN4core3ptr42drop_in_place$LT$rhai..ast..expr..Expr$GT$17h95304b11a9a8ee5eE"(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.bm)
          to label %bb.cs unwind label %.thread1787.thread3171.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.thread1787.thread3171.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.bb, %bb.ba
  %lpad.loopexit.split-lp7540 = landingpad { ptr, i32 }
          cleanup
  br label %.thread1787.thread3156

bb.bc:                                            ; preds = %bb.ay
  %i.jj = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN4core3ptr42drop_in_place$LT$rhai..ast..expr..Expr$GT$17h95304b11a9a8ee5eE"(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.gi) #72
          to label %.thread1787.thread3156 unwind label %bb.ai

bb.bd:                                            ; preds = %bb.au
  %i.jk = load ptr, ptr %i.gl, align 8, !nonnull !53, !noundef !53 ; 5 uses
  %i.jl = getelementptr inbounds nuw i8, ptr %i.jk, i64 16 ; 2 uses
  %i.jm = invoke noundef zeroext i1 @_ZN11smartstring5boxed11BoxedString15check_alignment17h45a5a60d2f25a250E(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.jl)
          to label %.noexc982 unwind label %.thread1787

.noexc982:                                        ; preds = %bb.bd
  br i1 %i.jm, label %bb.be, label %bb.bf

bb.be:                                            ; preds = %.noexc982
  %i.jn = invoke { ptr, i64 } @"_ZN77_$LT$smartstring..inline..InlineString$u20$as$u20$core..ops..deref..Deref$GT$5deref17h9358a1a898cbf6e4E"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.jl)
          to label %.noexc983 unwind label %.thread1787

.noexc983:                                        ; preds = %bb.be
  %i.jo = extractvalue { ptr, i64 } %i.jn, 1
  br label %bb.bh

bb.bf:                                            ; preds = %.noexc982
  %i.jp = getelementptr inbounds nuw i8, ptr %i.jk, i64 32
  %i.jq = load i64, ptr %i.jp, align 8, !noundef !53
  br label %bb.bh

bb.bg:                                            ; preds = %bb.bh, %bb.au
  br i1 %i.hh, label %bb.cl, label %bb.bu

bb.bh:                                            ; preds = %bb.bf, %.noexc983
  %.merged.i981 = phi i64 [ %i.jo, %.noexc983 ], [ %i.jq, %bb.bf ]
  %i.jr = icmp eq i64 %.merged.i981, 0
  br i1 %i.jr, label %bb.bj, label %bb.bg

bb.bi:                                            ; preds = %bb.bk
  %i.js = landingpad { ptr, i32 }
          cleanup
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.jw, ptr noundef nonnull align 8 dereferenceable(16) %i.bh, i64 16, i1 false)
  br label %bb.bn

bb.bj:                                            ; preds = %bb.bh
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bl)
  store ptr %i.jk, ptr %i.bl, align 8
  %.val1029 = load ptr, ptr %i.ef, align 8, !nonnull !53, !noundef !53 ; 2 uses
  %i.jt = load i64, ptr %.val1029, align 8, !noundef !53 ; 2 uses
  %i.ju = icmp ult i64 %.sroa.0253.02557, %i.jt
  br i1 %i.ju, label %bb.bk, label %bb.bl

bb.bk:                                            ; preds = %bb.bj
  %i.jv = getelementptr inbounds nuw i8, ptr %.val1029, i64 16
  %i.jw = getelementptr inbounds nuw [16 x i8], ptr %i.jv, i64 %.sroa.0253.02557 ; 3 uses
  invoke void @"_ZN4core3ptr42drop_in_place$LT$rhai..ast..expr..Expr$GT$17h95304b11a9a8ee5eE"(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.jw)
          to label %bb.bm unwind label %bb.bi

bb.bl:                                            ; preds = %bb.bj
  invoke void @_ZN4core9panicking18panic_bounds_check17hbc09f5d79f1a5789E(i64 noundef %.sroa.0253.02557, i64 noundef %i.jt, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2170) #70
          to label %bb.y unwind label %bb.bt

bb.bm:                                            ; preds = %bb.bk
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.jw, ptr noundef nonnull align 8 dereferenceable(16) %i.bh, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bk)
  %.val1092 = load ptr, ptr %i.ef, align 8, !nonnull !53, !noundef !53
  invoke fastcc void @"_ZN8thin_vec16ThinVec$LT$T$GT$6remove17h658d136dccdd724cE"(ptr noalias noundef align 8 captures(address) dereferenceable(16) %i.bk, ptr nonnull %.val1092, i64 noundef %i.hc)
          to label %bb.bq unwind label %bb.bp

bb.bn:                                            ; preds = %bb.bi, %bb.bt, %bb.bp
  %.pn831 = phi { ptr, i32 } [ %i.jz, %bb.bp ], [ %i.kc, %bb.bt ], [ %i.js, %bb.bi ] ; 2 uses
  %i.jx = atomicrmw sub ptr %i.jk, i64 1 release, align 8, !noalias !47970
  %i.jy = icmp eq i64 %i.jx, 1
  br i1 %i.jy, label %bb.bo, label %common.resume

bb.bo:                                            ; preds = %bb.bn
  fence acquire
  invoke void @"_ZN5alloc4sync16Arc$LT$T$C$A$GT$9drop_slow17h9676a7fc3180fc2bE"(ptr noalias noundef nonnull readonly align 8 dereferenceable(8) %i.bl)
          to label %common.resume unwind label %bb.ai

bb.bp:                                            ; preds = %bb.bm, %bb.bq
  %i.jz = landingpad { ptr, i32 }
          cleanup
  br label %bb.bn

bb.bq:                                            ; preds = %bb.bm
  invoke void @"_ZN4core3ptr42drop_in_place$LT$rhai..ast..expr..Expr$GT$17h95304b11a9a8ee5eE"(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.bk)
          to label %bb.br unwind label %bb.bp

bb.br:                                            ; preds = %bb.bq
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bk)
  store i8 1, ptr %i.go, align 8
  %i.ka = atomicrmw sub ptr %i.jk, i64 1 release, align 8, !noalias !47971
  %i.kb = icmp eq i64 %i.ka, 1
  br i1 %i.kb, label %bb.bs, label %"_ZN4core3ptr67drop_in_place$LT$rhai..types..immutable_string..ImmutableString$GT$17hc11d0e3fcce6a14cE.exit1140"

bb.bs:                                            ; preds = %bb.br
  fence acquire
  call void @"_ZN5alloc4sync16Arc$LT$T$C$A$GT$9drop_slow17h9676a7fc3180fc2bE"(ptr noalias noundef nonnull readonly align 8 dereferenceable(8) %i.bl)
  br label %"_ZN4core3ptr67drop_in_place$LT$rhai..types..immutable_string..ImmutableString$GT$17hc11d0e3fcce6a14cE.exit1140"

"_ZN4core3ptr67drop_in_place$LT$rhai..types..immutable_string..ImmutableString$GT$17hc11d0e3fcce6a14cE.exit1140": ; preds = %bb.bs, %bb.br
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bl)
  br label %"_ZN94_$LT$core..slice..iter..IterMut$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$8for_each17h05e0907d856bbdd8E.exit"

bb.bt:                                            ; preds = %bb.bl
  %i.kc = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN4core3ptr42drop_in_place$LT$rhai..ast..expr..Expr$GT$17h95304b11a9a8ee5eE"(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.bh) #72
          to label %bb.bn unwind label %bb.ai

bb.bu:                                            ; preds = %bb.bg
  %i.kd = load ptr, ptr %i.gj, align 8, !nonnull !53, !noundef !53 ; 6 uses
  %i.ke = getelementptr inbounds nuw i8, ptr %i.kd, i64 16 ; 2 uses
  %i.kf = invoke noundef zeroext i1 @_ZN11smartstring5boxed11BoxedString15check_alignment17h45a5a60d2f25a250E(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ke)
          to label %.noexc977 unwind label %.thread3190

.noexc977:                                        ; preds = %bb.bu
  br i1 %i.kf, label %bb.bv, label %bb.bw

bb.bv:                                            ; preds = %.noexc977
  %i.kg = invoke { ptr, i64 } @"_ZN77_$LT$smartstring..inline..InlineString$u20$as$u20$core..ops..deref..Deref$GT$5deref17h9358a1a898cbf6e4E"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ke)
          to label %.noexc978 unwind label %.thread3190

.noexc978:                                        ; preds = %bb.bv
  %i.kh = extractvalue { ptr, i64 } %i.kg, 1
  br label %bb.bx

bb.bw:                                            ; preds = %.noexc977
  %i.ki = getelementptr inbounds nuw i8, ptr %i.kd, i64 32
  %i.kj = load i64, ptr %i.ki, align 8, !noundef !53
  br label %bb.bx

bb.bx:                                            ; preds = %bb.bw, %.noexc978
  %.merged.i976 = phi i64 [ %i.kh, %.noexc978 ], [ %i.kj, %bb.bw ]
  %i.kk = icmp eq i64 %.merged.i976, 0
  br i1 %i.kk, label %bb.bz, label %bb.cl

bb.by:                                            ; preds = %bb.ca
  %i.kl = landingpad { ptr, i32 }
          cleanup
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.kp, ptr noundef nonnull align 8 dereferenceable(16) %i.gi, i64 16, i1 false)
  br label %bb.cd

bb.bz:                                            ; preds = %bb.bx
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bj)
  store ptr %i.kd, ptr %i.bj, align 8
  %.val1027 = load ptr, ptr %i.ef, align 8, !nonnull !53, !noundef !53 ; 2 uses
  %i.km = load i64, ptr %.val1027, align 8, !noundef !53 ; 2 uses
  %i.kn = icmp ult i64 %i.hc, %i.km
  br i1 %i.kn, label %bb.ca, label %bb.cb

bb.ca:                                            ; preds = %bb.bz
  %i.ko = getelementptr inbounds nuw i8, ptr %.val1027, i64 16
  %i.kp = getelementptr inbounds nuw [16 x i8], ptr %i.ko, i64 %i.hc ; 3 uses
  invoke void @"_ZN4core3ptr42drop_in_place$LT$rhai..ast..expr..Expr$GT$17h95304b11a9a8ee5eE"(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.kp)
          to label %bb.cc unwind label %bb.by

bb.cb:                                            ; preds = %bb.bz
  invoke void @_ZN4core9panicking18panic_bounds_check17hbc09f5d79f1a5789E(i64 noundef %i.hc, i64 noundef %i.km, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2171) #70
          to label %bb.y unwind label %bb.cj

bb.cc:                                            ; preds = %bb.ca
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.kp, ptr noundef nonnull align 8 dereferenceable(16) %i.gi, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bi)
  %.val1091 = load ptr, ptr %i.ef, align 8, !nonnull !53, !noundef !53
  invoke fastcc void @"_ZN8thin_vec16ThinVec$LT$T$GT$6remove17h658d136dccdd724cE"(ptr noalias noundef align 8 captures(address) dereferenceable(16) %i.bi, ptr nonnull %.val1091, i64 noundef %.sroa.0253.02557)
          to label %bb.cg unwind label %bb.cf

bb.cd:                                            ; preds = %bb.by, %bb.cj, %bb.cf
  %.pn827 = phi { ptr, i32 } [ %i.ks, %bb.cf ], [ %i.kv, %bb.cj ], [ %i.kl, %bb.by ] ; 2 uses
  %i.kq = atomicrmw sub ptr %i.kd, i64 1 release, align 8, !noalias !47972
  %i.kr = icmp eq i64 %i.kq, 1
  br i1 %i.kr, label %bb.ce, label %common.resume

bb.ce:                                            ; preds = %bb.cd
  fence acquire
  invoke void @"_ZN5alloc4sync16Arc$LT$T$C$A$GT$9drop_slow17h9676a7fc3180fc2bE"(ptr noalias noundef nonnull readonly align 8 dereferenceable(8) %i.bj)
          to label %common.resume unwind label %bb.ai

bb.cf:                                            ; preds = %bb.cc, %bb.cg
  %i.ks = landingpad { ptr, i32 }
          cleanup
  br label %bb.cd

bb.cg:                                            ; preds = %bb.cc
  invoke void @"_ZN4core3ptr42drop_in_place$LT$rhai..ast..expr..Expr$GT$17h95304b11a9a8ee5eE"(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.bi)
          to label %bb.ch unwind label %bb.cf

bb.ch:                                            ; preds = %bb.cg
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bi)
  store i8 1, ptr %i.go, align 8
  %i.kt = atomicrmw sub ptr %i.kd, i64 1 release, align 8, !noalias !47973
  %i.ku = icmp eq i64 %i.kt, 1
  br i1 %i.ku, label %bb.ci, label %"_ZN4core3ptr67drop_in_place$LT$rhai..types..immutable_string..ImmutableString$GT$17hc11d0e3fcce6a14cE.exit1147"

bb.ci:                                            ; preds = %bb.ch
  fence acquire
  call void @"_ZN5alloc4sync16Arc$LT$T$C$A$GT$9drop_slow17h9676a7fc3180fc2bE"(ptr noalias noundef nonnull readonly align 8 dereferenceable(8) %i.bj)
  br label %"_ZN4core3ptr67drop_in_place$LT$rhai..types..immutable_string..ImmutableString$GT$17hc11d0e3fcce6a14cE.exit1147"

"_ZN4core3ptr67drop_in_place$LT$rhai..types..immutable_string..ImmutableString$GT$17hc11d0e3fcce6a14cE.exit1147": ; preds = %bb.ci, %bb.ch
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bj)
  br label %.thread1779

bb.cj:                                            ; preds = %bb.cb
  %i.kv = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN4core3ptr42drop_in_place$LT$rhai..ast..expr..Expr$GT$17h95304b11a9a8ee5eE"(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.gi) #72
          to label %bb.cd unwind label %bb.ai

bb.ck:                                            ; preds = %bb.cm
  %i.kw = landingpad { ptr, i32 }
          cleanup
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.la, ptr noundef nonnull align 8 dereferenceable(16) %i.bh, i64 16, i1 false)
  br label %bb.cw

bb.cl:                                            ; preds = %bb.bg, %bb.bx
  %.val1028 = load ptr, ptr %i.ef, align 8, !nonnull !53, !noundef !53 ; 2 uses
  %i.kx = load i64, ptr %.val1028, align 8, !noundef !53 ; 2 uses
  %i.ky = icmp ult i64 %.sroa.0253.02557, %i.kx
  br i1 %i.ky, label %bb.cm, label %bb.cn

bb.cm:                                            ; preds = %bb.cl
  %i.kz = getelementptr inbounds nuw i8, ptr %.val1028, i64 16
  %i.la = getelementptr inbounds nuw [16 x i8], ptr %i.kz, i64 %.sroa.0253.02557 ; 3 uses
  invoke void @"_ZN4core3ptr42drop_in_place$LT$rhai..ast..expr..Expr$GT$17h95304b11a9a8ee5eE"(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.la)
          to label %bb.cp unwind label %bb.ck

bb.cn:                                            ; preds = %bb.cl
  invoke void @_ZN4core9panicking18panic_bounds_check17hbc09f5d79f1a5789E(i64 noundef %.sroa.0253.02557, i64 noundef %i.kx, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2172) #70
          to label %bb.y unwind label %bb.cv

bb.co:                                            ; preds = %bb.cq
  %i.lb = landingpad { ptr, i32 }
          cleanup
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.lf, ptr noundef nonnull align 8 dereferenceable(16) %i.gi, i64 16, i1 false)
  br label %common.resume

bb.cp:                                            ; preds = %bb.cm
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.la, ptr noundef nonnull align 8 dereferenceable(16) %i.bh, i64 16, i1 false)
  %.val1026 = load ptr, ptr %i.ef, align 8, !nonnull !53, !noundef !53 ; 2 uses
  %i.lc = load i64, ptr %.val1026, align 8, !noundef !53 ; 2 uses
  %i.ld = icmp ult i64 %i.hc, %i.lc
  br i1 %i.ld, label %bb.cq, label %bb.cr

bb.cq:                                            ; preds = %bb.cp
  %i.le = getelementptr inbounds nuw i8, ptr %.val1026, i64 16
  %i.lf = getelementptr inbounds nuw [16 x i8], ptr %i.le, i64 %i.hc ; 3 uses
  invoke void @"_ZN4core3ptr42drop_in_place$LT$rhai..ast..expr..Expr$GT$17h95304b11a9a8ee5eE"(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.lf)
          to label %.thread1779.thread unwind label %bb.co

bb.cr:                                            ; preds = %bb.cp
  invoke void @_ZN4core9panicking18panic_bounds_check17hbc09f5d79f1a5789E(i64 noundef %i.hc, i64 noundef %i.lc, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2173) #70
          to label %bb.y unwind label %bb.cu

.thread1779.thread:                               ; preds = %bb.cq
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.lf, ptr noundef nonnull align 8 dereferenceable(16) %i.gi, i64 16, i1 false)
  br label %"_ZN94_$LT$core..slice..iter..IterMut$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$8for_each17h05e0907d856bbdd8E.exit"

.thread1779:                                      ; preds = %"_ZN4core3ptr67drop_in_place$LT$rhai..types..immutable_string..ImmutableString$GT$17hc11d0e3fcce6a14cE.exit1147", %3
  %.sroa.0520.01784 = phi i1 [ false, %3 ], [ %i.hj, %"_ZN4core3ptr67drop_in_place$LT$rhai..types..immutable_string..ImmutableString$GT$17hc11d0e3fcce6a14cE.exit1147" ]
  %.not3041 = xor i1 %i.hj, true
  %or.cond11 = select i1 %.sroa.0520.01784, i1 true, i1 %.not3041
  br i1 %or.cond11, label %"_ZN94_$LT$core..slice..iter..IterMut$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$8for_each17h05e0907d856bbdd8E.exit", label %bb.ct

bb.cs:                                            ; preds = %bb.bb
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bm)
  store i8 1, ptr %i.go, align 8
  call void @"_ZN4core3ptr42drop_in_place$LT$rhai..ast..expr..Expr$GT$17h95304b11a9a8ee5eE"(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.bh)
  br label %"_ZN94_$LT$core..slice..iter..IterMut$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$8for_each17h05e0907d856bbdd8E.exit"

"_ZN94_$LT$core..slice..iter..IterMut$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$8for_each17h05e0907d856bbdd8E.exit": ; preds = %bb.cs, %bb.ag, %"_ZN4core3ptr67drop_in_place$LT$rhai..types..immutable_string..ImmutableString$GT$17hc11d0e3fcce6a14cE.exit1140", %.thread1779.thread, %bb.ct, %.thread1779
  %.sroa.0253.117852019 = phi i64 [ %i.hc, %.thread1779.thread ], [ %.sroa.0253.02557, %bb.ct ], [ %.sroa.0253.02557, %.thread1779 ], [ %.sroa.0253.02557, %bb.cs ], [ %.sroa.0253.02557, %"_ZN4core3ptr67drop_in_place$LT$rhai..types..immutable_string..ImmutableString$GT$17hc11d0e3fcce6a14cE.exit1140" ], [ %.sroa.0253.02557, %bb.ag ] ; 2 uses
  %i.lg = load ptr, ptr %i.ef, align 8, !nonnull !53, !noundef !53 ; 3 uses
  %i.lh = load i64, ptr %i.lg, align 8, !noundef !53 ; 3 uses
  %i.li = add i64 %i.lh, -1
  %i.lj = icmp ult i64 %.sroa.0253.117852019, %i.li
  br i1 %i.lj, label %bb.s, label %"_ZN94_$LT$core..slice..iter..IterMut$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$8for_each17h05e0907d856bbdd8E.exit._crit_edge"

bb.ct:                                            ; preds = %.thread1779
  call void @"_ZN4core3ptr42drop_in_place$LT$rhai..ast..expr..Expr$GT$17h95304b11a9a8ee5eE"(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.gi)
  br label %"_ZN94_$LT$core..slice..iter..IterMut$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$8for_each17h05e0907d856bbdd8E.exit"

bb.cu:                                            ; preds = %bb.cr
  %i.lk = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN4core3ptr42drop_in_place$LT$rhai..ast..expr..Expr$GT$17h95304b11a9a8ee5eE"(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.gi) #72
          to label %common.resume unwind label %bb.ai

bb.cv:                                            ; preds = %bb.cn
  %i.ll = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN4core3ptr42drop_in_place$LT$rhai..ast..expr..Expr$GT$17h95304b11a9a8ee5eE"(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.bh) #72
          to label %bb.cw unwind label %bb.ai

bb.cw:                                            ; preds = %bb.cv, %bb.ck
  %.pn822.pn.ph = phi { ptr, i32 } [ %i.kw, %bb.ck ], [ %i.ll, %bb.cv ]
  invoke void @"_ZN4core3ptr42drop_in_place$LT$rhai..ast..expr..Expr$GT$17h95304b11a9a8ee5eE"(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.gi) #72
          to label %common.resume unwind label %bb.ai

bb.cx:                                            ; preds = %.thread1787.thread3156
  br i1 %.not3812, label %common.resume, label %.thread1803.thread

.thread1787:                                      ; preds = %bb.be, %bb.bd
  %lpad.thr_comm.split-lp3166 = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  br i1 %i.hh, label %.thread1787.thread3156, label %.thread1787..thread3174_crit_edge

.thread1787..thread3174_crit_edge:                ; preds = %.thread1787
  %.pre4925 = load ptr, ptr %i.gj, align 8
  br label %.thread3174

.thread3190:                                      ; preds = %bb.bu, %bb.bv
  %lpad.thr_comm3188 = landingpad { ptr, i32 }
          cleanup
  br label %.thread3174

.thread1787.thread3156:                           ; preds = %.thread1787.thread3171.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.bc, %bb.av, %.thread1787
  %i.lm = phi i1 [ %i.hj, %bb.av ], [ false, %.thread1787 ], [ %i.hj, %bb.bc ], [ %i.hj, %.thread1787.thread3171.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  %.pn839.pn17993161 = phi { ptr, i32 } [ %i.iv, %bb.av ], [ %lpad.thr_comm.split-lp3166, %.thread1787 ], [ %i.jj, %bb.bc ], [ %lpad.loopexit.split-lp7540, %.thread1787.thread3171.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ] ; 2 uses
  invoke void @"_ZN4core3ptr42drop_in_place$LT$rhai..ast..expr..Expr$GT$17h95304b11a9a8ee5eE"(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.bh) #72
          to label %bb.cx unwind label %bb.ai

.thread3174:                                      ; preds = %.thread1787..thread3174_crit_edge, %.thread3190
  %i.ln = phi i1 [ %i.hj, %.thread3190 ], [ false, %.thread1787..thread3174_crit_edge ] ; 2 uses
  %i.lo = phi ptr [ %i.kd, %.thread3190 ], [ %.pre4925, %.thread1787..thread3174_crit_edge ]
  %.pn839.pn179931473181 = phi { ptr, i32 } [ %lpad.thr_comm3188, %.thread3190 ], [ %lpad.thr_comm.split-lp3166, %.thread1787..thread3174_crit_edge ] ; 2 uses
  %i.lp = atomicrmw sub ptr %i.lo, i64 1 release, align 8, !noalias !47974
  %i.lq = icmp eq i64 %i.lp, 1
  br i1 %i.lq, label %bb.cy, label %.thread1803.thread

bb.cy:                                            ; preds = %.thread3174
  fence acquire
  invoke void @"_ZN5alloc4sync16Arc$LT$T$C$A$GT$9drop_slow17h9676a7fc3180fc2bE"(ptr noalias noundef nonnull readonly align 8 dereferenceable(8) %i.gj)
          to label %.thread1803.thread unwind label %bb.ai

.thread1803.thread:                               ; preds = %.thread3174, %bb.cy, %bb.cx
  %i.lr = phi i1 [ %i.ln, %bb.cy ], [ %i.lm, %bb.cx ], [ %i.ln, %.thread3174 ]
  %.pn839.pn17981853 = phi { ptr, i32 } [ %.pn839.pn179931473181, %bb.cy ], [ %.pn839.pn17993161, %bb.cx ], [ %.pn839.pn179931473181, %.thread3174 ] ; 3 uses
  br i1 %i.lr, label %.thread1803.thread.thread, label %.thread

.thread1803.thread.thread:                        ; preds = %.thread1849.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.am, %bb.at, %.thread1803.thread
  %.pn839.pn179818533196 = phi { ptr, i32 } [ %.pn839.pn17981853, %.thread1803.thread ], [ %i.ih, %bb.am ], [ %i.iu, %bb.at ], [ %lpad.loopexit.split-lp7542, %.thread1849.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  invoke void @"_ZN4core3ptr42drop_in_place$LT$rhai..ast..expr..Expr$GT$17h95304b11a9a8ee5eE"(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.gi) #72
          to label %common.resume unwind label %bb.ai

.thread:                                          ; preds = %.thread1803.thread
  %i.ls = load ptr, ptr %i.gl, align 8, !nonnull !53, !noundef !53
  %i.lt = atomicrmw sub ptr %i.ls, i64 1 release, align 8, !noalias !47975
  %i.lu = icmp eq i64 %i.lt, 1
  br i1 %i.lu, label %bb.cz, label %common.resume

bb.cz:                                            ; preds = %.thread
  fence acquire
  invoke void @"_ZN5alloc4sync16Arc$LT$T$C$A$GT$9drop_slow17h9676a7fc3180fc2bE"(ptr noalias noundef nonnull readonly align 8 dereferenceable(8) %i.gl)
          to label %common.resume unwind label %bb.ai

bb.da:                                            ; preds = %bb.q
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bt, ptr noundef nonnull align 8 dereferenceable(16) %i.bs, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bs)
  %i.lv = call fastcc noundef nonnull ptr @_ZN4rhai5types7dynamic7Dynamic4cast17hc52d448aa52cd143E(ptr noalias noundef align 8 captures(address) dereferenceable(16) %i.bt) ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bt)
  %i.lw = load i8, ptr %.tr, align 8, !range !97, !alias.scope !47976, !noundef !53
  %i.lx = icmp eq i8 %i.lw, 14
  br i1 %i.lx, label %bb.db, label %bb.dd

bb.db:                                            ; preds = %bb.da
  %i.ly = load ptr, ptr %i.ef, align 8, !alias.scope !47976, !nonnull !53, !align !54, !noundef !53 ; 2 uses
  %i.lz = getelementptr inbounds nuw i8, ptr %i.ly, i64 136
  %i.ma = getelementptr inbounds nuw i8, ptr %i.ly, i64 138
  br label %bb.dd

bb.dc:                                            ; preds = %bb.q
  tail call void @_ZN4core6option13unwrap_failed17h13b3e6f702cb1c04E(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2174) #70
  unreachable

bb.dd:                                            ; preds = %bb.da, %bb.db
  %.sroa.4.0.in.i1153 = phi ptr [ %i.ee, %bb.da ], [ %i.ma, %bb.db ]
  %.sroa.0.0.in.i1154 = phi ptr [ %.sroa.01.0.i1124.le7078, %bb.da ], [ %i.lz, %bb.db ]
  %.sroa.0.0.i1155 = load i16, ptr %.sroa.0.0.in.i1154, align 2, !noundef !53 ; 2 uses
  %.sroa.4.0.i1156 = load i16, ptr %.sroa.4.0.in.i1153, align 2, !noundef !53 ; 2 uses
  invoke void @"_ZN4core3ptr42drop_in_place$LT$rhai..ast..expr..Expr$GT$17h95304b11a9a8ee5eE"(ptr noalias noundef nonnull align 8 dereferenceable(16) %.tr)
          to label %bb.df unwind label %bb.de

bb.de:                                            ; preds = %bb.dd
  %i.mb = landingpad { ptr, i32 }
          cleanup
  store i8 5, ptr %.tr, align 8
  store i16 %.sroa.0.0.i1155, ptr %.sroa.01.0.i1124.le7078, align 2
  store i16 %.sroa.4.0.i1156, ptr %i.ee, align 4
  store ptr %i.lv, ptr %i.ef, align 8
  br label %common.resume

bb.df:                                            ; preds = %bb.dd
  store i8 5, ptr %.tr, align 8
  store i16 %.sroa.0.0.i1155, ptr %.sroa.01.0.i1124.le7078, align 2
  store i16 %.sroa.4.0.i1156, ptr %i.ee, align 4
  store ptr %i.lv, ptr %i.ef, align 8
  br label %"_ZN8thin_vec16ThinVec$LT$T$GT$13shrink_to_fit17h7220b9c8b2993500E.exit"

bb.dg:                                            ; preds = %bb.c
  %i.mc = getelementptr inbounds nuw i8, ptr %.tr, i64 8
  %.val1025 = load ptr, ptr %i.mc, align 8, !nonnull !53, !noundef !53 ; 2 uses
  %i.md = getelementptr inbounds nuw i8, ptr %.val1025, i64 16 ; 2 uses
  %i.me = load i64, ptr %.val1025, align 8, !noundef !53 ; 2 uses
  %.idx2567 = shl nuw nsw i64 %i.me, 4
  %i.mf = getelementptr inbounds nuw i8, ptr %i.md, i64 %.idx2567
  %i.mg = icmp eq i64 %i.me, 0
  br i1 %i.mg, label %"_ZN8thin_vec16ThinVec$LT$T$GT$13shrink_to_fit17h7220b9c8b2993500E.exit", label %.lr.ph

.lr.ph:                                           ; preds = %bb.dg, %.lr.ph
  %.sroa.01744.02554 = phi ptr [ %i.mh, %.lr.ph ], [ %i.md, %bb.dg ] ; 2 uses
  %i.mh = getelementptr inbounds nuw i8, ptr %.sroa.01744.02554, i64 16 ; 2 uses
  tail call fastcc void @_ZN4rhai9optimizer13optimize_expr17haeffafea56131100E(ptr noalias noundef nonnull align 8 dereferenceable(16) %.sroa.01744.02554, ptr noalias noundef align 8 dereferenceable(336) %1, i1 noundef zeroext false), !noalias !47977, !inline_history !47556
  %i.mi = icmp eq ptr %i.mh, %i.mf
  br i1 %i.mi, label %"_ZN8thin_vec16ThinVec$LT$T$GT$13shrink_to_fit17h7220b9c8b2993500E.exit", label %.lr.ph

bb.dh:                                            ; preds = %bb.c
  %i.mj = getelementptr inbounds nuw i8, ptr %1, i64 328
  store i8 1, ptr %i.mj, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bg)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bf)
  call fastcc void @_ZN4rhai3ast4expr4Expr17get_literal_value17h1232769a034b966dE(ptr noalias noundef align 8 captures(address) dereferenceable(16) %i.bf, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(16) %.tr, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(88) null)
  %i.mk = load i8, ptr %i.bf, align 8, !range !68, !noundef !53
  %.not819 = icmp eq i8 %i.mk, 12
  br i1 %.not819, label %bb.dn, label %bb.di, !prof !64

bb.di:                                            ; preds = %bb.dh
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bg, ptr noundef nonnull align 8 dereferenceable(16) %i.bf, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bf)
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #71, !noalias !47978
  %i.ml = tail call noundef align 8 dereferenceable_or_null(16) ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef 16, i64 noundef range(i64 1, -9223372036854775807) 8) #71, !noalias !47978 ; 4 uses
  %i.mm = icmp eq ptr %i.ml, null
  br i1 %i.mm, label %bb.dj, label %"_ZN5alloc5boxed12Box$LT$T$GT$3new17h86e15865ef3bf44fE.exit893", !prof !56

bb.dj:                                            ; preds = %bb.di
  invoke void @_ZN5alloc5alloc18handle_alloc_error17h8f86e24af4223f3dE(i64 noundef 8, i64 noundef 16) #70
          to label %.noexc1162 unwind label %bb.dk

.noexc1162:                                       ; preds = %bb.dj
  unreachable

bb.dk:                                            ; preds = %bb.dj
  %i.mn = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr48drop_in_place$LT$rhai..types..dynamic..Union$GT$17h49c4795ab223165bE"(ptr noalias noundef nonnull readonly align 8 dereferenceable(16) %i.bg)
          to label %common.resume unwind label %bb.dl, !inline_history !71

bb.dl:                                            ; preds = %bb.dk
  %i.mo = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #73
  unreachable

"_ZN5alloc5boxed12Box$LT$T$GT$3new17h86e15865ef3bf44fE.exit893": ; preds = %bb.di
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ml, ptr noundef nonnull align 8 dereferenceable(16) %i.bg, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bg)
  %i.mp = load i8, ptr %.tr, align 8, !range !97, !alias.scope !47979, !noundef !53
  %i.mq = icmp eq i8 %i.mp, 14
  br i1 %i.mq, label %bb.dm, label %bb.do

bb.dm:                                            ; preds = %"_ZN5alloc5boxed12Box$LT$T$GT$3new17h86e15865ef3bf44fE.exit893"
  %i.mr = getelementptr inbounds nuw i8, ptr %.tr, i64 8
  %i.ms = load ptr, ptr %i.mr, align 8, !alias.scope !47979, !nonnull !53, !align !54, !noundef !53 ; 2 uses
  %i.mt = getelementptr inbounds nuw i8, ptr %i.ms, i64 136
  %i.mu = getelementptr inbounds nuw i8, ptr %i.ms, i64 138
  br label %bb.do

bb.dn:                                            ; preds = %bb.dh
  tail call void @_ZN4core6option13unwrap_failed17h13b3e6f702cb1c04E(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2175) #70
  unreachable

bb.do:                                            ; preds = %"_ZN5alloc5boxed12Box$LT$T$GT$3new17h86e15865ef3bf44fE.exit893", %bb.dm
  %.sroa.4.0.in.i1165 = phi ptr [ %i.ej, %"_ZN5alloc5boxed12Box$LT$T$GT$3new17h86e15865ef3bf44fE.exit893" ], [ %i.mu, %bb.dm ]
  %.sroa.0.0.in.i1166 = phi ptr [ %.sroa.01.0.i1124.le7076, %"_ZN5alloc5boxed12Box$LT$T$GT$3new17h86e15865ef3bf44fE.exit893" ], [ %i.mt, %bb.dm ]
  %.sroa.0.0.i1167 = load i16, ptr %.sroa.0.0.in.i1166, align 2, !noundef !53 ; 2 uses
  %.sroa.4.0.i1168 = load i16, ptr %.sroa.4.0.in.i1165, align 2, !noundef !53 ; 2 uses
  invoke void @"_ZN4core3ptr42drop_in_place$LT$rhai..ast..expr..Expr$GT$17h95304b11a9a8ee5eE"(ptr noalias noundef nonnull align 8 dereferenceable(16) %.tr)
          to label %bb.dq unwind label %bb.dp

end_hunk_1
begin_hunk_2_@_ZN4rhai9optimizer13optimize_stmt17h1fd8d7a6bfb03e75E:bb.a
  %i.tt = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr42drop_in_place$LT$rhai..ast..stmt..Stmt$GT$17h8c7cea9300790c9cE"(ptr noalias noundef align 8 dereferenceable(16) %i.ap) #72
          to label %.body637 unwind label %bb.ag

bb.gr:                                            ; preds = %bb.gf
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(144) %i.tk, ptr noundef nonnull align 8 dereferenceable(144) %i.am, i64 144, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.am)
  invoke fastcc void @"_ZN4core3ptr42drop_in_place$LT$rhai..ast..stmt..Stmt$GT$17h8c7cea9300790c9cE"(ptr noalias noundef align 8 dereferenceable(16) %0)
          to label %bb.gt unwind label %bb.gs

bb.gs:                                            ; preds = %bb.gr
  %i.tu = landingpad { ptr, i32 }
          cleanup
  store i8 9, ptr %0, align 8
  store ptr %i.tk, ptr %i.dn, align 8
  br label %.body637

bb.gt:                                            ; preds = %bb.gr
  store i8 9, ptr %0, align 8
  store ptr %i.tk, ptr %i.dn, align 8
  br label %bb.gp

bb.gu:                                            ; preds = %.lr.ph, %.critedge
  %.sroa.0550.11160 = phi ptr [ %.sroa.0550.11158, %.lr.ph ], [ %.sroa.0550.1, %.critedge ] ; 3 uses
  %.sroa.0550.01159 = phi ptr [ %.sink10.i.i, %.lr.ph ], [ %.sroa.0550.11160, %.critedge ] ; 13 uses
  tail call fastcc void @_ZN4rhai9optimizer13optimize_expr17haeffafea56131100E(ptr noalias noundef align 8 dereferenceable(16) %.sroa.0550.01159, ptr noalias noundef align 8 dereferenceable(336) %1, i1 noundef zeroext false)
  %i.tv = getelementptr inbounds nuw i8, ptr %.sroa.0550.01159, i64 16 ; 5 uses
  tail call fastcc void @_ZN4rhai9optimizer13optimize_expr17haeffafea56131100E(ptr noalias noundef align 8 dereferenceable(16) %i.tv, ptr noalias noundef align 8 dereferenceable(336) %1, i1 noundef zeroext false)
  %i.tw = load i8, ptr %.sroa.0550.01159, align 8, !range !97, !noundef !53
  %i.tx = icmp eq i8 %i.tw, 1
  br i1 %i.tx, label %bb.if, label %.critedge

._crit_edge:                                      ; preds = %.critedge, %bb.cl
  tail call void @llvm.experimental.noalias.scope.decl(metadata !48522)
  %i.ty = getelementptr inbounds nuw i8, ptr %i.kx, i64 40
  %i.tz = getelementptr inbounds nuw i8, ptr %i.kx, i64 56 ; 4 uses
  %i.ua = load i64, ptr %i.tz, align 8, !alias.scope !48522, !noundef !53 ; 2 uses
  %i.ub = icmp eq i64 %i.ua, 0
  br i1 %i.ub, label %"_ZN9hashbrown3map28HashMap$LT$K$C$V$C$S$C$A$GT$6retain17hefafc5957eff1790E.exit", label %.lr.ph.i

.lr.ph.i:                                         ; preds = %._crit_edge
  %i.uc = load ptr, ptr %i.la, align 8, !alias.scope !48522, !nonnull !53, !noundef !53 ; 3 uses
  %.val3.i.i = load <16 x i8>, ptr %i.uc, align 16, !noalias !48523
  %i.ud = icmp sgt <16 x i8> %.val3.i.i, splat (i8 -1)
  %i.ue = bitcast <16 x i1> %i.ud to i16
  %i.uf = getelementptr inbounds nuw i8, ptr %i.uc, i64 16
  %i.ug = getelementptr inbounds nuw i8, ptr %1, i64 328 ; 3 uses
  %i.uh = getelementptr inbounds nuw i8, ptr %i.kx, i64 48 ; 2 uses
  br label %bb.gv

bb.gv:                                            ; preds = %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$5erase17h7166d8547db04975E.exit.i", %.lr.ph.i
  %.sroa.1013.047.i = phi i64 [ %i.ua, %.lr.ph.i ], [ %i.ut, %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$5erase17h7166d8547db04975E.exit.i" ]
  %.sroa.812.046.i = phi i16 [ %i.ue, %.lr.ph.i ], [ %i.uq, %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$5erase17h7166d8547db04975E.exit.i" ] ; 2 uses
  %.sroa.011.045.i = phi ptr [ %i.uc, %.lr.ph.i ], [ %.sroa.011.1.i, %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$5erase17h7166d8547db04975E.exit.i" ] ; 2 uses
  %.sroa.6.044.i = phi ptr [ %i.uf, %.lr.ph.i ], [ %.sroa.6.1.i, %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$5erase17h7166d8547db04975E.exit.i" ] ; 2 uses
  %.not13.i.i = icmp eq i16 %.sroa.812.046.i, 0
  br i1 %.not13.i.i, label %.lr.ph.i.i, label %"_ZN9hashbrown3raw21RawIterRange$LT$T$GT$9next_impl17h61dbbaa345429e07E.exit.i"

.lr.ph.i.i:                                       ; preds = %bb.gv, %.lr.ph.i.i
  %i.ui = phi ptr [ %i.um, %.lr.ph.i.i ], [ %.sroa.6.044.i, %bb.gv ] ; 2 uses
  %i.uj = phi ptr [ %i.ul, %.lr.ph.i.i ], [ %.sroa.011.045.i, %bb.gv ]
  %.val11.i.i = load <16 x i8>, ptr %i.ui, align 16, !noalias !48524
  %i.uk = icmp sgt <16 x i8> %.val11.i.i, splat (i8 -1)
  %i.ul = getelementptr inbounds i8, ptr %i.uj, i64 -512 ; 2 uses
  %i.um = getelementptr inbounds nuw i8, ptr %i.ui, i64 16 ; 2 uses
  %.cast.i.i = bitcast <16 x i1> %i.uk to i16     ; 2 uses
  %.not.i.i = icmp eq i16 %.cast.i.i, 0
  br i1 %.not.i.i, label %.lr.ph.i.i, label %"_ZN9hashbrown3raw21RawIterRange$LT$T$GT$9next_impl17h61dbbaa345429e07E.exit.i"

"_ZN9hashbrown3raw21RawIterRange$LT$T$GT$9next_impl17h61dbbaa345429e07E.exit.i": ; preds = %.lr.ph.i.i, %bb.gv
  %.sroa.6.1.i = phi ptr [ %.sroa.6.044.i, %bb.gv ], [ %i.um, %.lr.ph.i.i ]
  %.sroa.011.1.i = phi ptr [ %.sroa.011.045.i, %bb.gv ], [ %i.ul, %.lr.ph.i.i ] ; 2 uses
  %.lcssa.i.i = phi i16 [ %.sroa.812.046.i, %bb.gv ], [ %.cast.i.i, %.lr.ph.i.i ] ; 3 uses
  %i.un = add i16 %.lcssa.i.i, -1
  %i.uo = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i.i, i1 true)
  %i.up = zext nneg i16 %i.uo to i64
  %i.uq = and i16 %i.un, %.lcssa.i.i
  %i.ur = sub nsw i64 0, %i.up
  %i.us = getelementptr inbounds [32 x i8], ptr %.sroa.011.1.i, i64 %i.ur ; 4 uses
  %i.ut = add i64 %.sroa.1013.047.i, -1           ; 2 uses
  %i.uu = getelementptr inbounds i8, ptr %i.us, i64 -24 ; 5 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !48525)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !48526)
  %i.uv = getelementptr i8, ptr %i.us, i64 -8     ; 8 uses
  %i.uw = load i64, ptr %i.uv, align 8, !alias.scope !48527, !noalias !48528, !noundef !53 ; 3 uses
  %i.ux = icmp ugt i64 %i.uw, 2
  %i.uy = getelementptr inbounds i8, ptr %i.us, i64 -16 ; 6 uses
  %i.uz = load i64, ptr %i.uy, align 8, !alias.scope !48527, !noalias !48528
  %.sink10.i.i.i.i = select i1 %i.ux, i64 %i.uz, i64 %i.uw ; 3 uses
  %.not38.i.i.i = icmp eq i64 %.sink10.i.i.i.i, 0
  br i1 %.not38.i.i.i, label %._crit_edge.i.i.i, label %.lr.ph.i.i.i

._crit_edge.loopexit.i.i.i:                       ; preds = %bb.ha
  %.pre.i.i.i = load i64, ptr %i.uv, align 8, !alias.scope !48529, !noalias !48528
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %._crit_edge.loopexit.i.i.i, %"_ZN9hashbrown3raw21RawIterRange$LT$T$GT$9next_impl17h61dbbaa345429e07E.exit.i"
  %i.va = phi i64 [ %i.uw, %"_ZN9hashbrown3raw21RawIterRange$LT$T$GT$9next_impl17h61dbbaa345429e07E.exit.i" ], [ %.pre.i.i.i, %._crit_edge.loopexit.i.i.i ] ; 2 uses
  %.sroa.0.0.lcssa.i.i.i = phi i64 [ 0, %"_ZN9hashbrown3raw21RawIterRange$LT$T$GT$9next_impl17h61dbbaa345429e07E.exit.i" ], [ %.sroa.0.1.i.i.i, %._crit_edge.loopexit.i.i.i ]
  %i.vb = sub i64 %.sink10.i.i.i.i, %.sroa.0.0.lcssa.i.i.i ; 2 uses
  %i.vc = icmp ugt i64 %i.va, 2
  %.sink9.i.i.i.i.i = select i1 %i.vc, ptr %i.uy, ptr %i.uv ; 2 uses
  %.sink9.i.promoted.i.i.i.i = load i64, ptr %.sink9.i.i.i.i.i, align 8, !alias.scope !48530, !noalias !48528
  %i.vd = icmp ult i64 %i.vb, %.sink9.i.promoted.i.i.i.i
  br i1 %i.vd, label %.lr.ph.preheader.i.i.i.i, label %"_ZN8smallvec17SmallVec$LT$A$GT$6retain17hcdbfcc907be3a1d0E.exit.i.i"

.lr.ph.preheader.i.i.i.i:                         ; preds = %._crit_edge.i.i.i
  store i64 %i.vb, ptr %.sink9.i.i.i.i.i, align 8, !alias.scope !48530, !noalias !48528
  %.pre.i9.i = load i64, ptr %i.uv, align 8, !alias.scope !48531, !noalias !48528
  br label %"_ZN8smallvec17SmallVec$LT$A$GT$6retain17hcdbfcc907be3a1d0E.exit.i.i"

.lr.ph.i.i.i:                                     ; preds = %"_ZN9hashbrown3raw21RawIterRange$LT$T$GT$9next_impl17h61dbbaa345429e07E.exit.i", %bb.ha
  %.sroa.0.037.i.i.i = phi i64 [ %.sroa.0.1.i.i.i, %bb.ha ], [ 0, %"_ZN9hashbrown3raw21RawIterRange$LT$T$GT$9next_impl17h61dbbaa345429e07E.exit.i" ] ; 4 uses
  %.sroa.05.036.i.i.i = phi i64 [ %i.ve, %bb.ha ], [ 0, %"_ZN9hashbrown3raw21RawIterRange$LT$T$GT$9next_impl17h61dbbaa345429e07E.exit.i" ] ; 5 uses
  %i.ve = add nuw i64 %.sroa.05.036.i.i.i, 1      ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !48532)
  %i.vf = load i64, ptr %i.uv, align 8, !alias.scope !48533, !noalias !48528, !noundef !53 ; 2 uses
  %i.vg = icmp ugt i64 %i.vf, 2                   ; 2 uses
  %.val.i.i.i.i = load i64, ptr %i.uy, align 8, !alias.scope !48534, !noalias !48528
  %i.vh = select i1 %i.vg, i64 %.val.i.i.i.i, i64 %i.vf ; 4 uses
  %i.vi = icmp ult i64 %.sroa.05.036.i.i.i, %i.vh
  br i1 %i.vi, label %"_ZN83_$LT$smallvec..SmallVec$LT$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h37f72b7ac85b89f0E.exit.i.i.i", label %bb.gw

bb.gw:                                            ; preds = %.lr.ph.i.i.i
  tail call void @_ZN4core9panicking18panic_bounds_check17hbc09f5d79f1a5789E(i64 noundef %.sroa.05.036.i.i.i, i64 noundef %i.vh, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @3268) #70, !noalias !48535
  unreachable

"_ZN83_$LT$smallvec..SmallVec$LT$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h37f72b7ac85b89f0E.exit.i.i.i": ; preds = %.lr.ph.i.i.i
  %i.vj = load ptr, ptr %i.uu, align 8, !alias.scope !48533, !noalias !48528, !nonnull !53
  %.sink10.i.i.i.i.i = select i1 %i.vg, ptr %i.vj, ptr %i.uu ; 2 uses
  %i.vk = getelementptr inbounds nuw [8 x i8], ptr %.sink10.i.i.i.i.i, i64 %.sroa.05.036.i.i.i ; 2 uses
  %.val12.i.i.i = load i64, ptr %i.vk, align 8, !noalias !48536, !noundef !53 ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !48537)
  %i.vl = load i64, ptr %i.lc, align 8, !alias.scope !48538, !noalias !48539, !noundef !53 ; 2 uses
  %i.vm = icmp ugt i64 %i.vl, 5                   ; 2 uses
  %i.vn = load i64, ptr %i.lg, align 8, !alias.scope !48538, !noalias !48539
  %.sink10.i.i.i.i.i.i = select i1 %i.vm, i64 %i.vn, i64 %i.vl ; 2 uses
  %i.vo = icmp ult i64 %.val12.i.i.i, %.sink10.i.i.i.i.i.i
  br i1 %i.vo, label %"_ZN80_$LT$smallvec..SmallVec$LT$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17heb9dc14152084f81E.exit.i.i.i.i", label %bb.gx

bb.gx:                                            ; preds = %"_ZN83_$LT$smallvec..SmallVec$LT$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h37f72b7ac85b89f0E.exit.i.i.i"
  tail call void @_ZN4core9panicking18panic_bounds_check17hbc09f5d79f1a5789E(i64 noundef %.val12.i.i.i, i64 noundef %.sink10.i.i.i.i.i.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @2233) #70, !noalias !48540
  unreachable

"_ZN80_$LT$smallvec..SmallVec$LT$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17heb9dc14152084f81E.exit.i.i.i.i": ; preds = %"_ZN83_$LT$smallvec..SmallVec$LT$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h37f72b7ac85b89f0E.exit.i.i.i"
  %i.vp = load ptr, ptr %i.kz, align 8, !alias.scope !48538, !noalias !48539, !nonnull !53
  %.sink11.i.i.i.i.i.i = select i1 %i.vm, ptr %i.vp, ptr %i.kz
  %i.vq = getelementptr inbounds nuw [32 x i8], ptr %.sink11.i.i.i.i.i.i, i64 %.val12.i.i.i ; 2 uses
  %i.vr = load i8, ptr %i.vq, align 8, !range !97, !noalias !48539, !noundef !53
  %i.vs = icmp ne i8 %i.vr, 1
  %i.vt = getelementptr inbounds nuw i8, ptr %i.vq, i64 1
  %i.vu = load i8, ptr %i.vt, align 1, !range !55, !noalias !48539
  %i.vv = trunc nuw i8 %i.vu to i1
  %or.cond.not.i.i.i.i = select i1 %i.vs, i1 true, i1 %i.vv
  br i1 %or.cond.not.i.i.i.i, label %bb.gz, label %bb.gy

bb.gy:                                            ; preds = %"_ZN80_$LT$smallvec..SmallVec$LT$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17heb9dc14152084f81E.exit.i.i.i.i"
  store i8 1, ptr %i.ug, align 8, !noalias !48539
  %i.vw = add i64 %.sroa.0.037.i.i.i, 1
  br label %bb.ha

bb.gz:                                            ; preds = %"_ZN80_$LT$smallvec..SmallVec$LT$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17heb9dc14152084f81E.exit.i.i.i.i"
  %.not.i.i.i = icmp eq i64 %.sroa.0.037.i.i.i, 0
  br i1 %.not.i.i.i, label %bb.ha, label %bb.hb

bb.ha:                                            ; preds = %bb.hd, %bb.gz, %bb.gy
  %.sroa.0.1.i.i.i = phi i64 [ %.sroa.0.037.i.i.i, %bb.hd ], [ 0, %bb.gz ], [ %i.vw, %bb.gy ] ; 2 uses
  %exitcond.not.i.i.i = icmp eq i64 %i.ve, %.sink10.i.i.i.i
  br i1 %exitcond.not.i.i.i, label %._crit_edge.loopexit.i.i.i, label %.lr.ph.i.i.i

bb.hb:                                            ; preds = %bb.gz
  %i.vx = sub i64 %.sroa.05.036.i.i.i, %.sroa.0.037.i.i.i ; 3 uses
  %i.vy = icmp ult i64 %i.vx, %i.vh
  br i1 %i.vy, label %bb.hd, label %bb.hc

bb.hc:                                            ; preds = %bb.hb
  tail call void @_ZN4core9panicking18panic_bounds_check17hbc09f5d79f1a5789E(i64 noundef %i.vx, i64 noundef %i.vh, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @3269) #70, !noalias !48539
  unreachable

bb.hd:                                            ; preds = %bb.hb
  %i.vz = getelementptr inbounds nuw [8 x i8], ptr %.sink10.i.i.i.i.i, i64 %i.vx ; 2 uses
  %.sroa.0.0.copyload.i.i.i.i = load i64, ptr %i.vz, align 8, !noalias !48536
  store i64 %.val12.i.i.i, ptr %i.vz, align 8, !noalias !48536
  store i64 %.sroa.0.0.copyload.i.i.i.i, ptr %i.vk, align 8, !noalias !48536
  br label %bb.ha

"_ZN8smallvec17SmallVec$LT$A$GT$6retain17hcdbfcc907be3a1d0E.exit.i.i": ; preds = %.lr.ph.preheader.i.i.i.i, %._crit_edge.i.i.i
  %i.wa = phi i64 [ %i.va, %._crit_edge.i.i.i ], [ %.pre.i9.i, %.lr.ph.preheader.i.i.i.i ] ; 7 uses
  %i.wb = icmp ugt i64 %i.wa, 2                   ; 3 uses
  %i.wc = load ptr, ptr %i.uu, align 8, !alias.scope !48531, !noalias !48528, !nonnull !53
  %i.wd = load i64, ptr %i.uy, align 8, !alias.scope !48531, !noalias !48528 ; 6 uses
  %.sink11.i.i.i = select i1 %i.wb, ptr %i.wc, ptr %i.uu ; 3 uses
  %.sink10.i.i.i = select i1 %i.wb, i64 %i.wd, i64 %i.wa ; 4 uses
  %.idx.i.i = shl nuw nsw i64 %.sink10.i.i.i, 3
  %i.we = getelementptr inbounds nuw i8, ptr %.sink11.i.i.i, i64 %.idx.i.i ; 2 uses
  %i.wf = icmp eq i64 %.sink10.i.i.i, 0
  br i1 %i.wf, label %"_ZN8smallvec17SmallVec$LT$A$GT$8truncate17h8b21cfd86deefa19E.exit.i.i", label %.lr.ph.i3.i.i

.lr.ph.i3.i.i:                                    ; preds = %"_ZN8smallvec17SmallVec$LT$A$GT$6retain17hcdbfcc907be3a1d0E.exit.i.i"
  %i.wg = load i64, ptr %i.lc, align 8, !alias.scope !48541, !noalias !48542, !noundef !53 ; 3 uses
  %i.wh = icmp ugt i64 %i.wg, 5
  %i.wi = load i64, ptr %i.lg, align 8, !alias.scope !48541, !noalias !48542 ; 2 uses
  br i1 %i.wh, label %.lr.ph.split.us.i.i.i, label %.lr.ph.split.i.i.i

.lr.ph.split.us.i.i.i:                            ; preds = %.lr.ph.i3.i.i, %bb.he
  %.sroa.02.016.us.i.i.i = phi i64 [ %i.wt, %bb.he ], [ 0, %.lr.ph.i3.i.i ] ; 2 uses
  %i.wj = phi ptr [ %i.wk, %bb.he ], [ %.sink11.i.i.i, %.lr.ph.i3.i.i ] ; 2 uses
  %i.wk = getelementptr inbounds nuw i8, ptr %i.wj, i64 8 ; 2 uses
  %.val8.us.i.i.i = load i64, ptr %i.wj, align 8, !noalias !48543, !noundef !53 ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !48544)
  %i.wl = icmp ult i64 %.val8.us.i.i.i, %i.wi
  br i1 %i.wl, label %"_ZN4rhai9optimizer13optimize_stmt28_$u7b$$u7b$closure$u7d$$u7d$28_$u7b$$u7b$closure$u7d$$u7d$17hfd043b4ff0032c55E.exit.us.i.i.i", label %.split.us.i.i.i

"_ZN4rhai9optimizer13optimize_stmt28_$u7b$$u7b$closure$u7d$$u7d$28_$u7b$$u7b$closure$u7d$$u7d$17hfd043b4ff0032c55E.exit.us.i.i.i": ; preds = %.lr.ph.split.us.i.i.i
  %i.wm = load ptr, ptr %i.kz, align 8, !alias.scope !48541, !noalias !48542, !nonnull !53
  %i.wn = getelementptr inbounds nuw [32 x i8], ptr %i.wm, i64 %.val8.us.i.i.i ; 2 uses
  %i.wo = load i8, ptr %i.wn, align 8, !range !97, !noalias !48542, !noundef !53
  %i.wp = icmp eq i8 %i.wo, 1
  %i.wq = getelementptr inbounds nuw i8, ptr %i.wn, i64 1
  %i.wr = load i8, ptr %i.wq, align 1, !range !55, !noalias !48542
  %i.ws = trunc nuw i8 %i.wr to i1
  %.sroa.0.0.i9.us.i.i.i = select i1 %i.wp, i1 %i.ws, i1 false
  br i1 %.sroa.0.0.i9.us.i.i.i, label %.loopexit.i.i, label %bb.he

bb.he:                                            ; preds = %"_ZN4rhai9optimizer13optimize_stmt28_$u7b$$u7b$closure$u7d$$u7d$28_$u7b$$u7b$closure$u7d$$u7d$17hfd043b4ff0032c55E.exit.us.i.i.i"
  %i.wt = add nuw nsw i64 %.sroa.02.016.us.i.i.i, 1
  %i.wu = icmp eq ptr %i.wk, %i.we
  br i1 %i.wu, label %"_ZN8smallvec17SmallVec$LT$A$GT$8truncate17h8b21cfd86deefa19E.exit.i.i", label %.lr.ph.split.us.i.i.i

.lr.ph.split.i.i.i:                               ; preds = %.lr.ph.i3.i.i, %bb.hf
  %.sroa.02.016.i.i.i = phi i64 [ %i.xe, %bb.hf ], [ 0, %.lr.ph.i3.i.i ] ; 2 uses
  %i.wv = phi ptr [ %i.ww, %bb.hf ], [ %.sink11.i.i.i, %.lr.ph.i3.i.i ] ; 2 uses
  %i.ww = getelementptr inbounds nuw i8, ptr %i.wv, i64 8 ; 2 uses
  %.val8.i.i.i = load i64, ptr %i.wv, align 8, !noalias !48543, !noundef !53 ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !48544)
  %i.wx = icmp ult i64 %.val8.i.i.i, %i.wg
  br i1 %i.wx, label %"_ZN4rhai9optimizer13optimize_stmt28_$u7b$$u7b$closure$u7d$$u7d$28_$u7b$$u7b$closure$u7d$$u7d$17hfd043b4ff0032c55E.exit.i.i.i", label %.split.us.i.i.i

.split.us.i.i.i:                                  ; preds = %.lr.ph.split.i.i.i, %.lr.ph.split.us.i.i.i
  %.sink10.i.i.i.i4.i.i = phi i64 [ %i.wi, %.lr.ph.split.us.i.i.i ], [ %i.wg, %.lr.ph.split.i.i.i ]
  %.us-phi19.i.i.i = phi i64 [ %.val8.us.i.i.i, %.lr.ph.split.us.i.i.i ], [ %.val8.i.i.i, %.lr.ph.split.i.i.i ]
  tail call void @_ZN4core9panicking18panic_bounds_check17hbc09f5d79f1a5789E(i64 noundef %.us-phi19.i.i.i, i64 noundef %.sink10.i.i.i.i4.i.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @2234) #70, !noalias !48545
  unreachable

"_ZN4rhai9optimizer13optimize_stmt28_$u7b$$u7b$closure$u7d$$u7d$28_$u7b$$u7b$closure$u7d$$u7d$17hfd043b4ff0032c55E.exit.i.i.i": ; preds = %.lr.ph.split.i.i.i
  %i.wy = getelementptr inbounds nuw [32 x i8], ptr %i.kz, i64 %.val8.i.i.i ; 2 uses
  %i.wz = load i8, ptr %i.wy, align 8, !range !97, !noalias !48542, !noundef !53
  %i.xa = icmp eq i8 %i.wz, 1
  %i.xb = getelementptr inbounds nuw i8, ptr %i.wy, i64 1
  %i.xc = load i8, ptr %i.xb, align 1, !range !55, !noalias !48542
  %i.xd = trunc nuw i8 %i.xc to i1
  %.sroa.0.0.i9.i.i.i = select i1 %i.xa, i1 %i.xd, i1 false
  br i1 %.sroa.0.0.i9.i.i.i, label %.loopexit.i.i, label %bb.hf

bb.hf:                                            ; preds = %"_ZN4rhai9optimizer13optimize_stmt28_$u7b$$u7b$closure$u7d$$u7d$28_$u7b$$u7b$closure$u7d$$u7d$17hfd043b4ff0032c55E.exit.i.i.i"
  %i.xe = add nuw nsw i64 %.sroa.02.016.i.i.i, 1
  %i.xf = icmp eq ptr %i.ww, %i.we
  br i1 %i.xf, label %"_ZN8smallvec17SmallVec$LT$A$GT$8truncate17h8b21cfd86deefa19E.exit.i.i", label %.lr.ph.split.i.i.i

.loopexit.i.i:                                    ; preds = %"_ZN4rhai9optimizer13optimize_stmt28_$u7b$$u7b$closure$u7d$$u7d$28_$u7b$$u7b$closure$u7d$$u7d$17hfd043b4ff0032c55E.exit.i.i.i", %"_ZN4rhai9optimizer13optimize_stmt28_$u7b$$u7b$closure$u7d$$u7d$28_$u7b$$u7b$closure$u7d$$u7d$17hfd043b4ff0032c55E.exit.us.i.i.i"
  %.us-phi25.i.i.i = phi i64 [ %.sroa.02.016.us.i.i.i, %"_ZN4rhai9optimizer13optimize_stmt28_$u7b$$u7b$closure$u7d$$u7d$28_$u7b$$u7b$closure$u7d$$u7d$17hfd043b4ff0032c55E.exit.us.i.i.i" ], [ %.sroa.02.016.i.i.i, %"_ZN4rhai9optimizer13optimize_stmt28_$u7b$$u7b$closure$u7d$$u7d$28_$u7b$$u7b$closure$u7d$$u7d$17hfd043b4ff0032c55E.exit.i.i.i" ] ; 2 uses
  %i.xg = icmp ult i64 %.us-phi25.i.i.i, %.sink10.i.i.i
  tail call void @llvm.assume(i1 %i.xg)
  %i.xh = add nuw i64 %.us-phi25.i.i.i, 1         ; 3 uses
  %i.xi = icmp ult i64 %i.xh, %.sink10.i.i.i
  br i1 %i.xi, label %bb.hg, label %"_ZN8smallvec17SmallVec$LT$A$GT$8truncate17h8b21cfd86deefa19E.exit.i.i"

"_ZN8smallvec17SmallVec$LT$A$GT$8truncate17h8b21cfd86deefa19E.exit.i.i": ; preds = %bb.hf, %bb.he, %.lr.ph.preheader.i.i.i, %bb.hg, %.loopexit.i.i, %"_ZN8smallvec17SmallVec$LT$A$GT$6retain17hcdbfcc907be3a1d0E.exit.i.i"
  %i.xj = phi i64 [ %i.wd, %bb.he ], [ %i.wd, %.loopexit.i.i ], [ %i.wd, %"_ZN8smallvec17SmallVec$LT$A$GT$6retain17hcdbfcc907be3a1d0E.exit.i.i" ], [ %.pre53.i.i, %.lr.ph.preheader.i.i.i ], [ %i.wd, %bb.hg ], [ %i.wd, %bb.hf ]
  %i.xk = phi i64 [ %i.wa, %bb.he ], [ %i.wa, %.loopexit.i.i ], [ %i.wa, %"_ZN8smallvec17SmallVec$LT$A$GT$6retain17hcdbfcc907be3a1d0E.exit.i.i" ], [ %.pre52.i.i, %.lr.ph.preheader.i.i.i ], [ %i.wa, %bb.hg ], [ %i.wa, %bb.hf ] ; 2 uses
  %i.xl = icmp ugt i64 %i.xk, 2
  %.sink10.i9.i.i = select i1 %i.xl, i64 %i.xj, i64 %i.xk
  %.not.i775 = icmp eq i64 %.sink10.i9.i.i, 0
  br i1 %.not.i775, label %bb.hh, label %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$5erase17h7166d8547db04975E.exit.i"

bb.hg:                                            ; preds = %.loopexit.i.i
  store i8 1, ptr %i.ug, align 8, !noalias !48546
  %.sink9.i.i.i.i = select i1 %i.wb, ptr %i.uy, ptr %i.uv ; 2 uses
  %.sink9.i.promoted.i.i.i = load i64, ptr %.sink9.i.i.i.i, align 8, !alias.scope !48547, !noalias !48528
  %i.xm = icmp ult i64 %i.xh, %.sink9.i.promoted.i.i.i
  br i1 %i.xm, label %.lr.ph.preheader.i.i.i, label %"_ZN8smallvec17SmallVec$LT$A$GT$8truncate17h8b21cfd86deefa19E.exit.i.i"

.lr.ph.preheader.i.i.i:                           ; preds = %bb.hg
  store i64 %i.xh, ptr %.sink9.i.i.i.i, align 8, !alias.scope !48547, !noalias !48528
  %.pre52.i.i = load i64, ptr %i.uv, align 8, !alias.scope !48548, !noalias !48528
  %.pre53.i.i = load i64, ptr %i.uy, align 8, !alias.scope !48548, !noalias !48528
  br label %"_ZN8smallvec17SmallVec$LT$A$GT$8truncate17h8b21cfd86deefa19E.exit.i.i"

bb.hh:                                            ; preds = %"_ZN8smallvec17SmallVec$LT$A$GT$8truncate17h8b21cfd86deefa19E.exit.i.i"
  store i8 1, ptr %i.ug, align 8, !noalias !48546
  tail call void @llvm.experimental.noalias.scope.decl(metadata !48549)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !48550)
  %i.xn = load ptr, ptr %i.la, align 8, !alias.scope !48551, !nonnull !53, !noundef !53 ; 3 uses
  %i.xo = ptrtoint ptr %i.xn to i64
  %i.xp = ptrtoint ptr %i.us to i64
  %i.xq = sub i64 %i.xo, %i.xp
  %i.xr = ashr exact i64 %i.xq, 5                 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !48552)
  %i.xs = add nsw i64 %i.xr, -16
  %i.xt = load i64, ptr %i.ty, align 8, !alias.scope !48553, !noundef !53
  %i.xu = and i64 %i.xs, %i.xt
  %i.xv = getelementptr inbounds nuw i8, ptr %i.xn, i64 %i.xu ; 2 uses
  %.sroa.0.0.copyload.i24.i.i.i.i = load <16 x i8>, ptr %i.xv, align 1, !noalias !48554
  %i.xw = icmp eq <16 x i8> %.sroa.0.0.copyload.i24.i.i.i.i, splat (i8 -1)
  %i.xx = bitcast <16 x i1> %i.xw to i16
  %i.xy = getelementptr inbounds nuw i8, ptr %i.xn, i64 %i.xr ; 2 uses
  %.sroa.0.0.copyload.i825.i.i.i.i = load <16 x i8>, ptr %i.xy, align 1, !noalias !48555
  %i.xz = icmp eq <16 x i8> %.sroa.0.0.copyload.i825.i.i.i.i, splat (i8 -1)
  %i.ya = bitcast <16 x i1> %i.xz to i16
  %i.yb = tail call range(i16 0, 17) i16 @llvm.ctlz.i16(i16 %i.xx, i1 false)
  %i.yc = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.ya, i1 false)
  %narrow.i.i.i.i = add nuw nsw i16 %i.yc, %i.yb
  %i.yd = icmp samesign ugt i16 %narrow.i.i.i.i, 15
  br i1 %i.yd, label %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$13erase_no_drop17h8b08c688ead20d6aE.exit.i.i", label %bb.hi

bb.hi:                                            ; preds = %bb.hh
  %i.ye = load i64, ptr %i.uh, align 8, !alias.scope !48553, !noundef !53
  %i.yf = add i64 %i.ye, 1
  store i64 %i.yf, ptr %i.uh, align 8, !alias.scope !48553
  br label %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$13erase_no_drop17h8b08c688ead20d6aE.exit.i.i"

"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$13erase_no_drop17h8b08c688ead20d6aE.exit.i.i": ; preds = %bb.hi, %bb.hh
  %.sroa.0.0.i.i.i.i = phi i8 [ -1, %bb.hi ], [ -128, %bb.hh ] ; 2 uses
  store i8 %.sroa.0.0.i.i.i.i, ptr %i.xy, align 1, !noalias !48556
  %i.yg = getelementptr i8, ptr %i.xv, i64 16
  store i8 %.sroa.0.0.i.i.i.i, ptr %i.yg, align 1, !noalias !48556
  %i.yh = load i64, ptr %i.tz, align 8, !alias.scope !48553, !noundef !53
  %i.yi = add i64 %i.yh, -1
  store i64 %i.yi, ptr %i.tz, align 8, !alias.scope !48553
  %.val1.i.i = load i64, ptr %i.uv, align 8, !alias.scope !48557, !noalias !48558, !noundef !53 ; 2 uses
  %i.yj = icmp ugt i64 %.val1.i.i, 2
  br i1 %i.yj, label %"_ZN4core3ptr49drop_in_place$LT$alloc..vec..Vec$LT$usize$GT$$GT$17h5db898eceaa0e125E.exit.i.i.i.i.i", label %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$5erase17h7166d8547db04975E.exit.i"

"_ZN4core3ptr49drop_in_place$LT$alloc..vec..Vec$LT$usize$GT$$GT$17h5db898eceaa0e125E.exit.i.i.i.i.i": ; preds = %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$13erase_no_drop17h8b08c688ead20d6aE.exit.i.i"
  %.val.i.i = load ptr, ptr %i.uu, align 8, !noalias !48558, !nonnull !53, !noundef !53
  %i.yk = shl nuw i64 %.val1.i.i, 3
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i, i64 noundef %i.yk, i64 noundef range(i64 1, -9223372036854775807) 8) #71, !noalias !48559
  br label %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$5erase17h7166d8547db04975E.exit.i"

"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$5erase17h7166d8547db04975E.exit.i": ; preds = %"_ZN4core3ptr49drop_in_place$LT$alloc..vec..Vec$LT$usize$GT$$GT$17h5db898eceaa0e125E.exit.i.i.i.i.i", %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$13erase_no_drop17h8b08c688ead20d6aE.exit.i.i", %"_ZN8smallvec17SmallVec$LT$A$GT$8truncate17h8b21cfd86deefa19E.exit.i.i"
  %i.yl = icmp eq i64 %i.ut, 0
  br i1 %i.yl, label %"_ZN9hashbrown3map28HashMap$LT$K$C$V$C$S$C$A$GT$6retain17hefafc5957eff1790E.exit", label %bb.gv

"_ZN9hashbrown3map28HashMap$LT$K$C$V$C$S$C$A$GT$6retain17hefafc5957eff1790E.exit": ; preds = %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$5erase17h7166d8547db04975E.exit.i", %._crit_edge
  tail call void @llvm.experimental.noalias.scope.decl(metadata !48560)
  %i.ym = getelementptr inbounds nuw i8, ptr %i.kx, i64 328 ; 5 uses
  %i.yn = load i64, ptr %i.ym, align 8, !alias.scope !48561, !noundef !53 ; 3 uses
  %i.yo = icmp ugt i64 %i.yn, 3
  %i.yp = getelementptr inbounds nuw i8, ptr %i.kx, i64 240 ; 4 uses
  %i.yq = load i64, ptr %i.yp, align 8, !alias.scope !48561
  %.sink10.i.i776 = select i1 %i.yo, i64 %i.yq, i64 %i.yn ; 3 uses
  %.not38.i = icmp eq i64 %.sink10.i.i776, 0
  br i1 %.not38.i, label %._crit_edge.i, label %.lr.ph.i777

.lr.ph.i777:                                      ; preds = %"_ZN9hashbrown3map28HashMap$LT$K$C$V$C$S$C$A$GT$6retain17hefafc5957eff1790E.exit"
  %i.yr = getelementptr inbounds nuw i8, ptr %1, i64 328
  br label %bb.hj

._crit_edge.loopexit.i:                           ; preds = %bb.ho
  %.pre.i = load i64, ptr %i.ym, align 8, !alias.scope !48562
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %._crit_edge.loopexit.i, %"_ZN9hashbrown3map28HashMap$LT$K$C$V$C$S$C$A$GT$6retain17hefafc5957eff1790E.exit"
  %i.ys = phi i64 [ %i.yn, %"_ZN9hashbrown3map28HashMap$LT$K$C$V$C$S$C$A$GT$6retain17hefafc5957eff1790E.exit" ], [ %.pre.i, %._crit_edge.loopexit.i ]
  %.sroa.0.0.lcssa.i = phi i64 [ 0, %"_ZN9hashbrown3map28HashMap$LT$K$C$V$C$S$C$A$GT$6retain17hefafc5957eff1790E.exit" ], [ %.sroa.0.1.i, %._crit_edge.loopexit.i ]
  %i.yt = sub i64 %.sink10.i.i776, %.sroa.0.0.lcssa.i ; 2 uses
  %i.yu = icmp ugt i64 %i.ys, 3
  %.sink9.i.i.i = select i1 %i.yu, ptr %i.yp, ptr %i.ym ; 2 uses
  %.sink9.i.promoted.i.i = load i64, ptr %.sink9.i.i.i, align 8, !alias.scope !48563
  %i.yv = icmp ult i64 %i.yt, %.sink9.i.promoted.i.i
  br i1 %i.yv, label %.lr.ph.preheader.i.i, label %"_ZN8smallvec17SmallVec$LT$A$GT$6retain17h243b7f1b0668a4ecE.exit"

.lr.ph.preheader.i.i:                             ; preds = %._crit_edge.i
  store i64 %i.yt, ptr %.sink9.i.i.i, align 8, !alias.scope !48563
  br label %"_ZN8smallvec17SmallVec$LT$A$GT$6retain17h243b7f1b0668a4ecE.exit"

bb.hj:                                            ; preds = %bb.ho, %.lr.ph.i777
  %.sroa.0.037.i = phi i64 [ 0, %.lr.ph.i777 ], [ %.sroa.0.1.i, %bb.ho ] ; 4 uses
  %.sroa.05.036.i = phi i64 [ 0, %.lr.ph.i777 ], [ %i.yw, %bb.ho ] ; 5 uses
  %i.yw = add nuw i64 %.sroa.05.036.i, 1          ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !48564)
  %i.yx = load i64, ptr %i.ym, align 8, !alias.scope !48565, !noundef !53 ; 2 uses
  %i.yy = icmp ugt i64 %i.yx, 3                   ; 2 uses
  %.val.i.i778 = load i64, ptr %i.yp, align 8, !alias.scope !48566
  %i.yz = select i1 %i.yy, i64 %.val.i.i778, i64 %i.yx ; 4 uses
  %i.za = icmp ult i64 %.sroa.05.036.i, %i.yz
  br i1 %i.za, label %"_ZN83_$LT$smallvec..SmallVec$LT$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h31515d33253697f3E.exit.i", label %bb.hk

bb.hk:                                            ; preds = %bb.hj
  tail call void @_ZN4core9panicking18panic_bounds_check17hbc09f5d79f1a5789E(i64 noundef %.sroa.05.036.i, i64 noundef %i.yz, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @3268) #70, !noalias !48567
  unreachable

"_ZN83_$LT$smallvec..SmallVec$LT$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h31515d33253697f3E.exit.i": ; preds = %bb.hj
  %i.zb = load ptr, ptr %i.lb, align 8, !alias.scope !48565, !nonnull !53
  %.sink10.i.i.i779 = select i1 %i.yy, ptr %i.zb, ptr %i.lb ; 2 uses
  %i.zc = getelementptr inbounds nuw [32 x i8], ptr %.sink10.i.i.i779, i64 %.sroa.05.036.i ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !48568)
  %i.zd = getelementptr inbounds nuw i8, ptr %i.zc, i64 24
  %i.ze = load i8, ptr %i.zd, align 8, !range !108, !alias.scope !48568, !noalias !48569, !noundef !53
  %.not.i.i780 = icmp eq i8 %i.ze, 2
  %.sroa.04.0.idx.i.i = select i1 %.not.i.i780, i64 16, i64 0
  %.sroa.04.0.i.i = getelementptr inbounds nuw i8, ptr %i.zc, i64 %.sroa.04.0.idx.i.i
  %i.zf = load i64, ptr %.sroa.04.0.i.i, align 8, !alias.scope !48568, !noalias !48569, !noundef !53 ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !48570)
  %i.zg = load i64, ptr %i.lc, align 8, !alias.scope !48571, !noalias !48572, !noundef !53 ; 2 uses
  %i.zh = icmp ugt i64 %i.zg, 5                   ; 2 uses
  %i.zi = load i64, ptr %i.lg, align 8, !alias.scope !48571, !noalias !48572
  %.sink10.i.i.i.i781 = select i1 %i.zh, i64 %i.zi, i64 %i.zg ; 2 uses
  %i.zj = icmp ult i64 %i.zf, %.sink10.i.i.i.i781
  br i1 %i.zj, label %"_ZN80_$LT$smallvec..SmallVec$LT$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17heb9dc14152084f81E.exit.i.i", label %bb.hl

bb.hl:                                            ; preds = %"_ZN83_$LT$smallvec..SmallVec$LT$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h31515d33253697f3E.exit.i"
  tail call void @_ZN4core9panicking18panic_bounds_check17hbc09f5d79f1a5789E(i64 noundef %i.zf, i64 noundef %.sink10.i.i.i.i781, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @2231) #70, !noalias !48573
  unreachable

"_ZN80_$LT$smallvec..SmallVec$LT$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17heb9dc14152084f81E.exit.i.i": ; preds = %"_ZN83_$LT$smallvec..SmallVec$LT$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h31515d33253697f3E.exit.i"
  %i.zk = load ptr, ptr %i.kz, align 8, !alias.scope !48571, !noalias !48572, !nonnull !53
  %.sink11.i.i.i.i = select i1 %i.zh, ptr %i.zk, ptr %i.kz
  %i.zl = getelementptr inbounds nuw [32 x i8], ptr %.sink11.i.i.i.i, i64 %i.zf ; 2 uses
  %i.zm = load i8, ptr %i.zl, align 8, !range !97, !noalias !48572, !noundef !53
  %i.zn = icmp ne i8 %i.zm, 1
  %i.zo = getelementptr inbounds nuw i8, ptr %i.zl, i64 1
  %i.zp = load i8, ptr %i.zo, align 1, !range !55, !noalias !48572
  %i.zq = trunc nuw i8 %i.zp to i1
  %or.cond.not.i.i = select i1 %i.zn, i1 true, i1 %i.zq
  br i1 %or.cond.not.i.i, label %bb.hn, label %bb.hm

bb.hm:                                            ; preds = %"_ZN80_$LT$smallvec..SmallVec$LT$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17heb9dc14152084f81E.exit.i.i"
  store i8 1, ptr %i.yr, align 8, !noalias !48572
  %i.zr = add i64 %.sroa.0.037.i, 1
  br label %bb.ho

bb.hn:                                            ; preds = %"_ZN80_$LT$smallvec..SmallVec$LT$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17heb9dc14152084f81E.exit.i.i"
  %.not.i782 = icmp eq i64 %.sroa.0.037.i, 0
  br i1 %.not.i782, label %bb.ho, label %bb.hp

bb.ho:                                            ; preds = %bb.hr, %bb.hn, %bb.hm
  %.sroa.0.1.i = phi i64 [ %.sroa.0.037.i, %bb.hr ], [ 0, %bb.hn ], [ %i.zr, %bb.hm ] ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.yw, %.sink10.i.i776
  br i1 %exitcond.not.i, label %._crit_edge.loopexit.i, label %bb.hj
end_hunk_2
begin_hunk_3_@"_ZN8smallvec17SmallVec$LT$A$GT$21reserve_one_unchecked17h3d15ce580e52751fE":bb.a
  br i1 %i.i, label %bb.f, label %bb.c, !prof !64

bb.c:                                             ; preds = %bb.b
  %i.j = add nuw i64 %.sroa.02.0, 1
  %i.k = tail call fastcc { i64, i64 } @"_ZN8smallvec17SmallVec$LT$A$GT$8try_grow17h6826cbd2915f87a7E"(ptr noalias noundef align 8 dereferenceable(32) %0, i64 noundef %i.j) ; 2 uses
  %i.l = extractvalue { i64, i64 } %i.k, 0        ; 2 uses
  switch i64 %i.l, label %bb.d [
    i64 -9223372036854775807, label %_ZN8smallvec10infallible17hd7e1cfe47d8fef1dE.exit
    i64 0, label %bb.e
  ], !prof !152

bb.d:                                             ; preds = %bb.c
  %i.m = extractvalue { i64, i64 } %i.k, 1
  tail call void @_ZN5alloc5alloc18handle_alloc_error17h8f86e24af4223f3dE(i64 noundef range(i64 0, -9223372036854775806) %i.l, i64 noundef %i.m) #70
  unreachable

bb.e:                                             ; preds = %bb.c
  tail call void @_ZN4core9panicking5panic17ha264d2bb233f2b69E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @157, i64 noundef 17, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @3260) #70
  unreachable

_ZN8smallvec10infallible17hd7e1cfe47d8fef1dE.exit: ; preds = %bb.c
  ret void

bb.f:                                             ; preds = %bb.b, %bb.a
  tail call void @_ZN4core6option13expect_failed17h1729d0bd73171c50E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @157, i64 noundef 17, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @3261) #70
  unreachable
}

; Function Attrs: cold nonlazybind uwtable
define internal fastcc void @"_ZN8smallvec17SmallVec$LT$A$GT$21reserve_one_unchecked17h4aa1ab50c8db0554E"(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(104) %0) unnamed_addr #12 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.b = load i64, ptr %i.a, align 8, !alias.scope !57487, !noundef !53 ; 2 uses
  %i.c = icmp ugt i64 %i.b, 3
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load i64, ptr %i.d, align 8, !alias.scope !57487
  %.sink10.i = select i1 %i.c, i64 %i.e, i64 %i.b ; 3 uses
  %i.f = icmp eq i64 %.sink10.i, -1
  br i1 %i.f, label %bb.f, label %bb.b, !prof !64

bb.b:                                             ; preds = %bb.a
  %i.g = icmp eq i64 %.sink10.i, 0
  %i.h = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %.sink10.i, i1 true)
  %i.i = lshr i64 -1, %i.h
  %.sroa.02.0 = select i1 %i.g, i64 0, i64 %i.i   ; 2 uses
  %i.j = icmp eq i64 %.sroa.02.0, -1
  br i1 %i.j, label %bb.f, label %bb.c, !prof !64

bb.c:                                             ; preds = %bb.b
  %i.k = add nuw i64 %.sroa.02.0, 1
  %i.l = tail call fastcc { i64, i64 } @"_ZN8smallvec17SmallVec$LT$A$GT$8try_grow17h7fd4fe873fe34e88E"(ptr noalias noundef align 8 dereferenceable(104) %0, i64 noundef %i.k) ; 2 uses
  %i.m = extractvalue { i64, i64 } %i.l, 0        ; 2 uses
  switch i64 %i.m, label %bb.d [
    i64 -9223372036854775807, label %_ZN8smallvec10infallible17hd7e1cfe47d8fef1dE.exit
    i64 0, label %bb.e
  ], !prof !152

bb.d:                                             ; preds = %bb.c
  %i.n = extractvalue { i64, i64 } %i.l, 1
  tail call void @_ZN5alloc5alloc18handle_alloc_error17h8f86e24af4223f3dE(i64 noundef range(i64 0, -9223372036854775806) %i.m, i64 noundef %i.n) #70
  unreachable

bb.e:                                             ; preds = %bb.c
  tail call void @_ZN4core9panicking5panic17ha264d2bb233f2b69E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @157, i64 noundef 17, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @3260) #70
  unreachable

_ZN8smallvec10infallible17hd7e1cfe47d8fef1dE.exit: ; preds = %bb.c
  ret void

bb.f:                                             ; preds = %bb.b, %bb.a
  tail call void @_ZN4core6option13expect_failed17h1729d0bd73171c50E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @157, i64 noundef 17, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @3261) #70
  unreachable
}

; Function Attrs: cold nonlazybind uwtable
define internal fastcc void @"_ZN8smallvec17SmallVec$LT$A$GT$21reserve_one_unchecked17h63bbe9bb2dd81bc8E"(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(88) %0) unnamed_addr #12 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.b = load i64, ptr %i.a, align 8, !alias.scope !57490, !noundef !53 ; 2 uses
  %i.c = icmp ugt i64 %i.b, 5
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load i64, ptr %i.d, align 8, !alias.scope !57490
  %.sink10.i = select i1 %i.c, i64 %i.e, i64 %i.b ; 3 uses
  %i.f = icmp eq i64 %.sink10.i, -1
  br i1 %i.f, label %bb.f, label %bb.b, !prof !64

bb.b:                                             ; preds = %bb.a
  %i.g = icmp eq i64 %.sink10.i, 0
  %i.h = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %.sink10.i, i1 true)
  %i.i = lshr i64 -1, %i.h
  %.sroa.02.0 = select i1 %i.g, i64 0, i64 %i.i   ; 2 uses
  %i.j = icmp eq i64 %.sroa.02.0, -1
  br i1 %i.j, label %bb.f, label %bb.c, !prof !64

bb.c:                                             ; preds = %bb.b
  %i.k = add nuw i64 %.sroa.02.0, 1
  %i.l = tail call fastcc { i64, i64 } @"_ZN8smallvec17SmallVec$LT$A$GT$8try_grow17h190160ad49375ea4E"(ptr noalias noundef align 8 dereferenceable(88) %0, i64 noundef %i.k) ; 2 uses
  %i.m = extractvalue { i64, i64 } %i.l, 0        ; 2 uses
  switch i64 %i.m, label %bb.d [
    i64 -9223372036854775807, label %_ZN8smallvec10infallible17hd7e1cfe47d8fef1dE.exit
    i64 0, label %bb.e
  ], !prof !152

bb.d:                                             ; preds = %bb.c
  %i.n = extractvalue { i64, i64 } %i.l, 1
  tail call void @_ZN5alloc5alloc18handle_alloc_error17h8f86e24af4223f3dE(i64 noundef range(i64 0, -9223372036854775806) %i.m, i64 noundef %i.n) #70
  unreachable

bb.e:                                             ; preds = %bb.c
  tail call void @_ZN4core9panicking5panic17ha264d2bb233f2b69E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @157, i64 noundef 17, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @3260) #70
  unreachable

_ZN8smallvec10infallible17hd7e1cfe47d8fef1dE.exit: ; preds = %bb.c
  ret void

bb.f:                                             ; preds = %bb.b, %bb.a
  tail call void @_ZN4core6option13expect_failed17h1729d0bd73171c50E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @157, i64 noundef 17, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @3261) #70
  unreachable
}

; Function Attrs: cold nonlazybind uwtable
define internal fastcc void @"_ZN8smallvec17SmallVec$LT$A$GT$21reserve_one_unchecked17h682fdb4d34c47873E"(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(32) %0) unnamed_addr #12 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 3 uses
  %i.b = load i64, ptr %0, align 8, !alias.scope !57503, !noundef !53 ; 7 uses
  %i.c = icmp ugt i64 %i.b, 3                     ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.e = load ptr, ptr %i.d, align 8, !alias.scope !57503, !nonnull !53 ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.g = load i64, ptr %i.f, align 8, !alias.scope !57503
  %.sink10.i = select i1 %i.c, i64 %i.g, i64 %i.b ; 3 uses
  %i.h = icmp eq i64 %.sink10.i, -1
  br i1 %i.h, label %bb.t, label %bb.b, !prof !64

bb.b:                                             ; preds = %bb.a
  %i.i = icmp eq i64 %.sink10.i, 0
  %i.j = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %.sink10.i, i1 true)
  %i.k = lshr i64 -1, %i.j
  %.sroa.02.0 = select i1 %i.i, i64 0, i64 %i.k   ; 4 uses
  %i.l = icmp eq i64 %.sroa.02.0, -1
  br i1 %i.l, label %bb.t, label %bb.c, !prof !64

bb.c:                                             ; preds = %bb.b
  %i.m = add nuw i64 %.sroa.02.0, 1               ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !57504)
  %i.n = icmp ult i64 %i.b, 4                     ; 2 uses
  %.sink9.idx.i.i = select i1 %i.c, i64 16, i64 0
  %.sink9.i.i = getelementptr inbounds nuw i8, ptr %0, i64 %.sink9.idx.i.i
  %.sink.i.i = tail call i64 @llvm.umax.i64(i64 %i.b, i64 3) ; 2 uses
  %i.o = load i64, ptr %.sink9.i.i, align 8, !alias.scope !57504, !noundef !53 ; 5 uses
  %.not.i = icmp ult i64 %i.m, %i.o
  br i1 %.not.i, label %bb.d, label %bb.e, !prof !64

bb.d:                                             ; preds = %bb.c
  tail call void @_ZN4core9panicking5panic17ha264d2bb233f2b69E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @3270, i64 noundef 32, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @3271) #70, !noalias !57504
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.p = icmp ult i64 %.sroa.02.0, 3
  br i1 %i.p, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %.not47.i = icmp eq i64 %i.b, %i.m
  br i1 %.not47.i, label %_ZN8smallvec10infallible17hd7e1cfe47d8fef1dE.exit, label %bb.h

bb.g:                                             ; preds = %bb.e
  br i1 %i.n, label %_ZN8smallvec10infallible17hd7e1cfe47d8fef1dE.exit, label %bb.o

bb.h:                                             ; preds = %bb.f
  %i.q = shl nuw i64 %i.m, 3                      ; 4 uses
  %i.r = icmp ugt i64 %.sroa.02.0, 2305843009213693950
  br i1 %i.r, label %bb.s, label %bb.i, !prof !64

bb.i:                                             ; preds = %bb.h
  %i.s = tail call noundef zeroext i1 @_ZN4core5alloc6layout6Layout19is_size_align_valid17h26adf6c6175f55f5E(i64 noundef %i.q, i64 noundef 8), !noalias !57505
  br i1 %i.s, label %_ZN8smallvec12layout_array17h70cb490de9595decE.exit.i, label %bb.s

_ZN8smallvec12layout_array17h70cb490de9595decE.exit.i: ; preds = %bb.i
  br i1 %i.n, label %bb.l, label %bb.j

bb.j:                                             ; preds = %_ZN8smallvec12layout_array17h70cb490de9595decE.exit.i
  %i.t = shl nuw i64 %.sink.i.i, 3                ; 2 uses
  %i.u = icmp ugt i64 %i.b, 2305843009213693951
  br i1 %i.u, label %bb.s, label %bb.k, !prof !64

bb.k:                                             ; preds = %bb.j
  %i.v = tail call noundef zeroext i1 @_ZN4core5alloc6layout6Layout19is_size_align_valid17h26adf6c6175f55f5E(i64 noundef %i.t, i64 noundef 8), !noalias !57506
  br i1 %i.v, label %_ZN8smallvec12layout_array17h70cb490de9595decE.exit55.i, label %bb.s

bb.l:                                             ; preds = %_ZN8smallvec12layout_array17h70cb490de9595decE.exit.i
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #71, !noalias !57504
  %i.w = tail call noundef align 8 ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef %i.q, i64 noundef 8) #71, !noalias !57504 ; 3 uses
  %.not73.i = icmp eq ptr %i.w, null
  br i1 %.not73.i, label %bb.r, label %bb.n

_ZN8smallvec12layout_array17h70cb490de9595decE.exit55.i: ; preds = %bb.k
  %i.x = tail call noundef align 8 ptr @_RNvCskdKJRKLKjqM_7___rustc14___rust_realloc(ptr noundef nonnull %i.e, i64 noundef %i.t, i64 noundef 8, i64 noundef %i.q) #71, !noalias !57504 ; 2 uses
  %.not72.i = icmp eq ptr %i.x, null
  br i1 %.not72.i, label %bb.r, label %bb.m

bb.m:                                             ; preds = %bb.n, %_ZN8smallvec12layout_array17h70cb490de9595decE.exit55.i
  %.sroa.021.0.i = phi ptr [ %i.w, %bb.n ], [ %i.x, %_ZN8smallvec12layout_array17h70cb490de9595decE.exit55.i ]
  store ptr %.sroa.021.0.i, ptr %i.d, align 8, !alias.scope !57504
  store i64 %i.o, ptr %i.f, align 8, !alias.scope !57504
  store i64 %i.m, ptr %0, align 8, !alias.scope !57504
  br label %_ZN8smallvec10infallible17hd7e1cfe47d8fef1dE.exit

bb.n:                                             ; preds = %bb.l
  %i.y = shl nuw i64 %i.o, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.w, ptr nonnull align 8 %i.d, i64 %i.y, i1 false)
  br label %bb.m

bb.o:                                             ; preds = %bb.g
  %i.z = shl nuw i64 %i.o, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.d, ptr nonnull align 8 %i.e, i64 %i.z, i1 false)
  store i64 %i.o, ptr %0, align 8, !alias.scope !57504
  %i.aa = shl nuw i64 %.sink.i.i, 3               ; 2 uses
  %i.ab = icmp ugt i64 %i.b, 2305843009213693951
  br i1 %i.ab, label %bb.q, label %bb.p, !prof !64

bb.p:                                             ; preds = %bb.o
  %i.ac = tail call noundef zeroext i1 @_ZN4core5alloc6layout6Layout19is_size_align_valid17h26adf6c6175f55f5E(i64 noundef %i.aa, i64 noundef 8), !noalias !57507
  br i1 %i.ac, label %_ZN8smallvec10deallocate17h5e551d846ad5bc46E.exit.i, label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !57508
  store i64 0, ptr %i.a, align 8, !noalias !57508
  call void @_ZN4core6result13unwrap_failed17h0501379eaec3e720E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @429, i64 noundef 43, ptr noundef nonnull align 1 %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @431, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @3259) #70, !noalias !57508
  unreachable

_ZN8smallvec10deallocate17h5e551d846ad5bc46E.exit.i: ; preds = %bb.p
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.e, i64 noundef %i.aa, i64 noundef 8) #71, !noalias !57504
  br label %_ZN8smallvec10infallible17hd7e1cfe47d8fef1dE.exit

bb.r:                                             ; preds = %_ZN8smallvec12layout_array17h70cb490de9595decE.exit55.i, %bb.l
  tail call void @_ZN5alloc5alloc18handle_alloc_error17h8f86e24af4223f3dE(i64 noundef range(i64 0, -9223372036854775806) 8, i64 noundef %i.q) #70
  unreachable

bb.s:                                             ; preds = %bb.k, %bb.h, %bb.i, %bb.j
  tail call void @_ZN4core9panicking5panic17ha264d2bb233f2b69E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @157, i64 noundef 17, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @3260) #70
  unreachable

_ZN8smallvec10infallible17hd7e1cfe47d8fef1dE.exit: ; preds = %_ZN8smallvec10deallocate17h5e551d846ad5bc46E.exit.i, %bb.g, %bb.f, %bb.m
  ret void

bb.t:                                             ; preds = %bb.b, %bb.a
  tail call void @_ZN4core6option13expect_failed17h1729d0bd73171c50E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @157, i64 noundef 17, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @3261) #70
  unreachable
}

; Function Attrs: cold nonlazybind uwtable
define internal fastcc void @"_ZN8smallvec17SmallVec$LT$A$GT$21reserve_one_unchecked17h88278aa364161e26E"(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(56) %0) unnamed_addr #12 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 3 uses
  %i.c = load i64, ptr %i.b, align 8, !alias.scope !57521, !noundef !53 ; 8 uses
  %i.d = icmp ugt i64 %i.c, 3
  %i.e = load ptr, ptr %0, align 8, !alias.scope !57521, !nonnull !53 ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.g = load i64, ptr %i.f, align 8, !alias.scope !57521 ; 3 uses
  %.sink10.i = select i1 %i.d, i64 %i.g, i64 %i.c ; 5 uses
  %i.h = icmp eq i64 %.sink10.i, -1
  br i1 %i.h, label %bb.t, label %bb.b, !prof !64

bb.b:                                             ; preds = %bb.a
  %i.i = icmp eq i64 %.sink10.i, 0
  %i.j = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %.sink10.i, i1 true)
  %i.k = lshr i64 -1, %i.j
  %.sroa.02.0 = select i1 %i.i, i64 0, i64 %i.k   ; 4 uses
  %i.l = icmp eq i64 %.sroa.02.0, -1
  br i1 %i.l, label %bb.t, label %bb.c, !prof !64

bb.c:                                             ; preds = %bb.b
  %i.m = add nuw i64 %.sroa.02.0, 1               ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !57522)
  %i.n = icmp ult i64 %i.c, 4                     ; 2 uses
  %.sink.i.i = tail call i64 @llvm.umax.i64(i64 %i.c, i64 3) ; 2 uses
  %.not.i = icmp ult i64 %i.m, %.sink10.i
  br i1 %.not.i, label %bb.d, label %bb.e, !prof !64

bb.d:                                             ; preds = %bb.c
  tail call void @_ZN4core9panicking5panic17ha264d2bb233f2b69E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @3270, i64 noundef 32, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @3271) #70, !noalias !57522
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.o = icmp ult i64 %.sroa.02.0, 3
  br i1 %i.o, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %.not47.i = icmp eq i64 %i.c, %i.m
  br i1 %.not47.i, label %_ZN8smallvec10infallible17hd7e1cfe47d8fef1dE.exit, label %bb.h

bb.g:                                             ; preds = %bb.e
  br i1 %i.n, label %_ZN8smallvec10infallible17hd7e1cfe47d8fef1dE.exit, label %bb.o

bb.h:                                             ; preds = %bb.f
  %i.p = shl nuw i64 %i.m, 4                      ; 4 uses
  %i.q = icmp ugt i64 %.sroa.02.0, 1152921504606846974
  br i1 %i.q, label %bb.s, label %bb.i, !prof !64

bb.i:                                             ; preds = %bb.h
  %i.r = tail call noundef zeroext i1 @_ZN4core5alloc6layout6Layout19is_size_align_valid17h26adf6c6175f55f5E(i64 noundef %i.p, i64 noundef 8), !noalias !57523
  br i1 %i.r, label %_ZN8smallvec12layout_array17h20c44d2a49643c2dE.exit.i, label %bb.s

_ZN8smallvec12layout_array17h20c44d2a49643c2dE.exit.i: ; preds = %bb.i
  br i1 %i.n, label %bb.l, label %bb.j

bb.j:                                             ; preds = %_ZN8smallvec12layout_array17h20c44d2a49643c2dE.exit.i
  %i.s = shl nuw i64 %.sink.i.i, 4                ; 2 uses
  %i.t = icmp ugt i64 %i.c, 1152921504606846975
  br i1 %i.t, label %bb.s, label %bb.k, !prof !64

bb.k:                                             ; preds = %bb.j
  %i.u = tail call noundef zeroext i1 @_ZN4core5alloc6layout6Layout19is_size_align_valid17h26adf6c6175f55f5E(i64 noundef %i.s, i64 noundef 8), !noalias !57524
  br i1 %i.u, label %_ZN8smallvec12layout_array17h20c44d2a49643c2dE.exit55.i, label %bb.s

bb.l:                                             ; preds = %_ZN8smallvec12layout_array17h20c44d2a49643c2dE.exit.i
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #71, !noalias !57522
  %i.v = tail call noundef align 8 ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef %i.p, i64 noundef 8) #71, !noalias !57522 ; 3 uses
  %.not74.i = icmp eq ptr %i.v, null
  br i1 %.not74.i, label %bb.r, label %bb.n

_ZN8smallvec12layout_array17h20c44d2a49643c2dE.exit55.i: ; preds = %bb.k
  %i.w = tail call noundef align 8 ptr @_RNvCskdKJRKLKjqM_7___rustc14___rust_realloc(ptr noundef nonnull %i.e, i64 noundef %i.s, i64 noundef 8, i64 noundef %i.p) #71, !noalias !57522 ; 2 uses
  %.not73.i = icmp eq ptr %i.w, null
  br i1 %.not73.i, label %bb.r, label %bb.m

bb.m:                                             ; preds = %bb.n, %_ZN8smallvec12layout_array17h20c44d2a49643c2dE.exit55.i
  %.sroa.021.0.i = phi ptr [ %i.v, %bb.n ], [ %i.w, %_ZN8smallvec12layout_array17h20c44d2a49643c2dE.exit55.i ]
  store ptr %.sroa.021.0.i, ptr %0, align 8, !alias.scope !57522
  store i64 %.sink10.i, ptr %i.f, align 8, !alias.scope !57522
  store i64 %i.m, ptr %i.b, align 8, !alias.scope !57522
  br label %_ZN8smallvec10infallible17hd7e1cfe47d8fef1dE.exit

bb.n:                                             ; preds = %bb.l
  %i.x = shl nuw nsw i64 %i.c, 4
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.v, ptr nonnull align 8 dereferenceable(56) %0, i64 %i.x, i1 false)
  br label %bb.m

bb.o:                                             ; preds = %bb.g
  %i.y = shl nuw i64 %i.g, 4
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 dereferenceable(56) %0, ptr nonnull align 8 %i.e, i64 %i.y, i1 false)
  store i64 %i.g, ptr %i.b, align 8, !alias.scope !57522
  %i.z = shl nuw i64 %.sink.i.i, 4                ; 2 uses
  %i.aa = icmp ugt i64 %i.c, 1152921504606846975
  br i1 %i.aa, label %bb.q, label %bb.p, !prof !64

bb.p:                                             ; preds = %bb.o
  %i.ab = tail call noundef zeroext i1 @_ZN4core5alloc6layout6Layout19is_size_align_valid17h26adf6c6175f55f5E(i64 noundef %i.z, i64 noundef 8), !noalias !57525
  br i1 %i.ab, label %_ZN8smallvec10deallocate17h56b86286868a3b32E.exit.i, label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !57526
  store i64 0, ptr %i.a, align 8, !noalias !57526
  call void @_ZN4core6result13unwrap_failed17h0501379eaec3e720E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @429, i64 noundef 43, ptr noundef nonnull align 1 %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @431, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @3259) #70, !noalias !57526
  unreachable

_ZN8smallvec10deallocate17h56b86286868a3b32E.exit.i: ; preds = %bb.p
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.e, i64 noundef %i.z, i64 noundef 8) #71, !noalias !57522
  br label %_ZN8smallvec10infallible17hd7e1cfe47d8fef1dE.exit

bb.r:                                             ; preds = %_ZN8smallvec12layout_array17h20c44d2a49643c2dE.exit55.i, %bb.l
  tail call void @_ZN5alloc5alloc18handle_alloc_error17h8f86e24af4223f3dE(i64 noundef range(i64 0, -9223372036854775806) 8, i64 noundef %i.p) #70
  unreachable

bb.s:                                             ; preds = %bb.k, %bb.h, %bb.i, %bb.j
  tail call void @_ZN4core9panicking5panic17ha264d2bb233f2b69E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @157, i64 noundef 17, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @3260) #70
  unreachable

_ZN8smallvec10infallible17hd7e1cfe47d8fef1dE.exit: ; preds = %_ZN8smallvec10deallocate17h56b86286868a3b32E.exit.i, %bb.g, %bb.f, %bb.m
  ret void

bb.t:                                             ; preds = %bb.b, %bb.a
  tail call void @_ZN4core6option13expect_failed17h1729d0bd73171c50E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @157, i64 noundef 17, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @3261) #70
  unreachable
}

; Function Attrs: cold nonlazybind uwtable
define internal fastcc void @"_ZN8smallvec17SmallVec$LT$A$GT$21reserve_one_unchecked17h8b9c761871660c57E"(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(88) %0) unnamed_addr #12 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.b = load i64, ptr %i.a, align 8, !alias.scope !57529, !noundef !53 ; 2 uses
  %i.c = icmp ugt i64 %i.b, 5
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load i64, ptr %i.d, align 8, !alias.scope !57529
  %.sink10.i = select i1 %i.c, i64 %i.e, i64 %i.b ; 3 uses
  %i.f = icmp eq i64 %.sink10.i, -1
  br i1 %i.f, label %bb.f, label %bb.b, !prof !64

bb.b:                                             ; preds = %bb.a
  %i.g = icmp eq i64 %.sink10.i, 0
  %i.h = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %.sink10.i, i1 true)
  %i.i = lshr i64 -1, %i.h
  %.sroa.02.0 = select i1 %i.g, i64 0, i64 %i.i   ; 2 uses
  %i.j = icmp eq i64 %.sroa.02.0, -1
  br i1 %i.j, label %bb.f, label %bb.c, !prof !64

bb.c:                                             ; preds = %bb.b
  %i.k = add nuw i64 %.sroa.02.0, 1
  %i.l = tail call fastcc { i64, i64 } @"_ZN8smallvec17SmallVec$LT$A$GT$8try_grow17h17748f86337f1cc7E"(ptr noalias noundef align 8 dereferenceable(88) %0, i64 noundef %i.k) ; 2 uses
  %i.m = extractvalue { i64, i64 } %i.l, 0        ; 2 uses
  switch i64 %i.m, label %bb.d [
    i64 -9223372036854775807, label %_ZN8smallvec10infallible17hd7e1cfe47d8fef1dE.exit
    i64 0, label %bb.e
  ], !prof !152

bb.d:                                             ; preds = %bb.c
  %i.n = extractvalue { i64, i64 } %i.l, 1
  tail call void @_ZN5alloc5alloc18handle_alloc_error17h8f86e24af4223f3dE(i64 noundef range(i64 0, -9223372036854775806) %i.m, i64 noundef %i.n) #70
  unreachable

bb.e:                                             ; preds = %bb.c
  tail call void @_ZN4core9panicking5panic17ha264d2bb233f2b69E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @157, i64 noundef 17, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @3260) #70
  unreachable

_ZN8smallvec10infallible17hd7e1cfe47d8fef1dE.exit: ; preds = %bb.c
  ret void

bb.f:                                             ; preds = %bb.b, %bb.a
  tail call void @_ZN4core6option13expect_failed17h1729d0bd73171c50E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @157, i64 noundef 17, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @3261) #70
  unreachable
}

; Function Attrs: cold nonlazybind uwtable
define internal fastcc void @"_ZN8smallvec17SmallVec$LT$A$GT$21reserve_one_unchecked17h8e3b9de236c168a9E"(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(128) %0) unnamed_addr #12 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !alias.scope !57532, !noundef !53 ; 2 uses
  %i.b = icmp ugt i64 %i.a, 5
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load i64, ptr %i.c, align 8, !alias.scope !57532
  %.sink10.i = select i1 %i.b, i64 %i.d, i64 %i.a ; 3 uses
  %i.e = icmp eq i64 %.sink10.i, -1
  br i1 %i.e, label %bb.f, label %bb.b, !prof !64

bb.b:                                             ; preds = %bb.a
  %i.f = icmp eq i64 %.sink10.i, 0
  %i.g = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %.sink10.i, i1 true)
  %i.h = lshr i64 -1, %i.g
  %.sroa.02.0 = select i1 %i.f, i64 0, i64 %i.h   ; 2 uses
  %i.i = icmp eq i64 %.sroa.02.0, -1
  br i1 %i.i, label %bb.f, label %bb.c, !prof !64

bb.c:                                             ; preds = %bb.b
  %i.j = add nuw i64 %.sroa.02.0, 1
  %i.k = tail call fastcc { i64, i64 } @"_ZN8smallvec17SmallVec$LT$A$GT$8try_grow17hcb5c7e2114791bcbE"(ptr noalias noundef align 8 dereferenceable(128) %0, i64 noundef %i.j) ; 2 uses
  %i.l = extractvalue { i64, i64 } %i.k, 0        ; 2 uses
  switch i64 %i.l, label %bb.d [
    i64 -9223372036854775807, label %_ZN8smallvec10infallible17hd7e1cfe47d8fef1dE.exit
    i64 0, label %bb.e
  ], !prof !152

bb.d:                                             ; preds = %bb.c
  %i.m = extractvalue { i64, i64 } %i.k, 1
  tail call void @_ZN5alloc5alloc18handle_alloc_error17h8f86e24af4223f3dE(i64 noundef range(i64 0, -9223372036854775806) %i.l, i64 noundef %i.m) #70
  unreachable

bb.e:                                             ; preds = %bb.c
  tail call void @_ZN4core9panicking5panic17ha264d2bb233f2b69E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @157, i64 noundef 17, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @3260) #70
  unreachable

_ZN8smallvec10infallible17hd7e1cfe47d8fef1dE.exit: ; preds = %bb.c
  ret void

bb.f:                                             ; preds = %bb.b, %bb.a
  tail call void @_ZN4core6option13expect_failed17h1729d0bd73171c50E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @157, i64 noundef 17, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @3261) #70
  unreachable
}

; Function Attrs: cold nonlazybind uwtable
define internal fastcc void @"_ZN8smallvec17SmallVec$LT$A$GT$21reserve_one_unchecked17h8f89ee794b88c4e7E"(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(24) %0) unnamed_addr #12 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load i64, ptr %i.a, align 8, !alias.scope !57535, !noundef !53 ; 2 uses
  %i.c = icmp ugt i64 %i.b, 2
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load i64, ptr %i.d, align 8, !alias.scope !57535
  %.sink10.i = select i1 %i.c, i64 %i.e, i64 %i.b ; 3 uses
  %i.f = icmp eq i64 %.sink10.i, -1
  br i1 %i.f, label %bb.f, label %bb.b, !prof !64

bb.b:                                             ; preds = %bb.a
  %i.g = icmp eq i64 %.sink10.i, 0
  %i.h = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %.sink10.i, i1 true)
  %i.i = lshr i64 -1, %i.h
  %.sroa.02.0 = select i1 %i.g, i64 0, i64 %i.i   ; 2 uses
  %i.j = icmp eq i64 %.sroa.02.0, -1
  br i1 %i.j, label %bb.f, label %bb.c, !prof !64

bb.c:                                             ; preds = %bb.b
  %i.k = add nuw i64 %.sroa.02.0, 1
  %i.l = tail call fastcc { i64, i64 } @"_ZN8smallvec17SmallVec$LT$A$GT$8try_grow17ha782776882f0f340E"(ptr noalias noundef align 8 dereferenceable(24) %0, i64 noundef %i.k) ; 2 uses
  %i.m = extractvalue { i64, i64 } %i.l, 0        ; 2 uses
  switch i64 %i.m, label %bb.d [
    i64 -9223372036854775807, label %_ZN8smallvec10infallible17hd7e1cfe47d8fef1dE.exit
    i64 0, label %bb.e
  ], !prof !152

bb.d:                                             ; preds = %bb.c
  %i.n = extractvalue { i64, i64 } %i.l, 1
  tail call void @_ZN5alloc5alloc18handle_alloc_error17h8f86e24af4223f3dE(i64 noundef range(i64 0, -9223372036854775806) %i.m, i64 noundef %i.n) #70
  unreachable

bb.e:                                             ; preds = %bb.c
  tail call void @_ZN4core9panicking5panic17ha264d2bb233f2b69E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @157, i64 noundef 17, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @3260) #70
  unreachable

_ZN8smallvec10infallible17hd7e1cfe47d8fef1dE.exit: ; preds = %bb.c
  ret void

bb.f:                                             ; preds = %bb.b, %bb.a
  tail call void @_ZN4core6option13expect_failed17h1729d0bd73171c50E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @157, i64 noundef 17, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @3261) #70
  unreachable
}

; Function Attrs: cold nonlazybind uwtable
define internal fastcc void @"_ZN8smallvec17SmallVec$LT$A$GT$21reserve_one_unchecked17hbffb1b3369b2802dE"(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(200) %0) unnamed_addr #12 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 192 ; 3 uses
  %i.c = load i64, ptr %i.b, align 8, !alias.scope !57548, !noundef !53 ; 8 uses
  %i.d = icmp ugt i64 %i.c, 3
  %i.e = load ptr, ptr %0, align 8, !alias.scope !57548, !nonnull !53 ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.g = load i64, ptr %i.f, align 8, !alias.scope !57548 ; 3 uses
  %.sink10.i = select i1 %i.d, i64 %i.g, i64 %i.c ; 5 uses
  %i.h = icmp eq i64 %.sink10.i, -1
  br i1 %i.h, label %bb.t, label %bb.b, !prof !64

bb.b:                                             ; preds = %bb.a
  %i.i = icmp eq i64 %.sink10.i, 0
  %i.j = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %.sink10.i, i1 true)
  %i.k = lshr i64 -1, %i.j
  %.sroa.02.0 = select i1 %i.i, i64 0, i64 %i.k   ; 4 uses
  %i.l = icmp eq i64 %.sroa.02.0, -1
  br i1 %i.l, label %bb.t, label %bb.c, !prof !64

bb.c:                                             ; preds = %bb.b
  %i.m = add nuw i64 %.sroa.02.0, 1               ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !57549)
  %i.n = icmp ult i64 %i.c, 4                     ; 2 uses
  %.sink.i.i = tail call i64 @llvm.umax.i64(i64 %i.c, i64 3) ; 2 uses
  %.not.i = icmp ult i64 %i.m, %.sink10.i
  br i1 %.not.i, label %bb.d, label %bb.e, !prof !64

bb.d:                                             ; preds = %bb.c
  tail call void @_ZN4core9panicking5panic17ha264d2bb233f2b69E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @3270, i64 noundef 32, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @3271) #70, !noalias !57549
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.o = icmp ult i64 %.sroa.02.0, 3
  br i1 %i.o, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %.not47.i = icmp eq i64 %i.c, %i.m
  br i1 %.not47.i, label %_ZN8smallvec10infallible17hd7e1cfe47d8fef1dE.exit, label %bb.h

bb.g:                                             ; preds = %bb.e
  br i1 %i.n, label %_ZN8smallvec10infallible17hd7e1cfe47d8fef1dE.exit, label %bb.o

bb.h:                                             ; preds = %bb.f
  %i.p = shl nuw i64 %i.m, 6                      ; 4 uses
  %i.q = icmp ugt i64 %.sroa.02.0, 288230376151711742
  br i1 %i.q, label %bb.s, label %bb.i, !prof !64

bb.i:                                             ; preds = %bb.h
  %i.r = tail call noundef zeroext i1 @_ZN4core5alloc6layout6Layout19is_size_align_valid17h26adf6c6175f55f5E(i64 noundef %i.p, i64 noundef 8), !noalias !57550
  br i1 %i.r, label %_ZN8smallvec12layout_array17h0bdbd3dbf9e4f1b6E.exit.i, label %bb.s

_ZN8smallvec12layout_array17h0bdbd3dbf9e4f1b6E.exit.i: ; preds = %bb.i
  br i1 %i.n, label %bb.l, label %bb.j

bb.j:                                             ; preds = %_ZN8smallvec12layout_array17h0bdbd3dbf9e4f1b6E.exit.i
  %i.s = shl nuw i64 %.sink.i.i, 6                ; 2 uses
  %i.t = icmp ugt i64 %i.c, 288230376151711743
  br i1 %i.t, label %bb.s, label %bb.k, !prof !64

bb.k:                                             ; preds = %bb.j
  %i.u = tail call noundef zeroext i1 @_ZN4core5alloc6layout6Layout19is_size_align_valid17h26adf6c6175f55f5E(i64 noundef %i.s, i64 noundef 8), !noalias !57551
  br i1 %i.u, label %_ZN8smallvec12layout_array17h0bdbd3dbf9e4f1b6E.exit55.i, label %bb.s

bb.l:                                             ; preds = %_ZN8smallvec12layout_array17h0bdbd3dbf9e4f1b6E.exit.i
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #71, !noalias !57549
  %i.v = tail call noundef align 8 ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef %i.p, i64 noundef 8) #71, !noalias !57549 ; 3 uses
  %.not74.i = icmp eq ptr %i.v, null
  br i1 %.not74.i, label %bb.r, label %bb.n

_ZN8smallvec12layout_array17h0bdbd3dbf9e4f1b6E.exit55.i: ; preds = %bb.k
  %i.w = tail call noundef align 8 ptr @_RNvCskdKJRKLKjqM_7___rustc14___rust_realloc(ptr noundef nonnull %i.e, i64 noundef %i.s, i64 noundef 8, i64 noundef %i.p) #71, !noalias !57549 ; 2 uses
  %.not73.i = icmp eq ptr %i.w, null
  br i1 %.not73.i, label %bb.r, label %bb.m

bb.m:                                             ; preds = %bb.n, %_ZN8smallvec12layout_array17h0bdbd3dbf9e4f1b6E.exit55.i
  %.sroa.021.0.i = phi ptr [ %i.v, %bb.n ], [ %i.w, %_ZN8smallvec12layout_array17h0bdbd3dbf9e4f1b6E.exit55.i ]
  store ptr %.sroa.021.0.i, ptr %0, align 8, !alias.scope !57549
  store i64 %.sink10.i, ptr %i.f, align 8, !alias.scope !57549
  store i64 %i.m, ptr %i.b, align 8, !alias.scope !57549
  br label %_ZN8smallvec10infallible17hd7e1cfe47d8fef1dE.exit

bb.n:                                             ; preds = %bb.l
  %i.x = shl nuw nsw i64 %i.c, 6
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.v, ptr nonnull align 8 dereferenceable(200) %0, i64 %i.x, i1 false)
  br label %bb.m

bb.o:                                             ; preds = %bb.g
  %i.y = shl nuw i64 %i.g, 6
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 dereferenceable(200) %0, ptr nonnull align 8 %i.e, i64 %i.y, i1 false)
  store i64 %i.g, ptr %i.b, align 8, !alias.scope !57549
  %i.z = shl nuw i64 %.sink.i.i, 6                ; 2 uses
  %i.aa = icmp ugt i64 %i.c, 288230376151711743
  br i1 %i.aa, label %bb.q, label %bb.p, !prof !64

bb.p:                                             ; preds = %bb.o
  %i.ab = tail call noundef zeroext i1 @_ZN4core5alloc6layout6Layout19is_size_align_valid17h26adf6c6175f55f5E(i64 noundef %i.z, i64 noundef 8), !noalias !57552
  br i1 %i.ab, label %_ZN8smallvec10deallocate17h2ea8d161515f4487E.exit.i, label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !57553
  store i64 0, ptr %i.a, align 8, !noalias !57553
  call void @_ZN4core6result13unwrap_failed17h0501379eaec3e720E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @429, i64 noundef 43, ptr noundef nonnull align 1 %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @431, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @3259) #70, !noalias !57553
  unreachable

_ZN8smallvec10deallocate17h2ea8d161515f4487E.exit.i: ; preds = %bb.p
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.e, i64 noundef %i.z, i64 noundef 8) #71, !noalias !57549
  br label %_ZN8smallvec10infallible17hd7e1cfe47d8fef1dE.exit

bb.r:                                             ; preds = %_ZN8smallvec12layout_array17h0bdbd3dbf9e4f1b6E.exit55.i, %bb.l
  tail call void @_ZN5alloc5alloc18handle_alloc_error17h8f86e24af4223f3dE(i64 noundef range(i64 0, -9223372036854775806) 8, i64 noundef %i.p) #70
  unreachable

bb.s:                                             ; preds = %bb.k, %bb.h, %bb.i, %bb.j
  tail call void @_ZN4core9panicking5panic17ha264d2bb233f2b69E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @157, i64 noundef 17, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @3260) #70
  unreachable

_ZN8smallvec10infallible17hd7e1cfe47d8fef1dE.exit: ; preds = %_ZN8smallvec10deallocate17h2ea8d161515f4487E.exit.i, %bb.g, %bb.f, %bb.m
  ret void

bb.t:                                             ; preds = %bb.b, %bb.a
  tail call void @_ZN4core6option13expect_failed17h1729d0bd73171c50E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @157, i64 noundef 17, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @3261) #70
  unreachable
}

; Function Attrs: cold nonlazybind uwtable
define internal fastcc void @"_ZN8smallvec17SmallVec$LT$A$GT$21reserve_one_unchecked17hc05ef3f181f2b1f3E"(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(48) %0) unnamed_addr #12 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !alias.scope !57556, !noundef !53 ; 2 uses
  %i.b = icmp ugt i64 %i.a, 5
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load i64, ptr %i.c, align 8, !alias.scope !57556
  %.sink10.i = select i1 %i.b, i64 %i.d, i64 %i.a ; 3 uses
  %i.e = icmp eq i64 %.sink10.i, -1
  br i1 %i.e, label %bb.f, label %bb.b, !prof !64

bb.b:                                             ; preds = %bb.a
  %i.f = icmp eq i64 %.sink10.i, 0
  %i.g = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %.sink10.i, i1 true)
  %i.h = lshr i64 -1, %i.g
  %.sroa.02.0 = select i1 %i.f, i64 0, i64 %i.h   ; 2 uses
  %i.i = icmp eq i64 %.sroa.02.0, -1
  br i1 %i.i, label %bb.f, label %bb.c, !prof !64

bb.c:                                             ; preds = %bb.b
  %i.j = add nuw i64 %.sroa.02.0, 1
  %i.k = tail call fastcc { i64, i64 } @"_ZN8smallvec17SmallVec$LT$A$GT$8try_grow17h6a7ce39196f2cd19E"(ptr noalias noundef align 8 dereferenceable(48) %0, i64 noundef %i.j) ; 2 uses
  %i.l = extractvalue { i64, i64 } %i.k, 0        ; 2 uses
  switch i64 %i.l, label %bb.d [
    i64 -9223372036854775807, label %_ZN8smallvec10infallible17hd7e1cfe47d8fef1dE.exit
    i64 0, label %bb.e
  ], !prof !152

bb.d:                                             ; preds = %bb.c
  %i.m = extractvalue { i64, i64 } %i.k, 1
  tail call void @_ZN5alloc5alloc18handle_alloc_error17h8f86e24af4223f3dE(i64 noundef range(i64 0, -9223372036854775806) %i.l, i64 noundef %i.m) #70
  unreachable

bb.e:                                             ; preds = %bb.c
  tail call void @_ZN4core9panicking5panic17ha264d2bb233f2b69E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @157, i64 noundef 17, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @3260) #70
  unreachable

_ZN8smallvec10infallible17hd7e1cfe47d8fef1dE.exit: ; preds = %bb.c
  ret void

bb.f:                                             ; preds = %bb.b, %bb.a
  tail call void @_ZN4core6option13expect_failed17h1729d0bd73171c50E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @157, i64 noundef 17, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @3261) #70
  unreachable
}

; Function Attrs: cold nonlazybind uwtable
define internal fastcc void @"_ZN8smallvec17SmallVec$LT$A$GT$21reserve_one_unchecked17hd2a0c2f0acb3311eE"(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(32) %0) unnamed_addr #12 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !alias.scope !57559, !noundef !53 ; 2 uses
  %i.b = icmp ugt i64 %i.a, 3
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load i64, ptr %i.c, align 8, !alias.scope !57559
  %.sink10.i = select i1 %i.b, i64 %i.d, i64 %i.a ; 3 uses
  %i.e = icmp eq i64 %.sink10.i, -1
  br i1 %i.e, label %bb.f, label %bb.b, !prof !64

bb.b:                                             ; preds = %bb.a
  %i.f = icmp eq i64 %.sink10.i, 0
  %i.g = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %.sink10.i, i1 true)
  %i.h = lshr i64 -1, %i.g
  %.sroa.02.0 = select i1 %i.f, i64 0, i64 %i.h   ; 2 uses
  %i.i = icmp eq i64 %.sroa.02.0, -1
  br i1 %i.i, label %bb.f, label %bb.c, !prof !64

bb.c:                                             ; preds = %bb.b
  %i.j = add nuw i64 %.sroa.02.0, 1
  %i.k = tail call fastcc { i64, i64 } @"_ZN8smallvec17SmallVec$LT$A$GT$8try_grow17ha54bb9632012b893E"(ptr noalias noundef align 8 dereferenceable(32) %0, i64 noundef %i.j) ; 2 uses
  %i.l = extractvalue { i64, i64 } %i.k, 0        ; 2 uses
  switch i64 %i.l, label %bb.d [
    i64 -9223372036854775807, label %_ZN8smallvec10infallible17hd7e1cfe47d8fef1dE.exit
    i64 0, label %bb.e
  ], !prof !152

bb.d:                                             ; preds = %bb.c
  %i.m = extractvalue { i64, i64 } %i.k, 1
  tail call void @_ZN5alloc5alloc18handle_alloc_error17h8f86e24af4223f3dE(i64 noundef range(i64 0, -9223372036854775806) %i.l, i64 noundef %i.m) #70
  unreachable

bb.e:                                             ; preds = %bb.c
  tail call void @_ZN4core9panicking5panic17ha264d2bb233f2b69E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @157, i64 noundef 17, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @3260) #70
  unreachable

_ZN8smallvec10infallible17hd7e1cfe47d8fef1dE.exit: ; preds = %bb.c
  ret void

bb.f:                                             ; preds = %bb.b, %bb.a
  tail call void @_ZN4core6option13expect_failed17h1729d0bd73171c50E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @157, i64 noundef 17, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @3261) #70
  unreachable
}

; Function Attrs: cold nonlazybind uwtable
define internal fastcc void @"_ZN8smallvec17SmallVec$LT$A$GT$21reserve_one_unchecked17hdf857f9cf64b6542E"(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(104) %0) unnamed_addr #12 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.b = load i64, ptr %i.a, align 8, !alias.scope !57562, !noundef !53 ; 2 uses
  %i.c = icmp ugt i64 %i.b, 3
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load i64, ptr %i.d, align 8, !alias.scope !57562
  %.sink10.i = select i1 %i.c, i64 %i.e, i64 %i.b ; 3 uses
  %i.f = icmp eq i64 %.sink10.i, -1
  br i1 %i.f, label %bb.f, label %bb.b, !prof !64

bb.b:                                             ; preds = %bb.a
  %i.g = icmp eq i64 %.sink10.i, 0
  %i.h = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %.sink10.i, i1 true)
  %i.i = lshr i64 -1, %i.h
  %.sroa.02.0 = select i1 %i.g, i64 0, i64 %i.i   ; 2 uses
  %i.j = icmp eq i64 %.sroa.02.0, -1
  br i1 %i.j, label %bb.f, label %bb.c, !prof !64

bb.c:                                             ; preds = %bb.b
  %i.k = add nuw i64 %.sroa.02.0, 1
  %i.l = tail call fastcc { i64, i64 } @"_ZN8smallvec17SmallVec$LT$A$GT$8try_grow17ha945915ad6025e23E"(ptr noalias noundef align 8 dereferenceable(104) %0, i64 noundef %i.k) ; 2 uses
  %i.m = extractvalue { i64, i64 } %i.l, 0        ; 2 uses
  switch i64 %i.m, label %bb.d [
    i64 -9223372036854775807, label %_ZN8smallvec10infallible17hd7e1cfe47d8fef1dE.exit
    i64 0, label %bb.e
  ], !prof !152

bb.d:                                             ; preds = %bb.c
  %i.n = extractvalue { i64, i64 } %i.l, 1
  tail call void @_ZN5alloc5alloc18handle_alloc_error17h8f86e24af4223f3dE(i64 noundef range(i64 0, -9223372036854775806) %i.m, i64 noundef %i.n) #70
  unreachable

bb.e:                                             ; preds = %bb.c
  tail call void @_ZN4core9panicking5panic17ha264d2bb233f2b69E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @157, i64 noundef 17, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @3260) #70
  unreachable

_ZN8smallvec10infallible17hd7e1cfe47d8fef1dE.exit: ; preds = %bb.c
  ret void

bb.f:                                             ; preds = %bb.b, %bb.a
  tail call void @_ZN4core6option13expect_failed17h1729d0bd73171c50E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @157, i64 noundef 17, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @3261) #70
  unreachable
}

; Function Attrs: cold nonlazybind uwtable
define internal fastcc void @"_ZN8smallvec17SmallVec$LT$A$GT$21reserve_one_unchecked17he748b4e6b2327cb3E"(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(56) %0) unnamed_addr #12 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 3 uses
  %i.c = load i64, ptr %i.b, align 8, !alias.scope !57575, !noundef !53 ; 8 uses
  %i.d = icmp ugt i64 %i.c, 3
  %i.e = load ptr, ptr %0, align 8, !alias.scope !57575, !nonnull !53 ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.g = load i64, ptr %i.f, align 8, !alias.scope !57575 ; 3 uses
  %.sink10.i = select i1 %i.d, i64 %i.g, i64 %i.c ; 5 uses
  %i.h = icmp eq i64 %.sink10.i, -1
  br i1 %i.h, label %bb.t, label %bb.b, !prof !64

bb.b:                                             ; preds = %bb.a
  %i.i = icmp eq i64 %.sink10.i, 0
  %i.j = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %.sink10.i, i1 true)
  %i.k = lshr i64 -1, %i.j
  %.sroa.02.0 = select i1 %i.i, i64 0, i64 %i.k   ; 4 uses
  %i.l = icmp eq i64 %.sroa.02.0, -1
  br i1 %i.l, label %bb.t, label %bb.c, !prof !64

bb.c:                                             ; preds = %bb.b
  %i.m = add nuw i64 %.sroa.02.0, 1               ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !57576)
  %i.n = icmp ult i64 %i.c, 4                     ; 2 uses
  %.sink.i.i = tail call i64 @llvm.umax.i64(i64 %i.c, i64 3) ; 2 uses
  %.not.i = icmp ult i64 %i.m, %.sink10.i
  br i1 %.not.i, label %bb.d, label %bb.e, !prof !64

bb.d:                                             ; preds = %bb.c
  tail call void @_ZN4core9panicking5panic17ha264d2bb233f2b69E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @3270, i64 noundef 32, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @3271) #70, !noalias !57576
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.o = icmp ult i64 %.sroa.02.0, 3
  br i1 %i.o, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %.not47.i = icmp eq i64 %i.c, %i.m
  br i1 %.not47.i, label %_ZN8smallvec10infallible17hd7e1cfe47d8fef1dE.exit, label %bb.h

bb.g:                                             ; preds = %bb.e
  br i1 %i.n, label %_ZN8smallvec10infallible17hd7e1cfe47d8fef1dE.exit, label %bb.o

bb.h:                                             ; preds = %bb.f
  %i.p = shl nuw i64 %i.m, 4                      ; 4 uses
  %i.q = icmp ugt i64 %.sroa.02.0, 1152921504606846974
  br i1 %i.q, label %bb.s, label %bb.i, !prof !64

bb.i:                                             ; preds = %bb.h
  %i.r = tail call noundef zeroext i1 @_ZN4core5alloc6layout6Layout19is_size_align_valid17h26adf6c6175f55f5E(i64 noundef %i.p, i64 noundef 8), !noalias !57577
  br i1 %i.r, label %_ZN8smallvec12layout_array17h3ff5946ceb4f59e9E.exit.i, label %bb.s

_ZN8smallvec12layout_array17h3ff5946ceb4f59e9E.exit.i: ; preds = %bb.i
  br i1 %i.n, label %bb.l, label %bb.j

bb.j:                                             ; preds = %_ZN8smallvec12layout_array17h3ff5946ceb4f59e9E.exit.i
  %i.s = shl nuw i64 %.sink.i.i, 4                ; 2 uses
  %i.t = icmp ugt i64 %i.c, 1152921504606846975
  br i1 %i.t, label %bb.s, label %bb.k, !prof !64

bb.k:                                             ; preds = %bb.j
  %i.u = tail call noundef zeroext i1 @_ZN4core5alloc6layout6Layout19is_size_align_valid17h26adf6c6175f55f5E(i64 noundef %i.s, i64 noundef 8), !noalias !57578
  br i1 %i.u, label %_ZN8smallvec12layout_array17h3ff5946ceb4f59e9E.exit55.i, label %bb.s

bb.l:                                             ; preds = %_ZN8smallvec12layout_array17h3ff5946ceb4f59e9E.exit.i
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #71, !noalias !57576
  %i.v = tail call noundef align 8 ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef %i.p, i64 noundef 8) #71, !noalias !57576 ; 3 uses
  %.not74.i = icmp eq ptr %i.v, null
  br i1 %.not74.i, label %bb.r, label %bb.n

_ZN8smallvec12layout_array17h3ff5946ceb4f59e9E.exit55.i: ; preds = %bb.k
  %i.w = tail call noundef align 8 ptr @_RNvCskdKJRKLKjqM_7___rustc14___rust_realloc(ptr noundef nonnull %i.e, i64 noundef %i.s, i64 noundef 8, i64 noundef %i.p) #71, !noalias !57576 ; 2 uses
  %.not73.i = icmp eq ptr %i.w, null
  br i1 %.not73.i, label %bb.r, label %bb.m

bb.m:                                             ; preds = %bb.n, %_ZN8smallvec12layout_array17h3ff5946ceb4f59e9E.exit55.i
  %.sroa.021.0.i = phi ptr [ %i.v, %bb.n ], [ %i.w, %_ZN8smallvec12layout_array17h3ff5946ceb4f59e9E.exit55.i ]
  store ptr %.sroa.021.0.i, ptr %0, align 8, !alias.scope !57576
  store i64 %.sink10.i, ptr %i.f, align 8, !alias.scope !57576
  store i64 %i.m, ptr %i.b, align 8, !alias.scope !57576
  br label %_ZN8smallvec10infallible17hd7e1cfe47d8fef1dE.exit

bb.n:                                             ; preds = %bb.l
  %i.x = shl nuw nsw i64 %i.c, 4
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.v, ptr nonnull align 8 dereferenceable(56) %0, i64 %i.x, i1 false)
  br label %bb.m

bb.o:                                             ; preds = %bb.g
  %i.y = shl nuw i64 %i.g, 4
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 dereferenceable(56) %0, ptr nonnull align 8 %i.e, i64 %i.y, i1 false)
  store i64 %i.g, ptr %i.b, align 8, !alias.scope !57576
  %i.z = shl nuw i64 %.sink.i.i, 4                ; 2 uses
  %i.aa = icmp ugt i64 %i.c, 1152921504606846975
  br i1 %i.aa, label %bb.q, label %bb.p, !prof !64

bb.p:                                             ; preds = %bb.o
  %i.ab = tail call noundef zeroext i1 @_ZN4core5alloc6layout6Layout19is_size_align_valid17h26adf6c6175f55f5E(i64 noundef %i.z, i64 noundef 8), !noalias !57579
  br i1 %i.ab, label %_ZN8smallvec10deallocate17ha90c4e8f94d77cc8E.exit.i, label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !57580
  store i64 0, ptr %i.a, align 8, !noalias !57580
  call void @_ZN4core6result13unwrap_failed17h0501379eaec3e720E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @429, i64 noundef 43, ptr noundef nonnull align 1 %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @431, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @3259) #70, !noalias !57580
  unreachable

_ZN8smallvec10deallocate17ha90c4e8f94d77cc8E.exit.i: ; preds = %bb.p
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.e, i64 noundef %i.z, i64 noundef 8) #71, !noalias !57576
  br label %_ZN8smallvec10infallible17hd7e1cfe47d8fef1dE.exit

bb.r:                                             ; preds = %_ZN8smallvec12layout_array17h3ff5946ceb4f59e9E.exit55.i, %bb.l
  tail call void @_ZN5alloc5alloc18handle_alloc_error17h8f86e24af4223f3dE(i64 noundef range(i64 0, -9223372036854775806) 8, i64 noundef %i.p) #70
  unreachable

bb.s:                                             ; preds = %bb.k, %bb.h, %bb.i, %bb.j
  tail call void @_ZN4core9panicking5panic17ha264d2bb233f2b69E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @157, i64 noundef 17, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @3260) #70
  unreachable

_ZN8smallvec10infallible17hd7e1cfe47d8fef1dE.exit: ; preds = %_ZN8smallvec10deallocate17ha90c4e8f94d77cc8E.exit.i, %bb.g, %bb.f, %bb.m
  ret void

bb.t:                                             ; preds = %bb.b, %bb.a
  tail call void @_ZN4core6option13expect_failed17h1729d0bd73171c50E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @157, i64 noundef 17, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @3261) #70
  unreachable
}

; Function Attrs: cold nonlazybind uwtable
define internal fastcc void @"_ZN8smallvec17SmallVec$LT$A$GT$21reserve_one_unchecked17hf62baccad7dc5550E"(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(136) %0) unnamed_addr #12 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.b = load i64, ptr %i.a, align 8, !alias.scope !57583, !noundef !53 ; 2 uses
  %i.c = icmp ugt i64 %i.b, 8
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load i64, ptr %i.d, align 8, !alias.scope !57583
  %.sink10.i = select i1 %i.c, i64 %i.e, i64 %i.b ; 3 uses
  %i.f = icmp eq i64 %.sink10.i, -1
  br i1 %i.f, label %bb.f, label %bb.b, !prof !64

bb.b:                                             ; preds = %bb.a
  %i.g = icmp eq i64 %.sink10.i, 0
  %i.h = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %.sink10.i, i1 true)
  %i.i = lshr i64 -1, %i.h
  %.sroa.02.0 = select i1 %i.g, i64 0, i64 %i.i   ; 2 uses
  %i.j = icmp eq i64 %.sroa.02.0, -1
  br i1 %i.j, label %bb.f, label %bb.c, !prof !64

bb.c:                                             ; preds = %bb.b
  %i.k = add nuw i64 %.sroa.02.0, 1
  %i.l = tail call fastcc { i64, i64 } @"_ZN8smallvec17SmallVec$LT$A$GT$8try_grow17h2c06d5cb91f00a26E"(ptr noalias noundef align 8 dereferenceable(136) %0, i64 noundef %i.k) ; 2 uses
  %i.m = extractvalue { i64, i64 } %i.l, 0        ; 2 uses
  switch i64 %i.m, label %bb.d [
    i64 -9223372036854775807, label %_ZN8smallvec10infallible17hd7e1cfe47d8fef1dE.exit
    i64 0, label %bb.e
  ], !prof !152

bb.d:                                             ; preds = %bb.c
  %i.n = extractvalue { i64, i64 } %i.l, 1
  tail call void @_ZN5alloc5alloc18handle_alloc_error17h8f86e24af4223f3dE(i64 noundef range(i64 0, -9223372036854775806) %i.m, i64 noundef %i.n) #70
  unreachable

bb.e:                                             ; preds = %bb.c
  tail call void @_ZN4core9panicking5panic17ha264d2bb233f2b69E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @157, i64 noundef 17, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @3260) #70
  unreachable

_ZN8smallvec10infallible17hd7e1cfe47d8fef1dE.exit: ; preds = %bb.c
  ret void

bb.f:                                             ; preds = %bb.b, %bb.a
  tail call void @_ZN4core6option13expect_failed17h1729d0bd73171c50E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @157, i64 noundef 17, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @3261) #70
  unreachable
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @"_ZN8smallvec17SmallVec$LT$A$GT$4push17h48468056d07ca05aE"(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(88) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(16) %1) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !alias.scope !57586, !noundef !53 ; 2 uses
  %i.c = icmp ugt i64 %i.b, 5                     ; 2 uses
  %i.d = load ptr, ptr %0, align 8, !alias.scope !57586, !nonnull !53
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %.sink10.i = select i1 %i.c, ptr %i.d, ptr %0
  %.sink9.i = select i1 %i.c, ptr %i.e, ptr %i.a  ; 2 uses
  %.sink.i = tail call i64 @llvm.umax.i64(i64 %i.b, i64 5)
  %i.f = load i64, ptr %.sink9.i, align 8, !noundef !53 ; 2 uses
  %i.g = icmp eq i64 %i.f, %.sink.i
  br i1 %i.g, label %bb.c, label %bb.d, !prof !64

bb.b:                                             ; preds = %bb.c
  %i.h = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr48drop_in_place$LT$rhai..types..dynamic..Union$GT$17h49c4795ab223165bE"(ptr noalias noundef readonly align 8 dereferenceable(16) %1)
          to label %"_ZN4core3ptr50drop_in_place$LT$rhai..types..dynamic..Dynamic$GT$17hebb38c0752eb41d6E.exit" unwind label %bb.f, !inline_history !71

bb.c:                                             ; preds = %bb.a
  invoke fastcc void @"_ZN8smallvec17SmallVec$LT$A$GT$21reserve_one_unchecked17h1ab5bb65b1b551c5E"(ptr noalias noundef align 8 dereferenceable(88) %0)
          to label %bb.e unwind label %bb.b

bb.d:                                             ; preds = %bb.a, %bb.e
  %i.i = phi i64 [ %.pre, %bb.e ], [ %i.f, %bb.a ]
  %.sroa.01.0 = phi ptr [ %i.e, %bb.e ], [ %.sink9.i, %bb.a ] ; 2 uses
  %.sroa.0.0 = phi ptr [ %i.m, %bb.e ], [ %.sink10.i, %bb.a ]
  %i.j = getelementptr inbounds nuw [16 x i8], ptr %.sroa.0.0, i64 %i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.j, ptr noundef nonnull align 8 dereferenceable(16) %1, i64 16, i1 false)
  %i.k = load i64, ptr %.sroa.01.0, align 8, !noundef !53
  %i.l = add i64 %i.k, 1
  store i64 %i.l, ptr %.sroa.01.0, align 8
  ret void

bb.e:                                             ; preds = %bb.c
  %i.m = load ptr, ptr %0, align 8, !nonnull !53, !noundef !53
  %.pre = load i64, ptr %i.e, align 8
  br label %bb.d

bb.f:                                             ; preds = %bb.b
  %i.n = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #73
  unreachable

"_ZN4core3ptr50drop_in_place$LT$rhai..types..dynamic..Dynamic$GT$17hebb38c0752eb41d6E.exit": ; preds = %bb.b
  resume { ptr, i32 } %i.h
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @"_ZN8smallvec17SmallVec$LT$A$GT$4push17h4d33697b487932d3E"(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(48) %0, ptr noalias noundef nonnull align 8 dereferenceable(16) %1) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load i64, ptr %0, align 8, !alias.scope !57589, !noundef !53 ; 2 uses
  %i.b = icmp ugt i64 %i.a, 5                     ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.d = load ptr, ptr %i.c, align 8, !alias.scope !57589, !nonnull !53
  %.sink10.i = select i1 %i.b, ptr %i.d, ptr %i.c
  %.sink9.idx.i = select i1 %i.b, i64 16, i64 0
  %.sink9.i = getelementptr inbounds nuw i8, ptr %0, i64 %.sink9.idx.i ; 2 uses
  %.sink.i = tail call i64 @llvm.umax.i64(i64 %i.a, i64 5)
  %i.e = load i64, ptr %.sink9.i, align 8, !noundef !53 ; 2 uses
  %i.f = icmp eq i64 %i.e, %.sink.i
  br i1 %i.f, label %bb.b, label %bb.c, !prof !64

bb.b:                                             ; preds = %bb.a
  tail call fastcc void @"_ZN8smallvec17SmallVec$LT$A$GT$21reserve_one_unchecked17hc05ef3f181f2b1f3E"(ptr noalias noundef align 8 dereferenceable(48) %0)
  %i.g = load ptr, ptr %i.c, align 8, !nonnull !53, !noundef !53
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.pre = load i64, ptr %i.h, align 8
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.i = phi i64 [ %.pre, %bb.b ], [ %i.e, %bb.a ]
  %.sroa.01.0 = phi ptr [ %i.h, %bb.b ], [ %.sink9.i, %bb.a ] ; 2 uses
  %.sroa.0.0 = phi ptr [ %i.g, %bb.b ], [ %.sink10.i, %bb.a ]
  %i.j = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0.0, i64 %i.i
  store ptr %1, ptr %i.j, align 8
  %i.k = load i64, ptr %.sroa.01.0, align 8, !noundef !53
  %i.l = add i64 %i.k, 1
  store i64 %i.l, ptr %.sroa.01.0, align 8
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @"_ZN8smallvec17SmallVec$LT$A$GT$4push17h6ab1f4df851e8d01E"(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(104) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(32) %1) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !alias.scope !57592, !noundef !53 ; 2 uses
  %i.c = icmp ugt i64 %i.b, 3                     ; 2 uses
  %i.d = load ptr, ptr %0, align 8, !alias.scope !57592, !nonnull !53
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %.sink10.i = select i1 %i.c, ptr %i.d, ptr %0
  %.sink9.i = select i1 %i.c, ptr %i.e, ptr %i.a  ; 2 uses
  %.sink.i = tail call i64 @llvm.umax.i64(i64 %i.b, i64 3)
  %i.f = load i64, ptr %.sink9.i, align 8, !noundef !53 ; 2 uses
  %i.g = icmp eq i64 %i.f, %.sink.i
  br i1 %i.g, label %bb.c, label %bb.d, !prof !64

bb.b:                                             ; preds = %bb.c
  %i.h = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr76drop_in_place$LT$$LP$rhai..ast..ident..Ident$C$rhai..ast..expr..Expr$RP$$GT$17hc79a89ea2bae1012E"(ptr noalias noundef align 8 dereferenceable(32) %1) #72
          to label %bb.g unwind label %bb.f
end_hunk_3
