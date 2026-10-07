Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/nickel-rs/original/nickel-0bf7be8da7660119.nickel.eb3b3307132f046e-cgu.0?download=true
inline.NumInlined: 19446
inline.NumDeleted: 8632
loop-unroll.NumCompletelyUnrolled: 43
loop-unroll.NumRuntimeUnrolled: 85
loop-unroll.NumUnrolled: 133
begin_hunk_0_@"_ZN73_$LT$nickel..input..StdinFormat$u20$as$u20$clap_builder..derive..Args$GT$12augment_args17h9df2f4b302f455efE":.split.i

bb.af:                                            ; preds = %"_ZN123_$LT$I$u20$as$u20$clap_builder..builder..resettable..IntoResettable$LT$clap_builder..builder..styled_str..StyledStr$GT$$GT$15into_resettable17h40e8078cd7c2a3feE.exit.i63"
  %.sroa.4.0..sroa_idx.i64 = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6.i62, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.4.0..sroa_idx.i64, i64 16, i1 false), !noalias !62955
  br label %bb.ag

bb.ag:                                            ; preds = %bb.af, %"_ZN123_$LT$I$u20$as$u20$clap_builder..builder..resettable..IntoResettable$LT$clap_builder..builder..styled_str..StyledStr$GT$$GT$15into_resettable17h40e8078cd7c2a3feE.exit.i63"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !62955
  %i.bx = getelementptr inbounds nuw i8, ptr %i.t, i64 512 ; 2 uses
  %.val.i65 = load i64, ptr %i.bx, align 8, !range !57, !alias.scope !62954, !noalias !62957, !noundef !34 ; 2 uses
  %switch.i66 = icmp sgt i64 %.val.i65, 0
  br i1 %switch.i66, label %bb.ah, label %_ZN12clap_builder7builder7command7Command5about17ha8d8b403a2926791E.exit

bb.ah:                                            ; preds = %bb.ag
  %i.by = getelementptr inbounds nuw i8, ptr %i.t, i64 520
  %.val9.i68 = load ptr, ptr %i.by, align 8, !alias.scope !62954, !noalias !62957, !nonnull !34, !noundef !34
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val9.i68, i64 noundef %.val.i65, i64 noundef range(i64 1, -9223372036854775807) 1) #53, !noalias !62958
  br label %_ZN12clap_builder7builder7command7Command5about17ha8d8b403a2926791E.exit

bb.ai:                                            ; preds = %bb.ae
  %i.bz = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #60, !noalias !62953
  unreachable

common.resume:                                    ; preds = %.thread158, %bb.ar, %.body.i, %bb.ab, %bb.aj, %bb.ae
  %common.resume.op = phi { ptr, i32 } [ %i.ca, %bb.aj ], [ %i.bu, %bb.ae ], [ %.pn157, %.thread158 ], [ %i.ae, %.body.i ], [ %i.ci, %bb.ar ], [ %i.bs, %bb.ab ]
  resume { ptr, i32 } %common.resume.op

_ZN12clap_builder7builder7command7Command5about17ha8d8b403a2926791E.exit: ; preds = %bb.ag, %bb.ah
  store i64 %i.bv, ptr %i.bx, align 8, !alias.scope !62954, !noalias !62957
  %.sroa.6.0..sroa_idx4.i67 = getelementptr inbounds nuw i8, ptr %i.t, i64 520
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6.0..sroa_idx4.i67, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6.i62, i64 16, i1 false), !noalias !62957
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6.i62)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(776) %i.j, ptr noundef nonnull align 8 dereferenceable(776) %i.t, i64 776, i1 false), !alias.scope !62956, !noalias !62959
  call void @llvm.experimental.noalias.scope.decl(metadata !62960)
  call void @llvm.experimental.noalias.scope.decl(metadata !62961)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6.i69)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !62962
  invoke void @"_ZN157_$LT$core..option..Option$LT$$RF$str$GT$$u20$as$u20$clap_builder..builder..resettable..IntoResettable$LT$clap_builder..builder..styled_str..StyledStr$GT$$GT$15into_resettable17h29f2706288a47eabE"(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.a, ptr noalias noundef readonly align 1 captures(address, read_provenance) null, i64 undef)
          to label %bb.ak unwind label %bb.aj, !noalias !62962

