Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/nickel-rs/original/nls-21108e55ddbceac4.nls.aaf5fb48c83e0b2-cgu.0?download=true
inline.NumInlined: 33046
inline.NumDeleted: 15305
loop-unroll.NumCompletelyUnrolled: 63
loop-unroll.NumRuntimeUnrolled: 86
loop-unroll.NumUnrolled: 156
begin_hunk_0_@_ZN3nls5world5World9typecheck17he9a2ca31ddbfa807E:bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bs), !noalias !55608
  store i64 0, ptr %i.bs, align 8, !alias.scope !55610, !noalias !55608
  %.sroa.42.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.bs, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.42.0..sroa_idx.i.i.i, align 8, !alias.scope !55610, !noalias !55608
  %.sroa.53.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.bs, i64 16
  store i64 0, ptr %.sroa.53.0..sroa_idx.i.i.i, align 8, !alias.scope !55610, !noalias !55608
  call void @llvm.lifetime.start.p0(ptr nonnull %i.br), !noalias !55608
  %.sroa.4.0..sroa_idx49.i.i = getelementptr inbounds nuw i8, ptr %i.bq, i64 512
  store i32 %.sroa.4.0.copyload.i.i, ptr %.sroa.4.0..sroa_idx49.i.i, align 8, !noalias !55608
  %.sroa.5.0..sroa_idx51.i.i = getelementptr inbounds nuw i8, ptr %i.bq, i64 516
  store i8 2, ptr %.sroa.5.0..sroa_idx51.i.i, align 4, !noalias !55608
  invoke fastcc void @"_ZN9hashbrown3map28HashMap$LT$K$C$V$C$S$C$A$GT$6insert17h86ddc6cc1074a1ccE"(ptr noalias noundef align 8 captures(address) dereferenceable(528) %i.br, ptr noalias noundef align 8 dereferenceable(48) %i.ahp, i32 noundef %.sroa.4.0.copyload.i.i, ptr noalias noundef align 8 captures(address) dereferenceable(520) %i.bq)
          to label %bb.ox unwind label %bb.pa, !noalias !55611

bb.ox:                                            ; preds = %bb.ow
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bq), !noalias !55608
  %i.azt = load i64, ptr %i.br, align 8, !range !62, !alias.scope !55612, !noalias !55608, !noundef !46
  %i.azu = icmp eq i64 %i.azt, 0
  br i1 %i.azu, label %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h3ae15b2a279310bbE.exit.thread.i.i", label %bb.oy

bb.oy:                                            ; preds = %bb.ox
  %i.azv = getelementptr inbounds nuw i8, ptr %i.br, i64 8
  invoke fastcc void @"_ZN4core3ptr82drop_in_place$LT$nls..analysis..ouroboros_impl_packed_analysis..PackedAnalysis$GT$17ha6ec87bbbaff1520E"(ptr noalias noundef align 8 dereferenceable(520) %i.azv)
          to label %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h3ae15b2a279310bbE.exit.thread.i.i" unwind label %bb.pa, !noalias !55611

"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h3ae15b2a279310bbE.exit.thread.i.i": ; preds = %bb.oy, %bb.ox
  call void @llvm.lifetime.end.p0(ptr nonnull %i.br), !noalias !55608
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bs), !noalias !55608
  br label %bb.pd

bb.oz:                                            ; preds = %bb.pa
  %i.azw = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #76, !noalias !55611
  unreachable

bb.pa:                                            ; preds = %bb.oy, %bb.ow
  %i.azx = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr148drop_in_place$LT$core..result..Result$LT$$LP$alloc..vec..Vec$LT$nls..analysis..AnalysisTarget$GT$$C$$LP$$RP$$RP$$C$core..convert..Infallible$GT$$GT$17h51f306b3b6dfa4f5E"(ptr noalias noundef align 8 dereferenceable(24) %i.bs) #77
          to label %.body204 unwind label %bb.oz, !noalias !55611

bb.pb:                                            ; preds = %._crit_edge828
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bu), !noalias !55607
  br label %.invoke

bb.pc:                                            ; preds = %.invoke, %bb.pe
  %i.azy = landingpad { ptr, i32 }
          cleanup
  br label %.body204

.body204:                                         ; preds = %bb.pc, %bb.ot, %bb.os, %bb.og, %bb.of, %bb.oe, %bb.pa
  %eh.lpad-body205 = phi { ptr, i32 } [ %i.azx, %bb.pa ], [ %i.azy, %bb.pc ], [ %eh.lpad-body.i.i.i, %bb.ot ], [ %i.azi, %bb.os ], [ %i.ayh, %bb.oe ], [ %i.ayp, %bb.of ], [ %i.ayp, %bb.og ]
  call fastcc void @"_ZN4core3ptr83drop_in_place$LT$alloc..vec..Vec$LT$nls..diagnostic..SerializableDiagnostic$GT$$GT$17h0150b37944347a0eE"(ptr noalias noundef align 8 dereferenceable(24) %i.cw) #77, !noalias !55410, !inline_history !54904
  br label %.body327

bb.pd:                                            ; preds = %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h3ae15b2a279310bbE.exit.thread.i.i", %bb.ov
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bt), !noalias !55608
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bv)
  call void @llvm.experimental.noalias.scope.decl(metadata !55613)
  call void @llvm.experimental.noalias.scope.decl(metadata !55614)
  %i.azz = load ptr, ptr %i.azk, align 8, !alias.scope !55614, !noalias !55410, !nonnull !46, !noundef !46 ; 3 uses
  %i.baa = load i64, ptr %i.azj, align 8, !alias.scope !55614, !noalias !55410, !noundef !46 ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !55615), !noalias !55410
  %i.bab = load i64, ptr %i.art, align 8, !alias.scope !55616, !noalias !55410, !noundef !46 ; 3 uses
  %i.bac = load i64, ptr %i.cz, align 8, !range !76, !alias.scope !55616, !noalias !55410, !noundef !46
  %i.bad = sub i64 %i.bac, %i.bab
  %i.bae = icmp ugt i64 %i.baa, %i.bad
  br i1 %i.bae, label %bb.pe, label %bb.pf, !prof !51

bb.pe:                                            ; preds = %bb.pd
  invoke fastcc void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$7reserve21do_reserve_and_handle17hf28d563308425255E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.cz, i64 noundef %i.bab, i64 noundef %i.baa, i64 noundef 8, i64 noundef 96)
          to label %.noexc201 unwind label %bb.pc

.noexc201:                                        ; preds = %bb.pe
  %.pre.i.i = load i64, ptr %i.art, align 8, !alias.scope !55617, !noalias !55410
  br label %bb.pf

bb.pf:                                            ; preds = %.noexc201, %bb.pd
  %i.baf = phi i64 [ %i.bab, %bb.pd ], [ %.pre.i.i, %.noexc201 ] ; 3 uses
  %i.bag = icmp ult i64 %i.baf, 96076792050570582
  call void @llvm.assume(i1 %i.bag), !noalias !55410
  %i.bah = load ptr, ptr %i.aru, align 8, !alias.scope !55617, !noalias !55410, !nonnull !46, !noundef !46 ; 2 uses
  %i.bai = getelementptr inbounds nuw [96 x i8], ptr %i.bah, i64 %i.baf
  %i.baj = mul i64 %i.baa, 96
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.bai, ptr nonnull readonly align 8 %i.azz, i64 %i.baj, i1 false), !noalias !55618
  %i.bak = add i64 %i.baf, %i.baa                 ; 3 uses
  store i64 %i.bak, ptr %i.art, align 8, !alias.scope !55617, !noalias !55410
  store i64 0, ptr %i.azj, align 8, !alias.scope !55614, !noalias !55410
  %i.bal = icmp ult i64 %i.bak, 96076792050570582
  call void @llvm.assume(i1 %i.bal)
  %i.bam = icmp eq i64 %i.bak, 0
  br i1 %i.bam, label %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17haaa72f2b54e10dbeE.exit.i198", label %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17haaa72f2b54e10dbeE.exit.i191"

"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17haaa72f2b54e10dbeE.exit.i198": ; preds = %bb.pf
  store i64 -9223372036854775808, ptr %0, align 8, !alias.scope !55410
  call void @llvm.experimental.noalias.scope.decl(metadata !55619)
  %.val2.i199 = load i64, ptr %i.cw, align 8, !range !76, !alias.scope !55619, !noalias !55410, !noundef !46 ; 2 uses
  %i.ban = icmp eq i64 %.val2.i199, 0
  br i1 %i.ban, label %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17haaa72f2b54e10dbeE.exit.i", label %bb.pg

bb.pg:                                            ; preds = %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17haaa72f2b54e10dbeE.exit.i198"
  %i.bao = mul nuw i64 %.val2.i199, 96
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.azz, i64 noundef %i.bao, i64 noundef range(i64 1, -9223372036854775807) 8) #66, !noalias !55620
  br label %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17haaa72f2b54e10dbeE.exit.i"

"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17haaa72f2b54e10dbeE.exit.i191": ; preds = %bb.pf
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.cz, i64 24, i1 false), !noalias !55621
  call void @llvm.experimental.noalias.scope.decl(metadata !55622)
  %.val2.i192 = load i64, ptr %i.cw, align 8, !range !76, !alias.scope !55622, !noalias !55410, !noundef !46 ; 2 uses
  %i.bap = icmp eq i64 %.val2.i192, 0
  br i1 %i.bap, label %"_ZN4core3ptr83drop_in_place$LT$alloc..vec..Vec$LT$nls..diagnostic..SerializableDiagnostic$GT$$GT$17h0150b37944347a0eE.exit193", label %bb.ph