bb.aj:                                            ; preds = %_ZN12clap_builder7builder7command7Command5about17ha8d8b403a2926791E.exit
  %i.ca = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr60drop_in_place$LT$clap_builder..builder..command..Command$GT$17haf02079346ba3f3cE"(ptr noalias noundef nonnull align 8 dereferenceable(776) %i.j) #61
          to label %common.resume unwind label %bb.ao, !noalias !62960

bb.ak:                                            ; preds = %_ZN12clap_builder7builder7command7Command5about17ha8d8b403a2926791E.exit
  %i.cb = load i64, ptr %i.a, align 8, !range !57, !noalias !62962, !noundef !34 ; 2 uses
  %i.cc = icmp eq i64 %i.cb, -9223372036854775808
  br i1 %i.cc, label %bb.am, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %.sroa.4.0..sroa_idx.i70 = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6.i69, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.4.0..sroa_idx.i70, i64 16, i1 false), !noalias !62962
  br label %bb.am

bb.am:                                            ; preds = %bb.al, %bb.ak
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !62962
  %i.cd = getelementptr inbounds nuw i8, ptr %i.j, i64 536 ; 2 uses
  %.val.i71 = load i64, ptr %i.cd, align 8, !range !57, !alias.scope !62961, !noalias !62960, !noundef !34 ; 2 uses
  %switch.i72 = icmp sgt i64 %.val.i71, 0
  br i1 %switch.i72, label %bb.an, label %_ZN12clap_builder7builder7command7Command10long_about17hdbec3a7cbfff4f26E.exit

bb.an:                                            ; preds = %bb.am
  %i.ce = getelementptr inbounds nuw i8, ptr %i.j, i64 544
  %.val9.i74 = load ptr, ptr %i.ce, align 8, !alias.scope !62961, !noalias !62960, !nonnull !34, !noundef !34
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val9.i74, i64 noundef %.val.i71, i64 noundef range(i64 1, -9223372036854775807) 1) #53, !noalias !62963
  br label %_ZN12clap_builder7builder7command7Command10long_about17hdbec3a7cbfff4f26E.exit

bb.ao:                                            ; preds = %bb.aj
  %i.cf = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #60, !noalias !62960
  unreachable

_ZN12clap_builder7builder7command7Command10long_about17hdbec3a7cbfff4f26E.exit: ; preds = %bb.am, %bb.an
  store i64 %i.cb, ptr %i.cd, align 8, !alias.scope !62961, !noalias !62960
  %.sroa.6.0..sroa_idx4.i73 = getelementptr inbounds nuw i8, ptr %i.j, i64 544
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6.0..sroa_idx4.i73, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6.i69, i64 16, i1 false), !noalias !62960
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6.i69)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(776) %0, ptr noundef nonnull align 8 dereferenceable(776) %i.j, i64 776, i1 false), !alias.scope !62962
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  ret void

bb.ap:                                            ; preds = %bb.v
  %i.cg = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr52drop_in_place$LT$clap_builder..builder..arg..Arg$GT$17hea260031b5d1c8f7E"(ptr noalias noundef align 8 dereferenceable(624) %i.l) #61
          to label %.thread158 unwind label %bb.aq

bb.aq:                                            ; preds = %bb.ar, %.thread158, %bb.ap
  %i.ch = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #60
  unreachable

.thread158:                                       ; preds = %bb.w, %bb.ap, %"_ZN4core3ptr47drop_in_place$LT$clap_builder..util..id..Id$GT$17h5a263468ea24d1a5E.exit.i", %bb.m, %bb.g, %.thread167
  %.pn157 = phi { ptr, i32 } [ %i.bm, %"_ZN4core3ptr47drop_in_place$LT$clap_builder..util..id..Id$GT$17h5a263468ea24d1a5E.exit.i" ], [ %i.ag, %.thread167 ], [ %i.au, %bb.m ], [ %i.ao, %bb.g ], [ %i.be, %bb.w ], [ %i.cg, %bb.ap ]
  invoke fastcc void @"_ZN4core3ptr60drop_in_place$LT$clap_builder..builder..command..Command$GT$17haf02079346ba3f3cE"(ptr noalias noundef align 8 dereferenceable(776) %i.s) #61
          to label %common.resume unwind label %bb.aq