bb.ph:                                            ; preds = %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17haaa72f2b54e10dbeE.exit.i191"
  %i.baq = mul nuw i64 %.val2.i192, 96
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.azz, i64 noundef %i.baq, i64 noundef range(i64 1, -9223372036854775807) 8) #66, !noalias !55623
  br label %"_ZN4core3ptr83drop_in_place$LT$alloc..vec..Vec$LT$nls..diagnostic..SerializableDiagnostic$GT$$GT$17h0150b37944347a0eE.exit193"

"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17haaa72f2b54e10dbeE.exit.i": ; preds = %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17haaa72f2b54e10dbeE.exit.i198", %bb.pg
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cw), !noalias !55411
  call void @llvm.experimental.noalias.scope.decl(metadata !55624)
  %.val2.i = load i64, ptr %i.cz, align 8, !range !76, !alias.scope !55624, !noalias !55410, !noundef !46 ; 2 uses
  %i.bar = icmp eq i64 %.val2.i, 0
  br i1 %i.bar, label %_ZN3nls5world5World18typecheck_uncached17hcfd59e8059031cc3E.exit, label %bb.pi

bb.pi:                                            ; preds = %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17haaa72f2b54e10dbeE.exit.i"
  %i.bas = mul nuw i64 %.val2.i, 96
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.bah, i64 noundef %i.bas, i64 noundef range(i64 1, -9223372036854775807) 8) #66, !noalias !55625
  br label %_ZN3nls5world5World18typecheck_uncached17hcfd59e8059031cc3E.exit

"_ZN4core3ptr83drop_in_place$LT$alloc..vec..Vec$LT$nls..diagnostic..SerializableDiagnostic$GT$$GT$17h0150b37944347a0eE.exit193": ; preds = %bb.ph, %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17haaa72f2b54e10dbeE.exit.i191"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cw), !noalias !55411
  br label %_ZN3nls5world5World18typecheck_uncached17hcfd59e8059031cc3E.exit

bb.pj:                                            ; preds = %"_ZN4core3ptr89drop_in_place$LT$alloc..vec..into_iter..IntoIter$LT$nls..analysis..AnalysisTarget$GT$$GT$17h23933228f53ca6aaE.exit.i.i", %bb.nu
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bn), !noalias !55581
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bf), !noalias !55580
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bp)
  %i.bat = icmp eq ptr %.sroa.062.1.i825, %i.awx  ; 2 uses
  %.sroa.062.1.i.idx = select i1 %i.bat, i64 0, i64 96
  %.sroa.062.1.i = getelementptr inbounds nuw i8, ptr %.sroa.062.1.i825, i64 %.sroa.062.1.i.idx
  br i1 %i.bat, label %._crit_edge828, label %bb.nt

bb.pk:                                            ; preds = %select.unfold725
  %i.bau = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bav = icmp eq i64 %.sroa.0526.0, 0
  br i1 %i.bav, label %.body327, label %bb.pl

bb.pl:                                            ; preds = %bb.pk
  %i.baw = shl nuw i64 %.sroa.0526.0, 3
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.7528.0) ], !noalias !55410
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.7528.0, i64 noundef %i.baw, i64 noundef range(i64 1, -9223372036854775807) 4) #66, !noalias !55410
  br label %.body327

bb.pm:                                            ; preds = %"_ZN4core3ptr89drop_in_place$LT$alloc..vec..into_iter..IntoIter$LT$nls..analysis..AnalysisTarget$GT$$GT$17h23933228f53ca6aaE.exit.i.i320", %bb.la
  call void @llvm.lifetime.end.p0(ptr nonnull %i.as), !noalias !55490
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ak), !noalias !55489
  call void @llvm.lifetime.end.p0(ptr nonnull %i.au)
  %i.bax = icmp eq ptr %.sroa.061.1.i817, %i.ape  ; 2 uses
  %.sroa.061.1.i.idx = select i1 %i.bax, i64 0, i64 96
  %.sroa.061.1.i = getelementptr inbounds nuw i8, ptr %.sroa.061.1.i817, i64 %.sroa.061.1.i.idx
  br i1 %i.bax, label %._crit_edge, label %bb.kz