bb.ar:                                            ; preds = %.split.i
  %i.ci = landingpad { ptr, i32 }
          cleanup
  store i64 1, ptr %i.i, align 8, !noalias !62913
  call fastcc void @"_ZN4core3ptr92drop_in_place$LT$core..array..iter..IntoIter$LT$clap_builder..util..id..Id$C$1_usize$GT$$GT$17hcd93f20f5979977dE"(ptr noalias noundef align 8 dereferenceable(40) %i.i) #61, !noalias !62913
  invoke fastcc void @"_ZN4core3ptr60drop_in_place$LT$clap_builder..builder..command..Command$GT$17haf02079346ba3f3cE"(ptr noalias noundef align 8 dereferenceable(776) %i.v) #61
          to label %common.resume unwind label %bb.aq
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @"_ZN74_$LT$nickel_lang_core..cache..TermNotFound$u20$as$u20$core..fmt..Debug$GT$3fmt17h8c3c903310643155E"(ptr noalias nonnull readonly align 1 captures(none) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_ZN4core3fmt9Formatter9write_str17haacafd99ed76659fE(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @1103, i64 noundef 12)
  ret i1 %i.a
}

; Function Attrs: inlinehint nofree norecurse nosync nounwind nonlazybind memory(argmem: readwrite, inaccessiblemem: write) uwtable
define internal fastcc void @"_ZN74_$LT$nickel_lang_parser..position..TermPos$u20$as$u20$core..hash..Hash$GT$4hash17hab78bd7ec6c005fdE"(ptr noalias noundef nonnull readonly align 4 captures(none) dereferenceable(16) %0, ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(72) %1) unnamed_addr #34 {
bb.a:
  %i.a = alloca [4 x i8], align 4                 ; 4 uses
  %i.b = alloca [4 x i8], align 4                 ; 4 uses
  %i.c = alloca [4 x i8], align 4                 ; 4 uses
  %i.d = alloca [4 x i8], align 4                 ; 4 uses
  %i.e = alloca [4 x i8], align 4                 ; 4 uses
  %i.f = alloca [4 x i8], align 4                 ; 4 uses
  %i.g = alloca [8 x i8], align 8                 ; 4 uses
  %i.h = load i32, ptr %0, align 4, !range !65, !noundef !34 ; 2 uses
  %i.i = zext nneg i32 %i.h to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !62980
  store i64 %i.i, ptr %i.g, align 8, !noalias !62980
  call fastcc void @"_ZN71_$LT$core..hash..sip..Hasher$LT$S$GT$$u20$as$u20$core..hash..Hasher$GT$5write17h6846a1ced2d81e4eE"(ptr noalias noundef nonnull align 8 dereferenceable(72) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.g, i64 noundef 8)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !62980
  switch i32 %i.h, label %default.unreachable1 [
    i32 0, label %bb.b
    i32 1, label %bb.c
    i32 2, label %bb.d
  ]