.body327:                                         ; preds = %.body204, %bb.pl, %bb.pk, %bb.nr, %.body.i.i.i.i240, %.loopexit.split-lp734.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.mr, %.body423, %bb.mq, %bb.lz, %bb.ly, %bb.lm, %bb.ll, %bb.lk, %bb.mb
  %.pn72.i = phi { ptr, i32 } [ %.pn.i.i.i.i.i.i241, %.body.i.i.i.i240 ], [ %eh.lpad-body205, %.body204 ], [ %i.aqv, %bb.lm ], [ %eh.lpad-body.i.i.i295, %bb.lz ], [ %i.aro, %bb.ly ], [ %i.aqn, %bb.lk ], [ %i.aqv, %bb.ll ], [ %i.arw, %bb.mb ], [ %lpad.loopexit.split-lp1521, %bb.mq ], [ %lpad.loopexit.split-lp1521, %.body423 ], [ %lpad.loopexit.split-lp1529, %bb.mr ], [ %lpad.loopexit.split-lp1529, %.loopexit.split-lp734.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ], [ %.pn.ph.i.i.i.i220, %bb.nr ], [ %i.bau, %bb.pk ], [ %i.bau, %bb.pl ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !55626)
  %i.bay = getelementptr inbounds nuw i8, ptr %i.cz, i64 8
  %.val.i = load ptr, ptr %i.bay, align 8, !alias.scope !55626, !noalias !55410, !nonnull !46, !noundef !46 ; 2 uses
  %i.baz = getelementptr inbounds nuw i8, ptr %i.cz, i64 16
  %.val1.i = load i64, ptr %i.baz, align 8, !alias.scope !55626, !noalias !55410, !noundef !46 ; 2 uses
  %i.bba = icmp eq i64 %.val1.i, 0
  br i1 %i.bba, label %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17haaa72f2b54e10dbeE.exit.i1088", label %.lr.ph.i.i.i1087

.lr.ph.i.i.i1087:                                 ; preds = %.body327, %.lr.ph.i.i.i1087
  %.sroa.0.07.i.i.i = phi i64 [ %i.bbc, %.lr.ph.i.i.i1087 ], [ 0, %.body327 ] ; 2 uses
  %i.bbb = getelementptr inbounds nuw [96 x i8], ptr %.val.i, i64 %.sroa.0.07.i.i.i
  %i.bbc = add nuw i64 %.sroa.0.07.i.i.i, 1       ; 2 uses
  call fastcc void @"_ZN4core3ptr60drop_in_place$LT$nls..diagnostic..SerializableDiagnostic$GT$17h52de24b43516f232E"(ptr noalias noundef readonly align 8 dereferenceable(96) %i.bbb), !noalias !55627
  %i.bbd = icmp eq i64 %i.bbc, %.val1.i
  br i1 %i.bbd, label %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17haaa72f2b54e10dbeE.exit.i1088", label %.lr.ph.i.i.i1087

"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17haaa72f2b54e10dbeE.exit.i1088": ; preds = %.lr.ph.i.i.i1087, %.body327
  %.val2.i1089 = load i64, ptr %i.cz, align 8, !range !76, !alias.scope !55626, !noalias !55410, !noundef !46 ; 2 uses
  %i.bbe = icmp eq i64 %.val2.i1089, 0
  br i1 %i.bbe, label %common.resume, label %bb.pn

bb.pn:                                            ; preds = %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17haaa72f2b54e10dbeE.exit.i1088"
  %i.bbf = mul nuw i64 %.val2.i1089, 96
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i, i64 noundef %i.bbf, i64 noundef range(i64 1, -9223372036854775807) 8) #66, !noalias !55627
  br label %common.resume

_ZN3nls5world5World18typecheck_uncached17hcfd59e8059031cc3E.exit: ; preds = %bb.pi, %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17haaa72f2b54e10dbeE.exit.i", %"_ZN4core3ptr83drop_in_place$LT$alloc..vec..Vec$LT$nls..diagnostic..SerializableDiagnostic$GT$$GT$17h0150b37944347a0eE.exit193"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cz), !noalias !55411
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cy)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.da)
  br label %bb.pt

bb.po:                                            ; preds = %bb.hs
  %i.bbg = getelementptr inbounds nuw i8, ptr %.sroa.0.1.i.ph, i64 408
  %i.bbh = load i64, ptr %i.bbg, align 8, !noundef !46 ; 7 uses
  %i.bbi = icmp ult i64 %i.bbh, 96076792050570582
  tail call void @llvm.assume(i1 %i.bbi)
  %i.bbj = icmp eq i64 %i.bbh, 0
  br i1 %i.bbj, label %bb.pp, label %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i

bb.pp:                                            ; preds = %bb.po
  store i64 -9223372036854775808, ptr %0, align 8
  br label %bb.pt

_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i: ; preds = %bb.po
  %i.bbk = getelementptr inbounds nuw i8, ptr %.sroa.0.1.i.ph, i64 400
  %i.bbl = load ptr, ptr %i.bbk, align 8, !nonnull !46, !noundef !46 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cv), !noalias !55628
  %i.bbm = mul nuw nsw i64 %i.bbh, 96             ; 2 uses
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #66, !noalias !55629
  %i.bbn = tail call noundef align 8 ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef %i.bbm, i64 noundef range(i64 1, 9) 8) #66, !noalias !55629 ; 3 uses
  %i.bbo = icmp eq ptr %i.bbn, null
  br i1 %i.bbo, label %bb.pq, label %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17hf24663954ed2e8caE.exit.i"