default.unreachable1:                             ; preds = %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.k = load i32, ptr %i.j, align 4, !noundef !34
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !62981
  store i32 %i.k, ptr %i.f, align 4, !noalias !62981
  call fastcc void @"_ZN71_$LT$core..hash..sip..Hasher$LT$S$GT$$u20$as$u20$core..hash..Hasher$GT$5write17h6846a1ced2d81e4eE"(ptr noalias noundef nonnull align 8 dereferenceable(72) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.f, i64 noundef 4)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !62981
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.m = load i32, ptr %i.l, align 4, !noundef !34
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !62982
  store i32 %i.m, ptr %i.e, align 4, !noalias !62982
  call fastcc void @"_ZN71_$LT$core..hash..sip..Hasher$LT$S$GT$$u20$as$u20$core..hash..Hasher$GT$5write17h6846a1ced2d81e4eE"(ptr noalias noundef nonnull align 8 dereferenceable(72) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.e, i64 noundef 4)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !62982
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.o = load i32, ptr %i.n, align 4, !noundef !34
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !62983
  store i32 %i.o, ptr %i.d, align 4, !noalias !62983
  call fastcc void @"_ZN71_$LT$core..hash..sip..Hasher$LT$S$GT$$u20$as$u20$core..hash..Hasher$GT$5write17h6846a1ced2d81e4eE"(ptr noalias noundef nonnull align 8 dereferenceable(72) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.d, i64 noundef 4)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !62983
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.q = load i32, ptr %i.p, align 4, !noundef !34
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !62984
  store i32 %i.q, ptr %i.c, align 4, !noalias !62984
  call fastcc void @"_ZN71_$LT$core..hash..sip..Hasher$LT$S$GT$$u20$as$u20$core..hash..Hasher$GT$5write17h6846a1ced2d81e4eE"(ptr noalias noundef nonnull align 8 dereferenceable(72) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.c, i64 noundef 4)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !62984
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.s = load i32, ptr %i.r, align 4, !noundef !34
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !62985
  store i32 %i.s, ptr %i.b, align 4, !noalias !62985
  call fastcc void @"_ZN71_$LT$core..hash..sip..Hasher$LT$S$GT$$u20$as$u20$core..hash..Hasher$GT$5write17h6846a1ced2d81e4eE"(ptr noalias noundef nonnull align 8 dereferenceable(72) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.b, i64 noundef 4)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !62985
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.u = load i32, ptr %i.t, align 4, !noundef !34
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !62986
  store i32 %i.u, ptr %i.a, align 4, !noalias !62986
  call fastcc void @"_ZN71_$LT$core..hash..sip..Hasher$LT$S$GT$$u20$as$u20$core..hash..Hasher$GT$5write17h6846a1ced2d81e4eE"(ptr noalias noundef nonnull align 8 dereferenceable(72) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.a, i64 noundef 4)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !62986
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %bb.a
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal noundef zeroext i1 @"_ZN74_$LT$tempfile..file..PersistError$LT$F$GT$$u20$as$u20$core..fmt..Debug$GT$3fmt17he36040d048cc4188E"(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(40) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #1 {
_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit:
  %i.a = alloca [48 x i8], align 8                ; 8 uses
  %i.b = alloca [16 x i8], align 8                ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr %0, ptr %i.b, align 8
  %.sroa.42.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr @"_ZN58_$LT$std..io..error..Error$u20$as$u20$core..fmt..Debug$GT$3fmt17h62ceb23194058131E", ptr %.sroa.42.0..sroa_idx, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val3 = load ptr, ptr %i.c, align 8
  %.val = load ptr, ptr %1, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !62989
  store ptr @1105, ptr %i.a, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 2, ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.b, ptr %.sroa.7.0..sroa_idx, align 8
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i64 1, ptr %.sroa.8.0..sroa_idx, align 8
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store ptr null, ptr %.sroa.10.0..sroa_idx, align 8
  %i.d = call noundef zeroext i1 @_ZN4core3fmt5write17h80461e1e45e4fdd2E(ptr noundef nonnull align 1 %.val, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %.val3, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.a), !noalias !62989
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !62989
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret i1 %i.d
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc noundef zeroext i1 @"_ZN75_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write..write_fmt..SpecWriteFmt$GT$14spec_write_fmt17h04f63783c54a823cE"(ptr noalias noundef nonnull align 8 dereferenceable(24) %0, ptr noalias noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(48) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.a, ptr noundef nonnull align 8 dereferenceable(48) %1, i64 48, i1 false)
  %i.b = call noundef zeroext i1 @_ZN4core3fmt5write17h80461e1e45e4fdd2E(ptr noundef nonnull align 1 %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) @744, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i1 %i.b
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @"_ZN76_$LT$nickel_lang_core..term..record..Field$u20$as$u20$core..clone..Clone$GT$5clone17hdd3551ea46b2b5fbE"(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(40) %0, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(40) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = alloca [48 x i8], align 8                ; 7 uses
  %i.c = alloca [24 x i8], align 8                ; 4 uses
  %i.d = alloca [8 x i8], align 8                 ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.f = load ptr, ptr %i.e, align 8, !noundef !34 ; 6 uses
  %.not = icmp eq ptr %i.f, null
  br i1 %.not, label %"_ZN81_$LT$nickel_lang_core..eval..value..NickelValue$u20$as$u20$core..clone..Clone$GT$5clone17h7dff85222f529735E.exit", label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = ptrtoint ptr %i.f to i64
  %i.h = and i64 %i.g, 3
  %..i = tail call i64 @llvm.umin.i64(i64 %i.h, i64 2)
  switch i64 %..i, label %"_ZN81_$LT$nickel_lang_core..eval..value..NickelValue$u20$as$u20$core..clone..Clone$GT$5clone17h7dff85222f529735E.exit" [
    i64 2, label %bb.c
    i64 0, label %bb.d
  ], !prof !47

bb.c:                                             ; preds = %bb.b
  call void @_ZN4core6result13unwrap_failed17h0501379eaec3e720E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @767, i64 noundef 43, ptr noundef nonnull align 1 %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @777, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @318) #59
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.i = load i64, ptr %i.f, align 8, !noundef !34 ; 3 uses
  %i.j = and i64 %i.i, 72057594037927935          ; 3 uses
  %i.k = icmp ne i64 %i.j, 0
  tail call void @llvm.assume(i1 %i.k)
  %i.l = add nuw nsw i64 %i.j, 1
  %i.m = and i64 %i.i, 1080863910568919040
  %i.n = icmp ult i64 %i.i, 864691128455135232
  tail call void @llvm.assume(i1 %i.n)
  %i.o = or i64 %i.l, %i.m
  store i64 %i.o, ptr %i.f, align 8
  %i.p = icmp eq i64 %i.j, 72057594037927935
  br i1 %i.p, label %bb.e, label %"_ZN81_$LT$nickel_lang_core..eval..value..NickelValue$u20$as$u20$core..clone..Clone$GT$5clone17h7dff85222f529735E.exit", !prof !37

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr @1344, ptr %i.b, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 1, ptr %i.q, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  store ptr null, ptr %i.r, align 8
  %i.s = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store ptr inttoptr (i64 8 to ptr), ptr %i.s, align 8
  %i.t = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store i64 0, ptr %i.t, align 8
  call void @_ZN4core9panicking9panic_fmt17h92c8e5abe71dd8d1E(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.b, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1345) #59
  unreachable

"_ZN81_$LT$nickel_lang_core..eval..value..NickelValue$u20$as$u20$core..clone..Clone$GT$5clone17h7dff85222f529735E.exit": ; preds = %bb.d, %bb.b, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.v = load ptr, ptr %i.u, align 8, !noundef !34 ; 7 uses
  %.not2 = icmp eq ptr %i.v, null                 ; 2 uses
  br i1 %.not2, label %_ZN5alloc2rc10RcInnerPtr10inc_strong17h6c7c81f343502e49E.exit, label %bb.f

bb.f:                                             ; preds = %"_ZN81_$LT$nickel_lang_core..eval..value..NickelValue$u20$as$u20$core..clone..Clone$GT$5clone17h7dff85222f529735E.exit"
  %.val.i = load i64, ptr %i.v, align 8, !noundef !34 ; 2 uses
  %i.w = icmp ne i64 %.val.i, 0
  tail call void @llvm.assume(i1 %i.w)
  %i.x = add i64 %.val.i, 1                       ; 2 uses
  store i64 %i.x, ptr %i.v, align 8
  %i.y = icmp eq i64 %i.x, 0
  br i1 %i.y, label %bb.g, label %_ZN5alloc2rc10RcInnerPtr10inc_strong17h6c7c81f343502e49E.exit, !prof !37

bb.g:                                             ; preds = %bb.f
  tail call void @llvm.trap()
  unreachable

_ZN5alloc2rc10RcInnerPtr10inc_strong17h6c7c81f343502e49E.exit: ; preds = %bb.f, %"_ZN81_$LT$nickel_lang_core..eval..value..NickelValue$u20$as$u20$core..clone..Clone$GT$5clone17h7dff85222f529735E.exit"
  store ptr %i.v, ptr %i.d, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val5 = load ptr, ptr %i.z, align 8, !nonnull !34, !noundef !34
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.val6 = load i64, ptr %i.aa, align 8, !noundef !34
  invoke fastcc void @"_ZN67_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..clone..Clone$GT$5clone17ha41514ac4f48693dE"(ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.c, ptr nonnull %.val5, i64 %.val6)
          to label %bb.k unwind label %bb.h

"_ZN4core3ptr67drop_in_place$LT$nickel_lang_core..term..record..SharedMetadata$GT$17h0324633f657496e5E.exit": ; preds = %bb.i, %bb.h, %bb.j
  invoke fastcc void @"_ZN4core3ptr91drop_in_place$LT$core..option..Option$LT$nickel_lang_core..eval..value..NickelValue$GT$$GT$17h67802a781c38fa23E"(ptr %i.f) #61
          to label %bb.m unwind label %bb.l

bb.h:                                             ; preds = %_ZN5alloc2rc10RcInnerPtr10inc_strong17h6c7c81f343502e49E.exit
  %i.ab = landingpad { ptr, i32 }
          cleanup
  br i1 %.not2, label %"_ZN4core3ptr67drop_in_place$LT$nickel_lang_core..term..record..SharedMetadata$GT$17h0324633f657496e5E.exit", label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ac = load i64, ptr %i.v, align 8, !noalias !62998, !noundef !34
  %i.ad = add i64 %i.ac, -1                       ; 2 uses
  store i64 %i.ad, ptr %i.v, align 8, !noalias !62998
  %i.ae = icmp eq i64 %i.ad, 0
  br i1 %i.ae, label %bb.j, label %"_ZN4core3ptr67drop_in_place$LT$nickel_lang_core..term..record..SharedMetadata$GT$17h0324633f657496e5E.exit"

bb.j:                                             ; preds = %bb.i
  invoke void @"_ZN5alloc2rc15Rc$LT$T$C$A$GT$9drop_slow17he282a80f62f516eeE"(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.d)
          to label %"_ZN4core3ptr67drop_in_place$LT$nickel_lang_core..term..record..SharedMetadata$GT$17h0324633f657496e5E.exit" unwind label %bb.l

bb.k:                                             ; preds = %_ZN5alloc2rc10RcInnerPtr10inc_strong17h6c7c81f343502e49E.exit
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %i.f, ptr %i.af, align 8
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %i.v, ptr %i.ag, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  ret void

bb.l:                                             ; preds = %bb.j, %"_ZN4core3ptr67drop_in_place$LT$nickel_lang_core..term..record..SharedMetadata$GT$17h0324633f657496e5E.exit"
  %i.ah = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #60
  unreachable

bb.m:                                             ; preds = %"_ZN4core3ptr67drop_in_place$LT$nickel_lang_core..term..record..SharedMetadata$GT$17h0324633f657496e5E.exit"
  resume { ptr, i32 } %i.ab
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @"_ZN76_$LT$nickel_lang_parser..error..ParseError$u20$as$u20$core..clone..Clone$GT$5clone17h3e614a7f7db1bc7cE"(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(72) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(72) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %.sroa.55 = alloca [12 x i8], align 4           ; 4 uses
  %.sroa.5 = alloca [12 x i8], align 4            ; 4 uses
  %i.c = alloca [24 x i8], align 8                ; 4 uses
  %i.d = alloca [24 x i8], align 8                ; 6 uses
  %i.e = load i32, ptr %1, align 8, !range !138, !noundef !34
  %.sink20.sroa.gep = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.sink20.sroa.gep21 = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  switch i32 %i.e, label %default.unreachable19 [
    i32 0, label %bb.b
    i32 1, label %bb.c
    i32 2, label %bb.d
    i32 3, label %bb.e
    i32 4, label %bb.f
    i32 5, label %bb.g
    i32 6, label %bb.h
    i32 7, label %bb.i
    i32 8, label %bb.j
    i32 9, label %bb.k
    i32 10, label %bb.n
    i32 11, label %bb.o
    i32 12, label %bb.p
    i32 13, label %bb.q
    i32 14, label %bb.r
    i32 15, label %bb.s
    i32 16, label %bb.t
    i32 17, label %bb.u
    i32 18, label %bb.v
    i32 19, label %bb.w
    i32 20, label %bb.x
    i32 21, label %bb.y
    i32 22, label %bb.z
    i32 23, label %bb.aa
    i32 24, label %bb.ab
  ]

default.unreachable19:                            ; preds = %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.g = load i32, ptr %i.f, align 4, !noundef !34
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.val10 = load ptr, ptr %i.h, align 8, !nonnull !34, !noundef !34
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.val11 = load i64, ptr %i.i, align 8, !noundef !34
end_hunk_0