bb.pq:                                            ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i
  tail call void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef 8, i64 %i.bbm, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @2389) #75, !noalias !55628
  unreachable

"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17hf24663954ed2e8caE.exit.i": ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i
  store i64 %i.bbh, ptr %i.cv, align 8, !noalias !55628
  %i.bbp = getelementptr inbounds nuw i8, ptr %i.cv, i64 8
  store ptr %i.bbn, ptr %i.bbp, align 8, !noalias !55628
  %i.bbq = getelementptr inbounds nuw i8, ptr %i.cv, i64 16 ; 2 uses
  %3 = getelementptr inbounds nuw [96 x i8], ptr %i.bbl, i64 %i.bbh
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17hf24663954ed2e8caE.exit.i", %bb.pr
  %.sroa.012.023.i = phi ptr [ %i.bbs, %bb.pr ], [ %i.bbl, %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17hf24663954ed2e8caE.exit.i" ] ; 3 uses
  %.sroa.7.022.i = phi i64 [ %i.bbr, %bb.pr ], [ 0, %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17hf24663954ed2e8caE.exit.i" ] ; 3 uses
  %.sroa.10.021.i = phi i64 [ %4, %bb.pr ], [ %i.bbh, %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17hf24663954ed2e8caE.exit.i" ]
  %4 = add nsw i64 %.sroa.10.021.i, -1            ; 2 uses
  %5 = icmp eq ptr %.sroa.012.023.i, %3
  br i1 %5, label %"_ZN87_$LT$T$u20$as$u20$alloc..slice..$LT$impl$u20$$u5b$T$u5d$$GT$..to_vec_in..ConvertVec$GT$6to_vec17hef49bc4e2b161d4dE.exit", label %6

6:                                                ; preds = %.lr.ph.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cu), !noalias !55628
  invoke fastcc void @"_ZN78_$LT$nls..diagnostic..SerializableDiagnostic$u20$as$u20$core..clone..Clone$GT$5clone17h56563bf4a099406dE"(ptr noalias noundef align 8 captures(address) dereferenceable(96) %i.cu, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(96) %.sroa.012.023.i)
          to label %bb.pr unwind label %bb.ps, !noalias !55630

bb.pr:                                            ; preds = %6
  %i.bbr = add nuw nsw i64 %.sroa.7.022.i, 1
  %i.bbs = getelementptr inbounds nuw i8, ptr %.sroa.012.023.i, i64 96
  %i.bbt = getelementptr inbounds nuw [96 x i8], ptr %i.bbn, i64 %.sroa.7.022.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %i.bbt, ptr noundef nonnull align 8 dereferenceable(96) %i.cu, i64 96, i1 false), !noalias !55630
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cu), !noalias !55628
  %i.bbu = icmp eq i64 %4, 0
  br i1 %i.bbu, label %"_ZN87_$LT$T$u20$as$u20$alloc..slice..$LT$impl$u20$$u5b$T$u5d$$GT$..to_vec_in..ConvertVec$GT$6to_vec17hef49bc4e2b161d4dE.exit", label %.lr.ph.i

bb.ps:                                            ; preds = %6
  %lpad.loopexit.i = landingpad { ptr, i32 }
          cleanup
  store i64 %.sroa.7.022.i, ptr %i.bbq, align 8, !alias.scope !55631, !noalias !55628
  call fastcc void @"_ZN4core3ptr83drop_in_place$LT$alloc..vec..Vec$LT$nls..diagnostic..SerializableDiagnostic$GT$$GT$17h0150b37944347a0eE"(ptr noalias noundef align 8 dereferenceable(24) %i.cv) #77, !noalias !55630
  br label %common.resume

"_ZN87_$LT$T$u20$as$u20$alloc..slice..$LT$impl$u20$$u5b$T$u5d$$GT$..to_vec_in..ConvertVec$GT$6to_vec17hef49bc4e2b161d4dE.exit": ; preds = %.lr.ph.i, %bb.pr
  store i64 %i.bbh, ptr %i.bbq, align 8, !noalias !55628
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.cv, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cv), !noalias !55628
  br label %bb.pt

bb.pt:                                            ; preds = %_ZN3nls5world5World18typecheck_uncached17hcfd59e8059031cc3E.exit, %"_ZN87_$LT$T$u20$as$u20$alloc..slice..$LT$impl$u20$$u5b$T$u5d$$GT$..to_vec_in..ConvertVec$GT$6to_vec17hef49bc4e2b161d4dE.exit", %bb.pp, %_ZN3nls5world5World16check_non_nickel17h510af6716089dab7E.exit
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_ZN3nls6server6Server14handle_request17h6f88915bf448a11bE(ptr noalias noundef nonnull align 8 dereferenceable(1096) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(address) dead_on_return dereferenceable(80) %1) unnamed_addr #0 personality ptr @rust_eh_personality !guid !57393 {
bb.a:
  %i.a = alloca [0 x i8], align 1                 ; 18 uses
  %i.b = alloca [72 x i8], align 8                ; 12 uses
  %i.c = alloca [32 x i8], align 8                ; 7 uses
  %i.d = alloca [24 x i8], align 8                ; 6 uses
  %i.e = alloca [32 x i8], align 8                ; 6 uses
  %i.f = alloca [48 x i8], align 8                ; 4 uses
  %i.g = alloca [48 x i8], align 8                ; 7 uses
  %i.h = alloca [48 x i8], align 8                ; 15 uses
  %i.i = alloca [72 x i8], align 8                ; 12 uses
  %i.j = alloca [32 x i8], align 8                ; 7 uses
  %i.k = alloca [24 x i8], align 8                ; 6 uses
  %i.l = alloca [32 x i8], align 8                ; 6 uses
  %i.m = alloca [48 x i8], align 8                ; 4 uses
  %i.n = alloca [48 x i8], align 8                ; 7 uses
  %i.o = alloca [48 x i8], align 8                ; 15 uses
  %i.p = alloca [64 x i8], align 8                ; 11 uses
  %i.q = alloca [64 x i8], align 8                ; 11 uses
  %i.r = alloca [72 x i8], align 8                ; 6 uses
  %i.s = alloca [32 x i8], align 8                ; 7 uses
  %i.t = alloca [24 x i8], align 8                ; 6 uses
  %i.u = alloca [32 x i8], align 8                ; 6 uses
  %i.v = alloca [48 x i8], align 8                ; 4 uses
  %i.w = alloca [48 x i8], align 8                ; 10 uses
  %i.x = alloca [8 x i8], align 8                 ; 4 uses
  %i.y = alloca [32 x i8], align 8                ; 18 uses
  %i.z = alloca [24 x i8], align 8                ; 4 uses
  %i.aa = alloca [48 x i8], align 8               ; 5 uses
  %i.ab = alloca [96 x i8], align 8               ; 13 uses
  %i.ac = alloca [120 x i8], align 8              ; 8 uses
  %i.ad = alloca [24 x i8], align 8               ; 6 uses
  %i.ae = alloca [128 x i8], align 8              ; 18 uses
  %i.af = alloca [32 x i8], align 8               ; 9 uses
  %i.ag = alloca [32 x i8], align 8               ; 10 uses
  %i.ah = alloca [32 x i8], align 8               ; 9 uses
  %i.ai = alloca [32 x i8], align 8               ; 10 uses
  %i.aj = alloca [32 x i8], align 8               ; 6 uses
  %i.ak = alloca [32 x i8], align 8               ; 6 uses
  %i.al = alloca [24 x i8], align 8               ; 6 uses
  %i.am = alloca [32 x i8], align 8               ; 5 uses
  %i.an = alloca [24 x i8], align 8               ; 6 uses
  %i.ao = alloca [24 x i8], align 8               ; 6 uses
  %.sroa.11.i.i.i639 = alloca [72 x i8], align 8  ; 5 uses
  %i.ap = alloca [32 x i8], align 8               ; 8 uses
  %i.aq = alloca [32 x i8], align 8               ; 10 uses
  %i.ar = alloca [64 x i8], align 8               ; 10 uses
  %i.as = alloca [88 x i8], align 8               ; 7 uses
  %i.at = alloca [24 x i8], align 8               ; 11 uses
  %.sroa.19.i.i.i640 = alloca [72 x i8], align 8  ; 5 uses
  %.sroa.25.i.i = alloca [72 x i8], align 8       ; 7 uses
  %i.au = alloca [184 x i8], align 8              ; 20 uses
  %i.av = alloca [104 x i8], align 8              ; 11 uses
  %i.aw = alloca [24 x i8], align 8               ; 6 uses
  %i.ax = alloca [24 x i8], align 8               ; 8 uses
  %i.ay = alloca [24 x i8], align 8               ; 8 uses
  %i.az = alloca [24 x i8], align 8               ; 8 uses
  %i.ba = alloca [8 x i8], align 8                ; 4 uses
  %i.bb = alloca [32 x i8], align 8               ; 6 uses
  %i.bc = alloca [24 x i8], align 8               ; 4 uses
  %i.bd = alloca [16 x i8], align 4               ; 5 uses
  %i.be = alloca [472 x i8], align 8              ; 11 uses
  %i.bf = alloca [24 x i8], align 8               ; 4 uses
  %i.bg = alloca [16 x i8], align 4               ; 6 uses
  %i.bh = alloca [24 x i8], align 8               ; 10 uses
  %i.bi = alloca [472 x i8], align 8              ; 25 uses
  %i.bj = alloca [64 x i8], align 8               ; 7 uses
  %i.bk = alloca [64 x i8], align 8               ; 10 uses
  %.sroa.815.i.i.i566 = alloca [20 x i8], align 4 ; 5 uses
  %.sroa.5.i = alloca [20 x i8], align 4          ; 4 uses
  %.sroa.638.i = alloca [12 x i8], align 4        ; 4 uses
  %i.bl = alloca [24 x i8], align 8               ; 5 uses
  %i.bm = alloca [64 x i8], align 8               ; 4 uses
  %i.bn = alloca [112 x i8], align 8              ; 7 uses
  %i.bo = alloca [128 x i8], align 8              ; 8 uses
  %i.bp = alloca [120 x i8], align 8              ; 8 uses
  %i.bq = alloca [24 x i8], align 8               ; 6 uses
  %i.br = alloca [16 x i8], align 8               ; 4 uses
  %i.bs = alloca [88 x i8], align 8               ; 7 uses
  %.sroa.8293.i = alloca [72 x i8], align 8       ; 5 uses
  %i.bt = alloca [88 x i8], align 8               ; 6 uses
  %i.bu = alloca [48 x i8], align 8               ; 13 uses
  %.sroa.635.i = alloca [16 x i8], align 8        ; 5 uses
  %i.bv = alloca [24 x i8], align 8               ; 14 uses
  %.sroa.15.i567 = alloca [20 x i8], align 4      ; 7 uses
  %.sroa.610.sroa.8.i568 = alloca [20 x i8], align 4 ; 8 uses
  %i.bw = alloca [40 x i8], align 8               ; 8 uses
  %i.bx = alloca [112 x i8], align 8              ; 8 uses
  %i.by = alloca [128 x i8], align 8              ; 18 uses
  %i.bz = alloca [32 x i8], align 8               ; 8 uses
  %i.ca = alloca [32 x i8], align 8               ; 6 uses
  %i.cb = alloca [24 x i8], align 8               ; 6 uses
  %i.cc = alloca [32 x i8], align 8               ; 5 uses
  %i.cd = alloca [24 x i8], align 8               ; 7 uses
  %i.ce = alloca [96 x i8], align 8               ; 7 uses
  %.sroa.10179.i.i.i = alloca [80 x i8], align 8  ; 5 uses
  %i.cf = alloca [32 x i8], align 8               ; 8 uses
  %i.cg = alloca [32 x i8], align 8               ; 10 uses
  %i.ch = alloca [64 x i8], align 8               ; 10 uses
  %i.ci = alloca [24 x i8], align 8               ; 11 uses
  %.sroa.17.i.i458 = alloca [80 x i8], align 8    ; 7 uses
  %i.cj = alloca [144 x i8], align 8              ; 14 uses
  %i.ck = alloca [104 x i8], align 8              ; 14 uses
  %i.cl = alloca [24 x i8], align 8               ; 6 uses
  %i.cm = alloca [24 x i8], align 8               ; 5 uses
  %i.cn = alloca [112 x i8], align 8              ; 8 uses
  %i.co = alloca [24 x i8], align 8               ; 6 uses
  %i.cp = alloca [8 x i8], align 8                ; 4 uses
  %i.cq = alloca [64 x i8], align 8               ; 4 uses
  %i.cr = alloca [112 x i8], align 8              ; 7 uses
  %i.cs = alloca [112 x i8], align 8              ; 5 uses
  %i.ct = alloca [64 x i8], align 8               ; 4 uses
  %i.cu = alloca [120 x i8], align 8              ; 8 uses
  %i.cv = alloca [32 x i8], align 8               ; 12 uses
  %i.cw = alloca [88 x i8], align 8               ; 6 uses
  %i.cx = alloca [88 x i8], align 8               ; 11 uses
  %i.cy = alloca [128 x i8], align 8              ; 18 uses
  %i.cz = alloca [32 x i8], align 8               ; 7 uses
  %i.da = alloca [32 x i8], align 8               ; 7 uses
  %i.db = alloca [24 x i8], align 8               ; 12 uses
  %i.dc = alloca [24 x i8], align 8               ; 7 uses
  %i.dd = alloca [32 x i8], align 8               ; 8 uses
  %i.de = alloca [24 x i8], align 8               ; 6 uses
  %i.df = alloca [32 x i8], align 8               ; 9 uses
  %i.dg = alloca [32 x i8], align 8               ; 8 uses
  %i.dh = alloca [32 x i8], align 8               ; 6 uses
  %i.di = alloca [24 x i8], align 8               ; 6 uses
  %i.dj = alloca [32 x i8], align 8               ; 5 uses
  %i.dk = alloca [24 x i8], align 8               ; 7 uses
  %i.dl = alloca [24 x i8], align 8               ; 10 uses
  %i.dm = alloca [32 x i8], align 8               ; 8 uses
  %i.dn = alloca [32 x i8], align 8               ; 10 uses
  %i.do = alloca [64 x i8], align 8               ; 10 uses
  %i.dp = alloca [24 x i8], align 8               ; 11 uses
  %.sroa.20.i.i = alloca [24 x i8], align 8       ; 6 uses
  %i.dq = alloca [72 x i8], align 8               ; 12 uses
  %i.dr = alloca [104 x i8], align 8              ; 14 uses
  %i.ds = alloca [24 x i8], align 8               ; 6 uses
  %i.dt = alloca [8 x i8], align 8                ; 4 uses
  %i.du = alloca [32 x i8], align 8               ; 6 uses
  %i.dv = alloca [64 x i8], align 8               ; 4 uses
  %i.dw = alloca [112 x i8], align 8              ; 6 uses
  %i.dx = alloca [64 x i8], align 8               ; 4 uses
  %i.dy = alloca [112 x i8], align 8              ; 7 uses
  %i.dz = alloca [112 x i8], align 8              ; 13 uses
  %i.ea = alloca [120 x i8], align 8              ; 8 uses
  %i.eb = alloca [24 x i8], align 8               ; 9 uses
  %i.ec = alloca [64 x i8], align 8               ; 7 uses
  %i.ed = alloca [112 x i8], align 8              ; 8 uses
  %i.ee = alloca [128 x i8], align 8              ; 18 uses
  %i.ef = alloca [32 x i8], align 8               ; 6 uses
  %i.eg = alloca [32 x i8], align 8               ; 6 uses
  %i.eh = alloca [24 x i8], align 8               ; 6 uses
  %i.ei = alloca [32 x i8], align 8               ; 5 uses
  %i.ej = alloca [24 x i8], align 8               ; 7 uses
  %i.ek = alloca [24 x i8], align 8               ; 7 uses
  %.sroa.11.i.i.i = alloca [72 x i8], align 8     ; 5 uses
  %i.el = alloca [32 x i8], align 8               ; 8 uses
  %i.em = alloca [32 x i8], align 8               ; 10 uses
  %i.en = alloca [64 x i8], align 8               ; 10 uses
  %i.eo = alloca [88 x i8], align 8               ; 7 uses
  %i.ep = alloca [24 x i8], align 8               ; 11 uses
  %.sroa.19.i.i.i = alloca [72 x i8], align 8     ; 5 uses
  %.sroa.17.i.i = alloca [72 x i8], align 8       ; 7 uses
  %i.eq = alloca [136 x i8], align 8              ; 14 uses
  %i.er = alloca [104 x i8], align 8              ; 11 uses
  %i.es = alloca [24 x i8], align 8               ; 6 uses
  %i.et = alloca [24 x i8], align 4               ; 6 uses
  %i.eu = alloca [24 x i8], align 8               ; 10 uses
  %i.ev = alloca [24 x i8], align 8               ; 5 uses
  %i.ew = alloca [24 x i8], align 8               ; 5 uses
  %.sroa.16.i.i.i.i.i.i.i.i = alloca [17 x i8], align 8 ; 5 uses
  %.sroa.11.i.sroa.17.i.i.i.i.i.i.i.i = alloca [17 x i8], align 8 ; 5 uses
  %.sroa.74.sroa.15.i.i.i.i.i.i.i.i = alloca [17 x i8], align 8 ; 4 uses
  %i.ex = alloca [104 x i8], align 8              ; 7 uses
  %.sroa.74.i.i.i.i.i.i = alloca [88 x i8], align 8 ; 4 uses
  %i.ey = alloca [24 x i8], align 8               ; 9 uses
  %i.ez = alloca [8 x i8], align 8                ; 5 uses
  %i.fa = alloca [8 x i8], align 8                ; 6 uses
  %i.fb = alloca [64 x i8], align 8               ; 7 uses
  %i.fc = alloca [64 x i8], align 8               ; 10 uses
  %.sroa.815.i.i.i = alloca [20 x i8], align 4    ; 5 uses
  %i.fd = alloca [24 x i8], align 8               ; 6 uses
  %i.fe = alloca [64 x i8], align 8               ; 4 uses
  %i.ff = alloca [112 x i8], align 8              ; 7 uses
  %i.fg = alloca [120 x i8], align 8              ; 12 uses
  %i.fh = alloca [104 x i8], align 8              ; 5 uses
  %i.fi = alloca [104 x i8], align 8              ; 14 uses
  %i.fj = alloca [104 x i8], align 8              ; 4 uses
  %i.fk = alloca [32 x i8], align 8               ; 4 uses
end_hunk_0
