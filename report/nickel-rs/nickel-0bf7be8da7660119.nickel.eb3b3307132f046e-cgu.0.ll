Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/nickel-rs/original/nickel-0bf7be8da7660119.nickel.eb3b3307132f046e-cgu.0?download=true
inline.NumInlined: 19446
inline.NumDeleted: 8632
loop-unroll.NumCompletelyUnrolled: 43
loop-unroll.NumRuntimeUnrolled: 85
loop-unroll.NumUnrolled: 133
begin_hunk_0_@"_ZN16nickel_lang_core9serialize99_$LT$impl$u20$serde_core..ser..Serialize$u20$for$u20$nickel_lang_core..eval..value..NickelValue$GT$9serialize17h4d0cdcded482bbc9E":bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t), !noalias !30158
  store i64 -9223372036854775801, ptr %i.t, align 8, !noalias !30158
  call void @_ZN10serde_yaml7libyaml7emitter7Emitter4emit17h53d4955187604356E(ptr noalias noundef nonnull sret([80 x i8]) align 8 captures(address) dereferenceable(80) %i.u, ptr noalias noundef nonnull align 8 dereferenceable(8) %i.gh, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(48) %i.t)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t), !noalias !30158
  %i.gi = getelementptr inbounds nuw i8, ptr %i.u, i64 72
  %i.gj = load i32, ptr %i.gi, align 8, !range !58, !noalias !30158, !noundef !34
  %.not.i.i58 = icmp eq i32 %i.gj, 9
  br i1 %.not.i.i58, label %bb.ag, label %bb.af

bb.af:                                            ; preds = %bb.ae
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s), !noalias !30158
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.s, ptr noundef nonnull align 8 dereferenceable(80) %i.u, i64 80, i1 false), !noalias !30158
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u), !noalias !30158
  %i.gk = call noundef nonnull align 8 ptr @"_ZN107_$LT$serde_yaml..error..Error$u20$as$u20$core..convert..From$LT$serde_yaml..libyaml..emitter..Error$GT$$GT$4from17h7289f7533d4a6ad5E"(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(80) %i.s)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !noalias !30158
  br label %"_ZN98_$LT$$RF$mut$u20$serde_yaml..ser..Serializer$LT$W$GT$$u20$as$u20$serde_core..ser..SerializeSeq$GT$3end17he86cabd1f60de295E.exit"

bb.ag:                                            ; preds = %bb.ae
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u), !noalias !30158
  call void @llvm.experimental.noalias.scope.decl(metadata !30159)
  %i.gl = getelementptr inbounds nuw i8, ptr %i.ft, i64 32 ; 2 uses
  %i.gm = load i64, ptr %i.gl, align 8, !alias.scope !30160, !noundef !34
  %i.gn = add i64 %i.gm, -1                       ; 2 uses
  store i64 %i.gn, ptr %i.gl, align 8, !alias.scope !30160
  %i.go = icmp eq i64 %i.gn, 0
  br i1 %i.go, label %bb.ah, label %"_ZN98_$LT$$RF$mut$u20$serde_yaml..ser..Serializer$LT$W$GT$$u20$as$u20$serde_core..ser..SerializeSeq$GT$3end17he86cabd1f60de295E.exit"

bb.ah:                                            ; preds = %bb.ag
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r), !noalias !30160
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q), !noalias !30160
  store i64 -9223372036854775804, ptr %i.q, align 8, !noalias !30160
  call void @_ZN10serde_yaml7libyaml7emitter7Emitter4emit17h53d4955187604356E(ptr noalias noundef nonnull sret([80 x i8]) align 8 captures(address) dereferenceable(80) %i.r, ptr noalias noundef nonnull align 8 dereferenceable(8) %i.gh, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(48) %i.q)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !noalias !30160
  %i.gp = getelementptr inbounds nuw i8, ptr %i.r, i64 72
  %i.gq = load i32, ptr %i.gp, align 8, !range !58, !noalias !30160, !noundef !34
  %.not.i.i.i = icmp eq i32 %i.gq, 9
  br i1 %.not.i.i.i, label %bb.aj, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p), !noalias !30160
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.p, ptr noundef nonnull align 8 dereferenceable(80) %i.r, i64 80, i1 false), !noalias !30160
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !noalias !30160
  %i.gr = call noundef nonnull align 8 ptr @"_ZN107_$LT$serde_yaml..error..Error$u20$as$u20$core..convert..From$LT$serde_yaml..libyaml..emitter..Error$GT$$GT$4from17h7289f7533d4a6ad5E"(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(80) %i.p)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !noalias !30160
  br label %"_ZN98_$LT$$RF$mut$u20$serde_yaml..ser..Serializer$LT$W$GT$$u20$as$u20$serde_core..ser..SerializeSeq$GT$3end17he86cabd1f60de295E.exit"

bb.aj:                                            ; preds = %bb.ah
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !noalias !30160
  br label %"_ZN98_$LT$$RF$mut$u20$serde_yaml..ser..Serializer$LT$W$GT$$u20$as$u20$serde_core..ser..SerializeSeq$GT$3end17he86cabd1f60de295E.exit"

bb.ak:                                            ; preds = %bb.ac
  %i.gs = getelementptr inbounds nuw i8, ptr %i.fq, i64 48
  %i.gt = getelementptr inbounds nuw i8, ptr %i.fq, i64 56
  %i.gu = getelementptr inbounds nuw i8, ptr %i.fq, i64 24
  %i.gv = load i64, ptr %i.gt, align 8, !noundef !34
  %i.gw = load i64, ptr %i.gs, align 8, !noundef !34 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ag)
  call fastcc void @"_ZN18nickel_lang_vector6vector19Vector$LT$T$C$_$GT$16iter_starting_at17hd9fff75982f33f12E"(ptr noalias noundef align 8 captures(address) dereferenceable(40) %i.ag, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.gu, i64 noundef %i.gw)
  %i.gx = sub i64 %i.gv, %i.gw                    ; 3 uses
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ag, i64 40 ; 3 uses
  store i64 %i.gx, ptr %.sroa.2.0..sroa_idx, align 8
  %i.gy = icmp eq i64 %i.gx, 0
  br i1 %i.gy, label %.thread, label %.lr.ph138

thread-pre-split:                                 ; preds = %"_ZN98_$LT$$RF$mut$u20$serde_yaml..ser..Serializer$LT$W$GT$$u20$as$u20$serde_core..ser..SerializeSeq$GT$17serialize_element17h69a5e6ecf2976d7aE.exit"
  %.pr = load i64, ptr %.sroa.2.0..sroa_idx, align 8 ; 2 uses
  %i.gz = icmp eq i64 %.pr, 0
  br i1 %i.gz, label %.thread, label %.lr.ph138

.lr.ph138:                                        ; preds = %bb.ak, %thread-pre-split
  %i.ha = phi i64 [ %.pr, %thread-pre-split ], [ %i.gx, %bb.ak ]
  %i.hb = add i64 %i.ha, -1
  store i64 %i.hb, ptr %.sroa.2.0..sroa_idx, align 8
  %i.hc = invoke fastcc noundef align 8 dereferenceable_or_null(8) ptr @"_ZN104_$LT$nickel_lang_vector..vector..Iter$LT$T$C$_$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hb850492b82192a4bE"(ptr noalias noundef align 8 dereferenceable(40) %i.ag)
          to label %bb.al unwind label %bb.am     ; 2 uses

bb.al:                                            ; preds = %.lr.ph138
  %.not48 = icmp eq ptr %i.hc, null
  br i1 %.not48, label %.thread, label %bb.ao

bb.am:                                            ; preds = %bb.ao, %.lr.ph138
  %i.hd = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.val56 = load i64, ptr %i.ag, align 8          ; 2 uses
  %i.he = icmp eq i64 %.val56, 0
  br i1 %i.he, label %common.resume, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.hf = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  %.val57 = load ptr, ptr %i.hf, align 8, !nonnull !34, !noundef !34
  %i.hg = shl nuw i64 %.val56, 4
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val57, i64 noundef %i.hg, i64 noundef range(i64 1, -9223372036854775807) 8) #53
  br label %common.resume

bb.ao:                                            ; preds = %bb.al
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ft) ]
  %i.hh = invoke fastcc noundef align 8 ptr @"_ZN16nickel_lang_core9serialize99_$LT$impl$u20$serde_core..ser..Serialize$u20$for$u20$nickel_lang_core..eval..value..NickelValue$GT$9serialize17h4d0cdcded482bbc9E"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.hc, ptr noalias noundef align 8 dereferenceable(40) %i.ft)
          to label %"_ZN98_$LT$$RF$mut$u20$serde_yaml..ser..Serializer$LT$W$GT$$u20$as$u20$serde_core..ser..SerializeSeq$GT$17serialize_element17h69a5e6ecf2976d7aE.exit" unwind label %bb.am, !inline_history !30076 ; 2 uses

.thread:                                          ; preds = %bb.al, %thread-pre-split, %bb.ak
  %.val = load i64, ptr %i.ag, align 8            ; 2 uses
  %i.hi = icmp eq i64 %.val, 0
  br i1 %i.hi, label %"_ZN4core3ptr154drop_in_place$LT$core..iter..adapters..take..Take$LT$nickel_lang_vector..vector..Iter$LT$nickel_lang_core..eval..value..NickelValue$C$32_usize$GT$$GT$$GT$17h23990a143caecc5bE.exit60", label %bb.ap

bb.ap:                                            ; preds = %.thread
  %i.hj = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  %.val53 = load ptr, ptr %i.hj, align 8, !nonnull !34, !noundef !34
  %i.hk = shl nuw i64 %.val, 4
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val53, i64 noundef %i.hk, i64 noundef range(i64 1, -9223372036854775807) 8) #53
  br label %"_ZN4core3ptr154drop_in_place$LT$core..iter..adapters..take..Take$LT$nickel_lang_vector..vector..Iter$LT$nickel_lang_core..eval..value..NickelValue$C$32_usize$GT$$GT$$GT$17h23990a143caecc5bE.exit60"

"_ZN4core3ptr154drop_in_place$LT$core..iter..adapters..take..Take$LT$nickel_lang_vector..vector..Iter$LT$nickel_lang_core..eval..value..NickelValue$C$32_usize$GT$$GT$$GT$17h23990a143caecc5bE.exit60": ; preds = %.thread, %bb.ap
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ag)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ft) ]
  call void @llvm.experimental.noalias.scope.decl(metadata !30161)
  call void @llvm.experimental.noalias.scope.decl(metadata !30162)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !30163
  %i.hl = getelementptr inbounds nuw i8, ptr %i.ft, i64 24 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !30163
  store i64 -9223372036854775801, ptr %i.f, align 8, !noalias !30163
  call void @_ZN10serde_yaml7libyaml7emitter7Emitter4emit17h53d4955187604356E(ptr noalias noundef nonnull sret([80 x i8]) align 8 captures(address) dereferenceable(80) %i.g, ptr noalias noundef nonnull align 8 dereferenceable(8) %i.hl, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(48) %i.f)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !30163
  %i.hm = getelementptr inbounds nuw i8, ptr %i.g, i64 72
  %i.hn = load i32, ptr %i.hm, align 8, !range !58, !noalias !30163, !noundef !34
  %.not.i.i175 = icmp eq i32 %i.hn, 9
  br i1 %.not.i.i175, label %bb.ar, label %bb.aq

bb.aq:                                            ; preds = %"_ZN4core3ptr154drop_in_place$LT$core..iter..adapters..take..Take$LT$nickel_lang_vector..vector..Iter$LT$nickel_lang_core..eval..value..NickelValue$C$32_usize$GT$$GT$$GT$17h23990a143caecc5bE.exit60"
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !30163
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.e, ptr noundef nonnull align 8 dereferenceable(80) %i.g, i64 80, i1 false), !noalias !30163
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !30163
  %i.ho = call noundef nonnull align 8 ptr @"_ZN107_$LT$serde_yaml..error..Error$u20$as$u20$core..convert..From$LT$serde_yaml..libyaml..emitter..Error$GT$$GT$4from17h7289f7533d4a6ad5E"(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(80) %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !30163
  br label %"_ZN98_$LT$$RF$mut$u20$serde_yaml..ser..Serializer$LT$W$GT$$u20$as$u20$serde_core..ser..SerializeSeq$GT$3end17he86cabd1f60de295E.exit"

bb.ar:                                            ; preds = %"_ZN4core3ptr154drop_in_place$LT$core..iter..adapters..take..Take$LT$nickel_lang_vector..vector..Iter$LT$nickel_lang_core..eval..value..NickelValue$C$32_usize$GT$$GT$$GT$17h23990a143caecc5bE.exit60"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !30163
  call void @llvm.experimental.noalias.scope.decl(metadata !30164)
  %i.hp = getelementptr inbounds nuw i8, ptr %i.ft, i64 32 ; 2 uses
  %i.hq = load i64, ptr %i.hp, align 8, !alias.scope !30165, !noundef !34
  %i.hr = add i64 %i.hq, -1                       ; 2 uses
  store i64 %i.hr, ptr %i.hp, align 8, !alias.scope !30165
  %i.hs = icmp eq i64 %i.hr, 0
  br i1 %i.hs, label %bb.as, label %"_ZN98_$LT$$RF$mut$u20$serde_yaml..ser..Serializer$LT$W$GT$$u20$as$u20$serde_core..ser..SerializeSeq$GT$3end17he86cabd1f60de295E.exit"

bb.as:                                            ; preds = %bb.ar
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !30165
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !30165
  store i64 -9223372036854775804, ptr %i.c, align 8, !noalias !30165
  call void @_ZN10serde_yaml7libyaml7emitter7Emitter4emit17h53d4955187604356E(ptr noalias noundef nonnull sret([80 x i8]) align 8 captures(address) dereferenceable(80) %i.d, ptr noalias noundef nonnull align 8 dereferenceable(8) %i.hl, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(48) %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !30165
  %i.ht = getelementptr inbounds nuw i8, ptr %i.d, i64 72
  %i.hu = load i32, ptr %i.ht, align 8, !range !58, !noalias !30165, !noundef !34
  %.not.i.i.i177 = icmp eq i32 %i.hu, 9
  br i1 %.not.i.i.i177, label %bb.au, label %bb.at

bb.at:                                            ; preds = %bb.as
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !30165
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.b, ptr noundef nonnull align 8 dereferenceable(80) %i.d, i64 80, i1 false), !noalias !30165
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !30165
  %i.hv = call noundef nonnull align 8 ptr @"_ZN107_$LT$serde_yaml..error..Error$u20$as$u20$core..convert..From$LT$serde_yaml..libyaml..emitter..Error$GT$$GT$4from17h7289f7533d4a6ad5E"(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(80) %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !30165
  br label %"_ZN98_$LT$$RF$mut$u20$serde_yaml..ser..Serializer$LT$W$GT$$u20$as$u20$serde_core..ser..SerializeSeq$GT$3end17he86cabd1f60de295E.exit"

bb.au:                                            ; preds = %bb.as
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !30165
  br label %"_ZN98_$LT$$RF$mut$u20$serde_yaml..ser..Serializer$LT$W$GT$$u20$as$u20$serde_core..ser..SerializeSeq$GT$3end17he86cabd1f60de295E.exit"

"_ZN98_$LT$$RF$mut$u20$serde_yaml..ser..Serializer$LT$W$GT$$u20$as$u20$serde_core..ser..SerializeSeq$GT$17serialize_element17h69a5e6ecf2976d7aE.exit": ; preds = %bb.ao
  %.not49 = icmp eq ptr %i.hh, null
  br i1 %.not49, label %thread-pre-split, label %bb.av

bb.av:                                            ; preds = %"_ZN98_$LT$$RF$mut$u20$serde_yaml..ser..Serializer$LT$W$GT$$u20$as$u20$serde_core..ser..SerializeSeq$GT$17serialize_element17h69a5e6ecf2976d7aE.exit"
  %.val54 = load i64, ptr %i.ag, align 8          ; 2 uses
  %i.hw = icmp eq i64 %.val54, 0
  br i1 %i.hw, label %"_ZN4core3ptr154drop_in_place$LT$core..iter..adapters..take..Take$LT$nickel_lang_vector..vector..Iter$LT$nickel_lang_core..eval..value..NickelValue$C$32_usize$GT$$GT$$GT$17h23990a143caecc5bE.exit61", label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %i.hx = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  %.val55 = load ptr, ptr %i.hx, align 8, !nonnull !34, !noundef !34
  %i.hy = shl nuw i64 %.val54, 4
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val55, i64 noundef %i.hy, i64 noundef range(i64 1, -9223372036854775807) 8) #53
  br label %"_ZN4core3ptr154drop_in_place$LT$core..iter..adapters..take..Take$LT$nickel_lang_vector..vector..Iter$LT$nickel_lang_core..eval..value..NickelValue$C$32_usize$GT$$GT$$GT$17h23990a143caecc5bE.exit61"

"_ZN4core3ptr154drop_in_place$LT$core..iter..adapters..take..Take$LT$nickel_lang_vector..vector..Iter$LT$nickel_lang_core..eval..value..NickelValue$C$32_usize$GT$$GT$$GT$17h23990a143caecc5bE.exit61": ; preds = %bb.av, %bb.aw
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ag)
  br label %"_ZN98_$LT$$RF$mut$u20$serde_yaml..ser..Serializer$LT$W$GT$$u20$as$u20$serde_core..ser..SerializeSeq$GT$3end17he86cabd1f60de295E.exit"

bb.ax:                                            ; preds = %bb.z
  call void @llvm.experimental.noalias.scope.decl(metadata !30166)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !noalias !30167
  %i.hz = getelementptr inbounds nuw i8, ptr %i.fw, i64 8
  %i.ia = load ptr, ptr %i.hz, align 8, !alias.scope !30166, !noalias !30168, !nonnull !34, !noundef !34 ; 2 uses
  %i.ib = getelementptr inbounds nuw i8, ptr %i.fw, i64 16
  %i.ic = load i64, ptr %i.ib, align 8, !alias.scope !30166, !noalias !30168, !noundef !34
  %i.id = getelementptr inbounds nuw [72 x i8], ptr %i.ia, i64 %i.ic
  call fastcc void @_ZN4core4iter6traits8iterator8Iterator7collect17haa039c55e2a3aebfE(ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.o, ptr noundef nonnull %i.ia, ptr noundef %i.id), !noalias !30167, !inline_history !30086
  %i.ie = load i64, ptr %i.o, align 8, !range !57, !noalias !30167, !noundef !34 ; 7 uses
  %i.if = icmp eq i64 %i.ie, -9223372036854775808
  %i.ig = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %i.ih = load ptr, ptr %i.ig, align 8, !noalias !30167 ; 16 uses
  br i1 %i.if, label %bb.ay, label %bb.be

bb.ay:                                            ; preds = %bb.ax
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !30169
  %i.ii = getelementptr inbounds nuw i8, ptr %i.ih, i64 360
  store ptr %i.ii, ptr %i.i, align 8, !noalias !30169
  %.sroa.42.0..sroa_idx.i90 = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  store ptr @"_ZN79_$LT$nickel_lang_parser..identifier..LocIdent$u20$as$u20$core..fmt..Display$GT$3fmt17hb3e33a24e8926132E", ptr %.sroa.42.0..sroa_idx.i90, align 8, !noalias !30169
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !30170
  store ptr @565, ptr %i.h, align 8, !noalias !30171
  %.sroa.4.0..sroa_idx.i91 = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  store i64 2, ptr %.sroa.4.0..sroa_idx.i91, align 8, !noalias !30171
  %.sroa.5.0..sroa_idx.i92 = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  store ptr %i.i, ptr %.sroa.5.0..sroa_idx.i92, align 8, !noalias !30171
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  store i64 1, ptr %.sroa.6.0..sroa_idx.i, align 8, !noalias !30171
  %.sroa.7.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.h, i64 32
  store ptr null, ptr %.sroa.7.0..sroa_idx.i, align 8, !noalias !30171
  invoke void @_ZN5alloc3fmt6format12format_inner17hce37e7516f243f46E(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.j, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.h)
          to label %bb.ba unwind label %bb.az, !noalias !30167

bb.az:                                            ; preds = %bb.ba, %bb.ay
  %i.ij = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr102drop_in_place$LT$alloc..boxed..Box$LT$nickel_lang_core..term..record..MissingFieldDefErrorData$GT$$GT$17hf1f720335a798440E"(ptr nonnull align 8 %i.ih) #61
          to label %common.resume unwind label %bb.bd, !noalias !30167

bb.ba:                                            ; preds = %bb.ay
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !30170
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !30169
  %i.ik = invoke fastcc noundef nonnull align 8 ptr @"_ZN67_$LT$serde_yaml..error..Error$u20$as$u20$serde_core..ser..Error$GT$6custom17h2da330649a01136eE"(ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.j)
          to label %bb.bb unwind label %bb.az, !noalias !30167

bb.bb:                                            ; preds = %bb.ba
  invoke fastcc void @"_ZN4core3ptr66drop_in_place$LT$nickel_lang_core..term..record..FieldMetadata$GT$17hd9e56ba5b292b097E"(ptr noalias noundef nonnull align 8 dereferenceable(384) %i.ih)
          to label %"_ZN16nickel_lang_core9serialize16serialize_record28_$u7b$$u7b$closure$u7d$$u7d$17h1b30a19ce6ef6f88E.exit" unwind label %bb.bc, !noalias !30167

common.resume:                                    ; preds = %bb.am, %bb.an, %.body, %bb.bi, %bb.az, %bb.bc
  %common.resume.op = phi { ptr, i32 } [ %.pn.i, %.body ], [ %i.ij, %bb.az ], [ %i.il, %bb.bc ], [ %.pn.i, %bb.bi ], [ %i.hd, %bb.an ], [ %i.hd, %bb.am ]
  resume { ptr, i32 } %common.resume.op

bb.bc:                                            ; preds = %bb.bb
  %i.il = landingpad { ptr, i32 }
          cleanup
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull align 8 %i.ih, i64 noundef 384, i64 noundef 8) #53, !noalias !30167
  br label %common.resume

bb.bd:                                            ; preds = %bb.az
  %i.im = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #60, !noalias !30167
  unreachable

"_ZN16nickel_lang_core9serialize16serialize_record28_$u7b$$u7b$closure$u7d$$u7d$17h1b30a19ce6ef6f88E.exit": ; preds = %bb.bb
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull align 8 %i.ih, i64 noundef 384, i64 noundef 8) #53, !noalias !30167
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !noalias !30167
  br label %"_ZN98_$LT$$RF$mut$u20$serde_yaml..ser..Serializer$LT$W$GT$$u20$as$u20$serde_core..ser..SerializeSeq$GT$3end17he86cabd1f60de295E.exit"

bb.be:                                            ; preds = %bb.ax
  %.sroa.632.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  %.sroa.632.0.copyload.i = load i64, ptr %.sroa.632.0..sroa_idx.i, align 8, !noalias !30167 ; 8 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !noalias !30167
  %i.in = icmp ult i64 %.sroa.632.0.copyload.i, 2
  br i1 %i.in, label %bb.bk, label %bb.bf, !prof !40

bb.bf:                                            ; preds = %bb.be
  %i.io = icmp ult i64 %.sroa.632.0.copyload.i, 21
  br i1 %i.io, label %bb.bh, label %bb.bg, !prof !40

bb.bg:                                            ; preds = %bb.bf
  invoke fastcc void @_ZN4core5slice4sort6stable14driftsort_main17h635ad0d5ceadb7caE(ptr noalias noundef nonnull align 8 %i.ih, i64 noundef %.sroa.632.0.copyload.i)
          to label %.thread117 unwind label %bb.bj

bb.bh:                                            ; preds = %bb.bf
  invoke fastcc void @_ZN4core5slice4sort6shared9smallsort25insertion_sort_shift_left17h771a0de16d5e1e73E(ptr noalias noundef nonnull align 8 %i.ih, i64 noundef %.sroa.632.0.copyload.i)
          to label %.thread117 unwind label %bb.bj

.body:                                            ; preds = %bb.cd, %bb.cc, %bb.bw, %bb.bt, %bb.bs, %bb.bj
  %.pn.i = phi { ptr, i32 } [ %i.ir, %bb.bj ], [ %lpad.phi, %bb.bs ], [ %i.jk, %bb.bw ], [ %lpad.phi, %bb.bt ], [ %i.js, %bb.cc ], [ %i.js, %bb.cd ] ; 2 uses
  %i.ip = icmp eq i64 %i.ie, 0
  br i1 %i.ip, label %common.resume, label %bb.bi

bb.bi:                                            ; preds = %.body
  %i.iq = shl nuw i64 %i.ie, 4
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ih) ], !noalias !30166
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.ih, i64 noundef %i.iq, i64 noundef range(i64 1, -9223372036854775807) 8) #53, !noalias !30166
  br label %common.resume

bb.bj:                                            ; preds = %bb.bg, %bb.bh, %bb.bn, %bb.bl
  %i.ir = landingpad { ptr, i32 }
          cleanup
  br label %.body

.thread117:                                       ; preds = %bb.bg, %bb.bh
  %i.is = icmp ult i64 %.sroa.632.0.copyload.i, 576460752303423488
  call void @llvm.assume(i1 %i.is)
  br label %bb.bl

bb.bk:                                            ; preds = %bb.be
  %i.it = icmp eq i64 %.sroa.632.0.copyload.i, 0
  br i1 %i.it, label %bb.bl, label %bb.bm

bb.bl:                                            ; preds = %.thread117, %bb.bk
  %i.iu = invoke fastcc noundef align 8 ptr @"_ZN10serde_yaml3ser19Serializer$LT$W$GT$18emit_mapping_start17he0f34733df5724b6E"(ptr noalias noundef nonnull align 8 dereferenceable(40) %1)
          to label %.noexc84 unwind label %bb.bj  ; 2 uses

.noexc84:                                         ; preds = %bb.bl
  %.not.i79 = icmp eq ptr %i.iu, null
  br i1 %.not.i79, label %bb.bq, label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17hfedeefc8cce81a05E.exit68"

bb.bm:                                            ; preds = %bb.bk
  %i.iv = load i64, ptr %1, align 8, !range !70, !alias.scope !30172, !noalias !30166, !noundef !34 ; 2 uses
  %i.iw = icmp ne i64 %i.iv, -9223372036854775805
  call void @llvm.assume(i1 %i.iw), !noalias !30166
  %i.ix = icmp sgt i64 %i.iv, -1
  br i1 %i.ix, label %bb.bn, label %.thread164

bb.bn:                                            ; preds = %bb.bm
  %i.iy = invoke fastcc noundef align 8 ptr @"_ZN10serde_yaml3ser19Serializer$LT$W$GT$18emit_mapping_start17he0f34733df5724b6E"(ptr noalias noundef nonnull align 8 dereferenceable(40) %1)
          to label %.noexc85 unwind label %bb.bj  ; 2 uses

.noexc85:                                         ; preds = %bb.bn
  %.not16.i = icmp eq ptr %i.iy, null
  br i1 %.not16.i, label %bb.bo, label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17hfedeefc8cce81a05E.exit68"

bb.bo:                                            ; preds = %.noexc85
  %.val.pr.i = load i64, ptr %1, align 8, !alias.scope !30172, !noalias !30166 ; 3 uses
  %i.iz = icmp ne i64 %.val.pr.i, -9223372036854775805
  call void @llvm.assume(i1 %i.iz), !noalias !30166
  %or.cond.i.i83 = icmp slt i64 %.val.pr.i, 1
  br i1 %or.cond.i.i83, label %.thread164, label %bb.bp

bb.bp:                                            ; preds = %bb.bo
  %i.ja = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val17.i = load ptr, ptr %i.ja, align 8, !alias.scope !30172, !noalias !30166, !nonnull !34, !noundef !34
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val17.i, i64 noundef %.val.pr.i, i64 noundef range(i64 1, -9223372036854775807) 1) #53, !noalias !30173
  br label %.thread164

.thread164:                                       ; preds = %bb.bm, %bb.bo, %bb.bp
  %.sroa.05.022.i = phi i64 [ -9223372036854775806, %bb.bp ], [ -9223372036854775806, %bb.bo ], [ -9223372036854775807, %bb.bm ]
  store i64 %.sroa.05.022.i, ptr %1, align 8, !alias.scope !30172, !noalias !30166
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ih) ]
  br label %.lr.ph

bb.bq:                                            ; preds = %.noexc84
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ih) ]
  %i.jb = icmp eq i64 %.sroa.632.0.copyload.i, 0
  br i1 %i.jb, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.thread164, %bb.bq
  %.idx166.pn = shl nuw nsw i64 %.sroa.632.0.copyload.i, 4
  %2 = getelementptr inbounds nuw i8, ptr %i.ih, i64 %.idx166.pn
  %.sroa.42.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.l, i64 8 ; 3 uses
  %.sroa.53.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.l, i64 16 ; 2 uses
  %i.jc = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %.sroa.4.0..sroa_idx.i77 = getelementptr inbounds nuw i8, ptr %i.k, i64 20
  %.sroa.5.0..sroa_idx.i78 = getelementptr inbounds nuw i8, ptr %i.k, i64 22
  %i.jd = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.je = getelementptr inbounds nuw i8, ptr %1, i64 8
  br label %bb.br

bb.br:                                            ; preds = %.lr.ph, %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17hfedeefc8cce81a05E.exit"
  %.sroa.036.0.i136 = phi ptr [ %i.ih, %.lr.ph ], [ %i.jf, %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17hfedeefc8cce81a05E.exit" ] ; 3 uses
  %i.jf = getelementptr inbounds nuw i8, ptr %.sroa.036.0.i136, i64 16 ; 2 uses
  %i.jg = getelementptr inbounds nuw i8, ptr %.sroa.036.0.i136, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !30174
  store i64 0, ptr %i.l, align 8, !noalias !30174
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.42.0..sroa_idx.i, align 8, !noalias !30174
  store i64 0, ptr %.sroa.53.0..sroa_idx.i, align 8, !noalias !30174
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !30174
  store i32 -536870880, ptr %i.jc, align 8, !noalias !30174
  store i16 0, ptr %.sroa.4.0..sroa_idx.i77, align 4, !noalias !30174
  store i16 0, ptr %.sroa.5.0..sroa_idx.i78, align 2, !noalias !30174
  store ptr %i.l, ptr %i.k, align 8, !noalias !30174
  store ptr @744, ptr %i.jd, align 8, !noalias !30174
  %i.jh = invoke noundef zeroext i1 @"_ZN76_$LT$nickel_lang_parser..identifier..Ident$u20$as$u20$core..fmt..Display$GT$3fmt17hbc9c1c42002a29c9E"(ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(4) %.sroa.036.0.i136, ptr noalias noundef nonnull align 8 dereferenceable(24) %i.k)
          to label %bb.bu unwind label %.loopexit, !noalias !30175

.loopexit:                                        ; preds = %bb.br
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.bs

.loopexit.split-lp:                               ; preds = %bb.bv
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.bs

bb.bs:                                            ; preds = %.loopexit.split-lp, %.loopexit
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !30176), !noalias !30166
  call void @llvm.experimental.noalias.scope.decl(metadata !30177), !noalias !30166
  %.val.i.i.i = load i64, ptr %i.l, align 8, !range !42, !alias.scope !30178, !noalias !30174, !noundef !34 ; 2 uses
  %i.ji = icmp eq i64 %.val.i.i.i, 0
  br i1 %i.ji, label %.body, label %bb.bt

bb.bt:                                            ; preds = %bb.bs
  %.val1.i.i.i = load ptr, ptr %.sroa.42.0..sroa_idx.i, align 8, !alias.scope !30178, !noalias !30174, !nonnull !34, !noundef !34
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i, i64 noundef %.val.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #53, !noalias !30179
  br label %.body

bb.bu:                                            ; preds = %bb.br
  br i1 %i.jh, label %bb.bv, label %bb.bx, !prof !37

bb.bv:                                            ; preds = %bb.bu
  invoke void @_ZN4core6result13unwrap_failed17h0501379eaec3e720E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @745, i64 noundef 55, ptr noundef nonnull align 1 %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @765, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @747) #59
          to label %.noexc.i unwind label %.loopexit.split-lp, !noalias !30175

.noexc.i:                                         ; preds = %bb.bv
  unreachable

._crit_edge:                                      ; preds = %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17hfedeefc8cce81a05E.exit", %bb.bq
  %i.jj = invoke fastcc noundef align 8 ptr @"_ZN98_$LT$$RF$mut$u20$serde_yaml..ser..Serializer$LT$W$GT$$u20$as$u20$serde_core..ser..SerializeMap$GT$3end17h50daa9ffdeffbd1cE"(ptr noalias noundef align 8 dereferenceable(40) %1)
          to label %bb.ci unwind label %bb.bw, !noalias !30166, !inline_history !30086 ; 2 uses

bb.bw:                                            ; preds = %._crit_edge
  %i.jk = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.bx:                                            ; preds = %bb.bu
  %.sroa.0113.0.copyload = load i64, ptr %i.l, align 8, !noalias !30180 ; 6 uses
  %.sroa.7114.0.copyload = load ptr, ptr %.sroa.42.0..sroa_idx.i, align 8, !noalias !30180, !nonnull !34, !noundef !34 ; 4 uses
  %.sroa.11.0.copyload = load i64, ptr %.sroa.53.0..sroa_idx.i, align 8, !noalias !30180
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !30174
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !30174
  %i.jl = invoke fastcc noundef align 8 ptr @"_ZN96_$LT$$RF$mut$u20$serde_yaml..ser..Serializer$LT$W$GT$$u20$as$u20$serde_core..ser..Serializer$GT$13serialize_str17hed816ebfe7e90333E"(ptr noalias noundef nonnull align 8 dereferenceable(40) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %.sroa.7114.0.copyload, i64 noundef %.sroa.11.0.copyload)
          to label %.noexc unwind label %bb.cc, !inline_history !30108 ; 2 uses

.noexc:                                           ; preds = %bb.bx
  %.not.i72 = icmp eq ptr %i.jl, null
  br i1 %.not.i72, label %bb.by, label %"_ZN98_$LT$$RF$mut$u20$serde_yaml..ser..Serializer$LT$W$GT$$u20$as$u20$serde_core..ser..SerializeMap$GT$15serialize_entry17h8b1826a8061bdbedE.exit"

bb.by:                                            ; preds = %.noexc
  %i.jm = load i64, ptr %1, align 8, !range !70, !noalias !30181, !noundef !34 ; 2 uses
  %i.jn = icmp ne i64 %i.jm, -9223372036854775805
  call void @llvm.assume(i1 %i.jn), !noalias !30166
  %i.jo = load ptr, ptr %i.jg, align 8, !alias.scope !30182, !noalias !30183, !nonnull !34, !align !41, !noundef !34
  %i.jp = invoke fastcc noundef align 8 ptr @"_ZN16nickel_lang_core9serialize99_$LT$impl$u20$serde_core..ser..Serialize$u20$for$u20$nickel_lang_core..eval..value..NickelValue$GT$9serialize17h4d0cdcded482bbc9E"(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.jo, ptr noalias noundef nonnull align 8 dereferenceable(40) %1)
          to label %.noexc76 unwind label %bb.cc, !inline_history !30116 ; 2 uses

.noexc76:                                         ; preds = %bb.by
  %.not11.i = icmp eq ptr %i.jp, null
  br i1 %.not11.i, label %bb.bz, label %"_ZN98_$LT$$RF$mut$u20$serde_yaml..ser..Serializer$LT$W$GT$$u20$as$u20$serde_core..ser..SerializeMap$GT$15serialize_entry17h8b1826a8061bdbedE.exit"

bb.bz:                                            ; preds = %.noexc76
  %i.jq = icmp sgt i64 %i.jm, -1
  br i1 %i.jq, label %bb.ca, label %bb.cf

bb.ca:                                            ; preds = %bb.bz
  %.val.i74 = load i64, ptr %1, align 8, !range !70, !noalias !30181, !noundef !34 ; 3 uses
  %i.jr = icmp ne i64 %.val.i74, -9223372036854775805
  call void @llvm.assume(i1 %i.jr), !noalias !30166
  %or.cond.i.i75 = icmp slt i64 %.val.i74, 1
  br i1 %or.cond.i.i75, label %"_ZN4core3ptr43drop_in_place$LT$serde_yaml..ser..State$GT$17h2652bd8416454e84E.exit.i", label %bb.cb

bb.cb:                                            ; preds = %bb.ca
  %.val12.i = load ptr, ptr %i.je, align 8, !noalias !30181, !nonnull !34, !noundef !34
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val12.i, i64 noundef %.val.i74, i64 noundef range(i64 1, -9223372036854775807) 1) #53, !noalias !30184, !inline_history !30108
  br label %"_ZN4core3ptr43drop_in_place$LT$serde_yaml..ser..State$GT$17h2652bd8416454e84E.exit.i"

"_ZN4core3ptr43drop_in_place$LT$serde_yaml..ser..State$GT$17h2652bd8416454e84E.exit.i": ; preds = %bb.cb, %bb.ca
  store i64 -9223372036854775804, ptr %1, align 8, !noalias !30181
  br label %bb.cf

bb.cc:                                            ; preds = %bb.by, %bb.bx
  %i.js = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.jt = icmp eq i64 %.sroa.0113.0.copyload, 0
  br i1 %i.jt, label %.body, label %bb.cd

bb.cd:                                            ; preds = %bb.cc
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.7114.0.copyload, i64 noundef %.sroa.0113.0.copyload, i64 noundef range(i64 1, -9223372036854775807) 1) #53, !noalias !30185
  br label %.body

"_ZN98_$LT$$RF$mut$u20$serde_yaml..ser..Serializer$LT$W$GT$$u20$as$u20$serde_core..ser..SerializeMap$GT$15serialize_entry17h8b1826a8061bdbedE.exit": ; preds = %.noexc, %.noexc76
  %.sroa.0.0.i73 = phi ptr [ %i.jp, %.noexc76 ], [ %i.jl, %.noexc ] ; 2 uses
  %i.ju = icmp eq i64 %.sroa.0113.0.copyload, 0
  br i1 %i.ju, label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17hfedeefc8cce81a05E.exit68", label %bb.ce

bb.ce:                                            ; preds = %"_ZN98_$LT$$RF$mut$u20$serde_yaml..ser..Serializer$LT$W$GT$$u20$as$u20$serde_core..ser..SerializeMap$GT$15serialize_entry17h8b1826a8061bdbedE.exit"
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.7114.0.copyload, i64 noundef %.sroa.0113.0.copyload, i64 noundef range(i64 1, -9223372036854775807) 1) #53, !noalias !30186
  br label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17hfedeefc8cce81a05E.exit68"

bb.cf:                                            ; preds = %"_ZN4core3ptr43drop_in_place$LT$serde_yaml..ser..State$GT$17h2652bd8416454e84E.exit.i", %bb.bz
  %i.jv = icmp eq i64 %.sroa.0113.0.copyload, 0
  br i1 %i.jv, label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17hfedeefc8cce81a05E.exit", label %bb.cg

bb.cg:                                            ; preds = %bb.cf
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.7114.0.copyload, i64 noundef %.sroa.0113.0.copyload, i64 noundef range(i64 1, -9223372036854775807) 1) #53, !noalias !30187
  br label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17hfedeefc8cce81a05E.exit"

"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17hfedeefc8cce81a05E.exit": ; preds = %bb.cg, %bb.cf
  %i.jw = icmp eq ptr %i.jf, %2
  br i1 %i.jw, label %._crit_edge, label %bb.br

"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17hfedeefc8cce81a05E.exit68": ; preds = %.noexc85, %.noexc84, %"_ZN98_$LT$$RF$mut$u20$serde_yaml..ser..Serializer$LT$W$GT$$u20$as$u20$serde_core..ser..SerializeMap$GT$15serialize_entry17h8b1826a8061bdbedE.exit", %bb.ce
  %.sroa.0.0.i62 = phi ptr [ %.sroa.0.0.i73, %"_ZN98_$LT$$RF$mut$u20$serde_yaml..ser..Serializer$LT$W$GT$$u20$as$u20$serde_core..ser..SerializeMap$GT$15serialize_entry17h8b1826a8061bdbedE.exit" ], [ %.sroa.0.0.i73, %bb.ce ], [ %i.iy, %.noexc85 ], [ %i.iu, %.noexc84 ] ; 2 uses
  %i.jx = icmp eq i64 %i.ie, 0
  br i1 %i.jx, label %"_ZN98_$LT$$RF$mut$u20$serde_yaml..ser..Serializer$LT$W$GT$$u20$as$u20$serde_core..ser..SerializeSeq$GT$3end17he86cabd1f60de295E.exit", label %bb.ch

bb.ch:                                            ; preds = %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17hfedeefc8cce81a05E.exit68"
  %i.jy = shl nuw i64 %i.ie, 4
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ih) ], !noalias !30166
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.ih, i64 noundef %i.jy, i64 noundef range(i64 1, -9223372036854775807) 8) #53, !noalias !30166
  br label %"_ZN98_$LT$$RF$mut$u20$serde_yaml..ser..Serializer$LT$W$GT$$u20$as$u20$serde_core..ser..SerializeSeq$GT$3end17he86cabd1f60de295E.exit"

bb.ci:                                            ; preds = %._crit_edge
  %i.jz = icmp eq i64 %i.ie, 0
  br i1 %i.jz, label %"_ZN98_$LT$$RF$mut$u20$serde_yaml..ser..Serializer$LT$W$GT$$u20$as$u20$serde_core..ser..SerializeSeq$GT$3end17he86cabd1f60de295E.exit", label %bb.cj

bb.cj:                                            ; preds = %bb.ci
  %i.ka = shl nuw i64 %i.ie, 4
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.ih, i64 noundef %i.ka, i64 noundef range(i64 1, -9223372036854775807) 8) #53, !noalias !30166
  br label %"_ZN98_$LT$$RF$mut$u20$serde_yaml..ser..Serializer$LT$W$GT$$u20$as$u20$serde_core..ser..SerializeSeq$GT$3end17he86cabd1f60de295E.exit"

bb.ck:                                            ; preds = %bb.z
  %i.kb = call fastcc noundef align 8 ptr @"_ZN10serde_yaml3ser19Serializer$LT$W$GT$18emit_mapping_start17he0f34733df5724b6E"(ptr noalias noundef nonnull align 8 dereferenceable(40) %1) ; 2 uses
  %.not.i63 = icmp eq ptr %i.kb, null
  br i1 %.not.i63, label %bb.cl, label %"_ZN98_$LT$$RF$mut$u20$serde_yaml..ser..Serializer$LT$W$GT$$u20$as$u20$serde_core..ser..SerializeSeq$GT$3end17he86cabd1f60de295E.exit"

bb.cl:                                            ; preds = %bb.ck
  %i.kc = call fastcc noundef align 8 ptr @"_ZN98_$LT$$RF$mut$u20$serde_yaml..ser..Serializer$LT$W$GT$$u20$as$u20$serde_core..ser..SerializeMap$GT$3end17h50daa9ffdeffbd1cE"(ptr noalias noundef align 8 dereferenceable(40) %1)
  br label %"_ZN98_$LT$$RF$mut$u20$serde_yaml..ser..Serializer$LT$W$GT$$u20$as$u20$serde_core..ser..SerializeSeq$GT$3end17he86cabd1f60de295E.exit"

bb.cm:                                            ; preds = %bb.ab
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aj)
  %i.kd = getelementptr inbounds nuw i8, ptr %i.gf, i64 8
  store ptr %i.kd, ptr %i.aj, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ah)
  store ptr %i.aj, ptr %i.ah, align 8
  %.sroa.438.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  store ptr @"_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17hf76eb57b33851465E", ptr %.sroa.438.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !noalias !30188
  store ptr @575, ptr %i.n, align 8, !noalias !30189
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  store i64 2, ptr %.sroa.4.0..sroa_idx, align 8, !noalias !30189
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  store ptr %i.ah, ptr %.sroa.5.0..sroa_idx, align 8, !noalias !30189
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.n, i64 24
  store i64 1, ptr %.sroa.6.0..sroa_idx, align 8, !noalias !30189
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.n, i64 32
  store ptr null, ptr %.sroa.7.0..sroa_idx, align 8, !noalias !30189
  call void @_ZN5alloc3fmt6format12format_inner17hce37e7516f243f46E(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.ai, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.n), !noalias !30190
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !30188
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ah)
  %i.ke = call fastcc noundef nonnull align 8 ptr @"_ZN67_$LT$serde_yaml..error..Error$u20$as$u20$serde_core..ser..Error$GT$6custom17h2da330649a01136eE"(ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.ai)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aj)
  br label %"_ZN98_$LT$$RF$mut$u20$serde_yaml..ser..Serializer$LT$W$GT$$u20$as$u20$serde_core..ser..SerializeSeq$GT$3end17he86cabd1f60de295E.exit"

bb.cn:                                            ; preds = %bb.ab
  %i.kf = getelementptr inbounds nuw i8, ptr %i.gf, i64 8
  %i.kg = call { ptr, i64 } @_ZN18nickel_lang_parser10identifier8LocIdent5label17h23360175f9f53dcbE(ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(20) %i.kf) ; 2 uses
  %i.kh = extractvalue { ptr, i64 } %i.kg, 0
  %i.ki = extractvalue { ptr, i64 } %i.kg, 1
  %i.kj = call fastcc noundef align 8 ptr @"_ZN96_$LT$$RF$mut$u20$serde_yaml..ser..Serializer$LT$W$GT$$u20$as$u20$serde_core..ser..Serializer$GT$13serialize_str17hed816ebfe7e90333E"(ptr noalias noundef align 8 dereferenceable(40) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.kh, i64 noundef %i.ki)
  br label %"_ZN98_$LT$$RF$mut$u20$serde_yaml..ser..Serializer$LT$W$GT$$u20$as$u20$serde_core..ser..SerializeSeq$GT$3end17he86cabd1f60de295E.exit"
}

; Function Attrs: nonlazybind uwtable
define internal fastcc noundef align 8 ptr @"_ZN16nickel_lang_core9serialize99_$LT$impl$u20$serde_core..ser..Serialize$u20$for$u20$nickel_lang_core..eval..value..NickelValue$GT$9serialize17h5cc073478534ddfbE"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %0, ptr noalias noundef nonnull align 8 dereferenceable(40) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = alloca [80 x i8], align 8                ; 4 uses
  %i.c = alloca [48 x i8], align 8                ; 4 uses
  %i.d = alloca [80 x i8], align 8                ; 6 uses
  %i.e = alloca [80 x i8], align 8                ; 4 uses
  %i.f = alloca [48 x i8], align 8                ; 4 uses
  %i.g = alloca [80 x i8], align 8                ; 6 uses
  %i.h = alloca [48 x i8], align 8                ; 8 uses
  %i.i = alloca [16 x i8], align 8                ; 5 uses
  %i.j = alloca [24 x i8], align 8                ; 4 uses
  %i.k = alloca [24 x i8], align 8                ; 8 uses
  %i.l = alloca [24 x i8], align 8                ; 8 uses
  %i.m = alloca [48 x i8], align 8                ; 8 uses
  %i.n = alloca [48 x i8], align 8                ; 8 uses
  %i.o = alloca [24 x i8], align 8                ; 7 uses
  %i.p = alloca [80 x i8], align 8                ; 4 uses
  %i.q = alloca [48 x i8], align 8                ; 4 uses
  %i.r = alloca [80 x i8], align 8                ; 6 uses
  %i.s = alloca [80 x i8], align 8                ; 4 uses
  %i.t = alloca [48 x i8], align 8                ; 4 uses
  %i.u = alloca [80 x i8], align 8                ; 6 uses
  %i.v = alloca [40 x i8], align 1                ; 9 uses
  %i.w = alloca [48 x i8], align 8                ; 7 uses
  %i.x = alloca [40 x i8], align 1                ; 8 uses
  %i.y = alloca [48 x i8], align 8                ; 7 uses
  %i.z = alloca [48 x i8], align 8                ; 7 uses
  %i.aa = alloca [24 x i8], align 1               ; 4 uses
  %i.ab = alloca [48 x i8], align 8               ; 7 uses
  %i.ac = alloca [48 x i8], align 8               ; 7 uses
  %i.ad = alloca [16 x i8], align 8               ; 5 uses
  %i.ae = alloca [16 x i8], align 8               ; 5 uses
  %i.af = alloca [24 x i8], align 8               ; 2 uses
  %i.ag = alloca [48 x i8], align 8               ; 12 uses
  %i.ah = alloca [16 x i8], align 8               ; 5 uses
  %i.ai = alloca [24 x i8], align 8               ; 2 uses
  %i.aj = alloca [8 x i8], align 8                ; 4 uses
  %i.ak = alloca [16 x i8], align 8               ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ak)
  call void @_ZN16nickel_lang_core4eval5value11NickelValue11content_ref17h965d5e35cf2e1421E(ptr noalias noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.ak, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %0)
  %i.al = load i8, ptr %i.ak, align 8, !range !59, !noundef !34
  switch i8 %i.al, label %bb.b [
    i8 0, label %bb.c
    i8 1, label %bb.d
    i8 2, label %bb.e
    i8 3, label %bb.y
    i8 4, label %bb.z
    i8 5, label %bb.aa
    i8 9, label %bb.ab
  ]

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ae)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ad)
  %i.am = call { ptr, i64 } @_ZN16nickel_lang_core4eval5value11NickelValue7type_of17hc677b7a5c04dea94E(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %0) ; 2 uses
  %i.an = extractvalue { ptr, i64 } %i.am, 0      ; 2 uses
  %.not51 = icmp eq ptr %i.an, null               ; 2 uses
  %i.ao = extractvalue { ptr, i64 } %i.am, 1
  %spec.select = select i1 %.not51, ptr @576, ptr %i.an
  %spec.select174 = select i1 %.not51, i64 7, i64 %i.ao
  store ptr %spec.select, ptr %i.ad, align 8
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  store i64 %spec.select174, ptr %i.ap, align 8
  store ptr %i.ad, ptr %i.ae, align 8
  %.sroa.442.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  store ptr @"_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h2a16057073367944E", ptr %.sroa.442.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !noalias !30287
  store ptr @578, ptr %i.m, align 8, !noalias !30288
  %.sroa.497.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  store i64 1, ptr %.sroa.497.0..sroa_idx, align 8, !noalias !30288
  %.sroa.598.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  store ptr %i.ae, ptr %.sroa.598.0..sroa_idx, align 8, !noalias !30288
  %.sroa.699.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.m, i64 24
  store i64 1, ptr %.sroa.699.0..sroa_idx, align 8, !noalias !30288
  %.sroa.7100.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.m, i64 32
  store ptr null, ptr %.sroa.7100.0..sroa_idx, align 8, !noalias !30288
  call void @_ZN5alloc3fmt6format12format_inner17hce37e7516f243f46E(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.af, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.m), !noalias !30289
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !30287
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ad)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ae)
  %i.aq = call fastcc noundef nonnull align 8 ptr @"_ZN67_$LT$serde_yaml..error..Error$u20$as$u20$serde_core..ser..Error$GT$6custom17h2da330649a01136eE"(ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.af)
  br label %"_ZN98_$LT$$RF$mut$u20$serde_yaml..ser..Serializer$LT$W$GT$$u20$as$u20$serde_core..ser..SerializeSeq$GT$3end17hae378ebd94789e29E.exit"

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ac), !noalias !30290
  store i64 -9223372036854775808, ptr %i.ac, align 8, !noalias !30290
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ac, i64 24
  store ptr @40, ptr %i.ar, align 8, !noalias !30290
  %i.as = getelementptr inbounds nuw i8, ptr %i.ac, i64 32
  store i64 4, ptr %i.as, align 8, !noalias !30290
  %i.at = getelementptr inbounds nuw i8, ptr %i.ac, i64 40
  store i8 1, ptr %i.at, align 8, !noalias !30290
  %i.au = call fastcc noundef align 8 ptr @"_ZN10serde_yaml3ser19Serializer$LT$W$GT$11emit_scalar17hff84a424d4d141f0E"(ptr noalias noundef nonnull align 8 dereferenceable(40) %1, ptr noalias noundef align 8 captures(address) dereferenceable(48) %i.ac)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ac), !noalias !30290
  br label %"_ZN98_$LT$$RF$mut$u20$serde_yaml..ser..Serializer$LT$W$GT$$u20$as$u20$serde_core..ser..SerializeSeq$GT$3end17hae378ebd94789e29E.exit"

bb.d:                                             ; preds = %bb.a
  %i.av = getelementptr inbounds nuw i8, ptr %i.ak, i64 1
  %i.aw = load i8, ptr %i.av, align 1, !range !44, !noundef !34
  %i.ax = trunc nuw i8 %i.aw to i1                ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ab), !noalias !30291
  %..i = select i1 %i.ax, i64 4, i64 5
  %.2.i = select i1 %i.ax, ptr @39, ptr @38
  store i64 -9223372036854775808, ptr %i.ab, align 8, !noalias !30291
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ab, i64 24
  store ptr %.2.i, ptr %i.ay, align 8, !noalias !30291
  %i.az = getelementptr inbounds nuw i8, ptr %i.ab, i64 32
  store i64 %..i, ptr %i.az, align 8, !noalias !30291
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ab, i64 40
  store i8 1, ptr %i.ba, align 8, !noalias !30291
  %i.bb = call fastcc noundef align 8 ptr @"_ZN10serde_yaml3ser19Serializer$LT$W$GT$11emit_scalar17hff84a424d4d141f0E"(ptr noalias noundef nonnull align 8 dereferenceable(40) %1, ptr noalias noundef align 8 captures(address) dereferenceable(48) %i.ab)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab), !noalias !30291
  br label %"_ZN98_$LT$$RF$mut$u20$serde_yaml..ser..Serializer$LT$W$GT$$u20$as$u20$serde_core..ser..SerializeSeq$GT$3end17hae378ebd94789e29E.exit"

bb.e:                                             ; preds = %bb.a
  %i.bc = getelementptr inbounds nuw i8, ptr %i.ak, i64 8
  %i.bd = load ptr, ptr %i.bc, align 8, !nonnull !34, !align !41, !noundef !34 ; 9 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !30292)
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 24
  %i.bf = load i64, ptr %i.be, align 8, !range !57, !alias.scope !30292, !noalias !30293, !noundef !34
  %.not13.i = icmp eq i64 %i.bf, -9223372036854775808
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bd, i64 32
  %i.bh = load i64, ptr %i.bg, align 8, !alias.scope !30292, !noalias !30293
  %i.bi = icmp eq i64 %i.bh, 1
  %or.cond.i = select i1 %.not13.i, i1 %i.bi, i1 false
  br i1 %or.cond.i, label %bb.i, label %_ZN11malachite_q10conversion27primitive_int_from_rational15try_from_signed17h56de1730099a3575E.exit.thread.i

_ZN11malachite_q10conversion27primitive_int_from_rational15try_from_signed17h56de1730099a3575E.exit.thread.i: ; preds = %bb.m, %bb.k, %_ZN11malachite_q10comparison25partial_cmp_primitive_int18partial_cmp_signed17hbfd23e45c1efc22cE.exit.i, %bb.e
  %i.bj = call { double, i8 } @"_ZN11malachite_q10conversion29primitive_float_from_rational120_$LT$impl$u20$malachite_base..num..conversion..traits..RoundingFrom$LT$$RF$malachite_q..Rational$GT$$u20$for$u20$f64$GT$13rounding_from17h9677da0c2715dedfE"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.bd, i8 noundef 4), !noalias !30293
  %i.bk = extractvalue { double, i8 } %i.bj, 0    ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aa), !noalias !30294
  call void @llvm.lifetime.start.p0(ptr nonnull %i.z), !noalias !30294
  %i.bl = bitcast double %i.bk to i64             ; 2 uses
end_hunk_0
begin_hunk_1_@"_ZN16nickel_lang_core9serialize99_$LT$impl$u20$serde_core..ser..Serialize$u20$for$u20$nickel_lang_core..eval..value..NickelValue$GT$9serialize17h5cc073478534ddfbE":bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t), !noalias !30306
  store i64 -9223372036854775801, ptr %i.t, align 8, !noalias !30306
  call void @_ZN10serde_yaml7libyaml7emitter7Emitter4emit17h53d4955187604356E(ptr noalias noundef nonnull sret([80 x i8]) align 8 captures(address) dereferenceable(80) %i.u, ptr noalias noundef nonnull align 8 dereferenceable(8) %i.gh, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(48) %i.t)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t), !noalias !30306
  %i.gi = getelementptr inbounds nuw i8, ptr %i.u, i64 72
  %i.gj = load i32, ptr %i.gi, align 8, !range !58, !noalias !30306, !noundef !34
  %.not.i.i58 = icmp eq i32 %i.gj, 9
  br i1 %.not.i.i58, label %bb.ag, label %bb.af

bb.af:                                            ; preds = %bb.ae
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s), !noalias !30306
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.s, ptr noundef nonnull align 8 dereferenceable(80) %i.u, i64 80, i1 false), !noalias !30306
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u), !noalias !30306
  %i.gk = call noundef nonnull align 8 ptr @"_ZN107_$LT$serde_yaml..error..Error$u20$as$u20$core..convert..From$LT$serde_yaml..libyaml..emitter..Error$GT$$GT$4from17h7289f7533d4a6ad5E"(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(80) %i.s)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !noalias !30306
  br label %"_ZN98_$LT$$RF$mut$u20$serde_yaml..ser..Serializer$LT$W$GT$$u20$as$u20$serde_core..ser..SerializeSeq$GT$3end17hae378ebd94789e29E.exit"

bb.ag:                                            ; preds = %bb.ae
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u), !noalias !30306
  call void @llvm.experimental.noalias.scope.decl(metadata !30307)
  %i.gl = getelementptr inbounds nuw i8, ptr %i.ft, i64 32 ; 2 uses
  %i.gm = load i64, ptr %i.gl, align 8, !alias.scope !30308, !noundef !34
  %i.gn = add i64 %i.gm, -1                       ; 2 uses
  store i64 %i.gn, ptr %i.gl, align 8, !alias.scope !30308
  %i.go = icmp eq i64 %i.gn, 0
  br i1 %i.go, label %bb.ah, label %"_ZN98_$LT$$RF$mut$u20$serde_yaml..ser..Serializer$LT$W$GT$$u20$as$u20$serde_core..ser..SerializeSeq$GT$3end17hae378ebd94789e29E.exit"

bb.ah:                                            ; preds = %bb.ag
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r), !noalias !30308
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q), !noalias !30308
  store i64 -9223372036854775804, ptr %i.q, align 8, !noalias !30308
  call void @_ZN10serde_yaml7libyaml7emitter7Emitter4emit17h53d4955187604356E(ptr noalias noundef nonnull sret([80 x i8]) align 8 captures(address) dereferenceable(80) %i.r, ptr noalias noundef nonnull align 8 dereferenceable(8) %i.gh, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(48) %i.q)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !noalias !30308
  %i.gp = getelementptr inbounds nuw i8, ptr %i.r, i64 72
  %i.gq = load i32, ptr %i.gp, align 8, !range !58, !noalias !30308, !noundef !34
  %.not.i.i.i = icmp eq i32 %i.gq, 9
  br i1 %.not.i.i.i, label %bb.aj, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p), !noalias !30308
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.p, ptr noundef nonnull align 8 dereferenceable(80) %i.r, i64 80, i1 false), !noalias !30308
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !noalias !30308
  %i.gr = call noundef nonnull align 8 ptr @"_ZN107_$LT$serde_yaml..error..Error$u20$as$u20$core..convert..From$LT$serde_yaml..libyaml..emitter..Error$GT$$GT$4from17h7289f7533d4a6ad5E"(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(80) %i.p)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !noalias !30308
  br label %"_ZN98_$LT$$RF$mut$u20$serde_yaml..ser..Serializer$LT$W$GT$$u20$as$u20$serde_core..ser..SerializeSeq$GT$3end17hae378ebd94789e29E.exit"

bb.aj:                                            ; preds = %bb.ah
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !noalias !30308
  br label %"_ZN98_$LT$$RF$mut$u20$serde_yaml..ser..Serializer$LT$W$GT$$u20$as$u20$serde_core..ser..SerializeSeq$GT$3end17hae378ebd94789e29E.exit"

bb.ak:                                            ; preds = %bb.ac
  %i.gs = getelementptr inbounds nuw i8, ptr %i.fq, i64 48
  %i.gt = getelementptr inbounds nuw i8, ptr %i.fq, i64 56
  %i.gu = getelementptr inbounds nuw i8, ptr %i.fq, i64 24
  %i.gv = load i64, ptr %i.gt, align 8, !noundef !34
  %i.gw = load i64, ptr %i.gs, align 8, !noundef !34 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ag)
  call fastcc void @"_ZN18nickel_lang_vector6vector19Vector$LT$T$C$_$GT$16iter_starting_at17hd9fff75982f33f12E"(ptr noalias noundef align 8 captures(address) dereferenceable(40) %i.ag, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.gu, i64 noundef %i.gw)
  %i.gx = sub i64 %i.gv, %i.gw                    ; 3 uses
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ag, i64 40 ; 3 uses
  store i64 %i.gx, ptr %.sroa.2.0..sroa_idx, align 8
  %i.gy = icmp eq i64 %i.gx, 0
  br i1 %i.gy, label %.thread, label %.lr.ph138

thread-pre-split:                                 ; preds = %"_ZN98_$LT$$RF$mut$u20$serde_yaml..ser..Serializer$LT$W$GT$$u20$as$u20$serde_core..ser..SerializeSeq$GT$17serialize_element17hf42ac4f2588af7a4E.exit"
  %.pr = load i64, ptr %.sroa.2.0..sroa_idx, align 8 ; 2 uses
  %i.gz = icmp eq i64 %.pr, 0
  br i1 %i.gz, label %.thread, label %.lr.ph138

.lr.ph138:                                        ; preds = %bb.ak, %thread-pre-split
  %i.ha = phi i64 [ %.pr, %thread-pre-split ], [ %i.gx, %bb.ak ]
  %i.hb = add i64 %i.ha, -1
  store i64 %i.hb, ptr %.sroa.2.0..sroa_idx, align 8
  %i.hc = invoke fastcc noundef align 8 dereferenceable_or_null(8) ptr @"_ZN104_$LT$nickel_lang_vector..vector..Iter$LT$T$C$_$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hb850492b82192a4bE"(ptr noalias noundef align 8 dereferenceable(40) %i.ag)
          to label %bb.al unwind label %bb.am     ; 2 uses

bb.al:                                            ; preds = %.lr.ph138
  %.not48 = icmp eq ptr %i.hc, null
  br i1 %.not48, label %.thread, label %bb.ao

bb.am:                                            ; preds = %bb.ao, %.lr.ph138
  %i.hd = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.val56 = load i64, ptr %i.ag, align 8          ; 2 uses
  %i.he = icmp eq i64 %.val56, 0
  br i1 %i.he, label %common.resume, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.hf = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  %.val57 = load ptr, ptr %i.hf, align 8, !nonnull !34, !noundef !34
  %i.hg = shl nuw i64 %.val56, 4
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val57, i64 noundef %i.hg, i64 noundef range(i64 1, -9223372036854775807) 8) #53
  br label %common.resume

bb.ao:                                            ; preds = %bb.al
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ft) ]
  %i.hh = invoke fastcc noundef align 8 ptr @"_ZN16nickel_lang_core9serialize99_$LT$impl$u20$serde_core..ser..Serialize$u20$for$u20$nickel_lang_core..eval..value..NickelValue$GT$9serialize17h5cc073478534ddfbE"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.hc, ptr noalias noundef align 8 dereferenceable(40) %i.ft)
          to label %"_ZN98_$LT$$RF$mut$u20$serde_yaml..ser..Serializer$LT$W$GT$$u20$as$u20$serde_core..ser..SerializeSeq$GT$17serialize_element17hf42ac4f2588af7a4E.exit" unwind label %bb.am, !inline_history !30224 ; 2 uses

.thread:                                          ; preds = %bb.al, %thread-pre-split, %bb.ak
  %.val = load i64, ptr %i.ag, align 8            ; 2 uses
  %i.hi = icmp eq i64 %.val, 0
  br i1 %i.hi, label %"_ZN4core3ptr154drop_in_place$LT$core..iter..adapters..take..Take$LT$nickel_lang_vector..vector..Iter$LT$nickel_lang_core..eval..value..NickelValue$C$32_usize$GT$$GT$$GT$17h23990a143caecc5bE.exit60", label %bb.ap

bb.ap:                                            ; preds = %.thread
  %i.hj = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  %.val53 = load ptr, ptr %i.hj, align 8, !nonnull !34, !noundef !34
  %i.hk = shl nuw i64 %.val, 4
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val53, i64 noundef %i.hk, i64 noundef range(i64 1, -9223372036854775807) 8) #53
  br label %"_ZN4core3ptr154drop_in_place$LT$core..iter..adapters..take..Take$LT$nickel_lang_vector..vector..Iter$LT$nickel_lang_core..eval..value..NickelValue$C$32_usize$GT$$GT$$GT$17h23990a143caecc5bE.exit60"

"_ZN4core3ptr154drop_in_place$LT$core..iter..adapters..take..Take$LT$nickel_lang_vector..vector..Iter$LT$nickel_lang_core..eval..value..NickelValue$C$32_usize$GT$$GT$$GT$17h23990a143caecc5bE.exit60": ; preds = %.thread, %bb.ap
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ag)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ft) ]
  call void @llvm.experimental.noalias.scope.decl(metadata !30309)
  call void @llvm.experimental.noalias.scope.decl(metadata !30310)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !30311
  %i.hl = getelementptr inbounds nuw i8, ptr %i.ft, i64 24 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !30311
  store i64 -9223372036854775801, ptr %i.f, align 8, !noalias !30311
  call void @_ZN10serde_yaml7libyaml7emitter7Emitter4emit17h53d4955187604356E(ptr noalias noundef nonnull sret([80 x i8]) align 8 captures(address) dereferenceable(80) %i.g, ptr noalias noundef nonnull align 8 dereferenceable(8) %i.hl, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(48) %i.f)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !30311
  %i.hm = getelementptr inbounds nuw i8, ptr %i.g, i64 72
  %i.hn = load i32, ptr %i.hm, align 8, !range !58, !noalias !30311, !noundef !34
  %.not.i.i175 = icmp eq i32 %i.hn, 9
  br i1 %.not.i.i175, label %bb.ar, label %bb.aq

bb.aq:                                            ; preds = %"_ZN4core3ptr154drop_in_place$LT$core..iter..adapters..take..Take$LT$nickel_lang_vector..vector..Iter$LT$nickel_lang_core..eval..value..NickelValue$C$32_usize$GT$$GT$$GT$17h23990a143caecc5bE.exit60"
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !30311
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.e, ptr noundef nonnull align 8 dereferenceable(80) %i.g, i64 80, i1 false), !noalias !30311
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !30311
  %i.ho = call noundef nonnull align 8 ptr @"_ZN107_$LT$serde_yaml..error..Error$u20$as$u20$core..convert..From$LT$serde_yaml..libyaml..emitter..Error$GT$$GT$4from17h7289f7533d4a6ad5E"(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(80) %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !30311
  br label %"_ZN98_$LT$$RF$mut$u20$serde_yaml..ser..Serializer$LT$W$GT$$u20$as$u20$serde_core..ser..SerializeSeq$GT$3end17hae378ebd94789e29E.exit"

bb.ar:                                            ; preds = %"_ZN4core3ptr154drop_in_place$LT$core..iter..adapters..take..Take$LT$nickel_lang_vector..vector..Iter$LT$nickel_lang_core..eval..value..NickelValue$C$32_usize$GT$$GT$$GT$17h23990a143caecc5bE.exit60"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !30311
  call void @llvm.experimental.noalias.scope.decl(metadata !30312)
  %i.hp = getelementptr inbounds nuw i8, ptr %i.ft, i64 32 ; 2 uses
  %i.hq = load i64, ptr %i.hp, align 8, !alias.scope !30313, !noundef !34
  %i.hr = add i64 %i.hq, -1                       ; 2 uses
  store i64 %i.hr, ptr %i.hp, align 8, !alias.scope !30313
  %i.hs = icmp eq i64 %i.hr, 0
  br i1 %i.hs, label %bb.as, label %"_ZN98_$LT$$RF$mut$u20$serde_yaml..ser..Serializer$LT$W$GT$$u20$as$u20$serde_core..ser..SerializeSeq$GT$3end17hae378ebd94789e29E.exit"

bb.as:                                            ; preds = %bb.ar
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !30313
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !30313
  store i64 -9223372036854775804, ptr %i.c, align 8, !noalias !30313
  call void @_ZN10serde_yaml7libyaml7emitter7Emitter4emit17h53d4955187604356E(ptr noalias noundef nonnull sret([80 x i8]) align 8 captures(address) dereferenceable(80) %i.d, ptr noalias noundef nonnull align 8 dereferenceable(8) %i.hl, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(48) %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !30313
  %i.ht = getelementptr inbounds nuw i8, ptr %i.d, i64 72
  %i.hu = load i32, ptr %i.ht, align 8, !range !58, !noalias !30313, !noundef !34
  %.not.i.i.i177 = icmp eq i32 %i.hu, 9
  br i1 %.not.i.i.i177, label %bb.au, label %bb.at

bb.at:                                            ; preds = %bb.as
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !30313
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.b, ptr noundef nonnull align 8 dereferenceable(80) %i.d, i64 80, i1 false), !noalias !30313
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !30313
  %i.hv = call noundef nonnull align 8 ptr @"_ZN107_$LT$serde_yaml..error..Error$u20$as$u20$core..convert..From$LT$serde_yaml..libyaml..emitter..Error$GT$$GT$4from17h7289f7533d4a6ad5E"(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(80) %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !30313
  br label %"_ZN98_$LT$$RF$mut$u20$serde_yaml..ser..Serializer$LT$W$GT$$u20$as$u20$serde_core..ser..SerializeSeq$GT$3end17hae378ebd94789e29E.exit"

bb.au:                                            ; preds = %bb.as
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !30313
  br label %"_ZN98_$LT$$RF$mut$u20$serde_yaml..ser..Serializer$LT$W$GT$$u20$as$u20$serde_core..ser..SerializeSeq$GT$3end17hae378ebd94789e29E.exit"

"_ZN98_$LT$$RF$mut$u20$serde_yaml..ser..Serializer$LT$W$GT$$u20$as$u20$serde_core..ser..SerializeSeq$GT$17serialize_element17hf42ac4f2588af7a4E.exit": ; preds = %bb.ao
  %.not49 = icmp eq ptr %i.hh, null
  br i1 %.not49, label %thread-pre-split, label %bb.av

bb.av:                                            ; preds = %"_ZN98_$LT$$RF$mut$u20$serde_yaml..ser..Serializer$LT$W$GT$$u20$as$u20$serde_core..ser..SerializeSeq$GT$17serialize_element17hf42ac4f2588af7a4E.exit"
  %.val54 = load i64, ptr %i.ag, align 8          ; 2 uses
  %i.hw = icmp eq i64 %.val54, 0
  br i1 %i.hw, label %"_ZN4core3ptr154drop_in_place$LT$core..iter..adapters..take..Take$LT$nickel_lang_vector..vector..Iter$LT$nickel_lang_core..eval..value..NickelValue$C$32_usize$GT$$GT$$GT$17h23990a143caecc5bE.exit61", label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %i.hx = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  %.val55 = load ptr, ptr %i.hx, align 8, !nonnull !34, !noundef !34
  %i.hy = shl nuw i64 %.val54, 4
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val55, i64 noundef %i.hy, i64 noundef range(i64 1, -9223372036854775807) 8) #53
  br label %"_ZN4core3ptr154drop_in_place$LT$core..iter..adapters..take..Take$LT$nickel_lang_vector..vector..Iter$LT$nickel_lang_core..eval..value..NickelValue$C$32_usize$GT$$GT$$GT$17h23990a143caecc5bE.exit61"

"_ZN4core3ptr154drop_in_place$LT$core..iter..adapters..take..Take$LT$nickel_lang_vector..vector..Iter$LT$nickel_lang_core..eval..value..NickelValue$C$32_usize$GT$$GT$$GT$17h23990a143caecc5bE.exit61": ; preds = %bb.av, %bb.aw
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ag)
  br label %"_ZN98_$LT$$RF$mut$u20$serde_yaml..ser..Serializer$LT$W$GT$$u20$as$u20$serde_core..ser..SerializeSeq$GT$3end17hae378ebd94789e29E.exit"

bb.ax:                                            ; preds = %bb.z
  call void @llvm.experimental.noalias.scope.decl(metadata !30314)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !noalias !30315
  %i.hz = getelementptr inbounds nuw i8, ptr %i.fw, i64 8
  %i.ia = load ptr, ptr %i.hz, align 8, !alias.scope !30314, !noalias !30316, !nonnull !34, !noundef !34 ; 2 uses
  %i.ib = getelementptr inbounds nuw i8, ptr %i.fw, i64 16
  %i.ic = load i64, ptr %i.ib, align 8, !alias.scope !30314, !noalias !30316, !noundef !34
  %i.id = getelementptr inbounds nuw [72 x i8], ptr %i.ia, i64 %i.ic
  call fastcc void @_ZN4core4iter6traits8iterator8Iterator7collect17haa039c55e2a3aebfE(ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.o, ptr noundef nonnull %i.ia, ptr noundef %i.id), !noalias !30315, !inline_history !30234
  %i.ie = load i64, ptr %i.o, align 8, !range !57, !noalias !30315, !noundef !34 ; 7 uses
  %i.if = icmp eq i64 %i.ie, -9223372036854775808
  %i.ig = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %i.ih = load ptr, ptr %i.ig, align 8, !noalias !30315 ; 16 uses
  br i1 %i.if, label %bb.ay, label %bb.be

bb.ay:                                            ; preds = %bb.ax
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !30317
  %i.ii = getelementptr inbounds nuw i8, ptr %i.ih, i64 360
  store ptr %i.ii, ptr %i.i, align 8, !noalias !30317
  %.sroa.42.0..sroa_idx.i90 = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  store ptr @"_ZN79_$LT$nickel_lang_parser..identifier..LocIdent$u20$as$u20$core..fmt..Display$GT$3fmt17hb3e33a24e8926132E", ptr %.sroa.42.0..sroa_idx.i90, align 8, !noalias !30317
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !30318
  store ptr @565, ptr %i.h, align 8, !noalias !30319
  %.sroa.4.0..sroa_idx.i91 = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  store i64 2, ptr %.sroa.4.0..sroa_idx.i91, align 8, !noalias !30319
  %.sroa.5.0..sroa_idx.i92 = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  store ptr %i.i, ptr %.sroa.5.0..sroa_idx.i92, align 8, !noalias !30319
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  store i64 1, ptr %.sroa.6.0..sroa_idx.i, align 8, !noalias !30319
  %.sroa.7.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.h, i64 32
  store ptr null, ptr %.sroa.7.0..sroa_idx.i, align 8, !noalias !30319
  invoke void @_ZN5alloc3fmt6format12format_inner17hce37e7516f243f46E(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.j, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.h)
          to label %bb.ba unwind label %bb.az, !noalias !30315

bb.az:                                            ; preds = %bb.ba, %bb.ay
  %i.ij = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr102drop_in_place$LT$alloc..boxed..Box$LT$nickel_lang_core..term..record..MissingFieldDefErrorData$GT$$GT$17hf1f720335a798440E"(ptr nonnull align 8 %i.ih) #61
          to label %common.resume unwind label %bb.bd, !noalias !30315

bb.ba:                                            ; preds = %bb.ay
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !30318
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !30317
  %i.ik = invoke fastcc noundef nonnull align 8 ptr @"_ZN67_$LT$serde_yaml..error..Error$u20$as$u20$serde_core..ser..Error$GT$6custom17h2da330649a01136eE"(ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.j)
          to label %bb.bb unwind label %bb.az, !noalias !30315

bb.bb:                                            ; preds = %bb.ba
  invoke fastcc void @"_ZN4core3ptr66drop_in_place$LT$nickel_lang_core..term..record..FieldMetadata$GT$17hd9e56ba5b292b097E"(ptr noalias noundef nonnull align 8 dereferenceable(384) %i.ih)
          to label %"_ZN16nickel_lang_core9serialize16serialize_record28_$u7b$$u7b$closure$u7d$$u7d$17he965a37a47b4b684E.exit" unwind label %bb.bc, !noalias !30315

common.resume:                                    ; preds = %bb.am, %bb.an, %.body, %bb.bi, %bb.az, %bb.bc
  %common.resume.op = phi { ptr, i32 } [ %.pn.i, %.body ], [ %i.ij, %bb.az ], [ %i.il, %bb.bc ], [ %.pn.i, %bb.bi ], [ %i.hd, %bb.an ], [ %i.hd, %bb.am ]
  resume { ptr, i32 } %common.resume.op

bb.bc:                                            ; preds = %bb.bb
  %i.il = landingpad { ptr, i32 }
          cleanup
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull align 8 %i.ih, i64 noundef 384, i64 noundef 8) #53, !noalias !30315
  br label %common.resume

bb.bd:                                            ; preds = %bb.az
  %i.im = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #60, !noalias !30315
  unreachable

"_ZN16nickel_lang_core9serialize16serialize_record28_$u7b$$u7b$closure$u7d$$u7d$17he965a37a47b4b684E.exit": ; preds = %bb.bb
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull align 8 %i.ih, i64 noundef 384, i64 noundef 8) #53, !noalias !30315
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !noalias !30315
  br label %"_ZN98_$LT$$RF$mut$u20$serde_yaml..ser..Serializer$LT$W$GT$$u20$as$u20$serde_core..ser..SerializeSeq$GT$3end17hae378ebd94789e29E.exit"

bb.be:                                            ; preds = %bb.ax
  %.sroa.632.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  %.sroa.632.0.copyload.i = load i64, ptr %.sroa.632.0..sroa_idx.i, align 8, !noalias !30315 ; 8 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !noalias !30315
  %i.in = icmp ult i64 %.sroa.632.0.copyload.i, 2
  br i1 %i.in, label %bb.bk, label %bb.bf, !prof !40

bb.bf:                                            ; preds = %bb.be
  %i.io = icmp ult i64 %.sroa.632.0.copyload.i, 21
  br i1 %i.io, label %bb.bh, label %bb.bg, !prof !40

bb.bg:                                            ; preds = %bb.bf
  invoke fastcc void @_ZN4core5slice4sort6stable14driftsort_main17h3d4a6c45acce1fc7E(ptr noalias noundef nonnull align 8 %i.ih, i64 noundef %.sroa.632.0.copyload.i)
          to label %.thread117 unwind label %bb.bj

bb.bh:                                            ; preds = %bb.bf
  invoke fastcc void @_ZN4core5slice4sort6shared9smallsort25insertion_sort_shift_left17hd05844799a56d224E(ptr noalias noundef nonnull align 8 %i.ih, i64 noundef %.sroa.632.0.copyload.i)
          to label %.thread117 unwind label %bb.bj

.body:                                            ; preds = %bb.cd, %bb.cc, %bb.bw, %bb.bt, %bb.bs, %bb.bj
  %.pn.i = phi { ptr, i32 } [ %i.ir, %bb.bj ], [ %lpad.phi, %bb.bs ], [ %i.jk, %bb.bw ], [ %lpad.phi, %bb.bt ], [ %i.js, %bb.cc ], [ %i.js, %bb.cd ] ; 2 uses
  %i.ip = icmp eq i64 %i.ie, 0
  br i1 %i.ip, label %common.resume, label %bb.bi

bb.bi:                                            ; preds = %.body
  %i.iq = shl nuw i64 %i.ie, 4
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ih) ], !noalias !30314
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.ih, i64 noundef %i.iq, i64 noundef range(i64 1, -9223372036854775807) 8) #53, !noalias !30314
  br label %common.resume

bb.bj:                                            ; preds = %bb.bg, %bb.bh, %bb.bn, %bb.bl
  %i.ir = landingpad { ptr, i32 }
          cleanup
  br label %.body

.thread117:                                       ; preds = %bb.bg, %bb.bh
  %i.is = icmp ult i64 %.sroa.632.0.copyload.i, 576460752303423488
  call void @llvm.assume(i1 %i.is)
  br label %bb.bl

bb.bk:                                            ; preds = %bb.be
  %i.it = icmp eq i64 %.sroa.632.0.copyload.i, 0
  br i1 %i.it, label %bb.bl, label %bb.bm

bb.bl:                                            ; preds = %.thread117, %bb.bk
  %i.iu = invoke fastcc noundef align 8 ptr @"_ZN10serde_yaml3ser19Serializer$LT$W$GT$18emit_mapping_start17h4476938e70e0ab0fE"(ptr noalias noundef nonnull align 8 dereferenceable(40) %1)
          to label %.noexc84 unwind label %bb.bj  ; 2 uses

.noexc84:                                         ; preds = %bb.bl
  %.not.i79 = icmp eq ptr %i.iu, null
  br i1 %.not.i79, label %bb.bq, label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17hfedeefc8cce81a05E.exit68"

bb.bm:                                            ; preds = %bb.bk
  %i.iv = load i64, ptr %1, align 8, !range !70, !alias.scope !30320, !noalias !30314, !noundef !34 ; 2 uses
  %i.iw = icmp ne i64 %i.iv, -9223372036854775805
  call void @llvm.assume(i1 %i.iw), !noalias !30314
  %i.ix = icmp sgt i64 %i.iv, -1
  br i1 %i.ix, label %bb.bn, label %.thread164

bb.bn:                                            ; preds = %bb.bm
  %i.iy = invoke fastcc noundef align 8 ptr @"_ZN10serde_yaml3ser19Serializer$LT$W$GT$18emit_mapping_start17h4476938e70e0ab0fE"(ptr noalias noundef nonnull align 8 dereferenceable(40) %1)
          to label %.noexc85 unwind label %bb.bj  ; 2 uses

.noexc85:                                         ; preds = %bb.bn
  %.not16.i = icmp eq ptr %i.iy, null
  br i1 %.not16.i, label %bb.bo, label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17hfedeefc8cce81a05E.exit68"

bb.bo:                                            ; preds = %.noexc85
  %.val.pr.i = load i64, ptr %1, align 8, !alias.scope !30320, !noalias !30314 ; 3 uses
  %i.iz = icmp ne i64 %.val.pr.i, -9223372036854775805
  call void @llvm.assume(i1 %i.iz), !noalias !30314
  %or.cond.i.i83 = icmp slt i64 %.val.pr.i, 1
  br i1 %or.cond.i.i83, label %.thread164, label %bb.bp

bb.bp:                                            ; preds = %bb.bo
  %i.ja = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val17.i = load ptr, ptr %i.ja, align 8, !alias.scope !30320, !noalias !30314, !nonnull !34, !noundef !34
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val17.i, i64 noundef %.val.pr.i, i64 noundef range(i64 1, -9223372036854775807) 1) #53, !noalias !30321
  br label %.thread164

.thread164:                                       ; preds = %bb.bm, %bb.bo, %bb.bp
  %.sroa.05.022.i = phi i64 [ -9223372036854775806, %bb.bp ], [ -9223372036854775806, %bb.bo ], [ -9223372036854775807, %bb.bm ]
  store i64 %.sroa.05.022.i, ptr %1, align 8, !alias.scope !30320, !noalias !30314
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ih) ]
  br label %.lr.ph

bb.bq:                                            ; preds = %.noexc84
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ih) ]
  %i.jb = icmp eq i64 %.sroa.632.0.copyload.i, 0
  br i1 %i.jb, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.thread164, %bb.bq
  %.idx166.pn = shl nuw nsw i64 %.sroa.632.0.copyload.i, 4
  %2 = getelementptr inbounds nuw i8, ptr %i.ih, i64 %.idx166.pn
  %.sroa.42.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.l, i64 8 ; 3 uses
  %.sroa.53.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.l, i64 16 ; 2 uses
  %i.jc = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %.sroa.4.0..sroa_idx.i77 = getelementptr inbounds nuw i8, ptr %i.k, i64 20
  %.sroa.5.0..sroa_idx.i78 = getelementptr inbounds nuw i8, ptr %i.k, i64 22
  %i.jd = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.je = getelementptr inbounds nuw i8, ptr %1, i64 8
  br label %bb.br

bb.br:                                            ; preds = %.lr.ph, %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17hfedeefc8cce81a05E.exit"
  %.sroa.036.0.i136 = phi ptr [ %i.ih, %.lr.ph ], [ %i.jf, %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17hfedeefc8cce81a05E.exit" ] ; 3 uses
  %i.jf = getelementptr inbounds nuw i8, ptr %.sroa.036.0.i136, i64 16 ; 2 uses
  %i.jg = getelementptr inbounds nuw i8, ptr %.sroa.036.0.i136, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !30322
  store i64 0, ptr %i.l, align 8, !noalias !30322
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.42.0..sroa_idx.i, align 8, !noalias !30322
  store i64 0, ptr %.sroa.53.0..sroa_idx.i, align 8, !noalias !30322
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !30322
  store i32 -536870880, ptr %i.jc, align 8, !noalias !30322
  store i16 0, ptr %.sroa.4.0..sroa_idx.i77, align 4, !noalias !30322
  store i16 0, ptr %.sroa.5.0..sroa_idx.i78, align 2, !noalias !30322
  store ptr %i.l, ptr %i.k, align 8, !noalias !30322
  store ptr @744, ptr %i.jd, align 8, !noalias !30322
  %i.jh = invoke noundef zeroext i1 @"_ZN76_$LT$nickel_lang_parser..identifier..Ident$u20$as$u20$core..fmt..Display$GT$3fmt17hbc9c1c42002a29c9E"(ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(4) %.sroa.036.0.i136, ptr noalias noundef nonnull align 8 dereferenceable(24) %i.k)
          to label %bb.bu unwind label %.loopexit, !noalias !30323

.loopexit:                                        ; preds = %bb.br
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.bs

.loopexit.split-lp:                               ; preds = %bb.bv
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.bs

bb.bs:                                            ; preds = %.loopexit.split-lp, %.loopexit
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !30324), !noalias !30314
  call void @llvm.experimental.noalias.scope.decl(metadata !30325), !noalias !30314
  %.val.i.i.i = load i64, ptr %i.l, align 8, !range !42, !alias.scope !30326, !noalias !30322, !noundef !34 ; 2 uses
  %i.ji = icmp eq i64 %.val.i.i.i, 0
  br i1 %i.ji, label %.body, label %bb.bt

bb.bt:                                            ; preds = %bb.bs
  %.val1.i.i.i = load ptr, ptr %.sroa.42.0..sroa_idx.i, align 8, !alias.scope !30326, !noalias !30322, !nonnull !34, !noundef !34
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i, i64 noundef %.val.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #53, !noalias !30327
  br label %.body

bb.bu:                                            ; preds = %bb.br
  br i1 %i.jh, label %bb.bv, label %bb.bx, !prof !37

bb.bv:                                            ; preds = %bb.bu
  invoke void @_ZN4core6result13unwrap_failed17h0501379eaec3e720E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @745, i64 noundef 55, ptr noundef nonnull align 1 %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @765, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @747) #59
          to label %.noexc.i unwind label %.loopexit.split-lp, !noalias !30323

.noexc.i:                                         ; preds = %bb.bv
  unreachable

._crit_edge:                                      ; preds = %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17hfedeefc8cce81a05E.exit", %bb.bq
  %i.jj = invoke fastcc noundef align 8 ptr @"_ZN98_$LT$$RF$mut$u20$serde_yaml..ser..Serializer$LT$W$GT$$u20$as$u20$serde_core..ser..SerializeMap$GT$3end17ha3bd47b2552bda12E"(ptr noalias noundef align 8 dereferenceable(40) %1)
          to label %bb.ci unwind label %bb.bw, !noalias !30314, !inline_history !30234 ; 2 uses

bb.bw:                                            ; preds = %._crit_edge
  %i.jk = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.bx:                                            ; preds = %bb.bu
  %.sroa.0113.0.copyload = load i64, ptr %i.l, align 8, !noalias !30328 ; 6 uses
  %.sroa.7114.0.copyload = load ptr, ptr %.sroa.42.0..sroa_idx.i, align 8, !noalias !30328, !nonnull !34, !noundef !34 ; 4 uses
  %.sroa.11.0.copyload = load i64, ptr %.sroa.53.0..sroa_idx.i, align 8, !noalias !30328
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !30322
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !30322
  %i.jl = invoke fastcc noundef align 8 ptr @"_ZN96_$LT$$RF$mut$u20$serde_yaml..ser..Serializer$LT$W$GT$$u20$as$u20$serde_core..ser..Serializer$GT$13serialize_str17h1856c37243fb62e3E"(ptr noalias noundef nonnull align 8 dereferenceable(40) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %.sroa.7114.0.copyload, i64 noundef %.sroa.11.0.copyload)
          to label %.noexc unwind label %bb.cc, !inline_history !30256 ; 2 uses

.noexc:                                           ; preds = %bb.bx
  %.not.i72 = icmp eq ptr %i.jl, null
  br i1 %.not.i72, label %bb.by, label %"_ZN98_$LT$$RF$mut$u20$serde_yaml..ser..Serializer$LT$W$GT$$u20$as$u20$serde_core..ser..SerializeMap$GT$15serialize_entry17hd2227c2908340335E.exit"

bb.by:                                            ; preds = %.noexc
  %i.jm = load i64, ptr %1, align 8, !range !70, !noalias !30329, !noundef !34 ; 2 uses
  %i.jn = icmp ne i64 %i.jm, -9223372036854775805
  call void @llvm.assume(i1 %i.jn), !noalias !30314
  %i.jo = load ptr, ptr %i.jg, align 8, !alias.scope !30330, !noalias !30331, !nonnull !34, !align !41, !noundef !34
  %i.jp = invoke fastcc noundef align 8 ptr @"_ZN16nickel_lang_core9serialize99_$LT$impl$u20$serde_core..ser..Serialize$u20$for$u20$nickel_lang_core..eval..value..NickelValue$GT$9serialize17h5cc073478534ddfbE"(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.jo, ptr noalias noundef nonnull align 8 dereferenceable(40) %1)
          to label %.noexc76 unwind label %bb.cc, !inline_history !30264 ; 2 uses

.noexc76:                                         ; preds = %bb.by
  %.not11.i = icmp eq ptr %i.jp, null
  br i1 %.not11.i, label %bb.bz, label %"_ZN98_$LT$$RF$mut$u20$serde_yaml..ser..Serializer$LT$W$GT$$u20$as$u20$serde_core..ser..SerializeMap$GT$15serialize_entry17hd2227c2908340335E.exit"

bb.bz:                                            ; preds = %.noexc76
  %i.jq = icmp sgt i64 %i.jm, -1
  br i1 %i.jq, label %bb.ca, label %bb.cf

bb.ca:                                            ; preds = %bb.bz
  %.val.i74 = load i64, ptr %1, align 8, !range !70, !noalias !30329, !noundef !34 ; 3 uses
  %i.jr = icmp ne i64 %.val.i74, -9223372036854775805
  call void @llvm.assume(i1 %i.jr), !noalias !30314
  %or.cond.i.i75 = icmp slt i64 %.val.i74, 1
  br i1 %or.cond.i.i75, label %"_ZN4core3ptr43drop_in_place$LT$serde_yaml..ser..State$GT$17h2652bd8416454e84E.exit.i", label %bb.cb

bb.cb:                                            ; preds = %bb.ca
  %.val12.i = load ptr, ptr %i.je, align 8, !noalias !30329, !nonnull !34, !noundef !34
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val12.i, i64 noundef %.val.i74, i64 noundef range(i64 1, -9223372036854775807) 1) #53, !noalias !30332, !inline_history !30256
  br label %"_ZN4core3ptr43drop_in_place$LT$serde_yaml..ser..State$GT$17h2652bd8416454e84E.exit.i"

"_ZN4core3ptr43drop_in_place$LT$serde_yaml..ser..State$GT$17h2652bd8416454e84E.exit.i": ; preds = %bb.cb, %bb.ca
  store i64 -9223372036854775804, ptr %1, align 8, !noalias !30329
  br label %bb.cf

bb.cc:                                            ; preds = %bb.by, %bb.bx
  %i.js = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.jt = icmp eq i64 %.sroa.0113.0.copyload, 0
  br i1 %i.jt, label %.body, label %bb.cd

bb.cd:                                            ; preds = %bb.cc
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.7114.0.copyload, i64 noundef %.sroa.0113.0.copyload, i64 noundef range(i64 1, -9223372036854775807) 1) #53, !noalias !30333
  br label %.body

"_ZN98_$LT$$RF$mut$u20$serde_yaml..ser..Serializer$LT$W$GT$$u20$as$u20$serde_core..ser..SerializeMap$GT$15serialize_entry17hd2227c2908340335E.exit": ; preds = %.noexc, %.noexc76
  %.sroa.0.0.i73 = phi ptr [ %i.jp, %.noexc76 ], [ %i.jl, %.noexc ] ; 2 uses
  %i.ju = icmp eq i64 %.sroa.0113.0.copyload, 0
  br i1 %i.ju, label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17hfedeefc8cce81a05E.exit68", label %bb.ce

bb.ce:                                            ; preds = %"_ZN98_$LT$$RF$mut$u20$serde_yaml..ser..Serializer$LT$W$GT$$u20$as$u20$serde_core..ser..SerializeMap$GT$15serialize_entry17hd2227c2908340335E.exit"
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.7114.0.copyload, i64 noundef %.sroa.0113.0.copyload, i64 noundef range(i64 1, -9223372036854775807) 1) #53, !noalias !30334
  br label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17hfedeefc8cce81a05E.exit68"

bb.cf:                                            ; preds = %"_ZN4core3ptr43drop_in_place$LT$serde_yaml..ser..State$GT$17h2652bd8416454e84E.exit.i", %bb.bz
  %i.jv = icmp eq i64 %.sroa.0113.0.copyload, 0
  br i1 %i.jv, label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17hfedeefc8cce81a05E.exit", label %bb.cg

bb.cg:                                            ; preds = %bb.cf
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.7114.0.copyload, i64 noundef %.sroa.0113.0.copyload, i64 noundef range(i64 1, -9223372036854775807) 1) #53, !noalias !30335
  br label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17hfedeefc8cce81a05E.exit"

"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17hfedeefc8cce81a05E.exit": ; preds = %bb.cg, %bb.cf
  %i.jw = icmp eq ptr %i.jf, %2
  br i1 %i.jw, label %._crit_edge, label %bb.br

"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17hfedeefc8cce81a05E.exit68": ; preds = %.noexc85, %.noexc84, %"_ZN98_$LT$$RF$mut$u20$serde_yaml..ser..Serializer$LT$W$GT$$u20$as$u20$serde_core..ser..SerializeMap$GT$15serialize_entry17hd2227c2908340335E.exit", %bb.ce
  %.sroa.0.0.i62 = phi ptr [ %.sroa.0.0.i73, %"_ZN98_$LT$$RF$mut$u20$serde_yaml..ser..Serializer$LT$W$GT$$u20$as$u20$serde_core..ser..SerializeMap$GT$15serialize_entry17hd2227c2908340335E.exit" ], [ %.sroa.0.0.i73, %bb.ce ], [ %i.iy, %.noexc85 ], [ %i.iu, %.noexc84 ] ; 2 uses
  %i.jx = icmp eq i64 %i.ie, 0
  br i1 %i.jx, label %"_ZN98_$LT$$RF$mut$u20$serde_yaml..ser..Serializer$LT$W$GT$$u20$as$u20$serde_core..ser..SerializeSeq$GT$3end17hae378ebd94789e29E.exit", label %bb.ch

bb.ch:                                            ; preds = %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17hfedeefc8cce81a05E.exit68"
  %i.jy = shl nuw i64 %i.ie, 4
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ih) ], !noalias !30314
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.ih, i64 noundef %i.jy, i64 noundef range(i64 1, -9223372036854775807) 8) #53, !noalias !30314
  br label %"_ZN98_$LT$$RF$mut$u20$serde_yaml..ser..Serializer$LT$W$GT$$u20$as$u20$serde_core..ser..SerializeSeq$GT$3end17hae378ebd94789e29E.exit"

bb.ci:                                            ; preds = %._crit_edge
  %i.jz = icmp eq i64 %i.ie, 0
  br i1 %i.jz, label %"_ZN98_$LT$$RF$mut$u20$serde_yaml..ser..Serializer$LT$W$GT$$u20$as$u20$serde_core..ser..SerializeSeq$GT$3end17hae378ebd94789e29E.exit", label %bb.cj

bb.cj:                                            ; preds = %bb.ci
  %i.ka = shl nuw i64 %i.ie, 4
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.ih, i64 noundef %i.ka, i64 noundef range(i64 1, -9223372036854775807) 8) #53, !noalias !30314
  br label %"_ZN98_$LT$$RF$mut$u20$serde_yaml..ser..Serializer$LT$W$GT$$u20$as$u20$serde_core..ser..SerializeSeq$GT$3end17hae378ebd94789e29E.exit"

bb.ck:                                            ; preds = %bb.z
  %i.kb = call fastcc noundef align 8 ptr @"_ZN10serde_yaml3ser19Serializer$LT$W$GT$18emit_mapping_start17h4476938e70e0ab0fE"(ptr noalias noundef nonnull align 8 dereferenceable(40) %1) ; 2 uses
  %.not.i63 = icmp eq ptr %i.kb, null
  br i1 %.not.i63, label %bb.cl, label %"_ZN98_$LT$$RF$mut$u20$serde_yaml..ser..Serializer$LT$W$GT$$u20$as$u20$serde_core..ser..SerializeSeq$GT$3end17hae378ebd94789e29E.exit"

bb.cl:                                            ; preds = %bb.ck
  %i.kc = call fastcc noundef align 8 ptr @"_ZN98_$LT$$RF$mut$u20$serde_yaml..ser..Serializer$LT$W$GT$$u20$as$u20$serde_core..ser..SerializeMap$GT$3end17ha3bd47b2552bda12E"(ptr noalias noundef align 8 dereferenceable(40) %1)
  br label %"_ZN98_$LT$$RF$mut$u20$serde_yaml..ser..Serializer$LT$W$GT$$u20$as$u20$serde_core..ser..SerializeSeq$GT$3end17hae378ebd94789e29E.exit"

bb.cm:                                            ; preds = %bb.ab
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aj)
  %i.kd = getelementptr inbounds nuw i8, ptr %i.gf, i64 8
  store ptr %i.kd, ptr %i.aj, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ah)
  store ptr %i.aj, ptr %i.ah, align 8
  %.sroa.438.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  store ptr @"_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17hf76eb57b33851465E", ptr %.sroa.438.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !noalias !30336
  store ptr @575, ptr %i.n, align 8, !noalias !30337
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  store i64 2, ptr %.sroa.4.0..sroa_idx, align 8, !noalias !30337
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  store ptr %i.ah, ptr %.sroa.5.0..sroa_idx, align 8, !noalias !30337
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.n, i64 24
  store i64 1, ptr %.sroa.6.0..sroa_idx, align 8, !noalias !30337
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.n, i64 32
  store ptr null, ptr %.sroa.7.0..sroa_idx, align 8, !noalias !30337
  call void @_ZN5alloc3fmt6format12format_inner17hce37e7516f243f46E(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.ai, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.n), !noalias !30338
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !30336
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ah)
  %i.ke = call fastcc noundef nonnull align 8 ptr @"_ZN67_$LT$serde_yaml..error..Error$u20$as$u20$serde_core..ser..Error$GT$6custom17h2da330649a01136eE"(ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.ai)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aj)
  br label %"_ZN98_$LT$$RF$mut$u20$serde_yaml..ser..Serializer$LT$W$GT$$u20$as$u20$serde_core..ser..SerializeSeq$GT$3end17hae378ebd94789e29E.exit"

bb.cn:                                            ; preds = %bb.ab
  %i.kf = getelementptr inbounds nuw i8, ptr %i.gf, i64 8
  %i.kg = call { ptr, i64 } @_ZN18nickel_lang_parser10identifier8LocIdent5label17h23360175f9f53dcbE(ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(20) %i.kf) ; 2 uses
  %i.kh = extractvalue { ptr, i64 } %i.kg, 0
  %i.ki = extractvalue { ptr, i64 } %i.kg, 1
  %i.kj = call fastcc noundef align 8 ptr @"_ZN96_$LT$$RF$mut$u20$serde_yaml..ser..Serializer$LT$W$GT$$u20$as$u20$serde_core..ser..Serializer$GT$13serialize_str17h1856c37243fb62e3E"(ptr noalias noundef align 8 dereferenceable(40) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.kh, i64 noundef %i.ki)
  br label %"_ZN98_$LT$$RF$mut$u20$serde_yaml..ser..Serializer$LT$W$GT$$u20$as$u20$serde_core..ser..SerializeSeq$GT$3end17hae378ebd94789e29E.exit"
}

; Function Attrs: nonlazybind uwtable
define internal fastcc noundef align 8 ptr @"_ZN16nickel_lang_core9serialize99_$LT$impl$u20$serde_core..ser..Serialize$u20$for$u20$nickel_lang_core..eval..value..NickelValue$GT$9serialize17hacc6e39238a85b25E"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %0, ptr noalias noundef nonnull align 8 dereferenceable(40) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = alloca [80 x i8], align 8                ; 4 uses
  %i.c = alloca [48 x i8], align 8                ; 4 uses
  %i.d = alloca [80 x i8], align 8                ; 6 uses
  %i.e = alloca [80 x i8], align 8                ; 4 uses
  %i.f = alloca [48 x i8], align 8                ; 4 uses
  %i.g = alloca [80 x i8], align 8                ; 6 uses
  %i.h = alloca [48 x i8], align 8                ; 8 uses
  %i.i = alloca [16 x i8], align 8                ; 5 uses
  %i.j = alloca [24 x i8], align 8                ; 4 uses
  %i.k = alloca [24 x i8], align 8                ; 8 uses
  %i.l = alloca [24 x i8], align 8                ; 8 uses
  %i.m = alloca [48 x i8], align 8                ; 8 uses
  %i.n = alloca [48 x i8], align 8                ; 8 uses
  %i.o = alloca [24 x i8], align 8                ; 7 uses
  %i.p = alloca [80 x i8], align 8                ; 4 uses
  %i.q = alloca [48 x i8], align 8                ; 4 uses
  %i.r = alloca [80 x i8], align 8                ; 6 uses
  %i.s = alloca [80 x i8], align 8                ; 4 uses
  %i.t = alloca [48 x i8], align 8                ; 4 uses
  %i.u = alloca [80 x i8], align 8                ; 6 uses
  %i.v = alloca [40 x i8], align 1                ; 9 uses
  %i.w = alloca [48 x i8], align 8                ; 7 uses
  %i.x = alloca [40 x i8], align 1                ; 8 uses
  %i.y = alloca [48 x i8], align 8                ; 7 uses
  %i.z = alloca [48 x i8], align 8                ; 7 uses
  %i.aa = alloca [24 x i8], align 1               ; 4 uses
  %i.ab = alloca [48 x i8], align 8               ; 7 uses
  %i.ac = alloca [48 x i8], align 8               ; 7 uses
  %i.ad = alloca [16 x i8], align 8               ; 5 uses
  %i.ae = alloca [16 x i8], align 8               ; 5 uses
  %i.af = alloca [24 x i8], align 8               ; 2 uses
  %i.ag = alloca [48 x i8], align 8               ; 12 uses
  %i.ah = alloca [16 x i8], align 8               ; 5 uses
  %i.ai = alloca [24 x i8], align 8               ; 2 uses
  %i.aj = alloca [8 x i8], align 8                ; 4 uses
  %i.ak = alloca [16 x i8], align 8               ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ak)
  call void @_ZN16nickel_lang_core4eval5value11NickelValue11content_ref17h965d5e35cf2e1421E(ptr noalias noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.ak, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %0)
  %i.al = load i8, ptr %i.ak, align 8, !range !59, !noundef !34
  switch i8 %i.al, label %bb.b [
    i8 0, label %bb.c
    i8 1, label %bb.d
    i8 2, label %bb.e
    i8 3, label %bb.y
    i8 4, label %bb.z
    i8 5, label %bb.aa
    i8 9, label %bb.ab
  ]

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ae)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ad)
  %i.am = call { ptr, i64 } @_ZN16nickel_lang_core4eval5value11NickelValue7type_of17hc677b7a5c04dea94E(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %0) ; 2 uses
  %i.an = extractvalue { ptr, i64 } %i.am, 0      ; 2 uses
  %.not51 = icmp eq ptr %i.an, null               ; 2 uses
  %i.ao = extractvalue { ptr, i64 } %i.am, 1
  %spec.select = select i1 %.not51, ptr @576, ptr %i.an
  %spec.select174 = select i1 %.not51, i64 7, i64 %i.ao
  store ptr %spec.select, ptr %i.ad, align 8
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  store i64 %spec.select174, ptr %i.ap, align 8
  store ptr %i.ad, ptr %i.ae, align 8
  %.sroa.442.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  store ptr @"_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h2a16057073367944E", ptr %.sroa.442.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !noalias !30435
  store ptr @578, ptr %i.m, align 8, !noalias !30436
  %.sroa.497.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  store i64 1, ptr %.sroa.497.0..sroa_idx, align 8, !noalias !30436
  %.sroa.598.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  store ptr %i.ae, ptr %.sroa.598.0..sroa_idx, align 8, !noalias !30436
  %.sroa.699.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.m, i64 24
  store i64 1, ptr %.sroa.699.0..sroa_idx, align 8, !noalias !30436
  %.sroa.7100.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.m, i64 32
  store ptr null, ptr %.sroa.7100.0..sroa_idx, align 8, !noalias !30436
  call void @_ZN5alloc3fmt6format12format_inner17hce37e7516f243f46E(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.af, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.m), !noalias !30437
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !30435
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ad)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ae)
  %i.aq = call fastcc noundef nonnull align 8 ptr @"_ZN67_$LT$serde_yaml..error..Error$u20$as$u20$serde_core..ser..Error$GT$6custom17h2da330649a01136eE"(ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.af)
  br label %"_ZN98_$LT$$RF$mut$u20$serde_yaml..ser..Serializer$LT$W$GT$$u20$as$u20$serde_core..ser..SerializeSeq$GT$3end17h8b77945799276088E.exit"

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ac), !noalias !30438
  store i64 -9223372036854775808, ptr %i.ac, align 8, !noalias !30438
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ac, i64 24
  store ptr @40, ptr %i.ar, align 8, !noalias !30438
  %i.as = getelementptr inbounds nuw i8, ptr %i.ac, i64 32
  store i64 4, ptr %i.as, align 8, !noalias !30438
  %i.at = getelementptr inbounds nuw i8, ptr %i.ac, i64 40
  store i8 1, ptr %i.at, align 8, !noalias !30438
  %i.au = call fastcc noundef align 8 ptr @"_ZN10serde_yaml3ser19Serializer$LT$W$GT$11emit_scalar17hcc6645ab41939712E"(ptr noalias noundef nonnull align 8 dereferenceable(40) %1, ptr noalias noundef align 8 captures(address) dereferenceable(48) %i.ac)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ac), !noalias !30438
  br label %"_ZN98_$LT$$RF$mut$u20$serde_yaml..ser..Serializer$LT$W$GT$$u20$as$u20$serde_core..ser..SerializeSeq$GT$3end17h8b77945799276088E.exit"

bb.d:                                             ; preds = %bb.a
  %i.av = getelementptr inbounds nuw i8, ptr %i.ak, i64 1
  %i.aw = load i8, ptr %i.av, align 1, !range !44, !noundef !34
  %i.ax = trunc nuw i8 %i.aw to i1                ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ab), !noalias !30439
  %..i = select i1 %i.ax, i64 4, i64 5
  %.2.i = select i1 %i.ax, ptr @39, ptr @38
  store i64 -9223372036854775808, ptr %i.ab, align 8, !noalias !30439
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ab, i64 24
  store ptr %.2.i, ptr %i.ay, align 8, !noalias !30439
  %i.az = getelementptr inbounds nuw i8, ptr %i.ab, i64 32
  store i64 %..i, ptr %i.az, align 8, !noalias !30439
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ab, i64 40
  store i8 1, ptr %i.ba, align 8, !noalias !30439
  %i.bb = call fastcc noundef align 8 ptr @"_ZN10serde_yaml3ser19Serializer$LT$W$GT$11emit_scalar17hcc6645ab41939712E"(ptr noalias noundef nonnull align 8 dereferenceable(40) %1, ptr noalias noundef align 8 captures(address) dereferenceable(48) %i.ab)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab), !noalias !30439
  br label %"_ZN98_$LT$$RF$mut$u20$serde_yaml..ser..Serializer$LT$W$GT$$u20$as$u20$serde_core..ser..SerializeSeq$GT$3end17h8b77945799276088E.exit"

bb.e:                                             ; preds = %bb.a
  %i.bc = getelementptr inbounds nuw i8, ptr %i.ak, i64 8
  %i.bd = load ptr, ptr %i.bc, align 8, !nonnull !34, !align !41, !noundef !34 ; 9 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !30440)
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 24
  %i.bf = load i64, ptr %i.be, align 8, !range !57, !alias.scope !30440, !noalias !30441, !noundef !34
  %.not13.i = icmp eq i64 %i.bf, -9223372036854775808
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bd, i64 32
  %i.bh = load i64, ptr %i.bg, align 8, !alias.scope !30440, !noalias !30441
  %i.bi = icmp eq i64 %i.bh, 1
  %or.cond.i = select i1 %.not13.i, i1 %i.bi, i1 false
  br i1 %or.cond.i, label %bb.i, label %_ZN11malachite_q10conversion27primitive_int_from_rational15try_from_signed17h56de1730099a3575E.exit.thread.i

_ZN11malachite_q10conversion27primitive_int_from_rational15try_from_signed17h56de1730099a3575E.exit.thread.i: ; preds = %bb.m, %bb.k, %_ZN11malachite_q10comparison25partial_cmp_primitive_int18partial_cmp_signed17hbfd23e45c1efc22cE.exit.i, %bb.e
  %i.bj = call { double, i8 } @"_ZN11malachite_q10conversion29primitive_float_from_rational120_$LT$impl$u20$malachite_base..num..conversion..traits..RoundingFrom$LT$$RF$malachite_q..Rational$GT$$u20$for$u20$f64$GT$13rounding_from17h9677da0c2715dedfE"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.bd, i8 noundef 4), !noalias !30441
  %i.bk = extractvalue { double, i8 } %i.bj, 0    ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aa), !noalias !30442
  call void @llvm.lifetime.start.p0(ptr nonnull %i.z), !noalias !30442
  %i.bl = bitcast double %i.bk to i64             ; 2 uses
end_hunk_1
begin_hunk_2_@"_ZN16nickel_lang_core9serialize99_$LT$impl$u20$serde_core..ser..Serialize$u20$for$u20$nickel_lang_core..eval..value..NickelValue$GT$9serialize17hacc6e39238a85b25E":bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t), !noalias !30454
  store i64 -9223372036854775801, ptr %i.t, align 8, !noalias !30454
  call void @_ZN10serde_yaml7libyaml7emitter7Emitter4emit17h53d4955187604356E(ptr noalias noundef nonnull sret([80 x i8]) align 8 captures(address) dereferenceable(80) %i.u, ptr noalias noundef nonnull align 8 dereferenceable(8) %i.gh, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(48) %i.t)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t), !noalias !30454
  %i.gi = getelementptr inbounds nuw i8, ptr %i.u, i64 72
  %i.gj = load i32, ptr %i.gi, align 8, !range !58, !noalias !30454, !noundef !34
  %.not.i.i58 = icmp eq i32 %i.gj, 9
  br i1 %.not.i.i58, label %bb.ag, label %bb.af

bb.af:                                            ; preds = %bb.ae
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s), !noalias !30454
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.s, ptr noundef nonnull align 8 dereferenceable(80) %i.u, i64 80, i1 false), !noalias !30454
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u), !noalias !30454
  %i.gk = call noundef nonnull align 8 ptr @"_ZN107_$LT$serde_yaml..error..Error$u20$as$u20$core..convert..From$LT$serde_yaml..libyaml..emitter..Error$GT$$GT$4from17h7289f7533d4a6ad5E"(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(80) %i.s)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !noalias !30454
  br label %"_ZN98_$LT$$RF$mut$u20$serde_yaml..ser..Serializer$LT$W$GT$$u20$as$u20$serde_core..ser..SerializeSeq$GT$3end17h8b77945799276088E.exit"

bb.ag:                                            ; preds = %bb.ae
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u), !noalias !30454
  call void @llvm.experimental.noalias.scope.decl(metadata !30455)
  %i.gl = getelementptr inbounds nuw i8, ptr %i.ft, i64 32 ; 2 uses
  %i.gm = load i64, ptr %i.gl, align 8, !alias.scope !30456, !noundef !34
  %i.gn = add i64 %i.gm, -1                       ; 2 uses
  store i64 %i.gn, ptr %i.gl, align 8, !alias.scope !30456
  %i.go = icmp eq i64 %i.gn, 0
  br i1 %i.go, label %bb.ah, label %"_ZN98_$LT$$RF$mut$u20$serde_yaml..ser..Serializer$LT$W$GT$$u20$as$u20$serde_core..ser..SerializeSeq$GT$3end17h8b77945799276088E.exit"

bb.ah:                                            ; preds = %bb.ag
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r), !noalias !30456
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q), !noalias !30456
  store i64 -9223372036854775804, ptr %i.q, align 8, !noalias !30456
  call void @_ZN10serde_yaml7libyaml7emitter7Emitter4emit17h53d4955187604356E(ptr noalias noundef nonnull sret([80 x i8]) align 8 captures(address) dereferenceable(80) %i.r, ptr noalias noundef nonnull align 8 dereferenceable(8) %i.gh, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(48) %i.q)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !noalias !30456
  %i.gp = getelementptr inbounds nuw i8, ptr %i.r, i64 72
  %i.gq = load i32, ptr %i.gp, align 8, !range !58, !noalias !30456, !noundef !34
  %.not.i.i.i = icmp eq i32 %i.gq, 9
  br i1 %.not.i.i.i, label %bb.aj, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p), !noalias !30456
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.p, ptr noundef nonnull align 8 dereferenceable(80) %i.r, i64 80, i1 false), !noalias !30456
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !noalias !30456
  %i.gr = call noundef nonnull align 8 ptr @"_ZN107_$LT$serde_yaml..error..Error$u20$as$u20$core..convert..From$LT$serde_yaml..libyaml..emitter..Error$GT$$GT$4from17h7289f7533d4a6ad5E"(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(80) %i.p)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !noalias !30456
  br label %"_ZN98_$LT$$RF$mut$u20$serde_yaml..ser..Serializer$LT$W$GT$$u20$as$u20$serde_core..ser..SerializeSeq$GT$3end17h8b77945799276088E.exit"

bb.aj:                                            ; preds = %bb.ah
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !noalias !30456
  br label %"_ZN98_$LT$$RF$mut$u20$serde_yaml..ser..Serializer$LT$W$GT$$u20$as$u20$serde_core..ser..SerializeSeq$GT$3end17h8b77945799276088E.exit"

bb.ak:                                            ; preds = %bb.ac
  %i.gs = getelementptr inbounds nuw i8, ptr %i.fq, i64 48
  %i.gt = getelementptr inbounds nuw i8, ptr %i.fq, i64 56
  %i.gu = getelementptr inbounds nuw i8, ptr %i.fq, i64 24
  %i.gv = load i64, ptr %i.gt, align 8, !noundef !34
  %i.gw = load i64, ptr %i.gs, align 8, !noundef !34 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ag)
  call fastcc void @"_ZN18nickel_lang_vector6vector19Vector$LT$T$C$_$GT$16iter_starting_at17hd9fff75982f33f12E"(ptr noalias noundef align 8 captures(address) dereferenceable(40) %i.ag, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.gu, i64 noundef %i.gw)
  %i.gx = sub i64 %i.gv, %i.gw                    ; 3 uses
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ag, i64 40 ; 3 uses
  store i64 %i.gx, ptr %.sroa.2.0..sroa_idx, align 8
  %i.gy = icmp eq i64 %i.gx, 0
  br i1 %i.gy, label %.thread, label %.lr.ph138

thread-pre-split:                                 ; preds = %"_ZN98_$LT$$RF$mut$u20$serde_yaml..ser..Serializer$LT$W$GT$$u20$as$u20$serde_core..ser..SerializeSeq$GT$17serialize_element17h39c86d493ae8738fE.exit"
  %.pr = load i64, ptr %.sroa.2.0..sroa_idx, align 8 ; 2 uses
  %i.gz = icmp eq i64 %.pr, 0
  br i1 %i.gz, label %.thread, label %.lr.ph138

.lr.ph138:                                        ; preds = %bb.ak, %thread-pre-split
  %i.ha = phi i64 [ %.pr, %thread-pre-split ], [ %i.gx, %bb.ak ]
  %i.hb = add i64 %i.ha, -1
  store i64 %i.hb, ptr %.sroa.2.0..sroa_idx, align 8
  %i.hc = invoke fastcc noundef align 8 dereferenceable_or_null(8) ptr @"_ZN104_$LT$nickel_lang_vector..vector..Iter$LT$T$C$_$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hb850492b82192a4bE"(ptr noalias noundef align 8 dereferenceable(40) %i.ag)
          to label %bb.al unwind label %bb.am     ; 2 uses

bb.al:                                            ; preds = %.lr.ph138
  %.not48 = icmp eq ptr %i.hc, null
  br i1 %.not48, label %.thread, label %bb.ao

bb.am:                                            ; preds = %bb.ao, %.lr.ph138
  %i.hd = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.val56 = load i64, ptr %i.ag, align 8          ; 2 uses
  %i.he = icmp eq i64 %.val56, 0
  br i1 %i.he, label %common.resume, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.hf = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  %.val57 = load ptr, ptr %i.hf, align 8, !nonnull !34, !noundef !34
  %i.hg = shl nuw i64 %.val56, 4
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val57, i64 noundef %i.hg, i64 noundef range(i64 1, -9223372036854775807) 8) #53
  br label %common.resume

bb.ao:                                            ; preds = %bb.al
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ft) ]
  %i.hh = invoke fastcc noundef align 8 ptr @"_ZN16nickel_lang_core9serialize99_$LT$impl$u20$serde_core..ser..Serialize$u20$for$u20$nickel_lang_core..eval..value..NickelValue$GT$9serialize17hacc6e39238a85b25E"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.hc, ptr noalias noundef align 8 dereferenceable(40) %i.ft)
          to label %"_ZN98_$LT$$RF$mut$u20$serde_yaml..ser..Serializer$LT$W$GT$$u20$as$u20$serde_core..ser..SerializeSeq$GT$17serialize_element17h39c86d493ae8738fE.exit" unwind label %bb.am, !inline_history !30372 ; 2 uses

.thread:                                          ; preds = %bb.al, %thread-pre-split, %bb.ak
  %.val = load i64, ptr %i.ag, align 8            ; 2 uses
  %i.hi = icmp eq i64 %.val, 0
  br i1 %i.hi, label %"_ZN4core3ptr154drop_in_place$LT$core..iter..adapters..take..Take$LT$nickel_lang_vector..vector..Iter$LT$nickel_lang_core..eval..value..NickelValue$C$32_usize$GT$$GT$$GT$17h23990a143caecc5bE.exit60", label %bb.ap

bb.ap:                                            ; preds = %.thread
  %i.hj = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  %.val53 = load ptr, ptr %i.hj, align 8, !nonnull !34, !noundef !34
  %i.hk = shl nuw i64 %.val, 4
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val53, i64 noundef %i.hk, i64 noundef range(i64 1, -9223372036854775807) 8) #53
  br label %"_ZN4core3ptr154drop_in_place$LT$core..iter..adapters..take..Take$LT$nickel_lang_vector..vector..Iter$LT$nickel_lang_core..eval..value..NickelValue$C$32_usize$GT$$GT$$GT$17h23990a143caecc5bE.exit60"

"_ZN4core3ptr154drop_in_place$LT$core..iter..adapters..take..Take$LT$nickel_lang_vector..vector..Iter$LT$nickel_lang_core..eval..value..NickelValue$C$32_usize$GT$$GT$$GT$17h23990a143caecc5bE.exit60": ; preds = %.thread, %bb.ap
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ag)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ft) ]
  call void @llvm.experimental.noalias.scope.decl(metadata !30457)
  call void @llvm.experimental.noalias.scope.decl(metadata !30458)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !30459
  %i.hl = getelementptr inbounds nuw i8, ptr %i.ft, i64 24 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !30459
  store i64 -9223372036854775801, ptr %i.f, align 8, !noalias !30459
  call void @_ZN10serde_yaml7libyaml7emitter7Emitter4emit17h53d4955187604356E(ptr noalias noundef nonnull sret([80 x i8]) align 8 captures(address) dereferenceable(80) %i.g, ptr noalias noundef nonnull align 8 dereferenceable(8) %i.hl, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(48) %i.f)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !30459
  %i.hm = getelementptr inbounds nuw i8, ptr %i.g, i64 72
  %i.hn = load i32, ptr %i.hm, align 8, !range !58, !noalias !30459, !noundef !34
  %.not.i.i175 = icmp eq i32 %i.hn, 9
  br i1 %.not.i.i175, label %bb.ar, label %bb.aq

bb.aq:                                            ; preds = %"_ZN4core3ptr154drop_in_place$LT$core..iter..adapters..take..Take$LT$nickel_lang_vector..vector..Iter$LT$nickel_lang_core..eval..value..NickelValue$C$32_usize$GT$$GT$$GT$17h23990a143caecc5bE.exit60"
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !30459
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.e, ptr noundef nonnull align 8 dereferenceable(80) %i.g, i64 80, i1 false), !noalias !30459
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !30459
  %i.ho = call noundef nonnull align 8 ptr @"_ZN107_$LT$serde_yaml..error..Error$u20$as$u20$core..convert..From$LT$serde_yaml..libyaml..emitter..Error$GT$$GT$4from17h7289f7533d4a6ad5E"(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(80) %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !30459
  br label %"_ZN98_$LT$$RF$mut$u20$serde_yaml..ser..Serializer$LT$W$GT$$u20$as$u20$serde_core..ser..SerializeSeq$GT$3end17h8b77945799276088E.exit"

bb.ar:                                            ; preds = %"_ZN4core3ptr154drop_in_place$LT$core..iter..adapters..take..Take$LT$nickel_lang_vector..vector..Iter$LT$nickel_lang_core..eval..value..NickelValue$C$32_usize$GT$$GT$$GT$17h23990a143caecc5bE.exit60"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !30459
  call void @llvm.experimental.noalias.scope.decl(metadata !30460)
  %i.hp = getelementptr inbounds nuw i8, ptr %i.ft, i64 32 ; 2 uses
  %i.hq = load i64, ptr %i.hp, align 8, !alias.scope !30461, !noundef !34
  %i.hr = add i64 %i.hq, -1                       ; 2 uses
  store i64 %i.hr, ptr %i.hp, align 8, !alias.scope !30461
  %i.hs = icmp eq i64 %i.hr, 0
  br i1 %i.hs, label %bb.as, label %"_ZN98_$LT$$RF$mut$u20$serde_yaml..ser..Serializer$LT$W$GT$$u20$as$u20$serde_core..ser..SerializeSeq$GT$3end17h8b77945799276088E.exit"

bb.as:                                            ; preds = %bb.ar
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !30461
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !30461
  store i64 -9223372036854775804, ptr %i.c, align 8, !noalias !30461
  call void @_ZN10serde_yaml7libyaml7emitter7Emitter4emit17h53d4955187604356E(ptr noalias noundef nonnull sret([80 x i8]) align 8 captures(address) dereferenceable(80) %i.d, ptr noalias noundef nonnull align 8 dereferenceable(8) %i.hl, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(48) %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !30461
  %i.ht = getelementptr inbounds nuw i8, ptr %i.d, i64 72
  %i.hu = load i32, ptr %i.ht, align 8, !range !58, !noalias !30461, !noundef !34
  %.not.i.i.i177 = icmp eq i32 %i.hu, 9
  br i1 %.not.i.i.i177, label %bb.au, label %bb.at

bb.at:                                            ; preds = %bb.as
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !30461
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.b, ptr noundef nonnull align 8 dereferenceable(80) %i.d, i64 80, i1 false), !noalias !30461
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !30461
  %i.hv = call noundef nonnull align 8 ptr @"_ZN107_$LT$serde_yaml..error..Error$u20$as$u20$core..convert..From$LT$serde_yaml..libyaml..emitter..Error$GT$$GT$4from17h7289f7533d4a6ad5E"(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(80) %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !30461
  br label %"_ZN98_$LT$$RF$mut$u20$serde_yaml..ser..Serializer$LT$W$GT$$u20$as$u20$serde_core..ser..SerializeSeq$GT$3end17h8b77945799276088E.exit"

bb.au:                                            ; preds = %bb.as
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !30461
  br label %"_ZN98_$LT$$RF$mut$u20$serde_yaml..ser..Serializer$LT$W$GT$$u20$as$u20$serde_core..ser..SerializeSeq$GT$3end17h8b77945799276088E.exit"

"_ZN98_$LT$$RF$mut$u20$serde_yaml..ser..Serializer$LT$W$GT$$u20$as$u20$serde_core..ser..SerializeSeq$GT$17serialize_element17h39c86d493ae8738fE.exit": ; preds = %bb.ao
  %.not49 = icmp eq ptr %i.hh, null
  br i1 %.not49, label %thread-pre-split, label %bb.av

bb.av:                                            ; preds = %"_ZN98_$LT$$RF$mut$u20$serde_yaml..ser..Serializer$LT$W$GT$$u20$as$u20$serde_core..ser..SerializeSeq$GT$17serialize_element17h39c86d493ae8738fE.exit"
  %.val54 = load i64, ptr %i.ag, align 8          ; 2 uses
  %i.hw = icmp eq i64 %.val54, 0
  br i1 %i.hw, label %"_ZN4core3ptr154drop_in_place$LT$core..iter..adapters..take..Take$LT$nickel_lang_vector..vector..Iter$LT$nickel_lang_core..eval..value..NickelValue$C$32_usize$GT$$GT$$GT$17h23990a143caecc5bE.exit61", label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %i.hx = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  %.val55 = load ptr, ptr %i.hx, align 8, !nonnull !34, !noundef !34
  %i.hy = shl nuw i64 %.val54, 4
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val55, i64 noundef %i.hy, i64 noundef range(i64 1, -9223372036854775807) 8) #53
  br label %"_ZN4core3ptr154drop_in_place$LT$core..iter..adapters..take..Take$LT$nickel_lang_vector..vector..Iter$LT$nickel_lang_core..eval..value..NickelValue$C$32_usize$GT$$GT$$GT$17h23990a143caecc5bE.exit61"

"_ZN4core3ptr154drop_in_place$LT$core..iter..adapters..take..Take$LT$nickel_lang_vector..vector..Iter$LT$nickel_lang_core..eval..value..NickelValue$C$32_usize$GT$$GT$$GT$17h23990a143caecc5bE.exit61": ; preds = %bb.av, %bb.aw
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ag)
  br label %"_ZN98_$LT$$RF$mut$u20$serde_yaml..ser..Serializer$LT$W$GT$$u20$as$u20$serde_core..ser..SerializeSeq$GT$3end17h8b77945799276088E.exit"

bb.ax:                                            ; preds = %bb.z
  call void @llvm.experimental.noalias.scope.decl(metadata !30462)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !noalias !30463
  %i.hz = getelementptr inbounds nuw i8, ptr %i.fw, i64 8
  %i.ia = load ptr, ptr %i.hz, align 8, !alias.scope !30462, !noalias !30464, !nonnull !34, !noundef !34 ; 2 uses
  %i.ib = getelementptr inbounds nuw i8, ptr %i.fw, i64 16
  %i.ic = load i64, ptr %i.ib, align 8, !alias.scope !30462, !noalias !30464, !noundef !34
  %i.id = getelementptr inbounds nuw [72 x i8], ptr %i.ia, i64 %i.ic
  call fastcc void @_ZN4core4iter6traits8iterator8Iterator7collect17haa039c55e2a3aebfE(ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.o, ptr noundef nonnull %i.ia, ptr noundef %i.id), !noalias !30463, !inline_history !30382
  %i.ie = load i64, ptr %i.o, align 8, !range !57, !noalias !30463, !noundef !34 ; 7 uses
  %i.if = icmp eq i64 %i.ie, -9223372036854775808
  %i.ig = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %i.ih = load ptr, ptr %i.ig, align 8, !noalias !30463 ; 16 uses
  br i1 %i.if, label %bb.ay, label %bb.be

bb.ay:                                            ; preds = %bb.ax
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !30465
  %i.ii = getelementptr inbounds nuw i8, ptr %i.ih, i64 360
  store ptr %i.ii, ptr %i.i, align 8, !noalias !30465
  %.sroa.42.0..sroa_idx.i90 = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  store ptr @"_ZN79_$LT$nickel_lang_parser..identifier..LocIdent$u20$as$u20$core..fmt..Display$GT$3fmt17hb3e33a24e8926132E", ptr %.sroa.42.0..sroa_idx.i90, align 8, !noalias !30465
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !30466
  store ptr @565, ptr %i.h, align 8, !noalias !30467
  %.sroa.4.0..sroa_idx.i91 = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  store i64 2, ptr %.sroa.4.0..sroa_idx.i91, align 8, !noalias !30467
  %.sroa.5.0..sroa_idx.i92 = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  store ptr %i.i, ptr %.sroa.5.0..sroa_idx.i92, align 8, !noalias !30467
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  store i64 1, ptr %.sroa.6.0..sroa_idx.i, align 8, !noalias !30467
  %.sroa.7.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.h, i64 32
  store ptr null, ptr %.sroa.7.0..sroa_idx.i, align 8, !noalias !30467
  invoke void @_ZN5alloc3fmt6format12format_inner17hce37e7516f243f46E(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.j, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.h)
          to label %bb.ba unwind label %bb.az, !noalias !30463

bb.az:                                            ; preds = %bb.ba, %bb.ay
  %i.ij = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr102drop_in_place$LT$alloc..boxed..Box$LT$nickel_lang_core..term..record..MissingFieldDefErrorData$GT$$GT$17hf1f720335a798440E"(ptr nonnull align 8 %i.ih) #61
          to label %common.resume unwind label %bb.bd, !noalias !30463

bb.ba:                                            ; preds = %bb.ay
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !30466
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !30465
  %i.ik = invoke fastcc noundef nonnull align 8 ptr @"_ZN67_$LT$serde_yaml..error..Error$u20$as$u20$serde_core..ser..Error$GT$6custom17h2da330649a01136eE"(ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.j)
          to label %bb.bb unwind label %bb.az, !noalias !30463

bb.bb:                                            ; preds = %bb.ba
  invoke fastcc void @"_ZN4core3ptr66drop_in_place$LT$nickel_lang_core..term..record..FieldMetadata$GT$17hd9e56ba5b292b097E"(ptr noalias noundef nonnull align 8 dereferenceable(384) %i.ih)
          to label %"_ZN16nickel_lang_core9serialize16serialize_record28_$u7b$$u7b$closure$u7d$$u7d$17hbcf9ac95ddbaa666E.exit" unwind label %bb.bc, !noalias !30463

common.resume:                                    ; preds = %bb.am, %bb.an, %.body, %bb.bi, %bb.az, %bb.bc
  %common.resume.op = phi { ptr, i32 } [ %.pn.i, %.body ], [ %i.ij, %bb.az ], [ %i.il, %bb.bc ], [ %.pn.i, %bb.bi ], [ %i.hd, %bb.an ], [ %i.hd, %bb.am ]
  resume { ptr, i32 } %common.resume.op

bb.bc:                                            ; preds = %bb.bb
  %i.il = landingpad { ptr, i32 }
          cleanup
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull align 8 %i.ih, i64 noundef 384, i64 noundef 8) #53, !noalias !30463
  br label %common.resume

bb.bd:                                            ; preds = %bb.az
  %i.im = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #60, !noalias !30463
  unreachable

"_ZN16nickel_lang_core9serialize16serialize_record28_$u7b$$u7b$closure$u7d$$u7d$17hbcf9ac95ddbaa666E.exit": ; preds = %bb.bb
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull align 8 %i.ih, i64 noundef 384, i64 noundef 8) #53, !noalias !30463
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !noalias !30463
  br label %"_ZN98_$LT$$RF$mut$u20$serde_yaml..ser..Serializer$LT$W$GT$$u20$as$u20$serde_core..ser..SerializeSeq$GT$3end17h8b77945799276088E.exit"

bb.be:                                            ; preds = %bb.ax
  %.sroa.632.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  %.sroa.632.0.copyload.i = load i64, ptr %.sroa.632.0..sroa_idx.i, align 8, !noalias !30463 ; 8 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !noalias !30463
  %i.in = icmp ult i64 %.sroa.632.0.copyload.i, 2
  br i1 %i.in, label %bb.bk, label %bb.bf, !prof !40

bb.bf:                                            ; preds = %bb.be
  %i.io = icmp ult i64 %.sroa.632.0.copyload.i, 21
  br i1 %i.io, label %bb.bh, label %bb.bg, !prof !40

bb.bg:                                            ; preds = %bb.bf
  invoke fastcc void @_ZN4core5slice4sort6stable14driftsort_main17hd483605606183bf0E(ptr noalias noundef nonnull align 8 %i.ih, i64 noundef %.sroa.632.0.copyload.i)
          to label %.thread117 unwind label %bb.bj

bb.bh:                                            ; preds = %bb.bf
  invoke fastcc void @_ZN4core5slice4sort6shared9smallsort25insertion_sort_shift_left17h69545bd6ad78fd6fE(ptr noalias noundef nonnull align 8 %i.ih, i64 noundef %.sroa.632.0.copyload.i)
          to label %.thread117 unwind label %bb.bj

.body:                                            ; preds = %bb.cd, %bb.cc, %bb.bw, %bb.bt, %bb.bs, %bb.bj
  %.pn.i = phi { ptr, i32 } [ %i.ir, %bb.bj ], [ %lpad.phi, %bb.bs ], [ %i.jk, %bb.bw ], [ %lpad.phi, %bb.bt ], [ %i.js, %bb.cc ], [ %i.js, %bb.cd ] ; 2 uses
  %i.ip = icmp eq i64 %i.ie, 0
  br i1 %i.ip, label %common.resume, label %bb.bi

bb.bi:                                            ; preds = %.body
  %i.iq = shl nuw i64 %i.ie, 4
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ih) ], !noalias !30462
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.ih, i64 noundef %i.iq, i64 noundef range(i64 1, -9223372036854775807) 8) #53, !noalias !30462
  br label %common.resume

bb.bj:                                            ; preds = %bb.bg, %bb.bh, %bb.bn, %bb.bl
  %i.ir = landingpad { ptr, i32 }
          cleanup
  br label %.body

.thread117:                                       ; preds = %bb.bg, %bb.bh
  %i.is = icmp ult i64 %.sroa.632.0.copyload.i, 576460752303423488
  call void @llvm.assume(i1 %i.is)
  br label %bb.bl

bb.bk:                                            ; preds = %bb.be
  %i.it = icmp eq i64 %.sroa.632.0.copyload.i, 0
  br i1 %i.it, label %bb.bl, label %bb.bm

bb.bl:                                            ; preds = %.thread117, %bb.bk
  %i.iu = invoke fastcc noundef align 8 ptr @"_ZN10serde_yaml3ser19Serializer$LT$W$GT$18emit_mapping_start17hdabe8e0decb7b78eE"(ptr noalias noundef nonnull align 8 dereferenceable(40) %1)
          to label %.noexc84 unwind label %bb.bj  ; 2 uses

.noexc84:                                         ; preds = %bb.bl
  %.not.i79 = icmp eq ptr %i.iu, null
  br i1 %.not.i79, label %bb.bq, label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17hfedeefc8cce81a05E.exit68"

bb.bm:                                            ; preds = %bb.bk
  %i.iv = load i64, ptr %1, align 8, !range !70, !alias.scope !30468, !noalias !30462, !noundef !34 ; 2 uses
  %i.iw = icmp ne i64 %i.iv, -9223372036854775805
  call void @llvm.assume(i1 %i.iw), !noalias !30462
  %i.ix = icmp sgt i64 %i.iv, -1
  br i1 %i.ix, label %bb.bn, label %.thread164

bb.bn:                                            ; preds = %bb.bm
  %i.iy = invoke fastcc noundef align 8 ptr @"_ZN10serde_yaml3ser19Serializer$LT$W$GT$18emit_mapping_start17hdabe8e0decb7b78eE"(ptr noalias noundef nonnull align 8 dereferenceable(40) %1)
          to label %.noexc85 unwind label %bb.bj  ; 2 uses

.noexc85:                                         ; preds = %bb.bn
  %.not16.i = icmp eq ptr %i.iy, null
  br i1 %.not16.i, label %bb.bo, label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17hfedeefc8cce81a05E.exit68"

bb.bo:                                            ; preds = %.noexc85
  %.val.pr.i = load i64, ptr %1, align 8, !alias.scope !30468, !noalias !30462 ; 3 uses
  %i.iz = icmp ne i64 %.val.pr.i, -9223372036854775805
  call void @llvm.assume(i1 %i.iz), !noalias !30462
  %or.cond.i.i83 = icmp slt i64 %.val.pr.i, 1
  br i1 %or.cond.i.i83, label %.thread164, label %bb.bp

bb.bp:                                            ; preds = %bb.bo
  %i.ja = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val17.i = load ptr, ptr %i.ja, align 8, !alias.scope !30468, !noalias !30462, !nonnull !34, !noundef !34
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val17.i, i64 noundef %.val.pr.i, i64 noundef range(i64 1, -9223372036854775807) 1) #53, !noalias !30469
  br label %.thread164

.thread164:                                       ; preds = %bb.bm, %bb.bo, %bb.bp
  %.sroa.05.022.i = phi i64 [ -9223372036854775806, %bb.bp ], [ -9223372036854775806, %bb.bo ], [ -9223372036854775807, %bb.bm ]
  store i64 %.sroa.05.022.i, ptr %1, align 8, !alias.scope !30468, !noalias !30462
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ih) ]
  br label %.lr.ph

bb.bq:                                            ; preds = %.noexc84
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ih) ]
  %i.jb = icmp eq i64 %.sroa.632.0.copyload.i, 0
  br i1 %i.jb, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.thread164, %bb.bq
  %.idx166.pn = shl nuw nsw i64 %.sroa.632.0.copyload.i, 4
  %2 = getelementptr inbounds nuw i8, ptr %i.ih, i64 %.idx166.pn
  %.sroa.42.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.l, i64 8 ; 3 uses
  %.sroa.53.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.l, i64 16 ; 2 uses
  %i.jc = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %.sroa.4.0..sroa_idx.i77 = getelementptr inbounds nuw i8, ptr %i.k, i64 20
  %.sroa.5.0..sroa_idx.i78 = getelementptr inbounds nuw i8, ptr %i.k, i64 22
  %i.jd = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.je = getelementptr inbounds nuw i8, ptr %1, i64 8
  br label %bb.br

bb.br:                                            ; preds = %.lr.ph, %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17hfedeefc8cce81a05E.exit"
  %.sroa.036.0.i136 = phi ptr [ %i.ih, %.lr.ph ], [ %i.jf, %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17hfedeefc8cce81a05E.exit" ] ; 3 uses
  %i.jf = getelementptr inbounds nuw i8, ptr %.sroa.036.0.i136, i64 16 ; 2 uses
  %i.jg = getelementptr inbounds nuw i8, ptr %.sroa.036.0.i136, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !30470
  store i64 0, ptr %i.l, align 8, !noalias !30470
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.42.0..sroa_idx.i, align 8, !noalias !30470
  store i64 0, ptr %.sroa.53.0..sroa_idx.i, align 8, !noalias !30470
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !30470
  store i32 -536870880, ptr %i.jc, align 8, !noalias !30470
  store i16 0, ptr %.sroa.4.0..sroa_idx.i77, align 4, !noalias !30470
  store i16 0, ptr %.sroa.5.0..sroa_idx.i78, align 2, !noalias !30470
  store ptr %i.l, ptr %i.k, align 8, !noalias !30470
  store ptr @744, ptr %i.jd, align 8, !noalias !30470
  %i.jh = invoke noundef zeroext i1 @"_ZN76_$LT$nickel_lang_parser..identifier..Ident$u20$as$u20$core..fmt..Display$GT$3fmt17hbc9c1c42002a29c9E"(ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(4) %.sroa.036.0.i136, ptr noalias noundef nonnull align 8 dereferenceable(24) %i.k)
          to label %bb.bu unwind label %.loopexit, !noalias !30471

.loopexit:                                        ; preds = %bb.br
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.bs

.loopexit.split-lp:                               ; preds = %bb.bv
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.bs

bb.bs:                                            ; preds = %.loopexit.split-lp, %.loopexit
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !30472), !noalias !30462
  call void @llvm.experimental.noalias.scope.decl(metadata !30473), !noalias !30462
  %.val.i.i.i = load i64, ptr %i.l, align 8, !range !42, !alias.scope !30474, !noalias !30470, !noundef !34 ; 2 uses
  %i.ji = icmp eq i64 %.val.i.i.i, 0
  br i1 %i.ji, label %.body, label %bb.bt

bb.bt:                                            ; preds = %bb.bs
  %.val1.i.i.i = load ptr, ptr %.sroa.42.0..sroa_idx.i, align 8, !alias.scope !30474, !noalias !30470, !nonnull !34, !noundef !34
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i, i64 noundef %.val.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #53, !noalias !30475
  br label %.body

bb.bu:                                            ; preds = %bb.br
  br i1 %i.jh, label %bb.bv, label %bb.bx, !prof !37

bb.bv:                                            ; preds = %bb.bu
  invoke void @_ZN4core6result13unwrap_failed17h0501379eaec3e720E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @745, i64 noundef 55, ptr noundef nonnull align 1 %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @765, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @747) #59
          to label %.noexc.i unwind label %.loopexit.split-lp, !noalias !30471

.noexc.i:                                         ; preds = %bb.bv
  unreachable

._crit_edge:                                      ; preds = %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17hfedeefc8cce81a05E.exit", %bb.bq
  %i.jj = invoke fastcc noundef align 8 ptr @"_ZN98_$LT$$RF$mut$u20$serde_yaml..ser..Serializer$LT$W$GT$$u20$as$u20$serde_core..ser..SerializeMap$GT$3end17h6b4b656e93277af2E"(ptr noalias noundef align 8 dereferenceable(40) %1)
          to label %bb.ci unwind label %bb.bw, !noalias !30462, !inline_history !30382 ; 2 uses

bb.bw:                                            ; preds = %._crit_edge
  %i.jk = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.bx:                                            ; preds = %bb.bu
  %.sroa.0113.0.copyload = load i64, ptr %i.l, align 8, !noalias !30476 ; 6 uses
  %.sroa.7114.0.copyload = load ptr, ptr %.sroa.42.0..sroa_idx.i, align 8, !noalias !30476, !nonnull !34, !noundef !34 ; 4 uses
  %.sroa.11.0.copyload = load i64, ptr %.sroa.53.0..sroa_idx.i, align 8, !noalias !30476
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !30470
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !30470
  %i.jl = invoke fastcc noundef align 8 ptr @"_ZN96_$LT$$RF$mut$u20$serde_yaml..ser..Serializer$LT$W$GT$$u20$as$u20$serde_core..ser..Serializer$GT$13serialize_str17h5a5484363cbdc18fE"(ptr noalias noundef nonnull align 8 dereferenceable(40) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %.sroa.7114.0.copyload, i64 noundef %.sroa.11.0.copyload)
          to label %.noexc unwind label %bb.cc, !inline_history !30404 ; 2 uses

.noexc:                                           ; preds = %bb.bx
  %.not.i72 = icmp eq ptr %i.jl, null
  br i1 %.not.i72, label %bb.by, label %"_ZN98_$LT$$RF$mut$u20$serde_yaml..ser..Serializer$LT$W$GT$$u20$as$u20$serde_core..ser..SerializeMap$GT$15serialize_entry17h4ef56a8a99cfacf7E.exit"

bb.by:                                            ; preds = %.noexc
  %i.jm = load i64, ptr %1, align 8, !range !70, !noalias !30477, !noundef !34 ; 2 uses
  %i.jn = icmp ne i64 %i.jm, -9223372036854775805
  call void @llvm.assume(i1 %i.jn), !noalias !30462
  %i.jo = load ptr, ptr %i.jg, align 8, !alias.scope !30478, !noalias !30479, !nonnull !34, !align !41, !noundef !34
  %i.jp = invoke fastcc noundef align 8 ptr @"_ZN16nickel_lang_core9serialize99_$LT$impl$u20$serde_core..ser..Serialize$u20$for$u20$nickel_lang_core..eval..value..NickelValue$GT$9serialize17hacc6e39238a85b25E"(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.jo, ptr noalias noundef nonnull align 8 dereferenceable(40) %1)
          to label %.noexc76 unwind label %bb.cc, !inline_history !30412 ; 2 uses

.noexc76:                                         ; preds = %bb.by
  %.not11.i = icmp eq ptr %i.jp, null
  br i1 %.not11.i, label %bb.bz, label %"_ZN98_$LT$$RF$mut$u20$serde_yaml..ser..Serializer$LT$W$GT$$u20$as$u20$serde_core..ser..SerializeMap$GT$15serialize_entry17h4ef56a8a99cfacf7E.exit"

bb.bz:                                            ; preds = %.noexc76
  %i.jq = icmp sgt i64 %i.jm, -1
  br i1 %i.jq, label %bb.ca, label %bb.cf

bb.ca:                                            ; preds = %bb.bz
  %.val.i74 = load i64, ptr %1, align 8, !range !70, !noalias !30477, !noundef !34 ; 3 uses
  %i.jr = icmp ne i64 %.val.i74, -9223372036854775805
  call void @llvm.assume(i1 %i.jr), !noalias !30462
  %or.cond.i.i75 = icmp slt i64 %.val.i74, 1
  br i1 %or.cond.i.i75, label %"_ZN4core3ptr43drop_in_place$LT$serde_yaml..ser..State$GT$17h2652bd8416454e84E.exit.i", label %bb.cb

bb.cb:                                            ; preds = %bb.ca
  %.val12.i = load ptr, ptr %i.je, align 8, !noalias !30477, !nonnull !34, !noundef !34
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val12.i, i64 noundef %.val.i74, i64 noundef range(i64 1, -9223372036854775807) 1) #53, !noalias !30480, !inline_history !30404
  br label %"_ZN4core3ptr43drop_in_place$LT$serde_yaml..ser..State$GT$17h2652bd8416454e84E.exit.i"

"_ZN4core3ptr43drop_in_place$LT$serde_yaml..ser..State$GT$17h2652bd8416454e84E.exit.i": ; preds = %bb.cb, %bb.ca
  store i64 -9223372036854775804, ptr %1, align 8, !noalias !30477
  br label %bb.cf

bb.cc:                                            ; preds = %bb.by, %bb.bx
  %i.js = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.jt = icmp eq i64 %.sroa.0113.0.copyload, 0
  br i1 %i.jt, label %.body, label %bb.cd

bb.cd:                                            ; preds = %bb.cc
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.7114.0.copyload, i64 noundef %.sroa.0113.0.copyload, i64 noundef range(i64 1, -9223372036854775807) 1) #53, !noalias !30481
  br label %.body

"_ZN98_$LT$$RF$mut$u20$serde_yaml..ser..Serializer$LT$W$GT$$u20$as$u20$serde_core..ser..SerializeMap$GT$15serialize_entry17h4ef56a8a99cfacf7E.exit": ; preds = %.noexc, %.noexc76
  %.sroa.0.0.i73 = phi ptr [ %i.jp, %.noexc76 ], [ %i.jl, %.noexc ] ; 2 uses
  %i.ju = icmp eq i64 %.sroa.0113.0.copyload, 0
  br i1 %i.ju, label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17hfedeefc8cce81a05E.exit68", label %bb.ce

bb.ce:                                            ; preds = %"_ZN98_$LT$$RF$mut$u20$serde_yaml..ser..Serializer$LT$W$GT$$u20$as$u20$serde_core..ser..SerializeMap$GT$15serialize_entry17h4ef56a8a99cfacf7E.exit"
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.7114.0.copyload, i64 noundef %.sroa.0113.0.copyload, i64 noundef range(i64 1, -9223372036854775807) 1) #53, !noalias !30482
  br label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17hfedeefc8cce81a05E.exit68"

bb.cf:                                            ; preds = %"_ZN4core3ptr43drop_in_place$LT$serde_yaml..ser..State$GT$17h2652bd8416454e84E.exit.i", %bb.bz
  %i.jv = icmp eq i64 %.sroa.0113.0.copyload, 0
  br i1 %i.jv, label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17hfedeefc8cce81a05E.exit", label %bb.cg

bb.cg:                                            ; preds = %bb.cf
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.7114.0.copyload, i64 noundef %.sroa.0113.0.copyload, i64 noundef range(i64 1, -9223372036854775807) 1) #53, !noalias !30483
  br label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17hfedeefc8cce81a05E.exit"

"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17hfedeefc8cce81a05E.exit": ; preds = %bb.cg, %bb.cf
  %i.jw = icmp eq ptr %i.jf, %2
  br i1 %i.jw, label %._crit_edge, label %bb.br

"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17hfedeefc8cce81a05E.exit68": ; preds = %.noexc85, %.noexc84, %"_ZN98_$LT$$RF$mut$u20$serde_yaml..ser..Serializer$LT$W$GT$$u20$as$u20$serde_core..ser..SerializeMap$GT$15serialize_entry17h4ef56a8a99cfacf7E.exit", %bb.ce
  %.sroa.0.0.i62 = phi ptr [ %.sroa.0.0.i73, %"_ZN98_$LT$$RF$mut$u20$serde_yaml..ser..Serializer$LT$W$GT$$u20$as$u20$serde_core..ser..SerializeMap$GT$15serialize_entry17h4ef56a8a99cfacf7E.exit" ], [ %.sroa.0.0.i73, %bb.ce ], [ %i.iy, %.noexc85 ], [ %i.iu, %.noexc84 ] ; 2 uses
  %i.jx = icmp eq i64 %i.ie, 0
  br i1 %i.jx, label %"_ZN98_$LT$$RF$mut$u20$serde_yaml..ser..Serializer$LT$W$GT$$u20$as$u20$serde_core..ser..SerializeSeq$GT$3end17h8b77945799276088E.exit", label %bb.ch

bb.ch:                                            ; preds = %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17hfedeefc8cce81a05E.exit68"
  %i.jy = shl nuw i64 %i.ie, 4
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ih) ], !noalias !30462
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.ih, i64 noundef %i.jy, i64 noundef range(i64 1, -9223372036854775807) 8) #53, !noalias !30462
  br label %"_ZN98_$LT$$RF$mut$u20$serde_yaml..ser..Serializer$LT$W$GT$$u20$as$u20$serde_core..ser..SerializeSeq$GT$3end17h8b77945799276088E.exit"

bb.ci:                                            ; preds = %._crit_edge
  %i.jz = icmp eq i64 %i.ie, 0
  br i1 %i.jz, label %"_ZN98_$LT$$RF$mut$u20$serde_yaml..ser..Serializer$LT$W$GT$$u20$as$u20$serde_core..ser..SerializeSeq$GT$3end17h8b77945799276088E.exit", label %bb.cj

bb.cj:                                            ; preds = %bb.ci
  %i.ka = shl nuw i64 %i.ie, 4
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.ih, i64 noundef %i.ka, i64 noundef range(i64 1, -9223372036854775807) 8) #53, !noalias !30462
  br label %"_ZN98_$LT$$RF$mut$u20$serde_yaml..ser..Serializer$LT$W$GT$$u20$as$u20$serde_core..ser..SerializeSeq$GT$3end17h8b77945799276088E.exit"

bb.ck:                                            ; preds = %bb.z
  %i.kb = call fastcc noundef align 8 ptr @"_ZN10serde_yaml3ser19Serializer$LT$W$GT$18emit_mapping_start17hdabe8e0decb7b78eE"(ptr noalias noundef nonnull align 8 dereferenceable(40) %1) ; 2 uses
  %.not.i63 = icmp eq ptr %i.kb, null
  br i1 %.not.i63, label %bb.cl, label %"_ZN98_$LT$$RF$mut$u20$serde_yaml..ser..Serializer$LT$W$GT$$u20$as$u20$serde_core..ser..SerializeSeq$GT$3end17h8b77945799276088E.exit"

bb.cl:                                            ; preds = %bb.ck
  %i.kc = call fastcc noundef align 8 ptr @"_ZN98_$LT$$RF$mut$u20$serde_yaml..ser..Serializer$LT$W$GT$$u20$as$u20$serde_core..ser..SerializeMap$GT$3end17h6b4b656e93277af2E"(ptr noalias noundef align 8 dereferenceable(40) %1)
  br label %"_ZN98_$LT$$RF$mut$u20$serde_yaml..ser..Serializer$LT$W$GT$$u20$as$u20$serde_core..ser..SerializeSeq$GT$3end17h8b77945799276088E.exit"

bb.cm:                                            ; preds = %bb.ab
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aj)
  %i.kd = getelementptr inbounds nuw i8, ptr %i.gf, i64 8
  store ptr %i.kd, ptr %i.aj, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ah)
  store ptr %i.aj, ptr %i.ah, align 8
  %.sroa.438.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  store ptr @"_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17hf76eb57b33851465E", ptr %.sroa.438.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !noalias !30484
  store ptr @575, ptr %i.n, align 8, !noalias !30485
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  store i64 2, ptr %.sroa.4.0..sroa_idx, align 8, !noalias !30485
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  store ptr %i.ah, ptr %.sroa.5.0..sroa_idx, align 8, !noalias !30485
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.n, i64 24
  store i64 1, ptr %.sroa.6.0..sroa_idx, align 8, !noalias !30485
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.n, i64 32
  store ptr null, ptr %.sroa.7.0..sroa_idx, align 8, !noalias !30485
  call void @_ZN5alloc3fmt6format12format_inner17hce37e7516f243f46E(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.ai, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.n), !noalias !30486
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !30484
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ah)
  %i.ke = call fastcc noundef nonnull align 8 ptr @"_ZN67_$LT$serde_yaml..error..Error$u20$as$u20$serde_core..ser..Error$GT$6custom17h2da330649a01136eE"(ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.ai)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aj)
  br label %"_ZN98_$LT$$RF$mut$u20$serde_yaml..ser..Serializer$LT$W$GT$$u20$as$u20$serde_core..ser..SerializeSeq$GT$3end17h8b77945799276088E.exit"

bb.cn:                                            ; preds = %bb.ab
  %i.kf = getelementptr inbounds nuw i8, ptr %i.gf, i64 8
  %i.kg = call { ptr, i64 } @_ZN18nickel_lang_parser10identifier8LocIdent5label17h23360175f9f53dcbE(ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(20) %i.kf) ; 2 uses
  %i.kh = extractvalue { ptr, i64 } %i.kg, 0
  %i.ki = extractvalue { ptr, i64 } %i.kg, 1
  %i.kj = call fastcc noundef align 8 ptr @"_ZN96_$LT$$RF$mut$u20$serde_yaml..ser..Serializer$LT$W$GT$$u20$as$u20$serde_core..ser..Serializer$GT$13serialize_str17h5a5484363cbdc18fE"(ptr noalias noundef align 8 dereferenceable(40) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.kh, i64 noundef %i.ki)
  br label %"_ZN98_$LT$$RF$mut$u20$serde_yaml..ser..Serializer$LT$W$GT$$u20$as$u20$serde_core..ser..SerializeSeq$GT$3end17h8b77945799276088E.exit"
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @"_ZN16nickel_lang_core9serialize99_$LT$impl$u20$serde_core..ser..Serialize$u20$for$u20$nickel_lang_core..eval..value..NickelValue$GT$9serialize17hba3b01ded15e24ebE"(ptr dead_on_unwind noalias noundef nonnull writable align 8 captures(address) dereferenceable(24) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %1, ptr noalias noundef nonnull align 8 dereferenceable(24) %2, i1 noundef zeroext %3) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1                 ; 2 uses
  %i.b = alloca [48 x i8], align 8                ; 8 uses
  %i.c = alloca [16 x i8], align 8                ; 5 uses
  %i.d = alloca [24 x i8], align 8                ; 7 uses
  %i.e = alloca [8 x i8], align 8                 ; 4 uses
  %i.f = alloca [24 x i8], align 8                ; 8 uses
  %i.g = alloca [24 x i8], align 8                ; 8 uses
  %i.h = alloca [48 x i8], align 8                ; 8 uses
  %i.i = alloca [48 x i8], align 8                ; 8 uses
  %i.j = alloca [40 x i8], align 8                ; 4 uses
  %i.k = alloca [24 x i8], align 8                ; 9 uses
  %i.l = alloca [24 x i8], align 8                ; 6 uses
  %i.m = alloca [8 x i8], align 8                 ; 5 uses
  %i.n = alloca [40 x i8], align 8                ; 7 uses
  %.sroa.6.i = alloca [24 x i8], align 8          ; 6 uses
  %i.o = alloca [40 x i8], align 8                ; 10 uses
  %i.p = alloca [24 x i8], align 8                ; 7 uses
  %i.q = alloca [16 x i8], align 8                ; 5 uses
  %i.r = alloca [16 x i8], align 8                ; 5 uses
  %i.s = alloca [24 x i8], align 8                ; 5 uses
  %i.t = alloca [32 x i8], align 8                ; 4 uses
  %i.u = alloca [24 x i8], align 8                ; 6 uses
  %i.v = alloca [48 x i8], align 8                ; 12 uses
  %i.w = alloca [32 x i8], align 8                ; 7 uses
  %.sroa.710 = alloca [24 x i8], align 8          ; 7 uses
  %i.x = alloca [32 x i8], align 8                ; 7 uses
  %i.y = alloca [32 x i8], align 8                ; 3 uses
  %i.z = alloca [32 x i8], align 8                ; 5 uses
  %.sroa.7 = alloca [24 x i8], align 8            ; 6 uses
  %i.aa = alloca [40 x i8], align 8               ; 4 uses
  %i.ab = alloca [40 x i8], align 8               ; 7 uses
  %.sroa.6 = alloca [24 x i8], align 8            ; 6 uses
  %i.ac = alloca [16 x i8], align 8               ; 5 uses
  %i.ad = alloca [24 x i8], align 8               ; 5 uses
  %i.ae = alloca [8 x i8], align 8                ; 4 uses
  %i.af = alloca [16 x i8], align 8               ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.af)
  call void @_ZN16nickel_lang_core4eval5value11NickelValue11content_ref17h965d5e35cf2e1421E(ptr noalias noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.af, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %1)
  %i.ag = load i8, ptr %i.af, align 8, !range !59, !noundef !34
  switch i8 %i.ag, label %bb.b [
    i8 0, label %bb.c
    i8 1, label %bb.d
    i8 2, label %bb.e
    i8 3, label %bb.l
    i8 4, label %bb.m
    i8 5, label %bb.n
    i8 9, label %bb.o
  ]

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q)
  %i.ah = call { ptr, i64 } @_ZN16nickel_lang_core4eval5value11NickelValue7type_of17hc677b7a5c04dea94E(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %1) ; 2 uses
  %i.ai = extractvalue { ptr, i64 } %i.ah, 0      ; 2 uses
  %.not57 = icmp eq ptr %i.ai, null               ; 2 uses
  %i.aj = extractvalue { ptr, i64 } %i.ah, 1
  %spec.select = select i1 %.not57, ptr @576, ptr %i.ai
  %spec.select204 = select i1 %.not57, i64 7, i64 %i.aj
  store ptr %spec.select, ptr %i.q, align 8
  %i.ak = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  store i64 %spec.select204, ptr %i.ak, align 8
  store ptr %i.q, ptr %i.r, align 8
  %.sroa.448.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  store ptr @"_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h2a16057073367944E", ptr %.sroa.448.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !30630
  store ptr @578, ptr %i.h, align 8, !noalias !30631
  %.sroa.4107.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  store i64 1, ptr %.sroa.4107.0..sroa_idx, align 8, !noalias !30631
  %.sroa.5108.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  store ptr %i.r, ptr %.sroa.5108.0..sroa_idx, align 8, !noalias !30631
  %.sroa.6109.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  store i64 1, ptr %.sroa.6109.0..sroa_idx, align 8, !noalias !30631
  %.sroa.7110.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 32
  store ptr null, ptr %.sroa.7110.0..sroa_idx, align 8, !noalias !30631
  call void @_ZN5alloc3fmt6format12format_inner17hce37e7516f243f46E(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.s, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.h), !noalias !30632
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !30630
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r)
  call void @llvm.experimental.noalias.scope.decl(metadata !30633)
  call void @llvm.experimental.noalias.scope.decl(metadata !30634)
  %i.al = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %.val.i.i67 = load ptr, ptr %i.al, align 8, !alias.scope !30635, !noalias !30636, !nonnull !34, !noundef !34 ; 3 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  %.val1.i.i68 = load i64, ptr %i.am, align 8, !alias.scope !30635, !noalias !30636, !noundef !34 ; 7 uses
  %i.an = icmp slt i64 %.val1.i.i68, 0
  br i1 %i.an, label %bb.cg, label %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i.i69, !prof !49

bb.c:                                             ; preds = %bb.a
  store i64 -9223372036854775806, ptr %0, align 8, !alias.scope !30637
  br label %_ZN16nickel_lang_core9serialize13serialize_num17h462abbd5733c317cE.exit

bb.d:                                             ; preds = %bb.a
  %i.ao = getelementptr inbounds nuw i8, ptr %i.af, i64 1
  %i.ap = load i8, ptr %i.ao, align 1, !range !44, !noundef !34
  %i.aq = trunc nuw i8 %i.ap to i1
  call void @"_ZN81_$LT$toml..ser..value..ValueSerializer$u20$as$u20$serde_core..ser..Serializer$GT$14serialize_bool17hb9e681ae42ee1650E"(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %0, ptr noalias noundef nonnull align 8 dereferenceable(24) %2, i1 noundef zeroext %3, i1 noundef zeroext %i.aq)
  br label %_ZN16nickel_lang_core9serialize13serialize_num17h462abbd5733c317cE.exit

bb.e:                                             ; preds = %bb.a
  %i.ar = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  %i.as = load ptr, ptr %i.ar, align 8, !nonnull !34, !align !41, !noundef !34 ; 9 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !30638)
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 24
  %i.au = load i64, ptr %i.at, align 8, !range !57, !alias.scope !30638, !noalias !30639, !noundef !34
  %.not12.i = icmp eq i64 %i.au, -9223372036854775808
  %i.av = getelementptr inbounds nuw i8, ptr %i.as, i64 32
  %i.aw = load i64, ptr %i.av, align 8, !alias.scope !30638, !noalias !30639
  %i.ax = icmp eq i64 %i.aw, 1
  %or.cond.i = select i1 %.not12.i, i1 %i.ax, i1 false
  br i1 %or.cond.i, label %bb.f, label %_ZN11malachite_q10conversion27primitive_int_from_rational15try_from_signed17h56de1730099a3575E.exit.thread.i

_ZN11malachite_q10conversion27primitive_int_from_rational15try_from_signed17h56de1730099a3575E.exit.thread.i: ; preds = %bb.j, %bb.h, %_ZN11malachite_q10comparison25partial_cmp_primitive_int18partial_cmp_signed17hbfd23e45c1efc22cE.exit.i, %bb.e
  %i.ay = call { double, i8 } @"_ZN11malachite_q10conversion29primitive_float_from_rational120_$LT$impl$u20$malachite_base..num..conversion..traits..RoundingFrom$LT$$RF$malachite_q..Rational$GT$$u20$for$u20$f64$GT$13rounding_from17h9677da0c2715dedfE"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.as, i8 noundef 4), !noalias !30639
  %i.az = extractvalue { double, i8 } %i.ay, 0
  call void @"_ZN81_$LT$toml..ser..value..ValueSerializer$u20$as$u20$serde_core..ser..Serializer$GT$13serialize_f6417h5bd3b7a29fdf286eE"(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %0, ptr noalias noundef nonnull align 8 dereferenceable(24) %2, i1 noundef zeroext %3, double noundef %i.az)
  br label %_ZN16nickel_lang_core9serialize13serialize_num17h462abbd5733c317cE.exit

bb.f:                                             ; preds = %bb.e
  %i.ba = getelementptr inbounds nuw i8, ptr %i.as, i64 48
  %i.bb = load i8, ptr %i.ba, align 8, !range !44, !alias.scope !30640, !noalias !30639, !noundef !34
  %i.bc = trunc nuw i8 %i.bb to i1
  br i1 %i.bc, label %_ZN11malachite_q10comparison25partial_cmp_primitive_int18partial_cmp_signed17hbfd23e45c1efc22cE.exit.i, label %bb.g

_ZN11malachite_q10comparison25partial_cmp_primitive_int18partial_cmp_signed17hbfd23e45c1efc22cE.exit.i: ; preds = %bb.f
  %.val.i.i = load i64, ptr %i.as, align 8, !range !57, !alias.scope !30641, !noalias !30639, !noundef !34
  %.not.i.not.i.not.i = icmp eq i64 %.val.i.i, -9223372036854775808
  br i1 %.not.i.not.i.not.i, label %bb.k, label %_ZN11malachite_q10conversion27primitive_int_from_rational15try_from_signed17h56de1730099a3575E.exit.thread.i

bb.g:                                             ; preds = %bb.f
  %i.bd = call noundef i64 @"_ZN12malachite_nz7natural5logic16significant_bits116_$LT$impl$u20$malachite_base..num..logic..traits..SignificantBits$u20$for$u20$$RF$malachite_nz..natural..Natural$GT$16significant_bits17h0fb717fbc1d67f6fE"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.as), !noalias !30639 ; 2 uses
  %i.be = icmp ult i64 %i.bd, 64
  br i1 %i.be, label %bb.i, label %bb.h
end_hunk_2
begin_hunk_3_@"_ZN16nickel_lang_core9serialize99_$LT$impl$u20$serde_core..ser..Serialize$u20$for$u20$nickel_lang_core..eval..value..NickelValue$GT$9serialize17hc6b9dd54f4d2ab7aE":bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t), !noalias !30833
  store i64 -9223372036854775801, ptr %i.t, align 8, !noalias !30833
  call void @_ZN10serde_yaml7libyaml7emitter7Emitter4emit17h53d4955187604356E(ptr noalias noundef nonnull sret([80 x i8]) align 8 captures(address) dereferenceable(80) %i.u, ptr noalias noundef nonnull align 8 dereferenceable(8) %i.gh, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(48) %i.t)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t), !noalias !30833
  %i.gi = getelementptr inbounds nuw i8, ptr %i.u, i64 72
  %i.gj = load i32, ptr %i.gi, align 8, !range !58, !noalias !30833, !noundef !34
  %.not.i.i58 = icmp eq i32 %i.gj, 9
  br i1 %.not.i.i58, label %bb.ag, label %bb.af

bb.af:                                            ; preds = %bb.ae
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s), !noalias !30833
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.s, ptr noundef nonnull align 8 dereferenceable(80) %i.u, i64 80, i1 false), !noalias !30833
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u), !noalias !30833
  %i.gk = call noundef nonnull align 8 ptr @"_ZN107_$LT$serde_yaml..error..Error$u20$as$u20$core..convert..From$LT$serde_yaml..libyaml..emitter..Error$GT$$GT$4from17h7289f7533d4a6ad5E"(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(80) %i.s)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !noalias !30833
  br label %"_ZN98_$LT$$RF$mut$u20$serde_yaml..ser..Serializer$LT$W$GT$$u20$as$u20$serde_core..ser..SerializeSeq$GT$3end17h367e842e56bf9710E.exit"

bb.ag:                                            ; preds = %bb.ae
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u), !noalias !30833
  call void @llvm.experimental.noalias.scope.decl(metadata !30834)
  %i.gl = getelementptr inbounds nuw i8, ptr %i.ft, i64 32 ; 2 uses
  %i.gm = load i64, ptr %i.gl, align 8, !alias.scope !30835, !noundef !34
  %i.gn = add i64 %i.gm, -1                       ; 2 uses
  store i64 %i.gn, ptr %i.gl, align 8, !alias.scope !30835
  %i.go = icmp eq i64 %i.gn, 0
  br i1 %i.go, label %bb.ah, label %"_ZN98_$LT$$RF$mut$u20$serde_yaml..ser..Serializer$LT$W$GT$$u20$as$u20$serde_core..ser..SerializeSeq$GT$3end17h367e842e56bf9710E.exit"

bb.ah:                                            ; preds = %bb.ag
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r), !noalias !30835
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q), !noalias !30835
  store i64 -9223372036854775804, ptr %i.q, align 8, !noalias !30835
  call void @_ZN10serde_yaml7libyaml7emitter7Emitter4emit17h53d4955187604356E(ptr noalias noundef nonnull sret([80 x i8]) align 8 captures(address) dereferenceable(80) %i.r, ptr noalias noundef nonnull align 8 dereferenceable(8) %i.gh, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(48) %i.q)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !noalias !30835
  %i.gp = getelementptr inbounds nuw i8, ptr %i.r, i64 72
  %i.gq = load i32, ptr %i.gp, align 8, !range !58, !noalias !30835, !noundef !34
  %.not.i.i.i = icmp eq i32 %i.gq, 9
  br i1 %.not.i.i.i, label %bb.aj, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p), !noalias !30835
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.p, ptr noundef nonnull align 8 dereferenceable(80) %i.r, i64 80, i1 false), !noalias !30835
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !noalias !30835
  %i.gr = call noundef nonnull align 8 ptr @"_ZN107_$LT$serde_yaml..error..Error$u20$as$u20$core..convert..From$LT$serde_yaml..libyaml..emitter..Error$GT$$GT$4from17h7289f7533d4a6ad5E"(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(80) %i.p)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !noalias !30835
  br label %"_ZN98_$LT$$RF$mut$u20$serde_yaml..ser..Serializer$LT$W$GT$$u20$as$u20$serde_core..ser..SerializeSeq$GT$3end17h367e842e56bf9710E.exit"

bb.aj:                                            ; preds = %bb.ah
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !noalias !30835
  br label %"_ZN98_$LT$$RF$mut$u20$serde_yaml..ser..Serializer$LT$W$GT$$u20$as$u20$serde_core..ser..SerializeSeq$GT$3end17h367e842e56bf9710E.exit"

bb.ak:                                            ; preds = %bb.ac
  %i.gs = getelementptr inbounds nuw i8, ptr %i.fq, i64 48
  %i.gt = getelementptr inbounds nuw i8, ptr %i.fq, i64 56
  %i.gu = getelementptr inbounds nuw i8, ptr %i.fq, i64 24
  %i.gv = load i64, ptr %i.gt, align 8, !noundef !34
  %i.gw = load i64, ptr %i.gs, align 8, !noundef !34 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ag)
  call fastcc void @"_ZN18nickel_lang_vector6vector19Vector$LT$T$C$_$GT$16iter_starting_at17hd9fff75982f33f12E"(ptr noalias noundef align 8 captures(address) dereferenceable(40) %i.ag, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.gu, i64 noundef %i.gw)
  %i.gx = sub i64 %i.gv, %i.gw                    ; 3 uses
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ag, i64 40 ; 3 uses
  store i64 %i.gx, ptr %.sroa.2.0..sroa_idx, align 8
  %i.gy = icmp eq i64 %i.gx, 0
  br i1 %i.gy, label %.thread, label %.lr.ph138

thread-pre-split:                                 ; preds = %"_ZN98_$LT$$RF$mut$u20$serde_yaml..ser..Serializer$LT$W$GT$$u20$as$u20$serde_core..ser..SerializeSeq$GT$17serialize_element17h8defc347a3638d72E.exit"
  %.pr = load i64, ptr %.sroa.2.0..sroa_idx, align 8 ; 2 uses
  %i.gz = icmp eq i64 %.pr, 0
  br i1 %i.gz, label %.thread, label %.lr.ph138

.lr.ph138:                                        ; preds = %bb.ak, %thread-pre-split
  %i.ha = phi i64 [ %.pr, %thread-pre-split ], [ %i.gx, %bb.ak ]
  %i.hb = add i64 %i.ha, -1
  store i64 %i.hb, ptr %.sroa.2.0..sroa_idx, align 8
  %i.hc = invoke fastcc noundef align 8 dereferenceable_or_null(8) ptr @"_ZN104_$LT$nickel_lang_vector..vector..Iter$LT$T$C$_$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hb850492b82192a4bE"(ptr noalias noundef align 8 dereferenceable(40) %i.ag)
          to label %bb.al unwind label %bb.am     ; 2 uses

bb.al:                                            ; preds = %.lr.ph138
  %.not48 = icmp eq ptr %i.hc, null
  br i1 %.not48, label %.thread, label %bb.ao

bb.am:                                            ; preds = %bb.ao, %.lr.ph138
  %i.hd = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.val56 = load i64, ptr %i.ag, align 8          ; 2 uses
  %i.he = icmp eq i64 %.val56, 0
  br i1 %i.he, label %common.resume, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.hf = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  %.val57 = load ptr, ptr %i.hf, align 8, !nonnull !34, !noundef !34
  %i.hg = shl nuw i64 %.val56, 4
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val57, i64 noundef %i.hg, i64 noundef range(i64 1, -9223372036854775807) 8) #53
  br label %common.resume

bb.ao:                                            ; preds = %bb.al
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ft) ]
  %i.hh = invoke fastcc noundef align 8 ptr @"_ZN16nickel_lang_core9serialize99_$LT$impl$u20$serde_core..ser..Serialize$u20$for$u20$nickel_lang_core..eval..value..NickelValue$GT$9serialize17hc6b9dd54f4d2ab7aE"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.hc, ptr noalias noundef align 8 dereferenceable(40) %i.ft)
          to label %"_ZN98_$LT$$RF$mut$u20$serde_yaml..ser..Serializer$LT$W$GT$$u20$as$u20$serde_core..ser..SerializeSeq$GT$17serialize_element17h8defc347a3638d72E.exit" unwind label %bb.am, !inline_history !30751 ; 2 uses

.thread:                                          ; preds = %bb.al, %thread-pre-split, %bb.ak
  %.val = load i64, ptr %i.ag, align 8            ; 2 uses
  %i.hi = icmp eq i64 %.val, 0
  br i1 %i.hi, label %"_ZN4core3ptr154drop_in_place$LT$core..iter..adapters..take..Take$LT$nickel_lang_vector..vector..Iter$LT$nickel_lang_core..eval..value..NickelValue$C$32_usize$GT$$GT$$GT$17h23990a143caecc5bE.exit60", label %bb.ap

bb.ap:                                            ; preds = %.thread
  %i.hj = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  %.val53 = load ptr, ptr %i.hj, align 8, !nonnull !34, !noundef !34
  %i.hk = shl nuw i64 %.val, 4
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val53, i64 noundef %i.hk, i64 noundef range(i64 1, -9223372036854775807) 8) #53
  br label %"_ZN4core3ptr154drop_in_place$LT$core..iter..adapters..take..Take$LT$nickel_lang_vector..vector..Iter$LT$nickel_lang_core..eval..value..NickelValue$C$32_usize$GT$$GT$$GT$17h23990a143caecc5bE.exit60"

"_ZN4core3ptr154drop_in_place$LT$core..iter..adapters..take..Take$LT$nickel_lang_vector..vector..Iter$LT$nickel_lang_core..eval..value..NickelValue$C$32_usize$GT$$GT$$GT$17h23990a143caecc5bE.exit60": ; preds = %.thread, %bb.ap
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ag)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ft) ]
  call void @llvm.experimental.noalias.scope.decl(metadata !30836)
  call void @llvm.experimental.noalias.scope.decl(metadata !30837)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !30838
  %i.hl = getelementptr inbounds nuw i8, ptr %i.ft, i64 24 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !30838
  store i64 -9223372036854775801, ptr %i.f, align 8, !noalias !30838
  call void @_ZN10serde_yaml7libyaml7emitter7Emitter4emit17h53d4955187604356E(ptr noalias noundef nonnull sret([80 x i8]) align 8 captures(address) dereferenceable(80) %i.g, ptr noalias noundef nonnull align 8 dereferenceable(8) %i.hl, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(48) %i.f)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !30838
  %i.hm = getelementptr inbounds nuw i8, ptr %i.g, i64 72
  %i.hn = load i32, ptr %i.hm, align 8, !range !58, !noalias !30838, !noundef !34
  %.not.i.i175 = icmp eq i32 %i.hn, 9
  br i1 %.not.i.i175, label %bb.ar, label %bb.aq

bb.aq:                                            ; preds = %"_ZN4core3ptr154drop_in_place$LT$core..iter..adapters..take..Take$LT$nickel_lang_vector..vector..Iter$LT$nickel_lang_core..eval..value..NickelValue$C$32_usize$GT$$GT$$GT$17h23990a143caecc5bE.exit60"
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !30838
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.e, ptr noundef nonnull align 8 dereferenceable(80) %i.g, i64 80, i1 false), !noalias !30838
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !30838
  %i.ho = call noundef nonnull align 8 ptr @"_ZN107_$LT$serde_yaml..error..Error$u20$as$u20$core..convert..From$LT$serde_yaml..libyaml..emitter..Error$GT$$GT$4from17h7289f7533d4a6ad5E"(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(80) %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !30838
  br label %"_ZN98_$LT$$RF$mut$u20$serde_yaml..ser..Serializer$LT$W$GT$$u20$as$u20$serde_core..ser..SerializeSeq$GT$3end17h367e842e56bf9710E.exit"

bb.ar:                                            ; preds = %"_ZN4core3ptr154drop_in_place$LT$core..iter..adapters..take..Take$LT$nickel_lang_vector..vector..Iter$LT$nickel_lang_core..eval..value..NickelValue$C$32_usize$GT$$GT$$GT$17h23990a143caecc5bE.exit60"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !30838
  call void @llvm.experimental.noalias.scope.decl(metadata !30839)
  %i.hp = getelementptr inbounds nuw i8, ptr %i.ft, i64 32 ; 2 uses
  %i.hq = load i64, ptr %i.hp, align 8, !alias.scope !30840, !noundef !34
  %i.hr = add i64 %i.hq, -1                       ; 2 uses
  store i64 %i.hr, ptr %i.hp, align 8, !alias.scope !30840
  %i.hs = icmp eq i64 %i.hr, 0
  br i1 %i.hs, label %bb.as, label %"_ZN98_$LT$$RF$mut$u20$serde_yaml..ser..Serializer$LT$W$GT$$u20$as$u20$serde_core..ser..SerializeSeq$GT$3end17h367e842e56bf9710E.exit"

bb.as:                                            ; preds = %bb.ar
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !30840
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !30840
  store i64 -9223372036854775804, ptr %i.c, align 8, !noalias !30840
  call void @_ZN10serde_yaml7libyaml7emitter7Emitter4emit17h53d4955187604356E(ptr noalias noundef nonnull sret([80 x i8]) align 8 captures(address) dereferenceable(80) %i.d, ptr noalias noundef nonnull align 8 dereferenceable(8) %i.hl, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(48) %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !30840
  %i.ht = getelementptr inbounds nuw i8, ptr %i.d, i64 72
  %i.hu = load i32, ptr %i.ht, align 8, !range !58, !noalias !30840, !noundef !34
  %.not.i.i.i177 = icmp eq i32 %i.hu, 9
  br i1 %.not.i.i.i177, label %bb.au, label %bb.at

bb.at:                                            ; preds = %bb.as
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !30840
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.b, ptr noundef nonnull align 8 dereferenceable(80) %i.d, i64 80, i1 false), !noalias !30840
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !30840
  %i.hv = call noundef nonnull align 8 ptr @"_ZN107_$LT$serde_yaml..error..Error$u20$as$u20$core..convert..From$LT$serde_yaml..libyaml..emitter..Error$GT$$GT$4from17h7289f7533d4a6ad5E"(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(80) %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !30840
  br label %"_ZN98_$LT$$RF$mut$u20$serde_yaml..ser..Serializer$LT$W$GT$$u20$as$u20$serde_core..ser..SerializeSeq$GT$3end17h367e842e56bf9710E.exit"

bb.au:                                            ; preds = %bb.as
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !30840
  br label %"_ZN98_$LT$$RF$mut$u20$serde_yaml..ser..Serializer$LT$W$GT$$u20$as$u20$serde_core..ser..SerializeSeq$GT$3end17h367e842e56bf9710E.exit"

"_ZN98_$LT$$RF$mut$u20$serde_yaml..ser..Serializer$LT$W$GT$$u20$as$u20$serde_core..ser..SerializeSeq$GT$17serialize_element17h8defc347a3638d72E.exit": ; preds = %bb.ao
  %.not49 = icmp eq ptr %i.hh, null
  br i1 %.not49, label %thread-pre-split, label %bb.av

bb.av:                                            ; preds = %"_ZN98_$LT$$RF$mut$u20$serde_yaml..ser..Serializer$LT$W$GT$$u20$as$u20$serde_core..ser..SerializeSeq$GT$17serialize_element17h8defc347a3638d72E.exit"
  %.val54 = load i64, ptr %i.ag, align 8          ; 2 uses
  %i.hw = icmp eq i64 %.val54, 0
  br i1 %i.hw, label %"_ZN4core3ptr154drop_in_place$LT$core..iter..adapters..take..Take$LT$nickel_lang_vector..vector..Iter$LT$nickel_lang_core..eval..value..NickelValue$C$32_usize$GT$$GT$$GT$17h23990a143caecc5bE.exit61", label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %i.hx = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  %.val55 = load ptr, ptr %i.hx, align 8, !nonnull !34, !noundef !34
  %i.hy = shl nuw i64 %.val54, 4
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val55, i64 noundef %i.hy, i64 noundef range(i64 1, -9223372036854775807) 8) #53
  br label %"_ZN4core3ptr154drop_in_place$LT$core..iter..adapters..take..Take$LT$nickel_lang_vector..vector..Iter$LT$nickel_lang_core..eval..value..NickelValue$C$32_usize$GT$$GT$$GT$17h23990a143caecc5bE.exit61"

"_ZN4core3ptr154drop_in_place$LT$core..iter..adapters..take..Take$LT$nickel_lang_vector..vector..Iter$LT$nickel_lang_core..eval..value..NickelValue$C$32_usize$GT$$GT$$GT$17h23990a143caecc5bE.exit61": ; preds = %bb.av, %bb.aw
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ag)
  br label %"_ZN98_$LT$$RF$mut$u20$serde_yaml..ser..Serializer$LT$W$GT$$u20$as$u20$serde_core..ser..SerializeSeq$GT$3end17h367e842e56bf9710E.exit"

bb.ax:                                            ; preds = %bb.z
  call void @llvm.experimental.noalias.scope.decl(metadata !30841)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !noalias !30842
  %i.hz = getelementptr inbounds nuw i8, ptr %i.fw, i64 8
  %i.ia = load ptr, ptr %i.hz, align 8, !alias.scope !30841, !noalias !30843, !nonnull !34, !noundef !34 ; 2 uses
  %i.ib = getelementptr inbounds nuw i8, ptr %i.fw, i64 16
  %i.ic = load i64, ptr %i.ib, align 8, !alias.scope !30841, !noalias !30843, !noundef !34
  %i.id = getelementptr inbounds nuw [72 x i8], ptr %i.ia, i64 %i.ic
  call fastcc void @_ZN4core4iter6traits8iterator8Iterator7collect17haa039c55e2a3aebfE(ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.o, ptr noundef nonnull %i.ia, ptr noundef %i.id), !noalias !30842, !inline_history !30761
  %i.ie = load i64, ptr %i.o, align 8, !range !57, !noalias !30842, !noundef !34 ; 7 uses
  %i.if = icmp eq i64 %i.ie, -9223372036854775808
  %i.ig = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %i.ih = load ptr, ptr %i.ig, align 8, !noalias !30842 ; 16 uses
  br i1 %i.if, label %bb.ay, label %bb.be

bb.ay:                                            ; preds = %bb.ax
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !30844
  %i.ii = getelementptr inbounds nuw i8, ptr %i.ih, i64 360
  store ptr %i.ii, ptr %i.i, align 8, !noalias !30844
  %.sroa.42.0..sroa_idx.i90 = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  store ptr @"_ZN79_$LT$nickel_lang_parser..identifier..LocIdent$u20$as$u20$core..fmt..Display$GT$3fmt17hb3e33a24e8926132E", ptr %.sroa.42.0..sroa_idx.i90, align 8, !noalias !30844
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !30845
  store ptr @565, ptr %i.h, align 8, !noalias !30846
  %.sroa.4.0..sroa_idx.i91 = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  store i64 2, ptr %.sroa.4.0..sroa_idx.i91, align 8, !noalias !30846
  %.sroa.5.0..sroa_idx.i92 = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  store ptr %i.i, ptr %.sroa.5.0..sroa_idx.i92, align 8, !noalias !30846
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  store i64 1, ptr %.sroa.6.0..sroa_idx.i, align 8, !noalias !30846
  %.sroa.7.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.h, i64 32
  store ptr null, ptr %.sroa.7.0..sroa_idx.i, align 8, !noalias !30846
  invoke void @_ZN5alloc3fmt6format12format_inner17hce37e7516f243f46E(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.j, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.h)
          to label %bb.ba unwind label %bb.az, !noalias !30842

bb.az:                                            ; preds = %bb.ba, %bb.ay
  %i.ij = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr102drop_in_place$LT$alloc..boxed..Box$LT$nickel_lang_core..term..record..MissingFieldDefErrorData$GT$$GT$17hf1f720335a798440E"(ptr nonnull align 8 %i.ih) #61
          to label %common.resume unwind label %bb.bd, !noalias !30842

bb.ba:                                            ; preds = %bb.ay
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !30845
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !30844
  %i.ik = invoke fastcc noundef nonnull align 8 ptr @"_ZN67_$LT$serde_yaml..error..Error$u20$as$u20$serde_core..ser..Error$GT$6custom17h2da330649a01136eE"(ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.j)
          to label %bb.bb unwind label %bb.az, !noalias !30842

bb.bb:                                            ; preds = %bb.ba
  invoke fastcc void @"_ZN4core3ptr66drop_in_place$LT$nickel_lang_core..term..record..FieldMetadata$GT$17hd9e56ba5b292b097E"(ptr noalias noundef nonnull align 8 dereferenceable(384) %i.ih)
          to label %"_ZN16nickel_lang_core9serialize16serialize_record28_$u7b$$u7b$closure$u7d$$u7d$17h357a379fb28f8c31E.exit" unwind label %bb.bc, !noalias !30842

common.resume:                                    ; preds = %bb.am, %bb.an, %.body, %bb.bi, %bb.az, %bb.bc
  %common.resume.op = phi { ptr, i32 } [ %.pn.i, %.body ], [ %i.ij, %bb.az ], [ %i.il, %bb.bc ], [ %.pn.i, %bb.bi ], [ %i.hd, %bb.an ], [ %i.hd, %bb.am ]
  resume { ptr, i32 } %common.resume.op

bb.bc:                                            ; preds = %bb.bb
  %i.il = landingpad { ptr, i32 }
          cleanup
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull align 8 %i.ih, i64 noundef 384, i64 noundef 8) #53, !noalias !30842
  br label %common.resume

bb.bd:                                            ; preds = %bb.az
  %i.im = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #60, !noalias !30842
  unreachable

"_ZN16nickel_lang_core9serialize16serialize_record28_$u7b$$u7b$closure$u7d$$u7d$17h357a379fb28f8c31E.exit": ; preds = %bb.bb
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull align 8 %i.ih, i64 noundef 384, i64 noundef 8) #53, !noalias !30842
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !noalias !30842
  br label %"_ZN98_$LT$$RF$mut$u20$serde_yaml..ser..Serializer$LT$W$GT$$u20$as$u20$serde_core..ser..SerializeSeq$GT$3end17h367e842e56bf9710E.exit"

bb.be:                                            ; preds = %bb.ax
  %.sroa.632.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  %.sroa.632.0.copyload.i = load i64, ptr %.sroa.632.0..sroa_idx.i, align 8, !noalias !30842 ; 8 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !noalias !30842
  %i.in = icmp ult i64 %.sroa.632.0.copyload.i, 2
  br i1 %i.in, label %bb.bk, label %bb.bf, !prof !40

bb.bf:                                            ; preds = %bb.be
  %i.io = icmp ult i64 %.sroa.632.0.copyload.i, 21
  br i1 %i.io, label %bb.bh, label %bb.bg, !prof !40

bb.bg:                                            ; preds = %bb.bf
  invoke fastcc void @_ZN4core5slice4sort6stable14driftsort_main17h2804f3985ec1e10eE(ptr noalias noundef nonnull align 8 %i.ih, i64 noundef %.sroa.632.0.copyload.i)
          to label %.thread117 unwind label %bb.bj

bb.bh:                                            ; preds = %bb.bf
  invoke fastcc void @_ZN4core5slice4sort6shared9smallsort25insertion_sort_shift_left17h8ab21633c2d3de40E(ptr noalias noundef nonnull align 8 %i.ih, i64 noundef %.sroa.632.0.copyload.i)
          to label %.thread117 unwind label %bb.bj

.body:                                            ; preds = %bb.cd, %bb.cc, %bb.bw, %bb.bt, %bb.bs, %bb.bj
  %.pn.i = phi { ptr, i32 } [ %i.ir, %bb.bj ], [ %lpad.phi, %bb.bs ], [ %i.jk, %bb.bw ], [ %lpad.phi, %bb.bt ], [ %i.js, %bb.cc ], [ %i.js, %bb.cd ] ; 2 uses
  %i.ip = icmp eq i64 %i.ie, 0
  br i1 %i.ip, label %common.resume, label %bb.bi

bb.bi:                                            ; preds = %.body
  %i.iq = shl nuw i64 %i.ie, 4
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ih) ], !noalias !30841
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.ih, i64 noundef %i.iq, i64 noundef range(i64 1, -9223372036854775807) 8) #53, !noalias !30841
  br label %common.resume

bb.bj:                                            ; preds = %bb.bg, %bb.bh, %bb.bn, %bb.bl
  %i.ir = landingpad { ptr, i32 }
          cleanup
  br label %.body

.thread117:                                       ; preds = %bb.bg, %bb.bh
  %i.is = icmp ult i64 %.sroa.632.0.copyload.i, 576460752303423488
  call void @llvm.assume(i1 %i.is)
  br label %bb.bl

bb.bk:                                            ; preds = %bb.be
  %i.it = icmp eq i64 %.sroa.632.0.copyload.i, 0
  br i1 %i.it, label %bb.bl, label %bb.bm

bb.bl:                                            ; preds = %.thread117, %bb.bk
  %i.iu = invoke fastcc noundef align 8 ptr @"_ZN10serde_yaml3ser19Serializer$LT$W$GT$18emit_mapping_start17h92fc0b5f89c939b9E"(ptr noalias noundef nonnull align 8 dereferenceable(40) %1)
          to label %.noexc84 unwind label %bb.bj  ; 2 uses

.noexc84:                                         ; preds = %bb.bl
  %.not.i79 = icmp eq ptr %i.iu, null
  br i1 %.not.i79, label %bb.bq, label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17hfedeefc8cce81a05E.exit68"

bb.bm:                                            ; preds = %bb.bk
  %i.iv = load i64, ptr %1, align 8, !range !70, !alias.scope !30847, !noalias !30841, !noundef !34 ; 2 uses
  %i.iw = icmp ne i64 %i.iv, -9223372036854775805
  call void @llvm.assume(i1 %i.iw), !noalias !30841
  %i.ix = icmp sgt i64 %i.iv, -1
  br i1 %i.ix, label %bb.bn, label %.thread164

bb.bn:                                            ; preds = %bb.bm
  %i.iy = invoke fastcc noundef align 8 ptr @"_ZN10serde_yaml3ser19Serializer$LT$W$GT$18emit_mapping_start17h92fc0b5f89c939b9E"(ptr noalias noundef nonnull align 8 dereferenceable(40) %1)
          to label %.noexc85 unwind label %bb.bj  ; 2 uses

.noexc85:                                         ; preds = %bb.bn
  %.not16.i = icmp eq ptr %i.iy, null
  br i1 %.not16.i, label %bb.bo, label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17hfedeefc8cce81a05E.exit68"

bb.bo:                                            ; preds = %.noexc85
  %.val.pr.i = load i64, ptr %1, align 8, !alias.scope !30847, !noalias !30841 ; 3 uses
  %i.iz = icmp ne i64 %.val.pr.i, -9223372036854775805
  call void @llvm.assume(i1 %i.iz), !noalias !30841
  %or.cond.i.i83 = icmp slt i64 %.val.pr.i, 1
  br i1 %or.cond.i.i83, label %.thread164, label %bb.bp

bb.bp:                                            ; preds = %bb.bo
  %i.ja = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val17.i = load ptr, ptr %i.ja, align 8, !alias.scope !30847, !noalias !30841, !nonnull !34, !noundef !34
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val17.i, i64 noundef %.val.pr.i, i64 noundef range(i64 1, -9223372036854775807) 1) #53, !noalias !30848
  br label %.thread164

.thread164:                                       ; preds = %bb.bm, %bb.bo, %bb.bp
  %.sroa.05.022.i = phi i64 [ -9223372036854775806, %bb.bp ], [ -9223372036854775806, %bb.bo ], [ -9223372036854775807, %bb.bm ]
  store i64 %.sroa.05.022.i, ptr %1, align 8, !alias.scope !30847, !noalias !30841
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ih) ]
  br label %.lr.ph

bb.bq:                                            ; preds = %.noexc84
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ih) ]
  %i.jb = icmp eq i64 %.sroa.632.0.copyload.i, 0
  br i1 %i.jb, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.thread164, %bb.bq
  %.idx166.pn = shl nuw nsw i64 %.sroa.632.0.copyload.i, 4
  %2 = getelementptr inbounds nuw i8, ptr %i.ih, i64 %.idx166.pn
  %.sroa.42.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.l, i64 8 ; 3 uses
  %.sroa.53.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.l, i64 16 ; 2 uses
  %i.jc = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %.sroa.4.0..sroa_idx.i77 = getelementptr inbounds nuw i8, ptr %i.k, i64 20
  %.sroa.5.0..sroa_idx.i78 = getelementptr inbounds nuw i8, ptr %i.k, i64 22
  %i.jd = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.je = getelementptr inbounds nuw i8, ptr %1, i64 8
  br label %bb.br

bb.br:                                            ; preds = %.lr.ph, %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17hfedeefc8cce81a05E.exit"
  %.sroa.036.0.i136 = phi ptr [ %i.ih, %.lr.ph ], [ %i.jf, %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17hfedeefc8cce81a05E.exit" ] ; 3 uses
  %i.jf = getelementptr inbounds nuw i8, ptr %.sroa.036.0.i136, i64 16 ; 2 uses
  %i.jg = getelementptr inbounds nuw i8, ptr %.sroa.036.0.i136, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !30849
  store i64 0, ptr %i.l, align 8, !noalias !30849
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.42.0..sroa_idx.i, align 8, !noalias !30849
  store i64 0, ptr %.sroa.53.0..sroa_idx.i, align 8, !noalias !30849
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !30849
  store i32 -536870880, ptr %i.jc, align 8, !noalias !30849
  store i16 0, ptr %.sroa.4.0..sroa_idx.i77, align 4, !noalias !30849
  store i16 0, ptr %.sroa.5.0..sroa_idx.i78, align 2, !noalias !30849
  store ptr %i.l, ptr %i.k, align 8, !noalias !30849
  store ptr @744, ptr %i.jd, align 8, !noalias !30849
  %i.jh = invoke noundef zeroext i1 @"_ZN76_$LT$nickel_lang_parser..identifier..Ident$u20$as$u20$core..fmt..Display$GT$3fmt17hbc9c1c42002a29c9E"(ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(4) %.sroa.036.0.i136, ptr noalias noundef nonnull align 8 dereferenceable(24) %i.k)
          to label %bb.bu unwind label %.loopexit, !noalias !30850

.loopexit:                                        ; preds = %bb.br
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.bs

.loopexit.split-lp:                               ; preds = %bb.bv
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.bs

bb.bs:                                            ; preds = %.loopexit.split-lp, %.loopexit
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !30851), !noalias !30841
  call void @llvm.experimental.noalias.scope.decl(metadata !30852), !noalias !30841
  %.val.i.i.i = load i64, ptr %i.l, align 8, !range !42, !alias.scope !30853, !noalias !30849, !noundef !34 ; 2 uses
  %i.ji = icmp eq i64 %.val.i.i.i, 0
  br i1 %i.ji, label %.body, label %bb.bt

bb.bt:                                            ; preds = %bb.bs
  %.val1.i.i.i = load ptr, ptr %.sroa.42.0..sroa_idx.i, align 8, !alias.scope !30853, !noalias !30849, !nonnull !34, !noundef !34
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i, i64 noundef %.val.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #53, !noalias !30854
  br label %.body

bb.bu:                                            ; preds = %bb.br
  br i1 %i.jh, label %bb.bv, label %bb.bx, !prof !37

bb.bv:                                            ; preds = %bb.bu
  invoke void @_ZN4core6result13unwrap_failed17h0501379eaec3e720E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @745, i64 noundef 55, ptr noundef nonnull align 1 %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @765, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @747) #59
          to label %.noexc.i unwind label %.loopexit.split-lp, !noalias !30850

.noexc.i:                                         ; preds = %bb.bv
  unreachable

._crit_edge:                                      ; preds = %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17hfedeefc8cce81a05E.exit", %bb.bq
  %i.jj = invoke fastcc noundef align 8 ptr @"_ZN98_$LT$$RF$mut$u20$serde_yaml..ser..Serializer$LT$W$GT$$u20$as$u20$serde_core..ser..SerializeMap$GT$3end17hd6483cc0384c36c6E"(ptr noalias noundef align 8 dereferenceable(40) %1)
          to label %bb.ci unwind label %bb.bw, !noalias !30841, !inline_history !30761 ; 2 uses

bb.bw:                                            ; preds = %._crit_edge
  %i.jk = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.bx:                                            ; preds = %bb.bu
  %.sroa.0113.0.copyload = load i64, ptr %i.l, align 8, !noalias !30855 ; 6 uses
  %.sroa.7114.0.copyload = load ptr, ptr %.sroa.42.0..sroa_idx.i, align 8, !noalias !30855, !nonnull !34, !noundef !34 ; 4 uses
  %.sroa.11.0.copyload = load i64, ptr %.sroa.53.0..sroa_idx.i, align 8, !noalias !30855
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !30849
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !30849
  %i.jl = invoke fastcc noundef align 8 ptr @"_ZN96_$LT$$RF$mut$u20$serde_yaml..ser..Serializer$LT$W$GT$$u20$as$u20$serde_core..ser..Serializer$GT$13serialize_str17h4193572cd5d78293E"(ptr noalias noundef nonnull align 8 dereferenceable(40) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %.sroa.7114.0.copyload, i64 noundef %.sroa.11.0.copyload)
          to label %.noexc unwind label %bb.cc, !inline_history !30783 ; 2 uses

.noexc:                                           ; preds = %bb.bx
  %.not.i72 = icmp eq ptr %i.jl, null
  br i1 %.not.i72, label %bb.by, label %"_ZN98_$LT$$RF$mut$u20$serde_yaml..ser..Serializer$LT$W$GT$$u20$as$u20$serde_core..ser..SerializeMap$GT$15serialize_entry17h5d882b77e4cbeddcE.exit"

bb.by:                                            ; preds = %.noexc
  %i.jm = load i64, ptr %1, align 8, !range !70, !noalias !30856, !noundef !34 ; 2 uses
  %i.jn = icmp ne i64 %i.jm, -9223372036854775805
  call void @llvm.assume(i1 %i.jn), !noalias !30841
  %i.jo = load ptr, ptr %i.jg, align 8, !alias.scope !30857, !noalias !30858, !nonnull !34, !align !41, !noundef !34
  %i.jp = invoke fastcc noundef align 8 ptr @"_ZN16nickel_lang_core9serialize99_$LT$impl$u20$serde_core..ser..Serialize$u20$for$u20$nickel_lang_core..eval..value..NickelValue$GT$9serialize17hc6b9dd54f4d2ab7aE"(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.jo, ptr noalias noundef nonnull align 8 dereferenceable(40) %1)
          to label %.noexc76 unwind label %bb.cc, !inline_history !30791 ; 2 uses

.noexc76:                                         ; preds = %bb.by
  %.not11.i = icmp eq ptr %i.jp, null
  br i1 %.not11.i, label %bb.bz, label %"_ZN98_$LT$$RF$mut$u20$serde_yaml..ser..Serializer$LT$W$GT$$u20$as$u20$serde_core..ser..SerializeMap$GT$15serialize_entry17h5d882b77e4cbeddcE.exit"

bb.bz:                                            ; preds = %.noexc76
  %i.jq = icmp sgt i64 %i.jm, -1
  br i1 %i.jq, label %bb.ca, label %bb.cf

bb.ca:                                            ; preds = %bb.bz
  %.val.i74 = load i64, ptr %1, align 8, !range !70, !noalias !30856, !noundef !34 ; 3 uses
  %i.jr = icmp ne i64 %.val.i74, -9223372036854775805
  call void @llvm.assume(i1 %i.jr), !noalias !30841
  %or.cond.i.i75 = icmp slt i64 %.val.i74, 1
  br i1 %or.cond.i.i75, label %"_ZN4core3ptr43drop_in_place$LT$serde_yaml..ser..State$GT$17h2652bd8416454e84E.exit.i", label %bb.cb

bb.cb:                                            ; preds = %bb.ca
  %.val12.i = load ptr, ptr %i.je, align 8, !noalias !30856, !nonnull !34, !noundef !34
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val12.i, i64 noundef %.val.i74, i64 noundef range(i64 1, -9223372036854775807) 1) #53, !noalias !30859, !inline_history !30783
  br label %"_ZN4core3ptr43drop_in_place$LT$serde_yaml..ser..State$GT$17h2652bd8416454e84E.exit.i"

"_ZN4core3ptr43drop_in_place$LT$serde_yaml..ser..State$GT$17h2652bd8416454e84E.exit.i": ; preds = %bb.cb, %bb.ca
  store i64 -9223372036854775804, ptr %1, align 8, !noalias !30856
  br label %bb.cf

bb.cc:                                            ; preds = %bb.by, %bb.bx
  %i.js = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.jt = icmp eq i64 %.sroa.0113.0.copyload, 0
  br i1 %i.jt, label %.body, label %bb.cd

bb.cd:                                            ; preds = %bb.cc
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.7114.0.copyload, i64 noundef %.sroa.0113.0.copyload, i64 noundef range(i64 1, -9223372036854775807) 1) #53, !noalias !30860
  br label %.body

"_ZN98_$LT$$RF$mut$u20$serde_yaml..ser..Serializer$LT$W$GT$$u20$as$u20$serde_core..ser..SerializeMap$GT$15serialize_entry17h5d882b77e4cbeddcE.exit": ; preds = %.noexc, %.noexc76
  %.sroa.0.0.i73 = phi ptr [ %i.jp, %.noexc76 ], [ %i.jl, %.noexc ] ; 2 uses
  %i.ju = icmp eq i64 %.sroa.0113.0.copyload, 0
  br i1 %i.ju, label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17hfedeefc8cce81a05E.exit68", label %bb.ce

bb.ce:                                            ; preds = %"_ZN98_$LT$$RF$mut$u20$serde_yaml..ser..Serializer$LT$W$GT$$u20$as$u20$serde_core..ser..SerializeMap$GT$15serialize_entry17h5d882b77e4cbeddcE.exit"
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.7114.0.copyload, i64 noundef %.sroa.0113.0.copyload, i64 noundef range(i64 1, -9223372036854775807) 1) #53, !noalias !30861
  br label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17hfedeefc8cce81a05E.exit68"

bb.cf:                                            ; preds = %"_ZN4core3ptr43drop_in_place$LT$serde_yaml..ser..State$GT$17h2652bd8416454e84E.exit.i", %bb.bz
  %i.jv = icmp eq i64 %.sroa.0113.0.copyload, 0
  br i1 %i.jv, label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17hfedeefc8cce81a05E.exit", label %bb.cg

bb.cg:                                            ; preds = %bb.cf
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.7114.0.copyload, i64 noundef %.sroa.0113.0.copyload, i64 noundef range(i64 1, -9223372036854775807) 1) #53, !noalias !30862
  br label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17hfedeefc8cce81a05E.exit"

"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17hfedeefc8cce81a05E.exit": ; preds = %bb.cg, %bb.cf
  %i.jw = icmp eq ptr %i.jf, %2
  br i1 %i.jw, label %._crit_edge, label %bb.br

"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17hfedeefc8cce81a05E.exit68": ; preds = %.noexc85, %.noexc84, %"_ZN98_$LT$$RF$mut$u20$serde_yaml..ser..Serializer$LT$W$GT$$u20$as$u20$serde_core..ser..SerializeMap$GT$15serialize_entry17h5d882b77e4cbeddcE.exit", %bb.ce
  %.sroa.0.0.i62 = phi ptr [ %.sroa.0.0.i73, %"_ZN98_$LT$$RF$mut$u20$serde_yaml..ser..Serializer$LT$W$GT$$u20$as$u20$serde_core..ser..SerializeMap$GT$15serialize_entry17h5d882b77e4cbeddcE.exit" ], [ %.sroa.0.0.i73, %bb.ce ], [ %i.iy, %.noexc85 ], [ %i.iu, %.noexc84 ] ; 2 uses
  %i.jx = icmp eq i64 %i.ie, 0
  br i1 %i.jx, label %"_ZN98_$LT$$RF$mut$u20$serde_yaml..ser..Serializer$LT$W$GT$$u20$as$u20$serde_core..ser..SerializeSeq$GT$3end17h367e842e56bf9710E.exit", label %bb.ch

bb.ch:                                            ; preds = %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17hfedeefc8cce81a05E.exit68"
  %i.jy = shl nuw i64 %i.ie, 4
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ih) ], !noalias !30841
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.ih, i64 noundef %i.jy, i64 noundef range(i64 1, -9223372036854775807) 8) #53, !noalias !30841
  br label %"_ZN98_$LT$$RF$mut$u20$serde_yaml..ser..Serializer$LT$W$GT$$u20$as$u20$serde_core..ser..SerializeSeq$GT$3end17h367e842e56bf9710E.exit"

bb.ci:                                            ; preds = %._crit_edge
  %i.jz = icmp eq i64 %i.ie, 0
  br i1 %i.jz, label %"_ZN98_$LT$$RF$mut$u20$serde_yaml..ser..Serializer$LT$W$GT$$u20$as$u20$serde_core..ser..SerializeSeq$GT$3end17h367e842e56bf9710E.exit", label %bb.cj

bb.cj:                                            ; preds = %bb.ci
  %i.ka = shl nuw i64 %i.ie, 4
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.ih, i64 noundef %i.ka, i64 noundef range(i64 1, -9223372036854775807) 8) #53, !noalias !30841
  br label %"_ZN98_$LT$$RF$mut$u20$serde_yaml..ser..Serializer$LT$W$GT$$u20$as$u20$serde_core..ser..SerializeSeq$GT$3end17h367e842e56bf9710E.exit"

bb.ck:                                            ; preds = %bb.z
  %i.kb = call fastcc noundef align 8 ptr @"_ZN10serde_yaml3ser19Serializer$LT$W$GT$18emit_mapping_start17h92fc0b5f89c939b9E"(ptr noalias noundef nonnull align 8 dereferenceable(40) %1) ; 2 uses
  %.not.i63 = icmp eq ptr %i.kb, null
  br i1 %.not.i63, label %bb.cl, label %"_ZN98_$LT$$RF$mut$u20$serde_yaml..ser..Serializer$LT$W$GT$$u20$as$u20$serde_core..ser..SerializeSeq$GT$3end17h367e842e56bf9710E.exit"

bb.cl:                                            ; preds = %bb.ck
  %i.kc = call fastcc noundef align 8 ptr @"_ZN98_$LT$$RF$mut$u20$serde_yaml..ser..Serializer$LT$W$GT$$u20$as$u20$serde_core..ser..SerializeMap$GT$3end17hd6483cc0384c36c6E"(ptr noalias noundef align 8 dereferenceable(40) %1)
  br label %"_ZN98_$LT$$RF$mut$u20$serde_yaml..ser..Serializer$LT$W$GT$$u20$as$u20$serde_core..ser..SerializeSeq$GT$3end17h367e842e56bf9710E.exit"

bb.cm:                                            ; preds = %bb.ab
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aj)
  %i.kd = getelementptr inbounds nuw i8, ptr %i.gf, i64 8
  store ptr %i.kd, ptr %i.aj, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ah)
  store ptr %i.aj, ptr %i.ah, align 8
  %.sroa.438.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  store ptr @"_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17hf76eb57b33851465E", ptr %.sroa.438.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !noalias !30863
  store ptr @575, ptr %i.n, align 8, !noalias !30864
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  store i64 2, ptr %.sroa.4.0..sroa_idx, align 8, !noalias !30864
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  store ptr %i.ah, ptr %.sroa.5.0..sroa_idx, align 8, !noalias !30864
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.n, i64 24
  store i64 1, ptr %.sroa.6.0..sroa_idx, align 8, !noalias !30864
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.n, i64 32
  store ptr null, ptr %.sroa.7.0..sroa_idx, align 8, !noalias !30864
  call void @_ZN5alloc3fmt6format12format_inner17hce37e7516f243f46E(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.ai, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.n), !noalias !30865
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !30863
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ah)
  %i.ke = call fastcc noundef nonnull align 8 ptr @"_ZN67_$LT$serde_yaml..error..Error$u20$as$u20$serde_core..ser..Error$GT$6custom17h2da330649a01136eE"(ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.ai)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aj)
  br label %"_ZN98_$LT$$RF$mut$u20$serde_yaml..ser..Serializer$LT$W$GT$$u20$as$u20$serde_core..ser..SerializeSeq$GT$3end17h367e842e56bf9710E.exit"

bb.cn:                                            ; preds = %bb.ab
  %i.kf = getelementptr inbounds nuw i8, ptr %i.gf, i64 8
  %i.kg = call { ptr, i64 } @_ZN18nickel_lang_parser10identifier8LocIdent5label17h23360175f9f53dcbE(ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(20) %i.kf) ; 2 uses
  %i.kh = extractvalue { ptr, i64 } %i.kg, 0
  %i.ki = extractvalue { ptr, i64 } %i.kg, 1
  %i.kj = call fastcc noundef align 8 ptr @"_ZN96_$LT$$RF$mut$u20$serde_yaml..ser..Serializer$LT$W$GT$$u20$as$u20$serde_core..ser..Serializer$GT$13serialize_str17h4193572cd5d78293E"(ptr noalias noundef align 8 dereferenceable(40) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.kh, i64 noundef %i.ki)
  br label %"_ZN98_$LT$$RF$mut$u20$serde_yaml..ser..Serializer$LT$W$GT$$u20$as$u20$serde_core..ser..SerializeSeq$GT$3end17h367e842e56bf9710E.exit"
}

; Function Attrs: nonlazybind uwtable
define internal fastcc noundef align 8 ptr @"_ZN16nickel_lang_core9serialize99_$LT$impl$u20$serde_core..ser..Serialize$u20$for$u20$nickel_lang_core..eval..value..NickelValue$GT$9serialize17hd73410a92a07ecbeE"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %0, ptr noalias noundef nonnull align 8 dereferenceable(40) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = alloca [24 x i8], align 8                ; 8 uses
  %i.c = alloca [24 x i8], align 8                ; 8 uses
  %i.d = alloca [48 x i8], align 8                ; 8 uses
  %i.e = alloca [48 x i8], align 8                ; 8 uses
  %i.f = alloca [24 x i8], align 8                ; 7 uses
  %i.g = alloca [40 x i8], align 1                ; 10 uses
  %i.h = alloca [40 x i8], align 1                ; 9 uses
  %i.i = alloca [24 x i8], align 1                ; 6 uses
  %i.j = alloca [16 x i8], align 8                ; 5 uses
  %i.k = alloca [16 x i8], align 8                ; 5 uses
  %i.l = alloca [24 x i8], align 8                ; 2 uses
  %i.m = alloca [48 x i8], align 8                ; 12 uses
  %.sroa.012 = alloca [40 x i8], align 8          ; 2 uses
  %i.n = alloca [16 x i8], align 8                ; 5 uses
  %i.o = alloca [24 x i8], align 8                ; 2 uses
  %i.p = alloca [8 x i8], align 8                 ; 4 uses
  %i.q = alloca [16 x i8], align 8                ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q)
  call void @_ZN16nickel_lang_core4eval5value11NickelValue11content_ref17h965d5e35cf2e1421E(ptr noalias noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.q, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %0)
  %i.r = load i8, ptr %i.q, align 8, !range !59, !noundef !34
  switch i8 %i.r, label %bb.b [
    i8 0, label %bb.c
    i8 1, label %bb.e
    i8 2, label %bb.k
    i8 3, label %bb.ah
    i8 4, label %bb.ai
    i8 5, label %bb.aj
    i8 9, label %bb.ak
  ]

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  %i.s = call { ptr, i64 } @_ZN16nickel_lang_core4eval5value11NickelValue7type_of17hc677b7a5c04dea94E(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %0) ; 2 uses
  %i.t = extractvalue { ptr, i64 } %i.s, 0        ; 2 uses
  %.not41 = icmp eq ptr %i.t, null                ; 2 uses
  %i.u = extractvalue { ptr, i64 } %i.s, 1
  %spec.select = select i1 %.not41, ptr @576, ptr %i.t
  %spec.select387 = select i1 %.not41, i64 7, i64 %i.u
  store ptr %spec.select, ptr %i.j, align 8
  %i.v = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  store i64 %spec.select387, ptr %i.v, align 8
  store ptr %i.j, ptr %i.k, align 8
  %.sroa.431.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  store ptr @"_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h2a16057073367944E", ptr %.sroa.431.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !31227
  store ptr @578, ptr %i.d, align 8, !noalias !31228
  %.sroa.4164.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store i64 1, ptr %.sroa.4164.0..sroa_idx, align 8, !noalias !31228
  %.sroa.5165.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  store ptr %i.k, ptr %.sroa.5165.0..sroa_idx, align 8, !noalias !31228
  %.sroa.6166.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  store i64 1, ptr %.sroa.6166.0..sroa_idx, align 8, !noalias !31228
  %.sroa.7167.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  store ptr null, ptr %.sroa.7167.0..sroa_idx, align 8, !noalias !31228
  call void @_ZN5alloc3fmt6format12format_inner17hce37e7516f243f46E(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.l, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.d), !noalias !31229
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !31227
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  %i.w = call fastcc noundef nonnull align 8 ptr @"_ZN67_$LT$serde_json..error..Error$u20$as$u20$serde_core..ser..Error$GT$6custom17hb79b7bd8e67c587eE"(ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.l)
  br label %"_ZN100_$LT$$RF$mut$u20$serde_json..ser..Serializer$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..Serializer$GT$13serialize_seq17hac34daa911aefb5dE.exit"

bb.c:                                             ; preds = %bb.a
  %.val50 = load ptr, ptr %1, align 8, !alias.scope !31230, !noalias !31231, !nonnull !34, !align !41, !noundef !34 ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !31232)
  %i.x = load i64, ptr %.val50, align 8, !range !42, !alias.scope !31232, !noalias !31233, !noundef !34
  %i.y = getelementptr inbounds nuw i8, ptr %.val50, i64 16 ; 2 uses
  %i.z = load i64, ptr %i.y, align 8, !alias.scope !31232, !noalias !31233, !noundef !34 ; 4 uses
  %i.aa = icmp sgt i64 %i.z, -1
  call void @llvm.assume(i1 %i.aa)
  %i.ab = sub nsw i64 %i.x, %i.z
  %i.ac = icmp ugt i64 %i.ab, 4
  br i1 %i.ac, label %_ZN10serde_json3ser9Formatter10write_null17hf0dd703fa9d89f06E.exit.thread.i.i, label %_ZN10serde_json3ser9Formatter10write_null17hf0dd703fa9d89f06E.exit.i.i, !prof !40

_ZN10serde_json3ser9Formatter10write_null17hf0dd703fa9d89f06E.exit.thread.i.i: ; preds = %bb.c
  call void @llvm.experimental.noalias.scope.decl(metadata !31234)
  %i.ad = getelementptr inbounds nuw i8, ptr %.val50, i64 8
  %i.ae = load ptr, ptr %i.ad, align 8, !alias.scope !31235, !noalias !31236, !nonnull !34, !noundef !34
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 %i.z
  store i32 1819047278, ptr %i.af, align 1, !noalias !31237
  %i.ag = add nuw i64 %i.z, 4
  store i64 %i.ag, ptr %i.y, align 8, !alias.scope !31235, !noalias !31236
  br label %"_ZN100_$LT$$RF$mut$u20$serde_json..ser..Serializer$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..Serializer$GT$13serialize_seq17hac34daa911aefb5dE.exit"

_ZN10serde_json3ser9Formatter10write_null17hf0dd703fa9d89f06E.exit.i.i: ; preds = %bb.c
  %i.ah = call fastcc noundef ptr @"_ZN3std2io8buffered9bufwriter18BufWriter$LT$W$GT$14write_all_cold17hb69bf74431f513adE"(ptr noalias noundef nonnull align 8 dereferenceable(40) %.val50, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @40, i64 noundef 4), !noalias !31238 ; 2 uses
  %.not.i.i = icmp eq ptr %i.ah, null
  br i1 %.not.i.i, label %"_ZN100_$LT$$RF$mut$u20$serde_json..ser..Serializer$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..Serializer$GT$13serialize_seq17hac34daa911aefb5dE.exit", label %bb.d, !prof !56

bb.d:                                             ; preds = %_ZN10serde_json3ser9Formatter10write_null17hf0dd703fa9d89f06E.exit.i.i
  %i.ai = call noundef nonnull align 8 ptr @_ZN10serde_json5error5Error2io17hc09343b38919bb56E(ptr noundef nonnull %i.ah)
  br label %"_ZN100_$LT$$RF$mut$u20$serde_json..ser..Serializer$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..Serializer$GT$13serialize_seq17hac34daa911aefb5dE.exit"

bb.e:                                             ; preds = %bb.a
  %i.aj = getelementptr inbounds nuw i8, ptr %i.q, i64 1
  %i.ak = load i8, ptr %i.aj, align 1, !range !44, !noundef !34
  %i.al = trunc nuw i8 %i.ak to i1
  %.val51 = load ptr, ptr %1, align 8, !nonnull !34, !noundef !34 ; 7 uses
  %i.am = getelementptr inbounds nuw i8, ptr %.val51, i64 16 ; 4 uses
  br i1 %i.al, label %.split.i.i, label %.split2.i.i

.split2.i.i:                                      ; preds = %bb.e
  call void @llvm.experimental.noalias.scope.decl(metadata !31239)
  %i.an = load i64, ptr %.val51, align 8, !range !42, !alias.scope !31239, !noalias !31240, !noundef !34
  %i.ao = load i64, ptr %i.am, align 8, !alias.scope !31239, !noalias !31240, !noundef !34 ; 4 uses
  %i.ap = icmp sgt i64 %i.ao, -1
  call void @llvm.assume(i1 %i.ap)
  %i.aq = sub nsw i64 %i.an, %i.ao
  %i.ar = icmp ugt i64 %i.aq, 5
  br i1 %i.ar, label %bb.g, label %bb.f, !prof !40

bb.f:                                             ; preds = %.split2.i.i
  %i.as = call fastcc noundef ptr @"_ZN3std2io8buffered9bufwriter18BufWriter$LT$W$GT$14write_all_cold17hb69bf74431f513adE"(ptr noalias noundef nonnull align 8 dereferenceable(40) %.val51, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @38, i64 noundef 5), !noalias !31241
  br label %_ZN10serde_json3ser9Formatter10write_bool17hfd100db5e23fb6a1E.exit.i

bb.g:                                             ; preds = %.split2.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !31242)
  %i.at = getelementptr inbounds nuw i8, ptr %.val51, i64 8
  %i.au = load ptr, ptr %i.at, align 8, !alias.scope !31243, !noalias !31244, !nonnull !34, !noundef !34
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 %i.ao
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(5) %i.av, ptr noundef nonnull readonly align 1 dereferenceable(5) @38, i64 5, i1 false), !noalias !31245
  %i.aw = add nuw i64 %i.ao, 5
  store i64 %i.aw, ptr %i.am, align 8, !alias.scope !31243, !noalias !31244
  br label %"_ZN100_$LT$$RF$mut$u20$serde_json..ser..Serializer$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..Serializer$GT$13serialize_seq17hac34daa911aefb5dE.exit"

.split.i.i:                                       ; preds = %bb.e
  call void @llvm.experimental.noalias.scope.decl(metadata !31246)
  %i.ax = load i64, ptr %.val51, align 8, !range !42, !alias.scope !31246, !noalias !31247, !noundef !34
  %i.ay = load i64, ptr %i.am, align 8, !alias.scope !31246, !noalias !31247, !noundef !34 ; 4 uses
  %i.az = icmp sgt i64 %i.ay, -1
  call void @llvm.assume(i1 %i.az)
end_hunk_3
begin_hunk_4_@_ZN18nickel_lang_parser10identifier8interner8Interner13get_or_intern17h6ccd93571e91409cE:bb.a
  %i.hl = add i64 %i.hk, 1
  store i64 %i.hl, ptr %i.eb, align 8, !noalias !32234
  br label %.body.i.i

bb.ao:                                            ; preds = %bb.am, %bb.ak, %._crit_edge.i.i10.i
  %.sroa.4.0.i.i.i = phi i64 [ %i.he, %bb.am ], [ %i.gz, %bb.ak ], [ %i.fk, %._crit_edge.i.i10.i ] ; 5 uses
  %.sroa.027.0.i.i.i = phi ptr [ %i.hh, %bb.am ], [ %i.hb, %bb.ak ], [ %i.fj, %._crit_edge.i.i10.i ] ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !32238
  br i1 %i.ea, label %_ZN3std4sync6poison4Flag4done17h723d8023d05917a8E.exit.i.i.i.i, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.hm = load atomic i64, ptr @_ZN3std9panicking11panic_count18GLOBAL_PANIC_COUNT17h933148eac7c069a2E monotonic, align 8, !noalias !32238
  %i.hn = and i64 %i.hm, 9223372036854775807
  %i.ho = icmp eq i64 %i.hn, 0
  br i1 %i.ho, label %_ZN3std4sync6poison4Flag4done17h723d8023d05917a8E.exit.i.i.i.i, label %bb.aq, !prof !40

bb.aq:                                            ; preds = %bb.ap
  %i.hp = invoke noundef zeroext i1 @_ZN3std9panicking11panic_count17is_zero_slow_path17hca8cf3adadc2c48aE()
          to label %.noexc7 unwind label %bb.bc

.noexc7:                                          ; preds = %bb.aq
  br i1 %i.hp, label %_ZN3std4sync6poison4Flag4done17h723d8023d05917a8E.exit.i.i.i.i, label %bb.ar

bb.ar:                                            ; preds = %.noexc7
  store atomic i8 1, ptr %i.du monotonic, align 4, !noalias !32234
  br label %_ZN3std4sync6poison4Flag4done17h723d8023d05917a8E.exit.i.i.i.i

_ZN3std4sync6poison4Flag4done17h723d8023d05917a8E.exit.i.i.i.i: ; preds = %bb.ar, %.noexc7, %bb.ap, %bb.ao
  %i.hq = atomicrmw xchg ptr %i.dl, i32 0 release, align 4, !noalias !32234
  %i.hr = icmp eq i32 %i.hq, 2
  br i1 %i.hr, label %bb.as, label %"_ZN4core3ptr93drop_in_place$LT$std..sync..poison..mutex..MutexGuard$LT$typed_arena..Arena$LT$u8$GT$$GT$$GT$17hfcec62374ea48365E.exit.i.i", !prof !37

bb.as:                                            ; preds = %_ZN3std4sync6poison4Flag4done17h723d8023d05917a8E.exit.i.i.i.i
  invoke void @_ZN3std3sys4sync5mutex5futex5Mutex4wake17hda74d737948706abE(ptr noundef nonnull align 4 %i.dl)
          to label %"_ZN4core3ptr93drop_in_place$LT$std..sync..poison..mutex..MutexGuard$LT$typed_arena..Arena$LT$u8$GT$$GT$$GT$17hfcec62374ea48365E.exit.i.i" unwind label %bb.bc

"_ZN4core3ptr93drop_in_place$LT$std..sync..poison..mutex..MutexGuard$LT$typed_arena..Arena$LT$u8$GT$$GT$$GT$17hfcec62374ea48365E.exit.i.i": ; preds = %bb.as, %_ZN3std4sync6poison4Flag4done17h723d8023d05917a8E.exit.i.i.i.i
  %i.hs = load i64, ptr getelementptr inbounds nuw (i8, ptr @_ZN18nickel_lang_parser10identifier8INTERNER17hc0447100e2e2068fE, i64 64), align 8, !alias.scope !32234, !noalias !32235, !noundef !34 ; 5 uses
  %i.ht = icmp ult i64 %i.hs, 576460752303423488
  tail call void @llvm.assume(i1 %i.ht)
  %i.hu = load i64, ptr getelementptr inbounds nuw (i8, ptr @_ZN18nickel_lang_parser10identifier8INTERNER17hc0447100e2e2068fE, i64 48), align 8, !range !42, !alias.scope !32248, !noalias !32249, !noundef !34
  %i.hv = icmp eq i64 %i.hs, %i.hu
  br i1 %i.hv, label %bb.at, label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17hff792cad37bf0077E.exit.i.i"

bb.at:                                            ; preds = %"_ZN4core3ptr93drop_in_place$LT$std..sync..poison..mutex..MutexGuard$LT$typed_arena..Arena$LT$u8$GT$$GT$$GT$17hfcec62374ea48365E.exit.i.i"
  invoke void @"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$8grow_one17h68dd23c3c7600388E"(ptr noalias noundef nonnull align 8 dereferenceable(24) getelementptr inbounds nuw (i8, ptr @_ZN18nickel_lang_parser10identifier8INTERNER17hc0447100e2e2068fE, i64 48), ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @617)
          to label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17hff792cad37bf0077E.exit.i.i" unwind label %bb.bc

"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17hff792cad37bf0077E.exit.i.i": ; preds = %bb.at, %"_ZN4core3ptr93drop_in_place$LT$std..sync..poison..mutex..MutexGuard$LT$typed_arena..Arena$LT$u8$GT$$GT$$GT$17hfcec62374ea48365E.exit.i.i"
  %i.hw = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZN18nickel_lang_parser10identifier8INTERNER17hc0447100e2e2068fE, i64 56), align 8, !alias.scope !32248, !noalias !32249, !nonnull !34, !noundef !34
  %i.hx = getelementptr inbounds nuw [16 x i8], ptr %i.hw, i64 %i.hs ; 2 uses
  store ptr %.sroa.027.0.i.i.i, ptr %i.hx, align 8, !noalias !32250
  %i.hy = getelementptr inbounds nuw i8, ptr %i.hx, i64 8
  store i64 %.sroa.4.0.i.i.i, ptr %i.hy, align 8
  %i.hz = add nuw nsw i64 %i.hs, 1
  store i64 %i.hz, ptr getelementptr inbounds nuw (i8, ptr @_ZN18nickel_lang_parser10identifier8INTERNER17hc0447100e2e2068fE, i64 64), align 8, !alias.scope !32248, !noalias !32249
  invoke void @_ZN18nickel_lang_parser10identifier6Bitmap4push17h0f9439b7d93b22b5E(ptr noalias noundef nonnull align 8 dereferenceable(112) getelementptr inbounds nuw (i8, ptr @_ZN18nickel_lang_parser10identifier8INTERNER17hc0447100e2e2068fE, i64 16), i1 noundef zeroext false)
          to label %.noexc10 unwind label %bb.bc

.noexc10:                                         ; preds = %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17hff792cad37bf0077E.exit.i.i"
  tail call void @llvm.experimental.noalias.scope.decl(metadata !32251)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !32252
  %.sroa.48.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.sroa.59.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  %.sroa.610.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %.sroa.711.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.ia = load <2 x i64>, ptr getelementptr inbounds nuw (i8, ptr @_ZN18nickel_lang_parser10identifier8INTERNER17hc0447100e2e2068fE, i64 104), align 8, !alias.scope !32253, !noalias !32254 ; 3 uses
  %i.ib = shufflevector <2 x i64> %i.ia, <2 x i64> poison, <2 x i32> zeroinitializer
  %i.ic = xor <2 x i64> %i.ib, <i64 8317987319222330741, i64 7816392313619706465>
  store <2 x i64> %i.ic, ptr %i.b, align 16, !alias.scope !32255, !noalias !32252
  %i.id = shufflevector <2 x i64> %i.ia, <2 x i64> poison, <2 x i32> <i32 1, i32 1>
  %i.ie = xor <2 x i64> %i.id, <i64 7237128888997146477, i64 8387220255154660723>
  store <2 x i64> %i.ie, ptr %.sroa.59.0..sroa_idx.i.i.i.i.i, align 16, !alias.scope !32255, !noalias !32252
  store <2 x i64> %i.ia, ptr %.sroa.711.0..sroa_idx.i.i.i.i.i, align 16, !alias.scope !32255, !noalias !32252
  %.sroa.913.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 48 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %.sroa.913.0..sroa_idx.i.i.i.i.i, i8 0, i64 24, i1 false), !alias.scope !32255, !noalias !32252
  call fastcc void @"_ZN71_$LT$core..hash..sip..Hasher$LT$S$GT$$u20$as$u20$core..hash..Hasher$GT$5write17h6846a1ced2d81e4eE"(ptr noalias noundef nonnull align 8 dereferenceable(72) %i.b, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %.sroa.027.0.i.i.i, i64 noundef range(i64 -9223372036854775807, -9223372036854775808) %.sroa.4.0.i.i.i), !noalias !32256
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !32257
  store i8 -1, ptr %i.a, align 1, !noalias !32257
  call fastcc void @"_ZN71_$LT$core..hash..sip..Hasher$LT$S$GT$$u20$as$u20$core..hash..Hasher$GT$5write17h6846a1ced2d81e4eE"(ptr noalias noundef nonnull align 8 dereferenceable(72) %i.b, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.a, i64 noundef 1), !noalias !32258
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !32257
  %.sroa.0.0.copyload.i.i.i.i.i.i = load i64, ptr %i.b, align 16, !alias.scope !32259, !noalias !32252
  %.sroa.10.0.copyload.i.i.i.i.i.i = load i64, ptr %.sroa.48.0..sroa_idx.i.i.i.i.i, align 8, !alias.scope !32259, !noalias !32252
  %.sroa.17.0.copyload.i.i.i.i.i.i = load i64, ptr %.sroa.59.0..sroa_idx.i.i.i.i.i, align 16, !alias.scope !32259, !noalias !32252 ; 3 uses
  %.sroa.22.0.copyload.i.i.i.i.i.i = load i64, ptr %.sroa.610.0..sroa_idx.i.i.i.i.i, align 8, !alias.scope !32259, !noalias !32252
  %i.if = load i64, ptr %.sroa.913.0..sroa_idx.i.i.i.i.i, align 16, !alias.scope !32259, !noalias !32252, !noundef !34
  %i.ig = shl i64 %i.if, 56
  %i.ih = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  %i.ii = load i64, ptr %i.ih, align 8, !alias.scope !32259, !noalias !32252, !noundef !34
  %i.ij = or i64 %i.ig, %i.ii                     ; 2 uses
  %i.ik = xor i64 %i.ij, %.sroa.22.0.copyload.i.i.i.i.i.i ; 3 uses
  %i.il = add i64 %.sroa.17.0.copyload.i.i.i.i.i.i, %.sroa.0.0.copyload.i.i.i.i.i.i ; 3 uses
  %i.im = add i64 %i.ik, %.sroa.10.0.copyload.i.i.i.i.i.i ; 2 uses
  %i.in = tail call i64 @llvm.fshl.i64(i64 %.sroa.17.0.copyload.i.i.i.i.i.i, i64 %.sroa.17.0.copyload.i.i.i.i.i.i, i64 13)
  %i.io = xor i64 %i.in, %i.il                    ; 3 uses
  %i.ip = tail call i64 @llvm.fshl.i64(i64 %i.ik, i64 %i.ik, i64 16)
  %i.iq = xor i64 %i.ip, %i.im                    ; 3 uses
  %i.ir = tail call i64 @llvm.fshl.i64(i64 %i.il, i64 %i.il, i64 32)
  %i.is = add i64 %i.im, %i.io                    ; 3 uses
  %i.it = add i64 %i.iq, %i.ir                    ; 2 uses
  %i.iu = tail call i64 @llvm.fshl.i64(i64 %i.io, i64 %i.io, i64 17)
  %i.iv = xor i64 %i.is, %i.iu                    ; 3 uses
  %i.iw = tail call i64 @llvm.fshl.i64(i64 %i.iq, i64 %i.iq, i64 21)
  %i.ix = xor i64 %i.iw, %i.it                    ; 3 uses
  %i.iy = tail call i64 @llvm.fshl.i64(i64 %i.is, i64 %i.is, i64 32)
  %i.iz = xor i64 %i.it, %i.ij
  %i.ja = xor i64 %i.iy, 255
  %i.jb = add i64 %i.iz, %i.iv                    ; 3 uses
  %i.jc = add i64 %i.ix, %i.ja                    ; 2 uses
  %i.jd = tail call i64 @llvm.fshl.i64(i64 %i.iv, i64 %i.iv, i64 13)
  %i.je = xor i64 %i.jb, %i.jd                    ; 3 uses
  %i.jf = tail call i64 @llvm.fshl.i64(i64 %i.ix, i64 %i.ix, i64 16)
  %i.jg = xor i64 %i.jf, %i.jc                    ; 3 uses
  %i.jh = tail call i64 @llvm.fshl.i64(i64 %i.jb, i64 %i.jb, i64 32)
  %i.ji = add i64 %i.je, %i.jc                    ; 3 uses
  %i.jj = add i64 %i.jg, %i.jh                    ; 2 uses
  %i.jk = tail call i64 @llvm.fshl.i64(i64 %i.je, i64 %i.je, i64 17)
  %i.jl = xor i64 %i.ji, %i.jk                    ; 3 uses
  %i.jm = tail call i64 @llvm.fshl.i64(i64 %i.jg, i64 %i.jg, i64 21)
  %i.jn = xor i64 %i.jm, %i.jj                    ; 3 uses
  %i.jo = tail call i64 @llvm.fshl.i64(i64 %i.ji, i64 %i.ji, i64 32)
  %i.jp = add i64 %i.jl, %i.jj                    ; 3 uses
  %i.jq = add i64 %i.jn, %i.jo                    ; 2 uses
  %i.jr = tail call i64 @llvm.fshl.i64(i64 %i.jl, i64 %i.jl, i64 13)
  %i.js = xor i64 %i.jr, %i.jp                    ; 3 uses
  %i.jt = tail call i64 @llvm.fshl.i64(i64 %i.jn, i64 %i.jn, i64 16)
  %i.ju = xor i64 %i.jt, %i.jq                    ; 3 uses
  %i.jv = tail call i64 @llvm.fshl.i64(i64 %i.jp, i64 %i.jp, i64 32)
  %i.jw = add i64 %i.js, %i.jq                    ; 3 uses
  %i.jx = add i64 %i.ju, %i.jv                    ; 2 uses
  %i.jy = tail call i64 @llvm.fshl.i64(i64 %i.js, i64 %i.js, i64 17)
  %i.jz = xor i64 %i.jy, %i.jw                    ; 3 uses
  %i.ka = tail call i64 @llvm.fshl.i64(i64 %i.ju, i64 %i.ju, i64 21)
  %i.kb = xor i64 %i.ka, %i.jx                    ; 3 uses
  %i.kc = tail call i64 @llvm.fshl.i64(i64 %i.jw, i64 %i.jw, i64 32)
  %i.kd = add i64 %i.jz, %i.jx
  %i.ke = add i64 %i.kb, %i.kc                    ; 2 uses
  %i.kf = tail call i64 @llvm.fshl.i64(i64 %i.jz, i64 %i.jz, i64 13)
  %i.kg = xor i64 %i.kf, %i.kd                    ; 3 uses
  %i.kh = tail call i64 @llvm.fshl.i64(i64 %i.kb, i64 %i.kb, i64 16)
  %i.ki = xor i64 %i.kh, %i.ke                    ; 2 uses
  %i.kj = add i64 %i.kg, %i.ke                    ; 3 uses
  %i.kk = tail call i64 @llvm.fshl.i64(i64 %i.kg, i64 %i.kg, i64 17)
  %i.kl = tail call i64 @llvm.fshl.i64(i64 %i.ki, i64 %i.ki, i64 21)
  %i.km = tail call i64 @llvm.fshl.i64(i64 %i.kj, i64 %i.kj, i64 32)
  %i.kn = xor i64 %i.kl, %i.kk
  %i.ko = xor i64 %i.kn, %i.km
  %i.kp = xor i64 %i.ko, %i.kj                    ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !32252
  %i.kq = load i64, ptr getelementptr inbounds nuw (i8, ptr @_ZN18nickel_lang_parser10identifier8INTERNER17hc0447100e2e2068fE, i64 88), align 8, !alias.scope !32260, !noalias !32261, !noundef !34
  %i.kr = icmp eq i64 %i.kq, 0
  br i1 %i.kr, label %bb.au, label %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$7reserve17h8a58bb52abe343ccE.exit.i.i.i.i", !prof !37

bb.au:                                            ; preds = %.noexc10
  %i.ks = invoke { i64, i64 } @"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$14reserve_rehash17h648cb2e679db5f2dE"(ptr noalias noundef nonnull align 8 dereferenceable(48) getelementptr inbounds nuw (i8, ptr @_ZN18nickel_lang_parser10identifier8INTERNER17hc0447100e2e2068fE, i64 72), i64 noundef 1, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) getelementptr inbounds nuw (i8, ptr @_ZN18nickel_lang_parser10identifier8INTERNER17hc0447100e2e2068fE, i64 104), i1 noundef zeroext true)
          to label %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$7reserve17h8a58bb52abe343ccE.exit.i.i.i.i" unwind label %bb.bc ; 0 uses

"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$7reserve17h8a58bb52abe343ccE.exit.i.i.i.i": ; preds = %bb.au, %.noexc10
  %.val.i.i.i.i = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZN18nickel_lang_parser10identifier8INTERNER17hc0447100e2e2068fE, i64 72), align 8, !alias.scope !32262, !noalias !32263, !nonnull !34, !noundef !34 ; 9 uses
  %.val7.i.i.i.i = load i64, ptr getelementptr inbounds nuw (i8, ptr @_ZN18nickel_lang_parser10identifier8INTERNER17hc0447100e2e2068fE, i64 80), align 8, !alias.scope !32262, !noalias !32263, !noundef !34 ; 4 uses
  %i.kt = lshr i64 %i.kp, 57
  %i.ku = trunc nuw nsw i64 %i.kt to i8           ; 3 uses
  %.sroa.0.0.vec.insert.i.i.i.i.i.i = insertelement <16 x i8> poison, i8 %i.ku, i64 0
  %.sroa.0.15.vec.insert.i.i.i.i.i.i = shufflevector <16 x i8> %.sroa.0.0.vec.insert.i.i.i.i.i.i, <16 x i8> poison, <16 x i32> zeroinitializer
  br label %bb.av

bb.av:                                            ; preds = %bb.ax, %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$7reserve17h8a58bb52abe343ccE.exit.i.i.i.i"
  %.pn.i.i.i.i.i = phi i64 [ %i.kp, %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$7reserve17h8a58bb52abe343ccE.exit.i.i.i.i" ], [ %i.lu, %bb.ax ]
  %.sroa.6.0.i.i.i.i.i = phi i64 [ undef, %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$7reserve17h8a58bb52abe343ccE.exit.i.i.i.i" ], [ %.sroa.6.120.i.i.i.i.i, %bb.ax ]
  %.sroa.01.0.i.i.i.i.i = phi i64 [ 0, %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$7reserve17h8a58bb52abe343ccE.exit.i.i.i.i" ], [ %.sroa.01.122.i.i.i.i.i, %bb.ax ]
  %i.kv = phi i64 [ 0, %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$7reserve17h8a58bb52abe343ccE.exit.i.i.i.i" ], [ %i.lt, %bb.ax ]
  %.sroa.0.017.i.i.i.i.i = and i64 %.pn.i.i.i.i.i, %.val7.i.i.i.i ; 4 uses
  %i.kw = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i, i64 %.sroa.0.017.i.i.i.i.i
  %.sroa.0.0.copyload.i24.i.i.i.i.i = load <16 x i8>, ptr %i.kw, align 1, !noalias !32264 ; 3 uses
  %i.kx = icmp eq <16 x i8> %.sroa.0.0.copyload.i24.i.i.i.i.i, %.sroa.0.15.vec.insert.i.i.i.i.i.i
  %i.ky = bitcast <16 x i1> %i.kx to i16          ; 2 uses
  %.not25.i.i.i.i.i = icmp eq i16 %i.ky, 0
  br i1 %.not25.i.i.i.i.i, label %._crit_edge.i.i.i.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.av, %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$24find_or_find_insert_slot28_$u7b$$u7b$closure$u7d$$u7d$17h6576c4fcc48ae6baE.exit.thread.i.i.i.i"
  %.sroa.05.026.i.i.i.i.i = phi i16 [ %i.lj, %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$24find_or_find_insert_slot28_$u7b$$u7b$closure$u7d$$u7d$17h6576c4fcc48ae6baE.exit.thread.i.i.i.i" ], [ %i.ky, %bb.av ] ; 3 uses
  %i.kz = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.05.026.i.i.i.i.i, i1 true)
  %i.la = zext nneg i16 %i.kz to i64
  %i.lb = add i64 %.sroa.0.017.i.i.i.i.i, %i.la
  %i.lc = and i64 %i.lb, %.val7.i.i.i.i
  %i.ld = sub nsw i64 0, %i.lc                    ; 2 uses
  %i.le = getelementptr inbounds [24 x i8], ptr %.val.i.i.i.i, i64 %i.ld ; 2 uses
  %i.lf = getelementptr i8, ptr %i.le, i64 -16
  %.val4.i.i.i.i.i = load i64, ptr %i.lf, align 8, !noalias !32265, !noundef !34
  %.not.i.i.i.i.i.i.i.i.i = icmp eq i64 %.sroa.4.0.i.i.i, %.val4.i.i.i.i.i
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$24find_or_find_insert_slot28_$u7b$$u7b$closure$u7d$$u7d$17h6576c4fcc48ae6baE.exit.i.i.i.i", label %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$24find_or_find_insert_slot28_$u7b$$u7b$closure$u7d$$u7d$17h6576c4fcc48ae6baE.exit.thread.i.i.i.i", !prof !115

"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$24find_or_find_insert_slot28_$u7b$$u7b$closure$u7d$$u7d$17h6576c4fcc48ae6baE.exit.i.i.i.i": ; preds = %.lr.ph.i.i.i.i.i
  %i.lg = getelementptr inbounds i8, ptr %i.le, i64 -24
  %.val3.i.i.i.i.i = load ptr, ptr %i.lg, align 8, !noalias !32265, !nonnull !34, !align !52, !noundef !34
  %bcmp.i.i.i.i.i.i.i.i.i = tail call i32 @bcmp(ptr nonnull readonly align 1 %.sroa.027.0.i.i.i, ptr nonnull readonly align 1 %.val3.i.i.i.i.i, i64 range(i64 -9223372036854775807, -9223372036854775808) %.sroa.4.0.i.i.i), !alias.scope !32266, !noalias !32267
  %i.lh = icmp eq i32 %bcmp.i.i.i.i.i.i.i.i.i, 0
  br i1 %i.lh, label %"_ZN18nickel_lang_parser10identifier8interner104_$LT$impl$u20$nickel_lang_parser..identifier..interner..ouroboros_impl_inner_interner..InnerInterner$GT$6intern17h4b97c6fce10ab433E.exit.i", label %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$24find_or_find_insert_slot28_$u7b$$u7b$closure$u7d$$u7d$17h6576c4fcc48ae6baE.exit.thread.i.i.i.i", !prof !39

._crit_edge.i.i.i.i.i:                            ; preds = %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$24find_or_find_insert_slot28_$u7b$$u7b$closure$u7d$$u7d$17h6576c4fcc48ae6baE.exit.thread.i.i.i.i", %bb.av
  %.not13.i.i.i.i.i = icmp eq i64 %.sroa.01.0.i.i.i.i.i, 0
  br i1 %.not13.i.i.i.i.i, label %bb.aw, label %.thread.i.i.i.i.i, !prof !40

"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$24find_or_find_insert_slot28_$u7b$$u7b$closure$u7d$$u7d$17h6576c4fcc48ae6baE.exit.thread.i.i.i.i": ; preds = %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$24find_or_find_insert_slot28_$u7b$$u7b$closure$u7d$$u7d$17h6576c4fcc48ae6baE.exit.i.i.i.i", %.lr.ph.i.i.i.i.i
  %i.li = add i16 %.sroa.05.026.i.i.i.i.i, -1
  %i.lj = and i16 %i.li, %.sroa.05.026.i.i.i.i.i  ; 2 uses
  %.not.i.i.i.i.i = icmp eq i16 %i.lj, 0
  br i1 %.not.i.i.i.i.i, label %._crit_edge.i.i.i.i.i, label %.lr.ph.i.i.i.i.i

bb.aw:                                            ; preds = %._crit_edge.i.i.i.i.i
  %i.lk = icmp slt <16 x i8> %.sroa.0.0.copyload.i24.i.i.i.i.i, zeroinitializer
  %i.ll = bitcast <16 x i1> %i.lk to i16          ; 2 uses
  %.not.not.i.not.i.i.i.i.i = icmp eq i16 %i.ll, 0 ; 2 uses
  %i.lm = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.ll, i1 true)
  %i.ln = zext nneg i16 %i.lm to i64
  %.sroa.6.0.i.i.i.i.i.i = select i1 %.not.not.i.not.i.i.i.i.i, i64 undef, i64 %i.ln
  %i.lo = add i64 %.sroa.6.0.i.i.i.i.i.i, %.sroa.0.017.i.i.i.i.i
  %i.lp = and i64 %i.lo, %.val7.i.i.i.i
  br i1 %.not.not.i.not.i.i.i.i.i, label %bb.ax, label %.thread.i.i.i.i.i

.thread.i.i.i.i.i:                                ; preds = %bb.aw, %._crit_edge.i.i.i.i.i
  %.sroa.6.121.i.i.i.i.i = phi i64 [ %i.lp, %bb.aw ], [ %.sroa.6.0.i.i.i.i.i, %._crit_edge.i.i.i.i.i ] ; 3 uses
  %i.lq = icmp eq <16 x i8> %.sroa.0.0.copyload.i24.i.i.i.i.i, splat (i8 -1)
  %i.lr = bitcast <16 x i1> %i.lq to i16
  %i.ls = icmp eq i16 %i.lr, 0
  br i1 %i.ls, label %bb.ax, label %bb.ay, !prof !37

bb.ax:                                            ; preds = %.thread.i.i.i.i.i, %bb.aw
  %.sroa.01.122.i.i.i.i.i = phi i64 [ 1, %.thread.i.i.i.i.i ], [ 0, %bb.aw ]
  %.sroa.6.120.i.i.i.i.i = phi i64 [ %.sroa.6.121.i.i.i.i.i, %.thread.i.i.i.i.i ], [ undef, %bb.aw ]
  %i.lt = add i64 %i.kv, 16                       ; 2 uses
  %i.lu = add i64 %i.lt, %.sroa.0.017.i.i.i.i.i
  br label %bb.av

bb.ay:                                            ; preds = %.thread.i.i.i.i.i
  %i.lv = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i, i64 %.sroa.6.121.i.i.i.i.i
  %i.lw = load i8, ptr %i.lv, align 1, !noalias !32268, !noundef !34 ; 2 uses
  %i.lx = icmp sgt i8 %i.lw, -1
  br i1 %i.lx, label %bb.az, label %bb.ba, !prof !37

bb.az:                                            ; preds = %bb.ay
  %.val2.i.i.i.i.i.i = load <16 x i8>, ptr %.val.i.i.i.i, align 16, !noalias !32268
  %i.ly = icmp slt <16 x i8> %.val2.i.i.i.i.i.i, zeroinitializer
  %i.lz = bitcast <16 x i1> %i.ly to i16          ; 2 uses
  %i.ma = icmp ne i16 %i.lz, 0
  tail call void @llvm.assume(i1 %i.ma)
  %i.mb = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.lz, i1 true)
  %i.mc = zext nneg i16 %i.mb to i64              ; 2 uses
  %.phi.trans.insert.i.i.i = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i, i64 %i.mc
  %.pre.i7.i.i = load i8, ptr %.phi.trans.insert.i.i.i, align 1, !noalias !32269
  br label %bb.ba

bb.ba:                                            ; preds = %bb.az, %bb.ay
  %i.md = phi i8 [ %.pre.i7.i.i, %bb.az ], [ %i.lw, %bb.ay ]
  %.sroa.3.0.i.ph.i.i.i.i = phi i64 [ %i.mc, %bb.az ], [ %.sroa.6.121.i.i.i.i.i, %bb.ay ] ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !32270)
  %i.me = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i, i64 %.sroa.3.0.i.ph.i.i.i.i
  %i.mf = and i8 %i.md, 1
  %i.mg = zext nneg i8 %i.mf to i64
  %i.mh = add i64 %.sroa.3.0.i.ph.i.i.i.i, -16
  %i.mi = and i64 %i.mh, %.val7.i.i.i.i
  store i8 %i.ku, ptr %i.me, align 1, !noalias !32269
  %i.mj = getelementptr i8, ptr %.val.i.i.i.i, i64 %i.mi
  %i.mk = getelementptr i8, ptr %i.mj, i64 16
  store i8 %i.ku, ptr %i.mk, align 1, !noalias !32269
  %i.ml = load <2 x i64>, ptr getelementptr inbounds nuw (i8, ptr @_ZN18nickel_lang_parser10identifier8INTERNER17hc0447100e2e2068fE, i64 88), align 8, !alias.scope !32271, !noalias !32272
  %i.mm = insertelement <2 x i64> <i64 poison, i64 -1>, i64 %i.mg, i64 0
  %i.mn = sub <2 x i64> %i.ml, %i.mm
  store <2 x i64> %i.mn, ptr getelementptr inbounds nuw (i8, ptr @_ZN18nickel_lang_parser10identifier8INTERNER17hc0447100e2e2068fE, i64 88), align 8, !alias.scope !32271, !noalias !32272
  %i.mo = sub nsw i64 0, %.sroa.3.0.i.ph.i.i.i.i  ; 2 uses
  %i.mp = getelementptr inbounds [24 x i8], ptr %.val.i.i.i.i, i64 %i.mo ; 2 uses
  %i.mq = getelementptr inbounds i8, ptr %i.mp, i64 -24
  store ptr %.sroa.027.0.i.i.i, ptr %i.mq, align 8, !noalias !32273
  %.sroa.4.0..sroa_idx.i.i.i = getelementptr inbounds i8, ptr %i.mp, i64 -16
  store i64 %.sroa.4.0.i.i.i, ptr %.sroa.4.0..sroa_idx.i.i.i, align 8, !noalias !32270
  br label %"_ZN18nickel_lang_parser10identifier8interner104_$LT$impl$u20$nickel_lang_parser..identifier..interner..ouroboros_impl_inner_interner..InnerInterner$GT$6intern17h4b97c6fce10ab433E.exit.i"

bb.bb:                                            ; preds = %.body.i.i
  %i.mr = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #60, !noalias !32234
  unreachable

"_ZN18nickel_lang_parser10identifier8interner104_$LT$impl$u20$nickel_lang_parser..identifier..interner..ouroboros_impl_inner_interner..InnerInterner$GT$6intern17h4b97c6fce10ab433E.exit.i": ; preds = %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$24find_or_find_insert_slot28_$u7b$$u7b$closure$u7d$$u7d$17h6576c4fcc48ae6baE.exit.i.i.i.i", %bb.ba
  %i.ms = phi i64 [ %i.mo, %bb.ba ], [ %i.ld, %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$24find_or_find_insert_slot28_$u7b$$u7b$closure$u7d$$u7d$17h6576c4fcc48ae6baE.exit.i.i.i.i" ]
  %i.mt = getelementptr inbounds [24 x i8], ptr %.val.i.i.i.i, i64 %i.ms
  %i.mu = trunc i64 %i.hs to i32                  ; 2 uses
  %.sroa.5.0..sroa_idx.i.i.i = getelementptr inbounds i8, ptr %i.mt, i64 -8
  store i32 %i.mu, ptr %.sroa.5.0..sroa_idx.i.i.i, align 8, !noalias !34
  br label %"_ZN18nickel_lang_parser10identifier8interner104_$LT$impl$u20$nickel_lang_parser..identifier..interner..ouroboros_impl_inner_interner..InnerInterner$GT$13get_or_intern17hd50897247145c0e6E.exit"

bb.bc:                                            ; preds = %bb.au, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17hff792cad37bf0077E.exit.i.i", %bb.at, %bb.as, %bb.aq, %bb.m, %bb.l
  %i.mv = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.o, %.body.i.i, %bb.bc
  %eh.lpad-body = phi { ptr, i32 } [ %i.mv, %bb.bc ], [ %i.dx, %bb.o ], [ %eh.lpad-body.i.i, %.body.i.i ]
  invoke fastcc void @"_ZN4core3ptr158drop_in_place$LT$std..sync..poison..rwlock..RwLockWriteGuard$LT$nickel_lang_parser..identifier..interner..ouroboros_impl_inner_interner..InnerInterner$GT$$GT$17ha89b6073acf0ed19E"(ptr nonnull @_ZN18nickel_lang_parser10identifier8INTERNER17hc0447100e2e2068fE, i8 %.sroa.01.0.i.i) #61
          to label %common.resume unwind label %bb.bh

"_ZN18nickel_lang_parser10identifier8interner104_$LT$impl$u20$nickel_lang_parser..identifier..interner..ouroboros_impl_inner_interner..InnerInterner$GT$13get_or_intern17hd50897247145c0e6E.exit": ; preds = %"_ZN18nickel_lang_parser10identifier8interner104_$LT$impl$u20$nickel_lang_parser..identifier..interner..ouroboros_impl_inner_interner..InnerInterner$GT$6intern17h4b97c6fce10ab433E.exit.i", %"_ZN9hashbrown3map28HashMap$LT$K$C$V$C$S$C$A$GT$9get_inner17he3c805a375f84ff8E.exit.i"
  %.sroa.0.0.i = phi i32 [ %i.dk, %"_ZN9hashbrown3map28HashMap$LT$K$C$V$C$S$C$A$GT$9get_inner17he3c805a375f84ff8E.exit.i" ], [ %i.mu, %"_ZN18nickel_lang_parser10identifier8interner104_$LT$impl$u20$nickel_lang_parser..identifier..interner..ouroboros_impl_inner_interner..InnerInterner$GT$6intern17h4b97c6fce10ab433E.exit.i" ]
  br i1 %i.t, label %_ZN3std4sync6poison4Flag4done17h723d8023d05917a8E.exit.i.i, label %bb.bd

bb.bd:                                            ; preds = %"_ZN18nickel_lang_parser10identifier8interner104_$LT$impl$u20$nickel_lang_parser..identifier..interner..ouroboros_impl_inner_interner..InnerInterner$GT$13get_or_intern17hd50897247145c0e6E.exit"
  %i.mw = load atomic i64, ptr @_ZN3std9panicking11panic_count18GLOBAL_PANIC_COUNT17h933148eac7c069a2E monotonic, align 8
  %i.mx = and i64 %i.mw, 9223372036854775807
  %i.my = icmp eq i64 %i.mx, 0
  br i1 %i.my, label %_ZN3std4sync6poison4Flag4done17h723d8023d05917a8E.exit.i.i, label %bb.be, !prof !40

bb.be:                                            ; preds = %bb.bd
  %i.mz = tail call noundef zeroext i1 @_ZN3std9panicking11panic_count17is_zero_slow_path17hca8cf3adadc2c48aE()
  br i1 %i.mz, label %_ZN3std4sync6poison4Flag4done17h723d8023d05917a8E.exit.i.i, label %bb.bf

bb.bf:                                            ; preds = %bb.be
  store atomic i8 1, ptr getelementptr inbounds nuw (i8, ptr @_ZN18nickel_lang_parser10identifier8INTERNER17hc0447100e2e2068fE, i64 8) monotonic, align 8
  br label %_ZN3std4sync6poison4Flag4done17h723d8023d05917a8E.exit.i.i

_ZN3std4sync6poison4Flag4done17h723d8023d05917a8E.exit.i.i: ; preds = %bb.bf, %bb.be, %bb.bd, %"_ZN18nickel_lang_parser10identifier8interner104_$LT$impl$u20$nickel_lang_parser..identifier..interner..ouroboros_impl_inner_interner..InnerInterner$GT$13get_or_intern17hd50897247145c0e6E.exit"
  %i.na = atomicrmw sub ptr @_ZN18nickel_lang_parser10identifier8INTERNER17hc0447100e2e2068fE, i32 1073741823 release, align 4
  %i.nb = add i32 %i.na, -1073741823              ; 2 uses
  %or.cond.i.i = icmp ult i32 %i.nb, 1073741824
  br i1 %or.cond.i.i, label %"_ZN4core3ptr158drop_in_place$LT$std..sync..poison..rwlock..RwLockWriteGuard$LT$nickel_lang_parser..identifier..interner..ouroboros_impl_inner_interner..InnerInterner$GT$$GT$17ha89b6073acf0ed19E.exit", label %bb.bg, !prof !77

bb.bg:                                            ; preds = %_ZN3std4sync6poison4Flag4done17h723d8023d05917a8E.exit.i.i
  tail call void @_ZN3std3sys4sync6rwlock5futex6RwLock22wake_writer_or_readers17h996aee56cbf483f2E(ptr noundef nonnull align 4 @_ZN18nickel_lang_parser10identifier8INTERNER17hc0447100e2e2068fE, i32 noundef %i.nb)
  br label %"_ZN4core3ptr158drop_in_place$LT$std..sync..poison..rwlock..RwLockWriteGuard$LT$nickel_lang_parser..identifier..interner..ouroboros_impl_inner_interner..InnerInterner$GT$$GT$17ha89b6073acf0ed19E.exit"

"_ZN4core3ptr158drop_in_place$LT$std..sync..poison..rwlock..RwLockWriteGuard$LT$nickel_lang_parser..identifier..interner..ouroboros_impl_inner_interner..InnerInterner$GT$$GT$17ha89b6073acf0ed19E.exit": ; preds = %_ZN3std4sync6poison4Flag4done17h723d8023d05917a8E.exit.i.i, %bb.bg
  ret i32 %.sroa.0.0.i

bb.bh:                                            ; preds = %.body
  %i.nc = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #60
  unreachable
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @"_ZN18nickel_lang_parser11environment24Environment$LT$K$C$V$GT$11set_current17h96ef12db57318b3dE"(ptr noalias noundef nonnull align 8 dereferenceable(16) %0, ptr noalias noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(48) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 16 uses
  %i.b = alloca [64 x i8], align 8                ; 6 uses
  %i.c = alloca [8 x i8], align 8                 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i64 1, ptr %i.b, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 1, ptr %i.d, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.e, ptr noundef nonnull align 8 dereferenceable(48) %1, i64 48, i1 false)
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #53, !noalias !32296
  %i.f = tail call noundef align 8 dereferenceable_or_null(64) ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef 64, i64 noundef range(i64 1, -9223372036854775807) 8) #53, !noalias !32296 ; 3 uses
  %i.g = icmp eq ptr %i.f, null
  br i1 %i.g, label %bb.b, label %"_ZN5alloc5boxed12Box$LT$T$GT$3new17ha11d2b74f442ba13E.exit", !prof !45

bb.b:                                             ; preds = %bb.a
  invoke void @_ZN5alloc5alloc18handle_alloc_error17h8f86e24af4223f3dE(i64 noundef 8, i64 noundef 64) #59
          to label %.noexc unwind label %bb.c

.noexc:                                           ; preds = %bb.b
  unreachable

bb.c:                                             ; preds = %bb.b
  %i.h = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr147drop_in_place$LT$std..collections..hash..map..HashMap$LT$nickel_lang_parser..identifier..Ident$C$nickel_lang_core..eval..cache..lazy..Thunk$GT$$GT$17h8ba2756bef48cca3E"(ptr noalias noundef readonly align 8 dereferenceable(48) %i.e)
          to label %common.resume unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.i = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #60
  unreachable

common.resume:                                    ; preds = %bb.r, %bb.l, %bb.c, %bb.p
  %common.resume.op = phi { ptr, i32 } [ %i.ah, %bb.p ], [ %i.h, %bb.c ], [ %i.aa, %bb.l ], [ %i.an, %bb.r ]
  resume { ptr, i32 } %common.resume.op

"_ZN5alloc5boxed12Box$LT$T$GT$3new17ha11d2b74f442ba13E.exit": ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.f, ptr noundef nonnull align 8 dereferenceable(64) %i.b, i64 64, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.j = load ptr, ptr %0, align 8, !nonnull !34, !noundef !34 ; 6 uses
  store ptr %i.j, ptr %i.c, align 8
  store ptr %i.f, ptr %0, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 40
  %i.l = load i64, ptr %i.k, align 8, !noundef !34
  %i.m = icmp eq i64 %i.l, 0
  br i1 %i.m, label %bb.f, label %bb.e

bb.e:                                             ; preds = %"_ZN5alloc5boxed12Box$LT$T$GT$3new17ha11d2b74f442ba13E.exit"
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 8 uses
  %i.o = load ptr, ptr %i.n, align 8, !noundef !34 ; 4 uses
  %.not = icmp eq ptr %i.o, null
  br i1 %.not, label %bb.j, label %bb.h

bb.f:                                             ; preds = %"_ZN5alloc5boxed12Box$LT$T$GT$3new17ha11d2b74f442ba13E.exit"
  %i.p = load i64, ptr %i.j, align 8, !noalias !32297, !noundef !34
  %i.q = add i64 %i.p, -1                         ; 2 uses
  store i64 %i.q, ptr %i.j, align 8, !noalias !32297
  %i.r = icmp eq i64 %i.q, 0
end_hunk_4
begin_hunk_5_@"_ZN6nickel7doctest17doctest_transform28_$u7b$$u7b$closure$u7d$$u7d$17hc7dcccbb1fe48313E":bb.a
  %i.kk = load ptr, ptr %i.co, align 8, !alias.scope !58402, !nonnull !34, !noundef !34 ; 2 uses
  %i.kl = load i64, ptr %i.kk, align 8, !noalias !58402, !noundef !34
  %i.km = add i64 %i.kl, -1                       ; 2 uses
  store i64 %i.km, ptr %i.kk, align 8, !noalias !58402
  %i.kn = icmp eq i64 %i.km, 0
  br i1 %i.kn, label %bb.cy, label %"_ZN4core3ptr69drop_in_place$LT$alloc..rc..Rc$LT$nickel_lang_core..typ..Type$GT$$GT$17h265ec031499308fbE.exit200"

bb.cy:                                            ; preds = %bb.cx
  invoke void @"_ZN5alloc2rc15Rc$LT$T$C$A$GT$9drop_slow17hc1334db6af4865e7E"(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.co)
          to label %"_ZN4core3ptr69drop_in_place$LT$alloc..rc..Rc$LT$nickel_lang_core..typ..Type$GT$$GT$17h265ec031499308fbE.exit200" unwind label %.thread397

"_ZN4core3ptr69drop_in_place$LT$alloc..rc..Rc$LT$nickel_lang_core..typ..Type$GT$$GT$17h265ec031499308fbE.exit198": ; preds = %bb.cg
  br i1 %.sroa.053.0, label %bb.da, label %.thread390

.thread397:                                       ; preds = %bb.cy
  %i.ko = landingpad { ptr, i32 }
          cleanup
  br label %.thread390

"_ZN4core3ptr69drop_in_place$LT$alloc..rc..Rc$LT$nickel_lang_core..typ..Type$GT$$GT$17h265ec031499308fbE.exit200": ; preds = %bb.cx, %bb.cy
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ag)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.am)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ar)
  br label %bb.bm

bb.cz:                                            ; preds = %bb.cj
  unreachable

bb.da:                                            ; preds = %"_ZN4core3ptr69drop_in_place$LT$alloc..rc..Rc$LT$nickel_lang_core..typ..Type$GT$$GT$17h265ec031499308fbE.exit198"
  invoke void @"_ZN4core3ptr226drop_in_place$LT$nickel_lang_parser..typ..TypeF$LT$alloc..boxed..Box$LT$nickel_lang_core..typ..Type$GT$$C$nickel_lang_core..typ..RecordRows$C$nickel_lang_core..typ..EnumRows$C$nickel_lang_core..eval..value..NickelValue$GT$$GT$17hbdcea2f241fad709E"(ptr noalias noundef nonnull readonly align 8 dereferenceable(104) %i.am)
          to label %.thread390 unwind label %bb.x, !inline_history !0

.thread349:                                       ; preds = %bb.cd, %bb.by, %.thread360
  %eh.lpad-body185352 = phi { ptr, i32 } [ %i.jc, %bb.by ], [ %lpad.thr_comm358, %.thread360 ], [ %i.jk, %bb.cd ]
  invoke void @"_ZN4core3ptr63drop_in_place$LT$nickel_lang_core..eval..value..NickelValue$GT$17h2043370c4e326e18E"(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.ar) #61
          to label %.thread390 unwind label %bb.x

.lr.ph.i.i.i205.preheader:                        ; preds = %bb.bj, %bb.bo, %"_ZN4core3ptr64drop_in_place$LT$nickel_lang_core..eval..value..ValueBlockRc$GT$17h1496bbc7960f880bE.exit.i.i"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.at)
  call void @llvm.experimental.noalias.scope.decl(metadata !58403)
  call void @llvm.experimental.noalias.scope.decl(metadata !58404)
  br label %.lr.ph.i.i.i205

.lr.ph.i.i.i205:                                  ; preds = %.lr.ph.i.i.i205.preheader, %"_ZN4core3ptr45drop_in_place$LT$nickel..doctest..DocTest$GT$17h74316b2ce9d9783aE.exit.i.i.i214"
  %.sroa.0.07.i.i.i206 = phi i64 [ %i.kq, %"_ZN4core3ptr45drop_in_place$LT$nickel..doctest..DocTest$GT$17h74316b2ce9d9783aE.exit.i.i.i214" ], [ 0, %.lr.ph.i.i.i205.preheader ] ; 2 uses
  %i.kp = getelementptr inbounds nuw [56 x i8], ptr %i.gw, i64 %.sroa.0.07.i.i.i206 ; 6 uses
  %i.kq = add nuw i64 %.sroa.0.07.i.i.i206, 1     ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !58405)
  %i.kr = getelementptr inbounds nuw i8, ptr %i.kp, i64 32
  call void @llvm.experimental.noalias.scope.decl(metadata !58406)
  call void @llvm.experimental.noalias.scope.decl(metadata !58407)
  %.val.i.i.i.i.i.i207 = load i64, ptr %i.kr, align 8, !range !42, !alias.scope !58408, !noalias !58403, !noundef !34 ; 2 uses
  %i.ks = icmp eq i64 %.val.i.i.i.i.i.i207, 0
  br i1 %i.ks, label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17hfedeefc8cce81a05E.exit.i.i.i.i209", label %bb.db

bb.db:                                            ; preds = %.lr.ph.i.i.i205
  %i.kt = getelementptr inbounds nuw i8, ptr %i.kp, i64 40
  %.val1.i.i.i.i.i.i208 = load ptr, ptr %i.kt, align 8, !alias.scope !58408, !noalias !58403, !nonnull !34, !noundef !34
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i.i.i.i208, i64 noundef %.val.i.i.i.i.i.i207, i64 noundef range(i64 1, -9223372036854775807) 1) #53, !noalias !58409
  br label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17hfedeefc8cce81a05E.exit.i.i.i.i209"

"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17hfedeefc8cce81a05E.exit.i.i.i.i209": ; preds = %bb.db, %.lr.ph.i.i.i205
  call void @llvm.experimental.noalias.scope.decl(metadata !58410)
  %i.ku = load i64, ptr %i.kp, align 8, !range !63, !alias.scope !58411, !noalias !58403, !noundef !34
  switch i64 %i.ku, label %"_ZN4core3ptr45drop_in_place$LT$nickel..doctest..DocTest$GT$17h74316b2ce9d9783aE.exit.i.i.i214" [
    i64 0, label %bb.dc
    i64 1, label %bb.dd
  ]

"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17hfedeefc8cce81a05E.exit.sink.split.i.i.i.i.i211": ; preds = %bb.dd, %bb.dc
  %.val.i.i1.sink.i.i.i.i.i212 = phi i64 [ %.val.i.i.i.i.i.i.i217, %bb.dc ], [ %.val.i.i1.i.i.i.i.i210, %bb.dd ]
  %i.kv = getelementptr inbounds nuw i8, ptr %i.kp, i64 16
  %.val1.i.i2.i.i.i.i.i213 = load ptr, ptr %i.kv, align 8, !alias.scope !58411, !noalias !58403, !nonnull !34, !noundef !34
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i2.i.i.i.i.i213, i64 noundef %.val.i.i1.sink.i.i.i.i.i212, i64 noundef range(i64 1, -9223372036854775807) 1) #53, !noalias !58412
  br label %"_ZN4core3ptr45drop_in_place$LT$nickel..doctest..DocTest$GT$17h74316b2ce9d9783aE.exit.i.i.i214"

bb.dc:                                            ; preds = %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17hfedeefc8cce81a05E.exit.i.i.i.i209"
  %i.kw = getelementptr inbounds nuw i8, ptr %i.kp, i64 8
  %.val.i.i.i.i.i.i.i217 = load i64, ptr %i.kw, align 8, !range !42, !alias.scope !58413, !noalias !58403, !noundef !34 ; 2 uses
  %i.kx = icmp eq i64 %.val.i.i.i.i.i.i.i217, 0
  br i1 %i.kx, label %"_ZN4core3ptr45drop_in_place$LT$nickel..doctest..DocTest$GT$17h74316b2ce9d9783aE.exit.i.i.i214", label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17hfedeefc8cce81a05E.exit.sink.split.i.i.i.i.i211"

bb.dd:                                            ; preds = %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17hfedeefc8cce81a05E.exit.i.i.i.i209"
  %i.ky = getelementptr inbounds nuw i8, ptr %i.kp, i64 8
  %.val.i.i1.i.i.i.i.i210 = load i64, ptr %i.ky, align 8, !range !42, !alias.scope !58414, !noalias !58403, !noundef !34 ; 2 uses
  %i.kz = icmp eq i64 %.val.i.i1.i.i.i.i.i210, 0
  br i1 %i.kz, label %"_ZN4core3ptr45drop_in_place$LT$nickel..doctest..DocTest$GT$17h74316b2ce9d9783aE.exit.i.i.i214", label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17hfedeefc8cce81a05E.exit.sink.split.i.i.i.i.i211"

"_ZN4core3ptr45drop_in_place$LT$nickel..doctest..DocTest$GT$17h74316b2ce9d9783aE.exit.i.i.i214": ; preds = %bb.dd, %bb.dc, %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17hfedeefc8cce81a05E.exit.sink.split.i.i.i.i.i211", %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17hfedeefc8cce81a05E.exit.i.i.i.i209"
  %i.la = icmp eq i64 %i.kq, %i.gx
  br i1 %i.la, label %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h03e92e9b39c98c09E.exit.i215", label %.lr.ph.i.i.i205

"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h03e92e9b39c98c09E.exit.i215": ; preds = %"_ZN4core3ptr45drop_in_place$LT$nickel..doctest..DocTest$GT$17h74316b2ce9d9783aE.exit.i.i.i214"
  %.val.i216 = load i64, ptr %i.av, align 8, !range !42, !alias.scope !58403, !noundef !34 ; 2 uses
  %i.lb = icmp eq i64 %.val.i216, 0
  br i1 %i.lb, label %"_ZN4core3ptr68drop_in_place$LT$alloc..vec..Vec$LT$nickel..doctest..DocTest$GT$$GT$17h42ff88e944120db6E.exit218", label %bb.de

bb.de:                                            ; preds = %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h03e92e9b39c98c09E.exit.i215"
  %i.lc = mul nuw i64 %.val.i216, 56
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.gw, i64 noundef %i.lc, i64 noundef range(i64 1, -9223372036854775807) 8) #53, !noalias !58403
  br label %"_ZN4core3ptr68drop_in_place$LT$alloc..vec..Vec$LT$nickel..doctest..DocTest$GT$$GT$17h42ff88e944120db6E.exit218"

bb.df:                                            ; preds = %bb.bm
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %.sroa.4127.0..sroa_idx, ptr noundef nonnull align 4 dereferenceable(20) %i.ad, i64 20, i1 false)
  store ptr %.sroa.713.0245, ptr %i.cp, align 8
  store i64 -9223372036854775763, ptr %i.ae, align 8
  %i.ld = invoke noundef nonnull ptr @"_ZN118_$LT$nickel_lang_core..eval..value..NickelValue$u20$as$u20$core..convert..From$LT$nickel_lang_core..term..Term$GT$$GT$4from17h1fb3531f2197356dE"(ptr noalias noundef nonnull align 8 captures(address) dereferenceable(56) %i.ae)
          to label %bb.dg unwind label %.split    ; 3 uses

bb.dg:                                            ; preds = %bb.df
  store ptr %i.ld, ptr %i.af, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ae)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ac)
  invoke void @_ZN18nickel_lang_parser10identifier8LocIdent5fresh17h6dfd5726b7e767edE(ptr noalias noundef nonnull sret([20 x i8]) align 4 captures(address) dereferenceable(20) %i.ac)
          to label %bb.di unwind label %bb.dh

bb.dh:                                            ; preds = %bb.dj, %bb.dg
  %i.le = landingpad { ptr, i32 }
          cleanup
  br label %bb.ea

bb.di:                                            ; preds = %bb.dg
  %i.lf = load i32, ptr %i.cq, align 4, !noundef !34 ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ac)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ab)
  call void @llvm.experimental.noalias.scope.decl(metadata !58415)
  call void @llvm.experimental.noalias.scope.decl(metadata !58416)
  %i.lg = load i64, ptr %.sroa.0243.0649, align 8, !range !63, !alias.scope !58416, !noalias !58415, !noundef !34
  %i.lh = icmp eq i64 %i.lg, 1
  br i1 %i.lh, label %bb.dj, label %bb.dk

bb.dj:                                            ; preds = %bb.di
  %i.li = getelementptr inbounds nuw i8, ptr %.sroa.0243.0649, i64 8
  invoke void @"_ZN60_$LT$alloc..string..String$u20$as$u20$core..clone..Clone$GT$5clone17h123bb51dd192bfa5E"(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.ab, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.li, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @963)
          to label %_ZN6nickel7doctest8Expected5error17h86dd43c5579e8260E.exitthread-pre-split unwind label %bb.dh

bb.dk:                                            ; preds = %bb.di
  store i64 -9223372036854775808, ptr %i.ab, align 8, !alias.scope !58415, !noalias !58416
  br label %_ZN6nickel7doctest8Expected5error17h86dd43c5579e8260E.exit

_ZN6nickel7doctest8Expected5error17h86dd43c5579e8260E.exitthread-pre-split: ; preds = %bb.dj
  %.sroa.0253.0.copyload255.pr = load i64, ptr %i.ab, align 8
  br label %_ZN6nickel7doctest8Expected5error17h86dd43c5579e8260E.exit

_ZN6nickel7doctest8Expected5error17h86dd43c5579e8260E.exit: ; preds = %_ZN6nickel7doctest8Expected5error17h86dd43c5579e8260E.exitthread-pre-split, %bb.dk
  %.sroa.0253.0.copyload255 = phi i64 [ %.sroa.0253.0.copyload255.pr, %_ZN6nickel7doctest8Expected5error17h86dd43c5579e8260E.exitthread-pre-split ], [ -9223372036854775808, %bb.dk ] ; 4 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %.sroa.6266, ptr noundef nonnull align 8 dereferenceable(20) %i.cz, i64 20, i1 false)
  %.sroa.4256.0.copyload259 = load ptr, ptr %.sroa.4256.0..sroa_idx258, align 8 ; 4 uses
  %.sroa.5260.0.copyload263 = load i64, ptr %.sroa.5260.0..sroa_idx262, align 8 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab)
  call void @llvm.experimental.noalias.scope.decl(metadata !58417)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i32 %i.lf, ptr %i.b, align 4, !noalias !58418
  %.val.i220 = load i64, ptr %i.ct, align 8, !alias.scope !58417, !noalias !58419, !noundef !34
  %.val7.i = load i64, ptr %i.cu, align 8, !alias.scope !58417, !noalias !58419, !noundef !34
  %i.lj = call fastcc noundef i64 @_ZN4core4hash11BuildHasher8hash_one17h2c3c047f98ecaf7dE(i64 %.val.i220, i64 %.val7.i, ptr noalias noundef readonly align 4 captures(address, read_provenance) dereferenceable(4) %i.b), !noalias !58418 ; 2 uses
  %i.lk = load i64, ptr %i.cv, align 8, !alias.scope !58420, !noalias !58421, !noundef !34
  %i.ll = icmp eq i64 %i.lk, 0
  br i1 %i.ll, label %bb.dl, label %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$7reserve17he67efc35658d9f8fE.exit.i.i", !prof !37

bb.dl:                                            ; preds = %_ZN6nickel7doctest8Expected5error17h86dd43c5579e8260E.exit
  %i.lm = invoke fastcc i64 @"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$14reserve_rehash17h41143d09fcacfa01E"(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.cs, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.ct)
          to label %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$7reserve17he67efc35658d9f8fE.exit.i.i" unwind label %bb.ds ; 0 uses

"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$7reserve17he67efc35658d9f8fE.exit.i.i": ; preds = %bb.dl, %_ZN6nickel7doctest8Expected5error17h86dd43c5579e8260E.exit
  %.val.i.i = load ptr, ptr %i.cs, align 8, !alias.scope !58422, !noalias !58423, !nonnull !34, !noundef !34 ; 8 uses
  %.val7.i.i = load i64, ptr %i.cw, align 8, !alias.scope !58422, !noalias !58423, !noundef !34 ; 4 uses
  %i.ln = lshr i64 %i.lj, 57
  %i.lo = trunc nuw nsw i64 %i.ln to i8           ; 3 uses
  %.sroa.0.0.vec.insert.i.i.i.i = insertelement <16 x i8> poison, i8 %i.lo, i64 0
  %.sroa.0.15.vec.insert.i.i.i.i = shufflevector <16 x i8> %.sroa.0.0.vec.insert.i.i.i.i, <16 x i8> poison, <16 x i32> zeroinitializer
  br label %bb.dm

bb.dm:                                            ; preds = %bb.dp, %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$7reserve17he67efc35658d9f8fE.exit.i.i"
  %.pn.i.i.i = phi i64 [ %i.lj, %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$7reserve17he67efc35658d9f8fE.exit.i.i" ], [ %i.mn, %bb.dp ]
  %.sroa.6.0.i.i.i = phi i64 [ undef, %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$7reserve17he67efc35658d9f8fE.exit.i.i" ], [ %.sroa.6.120.i.i.i, %bb.dp ]
  %.sroa.01.0.i.i.i = phi i64 [ 0, %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$7reserve17he67efc35658d9f8fE.exit.i.i" ], [ %.sroa.01.122.i.i.i, %bb.dp ]
  %i.lp = phi i64 [ 0, %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$7reserve17he67efc35658d9f8fE.exit.i.i" ], [ %i.mm, %bb.dp ]
  %.sroa.0.017.i.i.i = and i64 %.pn.i.i.i, %.val7.i.i ; 4 uses
  %i.lq = getelementptr inbounds nuw i8, ptr %.val.i.i, i64 %.sroa.0.017.i.i.i
  %.sroa.0.0.copyload.i24.i.i.i = load <16 x i8>, ptr %i.lq, align 1, !noalias !58424 ; 3 uses
  %i.lr = icmp eq <16 x i8> %.sroa.0.0.copyload.i24.i.i.i, %.sroa.0.15.vec.insert.i.i.i.i
  %i.ls = bitcast <16 x i1> %i.lr to i16          ; 2 uses
  %.not25.i.i.i = icmp eq i16 %i.ls, 0
  br i1 %.not25.i.i.i, label %._crit_edge.i.i.i, label %.lr.ph.i.i.i221

.lr.ph.i.i.i221:                                  ; preds = %bb.dm, %bb.dn
  %.sroa.05.026.i.i.i = phi i16 [ %i.mc, %bb.dn ], [ %i.ls, %bb.dm ] ; 3 uses
  %i.lt = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.05.026.i.i.i, i1 true)
  %i.lu = zext nneg i16 %i.lt to i64
  %i.lv = add i64 %.sroa.0.017.i.i.i, %i.lu
  %i.lw = and i64 %i.lv, %.val7.i.i
  %i.lx = sub nsw i64 0, %i.lw
  %i.ly = getelementptr inbounds [64 x i8], ptr %.val.i.i, i64 %i.lx ; 6 uses
  %i.lz = getelementptr inbounds i8, ptr %i.ly, i64 -64
  %.val3.i.i.i = load i32, ptr %i.lz, align 4, !noalias !58425, !noundef !34
  %i.ma = icmp eq i32 %i.lf, %.val3.i.i.i
  br i1 %i.ma, label %bb.du, label %bb.dn, !prof !40

._crit_edge.i.i.i:                                ; preds = %bb.dn, %bb.dm
  %.not13.i.i.i = icmp eq i64 %.sroa.01.0.i.i.i, 0
  br i1 %.not13.i.i.i, label %bb.do, label %.thread.i.i.i, !prof !40

bb.dn:                                            ; preds = %.lr.ph.i.i.i221
  %i.mb = add i16 %.sroa.05.026.i.i.i, -1
  %i.mc = and i16 %i.mb, %.sroa.05.026.i.i.i      ; 2 uses
  %.not.i.i.i = icmp eq i16 %i.mc, 0
  br i1 %.not.i.i.i, label %._crit_edge.i.i.i, label %.lr.ph.i.i.i221

bb.do:                                            ; preds = %._crit_edge.i.i.i
  %i.md = icmp slt <16 x i8> %.sroa.0.0.copyload.i24.i.i.i, zeroinitializer
  %i.me = bitcast <16 x i1> %i.md to i16          ; 2 uses
  %.not.not.i.not.i.i.i = icmp eq i16 %i.me, 0    ; 2 uses
  %i.mf = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.me, i1 true)
  %i.mg = zext nneg i16 %i.mf to i64
  %.sroa.6.0.i.i.i.i = select i1 %.not.not.i.not.i.i.i, i64 undef, i64 %i.mg
  %i.mh = add i64 %.sroa.6.0.i.i.i.i, %.sroa.0.017.i.i.i
  %i.mi = and i64 %i.mh, %.val7.i.i
  br i1 %.not.not.i.not.i.i.i, label %bb.dp, label %.thread.i.i.i

.thread.i.i.i:                                    ; preds = %bb.do, %._crit_edge.i.i.i
  %.sroa.6.121.i.i.i = phi i64 [ %i.mi, %bb.do ], [ %.sroa.6.0.i.i.i, %._crit_edge.i.i.i ] ; 3 uses
  %i.mj = icmp eq <16 x i8> %.sroa.0.0.copyload.i24.i.i.i, splat (i8 -1)
  %i.mk = bitcast <16 x i1> %i.mj to i16
  %i.ml = icmp eq i16 %i.mk, 0
  br i1 %i.ml, label %bb.dp, label %bb.dq, !prof !37

bb.dp:                                            ; preds = %.thread.i.i.i, %bb.do
  %.sroa.01.122.i.i.i = phi i64 [ 1, %.thread.i.i.i ], [ 0, %bb.do ]
  %.sroa.6.120.i.i.i = phi i64 [ %.sroa.6.121.i.i.i, %.thread.i.i.i ], [ undef, %bb.do ]
  %i.mm = add i64 %i.lp, 16                       ; 2 uses
  %i.mn = add i64 %i.mm, %.sroa.0.017.i.i.i
  br label %bb.dm

bb.dq:                                            ; preds = %.thread.i.i.i
  %i.mo = getelementptr inbounds nuw i8, ptr %.val.i.i, i64 %.sroa.6.121.i.i.i
  %i.mp = load i8, ptr %i.mo, align 1, !noalias !58426, !noundef !34 ; 2 uses
  %i.mq = icmp sgt i8 %i.mp, -1
  br i1 %i.mq, label %bb.dr, label %.thread372, !prof !37

bb.dr:                                            ; preds = %bb.dq
  %.val2.i.i.i.i = load <16 x i8>, ptr %.val.i.i, align 16, !noalias !58426
  %i.mr = icmp slt <16 x i8> %.val2.i.i.i.i, zeroinitializer
  %i.ms = bitcast <16 x i1> %i.mr to i16          ; 2 uses
  %i.mt = icmp ne i16 %i.ms, 0
  call void @llvm.assume(i1 %i.mt)
  %i.mu = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.ms, i1 true)
  %i.mv = zext nneg i16 %i.mu to i64              ; 2 uses
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %.val.i.i, i64 %i.mv
  %.pre.i = load i8, ptr %.phi.trans.insert.i, align 1, !noalias !58427
  br label %.thread372

.thread372:                                       ; preds = %bb.dq, %bb.dr
  %i.mw = phi i8 [ %.pre.i, %bb.dr ], [ %i.mp, %bb.dq ]
  %.sroa.3.0.i.ph.i.i = phi i64 [ %i.mv, %bb.dr ], [ %.sroa.6.121.i.i.i, %bb.dq ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !58428)
  %i.mx = getelementptr inbounds nuw i8, ptr %.val.i.i, i64 %.sroa.3.0.i.ph.i.i
  %i.my = and i8 %i.mw, 1
  %i.mz = zext nneg i8 %i.my to i64
  %i.na = add i64 %.sroa.3.0.i.ph.i.i, -16
  %i.nb = and i64 %i.na, %.val7.i.i
  store i8 %i.lo, ptr %i.mx, align 1, !noalias !58427
  %i.nc = getelementptr i8, ptr %.val.i.i, i64 %i.nb
  %i.nd = getelementptr i8, ptr %i.nc, i64 16
  store i8 %i.lo, ptr %i.nd, align 1, !noalias !58427
  %i.ne = load <2 x i64>, ptr %i.cv, align 8, !alias.scope !58429, !noalias !58430
  %i.nf = insertelement <2 x i64> <i64 poison, i64 -1>, i64 %i.mz, i64 0
  %i.ng = sub <2 x i64> %i.ne, %i.nf
  store <2 x i64> %i.ng, ptr %i.cv, align 8, !alias.scope !58429, !noalias !58430
  %i.nh = sub nsw i64 0, %.sroa.3.0.i.ph.i.i
  %i.ni = getelementptr inbounds [64 x i8], ptr %.val.i.i, i64 %i.nh ; 6 uses
  %i.nj = getelementptr inbounds i8, ptr %i.ni, i64 -64
  store i32 %i.lf, ptr %i.nj, align 8, !noalias !58431
  %.sroa.4.i.sroa.3.0..sroa.4.0..sroa_idx.i222.sroa_idx = getelementptr inbounds i8, ptr %i.ni, i64 -56
  store i64 %.sroa.0253.0.copyload255, ptr %.sroa.4.i.sroa.3.0..sroa.4.0..sroa_idx.i222.sroa_idx, align 8, !noalias !58431
  %.sroa.4.i.sroa.4.0..sroa.4.0..sroa_idx.i222.sroa_idx = getelementptr inbounds i8, ptr %i.ni, i64 -48
  store ptr %.sroa.4256.0.copyload259, ptr %.sroa.4.i.sroa.4.0..sroa.4.0..sroa_idx.i222.sroa_idx, align 8, !noalias !58431
  %.sroa.4.i.sroa.5.0..sroa.4.0..sroa_idx.i222.sroa_idx = getelementptr inbounds i8, ptr %i.ni, i64 -40
  store i64 %.sroa.5260.0.copyload263, ptr %.sroa.4.i.sroa.5.0..sroa.4.0..sroa_idx.i222.sroa_idx, align 8, !noalias !58431
  %.sroa.4.i.sroa.6.0..sroa.4.0..sroa_idx.i222.sroa_idx = getelementptr inbounds i8, ptr %i.ni, i64 -32
  store i64 %.sroa.8.0278648, ptr %.sroa.4.i.sroa.6.0..sroa.4.0..sroa_idx.i222.sroa_idx, align 8, !noalias !58431
  %.sroa.4.i.sroa.7.0..sroa.4.0..sroa_idx.i222.sroa_idx = getelementptr inbounds i8, ptr %i.ni, i64 -24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %.sroa.4.i.sroa.7.0..sroa.4.0..sroa_idx.i222.sroa_idx, ptr noundef nonnull align 8 dereferenceable(20) %.sroa.6266, i64 20, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %"_ZN4core3ptr75drop_in_place$LT$core..option..Option$LT$nickel..doctest..TestEntry$GT$$GT$17he4e1c202b4de4a07E.exit"

bb.ds:                                            ; preds = %bb.dl
  %i.nk = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %switch.i = icmp sgt i64 %.sroa.0253.0.copyload255, 0
  br i1 %switch.i, label %bb.dt, label %bb.ea

bb.dt:                                            ; preds = %bb.ds
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.4256.0.copyload259) ]
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.4256.0.copyload259, i64 noundef %.sroa.0253.0.copyload255, i64 noundef range(i64 1, -9223372036854775807) 1) #53, !noalias !58432
  br label %bb.ea

bb.du:                                            ; preds = %.lr.ph.i.i.i221
  %i.nl = getelementptr inbounds i8, ptr %i.ly, i64 -56 ; 2 uses
  %.sroa.0268.0.copyload = load i64, ptr %i.nl, align 8, !noalias !58433 ; 2 uses
  %.sroa.5269.0..sroa_idx = getelementptr inbounds i8, ptr %i.ly, i64 -48 ; 2 uses
  %.sroa.5269.0.copyload = load ptr, ptr %.sroa.5269.0..sroa_idx, align 8, !noalias !58433 ; 2 uses
  %.sroa.6270.0..sroa_idx = getelementptr inbounds i8, ptr %i.ly, i64 -40
  store i64 %.sroa.0253.0.copyload255, ptr %i.nl, align 8, !noalias !58434
  store ptr %.sroa.4256.0.copyload259, ptr %.sroa.5269.0..sroa_idx, align 8, !noalias !58434
  store i64 %.sroa.5260.0.copyload263, ptr %.sroa.6270.0..sroa_idx, align 8, !noalias !58434
  %.sroa.5264.0..sroa_idx = getelementptr inbounds i8, ptr %i.ly, i64 -32
  store i64 %.sroa.8.0278648, ptr %.sroa.5264.0..sroa_idx, align 8, !noalias !58434
  %.sroa.6266.0..sroa_idx = getelementptr inbounds i8, ptr %i.ly, i64 -24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %.sroa.6266.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(20) %.sroa.6266, i64 20, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  switch i64 %.sroa.0268.0.copyload, label %bb.dv [
    i64 -9223372036854775807, label %"_ZN4core3ptr75drop_in_place$LT$core..option..Option$LT$nickel..doctest..TestEntry$GT$$GT$17he4e1c202b4de4a07E.exit"
    i64 -9223372036854775808, label %"_ZN4core3ptr75drop_in_place$LT$core..option..Option$LT$nickel..doctest..TestEntry$GT$$GT$17he4e1c202b4de4a07E.exit"
    i64 0, label %"_ZN4core3ptr75drop_in_place$LT$core..option..Option$LT$nickel..doctest..TestEntry$GT$$GT$17he4e1c202b4de4a07E.exit"
  ]

bb.dv:                                            ; preds = %bb.du
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.5269.0.copyload) ]
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.5269.0.copyload, i64 noundef %.sroa.0268.0.copyload, i64 noundef range(i64 1, -9223372036854775807) 1) #53, !noalias !58435
  br label %"_ZN4core3ptr75drop_in_place$LT$core..option..Option$LT$nickel..doctest..TestEntry$GT$$GT$17he4e1c202b4de4a07E.exit"

"_ZN4core3ptr75drop_in_place$LT$core..option..Option$LT$nickel..doctest..TestEntry$GT$$GT$17he4e1c202b4de4a07E.exit": ; preds = %bb.dv, %bb.du, %bb.du, %bb.du, %.thread372
  call void @llvm.experimental.noalias.scope.decl(metadata !58436)
  %i.nm = load i64, ptr %i.az, align 8, !alias.scope !58436, !noundef !34 ; 3 uses
  %i.nn = load i64, ptr %i.ax, align 8, !range !42, !alias.scope !58436, !noundef !34
  %i.no = icmp eq i64 %i.nm, %i.nn
  br i1 %i.no, label %bb.dw, label %bb.dz

bb.dw:                                            ; preds = %"_ZN4core3ptr75drop_in_place$LT$core..option..Option$LT$nickel..doctest..TestEntry$GT$$GT$17he4e1c202b4de4a07E.exit"
  invoke fastcc void @"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$8grow_one17hd6088ecb6dc94fddE"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ax)
          to label %bb.dz unwind label %bb.dx

bb.dx:                                            ; preds = %bb.dw
  %i.np = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr111drop_in_place$LT$$LP$nickel_lang_parser..identifier..Ident$C$nickel_lang_core..eval..value..NickelValue$RP$$GT$17had255f657750177bE"(ptr nonnull %i.ld) #61
          to label %.thread331 unwind label %bb.dy, !noalias !58436

bb.dy:                                            ; preds = %bb.dx
  %i.nq = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #60, !noalias !58436
  unreachable

bb.dz:                                            ; preds = %bb.dw, %"_ZN4core3ptr75drop_in_place$LT$core..option..Option$LT$nickel..doctest..TestEntry$GT$$GT$17he4e1c202b4de4a07E.exit"
  %i.nr = load ptr, ptr %i.ay, align 8, !alias.scope !58436, !nonnull !34, !noundef !34
  %i.ns = getelementptr inbounds nuw [16 x i8], ptr %i.nr, i64 %i.nm ; 2 uses
  store i32 %i.lf, ptr %i.ns, align 8, !noalias !58436
  %i.nt = getelementptr inbounds nuw i8, ptr %i.ns, i64 8
  store ptr %i.ld, ptr %i.nt, align 8, !noalias !58436
  %i.nu = add i64 %i.nm, 1
  store i64 %i.nu, ptr %i.az, align 8, !alias.scope !58436
  call void @llvm.lifetime.end.p0(ptr nonnull %i.af)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.at)
  %i.nv = icmp eq ptr %i.ha, %i.gy
  br i1 %i.nv, label %._crit_edge, label %.lr.ph

bb.ea:                                            ; preds = %bb.dh, %bb.dt, %bb.ds
  %eh.lpad-body224.ph = phi { ptr, i32 } [ %i.le, %bb.dh ], [ %i.nk, %bb.dt ], [ %i.nk, %bb.ds ]
  invoke void @"_ZN4core3ptr63drop_in_place$LT$nickel_lang_core..eval..value..NickelValue$GT$17h2043370c4e326e18E"(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.af) #61
          to label %.thread331 unwind label %bb.x

.thread390:                                       ; preds = %bb.da, %"_ZN4core3ptr69drop_in_place$LT$alloc..rc..Rc$LT$nickel_lang_core..typ..Type$GT$$GT$17h265ec031499308fbE.exit198", %bb.bv, %.thread349, %.thread397, %.split.thread
  %.pn146.pn.pn.pn334 = phi { ptr, i32 } [ %lpad.thr_comm335, %.split.thread ], [ %.pn146, %bb.da ], [ %i.ko, %.thread397 ], [ %eh.lpad-body185352, %.thread349 ], [ %lpad.thr_comm.split-lp359, %bb.bv ], [ %.pn146, %"_ZN4core3ptr69drop_in_place$LT$alloc..rc..Rc$LT$nickel_lang_core..typ..Type$GT$$GT$17h265ec031499308fbE.exit198" ]
  invoke void @"_ZN4core3ptr63drop_in_place$LT$nickel_lang_core..eval..value..NickelValue$GT$17h2043370c4e326e18E"(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.at) #61
          to label %.thread331 unwind label %bb.x

"_ZN4core3ptr68drop_in_place$LT$alloc..vec..Vec$LT$nickel..doctest..DocTest$GT$$GT$17h42ff88e944120db6E.exit218": ; preds = %bb.de, %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h03e92e9b39c98c09E.exit.i215"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.av)
  call void @llvm.experimental.noalias.scope.decl(metadata !58437)
  call void @llvm.experimental.noalias.scope.decl(metadata !58438)
  call void @llvm.experimental.noalias.scope.decl(metadata !58439)
  call void @llvm.experimental.noalias.scope.decl(metadata !58440)
  call fastcc void @"_ZN4core3ptr121drop_in_place$LT$alloc..vec..Vec$LT$comrak..arena_tree..Node$LT$core..cell..RefCell$LT$comrak..nodes..Ast$GT$$GT$$GT$$GT$17h32d3707e0bb735feE"(ptr noalias noundef nonnull readonly align 8 dereferenceable(48) %.sroa.4.0..sroa_idx.i.i)
  call void @llvm.experimental.noalias.scope.decl(metadata !58441)
  %.val.i.i.i.i.i229 = load ptr, ptr %.sroa.4.sroa.7.0..sroa.4.0..sroa_idx.sroa_idx.i.i, align 8, !alias.scope !58442, !nonnull !34, !noundef !34 ; 2 uses
  %.val1.i.i.i.i.i230 = load i64, ptr %.sroa.4.sroa.8.0..sroa.4.0..sroa_idx.sroa_idx.i.i, align 8, !alias.scope !58442, !noundef !34 ; 2 uses
  %i.nw = icmp eq i64 %.val1.i.i.i.i.i230, 0
  br i1 %i.nw, label %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h89bcf4d902e93404E.exit.i.i.i.i.i233", label %.lr.ph.i.i.i.i.i.i.i231

.lr.ph.i.i.i.i.i.i.i231:                          ; preds = %"_ZN4core3ptr68drop_in_place$LT$alloc..vec..Vec$LT$nickel..doctest..DocTest$GT$$GT$17h42ff88e944120db6E.exit218", %.lr.ph.i.i.i.i.i.i.i231
  %.sroa.0.07.i.i.i.i.i.i.i232 = phi i64 [ %i.ny, %.lr.ph.i.i.i.i.i.i.i231 ], [ 0, %"_ZN4core3ptr68drop_in_place$LT$alloc..vec..Vec$LT$nickel..doctest..DocTest$GT$$GT$17h42ff88e944120db6E.exit218" ] ; 2 uses
  %i.nx = getelementptr inbounds nuw [24 x i8], ptr %.val.i.i.i.i.i229, i64 %.sroa.0.07.i.i.i.i.i.i.i232
  %i.ny = add nuw i64 %.sroa.0.07.i.i.i.i.i.i.i232, 1 ; 2 uses
  call fastcc void @"_ZN4core3ptr121drop_in_place$LT$alloc..vec..Vec$LT$comrak..arena_tree..Node$LT$core..cell..RefCell$LT$comrak..nodes..Ast$GT$$GT$$GT$$GT$17h32d3707e0bb735feE"(ptr noalias noundef readonly align 8 dereferenceable(24) %i.nx), !noalias !58442
  %i.nz = icmp eq i64 %i.ny, %.val1.i.i.i.i.i230
  br i1 %i.nz, label %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h89bcf4d902e93404E.exit.i.i.i.i.i233", label %.lr.ph.i.i.i.i.i.i.i231

"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h89bcf4d902e93404E.exit.i.i.i.i.i233": ; preds = %.lr.ph.i.i.i.i.i.i.i231, %"_ZN4core3ptr68drop_in_place$LT$alloc..vec..Vec$LT$nickel..doctest..DocTest$GT$$GT$17h42ff88e944120db6E.exit218"
  %.val2.i.i.i.i.i234 = load i64, ptr %i.cx, align 8, !range !42, !alias.scope !58442, !noundef !34 ; 2 uses
  %i.oa = icmp eq i64 %.val2.i.i.i.i.i234, 0
  br i1 %i.oa, label %"_ZN4core3ptr124drop_in_place$LT$typed_arena..Arena$LT$comrak..arena_tree..Node$LT$core..cell..RefCell$LT$comrak..nodes..Ast$GT$$GT$$GT$$GT$17h0ba540346d948dcaE.exit235", label %bb.eb

bb.eb:                                            ; preds = %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h89bcf4d902e93404E.exit.i.i.i.i.i233"
  %i.ob = mul nuw i64 %.val2.i.i.i.i.i234, 24
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i.i.i.i229, i64 noundef %i.ob, i64 noundef range(i64 1, -9223372036854775807) 8) #53, !noalias !58442
  br label %"_ZN4core3ptr124drop_in_place$LT$typed_arena..Arena$LT$comrak..arena_tree..Node$LT$core..cell..RefCell$LT$comrak..nodes..Ast$GT$$GT$$GT$$GT$17h0ba540346d948dcaE.exit235"

"_ZN4core3ptr124drop_in_place$LT$typed_arena..Arena$LT$comrak..arena_tree..Node$LT$core..cell..RefCell$LT$comrak..nodes..Ast$GT$$GT$$GT$$GT$17h0ba540346d948dcaE.exit235": ; preds = %bb.eb, %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h89bcf4d902e93404E.exit.i.i.i.i.i233"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aw)
  call void @llvm.experimental.noalias.scope.decl(metadata !58443)
end_hunk_5
begin_hunk_6_@_ZN8clap_lex7RawArgs6insert17h103f60e6c5c54677E:bb.a
bb.x:                                             ; preds = %"_ZN4core3ptr57drop_in_place$LT$$u5b$std..ffi..os_str..OsString$u5d$$GT$17h53425d6977c8a26bE.exit.i.i"
  %i.dl = getelementptr inbounds nuw i8, ptr %i.cn, i64 16 ; 2 uses
  %i.dm = load i64, ptr %i.dl, align 8, !noalias !66294, !noundef !34 ; 4 uses
  %i.dn = icmp ult i64 %i.dm, 384307168202282326
  tail call void @llvm.assume(i1 %i.dn)
  %i.do = load i64, ptr %.sroa.6.0..sroa_idx.i, align 8, !alias.scope !66294, !noundef !34 ; 2 uses
  %.not3.i.i19.i.i = icmp eq i64 %i.do, %i.dm
  br i1 %.not3.i.i19.i.i, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.z, %bb.x
  %i.dp = add i64 %i.dm, %i.dk
  store i64 %i.dp, ptr %i.dl, align 8, !noalias !66294
  br label %"_ZN4core3ptr79drop_in_place$LT$alloc..vec..drain..Drain$LT$std..ffi..os_str..OsString$GT$$GT$17h75999e89f4138195E.exit"

bb.z:                                             ; preds = %bb.x
  %i.dq = load ptr, ptr %i.da, align 8, !noalias !66294, !nonnull !34, !noundef !34 ; 2 uses
  %i.dr = getelementptr inbounds nuw [24 x i8], ptr %i.dq, i64 %i.do
  %i.ds = getelementptr inbounds nuw [24 x i8], ptr %i.dq, i64 %i.dm
  %i.dt = mul i64 %i.dk, 24
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.ds, ptr nonnull align 8 %i.dr, i64 %i.dt, i1 false), !noalias !66294
  br label %bb.y

"_ZN4core3ptr79drop_in_place$LT$alloc..vec..drain..Drain$LT$std..ffi..os_str..OsString$GT$$GT$17h75999e89f4138195E.exit": ; preds = %bb.r, %bb.t, %"_ZN4core3ptr57drop_in_place$LT$$u5b$std..ffi..os_str..OsString$u5d$$GT$17h53425d6977c8a26bE.exit.i.i", %bb.y
  resume { ptr, i32 } %eh.lpad-body.i

"_ZN81_$LT$alloc..vec..splice..Splice$LT$I$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h09ca54760be4338cE.exit.i": ; preds = %bb.g, %"_ZN4core3ptr86drop_in_place$LT$alloc..vec..into_iter..IntoIter$LT$std..ffi..os_str..OsString$GT$$GT$17h2fc2173efff7d604E.exit.i.i", %bb.b
  tail call void @llvm.experimental.noalias.scope.decl(metadata !66298)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !66299)
  %i.du = load ptr, ptr %i.c, align 8, !alias.scope !66300, !nonnull !34, !noundef !34 ; 2 uses
  %i.dv = load ptr, ptr %.sroa.4.0..sroa_idx.i, align 8, !alias.scope !66300, !nonnull !34, !noundef !34 ; 2 uses
  %i.dw = ptrtoint ptr %i.dv to i64
  %i.dx = ptrtoint ptr %i.du to i64               ; 2 uses
  %i.dy = sub nuw i64 %i.dw, %i.dx
  %i.dz = udiv exact i64 %i.dy, 24
  %i.ea = load ptr, ptr %.sroa.5.0..sroa_idx.i, align 8, !alias.scope !66300, !nonnull !34, !noundef !34 ; 4 uses
  %i.eb = icmp eq ptr %i.dv, %i.du
  br i1 %i.eb, label %bb.aa, label %bb.ae

bb.aa:                                            ; preds = %"_ZN81_$LT$alloc..vec..splice..Splice$LT$I$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h09ca54760be4338cE.exit.i"
  %i.ec = load i64, ptr %.sroa.7.0..sroa_idx.i, align 8, !alias.scope !66300, !noundef !34 ; 3 uses
  %.not.i.i.i.i.i = icmp eq i64 %i.ec, 0
  br i1 %.not.i.i.i.i.i, label %"_ZN4core3ptr270drop_in_place$LT$alloc..vec..splice..Splice$LT$core..iter..adapters..map..Map$LT$core..array..iter..IntoIter$LT$$RF$alloc..string..String$C$1_usize$GT$$C$$LT$$RF$alloc..string..String$u20$as$u20$core..convert..Into$LT$std..ffi..os_str..OsString$GT$$GT$..into$GT$$GT$$GT$17h90e1b0b28e1cf915E.exit", label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.ed = getelementptr inbounds nuw i8, ptr %i.ea, i64 16 ; 2 uses
  %i.ee = load i64, ptr %i.ed, align 8, !noalias !66300, !noundef !34 ; 4 uses
  %i.ef = icmp ult i64 %i.ee, 384307168202282326
  tail call void @llvm.assume(i1 %i.ef)
  %i.eg = load i64, ptr %.sroa.6.0..sroa_idx.i, align 8, !alias.scope !66300, !noundef !34 ; 2 uses
  %.not3.i.i.i.i.i = icmp eq i64 %i.eg, %i.ee
  br i1 %.not3.i.i.i.i.i, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %bb.ad, %bb.ab
  %i.eh = add i64 %i.ee, %i.ec
  store i64 %i.eh, ptr %i.ed, align 8, !noalias !66300
  br label %"_ZN4core3ptr270drop_in_place$LT$alloc..vec..splice..Splice$LT$core..iter..adapters..map..Map$LT$core..array..iter..IntoIter$LT$$RF$alloc..string..String$C$1_usize$GT$$C$$LT$$RF$alloc..string..String$u20$as$u20$core..convert..Into$LT$std..ffi..os_str..OsString$GT$$GT$..into$GT$$GT$$GT$17h90e1b0b28e1cf915E.exit"

bb.ad:                                            ; preds = %bb.ab
  %i.ei = getelementptr inbounds nuw i8, ptr %i.ea, i64 8
  %i.ej = load ptr, ptr %i.ei, align 8, !noalias !66300, !nonnull !34, !noundef !34 ; 2 uses
  %i.ek = getelementptr inbounds nuw [24 x i8], ptr %i.ej, i64 %i.eg
  %i.el = getelementptr inbounds nuw [24 x i8], ptr %i.ej, i64 %i.ee
  %i.em = mul i64 %i.ec, 24
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.el, ptr nonnull align 8 %i.ek, i64 %i.em, i1 false), !noalias !66300
  br label %bb.ac

bb.ae:                                            ; preds = %"_ZN81_$LT$alloc..vec..splice..Splice$LT$I$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h09ca54760be4338cE.exit.i"
  %i.en = getelementptr inbounds nuw i8, ptr %i.ea, i64 8 ; 2 uses
  %i.eo = load ptr, ptr %i.en, align 8, !noalias !66300, !nonnull !34, !noundef !34 ; 2 uses
  %i.ep = ptrtoint ptr %i.eo to i64
  %i.eq = sub nuw i64 %i.dx, %i.ep
  %i.er = getelementptr inbounds nuw i8, ptr %i.eo, i64 %i.eq
  tail call void @llvm.experimental.noalias.scope.decl(metadata !66301)
  br label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %"_ZN4core3ptr47drop_in_place$LT$std..ffi..os_str..OsString$GT$17ha5fd00ddbc8f0e95E.exit.i.i.i.i", %bb.ae
  %.sroa.0.011.i.i.i.i = phi i64 [ %i.et, %"_ZN4core3ptr47drop_in_place$LT$std..ffi..os_str..OsString$GT$17ha5fd00ddbc8f0e95E.exit.i.i.i.i" ], [ 0, %bb.ae ] ; 2 uses
  %i.es = getelementptr inbounds nuw [24 x i8], ptr %i.er, i64 %.sroa.0.011.i.i.i.i ; 2 uses
  %i.et = add nuw i64 %.sroa.0.011.i.i.i.i, 1     ; 2 uses
  %.val8.i.i.i.i = load i64, ptr %i.es, align 8, !range !42, !alias.scope !66302, !noalias !66300, !noundef !34 ; 2 uses
  %i.eu = icmp eq i64 %.val8.i.i.i.i, 0
  br i1 %i.eu, label %"_ZN4core3ptr47drop_in_place$LT$std..ffi..os_str..OsString$GT$17ha5fd00ddbc8f0e95E.exit.i.i.i.i", label %bb.af

bb.af:                                            ; preds = %.lr.ph.i.i.i.i
  %i.ev = getelementptr i8, ptr %i.es, i64 8
  %.val9.i.i.i.i = load ptr, ptr %i.ev, align 8, !alias.scope !66301, !noalias !66300, !nonnull !34, !noundef !34
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val9.i.i.i.i, i64 noundef %.val8.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #53, !noalias !66303
  br label %"_ZN4core3ptr47drop_in_place$LT$std..ffi..os_str..OsString$GT$17ha5fd00ddbc8f0e95E.exit.i.i.i.i"

"_ZN4core3ptr47drop_in_place$LT$std..ffi..os_str..OsString$GT$17ha5fd00ddbc8f0e95E.exit.i.i.i.i": ; preds = %bb.af, %.lr.ph.i.i.i.i
  %i.ew = icmp eq i64 %i.et, %i.dz
  br i1 %i.ew, label %"_ZN4core3ptr57drop_in_place$LT$$u5b$std..ffi..os_str..OsString$u5d$$GT$17h53425d6977c8a26bE.exit.i.i.i", label %.lr.ph.i.i.i.i

"_ZN4core3ptr57drop_in_place$LT$$u5b$std..ffi..os_str..OsString$u5d$$GT$17h53425d6977c8a26bE.exit.i.i.i": ; preds = %"_ZN4core3ptr47drop_in_place$LT$std..ffi..os_str..OsString$GT$17ha5fd00ddbc8f0e95E.exit.i.i.i.i"
  %i.ex = load i64, ptr %.sroa.7.0..sroa_idx.i, align 8, !alias.scope !66300, !noundef !34 ; 3 uses
  %.not.i.i18.i.i.i = icmp eq i64 %i.ex, 0
  br i1 %.not.i.i18.i.i.i, label %"_ZN4core3ptr270drop_in_place$LT$alloc..vec..splice..Splice$LT$core..iter..adapters..map..Map$LT$core..array..iter..IntoIter$LT$$RF$alloc..string..String$C$1_usize$GT$$C$$LT$$RF$alloc..string..String$u20$as$u20$core..convert..Into$LT$std..ffi..os_str..OsString$GT$$GT$..into$GT$$GT$$GT$17h90e1b0b28e1cf915E.exit", label %bb.ag

bb.ag:                                            ; preds = %"_ZN4core3ptr57drop_in_place$LT$$u5b$std..ffi..os_str..OsString$u5d$$GT$17h53425d6977c8a26bE.exit.i.i.i"
  %i.ey = getelementptr inbounds nuw i8, ptr %i.ea, i64 16 ; 2 uses
  %i.ez = load i64, ptr %i.ey, align 8, !noalias !66300, !noundef !34 ; 4 uses
  %i.fa = icmp ult i64 %i.ez, 384307168202282326
  tail call void @llvm.assume(i1 %i.fa)
  %i.fb = load i64, ptr %.sroa.6.0..sroa_idx.i, align 8, !alias.scope !66300, !noundef !34 ; 2 uses
  %.not3.i.i19.i.i.i = icmp eq i64 %i.fb, %i.ez
  br i1 %.not3.i.i19.i.i.i, label %bb.ah, label %bb.ai

bb.ah:                                            ; preds = %bb.ai, %bb.ag
  %i.fc = add i64 %i.ez, %i.ex
  store i64 %i.fc, ptr %i.ey, align 8, !noalias !66300
  br label %"_ZN4core3ptr270drop_in_place$LT$alloc..vec..splice..Splice$LT$core..iter..adapters..map..Map$LT$core..array..iter..IntoIter$LT$$RF$alloc..string..String$C$1_usize$GT$$C$$LT$$RF$alloc..string..String$u20$as$u20$core..convert..Into$LT$std..ffi..os_str..OsString$GT$$GT$..into$GT$$GT$$GT$17h90e1b0b28e1cf915E.exit"

bb.ai:                                            ; preds = %bb.ag
  %i.fd = load ptr, ptr %i.en, align 8, !noalias !66300, !nonnull !34, !noundef !34 ; 2 uses
  %i.fe = getelementptr inbounds nuw [24 x i8], ptr %i.fd, i64 %i.fb
  %i.ff = getelementptr inbounds nuw [24 x i8], ptr %i.fd, i64 %i.ez
  %i.fg = mul i64 %i.ex, 24
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.ff, ptr nonnull align 8 %i.fe, i64 %i.fg, i1 false), !noalias !66300
  br label %bb.ah

"_ZN4core3ptr270drop_in_place$LT$alloc..vec..splice..Splice$LT$core..iter..adapters..map..Map$LT$core..array..iter..IntoIter$LT$$RF$alloc..string..String$C$1_usize$GT$$C$$LT$$RF$alloc..string..String$u20$as$u20$core..convert..Into$LT$std..ffi..os_str..OsString$GT$$GT$..into$GT$$GT$$GT$17h90e1b0b28e1cf915E.exit": ; preds = %bb.aa, %bb.ac, %"_ZN4core3ptr57drop_in_place$LT$$u5b$std..ffi..os_str..OsString$u5d$$GT$17h53425d6977c8a26bE.exit.i.i.i", %bb.ah
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @"_ZN8indexmap3map25IndexMap$LT$K$C$V$C$S$GT$11insert_full17h07b046f055ab188aE"(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(48) %0, ptr noalias noundef nonnull align 8 dereferenceable(72) %1, ptr noalias nofree noundef nonnull readonly align 4 captures(none) dead_on_return dereferenceable(20) %2, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(40) %3) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [72 x i8], align 8                ; 13 uses
  %i.b = alloca [40 x i8], align 8                ; 4 uses
  %i.c = alloca [40 x i8], align 8                ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 56
  %.val = load i64, ptr %i.d, align 8, !noundef !34
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 64
  %.val3 = load i64, ptr %i.e, align 8, !noundef !34
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 16
  %.val4 = load i32, ptr %i.f, align 4, !noundef !34 ; 4 uses
  %i.g = tail call fastcc noundef i64 @"_ZN8indexmap3map25IndexMap$LT$K$C$V$C$S$GT$4hash17h62dec2bc47009c32E"(i64 %.val, i64 %.val3, i32 %.val4) ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.c, ptr noundef nonnull align 8 dereferenceable(40) %3, i64 40, i1 false)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !66331)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !66332)
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.i = load ptr, ptr %i.h, align 8, !alias.scope !66332, !noalias !66333, !nonnull !34, !noundef !34 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 6 uses
  %i.k = load i64, ptr %i.j, align 8, !alias.scope !66332, !noalias !66333, !noundef !34 ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 4 uses
  %i.n = load i64, ptr %i.m, align 8, !alias.scope !66334, !noalias !66335, !noundef !34
  %i.o = icmp eq i64 %i.n, 0
  br i1 %i.o, label %bb.b, label %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$7reserve17he916de7c025c01efE.exit.i.i", !prof !37

bb.b:                                             ; preds = %bb.a
  %i.p = invoke { i64, i64 } @"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$14reserve_rehash17h1edceb31bf7fd235E"(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.l, i64 noundef 1, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %i.i, i64 noundef %i.k, i1 noundef zeroext true)
          to label %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$7reserve17he916de7c025c01efE.exit.i.i" unwind label %bb.t, !noalias !66333 ; 0 uses

"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$7reserve17he916de7c025c01efE.exit.i.i": ; preds = %bb.b, %bb.a
  %.val.i.i = load ptr, ptr %i.l, align 8, !alias.scope !66336, !noalias !66337, !nonnull !34, !noundef !34 ; 8 uses
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 32
  %.val7.i.i = load i64, ptr %i.q, align 8, !alias.scope !66336, !noalias !66337, !noundef !34 ; 4 uses
  %i.r = lshr i64 %i.g, 57
  %i.s = trunc nuw nsw i64 %i.r to i8             ; 3 uses
  %.sroa.0.0.vec.insert.i.i.i.i = insertelement <16 x i8> poison, i8 %i.s, i64 0
  %.sroa.0.15.vec.insert.i.i.i.i = shufflevector <16 x i8> %.sroa.0.0.vec.insert.i.i.i.i, <16 x i8> poison, <16 x i32> zeroinitializer
  br label %bb.c

bb.c:                                             ; preds = %bb.f, %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$7reserve17he916de7c025c01efE.exit.i.i"
  %.pn.i.i.i = phi i64 [ %i.g, %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$7reserve17he916de7c025c01efE.exit.i.i" ], [ %i.au, %bb.f ]
  %.sroa.6.0.i.i.i = phi i64 [ undef, %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$7reserve17he916de7c025c01efE.exit.i.i" ], [ %.sroa.6.120.i.i.i, %bb.f ]
  %.sroa.01.0.i.i.i = phi i64 [ 0, %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$7reserve17he916de7c025c01efE.exit.i.i" ], [ %.sroa.01.122.i.i.i, %bb.f ]
  %i.t = phi i64 [ 0, %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$7reserve17he916de7c025c01efE.exit.i.i" ], [ %i.at, %bb.f ]
  %.sroa.0.017.i.i.i = and i64 %.pn.i.i.i, %.val7.i.i ; 4 uses
  %i.u = getelementptr inbounds nuw i8, ptr %.val.i.i, i64 %.sroa.0.017.i.i.i
  %.sroa.0.0.copyload.i27.i.i.i = load <16 x i8>, ptr %i.u, align 1, !noalias !66338 ; 3 uses
  %i.v = icmp eq <16 x i8> %.sroa.0.0.copyload.i27.i.i.i, %.sroa.0.15.vec.insert.i.i.i.i
  %i.w = bitcast <16 x i1> %i.v to i16            ; 2 uses
  %.not28.i.i.i = icmp eq i16 %i.w, 0
  br i1 %.not28.i.i.i, label %._crit_edge.i.i.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.c, %bb.d
  %.sroa.08.029.i.i.i = phi i16 [ %i.aj, %bb.d ], [ %i.w, %bb.c ] ; 3 uses
  %i.x = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.08.029.i.i.i, i1 true)
  %i.y = zext nneg i16 %i.x to i64
  %i.z = add i64 %.sroa.0.017.i.i.i, %i.y
  %i.aa = and i64 %i.z, %.val7.i.i
  %i.ab = sub nsw i64 0, %i.aa
  %i.ac = getelementptr inbounds [8 x i8], ptr %.val.i.i, i64 %i.ab
  %i.ad = getelementptr inbounds i8, ptr %i.ac, i64 -8
  %.val.i.i.i = load i64, ptr %i.ad, align 8, !noalias !66339, !noundef !34 ; 6 uses
  %i.ae = icmp ult i64 %.val.i.i.i, %i.k
  br i1 %i.ae, label %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$24find_or_find_insert_slot28_$u7b$$u7b$closure$u7d$$u7d$17hc67fadaa6b987fe1E.exit.i.i", label %.invoke.i

"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$24find_or_find_insert_slot28_$u7b$$u7b$closure$u7d$$u7d$17hc67fadaa6b987fe1E.exit.i.i": ; preds = %.lr.ph.i.i.i
  %i.af = getelementptr inbounds nuw [72 x i8], ptr %i.i, i64 %.val.i.i.i
  %i.ag = getelementptr i8, ptr %i.af, i64 64
  %.val2.i.i17.i.i = load i32, ptr %i.ag, align 4, !noalias !66340, !noundef !34
  %i.ah = icmp eq i32 %.val4, %.val2.i.i17.i.i
  br i1 %i.ah, label %bb.i, label %bb.d, !prof !40

._crit_edge.i.i.i:                                ; preds = %bb.d, %bb.c
  %.not11.i.i.i = icmp eq i64 %.sroa.01.0.i.i.i, 0
  br i1 %.not11.i.i.i, label %bb.e, label %.thread.i.i.i, !prof !40

bb.d:                                             ; preds = %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$24find_or_find_insert_slot28_$u7b$$u7b$closure$u7d$$u7d$17hc67fadaa6b987fe1E.exit.i.i"
  %i.ai = add i16 %.sroa.08.029.i.i.i, -1
  %i.aj = and i16 %i.ai, %.sroa.08.029.i.i.i      ; 2 uses
  %.not.i.i.i = icmp eq i16 %i.aj, 0
  br i1 %.not.i.i.i, label %._crit_edge.i.i.i, label %.lr.ph.i.i.i

bb.e:                                             ; preds = %._crit_edge.i.i.i
  %i.ak = icmp slt <16 x i8> %.sroa.0.0.copyload.i27.i.i.i, zeroinitializer
  %i.al = bitcast <16 x i1> %i.ak to i16          ; 2 uses
  %.not.i.i.i.i = icmp eq i16 %i.al, 0
  br i1 %.not.i.i.i.i, label %bb.f, label %.thread24.i.i.i, !prof !37

.thread24.i.i.i:                                  ; preds = %bb.e
  %i.am = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.al, i1 true)
  %i.an = zext nneg i16 %i.am to i64
  %i.ao = add i64 %.sroa.0.017.i.i.i, %i.an
  %i.ap = and i64 %i.ao, %.val7.i.i
  br label %.thread.i.i.i

.thread.i.i.i:                                    ; preds = %.thread24.i.i.i, %._crit_edge.i.i.i
  %.sroa.6.121.i.i.i = phi i64 [ %i.ap, %.thread24.i.i.i ], [ %.sroa.6.0.i.i.i, %._crit_edge.i.i.i ] ; 3 uses
  %i.aq = icmp eq <16 x i8> %.sroa.0.0.copyload.i27.i.i.i, splat (i8 -1)
  %i.ar = bitcast <16 x i1> %i.aq to i16
  %i.as = icmp eq i16 %i.ar, 0
  br i1 %i.as, label %bb.f, label %bb.g, !prof !37

bb.f:                                             ; preds = %.thread.i.i.i, %bb.e
  %.sroa.01.122.i.i.i = phi i64 [ 1, %.thread.i.i.i ], [ 0, %bb.e ]
  %.sroa.6.120.i.i.i = phi i64 [ %.sroa.6.121.i.i.i, %.thread.i.i.i ], [ undef, %bb.e ]
  %i.at = add i64 %i.t, 16                        ; 2 uses
  %i.au = add i64 %i.at, %.sroa.0.017.i.i.i
  br label %bb.c

bb.g:                                             ; preds = %.thread.i.i.i
  %i.av = getelementptr inbounds nuw i8, ptr %.val.i.i, i64 %.sroa.6.121.i.i.i
  %i.aw = load i8, ptr %i.av, align 1, !noalias !66341, !noundef !34 ; 2 uses
  %i.ax = icmp sgt i8 %i.aw, -1
  br i1 %i.ax, label %bb.h, label %bb.k, !prof !37

bb.h:                                             ; preds = %bb.g
  %.val2.i.i.i.i = load <16 x i8>, ptr %.val.i.i, align 16, !noalias !66341
  %i.ay = icmp slt <16 x i8> %.val2.i.i.i.i, zeroinitializer
  %i.az = bitcast <16 x i1> %i.ay to i16          ; 2 uses
  %i.ba = icmp ne i16 %i.az, 0
  tail call void @llvm.assume(i1 %i.ba)
  %i.bb = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.az, i1 true)
  %i.bc = zext nneg i16 %i.bb to i64              ; 2 uses
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %.val.i.i, i64 %i.bc
  %.pre.i = load i8, ptr %.phi.trans.insert.i, align 1, !noalias !66342
  br label %bb.k

bb.i:                                             ; preds = %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$24find_or_find_insert_slot28_$u7b$$u7b$closure$u7d$$u7d$17hc67fadaa6b987fe1E.exit.i.i"
  %i.bd = load i64, ptr %i.j, align 8, !alias.scope !66332, !noalias !66333, !noundef !34 ; 2 uses
  %i.be = icmp ult i64 %.val.i.i.i, %i.bd
  br i1 %i.be, label %bb.j, label %.invoke.i

bb.j:                                             ; preds = %bb.i
  %i.bf = load ptr, ptr %i.h, align 8, !alias.scope !66332, !noalias !66333, !nonnull !34, !noundef !34
  %i.bg = getelementptr inbounds nuw [72 x i8], ptr %i.bf, i64 %.val.i.i.i ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.bh, ptr noundef nonnull align 8 dereferenceable(40) %i.bg, i64 40, i1 false), !noalias !66343
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.bg, ptr noundef nonnull align 8 dereferenceable(40) %3, i64 40, i1 false)
  store i64 %.val.i.i.i, ptr %0, align 8, !alias.scope !66331, !noalias !66344
  br label %"_ZN8indexmap3map4core25IndexMapCore$LT$K$C$V$GT$11insert_full17h307b4a1f74ff1efaE.exit"

.invoke.i:                                        ; preds = %.lr.ph.i.i.i, %bb.i
  %i.bi = phi i64 [ %i.bd, %bb.i ], [ %i.k, %.lr.ph.i.i.i ]
  %i.bj = phi ptr [ @1451, %bb.i ], [ @1446, %.lr.ph.i.i.i ]
  invoke void @_ZN4core9panicking18panic_bounds_check17hbc09f5d79f1a5789E(i64 noundef %.val.i.i.i, i64 noundef %i.bi, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.bj) #59
          to label %.cont.i unwind label %bb.t, !noalias !66333

.cont.i:                                          ; preds = %.invoke.i
  unreachable

bb.k:                                             ; preds = %bb.h, %bb.g
  %i.bk = phi i8 [ %.pre.i, %bb.h ], [ %i.aw, %bb.g ]
  %.sroa.3.0.i.ph.i.i = phi i64 [ %i.bc, %bb.h ], [ %.sroa.6.121.i.i.i, %bb.g ] ; 3 uses
  %i.bl = load i64, ptr %i.j, align 8, !alias.scope !66332, !noalias !66333, !noundef !34 ; 3 uses
  %i.bm = icmp ult i64 %i.bl, 128102389400760776
  tail call void @llvm.assume(i1 %i.bm)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !66345)
  %i.bn = getelementptr inbounds nuw i8, ptr %.val.i.i, i64 %.sroa.3.0.i.ph.i.i
  %i.bo = and i8 %i.bk, 1
  %i.bp = zext nneg i8 %i.bo to i64
  %i.bq = add i64 %.sroa.3.0.i.ph.i.i, -16
  %i.br = and i64 %i.bq, %.val7.i.i
  store i8 %i.s, ptr %i.bn, align 1, !noalias !66342
  %i.bs = getelementptr i8, ptr %.val.i.i, i64 %i.br
  %i.bt = getelementptr i8, ptr %i.bs, i64 16
  store i8 %i.s, ptr %i.bt, align 1, !noalias !66342
  %i.bu = load <2 x i64>, ptr %i.m, align 8, !alias.scope !66346, !noalias !66333
  %i.bv = insertelement <2 x i64> <i64 poison, i64 -1>, i64 %i.bp, i64 0
  %i.bw = sub <2 x i64> %i.bu, %i.bv
  store <2 x i64> %i.bw, ptr %i.m, align 8, !alias.scope !66346, !noalias !66333
  %i.bx = sub nsw i64 0, %.sroa.3.0.i.ph.i.i
  %i.by = getelementptr inbounds [8 x i8], ptr %.val.i.i, i64 %i.bx
  %i.bz = getelementptr inbounds i8, ptr %i.by, i64 -8
  store i64 %i.bl, ptr %i.bz, align 8, !noalias !66342
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !66347
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.b, ptr noundef nonnull align 8 dereferenceable(40) %3, i64 40, i1 false)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !66348)
  %i.ca = load i64, ptr %i.j, align 8, !alias.scope !66349, !noalias !66350, !noundef !34 ; 3 uses
  %i.cb = icmp ult i64 %i.ca, 128102389400760776
  tail call void @llvm.assume(i1 %i.cb)
  %i.cc = load i64, ptr %1, align 8, !range !42, !alias.scope !66349, !noalias !66350, !noundef !34
  %i.cd = icmp eq i64 %i.ca, %i.cc
  br i1 %i.cd, label %bb.l, label %.thread32.i

.thread32.i:                                      ; preds = %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !66351
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.a, ptr noundef nonnull align 8 dereferenceable(40) %3, i64 40, i1 false)
  %i.ce = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  store i64 %i.g, ptr %i.ce, align 8, !noalias !66351
  %i.cf = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.cf, ptr noundef nonnull align 4 dereferenceable(16) %2, i64 16, i1 false), !noalias !66352
  %.sroa.5.0..sroa_idx5 = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  store i32 %.val4, ptr %.sroa.5.0..sroa_idx5, align 8, !noalias !66352
  br label %bb.s

bb.l:                                             ; preds = %bb.k
  %i.cg = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.ch = load i64, ptr %i.cg, align 8, !alias.scope !66349, !noalias !66350, !noundef !34
  %i.ci = load i64, ptr %i.m, align 8, !alias.scope !66349, !noalias !66350, !noundef !34
  %i.cj = add i64 %i.ci, %i.ch
  invoke fastcc void @_ZN8indexmap3map4core15reserve_entries17h37476e418f2febaaE(ptr noalias noundef nonnull align 8 dereferenceable(56) %1, i64 noundef 1, i64 noundef %i.cj)
          to label %bb.m unwind label %bb.q, !noalias !66350

bb.m:                                             ; preds = %bb.l
  %.pre.i.i = load i64, ptr %i.j, align 8, !alias.scope !66353, !noalias !66354 ; 3 uses
  %.pre8.i.i = load i64, ptr %1, align 8, !range !42, !alias.scope !66353, !noalias !66354
  %i.ck = icmp eq i64 %.pre.i.i, %.pre8.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !66351
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.a, ptr noundef nonnull align 8 dereferenceable(40) %3, i64 40, i1 false)
  %i.cl = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  store i64 %i.g, ptr %i.cl, align 8, !noalias !66351
  %i.cm = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.cm, ptr noundef nonnull align 4 dereferenceable(16) %2, i64 16, i1 false), !noalias !66352
  %.sroa.5.0..sroa_idx7 = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  store i32 %.val4, ptr %.sroa.5.0..sroa_idx7, align 8, !noalias !66352
  br i1 %i.ck, label %bb.n, label %bb.s

bb.n:                                             ; preds = %bb.m
  invoke void @"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$8grow_one17hd5ea3c018a09b66bE"(ptr noalias noundef nonnull align 8 dereferenceable(56) %1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1450)
          to label %bb.s unwind label %bb.o, !noalias !66354

bb.o:                                             ; preds = %bb.n
  %i.cn = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr58drop_in_place$LT$nickel_lang_core..term..record..Field$GT$17heaed33bcf911817eE"(ptr noalias noundef nonnull align 8 dereferenceable(72) %i.a)
          to label %.body unwind label %bb.p, !noalias !66350

bb.p:                                             ; preds = %bb.o
  %i.co = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #60, !noalias !66350
  unreachable

bb.q:                                             ; preds = %bb.l
  %i.cp = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr58drop_in_place$LT$nickel_lang_core..term..record..Field$GT$17heaed33bcf911817eE"(ptr noalias noundef nonnull align 8 dereferenceable(40) %i.b) #61
          to label %.body unwind label %bb.r, !noalias !66355

bb.r:                                             ; preds = %bb.q
  %i.cq = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #60, !noalias !66355
  unreachable

bb.s:                                             ; preds = %bb.n, %bb.m, %.thread32.i
  %i.cr = phi i64 [ %i.ca, %.thread32.i ], [ %.pre.i.i, %bb.m ], [ %.pre.i.i, %bb.n ] ; 2 uses
  %i.cs = load ptr, ptr %i.h, align 8, !alias.scope !66353, !noalias !66354, !nonnull !34, !noundef !34
  %i.ct = getelementptr inbounds nuw [72 x i8], ptr %i.cs, i64 %i.cr
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.ct, ptr noundef nonnull align 8 dereferenceable(72) %i.a, i64 72, i1 false), !noalias !66350
  %i.cu = add i64 %i.cr, 1
  store i64 %i.cu, ptr %i.j, align 8, !alias.scope !66353, !noalias !66354
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !66351
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !66347
  store i64 %i.bl, ptr %0, align 8, !alias.scope !66331, !noalias !66344
  %i.cv = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 -9223372036854775808, ptr %i.cv, align 8, !alias.scope !66331, !noalias !66344
  br label %"_ZN8indexmap3map4core25IndexMapCore$LT$K$C$V$GT$11insert_full17h307b4a1f74ff1efaE.exit"

bb.t:                                             ; preds = %.invoke.i, %bb.b
  %i.cw = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr58drop_in_place$LT$nickel_lang_core..term..record..Field$GT$17heaed33bcf911817eE"(ptr noalias noundef nonnull align 8 dereferenceable(40) %i.c) #61
          to label %.body unwind label %bb.u, !noalias !66356

bb.u:                                             ; preds = %bb.t
  %i.cx = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #60, !noalias !66356
  unreachable

"_ZN8indexmap3map4core25IndexMapCore$LT$K$C$V$GT$11insert_full17h307b4a1f74ff1efaE.exit": ; preds = %bb.s, %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  ret void

.body:                                            ; preds = %bb.t, %bb.q, %bb.o
  %eh.lpad-body11 = phi { ptr, i32 } [ %i.cn, %bb.o ], [ %i.cw, %bb.t ], [ %i.cp, %bb.q ]
  resume { ptr, i32 } %eh.lpad-body11
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @"_ZN8indexmap3map25IndexMap$LT$K$C$V$C$S$GT$11insert_full17h982da5836d7a3daaE"(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(88) %0, ptr noalias noundef nonnull align 8 dereferenceable(72) %1, ptr noalias nofree noundef nonnull readonly align 4 captures(none) dead_on_return dereferenceable(20) %2, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(80) %3) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %i.c = alloca [24 x i8], align 8                ; 6 uses
  %i.d = alloca [24 x i8], align 8                ; 7 uses
  %i.e = alloca [112 x i8], align 8               ; 13 uses
  %i.f = alloca [80 x i8], align 8                ; 4 uses
  %i.g = alloca [4 x i8], align 4                 ; 4 uses
  %i.h = alloca [72 x i8], align 16               ; 11 uses
  %i.i = alloca [80 x i8], align 8                ; 4 uses
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 16
  %.val4 = load i32, ptr %i.k, align 4, !noundef !34 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  %.sroa.48.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %.sroa.59.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16 ; 2 uses
  %.sroa.610.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  %.sroa.711.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 32
  %i.l = load <2 x i64>, ptr %i.j, align 8        ; 3 uses
  %i.m = shufflevector <2 x i64> %i.l, <2 x i64> poison, <2 x i32> zeroinitializer
  %i.n = xor <2 x i64> %i.m, <i64 8317987319222330741, i64 7816392313619706465>
  store <2 x i64> %i.n, ptr %i.h, align 16, !alias.scope !66410
  %i.o = shufflevector <2 x i64> %i.l, <2 x i64> poison, <2 x i32> <i32 1, i32 1>
  %i.p = xor <2 x i64> %i.o, <i64 7237128888997146477, i64 8387220255154660723>
  store <2 x i64> %i.p, ptr %.sroa.59.0..sroa_idx.i.i, align 16, !alias.scope !66410
  store <2 x i64> %i.l, ptr %.sroa.711.0..sroa_idx.i.i, align 16, !alias.scope !66410
  %.sroa.913.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 48 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %.sroa.913.0..sroa_idx.i.i, i8 0, i64 24, i1 false), !alias.scope !66410
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !66411
  store i32 %.val4, ptr %i.g, align 4, !noalias !66411
  call fastcc void @"_ZN71_$LT$core..hash..sip..Hasher$LT$S$GT$$u20$as$u20$core..hash..Hasher$GT$5write17h6846a1ced2d81e4eE"(ptr noalias noundef nonnull align 8 dereferenceable(72) %i.h, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.g, i64 noundef 4)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !66411
  %.sroa.0.0.copyload.i.i.i = load i64, ptr %i.h, align 16, !alias.scope !66412
  %.sroa.10.0.copyload.i.i.i = load i64, ptr %.sroa.48.0..sroa_idx.i.i, align 8, !alias.scope !66412
  %.sroa.17.0.copyload.i.i.i = load i64, ptr %.sroa.59.0..sroa_idx.i.i, align 16, !alias.scope !66412 ; 3 uses
  %.sroa.22.0.copyload.i.i.i = load i64, ptr %.sroa.610.0..sroa_idx.i.i, align 8, !alias.scope !66412
  %i.q = load i64, ptr %.sroa.913.0..sroa_idx.i.i, align 16, !alias.scope !66412, !noundef !34
  %i.r = shl i64 %i.q, 56
  %i.s = getelementptr inbounds nuw i8, ptr %i.h, i64 56
  %i.t = load i64, ptr %i.s, align 8, !alias.scope !66412, !noundef !34
  %i.u = or i64 %i.r, %i.t                        ; 2 uses
  %i.v = xor i64 %i.u, %.sroa.22.0.copyload.i.i.i ; 3 uses
  %i.w = add i64 %.sroa.17.0.copyload.i.i.i, %.sroa.0.0.copyload.i.i.i ; 3 uses
  %i.x = add i64 %i.v, %.sroa.10.0.copyload.i.i.i ; 2 uses
  %i.y = tail call i64 @llvm.fshl.i64(i64 %.sroa.17.0.copyload.i.i.i, i64 %.sroa.17.0.copyload.i.i.i, i64 13)
  %i.z = xor i64 %i.y, %i.w                       ; 3 uses
  %i.aa = tail call i64 @llvm.fshl.i64(i64 %i.v, i64 %i.v, i64 16)
  %i.ab = xor i64 %i.aa, %i.x                     ; 3 uses
  %i.ac = tail call i64 @llvm.fshl.i64(i64 %i.w, i64 %i.w, i64 32)
  %i.ad = add i64 %i.x, %i.z                      ; 3 uses
  %i.ae = add i64 %i.ab, %i.ac                    ; 2 uses
  %i.af = tail call i64 @llvm.fshl.i64(i64 %i.z, i64 %i.z, i64 17)
  %i.ag = xor i64 %i.ad, %i.af                    ; 3 uses
  %i.ah = tail call i64 @llvm.fshl.i64(i64 %i.ab, i64 %i.ab, i64 21)
  %i.ai = xor i64 %i.ah, %i.ae                    ; 3 uses
  %i.aj = tail call i64 @llvm.fshl.i64(i64 %i.ad, i64 %i.ad, i64 32)
  %i.ak = xor i64 %i.ae, %i.u
  %i.al = xor i64 %i.aj, 255
  %i.am = add i64 %i.ak, %i.ag                    ; 3 uses
  %i.an = add i64 %i.ai, %i.al                    ; 2 uses
  %i.ao = tail call i64 @llvm.fshl.i64(i64 %i.ag, i64 %i.ag, i64 13)
  %i.ap = xor i64 %i.am, %i.ao                    ; 3 uses
  %i.aq = tail call i64 @llvm.fshl.i64(i64 %i.ai, i64 %i.ai, i64 16)
  %i.ar = xor i64 %i.aq, %i.an                    ; 3 uses
  %i.as = tail call i64 @llvm.fshl.i64(i64 %i.am, i64 %i.am, i64 32)
  %i.at = add i64 %i.ap, %i.an                    ; 3 uses
  %i.au = add i64 %i.ar, %i.as                    ; 2 uses
  %i.av = tail call i64 @llvm.fshl.i64(i64 %i.ap, i64 %i.ap, i64 17)
  %i.aw = xor i64 %i.at, %i.av                    ; 3 uses
  %i.ax = tail call i64 @llvm.fshl.i64(i64 %i.ar, i64 %i.ar, i64 21)
  %i.ay = xor i64 %i.ax, %i.au                    ; 3 uses
  %i.az = tail call i64 @llvm.fshl.i64(i64 %i.at, i64 %i.at, i64 32)
  %i.ba = add i64 %i.aw, %i.au                    ; 3 uses
  %i.bb = add i64 %i.ay, %i.az                    ; 2 uses
  %i.bc = tail call i64 @llvm.fshl.i64(i64 %i.aw, i64 %i.aw, i64 13)
  %i.bd = xor i64 %i.bc, %i.ba                    ; 3 uses
  %i.be = tail call i64 @llvm.fshl.i64(i64 %i.ay, i64 %i.ay, i64 16)
  %i.bf = xor i64 %i.be, %i.bb                    ; 3 uses
  %i.bg = tail call i64 @llvm.fshl.i64(i64 %i.ba, i64 %i.ba, i64 32)
  %i.bh = add i64 %i.bd, %i.bb                    ; 3 uses
  %i.bi = add i64 %i.bf, %i.bg                    ; 2 uses
  %i.bj = tail call i64 @llvm.fshl.i64(i64 %i.bd, i64 %i.bd, i64 17)
  %i.bk = xor i64 %i.bj, %i.bh                    ; 3 uses
  %i.bl = tail call i64 @llvm.fshl.i64(i64 %i.bf, i64 %i.bf, i64 21)
  %i.bm = xor i64 %i.bl, %i.bi                    ; 3 uses
  %i.bn = tail call i64 @llvm.fshl.i64(i64 %i.bh, i64 %i.bh, i64 32)
  %i.bo = add i64 %i.bk, %i.bi
  %i.bp = add i64 %i.bm, %i.bn                    ; 2 uses
  %i.bq = tail call i64 @llvm.fshl.i64(i64 %i.bk, i64 %i.bk, i64 13)
  %i.br = xor i64 %i.bq, %i.bo                    ; 3 uses
  %i.bs = tail call i64 @llvm.fshl.i64(i64 %i.bm, i64 %i.bm, i64 16)
  %i.bt = xor i64 %i.bs, %i.bp                    ; 2 uses
  %i.bu = add i64 %i.br, %i.bp                    ; 3 uses
  %i.bv = tail call i64 @llvm.fshl.i64(i64 %i.br, i64 %i.br, i64 17)
  %i.bw = tail call i64 @llvm.fshl.i64(i64 %i.bt, i64 %i.bt, i64 21)
  %i.bx = tail call i64 @llvm.fshl.i64(i64 %i.bu, i64 %i.bu, i64 32)
  %i.by = xor i64 %i.bw, %i.bv
  %i.bz = xor i64 %i.by, %i.bx
  %i.ca = xor i64 %i.bz, %i.bu                    ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.i, ptr noundef nonnull align 8 dereferenceable(80) %3, i64 80, i1 false)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !66413)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !66414)
  %i.cb = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 6 uses
  %i.cc = load ptr, ptr %i.cb, align 8, !alias.scope !66414, !noalias !66415, !nonnull !34, !noundef !34 ; 2 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 5 uses
  %i.ce = load i64, ptr %i.cd, align 8, !alias.scope !66414, !noalias !66415, !noundef !34 ; 3 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 4 uses
  %i.ch = load i64, ptr %i.cg, align 8, !alias.scope !66416, !noalias !66417, !noundef !34
  %i.ci = icmp eq i64 %i.ch, 0
  br i1 %i.ci, label %bb.b, label %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$7reserve17hde3868a6b6db485cE.exit.i.i", !prof !37

bb.b:                                             ; preds = %bb.a
  %i.cj = invoke { i64, i64 } @"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$14reserve_rehash17h6e94d0b28e6320ccE"(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.cf, i64 noundef 1, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %i.cc, i64 noundef %i.ce, i1 noundef zeroext true)
          to label %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$7reserve17hde3868a6b6db485cE.exit.i.i" unwind label %bb.z, !noalias !66415 ; 0 uses

"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$7reserve17hde3868a6b6db485cE.exit.i.i": ; preds = %bb.b, %bb.a
  %.val.i.i = load ptr, ptr %i.cf, align 8, !alias.scope !66418, !noalias !66419, !nonnull !34, !noundef !34 ; 8 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %1, i64 32
  %.val7.i.i = load i64, ptr %i.ck, align 8, !alias.scope !66418, !noalias !66419, !noundef !34 ; 4 uses
  %i.cl = lshr i64 %i.ca, 57
  %i.cm = trunc nuw nsw i64 %i.cl to i8           ; 3 uses
  %.sroa.0.0.vec.insert.i.i.i.i = insertelement <16 x i8> poison, i8 %i.cm, i64 0
  %.sroa.0.15.vec.insert.i.i.i.i = shufflevector <16 x i8> %.sroa.0.0.vec.insert.i.i.i.i, <16 x i8> poison, <16 x i32> zeroinitializer
  br label %bb.c

bb.c:                                             ; preds = %bb.f, %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$7reserve17hde3868a6b6db485cE.exit.i.i"
  %.pn.i.i.i = phi i64 [ %i.ca, %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$7reserve17hde3868a6b6db485cE.exit.i.i" ], [ %i.do, %bb.f ]
  %.sroa.6.0.i.i.i = phi i64 [ undef, %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$7reserve17hde3868a6b6db485cE.exit.i.i" ], [ %.sroa.6.120.i.i.i, %bb.f ]
  %.sroa.01.0.i.i.i = phi i64 [ 0, %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$7reserve17hde3868a6b6db485cE.exit.i.i" ], [ %.sroa.01.122.i.i.i, %bb.f ]
  %i.cn = phi i64 [ 0, %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$7reserve17hde3868a6b6db485cE.exit.i.i" ], [ %i.dn, %bb.f ]
  %.sroa.0.017.i.i.i = and i64 %.pn.i.i.i, %.val7.i.i ; 4 uses
  %i.co = getelementptr inbounds nuw i8, ptr %.val.i.i, i64 %.sroa.0.017.i.i.i
  %.sroa.0.0.copyload.i27.i.i.i = load <16 x i8>, ptr %i.co, align 1, !noalias !66420 ; 3 uses
  %i.cp = icmp eq <16 x i8> %.sroa.0.0.copyload.i27.i.i.i, %.sroa.0.15.vec.insert.i.i.i.i
  %i.cq = bitcast <16 x i1> %i.cp to i16          ; 2 uses
  %.not28.i.i.i = icmp eq i16 %i.cq, 0
  br i1 %.not28.i.i.i, label %._crit_edge.i.i.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.c, %bb.d
  %.sroa.08.029.i.i.i = phi i16 [ %i.dd, %bb.d ], [ %i.cq, %bb.c ] ; 3 uses
  %i.cr = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.08.029.i.i.i, i1 true)
  %i.cs = zext nneg i16 %i.cr to i64
  %i.ct = add i64 %.sroa.0.017.i.i.i, %i.cs
  %i.cu = and i64 %i.ct, %.val7.i.i
  %i.cv = sub nsw i64 0, %i.cu
  %i.cw = getelementptr inbounds [8 x i8], ptr %.val.i.i, i64 %i.cv
  %i.cx = getelementptr inbounds i8, ptr %i.cw, i64 -8
  %.val.i.i.i = load i64, ptr %i.cx, align 8, !noalias !66421, !noundef !34 ; 6 uses
  %i.cy = icmp ult i64 %.val.i.i.i, %i.ce
  br i1 %i.cy, label %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$24find_or_find_insert_slot28_$u7b$$u7b$closure$u7d$$u7d$17h15ad500c1502a76fE.exit.i.i", label %.invoke.i

"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$24find_or_find_insert_slot28_$u7b$$u7b$closure$u7d$$u7d$17h15ad500c1502a76fE.exit.i.i": ; preds = %.lr.ph.i.i.i
  %i.cz = getelementptr inbounds nuw [112 x i8], ptr %i.cc, i64 %.val.i.i.i
  %i.da = getelementptr i8, ptr %i.cz, i64 104
  %.val2.i.i17.i.i = load i32, ptr %i.da, align 4, !noalias !66422, !noundef !34
  %i.db = icmp eq i32 %.val4, %.val2.i.i17.i.i
  br i1 %i.db, label %bb.i, label %bb.d, !prof !40

._crit_edge.i.i.i:                                ; preds = %bb.d, %bb.c
  %.not11.i.i.i = icmp eq i64 %.sroa.01.0.i.i.i, 0
  br i1 %.not11.i.i.i, label %bb.e, label %.thread.i.i.i, !prof !40

bb.d:                                             ; preds = %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$24find_or_find_insert_slot28_$u7b$$u7b$closure$u7d$$u7d$17h15ad500c1502a76fE.exit.i.i"
  %i.dc = add i16 %.sroa.08.029.i.i.i, -1
  %i.dd = and i16 %i.dc, %.sroa.08.029.i.i.i      ; 2 uses
  %.not.i.i.i = icmp eq i16 %i.dd, 0
  br i1 %.not.i.i.i, label %._crit_edge.i.i.i, label %.lr.ph.i.i.i

bb.e:                                             ; preds = %._crit_edge.i.i.i
  %i.de = icmp slt <16 x i8> %.sroa.0.0.copyload.i27.i.i.i, zeroinitializer
  %i.df = bitcast <16 x i1> %i.de to i16          ; 2 uses
  %.not.i.i.i.i = icmp eq i16 %i.df, 0
  br i1 %.not.i.i.i.i, label %bb.f, label %.thread24.i.i.i, !prof !37

.thread24.i.i.i:                                  ; preds = %bb.e
  %i.dg = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.df, i1 true)
  %i.dh = zext nneg i16 %i.dg to i64
  %i.di = add i64 %.sroa.0.017.i.i.i, %i.dh
  %i.dj = and i64 %i.di, %.val7.i.i
  br label %.thread.i.i.i

.thread.i.i.i:                                    ; preds = %.thread24.i.i.i, %._crit_edge.i.i.i
  %.sroa.6.121.i.i.i = phi i64 [ %i.dj, %.thread24.i.i.i ], [ %.sroa.6.0.i.i.i, %._crit_edge.i.i.i ] ; 3 uses
  %i.dk = icmp eq <16 x i8> %.sroa.0.0.copyload.i27.i.i.i, splat (i8 -1)
  %i.dl = bitcast <16 x i1> %i.dk to i16
  %i.dm = icmp eq i16 %i.dl, 0
  br i1 %i.dm, label %bb.f, label %bb.g, !prof !37

bb.f:                                             ; preds = %.thread.i.i.i, %bb.e
  %.sroa.01.122.i.i.i = phi i64 [ 1, %.thread.i.i.i ], [ 0, %bb.e ]
  %.sroa.6.120.i.i.i = phi i64 [ %.sroa.6.121.i.i.i, %.thread.i.i.i ], [ undef, %bb.e ]
  %i.dn = add i64 %i.cn, 16                       ; 2 uses
  %i.do = add i64 %i.dn, %.sroa.0.017.i.i.i
  br label %bb.c

bb.g:                                             ; preds = %.thread.i.i.i
  %i.dp = getelementptr inbounds nuw i8, ptr %.val.i.i, i64 %.sroa.6.121.i.i.i
  %i.dq = load i8, ptr %i.dp, align 1, !noalias !66423, !noundef !34 ; 2 uses
  %i.dr = icmp sgt i8 %i.dq, -1
  br i1 %i.dr, label %bb.h, label %bb.k, !prof !37

bb.h:                                             ; preds = %bb.g
  %.val2.i.i.i.i = load <16 x i8>, ptr %.val.i.i, align 16, !noalias !66423
  %i.ds = icmp slt <16 x i8> %.val2.i.i.i.i, zeroinitializer
  %i.dt = bitcast <16 x i1> %i.ds to i16          ; 2 uses
  %i.du = icmp ne i16 %i.dt, 0
  tail call void @llvm.assume(i1 %i.du)
  %i.dv = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.dt, i1 true)
  %i.dw = zext nneg i16 %i.dv to i64              ; 2 uses
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %.val.i.i, i64 %i.dw
  %.pre.i = load i8, ptr %.phi.trans.insert.i, align 1, !noalias !66424
  br label %bb.k

bb.i:                                             ; preds = %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$24find_or_find_insert_slot28_$u7b$$u7b$closure$u7d$$u7d$17h15ad500c1502a76fE.exit.i.i"
  %i.dx = load i64, ptr %i.cd, align 8, !alias.scope !66414, !noalias !66415, !noundef !34 ; 2 uses
  %i.dy = icmp ult i64 %.val.i.i.i, %i.dx
  br i1 %i.dy, label %bb.j, label %.invoke.i

bb.j:                                             ; preds = %bb.i
  %i.dz = load ptr, ptr %i.cb, align 8, !alias.scope !66414, !noalias !66415, !nonnull !34, !noundef !34
  %i.ea = getelementptr inbounds nuw [112 x i8], ptr %i.dz, i64 %.val.i.i.i ; 2 uses
  %i.eb = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.eb, ptr noundef nonnull align 8 dereferenceable(80) %i.ea, i64 80, i1 false), !noalias !66425
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.ea, ptr noundef nonnull align 8 dereferenceable(80) %3, i64 80, i1 false)
  store i64 %.val.i.i.i, ptr %0, align 8, !alias.scope !66413, !noalias !66426
  br label %"_ZN8indexmap3map4core25IndexMapCore$LT$K$C$V$GT$11insert_full17h7bfe19871a92c572E.exit"

.invoke.i:                                        ; preds = %.lr.ph.i.i.i, %bb.i
  %i.ec = phi i64 [ %i.dx, %bb.i ], [ %i.ce, %.lr.ph.i.i.i ]
  %i.ed = phi ptr [ @1451, %bb.i ], [ @1446, %.lr.ph.i.i.i ]
  invoke void @_ZN4core9panicking18panic_bounds_check17hbc09f5d79f1a5789E(i64 noundef %.val.i.i.i, i64 noundef %i.ec, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ed) #59
          to label %.cont.i unwind label %bb.z, !noalias !66415

.cont.i:                                          ; preds = %.invoke.i
  unreachable

bb.k:                                             ; preds = %bb.h, %bb.g
  %i.ee = phi i8 [ %.pre.i, %bb.h ], [ %i.dq, %bb.g ]
  %.sroa.3.0.i.ph.i.i = phi i64 [ %i.dw, %bb.h ], [ %.sroa.6.121.i.i.i, %bb.g ] ; 3 uses
  %i.ef = load i64, ptr %i.cd, align 8, !alias.scope !66414, !noalias !66415, !noundef !34 ; 3 uses
  %i.eg = icmp ult i64 %i.ef, 82351536043346213
  tail call void @llvm.assume(i1 %i.eg)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !66427)
  %i.eh = getelementptr inbounds nuw i8, ptr %.val.i.i, i64 %.sroa.3.0.i.ph.i.i
  %i.ei = and i8 %i.ee, 1
  %i.ej = zext nneg i8 %i.ei to i64
  %i.ek = add i64 %.sroa.3.0.i.ph.i.i, -16
  %i.el = and i64 %i.ek, %.val7.i.i
  store i8 %i.cm, ptr %i.eh, align 1, !noalias !66424
  %i.em = getelementptr i8, ptr %.val.i.i, i64 %i.el
  %i.en = getelementptr i8, ptr %i.em, i64 16
  store i8 %i.cm, ptr %i.en, align 1, !noalias !66424
  %i.eo = load <2 x i64>, ptr %i.cg, align 8, !alias.scope !66428, !noalias !66415
  %i.ep = insertelement <2 x i64> <i64 poison, i64 -1>, i64 %i.ej, i64 0
  %i.eq = sub <2 x i64> %i.eo, %i.ep
  store <2 x i64> %i.eq, ptr %i.cg, align 8, !alias.scope !66428, !noalias !66415
  %i.er = sub nsw i64 0, %.sroa.3.0.i.ph.i.i
  %i.es = getelementptr inbounds [8 x i8], ptr %.val.i.i, i64 %i.er
  %i.et = getelementptr inbounds i8, ptr %i.es, i64 -8
  store i64 %i.ef, ptr %i.et, align 8, !noalias !66424
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !66429
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.f, ptr noundef nonnull align 8 dereferenceable(80) %3, i64 80, i1 false)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !66430)
  %i.eu = load i64, ptr %i.cd, align 8, !alias.scope !66431, !noalias !66432, !noundef !34 ; 13 uses
  %i.ev = icmp ult i64 %i.eu, 82351536043346213
  tail call void @llvm.assume(i1 %i.ev)
  %i.ew = load i64, ptr %1, align 8, !range !42, !alias.scope !66431, !noalias !66432, !noundef !34
  %i.ex = icmp eq i64 %i.eu, %i.ew
  br i1 %i.ex, label %bb.l, label %.critedge.i.i

bb.l:                                             ; preds = %bb.k
  %i.ey = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.ez = load i64, ptr %i.ey, align 8, !alias.scope !66431, !noalias !66432, !noundef !34
  %i.fa = load i64, ptr %i.cg, align 8, !alias.scope !66431, !noalias !66432, !noundef !34
  %i.fb = add i64 %i.fa, %i.ez                    ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !66433)
  %.sroa.0.0.i.i.i.i = tail call noundef i64 @llvm.umin.i64(i64 %i.fb, i64 82351536043346212) ; 3 uses
  %i.fc = sub nsw i64 %.sroa.0.0.i.i.i.i, %i.eu
  %i.fd = icmp ugt i64 %i.fc, 1
  br i1 %i.fd, label %bb.q, label %bb.m

bb.m:                                             ; preds = %bb.s, %bb.q, %bb.l
  tail call void @llvm.experimental.noalias.scope.decl(metadata !66434)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !66435)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !66436)
  %i.fe = add nuw nsw i64 %i.eu, 1                ; 2 uses
  %i.ff = mul nuw nsw i64 %i.fe, 112
  %i.fg = icmp samesign ugt i64 %i.eu, 82351536043346211
  br i1 %i.fg, label %bb.p, label %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i, !prof !49

_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i: ; preds = %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !66437
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !66437
  %i.fh = icmp eq i64 %i.eu, 0
  br i1 %i.fh, label %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$14current_memory17hedf2a25ccd017d7cE.exit.i.i.i.i.i.i", label %bb.n

bb.n:                                             ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i
  %.val28.i.i.i.i.i.i = load ptr, ptr %i.cb, align 8, !alias.scope !66438, !noalias !66432, !nonnull !34, !noundef !34
  %i.fi = mul nuw nsw i64 %i.eu, 112
  store ptr %.val28.i.i.i.i.i.i, ptr %i.c, align 8, !alias.scope !66439, !noalias !66437
  %.sroa.5.0..sroa_idx.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store i64 %i.fi, ptr %.sroa.5.0..sroa_idx.i.i.i.i.i.i.i, align 8, !alias.scope !66439, !noalias !66437
  br label %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$14current_memory17hedf2a25ccd017d7cE.exit.i.i.i.i.i.i"

"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$14current_memory17hedf2a25ccd017d7cE.exit.i.i.i.i.i.i": ; preds = %bb.n, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i
  %.sink.i.i.i.i.i.i.i = phi i64 [ 8, %bb.n ], [ 0, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i ]
  %i.fj = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store i64 %.sink.i.i.i.i.i.i.i, ptr %i.fj, align 8, !alias.scope !66439, !noalias !66437
  call fastcc void @_ZN5alloc7raw_vec11finish_grow17hc93339b46dcf7ba3E(ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.d, i64 noundef 8, i64 noundef %i.ff, ptr noalias noundef readonly align 8 captures(address) dereferenceable(24) %i.c), !noalias !66440
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !66437
  %i.fk = load i64, ptr %i.d, align 8, !range !55, !noalias !66437, !noundef !34
  %i.fl = trunc nuw i64 %i.fk to i1
  %i.fm = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 2 uses
  br i1 %i.fl, label %bb.o, label %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$10grow_exact17h8f3872943bbd801eE.exit.i.i.i.i.i"

bb.o:                                             ; preds = %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$14current_memory17hedf2a25ccd017d7cE.exit.i.i.i.i.i.i"
  %i.fn = load i64, ptr %i.fm, align 8, !range !57, !noalias !66437, !noundef !34
  %i.fo = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.fp = load i64, ptr %i.fo, align 8, !noalias !66437
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !66437
  br label %bb.p

"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$10grow_exact17h8f3872943bbd801eE.exit.i.i.i.i.i": ; preds = %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$14current_memory17hedf2a25ccd017d7cE.exit.i.i.i.i.i.i"
  %i.fq = load ptr, ptr %i.fm, align 8, !noalias !66437, !nonnull !34, !noundef !34
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !66437
  br label %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$13reserve_exact17h7376ab7322db4100E.exit.sink.split.i.i.i"

bb.p:                                             ; preds = %bb.o, %bb.m
  %.sroa.3.0.i.ph.i.i.i.i = phi i64 [ %i.fp, %bb.o ], [ undef, %bb.m ]
  %.sroa.0.0.i.ph.i.i.i.i = phi i64 [ %i.fn, %bb.o ], [ 0, %bb.m ]
  invoke void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef %.sroa.0.0.i.ph.i.i.i.i, i64 %.sroa.3.0.i.ph.i.i.i.i, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1449) #59
          to label %.noexc.i.i unwind label %bb.w, !noalias !66441

.noexc.i.i:                                       ; preds = %bb.p
  unreachable

bb.q:                                             ; preds = %bb.l
  tail call void @llvm.experimental.noalias.scope.decl(metadata !66442)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !66443)
  %i.fr = icmp ult i64 %i.fb, %i.eu
  br i1 %i.fr, label %bb.m, label %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i, !prof !37

_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i: ; preds = %bb.q
  %i.fs = mul nuw nsw i64 %.sroa.0.0.i.i.i.i, 112
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !66444
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !66444
  %i.ft = icmp eq i64 %i.eu, 0
  br i1 %i.ft, label %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$14current_memory17hedf2a25ccd017d7cE.exit.i.i.i.i.i", label %bb.r

bb.r:                                             ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i
  %.val28.i.i.i.i.i = load ptr, ptr %i.cb, align 8, !alias.scope !66445, !noalias !66432, !nonnull !34, !noundef !34
  %i.fu = mul nuw nsw i64 %i.eu, 112
  store ptr %.val28.i.i.i.i.i, ptr %i.a, align 8, !alias.scope !66446, !noalias !66444
  %.sroa.5.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i64 %i.fu, ptr %.sroa.5.0..sroa_idx.i.i.i.i.i.i, align 8, !alias.scope !66446, !noalias !66444
  br label %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$14current_memory17hedf2a25ccd017d7cE.exit.i.i.i.i.i"

"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$14current_memory17hedf2a25ccd017d7cE.exit.i.i.i.i.i": ; preds = %bb.r, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i
  %.sink.i.i.i.i.i.i = phi i64 [ 8, %bb.r ], [ 0, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i ]
  %i.fv = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 %.sink.i.i.i.i.i.i, ptr %i.fv, align 8, !alias.scope !66446, !noalias !66444
end_hunk_6
begin_hunk_7_@"_ZN8indexmap3map25IndexMap$LT$K$C$V$C$S$GT$11insert_full17h982da5836d7a3daaE":bb.a
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #60, !noalias !66452
  unreachable

bb.y:                                             ; preds = %.critedge.i.i, %bb.t, %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$13reserve_exact17h7376ab7322db4100E.exit.sink.split.i.i.i"
  %i.gj = load ptr, ptr %i.cb, align 8, !alias.scope !66453, !noalias !66451, !nonnull !34, !noundef !34
  %i.gk = getelementptr inbounds nuw [112 x i8], ptr %i.gj, i64 %i.eu
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(112) %i.gk, ptr noundef nonnull align 8 dereferenceable(112) %i.e, i64 112, i1 false), !noalias !66432
  %i.gl = add nuw nsw i64 %i.eu, 1
  store i64 %i.gl, ptr %i.cd, align 8, !alias.scope !66453, !noalias !66451
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !66449
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !66429
  store i64 %i.ef, ptr %0, align 8, !alias.scope !66413, !noalias !66426
  %i.gm = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 -9223372036854775808, ptr %i.gm, align 8, !alias.scope !66413, !noalias !66426
  br label %"_ZN8indexmap3map4core25IndexMapCore$LT$K$C$V$GT$11insert_full17h7bfe19871a92c572E.exit"

bb.z:                                             ; preds = %.invoke.i, %bb.b
  %i.gn = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr106drop_in_place$LT$$LP$nickel_lang_core..term..record..Field$C$nickel_lang_core..term..record..Field$RP$$GT$17h3ffeda208541987eE"(ptr noalias noundef nonnull align 8 dereferenceable(80) %i.i) #61
          to label %bb.ab unwind label %bb.aa, !noalias !66454

bb.aa:                                            ; preds = %bb.z
  %i.go = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #60, !noalias !66454
  unreachable

"_ZN8indexmap3map4core25IndexMapCore$LT$K$C$V$GT$11insert_full17h7bfe19871a92c572E.exit": ; preds = %bb.y, %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  ret void

bb.ab:                                            ; preds = %bb.z, %bb.w, %bb.u
  %eh.lpad-body = phi { ptr, i32 } [ %i.gd, %bb.u ], [ %i.gn, %bb.z ], [ %i.gh, %bb.w ]
  resume { ptr, i32 } %eh.lpad-body
}

; Function Attrs: nonlazybind uwtable
define internal fastcc ptr @"_ZN8indexmap3map25IndexMap$LT$K$C$V$C$S$GT$11insert_full17hfac004e530615592E"(ptr noalias noundef nonnull align 8 dereferenceable(72) %0, ptr noalias nofree noundef nonnull readonly align 4 captures(none) dead_on_return dereferenceable(20) %1, ptr noundef nonnull %2) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %i.c = alloca [24 x i8], align 8                ; 6 uses
  %i.d = alloca [24 x i8], align 8                ; 7 uses
  %.sroa.6.i.i.sroa.0 = alloca [16 x i8], align 8 ; 6 uses
  %i.e = alloca [8 x i8], align 8                 ; 4 uses
  %i.f = alloca [8 x i8], align 8                 ; 4 uses
  %i.g = alloca [4 x i8], align 4                 ; 4 uses
  %i.h = alloca [72 x i8], align 16               ; 11 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.val4 = load i32, ptr %i.j, align 4, !noundef !34 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  %.sroa.48.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %.sroa.59.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16 ; 2 uses
  %.sroa.610.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  %.sroa.711.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 32
  %i.k = load <2 x i64>, ptr %i.i, align 8        ; 3 uses
  %i.l = shufflevector <2 x i64> %i.k, <2 x i64> poison, <2 x i32> zeroinitializer
  %i.m = xor <2 x i64> %i.l, <i64 8317987319222330741, i64 7816392313619706465>
  store <2 x i64> %i.m, ptr %i.h, align 16, !alias.scope !66505
  %i.n = shufflevector <2 x i64> %i.k, <2 x i64> poison, <2 x i32> <i32 1, i32 1>
  %i.o = xor <2 x i64> %i.n, <i64 7237128888997146477, i64 8387220255154660723>
  store <2 x i64> %i.o, ptr %.sroa.59.0..sroa_idx.i.i, align 16, !alias.scope !66505
  store <2 x i64> %i.k, ptr %.sroa.711.0..sroa_idx.i.i, align 16, !alias.scope !66505
  %.sroa.913.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 48 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %.sroa.913.0..sroa_idx.i.i, i8 0, i64 24, i1 false), !alias.scope !66505
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !66506
  store i32 %.val4, ptr %i.g, align 4, !noalias !66506
  call fastcc void @"_ZN71_$LT$core..hash..sip..Hasher$LT$S$GT$$u20$as$u20$core..hash..Hasher$GT$5write17h6846a1ced2d81e4eE"(ptr noalias noundef nonnull align 8 dereferenceable(72) %i.h, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.g, i64 noundef 4)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !66506
  %.sroa.0.0.copyload.i.i.i = load i64, ptr %i.h, align 16, !alias.scope !66507
  %.sroa.10.0.copyload.i.i.i = load i64, ptr %.sroa.48.0..sroa_idx.i.i, align 8, !alias.scope !66507
  %.sroa.17.0.copyload.i.i.i = load i64, ptr %.sroa.59.0..sroa_idx.i.i, align 16, !alias.scope !66507 ; 3 uses
  %.sroa.22.0.copyload.i.i.i = load i64, ptr %.sroa.610.0..sroa_idx.i.i, align 8, !alias.scope !66507
  %i.p = load i64, ptr %.sroa.913.0..sroa_idx.i.i, align 16, !alias.scope !66507, !noundef !34
  %i.q = shl i64 %i.p, 56
  %i.r = getelementptr inbounds nuw i8, ptr %i.h, i64 56
  %i.s = load i64, ptr %i.r, align 8, !alias.scope !66507, !noundef !34
  %i.t = or i64 %i.q, %i.s                        ; 2 uses
  %i.u = xor i64 %i.t, %.sroa.22.0.copyload.i.i.i ; 3 uses
  %i.v = add i64 %.sroa.17.0.copyload.i.i.i, %.sroa.0.0.copyload.i.i.i ; 3 uses
  %i.w = add i64 %i.u, %.sroa.10.0.copyload.i.i.i ; 2 uses
  %i.x = tail call i64 @llvm.fshl.i64(i64 %.sroa.17.0.copyload.i.i.i, i64 %.sroa.17.0.copyload.i.i.i, i64 13)
  %i.y = xor i64 %i.x, %i.v                       ; 3 uses
  %i.z = tail call i64 @llvm.fshl.i64(i64 %i.u, i64 %i.u, i64 16)
  %i.aa = xor i64 %i.z, %i.w                      ; 3 uses
  %i.ab = tail call i64 @llvm.fshl.i64(i64 %i.v, i64 %i.v, i64 32)
  %i.ac = add i64 %i.w, %i.y                      ; 3 uses
  %i.ad = add i64 %i.aa, %i.ab                    ; 2 uses
  %i.ae = tail call i64 @llvm.fshl.i64(i64 %i.y, i64 %i.y, i64 17)
  %i.af = xor i64 %i.ac, %i.ae                    ; 3 uses
  %i.ag = tail call i64 @llvm.fshl.i64(i64 %i.aa, i64 %i.aa, i64 21)
  %i.ah = xor i64 %i.ag, %i.ad                    ; 3 uses
  %i.ai = tail call i64 @llvm.fshl.i64(i64 %i.ac, i64 %i.ac, i64 32)
  %i.aj = xor i64 %i.ad, %i.t
  %i.ak = xor i64 %i.ai, 255
  %i.al = add i64 %i.aj, %i.af                    ; 3 uses
  %i.am = add i64 %i.ah, %i.ak                    ; 2 uses
  %i.an = tail call i64 @llvm.fshl.i64(i64 %i.af, i64 %i.af, i64 13)
  %i.ao = xor i64 %i.al, %i.an                    ; 3 uses
  %i.ap = tail call i64 @llvm.fshl.i64(i64 %i.ah, i64 %i.ah, i64 16)
  %i.aq = xor i64 %i.ap, %i.am                    ; 3 uses
  %i.ar = tail call i64 @llvm.fshl.i64(i64 %i.al, i64 %i.al, i64 32)
  %i.as = add i64 %i.ao, %i.am                    ; 3 uses
  %i.at = add i64 %i.aq, %i.ar                    ; 2 uses
  %i.au = tail call i64 @llvm.fshl.i64(i64 %i.ao, i64 %i.ao, i64 17)
  %i.av = xor i64 %i.as, %i.au                    ; 3 uses
  %i.aw = tail call i64 @llvm.fshl.i64(i64 %i.aq, i64 %i.aq, i64 21)
  %i.ax = xor i64 %i.aw, %i.at                    ; 3 uses
  %i.ay = tail call i64 @llvm.fshl.i64(i64 %i.as, i64 %i.as, i64 32)
  %i.az = add i64 %i.av, %i.at                    ; 3 uses
  %i.ba = add i64 %i.ax, %i.ay                    ; 2 uses
  %i.bb = tail call i64 @llvm.fshl.i64(i64 %i.av, i64 %i.av, i64 13)
  %i.bc = xor i64 %i.bb, %i.az                    ; 3 uses
  %i.bd = tail call i64 @llvm.fshl.i64(i64 %i.ax, i64 %i.ax, i64 16)
  %i.be = xor i64 %i.bd, %i.ba                    ; 3 uses
  %i.bf = tail call i64 @llvm.fshl.i64(i64 %i.az, i64 %i.az, i64 32)
  %i.bg = add i64 %i.bc, %i.ba                    ; 3 uses
  %i.bh = add i64 %i.be, %i.bf                    ; 2 uses
  %i.bi = tail call i64 @llvm.fshl.i64(i64 %i.bc, i64 %i.bc, i64 17)
  %i.bj = xor i64 %i.bi, %i.bg                    ; 3 uses
  %i.bk = tail call i64 @llvm.fshl.i64(i64 %i.be, i64 %i.be, i64 21)
  %i.bl = xor i64 %i.bk, %i.bh                    ; 3 uses
  %i.bm = tail call i64 @llvm.fshl.i64(i64 %i.bg, i64 %i.bg, i64 32)
  %i.bn = add i64 %i.bj, %i.bh
  %i.bo = add i64 %i.bl, %i.bm                    ; 2 uses
  %i.bp = tail call i64 @llvm.fshl.i64(i64 %i.bj, i64 %i.bj, i64 13)
  %i.bq = xor i64 %i.bp, %i.bn                    ; 3 uses
  %i.br = tail call i64 @llvm.fshl.i64(i64 %i.bl, i64 %i.bl, i64 16)
  %i.bs = xor i64 %i.br, %i.bo                    ; 2 uses
  %i.bt = add i64 %i.bq, %i.bo                    ; 3 uses
  %i.bu = tail call i64 @llvm.fshl.i64(i64 %i.bq, i64 %i.bq, i64 17)
  %i.bv = tail call i64 @llvm.fshl.i64(i64 %i.bs, i64 %i.bs, i64 21)
  %i.bw = tail call i64 @llvm.fshl.i64(i64 %i.bt, i64 %i.bt, i64 32)
  %i.bx = xor i64 %i.bv, %i.bu
  %i.by = xor i64 %i.bx, %i.bw
  %i.bz = xor i64 %i.by, %i.bt                    ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !66508)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  store ptr %2, ptr %i.f, align 8, !noalias !66509
  %i.ca = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 7 uses
  %i.cb = load ptr, ptr %i.ca, align 8, !alias.scope !66508, !noalias !66510, !nonnull !34, !noundef !34 ; 2 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 5 uses
  %i.cd = load i64, ptr %i.cc, align 8, !alias.scope !66508, !noalias !66510, !noundef !34 ; 3 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 4 uses
  %i.cg = load i64, ptr %i.cf, align 8, !alias.scope !66511, !noalias !66512, !noundef !34
  %i.ch = icmp eq i64 %i.cg, 0
  br i1 %i.ch, label %bb.b, label %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$7reserve17h44d4f6381509c6c6E.exit.i.i", !prof !37

bb.b:                                             ; preds = %bb.a
  %i.ci = invoke { i64, i64 } @"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$14reserve_rehash17hd2066eb3bbf94870E"(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.ce, i64 noundef 1, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %i.cb, i64 noundef %i.cd, i1 noundef zeroext true)
          to label %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$7reserve17h44d4f6381509c6c6E.exit.i.i" unwind label %bb.z, !noalias !66510 ; 0 uses

"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$7reserve17h44d4f6381509c6c6E.exit.i.i": ; preds = %bb.b, %bb.a
  %.val.i.i = load ptr, ptr %i.ce, align 8, !alias.scope !66513, !noalias !66514, !nonnull !34, !noundef !34 ; 8 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.val7.i.i = load i64, ptr %i.cj, align 8, !alias.scope !66513, !noalias !66514, !noundef !34 ; 4 uses
  %i.ck = lshr i64 %i.bz, 57
  %i.cl = trunc nuw nsw i64 %i.ck to i8           ; 3 uses
  %.sroa.0.0.vec.insert.i.i.i.i = insertelement <16 x i8> poison, i8 %i.cl, i64 0
  %.sroa.0.15.vec.insert.i.i.i.i = shufflevector <16 x i8> %.sroa.0.0.vec.insert.i.i.i.i, <16 x i8> poison, <16 x i32> zeroinitializer
  br label %bb.c

bb.c:                                             ; preds = %bb.f, %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$7reserve17h44d4f6381509c6c6E.exit.i.i"
  %.pn.i.i.i = phi i64 [ %i.bz, %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$7reserve17h44d4f6381509c6c6E.exit.i.i" ], [ %i.dn, %bb.f ]
  %.sroa.6.0.i.i.i = phi i64 [ undef, %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$7reserve17h44d4f6381509c6c6E.exit.i.i" ], [ %.sroa.6.120.i.i.i, %bb.f ]
  %.sroa.01.0.i.i.i = phi i64 [ 0, %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$7reserve17h44d4f6381509c6c6E.exit.i.i" ], [ %.sroa.01.122.i.i.i, %bb.f ]
  %i.cm = phi i64 [ 0, %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$7reserve17h44d4f6381509c6c6E.exit.i.i" ], [ %i.dm, %bb.f ]
  %.sroa.0.017.i.i.i = and i64 %.pn.i.i.i, %.val7.i.i ; 4 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %.val.i.i, i64 %.sroa.0.017.i.i.i
  %.sroa.0.0.copyload.i27.i.i.i = load <16 x i8>, ptr %i.cn, align 1, !noalias !66515 ; 3 uses
  %i.co = icmp eq <16 x i8> %.sroa.0.0.copyload.i27.i.i.i, %.sroa.0.15.vec.insert.i.i.i.i
  %i.cp = bitcast <16 x i1> %i.co to i16          ; 2 uses
  %.not28.i.i.i = icmp eq i16 %i.cp, 0
  br i1 %.not28.i.i.i, label %._crit_edge.i.i.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.c, %bb.d
  %.sroa.08.029.i.i.i = phi i16 [ %i.dc, %bb.d ], [ %i.cp, %bb.c ] ; 3 uses
  %i.cq = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.08.029.i.i.i, i1 true)
  %i.cr = zext nneg i16 %i.cq to i64
  %i.cs = add i64 %.sroa.0.017.i.i.i, %i.cr
  %i.ct = and i64 %i.cs, %.val7.i.i
  %i.cu = sub nsw i64 0, %i.ct
  %i.cv = getelementptr inbounds [8 x i8], ptr %.val.i.i, i64 %i.cu
  %i.cw = getelementptr inbounds i8, ptr %i.cv, i64 -8
  %.val.i.i.i = load i64, ptr %i.cw, align 8, !noalias !66516, !noundef !34 ; 5 uses
  %i.cx = icmp ult i64 %.val.i.i.i, %i.cd
  br i1 %i.cx, label %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$24find_or_find_insert_slot28_$u7b$$u7b$closure$u7d$$u7d$17h5fd717bd6338217aE.exit.i.i", label %.invoke.i

"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$24find_or_find_insert_slot28_$u7b$$u7b$closure$u7d$$u7d$17h5fd717bd6338217aE.exit.i.i": ; preds = %.lr.ph.i.i.i
  %i.cy = getelementptr inbounds nuw [40 x i8], ptr %i.cb, i64 %.val.i.i.i
  %i.cz = getelementptr i8, ptr %i.cy, i64 32
  %.val2.i.i17.i.i = load i32, ptr %i.cz, align 4, !noalias !66517, !noundef !34
  %i.da = icmp eq i32 %.val4, %.val2.i.i17.i.i
  br i1 %i.da, label %bb.i, label %bb.d, !prof !40

._crit_edge.i.i.i:                                ; preds = %bb.d, %bb.c
  %.not11.i.i.i = icmp eq i64 %.sroa.01.0.i.i.i, 0
  br i1 %.not11.i.i.i, label %bb.e, label %.thread.i.i.i, !prof !40

bb.d:                                             ; preds = %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$24find_or_find_insert_slot28_$u7b$$u7b$closure$u7d$$u7d$17h5fd717bd6338217aE.exit.i.i"
  %i.db = add i16 %.sroa.08.029.i.i.i, -1
  %i.dc = and i16 %i.db, %.sroa.08.029.i.i.i      ; 2 uses
  %.not.i.i.i = icmp eq i16 %i.dc, 0
  br i1 %.not.i.i.i, label %._crit_edge.i.i.i, label %.lr.ph.i.i.i

bb.e:                                             ; preds = %._crit_edge.i.i.i
  %i.dd = icmp slt <16 x i8> %.sroa.0.0.copyload.i27.i.i.i, zeroinitializer
  %i.de = bitcast <16 x i1> %i.dd to i16          ; 2 uses
  %.not.i.i.i.i = icmp eq i16 %i.de, 0
  br i1 %.not.i.i.i.i, label %bb.f, label %.thread24.i.i.i, !prof !37

.thread24.i.i.i:                                  ; preds = %bb.e
  %i.df = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.de, i1 true)
  %i.dg = zext nneg i16 %i.df to i64
  %i.dh = add i64 %.sroa.0.017.i.i.i, %i.dg
  %i.di = and i64 %i.dh, %.val7.i.i
  br label %.thread.i.i.i

.thread.i.i.i:                                    ; preds = %.thread24.i.i.i, %._crit_edge.i.i.i
  %.sroa.6.121.i.i.i = phi i64 [ %i.di, %.thread24.i.i.i ], [ %.sroa.6.0.i.i.i, %._crit_edge.i.i.i ] ; 3 uses
  %i.dj = icmp eq <16 x i8> %.sroa.0.0.copyload.i27.i.i.i, splat (i8 -1)
  %i.dk = bitcast <16 x i1> %i.dj to i16
  %i.dl = icmp eq i16 %i.dk, 0
  br i1 %i.dl, label %bb.f, label %bb.g, !prof !37

bb.f:                                             ; preds = %.thread.i.i.i, %bb.e
  %.sroa.01.122.i.i.i = phi i64 [ 1, %.thread.i.i.i ], [ 0, %bb.e ]
  %.sroa.6.120.i.i.i = phi i64 [ %.sroa.6.121.i.i.i, %.thread.i.i.i ], [ undef, %bb.e ]
  %i.dm = add i64 %i.cm, 16                       ; 2 uses
  %i.dn = add i64 %i.dm, %.sroa.0.017.i.i.i
  br label %bb.c

bb.g:                                             ; preds = %.thread.i.i.i
  %i.do = getelementptr inbounds nuw i8, ptr %.val.i.i, i64 %.sroa.6.121.i.i.i
  %i.dp = load i8, ptr %i.do, align 1, !noalias !66518, !noundef !34 ; 2 uses
  %i.dq = icmp sgt i8 %i.dp, -1
  br i1 %i.dq, label %bb.h, label %bb.k, !prof !37

bb.h:                                             ; preds = %bb.g
  %.val2.i.i.i.i = load <16 x i8>, ptr %.val.i.i, align 16, !noalias !66518
  %i.dr = icmp slt <16 x i8> %.val2.i.i.i.i, zeroinitializer
  %i.ds = bitcast <16 x i1> %i.dr to i16          ; 2 uses
  %i.dt = icmp ne i16 %i.ds, 0
  tail call void @llvm.assume(i1 %i.dt)
  %i.du = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.ds, i1 true)
  %i.dv = zext nneg i16 %i.du to i64              ; 2 uses
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %.val.i.i, i64 %i.dv
  %.pre.i = load i8, ptr %.phi.trans.insert.i, align 1, !noalias !66519
  br label %bb.k

bb.i:                                             ; preds = %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$24find_or_find_insert_slot28_$u7b$$u7b$closure$u7d$$u7d$17h5fd717bd6338217aE.exit.i.i"
  %i.dw = load i64, ptr %i.cc, align 8, !alias.scope !66508, !noalias !66510, !noundef !34 ; 2 uses
  %i.dx = icmp ult i64 %.val.i.i.i, %i.dw
  br i1 %i.dx, label %bb.j, label %.invoke.i

bb.j:                                             ; preds = %bb.i
  %i.dy = load ptr, ptr %i.ca, align 8, !alias.scope !66508, !noalias !66510, !nonnull !34, !noundef !34
  %i.dz = getelementptr inbounds nuw [40 x i8], ptr %i.dy, i64 %.val.i.i.i ; 2 uses
  %i.ea = load ptr, ptr %i.dz, align 8, !noalias !66510, !nonnull !34, !noundef !34
  store ptr %2, ptr %i.dz, align 8, !noalias !66510
  br label %bb.ab

.invoke.i:                                        ; preds = %.lr.ph.i.i.i, %bb.i
  %i.eb = phi i64 [ %i.dw, %bb.i ], [ %i.cd, %.lr.ph.i.i.i ]
  %i.ec = phi ptr [ @1451, %bb.i ], [ @1446, %.lr.ph.i.i.i ]
  invoke void @_ZN4core9panicking18panic_bounds_check17hbc09f5d79f1a5789E(i64 noundef %.val.i.i.i, i64 noundef %i.eb, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ec) #59
          to label %.cont.i unwind label %bb.z, !noalias !66510

.cont.i:                                          ; preds = %.invoke.i
  unreachable

bb.k:                                             ; preds = %bb.h, %bb.g
  %i.ed = phi i8 [ %.pre.i, %bb.h ], [ %i.dp, %bb.g ]
  %.sroa.3.0.i.ph.i.i = phi i64 [ %i.dv, %bb.h ], [ %.sroa.6.121.i.i.i, %bb.g ] ; 3 uses
  %i.ee = load i64, ptr %i.cc, align 8, !alias.scope !66508, !noalias !66510, !noundef !34 ; 2 uses
  %i.ef = icmp ult i64 %i.ee, 230584300921369396
  tail call void @llvm.assume(i1 %i.ef)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !66520)
  %i.eg = getelementptr inbounds nuw i8, ptr %.val.i.i, i64 %.sroa.3.0.i.ph.i.i
  %i.eh = and i8 %i.ed, 1
  %i.ei = zext nneg i8 %i.eh to i64
  %i.ej = add i64 %.sroa.3.0.i.ph.i.i, -16
  %i.ek = and i64 %i.ej, %.val7.i.i
  store i8 %i.cl, ptr %i.eg, align 1, !noalias !66519
  %i.el = getelementptr i8, ptr %.val.i.i, i64 %i.ek
  %i.em = getelementptr i8, ptr %i.el, i64 16
  store i8 %i.cl, ptr %i.em, align 1, !noalias !66519
  %i.en = load <2 x i64>, ptr %i.cf, align 8, !alias.scope !66521, !noalias !66510
  %i.eo = insertelement <2 x i64> <i64 poison, i64 -1>, i64 %i.ei, i64 0
  %i.ep = sub <2 x i64> %i.en, %i.eo
  store <2 x i64> %i.ep, ptr %i.cf, align 8, !alias.scope !66521, !noalias !66510
  %i.eq = sub nsw i64 0, %.sroa.3.0.i.ph.i.i
  %i.er = getelementptr inbounds [8 x i8], ptr %.val.i.i, i64 %i.eq
  %i.es = getelementptr inbounds i8, ptr %i.er, i64 -8
  store i64 %i.ee, ptr %i.es, align 8, !noalias !66519
  tail call void @llvm.experimental.noalias.scope.decl(metadata !66522)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !66509
  store ptr %2, ptr %i.e, align 8, !noalias !66523
  %i.et = load i64, ptr %i.cc, align 8, !alias.scope !66524, !noalias !66525, !noundef !34 ; 13 uses
  %i.eu = icmp ult i64 %i.et, 230584300921369396
  tail call void @llvm.assume(i1 %i.eu)
  %i.ev = load i64, ptr %0, align 8, !range !42, !alias.scope !66524, !noalias !66525, !noundef !34
  %i.ew = icmp eq i64 %i.et, %i.ev
  br i1 %i.ew, label %bb.l, label %.sink.split.i.i

bb.l:                                             ; preds = %bb.k
  %i.ex = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.ey = load i64, ptr %i.ex, align 8, !alias.scope !66524, !noalias !66525, !noundef !34
  %i.ez = load i64, ptr %i.cf, align 8, !alias.scope !66524, !noalias !66525, !noundef !34
  %i.fa = add i64 %i.ez, %i.ey                    ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !66526)
  %.sroa.0.0.i.i.i.i = tail call noundef i64 @llvm.umin.i64(i64 %i.fa, i64 230584300921369395) ; 4 uses
  %i.fb = sub nsw i64 %.sroa.0.0.i.i.i.i, %i.et
  %i.fc = icmp ugt i64 %i.fb, 1
  br i1 %i.fc, label %bb.q, label %bb.m

bb.m:                                             ; preds = %bb.s, %bb.q, %bb.l
  tail call void @llvm.experimental.noalias.scope.decl(metadata !66527)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !66528)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !66529)
  %i.fd = add nuw nsw i64 %i.et, 1                ; 2 uses
  %i.fe = mul nuw nsw i64 %i.fd, 40
  %i.ff = icmp samesign ugt i64 %i.et, 230584300921369394
  br i1 %i.ff, label %bb.p, label %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i, !prof !49

_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i: ; preds = %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !66530
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !66530
  %i.fg = icmp eq i64 %i.et, 0
  br i1 %i.fg, label %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$14current_memory17hedf2a25ccd017d7cE.exit.i.i.i.i.i.i", label %bb.n

bb.n:                                             ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i
  %.val28.i.i.i.i.i.i = load ptr, ptr %i.ca, align 8, !alias.scope !66531, !noalias !66525, !nonnull !34, !noundef !34
  %i.fh = mul nuw nsw i64 %i.et, 40
  store ptr %.val28.i.i.i.i.i.i, ptr %i.c, align 8, !alias.scope !66532, !noalias !66530
  %.sroa.5.0..sroa_idx.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store i64 %i.fh, ptr %.sroa.5.0..sroa_idx.i.i.i.i.i.i.i, align 8, !alias.scope !66532, !noalias !66530
  br label %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$14current_memory17hedf2a25ccd017d7cE.exit.i.i.i.i.i.i"

"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$14current_memory17hedf2a25ccd017d7cE.exit.i.i.i.i.i.i": ; preds = %bb.n, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i
  %.sink.i.i.i.i.i.i.i = phi i64 [ 8, %bb.n ], [ 0, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i ]
  %i.fi = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store i64 %.sink.i.i.i.i.i.i.i, ptr %i.fi, align 8, !alias.scope !66532, !noalias !66530
  call fastcc void @_ZN5alloc7raw_vec11finish_grow17hc93339b46dcf7ba3E(ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.d, i64 noundef 8, i64 noundef %i.fe, ptr noalias noundef readonly align 8 captures(address) dereferenceable(24) %i.c), !noalias !66533
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !66530
  %i.fj = load i64, ptr %i.d, align 8, !range !55, !noalias !66530, !noundef !34
  %i.fk = trunc nuw i64 %i.fj to i1
  %i.fl = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 2 uses
  br i1 %i.fk, label %bb.o, label %_ZN8indexmap3map4core15reserve_entries17h799f926a28f87bc6E.exit.thread9.i.i

bb.o:                                             ; preds = %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$14current_memory17hedf2a25ccd017d7cE.exit.i.i.i.i.i.i"
  %i.fm = load i64, ptr %i.fl, align 8, !range !57, !noalias !66530, !noundef !34
  %i.fn = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.fo = load i64, ptr %i.fn, align 8, !noalias !66530
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !66530
  br label %bb.p

_ZN8indexmap3map4core15reserve_entries17h799f926a28f87bc6E.exit.thread9.i.i: ; preds = %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$14current_memory17hedf2a25ccd017d7cE.exit.i.i.i.i.i.i"
  %i.fp = load ptr, ptr %i.fl, align 8, !noalias !66530, !nonnull !34, !noundef !34
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !66530
  store ptr %i.fp, ptr %i.ca, align 8, !alias.scope !66531, !noalias !66525
  store i64 %i.fd, ptr %0, align 8, !alias.scope !66534, !noalias !66525
  br label %.sink.split.i.i

bb.p:                                             ; preds = %bb.o, %bb.m
  %.sroa.3.0.i.ph.i.i.i.i = phi i64 [ %i.fo, %bb.o ], [ undef, %bb.m ]
  %.sroa.0.0.i.ph.i.i.i.i = phi i64 [ %i.fm, %bb.o ], [ 0, %bb.m ]
  invoke void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef %.sroa.0.0.i.ph.i.i.i.i, i64 %.sroa.3.0.i.ph.i.i.i.i, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1449) #59
          to label %.noexc.i.i unwind label %bb.w, !noalias !66535

.noexc.i.i:                                       ; preds = %bb.p
  unreachable

bb.q:                                             ; preds = %bb.l
  tail call void @llvm.experimental.noalias.scope.decl(metadata !66536)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !66537)
  %i.fq = icmp ult i64 %i.fa, %i.et
  br i1 %i.fq, label %bb.m, label %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i, !prof !37

_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i: ; preds = %bb.q
  %i.fr = mul nuw nsw i64 %.sroa.0.0.i.i.i.i, 40
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !66538
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !66538
  %i.fs = icmp eq i64 %i.et, 0
  br i1 %i.fs, label %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$14current_memory17hedf2a25ccd017d7cE.exit.i.i.i.i.i", label %bb.r

bb.r:                                             ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i
  %.val28.i.i.i.i.i = load ptr, ptr %i.ca, align 8, !alias.scope !66539, !noalias !66525, !nonnull !34, !noundef !34
  %i.ft = mul nuw nsw i64 %i.et, 40
  store ptr %.val28.i.i.i.i.i, ptr %i.a, align 8, !alias.scope !66540, !noalias !66538
  %.sroa.5.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i64 %i.ft, ptr %.sroa.5.0..sroa_idx.i.i.i.i.i.i, align 8, !alias.scope !66540, !noalias !66538
  br label %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$14current_memory17hedf2a25ccd017d7cE.exit.i.i.i.i.i"

"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$14current_memory17hedf2a25ccd017d7cE.exit.i.i.i.i.i": ; preds = %bb.r, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i
  %.sink.i.i.i.i.i.i = phi i64 [ 8, %bb.r ], [ 0, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i ]
  %i.fu = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 %.sink.i.i.i.i.i.i, ptr %i.fu, align 8, !alias.scope !66540, !noalias !66538
end_hunk_7
begin_hunk_8_@"_ZN98_$LT$core..iter..adapters..take..Take$LT$I$GT$$u20$as$u20$core..iter..adapters..take..SpecTake$GT$9spec_fold17h914dd00474b55a94E":bb.a
bb.h:                                             ; preds = %bb.c
  %i.s = landingpad { ptr, i32 }
          cleanup
  store ptr %storemerge.i.i, ptr %i.d, align 8, !noalias !69046
  invoke void @"_ZN4core3ptr63drop_in_place$LT$nickel_lang_core..eval..value..NickelValue$GT$17h2043370c4e326e18E"(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.d) #61
          to label %.body unwind label %bb.i, !noalias !69045

bb.i:                                             ; preds = %bb.h
  %i.t = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #60, !noalias !69045
  unreachable

.sink.split.i:                                    ; preds = %.noexc, %bb.d
  %.sroa.0.0.ph.i = phi ptr [ %storemerge.i.i, %bb.d ], [ %i.q, %.noexc ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !69046
  br label %"_ZN100_$LT$core..iter..adapters..take..Take$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$8try_fold17h604ed7175f803b9dE.exit"

bb.j:                                             ; preds = %"_ZN4core3ops9try_trait26NeverShortCircuit$LT$T$GT$10wrap_mut_228_$u7b$$u7b$closure$u7d$$u7d$17h43480be40bc45a14E.exit.i.i.i"
  %i.u = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.f, %bb.h, %bb.j
  %eh.lpad-body = phi { ptr, i32 } [ %i.u, %bb.j ], [ %i.o, %bb.f ], [ %i.s, %bb.h ]
  invoke fastcc void @"_ZN4core3ptr158drop_in_place$LT$core..iter..adapters..take..Take$LT$nickel_lang_vector..vector..IntoIter$LT$nickel_lang_core..eval..value..NickelValue$C$32_usize$GT$$GT$$GT$17h1fa4483b3b062423E"(ptr noalias noundef align 8 dereferenceable(304) %0) #61
          to label %common.resume unwind label %bb.m

"_ZN100_$LT$core..iter..adapters..take..Take$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$8try_fold17h604ed7175f803b9dE.exit": ; preds = %.sink.split.i, %bb.a
  %.sroa.0.0.i = phi ptr [ %1, %bb.a ], [ %.sroa.0.0.ph.i, %.sink.split.i ]
  call void @llvm.experimental.noalias.scope.decl(metadata !69050)
  call void @llvm.experimental.noalias.scope.decl(metadata !69051)
  invoke fastcc void @"_ZN4core3ptr219drop_in_place$LT$alloc..vec..Vec$LT$imbl_sized_chunks..sized_chunk..iter..Iter$LT$alloc..rc..Rc$LT$nickel_lang_vector..vector..Node$LT$nickel_lang_core..eval..value..NickelValue$C$32_usize$GT$$GT$$C$32_usize$GT$$GT$$GT$17h15daeca63aa1660fE"(ptr noalias noundef nonnull readonly align 8 dereferenceable(304) %0)
          to label %"_ZN4core3ptr158drop_in_place$LT$core..iter..adapters..take..Take$LT$nickel_lang_vector..vector..IntoIter$LT$nickel_lang_core..eval..value..NickelValue$C$32_usize$GT$$GT$$GT$17h1fa4483b3b062423E.exit" unwind label %bb.k

bb.k:                                             ; preds = %"_ZN100_$LT$core..iter..adapters..take..Take$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$8try_fold17h604ed7175f803b9dE.exit"
  %i.v = landingpad { ptr, i32 }
          cleanup
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 280
  %i.y = load i64, ptr %i.x, align 8, !alias.scope !69052, !noundef !34 ; 2 uses
  %i.z = getelementptr inbounds nuw [8 x i8], ptr %i.w, i64 %i.y
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 288
  %i.ab = load i64, ptr %i.aa, align 8, !alias.scope !69052, !noundef !34
  %i.ac = sub i64 %i.ab, %i.y
  invoke fastcc void @"_ZN4core3ptr73drop_in_place$LT$$u5b$nickel_lang_core..eval..value..NickelValue$u5d$$GT$17h60f6974b28fae480E"(ptr noalias noundef nonnull readonly align 8 %i.z, i64 noundef %i.ac)
          to label %common.resume unwind label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ad = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #60, !noalias !69053
  unreachable

common.resume:                                    ; preds = %.body, %bb.k
  %common.resume.op = phi { ptr, i32 } [ %i.v, %bb.k ], [ %eh.lpad-body, %.body ]
  resume { ptr, i32 } %common.resume.op

"_ZN4core3ptr158drop_in_place$LT$core..iter..adapters..take..Take$LT$nickel_lang_vector..vector..IntoIter$LT$nickel_lang_core..eval..value..NickelValue$C$32_usize$GT$$GT$$GT$17h1fa4483b3b062423E.exit": ; preds = %"_ZN100_$LT$core..iter..adapters..take..Take$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$8try_fold17h604ed7175f803b9dE.exit"
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 280
  %i.ag = load i64, ptr %i.af, align 8, !alias.scope !69054, !noundef !34 ; 2 uses
  %i.ah = getelementptr inbounds nuw [8 x i8], ptr %i.ae, i64 %i.ag
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 288
  %i.aj = load i64, ptr %i.ai, align 8, !alias.scope !69054, !noundef !34
  %i.ak = sub i64 %i.aj, %i.ag
  call fastcc void @"_ZN4core3ptr73drop_in_place$LT$$u5b$nickel_lang_core..eval..value..NickelValue$u5d$$GT$17h60f6974b28fae480E"(ptr noalias noundef nonnull readonly align 8 %i.ah, i64 noundef %i.ak)
  ret ptr %.sroa.0.0.i

bb.m:                                             ; preds = %.body
  %i.al = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #60
  unreachable
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @"_ZN99_$LT$alloc..collections..btree..map..IntoIter$LT$K$C$V$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h8a9d24528faf1811E"(ptr noalias noundef nonnull align 8 dereferenceable(72) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [24 x i8], align 8                ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call fastcc void @"_ZN5alloc11collections5btree3map25IntoIter$LT$K$C$V$C$A$GT$10dying_next17he4f97997c0346755E"(ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.b, ptr noalias noundef align 8 dereferenceable(72) %0)
  %i.c = load ptr, ptr %i.b, align 8, !noundef !34 ; 2 uses
  %.not5 = icmp eq ptr %i.c, null
  br i1 %.not5, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %.sroa.22.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %"_ZN5alloc11collections5btree4node173Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Dying$C$K$C$V$C$NodeType$GT$$C$alloc..collections..btree..node..marker..KV$GT$12drop_key_val17h102f0f68b0527d28E.exit"
  %i.d = phi ptr [ %i.c, %.lr.ph ], [ %i.k, %"_ZN5alloc11collections5btree4node173Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Dying$C$K$C$V$C$NodeType$GT$$C$alloc..collections..btree..node..marker..KV$GT$12drop_key_val17h102f0f68b0527d28E.exit" ] ; 2 uses
  %.sroa.22.0.copyload = load i64, ptr %.sroa.22.0..sroa_idx, align 8 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %0, ptr %i.a, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.f = getelementptr inbounds nuw [40 x i8], ptr %i.e, i64 %.sroa.22.0.copyload ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 448
  %i.h = getelementptr inbounds nuw [56 x i8], ptr %i.g, i64 %.sroa.22.0.copyload
  %.val.i = load i64, ptr %i.f, align 8, !range !57, !noalias !69063, !noundef !34 ; 2 uses
  %switch = icmp sgt i64 %.val.i, 0
  br i1 %switch, label %bb.c, label %"_ZN4core3ptr89drop_in_place$LT$serde_spanned..spanned..Spanned$LT$alloc..borrow..Cow$LT$str$GT$$GT$$GT$17hca8b1d6903c1799cE.exit"

bb.c:                                             ; preds = %bb.b
  %i.i = getelementptr i8, ptr %i.f, i64 8
  %.val5.i = load ptr, ptr %i.i, align 8, !noalias !69063, !nonnull !34, !noundef !34
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val5.i, i64 noundef %.val.i, i64 noundef range(i64 1, -9223372036854775807) 1) #53, !noalias !69064
  br label %"_ZN4core3ptr89drop_in_place$LT$serde_spanned..spanned..Spanned$LT$alloc..borrow..Cow$LT$str$GT$$GT$$GT$17hca8b1d6903c1799cE.exit"

"_ZN4core3ptr89drop_in_place$LT$serde_spanned..spanned..Spanned$LT$alloc..borrow..Cow$LT$str$GT$$GT$$GT$17hca8b1d6903c1799cE.exit": ; preds = %bb.b, %bb.c
  invoke fastcc void @"_ZN4core3ptr94drop_in_place$LT$serde_spanned..spanned..Spanned$LT$toml..de..parser..devalue..DeValue$GT$$GT$17hf0e07dac06a18c79E"(ptr noalias noundef align 8 dereferenceable(56) %i.h)
          to label %"_ZN5alloc11collections5btree4node173Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Dying$C$K$C$V$C$NodeType$GT$$C$alloc..collections..btree..node..marker..KV$GT$12drop_key_val17h102f0f68b0527d28E.exit" unwind label %.body, !inline_history !69061

._crit_edge:                                      ; preds = %"_ZN5alloc11collections5btree4node173Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Dying$C$K$C$V$C$NodeType$GT$$C$alloc..collections..btree..node..marker..KV$GT$12drop_key_val17h102f0f68b0527d28E.exit", %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret void

.body:                                            ; preds = %"_ZN4core3ptr89drop_in_place$LT$serde_spanned..spanned..Spanned$LT$alloc..borrow..Cow$LT$str$GT$$GT$$GT$17hca8b1d6903c1799cE.exit"
  %i.j = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN174_$LT$$LT$alloc..collections..btree..map..IntoIter$LT$K$C$V$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$..drop..DropGuard$LT$K$C$V$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h33e39a88abe45cfbE"(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.a)
          to label %"_ZN4core3ptr311drop_in_place$LT$$LT$alloc..collections..btree..map..IntoIter$LT$K$C$V$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$..drop..DropGuard$LT$serde_spanned..spanned..Spanned$LT$alloc..borrow..Cow$LT$str$GT$$GT$$C$serde_spanned..spanned..Spanned$LT$toml..de..parser..devalue..DeValue$GT$$C$alloc..alloc..Global$GT$$GT$17h1cab0708363f5652E.exit" unwind label %bb.d, !inline_history !69062

"_ZN5alloc11collections5btree4node173Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Dying$C$K$C$V$C$NodeType$GT$$C$alloc..collections..btree..node..marker..KV$GT$12drop_key_val17h102f0f68b0527d28E.exit": ; preds = %"_ZN4core3ptr89drop_in_place$LT$serde_spanned..spanned..Spanned$LT$alloc..borrow..Cow$LT$str$GT$$GT$$GT$17hca8b1d6903c1799cE.exit"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call fastcc void @"_ZN5alloc11collections5btree3map25IntoIter$LT$K$C$V$C$A$GT$10dying_next17he4f97997c0346755E"(ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.b, ptr noalias noundef align 8 dereferenceable(72) %0)
  %i.k = load ptr, ptr %i.b, align 8, !noundef !34 ; 2 uses
  %.not = icmp eq ptr %i.k, null
  br i1 %.not, label %._crit_edge, label %bb.b

bb.d:                                             ; preds = %.body
  %i.l = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #60
  unreachable

"_ZN4core3ptr311drop_in_place$LT$$LT$alloc..collections..btree..map..IntoIter$LT$K$C$V$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$..drop..DropGuard$LT$serde_spanned..spanned..Spanned$LT$alloc..borrow..Cow$LT$str$GT$$GT$$C$serde_spanned..spanned..Spanned$LT$toml..de..parser..devalue..DeValue$GT$$C$alloc..alloc..Global$GT$$GT$17h1cab0708363f5652E.exit": ; preds = %.body
  resume { ptr, i32 } %i.j
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @"_ZN9hashbrown3map28HashMap$LT$K$C$V$C$S$C$A$GT$6insert17h3905951cfa884ed9E"(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(96) %0, ptr noalias noundef nonnull align 8 dereferenceable(48) %1, i32 noundef %2, ptr noalias noundef nonnull align 8 captures(address) dead_on_return dereferenceable(96) %3) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %.sroa.4 = alloca [100 x i8], align 4           ; 4 uses
  %i.a = alloca [4 x i8], align 4                 ; 2 uses
  store i32 %2, ptr %i.a, align 4
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %.val = load i64, ptr %i.b, align 8, !noundef !34
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 40
  %.val7 = load i64, ptr %i.c, align 8, !noundef !34
  %i.d = call fastcc noundef i64 @_ZN4core4hash11BuildHasher8hash_one17h2c3c047f98ecaf7dE(i64 %.val, i64 %.val7, ptr noalias noundef readonly align 4 captures(address, read_provenance) dereferenceable(4) %i.a) ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  %i.f = load i64, ptr %i.e, align 8, !alias.scope !69079, !noalias !69080, !noundef !34
  %i.g = icmp eq i64 %i.f, 0
  br i1 %i.g, label %bb.b, label %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$7reserve17ha2f67ab3ffdc0ba9E.exit.i", !prof !37

bb.b:                                             ; preds = %bb.a
  %i.h = invoke { i64, i64 } @"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$14reserve_rehash17hfca6284fad5493d6E"(ptr noalias noundef nonnull align 8 dereferenceable(32) %1, i64 noundef 1, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.b, i1 noundef zeroext true)
          to label %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$7reserve17ha2f67ab3ffdc0ba9E.exit.i" unwind label %bb.l ; 0 uses

"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$7reserve17ha2f67ab3ffdc0ba9E.exit.i": ; preds = %bb.b, %bb.a
  %.val.i = load ptr, ptr %1, align 8, !alias.scope !69081, !noalias !69082, !nonnull !34, !noundef !34 ; 8 uses
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val7.i = load i64, ptr %i.i, align 8, !alias.scope !69081, !noalias !69082, !noundef !34 ; 4 uses
  %i.j = lshr i64 %i.d, 57
  %i.k = trunc nuw nsw i64 %i.j to i8             ; 3 uses
  %.sroa.0.0.vec.insert.i.i.i = insertelement <16 x i8> poison, i8 %i.k, i64 0
  %.sroa.0.15.vec.insert.i.i.i = shufflevector <16 x i8> %.sroa.0.0.vec.insert.i.i.i, <16 x i8> poison, <16 x i32> zeroinitializer
  br label %bb.c

bb.c:                                             ; preds = %bb.f, %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$7reserve17ha2f67ab3ffdc0ba9E.exit.i"
  %.pn.i.i = phi i64 [ %i.d, %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$7reserve17ha2f67ab3ffdc0ba9E.exit.i" ], [ %i.aj, %bb.f ]
  %.sroa.6.0.i.i = phi i64 [ undef, %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$7reserve17ha2f67ab3ffdc0ba9E.exit.i" ], [ %.sroa.6.120.i.i, %bb.f ]
  %.sroa.01.0.i.i = phi i64 [ 0, %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$7reserve17ha2f67ab3ffdc0ba9E.exit.i" ], [ %.sroa.01.122.i.i, %bb.f ]
  %i.l = phi i64 [ 0, %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$7reserve17ha2f67ab3ffdc0ba9E.exit.i" ], [ %i.ai, %bb.f ]
  %.sroa.0.017.i.i = and i64 %.pn.i.i, %.val7.i   ; 4 uses
  %i.m = getelementptr inbounds nuw i8, ptr %.val.i, i64 %.sroa.0.017.i.i
  %.sroa.0.0.copyload.i24.i.i = load <16 x i8>, ptr %i.m, align 1, !noalias !69083 ; 3 uses
  %i.n = icmp eq <16 x i8> %.sroa.0.0.copyload.i24.i.i, %.sroa.0.15.vec.insert.i.i.i
  %i.o = bitcast <16 x i1> %i.n to i16            ; 2 uses
  %.not25.i.i = icmp eq i16 %i.o, 0
  br i1 %.not25.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.c, %bb.d
  %.sroa.05.026.i.i = phi i16 [ %i.y, %bb.d ], [ %i.o, %bb.c ] ; 3 uses
  %i.p = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.05.026.i.i, i1 true)
  %i.q = zext nneg i16 %i.p to i64
  %i.r = add i64 %.sroa.0.017.i.i, %i.q
  %i.s = and i64 %i.r, %.val7.i
  %i.t = sub nsw i64 0, %i.s
  %i.u = getelementptr inbounds [104 x i8], ptr %.val.i, i64 %i.t ; 2 uses
  %i.v = getelementptr inbounds i8, ptr %i.u, i64 -104
  %.val3.i.i = load i32, ptr %i.v, align 4, !noalias !69084, !noundef !34
  %i.w = icmp eq i32 %2, %.val3.i.i
  br i1 %i.w, label %bb.i, label %bb.d, !prof !40

._crit_edge.i.i:                                  ; preds = %bb.d, %bb.c
  %.not13.i.i = icmp eq i64 %.sroa.01.0.i.i, 0
  br i1 %.not13.i.i, label %bb.e, label %.thread.i.i, !prof !40

bb.d:                                             ; preds = %.lr.ph.i.i
  %i.x = add i16 %.sroa.05.026.i.i, -1
  %i.y = and i16 %i.x, %.sroa.05.026.i.i          ; 2 uses
  %.not.i.i = icmp eq i16 %i.y, 0
  br i1 %.not.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i

bb.e:                                             ; preds = %._crit_edge.i.i
  %i.z = icmp slt <16 x i8> %.sroa.0.0.copyload.i24.i.i, zeroinitializer
  %i.aa = bitcast <16 x i1> %i.z to i16           ; 2 uses
  %.not.not.i.not.i.i = icmp eq i16 %i.aa, 0      ; 2 uses
  %i.ab = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.aa, i1 true)
  %i.ac = zext nneg i16 %i.ab to i64
  %.sroa.6.0.i.i.i = select i1 %.not.not.i.not.i.i, i64 undef, i64 %i.ac
  %i.ad = add i64 %.sroa.6.0.i.i.i, %.sroa.0.017.i.i
  %i.ae = and i64 %i.ad, %.val7.i
  br i1 %.not.not.i.not.i.i, label %bb.f, label %.thread.i.i

.thread.i.i:                                      ; preds = %bb.e, %._crit_edge.i.i
  %.sroa.6.121.i.i = phi i64 [ %i.ae, %bb.e ], [ %.sroa.6.0.i.i, %._crit_edge.i.i ] ; 3 uses
  %i.af = icmp eq <16 x i8> %.sroa.0.0.copyload.i24.i.i, splat (i8 -1)
  %i.ag = bitcast <16 x i1> %i.af to i16
  %i.ah = icmp eq i16 %i.ag, 0
  br i1 %i.ah, label %bb.f, label %bb.g, !prof !37

bb.f:                                             ; preds = %.thread.i.i, %bb.e
  %.sroa.01.122.i.i = phi i64 [ 1, %.thread.i.i ], [ 0, %bb.e ]
  %.sroa.6.120.i.i = phi i64 [ %.sroa.6.121.i.i, %.thread.i.i ], [ undef, %bb.e ]
  %i.ai = add i64 %i.l, 16                        ; 2 uses
  %i.aj = add i64 %i.ai, %.sroa.0.017.i.i
  br label %bb.c

bb.g:                                             ; preds = %.thread.i.i
  %i.ak = getelementptr inbounds nuw i8, ptr %.val.i, i64 %.sroa.6.121.i.i
  %i.al = load i8, ptr %i.ak, align 1, !noalias !69085, !noundef !34 ; 2 uses
  %i.am = icmp sgt i8 %i.al, -1
  br i1 %i.am, label %bb.h, label %bb.k, !prof !37

bb.h:                                             ; preds = %bb.g
  %.val2.i.i.i = load <16 x i8>, ptr %.val.i, align 16, !noalias !69085
  %i.an = icmp slt <16 x i8> %.val2.i.i.i, zeroinitializer
  %i.ao = bitcast <16 x i1> %i.an to i16          ; 2 uses
  %i.ap = icmp ne i16 %i.ao, 0
  tail call void @llvm.assume(i1 %i.ap)
  %i.aq = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.ao, i1 true)
  %i.ar = zext nneg i16 %i.aq to i64              ; 2 uses
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %.val.i, i64 %i.ar
  %.pre = load i8, ptr %.phi.trans.insert, align 1, !noalias !69086
  br label %bb.k

bb.i:                                             ; preds = %.lr.ph.i.i
  %i.as = getelementptr inbounds i8, ptr %i.u, i64 -96 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef nonnull align 8 dereferenceable(96) %i.as, i64 96, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %i.as, ptr noundef nonnull align 8 dereferenceable(96) %3, i64 96, i1 false)
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.k
  ret void

bb.k:                                             ; preds = %bb.h, %bb.g
  %i.at = phi i8 [ %.pre, %bb.h ], [ %i.al, %bb.g ]
  %.sroa.3.0.i.ph.i = phi i64 [ %i.ar, %bb.h ], [ %.sroa.6.121.i.i, %bb.g ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.4)
  %.sroa.4.8..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.4, i64 4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(96) %.sroa.4.8..sroa_idx, ptr noundef nonnull align 8 dereferenceable(96) %3, i64 96, i1 false)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !69087)
  %i.au = getelementptr inbounds nuw i8, ptr %.val.i, i64 %.sroa.3.0.i.ph.i
  %i.av = and i8 %i.at, 1
  %i.aw = zext nneg i8 %i.av to i64
  %i.ax = add i64 %.sroa.3.0.i.ph.i, -16
  %i.ay = and i64 %i.ax, %.val7.i
  store i8 %i.k, ptr %i.au, align 1, !noalias !69086
  %i.az = getelementptr i8, ptr %.val.i, i64 %i.ay
  %i.ba = getelementptr i8, ptr %i.az, i64 16
  store i8 %i.k, ptr %i.ba, align 1, !noalias !69086
  %i.bb = load <2 x i64>, ptr %i.e, align 8, !alias.scope !69087, !noalias !69088
  %i.bc = insertelement <2 x i64> <i64 poison, i64 -1>, i64 %i.aw, i64 0
  %i.bd = sub <2 x i64> %i.bb, %i.bc
  store <2 x i64> %i.bd, ptr %i.e, align 8, !alias.scope !69087, !noalias !69088
  %i.be = sub nsw i64 0, %.sroa.3.0.i.ph.i
  %i.bf = getelementptr inbounds [104 x i8], ptr %.val.i, i64 %i.be ; 2 uses
  %i.bg = getelementptr inbounds i8, ptr %i.bf, i64 -104
  store i32 %2, ptr %i.bg, align 8, !noalias !69087
  %.sroa.4.0..sroa_idx = getelementptr inbounds i8, ptr %i.bf, i64 -100
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(100) %.sroa.4.0..sroa_idx, ptr noundef nonnull align 4 dereferenceable(100) %.sroa.4, i64 100, i1 false), !noalias !69087
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.4)
  store i64 20, ptr %0, align 8
  br label %bb.j

bb.l:                                             ; preds = %bb.b
  %i.bh = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr58drop_in_place$LT$nickel_lang_core..typecheck..UnifType$GT$17hf9c23f0fe2c318b0E"(ptr noalias noundef align 8 dereferenceable(96) %3) #61
          to label %bb.n unwind label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bi = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #60
  unreachable

bb.n:                                             ; preds = %bb.l
  resume { ptr, i32 } %i.bh
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @"_ZN9hashbrown3map28HashMap$LT$K$C$V$C$S$C$A$GT$6insert17h89ba703ad2a8399cE"(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(88) %0, ptr noalias noundef nonnull align 8 dereferenceable(48) %1, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(24) %2, ptr noalias noundef nonnull align 8 captures(address) dead_on_return dereferenceable(88) %3) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [112 x i8], align 8               ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %.val11 = load i64, ptr %i.b, align 8, !noundef !34
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 40
  %.val12 = load i64, ptr %i.c, align 8, !noundef !34
  %i.d = tail call fastcc noundef i64 @_ZN4core4hash11BuildHasher8hash_one17hd2327dc712b48f3aE(i64 %.val11, i64 %.val12, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %2) ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !69106)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !69107)
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  %i.f = load i64, ptr %i.e, align 8, !alias.scope !69108, !noalias !69109, !noundef !34
  %i.g = icmp eq i64 %i.f, 0
  br i1 %i.g, label %bb.b, label %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$7reserve17h008f3f93aa53be37E.exit.i", !prof !37

bb.b:                                             ; preds = %bb.a
  %i.h = invoke fastcc i64 @"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$14reserve_rehash17hb4a5ac33bbfeb753E"(ptr noalias noundef nonnull align 8 dereferenceable(32) %1, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.b)
          to label %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$7reserve17h008f3f93aa53be37E.exit.i" unwind label %bb.k ; 0 uses

"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$7reserve17h008f3f93aa53be37E.exit.i": ; preds = %bb.b, %bb.a
  %.val.i = load ptr, ptr %1, align 8, !alias.scope !69106, !noalias !69110, !nonnull !34, !noundef !34 ; 11 uses
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val7.i = load i64, ptr %i.i, align 8, !alias.scope !69106, !noalias !69110, !noundef !34 ; 7 uses
  %i.j = lshr i64 %i.d, 57
  %i.k = trunc nuw nsw i64 %i.j to i8             ; 3 uses
  %.sroa.0.0.vec.insert.i.i.i = insertelement <16 x i8> poison, i8 %i.k, i64 0
  %.sroa.0.15.vec.insert.i.i.i = shufflevector <16 x i8> %.sroa.0.0.vec.insert.i.i.i, <16 x i8> poison, <16 x i32> zeroinitializer ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.val.i.i.i = load ptr, ptr %i.l, align 8, !alias.scope !69107, !noalias !69111 ; 5 uses
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 16
  %.val1.i.i.i = load i64, ptr %i.m, align 8, !alias.scope !69107, !noalias !69111
  %.val1.i.i.i.fr = freeze i64 %.val1.i.i.i       ; 6 uses
  %.not12.i.i.i.i.i.i.i = icmp eq i64 %.val1.i.i.i.fr, 0
  br i1 %.not12.i.i.i.i.i.i.i, label %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$7reserve17h008f3f93aa53be37E.exit.i.split.us", label %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$7reserve17h008f3f93aa53be37E.exit.i.split.preheader"

"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$7reserve17h008f3f93aa53be37E.exit.i.split.preheader": ; preds = %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$7reserve17h008f3f93aa53be37E.exit.i"
  %xtraiter = and i64 %.val1.i.i.i.fr, 1
  %i.n = icmp eq i64 %.val1.i.i.i.fr, 1
  %unroll_iter = and i64 %.val1.i.i.i.fr, -2
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %lcmp.mod49 = trunc i64 %.val1.i.i.i.fr to i1
  br label %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$7reserve17h008f3f93aa53be37E.exit.i.split"

"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$7reserve17h008f3f93aa53be37E.exit.i.split.us": ; preds = %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$7reserve17h008f3f93aa53be37E.exit.i", %bb.d
  %.pn.i.i.us = phi i64 [ %i.al, %bb.d ], [ %i.d, %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$7reserve17h008f3f93aa53be37E.exit.i" ]
  %.sroa.6.0.i.i.us = phi i64 [ %.sroa.6.120.i.i.us, %bb.d ], [ undef, %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$7reserve17h008f3f93aa53be37E.exit.i" ]
  %.sroa.01.0.i.i.us = phi i64 [ %.sroa.01.122.i.i.us, %bb.d ], [ 0, %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$7reserve17h008f3f93aa53be37E.exit.i" ]
  %i.o = phi i64 [ %i.ak, %bb.d ], [ 0, %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$7reserve17h008f3f93aa53be37E.exit.i" ]
  %.sroa.0.017.i.i.us = and i64 %.pn.i.i.us, %.val7.i ; 4 uses
  %i.p = getelementptr inbounds nuw i8, ptr %.val.i, i64 %.sroa.0.017.i.i.us
  %.sroa.0.0.copyload.i24.i.i.us = load <16 x i8>, ptr %i.p, align 1, !noalias !69112 ; 3 uses
  %i.q = icmp eq <16 x i8> %.sroa.0.0.copyload.i24.i.i.us, %.sroa.0.15.vec.insert.i.i.i
  %i.r = bitcast <16 x i1> %i.q to i16            ; 2 uses
  %.not25.i.i.us = icmp eq i16 %i.r, 0
  br i1 %.not25.i.i.us, label %._crit_edge.i.i.us, label %.lr.ph.i.i.us.us

.lr.ph.i.i.us.us:                                 ; preds = %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$7reserve17h008f3f93aa53be37E.exit.i.split.us", %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$24find_or_find_insert_slot28_$u7b$$u7b$closure$u7d$$u7d$17h1c09640a7aa21e0aE.exit.i.us.us"
  %.sroa.05.026.i.i.us.us = phi i16 [ %i.aa, %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$24find_or_find_insert_slot28_$u7b$$u7b$closure$u7d$$u7d$17h1c09640a7aa21e0aE.exit.i.us.us" ], [ %i.r, %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$7reserve17h008f3f93aa53be37E.exit.i.split.us" ] ; 3 uses
  %i.s = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.05.026.i.i.us.us, i1 true)
  %i.t = zext nneg i16 %i.s to i64
  %i.u = add i64 %.sroa.0.017.i.i.us, %i.t
  %i.v = and i64 %i.u, %.val7.i
  %i.w = sub nsw i64 0, %i.v                      ; 2 uses
  %i.x = getelementptr inbounds [112 x i8], ptr %.val.i, i64 %i.w
  %i.y = getelementptr i8, ptr %i.x, i64 -96
  %.val4.i.i.us.us = load i64, ptr %i.y, align 8, !noalias !69113, !noundef !34
  tail call void @llvm.experimental.noalias.scope.decl(metadata !69114)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !69115)
  %.not.i.i.i.i.i.i.i.us.us = icmp eq i64 %.val4.i.i.us.us, 0
  br i1 %.not.i.i.i.i.i.i.i.us.us, label %.loopexit, label %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$24find_or_find_insert_slot28_$u7b$$u7b$closure$u7d$$u7d$17h1c09640a7aa21e0aE.exit.i.us.us", !prof !115

"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$24find_or_find_insert_slot28_$u7b$$u7b$closure$u7d$$u7d$17h1c09640a7aa21e0aE.exit.i.us.us": ; preds = %.lr.ph.i.i.us.us
  %i.z = add i16 %.sroa.05.026.i.i.us.us, -1
  %i.aa = and i16 %i.z, %.sroa.05.026.i.i.us.us   ; 2 uses
  %.not.i.i.us.us = icmp eq i16 %i.aa, 0
  br i1 %.not.i.i.us.us, label %._crit_edge.i.i.us, label %.lr.ph.i.i.us.us

._crit_edge.i.i.us:                               ; preds = %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$24find_or_find_insert_slot28_$u7b$$u7b$closure$u7d$$u7d$17h1c09640a7aa21e0aE.exit.i.us.us", %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$7reserve17h008f3f93aa53be37E.exit.i.split.us"
  %.not13.i.i.us = icmp eq i64 %.sroa.01.0.i.i.us, 0
  br i1 %.not13.i.i.us, label %bb.c, label %.thread.i.i.us, !prof !40

bb.c:                                             ; preds = %._crit_edge.i.i.us
  %i.ab = icmp slt <16 x i8> %.sroa.0.0.copyload.i24.i.i.us, zeroinitializer
  %i.ac = bitcast <16 x i1> %i.ab to i16          ; 2 uses
  %.not.not.i.not.i.i.us = icmp eq i16 %i.ac, 0   ; 2 uses
  %i.ad = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.ac, i1 true)
  %i.ae = zext nneg i16 %i.ad to i64
  %.sroa.6.0.i.i.i.us = select i1 %.not.not.i.not.i.i.us, i64 undef, i64 %i.ae
  %i.af = add i64 %.sroa.6.0.i.i.i.us, %.sroa.0.017.i.i.us
  %i.ag = and i64 %i.af, %.val7.i
  br i1 %.not.not.i.not.i.i.us, label %bb.d, label %.thread.i.i.us

.thread.i.i.us:                                   ; preds = %bb.c, %._crit_edge.i.i.us
  %.sroa.6.121.i.i.us = phi i64 [ %i.ag, %bb.c ], [ %.sroa.6.0.i.i.us, %._crit_edge.i.i.us ] ; 2 uses
  %i.ah = icmp eq <16 x i8> %.sroa.0.0.copyload.i24.i.i.us, splat (i8 -1)
  %i.ai = bitcast <16 x i1> %i.ah to i16
  %i.aj = icmp eq i16 %i.ai, 0
  br i1 %i.aj, label %bb.d, label %.split.us, !prof !37

bb.d:                                             ; preds = %.thread.i.i.us, %bb.c
  %.sroa.01.122.i.i.us = phi i64 [ 1, %.thread.i.i.us ], [ 0, %bb.c ]
  %.sroa.6.120.i.i.us = phi i64 [ %.sroa.6.121.i.i.us, %.thread.i.i.us ], [ undef, %bb.c ]
  %i.ak = add i64 %i.o, 16                        ; 2 uses
  %i.al = add i64 %i.ak, %.sroa.0.017.i.i.us
  br label %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$7reserve17h008f3f93aa53be37E.exit.i.split.us"

"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$7reserve17h008f3f93aa53be37E.exit.i.split": ; preds = %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$7reserve17h008f3f93aa53be37E.exit.i.split.preheader", %bb.g
  %.pn.i.i = phi i64 [ %i.bu, %bb.g ], [ %i.d, %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$7reserve17h008f3f93aa53be37E.exit.i.split.preheader" ]
  %.sroa.6.0.i.i = phi i64 [ %.sroa.6.120.i.i, %bb.g ], [ undef, %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$7reserve17h008f3f93aa53be37E.exit.i.split.preheader" ]
  %.sroa.01.0.i.i = phi i64 [ %.sroa.01.122.i.i, %bb.g ], [ 0, %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$7reserve17h008f3f93aa53be37E.exit.i.split.preheader" ]
  %i.am = phi i64 [ %i.bt, %bb.g ], [ 0, %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$7reserve17h008f3f93aa53be37E.exit.i.split.preheader" ]
  %.sroa.0.017.i.i = and i64 %.pn.i.i, %.val7.i   ; 4 uses
  %i.an = getelementptr inbounds nuw i8, ptr %.val.i, i64 %.sroa.0.017.i.i
  %.sroa.0.0.copyload.i24.i.i = load <16 x i8>, ptr %i.an, align 1, !noalias !69112 ; 3 uses
  %i.ao = icmp eq <16 x i8> %.sroa.0.0.copyload.i24.i.i, %.sroa.0.15.vec.insert.i.i.i
  %i.ap = bitcast <16 x i1> %i.ao to i16          ; 2 uses
  %.not25.i.i = icmp eq i16 %i.ap, 0
  br i1 %.not25.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$7reserve17h008f3f93aa53be37E.exit.i.split", %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$24find_or_find_insert_slot28_$u7b$$u7b$closure$u7d$$u7d$17h1c09640a7aa21e0aE.exit.i"
  %.sroa.05.026.i.i = phi i16 [ %i.bj, %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$24find_or_find_insert_slot28_$u7b$$u7b$closure$u7d$$u7d$17h1c09640a7aa21e0aE.exit.i" ], [ %i.ap, %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$7reserve17h008f3f93aa53be37E.exit.i.split" ] ; 3 uses
  %i.aq = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.05.026.i.i, i1 true)
  %i.ar = zext nneg i16 %i.aq to i64
  %i.as = add i64 %.sroa.0.017.i.i, %i.ar
  %i.at = and i64 %i.as, %.val7.i
  %i.au = sub nsw i64 0, %i.at                    ; 3 uses
  %i.av = getelementptr inbounds [112 x i8], ptr %.val.i, i64 %i.au ; 2 uses
  %i.aw = getelementptr i8, ptr %i.av, i64 -104
  %.val3.i.i = load ptr, ptr %i.aw, align 8, !noalias !69113, !nonnull !34, !noundef !34 ; 3 uses
  %i.ax = getelementptr i8, ptr %i.av, i64 -96
  %.val4.i.i = load i64, ptr %i.ax, align 8, !noalias !69113, !noundef !34
  tail call void @llvm.experimental.noalias.scope.decl(metadata !69114)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !69115)
  %.not.i.i.i.i.i.i.i = icmp eq i64 %.val1.i.i.i.fr, %.val4.i.i
  br i1 %.not.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.preheader, label %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$24find_or_find_insert_slot28_$u7b$$u7b$closure$u7d$$u7d$17h1c09640a7aa21e0aE.exit.i", !prof !115

.lr.ph.i.i.i.i.i.i.i.preheader:                   ; preds = %.lr.ph.i.i
  br i1 %i.n, label %.lr.ph.i.i.i.i.i.i.i.epil.preheader, label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.1:                           ; preds = %.lr.ph.i.i.i.i.i.i.i
  %i.ay = or disjoint i64 %.sroa.01.09.i.i.i.i.i.i.i, 1 ; 2 uses
  %i.az = getelementptr inbounds nuw [20 x i8], ptr %.val.i.i.i, i64 %i.ay
  %i.ba = getelementptr inbounds nuw [20 x i8], ptr %.val3.i.i, i64 %i.ay
  %i.bb = getelementptr i8, ptr %i.az, i64 16
  %.val.i.i.i.i.i.i.i.1 = load i32, ptr %i.bb, align 4, !alias.scope !69114, !noalias !69116, !noundef !34
  %i.bc = getelementptr i8, ptr %i.ba, i64 16
  %.val6.i.i.i.i.i.i.i.1 = load i32, ptr %i.bc, align 4, !alias.scope !69115, !noalias !69117, !noundef !34
  %.not7.i.i.i.i.i.i.i.1 = icmp eq i32 %.val.i.i.i.i.i.i.i.1, %.val6.i.i.i.i.i.i.i.1
  br i1 %.not7.i.i.i.i.i.i.i.1, label %bb.e, label %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$24find_or_find_insert_slot28_$u7b$$u7b$closure$u7d$$u7d$17h1c09640a7aa21e0aE.exit.i", !prof !115

bb.e:                                             ; preds = %.lr.ph.i.i.i.i.i.i.i.1
  %i.bd = add nuw i64 %.sroa.01.09.i.i.i.i.i.i.i, 2 ; 2 uses
  %niter.next.1 = add nuw i64 %niter, 2           ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.loopexit.loopexit44.unr-lcssa, label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader, %bb.e
  %.sroa.01.09.i.i.i.i.i.i.i = phi i64 [ %i.bd, %bb.e ], [ 0, %.lr.ph.i.i.i.i.i.i.i.preheader ] ; 4 uses
  %niter = phi i64 [ %niter.next.1, %bb.e ], [ 0, %.lr.ph.i.i.i.i.i.i.i.preheader ]
  %i.be = getelementptr inbounds nuw [20 x i8], ptr %.val.i.i.i, i64 %.sroa.01.09.i.i.i.i.i.i.i
  %i.bf = getelementptr inbounds nuw [20 x i8], ptr %.val3.i.i, i64 %.sroa.01.09.i.i.i.i.i.i.i
  %i.bg = getelementptr i8, ptr %i.be, i64 16
  %.val.i.i.i.i.i.i.i = load i32, ptr %i.bg, align 4, !alias.scope !69114, !noalias !69116, !noundef !34
  %i.bh = getelementptr i8, ptr %i.bf, i64 16
  %.val6.i.i.i.i.i.i.i = load i32, ptr %i.bh, align 4, !alias.scope !69115, !noalias !69117, !noundef !34
  %.not7.i.i.i.i.i.i.i = icmp eq i32 %.val.i.i.i.i.i.i.i, %.val6.i.i.i.i.i.i.i
  br i1 %.not7.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.1, label %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$24find_or_find_insert_slot28_$u7b$$u7b$closure$u7d$$u7d$17h1c09640a7aa21e0aE.exit.i", !prof !115

._crit_edge.i.i:                                  ; preds = %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$24find_or_find_insert_slot28_$u7b$$u7b$closure$u7d$$u7d$17h1c09640a7aa21e0aE.exit.i", %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$7reserve17h008f3f93aa53be37E.exit.i.split"
  %.not13.i.i = icmp eq i64 %.sroa.01.0.i.i, 0
  br i1 %.not13.i.i, label %bb.f, label %.thread.i.i, !prof !40

"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$24find_or_find_insert_slot28_$u7b$$u7b$closure$u7d$$u7d$17h1c09640a7aa21e0aE.exit.i": ; preds = %.lr.ph.i.i.i.i.i.i.i.epil.preheader, %.lr.ph.i.i.i.i.i.i.i.1, %.lr.ph.i.i.i.i.i.i.i, %.lr.ph.i.i
  %i.bi = add i16 %.sroa.05.026.i.i, -1
  %i.bj = and i16 %i.bi, %.sroa.05.026.i.i        ; 2 uses
  %.not.i.i = icmp eq i16 %i.bj, 0
  br i1 %.not.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i

bb.f:                                             ; preds = %._crit_edge.i.i
  %i.bk = icmp slt <16 x i8> %.sroa.0.0.copyload.i24.i.i, zeroinitializer
  %i.bl = bitcast <16 x i1> %i.bk to i16          ; 2 uses
  %.not.not.i.not.i.i = icmp eq i16 %i.bl, 0      ; 2 uses
  %i.bm = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.bl, i1 true)
  %i.bn = zext nneg i16 %i.bm to i64
  %.sroa.6.0.i.i.i = select i1 %.not.not.i.not.i.i, i64 undef, i64 %i.bn
  %i.bo = add i64 %.sroa.6.0.i.i.i, %.sroa.0.017.i.i
  %i.bp = and i64 %i.bo, %.val7.i
  br i1 %.not.not.i.not.i.i, label %bb.g, label %.thread.i.i

.thread.i.i:                                      ; preds = %bb.f, %._crit_edge.i.i
  %.sroa.6.121.i.i = phi i64 [ %i.bp, %bb.f ], [ %.sroa.6.0.i.i, %._crit_edge.i.i ] ; 2 uses
  %i.bq = icmp eq <16 x i8> %.sroa.0.0.copyload.i24.i.i, splat (i8 -1)
  %i.br = bitcast <16 x i1> %i.bq to i16
  %i.bs = icmp eq i16 %i.br, 0
  br i1 %i.bs, label %bb.g, label %.split.us, !prof !37

bb.g:                                             ; preds = %.thread.i.i, %bb.f
  %.sroa.01.122.i.i = phi i64 [ 1, %.thread.i.i ], [ 0, %bb.f ]
  %.sroa.6.120.i.i = phi i64 [ %.sroa.6.121.i.i, %.thread.i.i ], [ undef, %bb.f ]
  %i.bt = add i64 %i.am, 16                       ; 2 uses
  %i.bu = add i64 %i.bt, %.sroa.0.017.i.i
  br label %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$7reserve17h008f3f93aa53be37E.exit.i.split"

.split.us:                                        ; preds = %.thread.i.i, %.thread.i.i.us
  %.us-phi22 = phi i64 [ %.sroa.6.121.i.i.us, %.thread.i.i.us ], [ %.sroa.6.121.i.i, %.thread.i.i ] ; 2 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %.val.i, i64 %.us-phi22
  %i.bw = load i8, ptr %i.bv, align 1, !noalias !69107, !noundef !34 ; 2 uses
  %i.bx = icmp sgt i8 %i.bw, -1
  br i1 %i.bx, label %bb.h, label %bb.j, !prof !37

bb.h:                                             ; preds = %.split.us
  %.val2.i.i.i = load <16 x i8>, ptr %.val.i, align 16, !noalias !69107
  %i.by = icmp slt <16 x i8> %.val2.i.i.i, zeroinitializer
  %i.bz = bitcast <16 x i1> %i.by to i16          ; 2 uses
  %i.ca = icmp ne i16 %i.bz, 0
  tail call void @llvm.assume(i1 %i.ca)
  %i.cb = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.bz, i1 true)
  %i.cc = zext nneg i16 %i.cb to i64              ; 2 uses
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %.val.i, i64 %i.cc
  %.pre = load i8, ptr %.phi.trans.insert, align 1, !noalias !69118
  br label %bb.j

.loopexit.loopexit44.unr-lcssa:                   ; preds = %bb.e
  br i1 %lcmp.mod.not, label %.loopexit, label %.lr.ph.i.i.i.i.i.i.i.epil.preheader

.lr.ph.i.i.i.i.i.i.i.epil.preheader:              ; preds = %.loopexit.loopexit44.unr-lcssa, %.lr.ph.i.i.i.i.i.i.i.preheader
  %.sroa.01.09.i.i.i.i.i.i.i.epil.init = phi i64 [ 0, %.lr.ph.i.i.i.i.i.i.i.preheader ], [ %i.bd, %.loopexit.loopexit44.unr-lcssa ] ; 2 uses
  tail call void @llvm.assume(i1 %lcmp.mod49)
  %i.cd = getelementptr inbounds nuw [20 x i8], ptr %.val.i.i.i, i64 %.sroa.01.09.i.i.i.i.i.i.i.epil.init
  %i.ce = getelementptr inbounds nuw [20 x i8], ptr %.val3.i.i, i64 %.sroa.01.09.i.i.i.i.i.i.i.epil.init
  %i.cf = getelementptr i8, ptr %i.cd, i64 16
  %.val.i.i.i.i.i.i.i.epil = load i32, ptr %i.cf, align 4, !alias.scope !69114, !noalias !69116, !noundef !34
  %i.cg = getelementptr i8, ptr %i.ce, i64 16
  %.val6.i.i.i.i.i.i.i.epil = load i32, ptr %i.cg, align 4, !alias.scope !69115, !noalias !69117, !noundef !34
  %.not7.i.i.i.i.i.i.i.epil = icmp eq i32 %.val.i.i.i.i.i.i.i.epil, %.val6.i.i.i.i.i.i.i.epil
  br i1 %.not7.i.i.i.i.i.i.i.epil, label %.loopexit, label %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$24find_or_find_insert_slot28_$u7b$$u7b$closure$u7d$$u7d$17h1c09640a7aa21e0aE.exit.i", !prof !115

.loopexit:                                        ; preds = %.lr.ph.i.i.i.i.i.i.i.epil.preheader, %.loopexit.loopexit44.unr-lcssa, %.lr.ph.i.i.us.us
  %i.ch = phi i64 [ %i.w, %.lr.ph.i.i.us.us ], [ %i.au, %.loopexit.loopexit44.unr-lcssa ], [ %i.au, %.lr.ph.i.i.i.i.i.i.i.epil.preheader ]
  %i.ci = getelementptr inbounds [112 x i8], ptr %.val.i, i64 %i.ch
  %i.cj = getelementptr inbounds i8, ptr %i.ci, i64 -88 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %0, ptr noundef nonnull align 8 dereferenceable(88) %i.cj, i64 88, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %i.cj, ptr noundef nonnull align 8 dereferenceable(88) %3, i64 88, i1 false)
  %.val9 = load i64, ptr %2, align 8              ; 2 uses
  %i.ck = icmp eq i64 %.val9, 0
  br i1 %i.ck, label %"_ZN4core3ptr57drop_in_place$LT$nickel_lang_core..program..FieldPath$GT$17hffeeb8db24aee35aE.exit", label %bb.i

bb.i:                                             ; preds = %.loopexit
  %i.cl = mul nuw i64 %.val9, 20
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i.i) ]
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i.i, i64 noundef %i.cl, i64 noundef range(i64 1, -9223372036854775807) 4) #53
  br label %"_ZN4core3ptr57drop_in_place$LT$nickel_lang_core..program..FieldPath$GT$17hffeeb8db24aee35aE.exit"

"_ZN4core3ptr57drop_in_place$LT$nickel_lang_core..program..FieldPath$GT$17hffeeb8db24aee35aE.exit": ; preds = %bb.i, %.loopexit, %bb.j
  ret void

bb.j:                                             ; preds = %.split.us, %bb.h
  %i.cm = phi i8 [ %.pre, %bb.h ], [ %i.bw, %.split.us ]
  %.sroa.3.0.i.ph.i = phi i64 [ %i.cc, %bb.h ], [ %.us-phi22, %.split.us ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.cn = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %i.cn, ptr noundef nonnull align 8 dereferenceable(88) %3, i64 88, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !69119)
  %i.co = getelementptr inbounds nuw i8, ptr %.val.i, i64 %.sroa.3.0.i.ph.i
  %i.cp = and i8 %i.cm, 1
  %i.cq = zext nneg i8 %i.cp to i64
  %i.cr = add i64 %.sroa.3.0.i.ph.i, -16
  %i.cs = and i64 %i.cr, %.val7.i
  store i8 %i.k, ptr %i.co, align 1, !noalias !69118
  %i.ct = getelementptr i8, ptr %.val.i, i64 %i.cs
  %i.cu = getelementptr i8, ptr %i.ct, i64 16
  store i8 %i.k, ptr %i.cu, align 1, !noalias !69118
  %i.cv = load <2 x i64>, ptr %i.e, align 8, !alias.scope !69119, !noalias !69120
  %i.cw = insertelement <2 x i64> <i64 poison, i64 -1>, i64 %i.cq, i64 0
  %i.cx = sub <2 x i64> %i.cv, %i.cw
  store <2 x i64> %i.cx, ptr %i.e, align 8, !alias.scope !69119, !noalias !69120
  %i.cy = sub nsw i64 0, %.sroa.3.0.i.ph.i
  %i.cz = getelementptr inbounds [112 x i8], ptr %.val.i, i64 %i.cy
  %i.da = getelementptr inbounds i8, ptr %i.cz, i64 -112
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(112) %i.da, ptr noundef nonnull readonly align 8 dereferenceable(112) %i.a, i64 112, i1 false), !noalias !69119
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  store i64 -9223372036854775808, ptr %0, align 8
  br label %"_ZN4core3ptr57drop_in_place$LT$nickel_lang_core..program..FieldPath$GT$17hffeeb8db24aee35aE.exit"

bb.k:                                             ; preds = %bb.b
  %i.db = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr65drop_in_place$LT$nickel..customize..interface..FieldInterface$GT$17h7053ae3f74cf12d2E"(ptr noalias noundef align 8 dereferenceable(88) %3) #61
          to label %bb.m unwind label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.dc = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #60
  unreachable

.critedge:                                        ; preds = %bb.n, %bb.m
  resume { ptr, i32 } %i.db

bb.m:                                             ; preds = %bb.k
  %.val = load i64, ptr %2, align 8               ; 2 uses
  %i.dd = icmp eq i64 %.val, 0
  br i1 %i.dd, label %.critedge, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.de = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.val8 = load ptr, ptr %i.de, align 8, !nonnull !34, !noundef !34
  %i.df = mul nuw i64 %.val, 20
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val8, i64 noundef %i.df, i64 noundef range(i64 1, -9223372036854775807) 4) #53
  br label %.critedge
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @"_ZN9hashbrown3map28HashMap$LT$K$C$V$C$S$C$A$GT$6insert17haec86d5859779484E"(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(88) %0, ptr noalias noundef nonnull align 8 dereferenceable(48) %1, ptr noalias nofree noundef nonnull readonly align 4 captures(none) dead_on_return dereferenceable(20) %2, ptr noalias noundef nonnull align 8 captures(address) dead_on_return dereferenceable(88) %3) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [112 x i8], align 8               ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %.val = load i64, ptr %i.b, align 8, !noundef !34
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 40
  %.val7 = load i64, ptr %i.c, align 8, !noundef !34
  %i.d = tail call fastcc noundef i64 @_ZN4core4hash11BuildHasher8hash_one17hbde8381f93093315E(i64 %.val, i64 %.val7, ptr noalias noundef readonly align 4 captures(address, read_provenance) dereferenceable(20) %2) ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !69135)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !69136)
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  %i.f = load i64, ptr %i.e, align 8, !alias.scope !69137, !noalias !69138, !noundef !34
  %i.g = icmp eq i64 %i.f, 0
  br i1 %i.g, label %bb.b, label %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$7reserve17hc42733e7056e1d3cE.exit.i", !prof !37

bb.b:                                             ; preds = %bb.a
  %i.h = invoke fastcc i64 @"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$14reserve_rehash17h35540669f9dda1a2E"(ptr noalias noundef nonnull align 8 dereferenceable(32) %1, i64 noundef 1, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.b)
          to label %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$7reserve17hc42733e7056e1d3cE.exit.i" unwind label %bb.l ; 0 uses

"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$7reserve17hc42733e7056e1d3cE.exit.i": ; preds = %bb.b, %bb.a
  %.val.i = load ptr, ptr %1, align 8, !alias.scope !69135, !noalias !69139, !nonnull !34, !noundef !34 ; 8 uses
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val7.i = load i64, ptr %i.i, align 8, !alias.scope !69135, !noalias !69139, !noundef !34 ; 4 uses
  %i.j = lshr i64 %i.d, 57
  %i.k = trunc nuw nsw i64 %i.j to i8             ; 3 uses
  %.sroa.0.0.vec.insert.i.i.i = insertelement <16 x i8> poison, i8 %i.k, i64 0
  %.sroa.0.15.vec.insert.i.i.i = shufflevector <16 x i8> %.sroa.0.0.vec.insert.i.i.i, <16 x i8> poison, <16 x i32> zeroinitializer
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 16
  %.val.i.i.i = load i32, ptr %i.l, align 4, !alias.scope !69136, !noalias !69140
  br label %bb.c

bb.c:                                             ; preds = %bb.f, %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$7reserve17hc42733e7056e1d3cE.exit.i"
  %.pn.i.i = phi i64 [ %i.d, %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$7reserve17hc42733e7056e1d3cE.exit.i" ], [ %i.ak, %bb.f ]
  %.sroa.6.0.i.i = phi i64 [ undef, %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$7reserve17hc42733e7056e1d3cE.exit.i" ], [ %.sroa.6.120.i.i, %bb.f ]
  %.sroa.01.0.i.i = phi i64 [ 0, %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$7reserve17hc42733e7056e1d3cE.exit.i" ], [ %.sroa.01.122.i.i, %bb.f ]
  %i.m = phi i64 [ 0, %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$7reserve17hc42733e7056e1d3cE.exit.i" ], [ %i.aj, %bb.f ]
  %.sroa.0.017.i.i = and i64 %.pn.i.i, %.val7.i   ; 4 uses
  %i.n = getelementptr inbounds nuw i8, ptr %.val.i, i64 %.sroa.0.017.i.i
  %.sroa.0.0.copyload.i24.i.i = load <16 x i8>, ptr %i.n, align 1, !noalias !69141 ; 3 uses
  %i.o = icmp eq <16 x i8> %.sroa.0.0.copyload.i24.i.i, %.sroa.0.15.vec.insert.i.i.i
  %i.p = bitcast <16 x i1> %i.o to i16            ; 2 uses
  %.not25.i.i = icmp eq i16 %i.p, 0
  br i1 %.not25.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.c, %bb.d
  %.sroa.05.026.i.i = phi i16 [ %i.z, %bb.d ], [ %i.p, %bb.c ] ; 3 uses
  %i.q = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.05.026.i.i, i1 true)
  %i.r = zext nneg i16 %i.q to i64
  %i.s = add i64 %.sroa.0.017.i.i, %i.r
  %i.t = and i64 %i.s, %.val7.i
  %i.u = sub nsw i64 0, %i.t
  %i.v = getelementptr inbounds [112 x i8], ptr %.val.i, i64 %i.u ; 2 uses
  %i.w = getelementptr i8, ptr %i.v, i64 -96
  %.val3.i.i = load i32, ptr %i.w, align 4, !noalias !69142, !noundef !34
  %i.x = icmp eq i32 %.val.i.i.i, %.val3.i.i
  br i1 %i.x, label %bb.i, label %bb.d, !prof !40

._crit_edge.i.i:                                  ; preds = %bb.d, %bb.c
  %.not13.i.i = icmp eq i64 %.sroa.01.0.i.i, 0
  br i1 %.not13.i.i, label %bb.e, label %.thread.i.i, !prof !40

bb.d:                                             ; preds = %.lr.ph.i.i
  %i.y = add i16 %.sroa.05.026.i.i, -1
  %i.z = and i16 %i.y, %.sroa.05.026.i.i          ; 2 uses
  %.not.i.i = icmp eq i16 %i.z, 0
  br i1 %.not.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i

bb.e:                                             ; preds = %._crit_edge.i.i
  %i.aa = icmp slt <16 x i8> %.sroa.0.0.copyload.i24.i.i, zeroinitializer
  %i.ab = bitcast <16 x i1> %i.aa to i16          ; 2 uses
  %.not.not.i.not.i.i = icmp eq i16 %i.ab, 0      ; 2 uses
  %i.ac = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.ab, i1 true)
  %i.ad = zext nneg i16 %i.ac to i64
  %.sroa.6.0.i.i.i = select i1 %.not.not.i.not.i.i, i64 undef, i64 %i.ad
  %i.ae = add i64 %.sroa.6.0.i.i.i, %.sroa.0.017.i.i
  %i.af = and i64 %i.ae, %.val7.i
  br i1 %.not.not.i.not.i.i, label %bb.f, label %.thread.i.i

.thread.i.i:                                      ; preds = %bb.e, %._crit_edge.i.i
  %.sroa.6.121.i.i = phi i64 [ %i.af, %bb.e ], [ %.sroa.6.0.i.i, %._crit_edge.i.i ] ; 3 uses
  %i.ag = icmp eq <16 x i8> %.sroa.0.0.copyload.i24.i.i, splat (i8 -1)
  %i.ah = bitcast <16 x i1> %i.ag to i16
  %i.ai = icmp eq i16 %i.ah, 0
  br i1 %i.ai, label %bb.f, label %bb.g, !prof !37

bb.f:                                             ; preds = %.thread.i.i, %bb.e
  %.sroa.01.122.i.i = phi i64 [ 1, %.thread.i.i ], [ 0, %bb.e ]
  %.sroa.6.120.i.i = phi i64 [ %.sroa.6.121.i.i, %.thread.i.i ], [ undef, %bb.e ]
  %i.aj = add i64 %i.m, 16                        ; 2 uses
  %i.ak = add i64 %i.aj, %.sroa.0.017.i.i
  br label %bb.c

bb.g:                                             ; preds = %.thread.i.i
  %i.al = getelementptr inbounds nuw i8, ptr %.val.i, i64 %.sroa.6.121.i.i
  %i.am = load i8, ptr %i.al, align 1, !noalias !69136, !noundef !34 ; 2 uses
  %i.an = icmp sgt i8 %i.am, -1
  br i1 %i.an, label %bb.h, label %bb.k, !prof !37

bb.h:                                             ; preds = %bb.g
  %.val2.i.i.i = load <16 x i8>, ptr %.val.i, align 16, !noalias !69136
  %i.ao = icmp slt <16 x i8> %.val2.i.i.i, zeroinitializer
  %i.ap = bitcast <16 x i1> %i.ao to i16          ; 2 uses
  %i.aq = icmp ne i16 %i.ap, 0
  tail call void @llvm.assume(i1 %i.aq)
  %i.ar = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.ap, i1 true)
  %i.as = zext nneg i16 %i.ar to i64              ; 2 uses
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %.val.i, i64 %i.as
  %.pre = load i8, ptr %.phi.trans.insert, align 1, !noalias !69143
  br label %bb.k

bb.i:                                             ; preds = %.lr.ph.i.i
  %i.at = getelementptr inbounds i8, ptr %i.v, i64 -88 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %0, ptr noundef nonnull align 8 dereferenceable(88) %i.at, i64 88, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %i.at, ptr noundef nonnull align 8 dereferenceable(88) %3, i64 88, i1 false)
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.k
  ret void

bb.k:                                             ; preds = %bb.h, %bb.g
  %i.au = phi i8 [ %.pre, %bb.h ], [ %i.am, %bb.g ]
  %.sroa.3.0.i.ph.i = phi i64 [ %i.as, %bb.h ], [ %.sroa.6.121.i.i, %bb.g ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.av = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %i.av, ptr noundef nonnull align 8 dereferenceable(88) %3, i64 88, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %i.a, ptr noundef nonnull align 4 dereferenceable(20) %2, i64 20, i1 false)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !69144)
  %i.aw = getelementptr inbounds nuw i8, ptr %.val.i, i64 %.sroa.3.0.i.ph.i
  %i.ax = and i8 %i.au, 1
  %i.ay = zext nneg i8 %i.ax to i64
  %i.az = add i64 %.sroa.3.0.i.ph.i, -16
  %i.ba = and i64 %i.az, %.val7.i
  store i8 %i.k, ptr %i.aw, align 1, !noalias !69143
  %i.bb = getelementptr i8, ptr %.val.i, i64 %i.ba
  %i.bc = getelementptr i8, ptr %i.bb, i64 16
  store i8 %i.k, ptr %i.bc, align 1, !noalias !69143
  %i.bd = load <2 x i64>, ptr %i.e, align 8, !alias.scope !69144, !noalias !69145
  %i.be = insertelement <2 x i64> <i64 poison, i64 -1>, i64 %i.ay, i64 0
  %i.bf = sub <2 x i64> %i.bd, %i.be
  store <2 x i64> %i.bf, ptr %i.e, align 8, !alias.scope !69144, !noalias !69145
  %i.bg = sub nsw i64 0, %.sroa.3.0.i.ph.i
  %i.bh = getelementptr inbounds [112 x i8], ptr %.val.i, i64 %i.bg
  %i.bi = getelementptr inbounds i8, ptr %i.bh, i64 -112
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(112) %i.bi, ptr noundef nonnull readonly align 8 dereferenceable(112) %i.a, i64 112, i1 false), !noalias !69144
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  store i64 -9223372036854775808, ptr %0, align 8
  br label %bb.j

bb.l:                                             ; preds = %bb.b
  %i.bj = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr65drop_in_place$LT$nickel..customize..interface..FieldInterface$GT$17h7053ae3f74cf12d2E"(ptr noalias noundef align 8 dereferenceable(88) %3) #61
          to label %bb.n unwind label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bk = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #60
  unreachable

bb.n:                                             ; preds = %bb.l
  resume { ptr, i32 } %i.bj
}

; Function Attrs: nonlazybind uwtable
define internal fastcc noundef zeroext i1 @"_ZN9hashbrown3map28HashMap$LT$K$C$V$C$S$C$A$GT$6insert17hb7ecee0ededb384aE"(ptr noalias noundef nonnull align 8 dereferenceable(48) %0, ptr noalias noundef nonnull align 8 captures(address) dead_on_return dereferenceable(64) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [64 x i8], align 8                ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %.val = load i64, ptr %i.b, align 8, !noundef !34
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 40
  %.val9 = load i64, ptr %i.c, align 8, !noundef !34
  %i.d = tail call fastcc noundef i64 @_ZN4core4hash11BuildHasher8hash_one17h1b78ad63c17a1479E(i64 %.val, i64 %.val9, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(64) %1) ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !69186)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !69187)
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.f = load i64, ptr %i.e, align 8, !alias.scope !69188, !noalias !69189, !noundef !34
  %i.g = icmp eq i64 %i.f, 0
  br i1 %i.g, label %bb.b, label %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$7reserve17h7b9bbb9a33a5d431E.exit.i", !prof !37

bb.b:                                             ; preds = %bb.a
  %i.h = invoke fastcc i64 @"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$14reserve_rehash17hb6bb26fed6496284E"(ptr noalias noundef nonnull align 8 dereferenceable(32) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.b)
          to label %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$7reserve17h7b9bbb9a33a5d431E.exit.i" unwind label %bb.v ; 0 uses

"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$7reserve17h7b9bbb9a33a5d431E.exit.i": ; preds = %bb.b, %bb.a
  %.val.i = load ptr, ptr %0, align 8, !alias.scope !69186, !noalias !69190, !nonnull !34, !noundef !34 ; 10 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val7.i = load i64, ptr %i.i, align 8, !alias.scope !69186, !noalias !69190, !noundef !34 ; 7 uses
  %i.j = lshr i64 %i.d, 57
  %i.k = trunc nuw nsw i64 %i.j to i8             ; 3 uses
  %.sroa.0.0.vec.insert.i.i.i = insertelement <16 x i8> poison, i8 %i.k, i64 0
  %.sroa.0.15.vec.insert.i.i.i = shufflevector <16 x i8> %.sroa.0.0.vec.insert.i.i.i, <16 x i8> poison, <16 x i32> zeroinitializer ; 2 uses
  %i.l = load i32, ptr %1, align 8, !range !95, !alias.scope !69187, !noalias !69191
  %.fr.i = freeze i32 %i.l                        ; 3 uses
  %.not.i.i.i.i.i = icmp eq i32 %.fr.i, 3
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.n = load i32, ptr %i.m, align 4, !alias.scope !69187, !noalias !69191 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.p = load i32, ptr %i.o, align 8, !alias.scope !69187, !noalias !69191 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.r = load i32, ptr %i.q, align 4, !alias.scope !69187, !noalias !69191 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.t = load i32, ptr %i.s, align 8, !range !65, !alias.scope !69187, !noalias !69191 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.v = load i32, ptr %i.u, align 4, !alias.scope !69187, !noalias !69191 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.x = load i32, ptr %i.w, align 8, !alias.scope !69187, !noalias !69191 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 28
  %i.z = load i32, ptr %i.y, align 4, !alias.scope !69187, !noalias !69191
  br i1 %.not.i.i.i.i.i, label %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$7reserve17h7b9bbb9a33a5d431E.exit.split.us.i", label %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$7reserve17h7b9bbb9a33a5d431E.exit.split.i"

"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$7reserve17h7b9bbb9a33a5d431E.exit.split.us.i": ; preds = %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$7reserve17h7b9bbb9a33a5d431E.exit.i", %bb.d
  %.pn.i.us.i = phi i64 [ %i.az, %bb.d ], [ %i.d, %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$7reserve17h7b9bbb9a33a5d431E.exit.i" ]
  %.sroa.6.0.i.us.i = phi i64 [ %.sroa.6.120.i.us.i, %bb.d ], [ undef, %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$7reserve17h7b9bbb9a33a5d431E.exit.i" ]
  %.sroa.01.0.i.us.i = phi i64 [ %.sroa.01.122.i.us.i, %bb.d ], [ 0, %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$7reserve17h7b9bbb9a33a5d431E.exit.i" ]
  %i.aa = phi i64 [ %i.ay, %bb.d ], [ 0, %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$7reserve17h7b9bbb9a33a5d431E.exit.i" ]
  %.sroa.0.017.i.us.i = and i64 %.pn.i.us.i, %.val7.i ; 4 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %.val.i, i64 %.sroa.0.017.i.us.i
  %.sroa.0.0.copyload.i24.i.us.i = load <16 x i8>, ptr %i.ab, align 1, !noalias !69192 ; 3 uses
  %i.ac = icmp eq <16 x i8> %.sroa.0.0.copyload.i24.i.us.i, %.sroa.0.15.vec.insert.i.i.i
  %i.ad = bitcast <16 x i1> %i.ac to i16          ; 2 uses
  %.not25.i.us.i = icmp eq i16 %i.ad, 0
  br i1 %.not25.i.us.i, label %._crit_edge.i.us.i, label %.lr.ph.i.us.us.i

.lr.ph.i.us.us.i:                                 ; preds = %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$7reserve17h7b9bbb9a33a5d431E.exit.split.us.i", %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$24find_or_find_insert_slot28_$u7b$$u7b$closure$u7d$$u7d$17he3a8b28b6032317cE.exit.thread.us.us.i"
  %.sroa.05.026.i.us.us.i = phi i16 [ %i.ao, %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$24find_or_find_insert_slot28_$u7b$$u7b$closure$u7d$$u7d$17he3a8b28b6032317cE.exit.thread.us.us.i" ], [ %i.ad, %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$7reserve17h7b9bbb9a33a5d431E.exit.split.us.i" ] ; 3 uses
  %i.ae = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.05.026.i.us.us.i, i1 true)
  %i.af = zext nneg i16 %i.ae to i64
  %i.ag = add i64 %.sroa.0.017.i.us.i, %i.af
  %i.ah = and i64 %i.ag, %.val7.i
  %i.ai = sub nsw i64 0, %i.ah
  %i.aj = getelementptr inbounds [64 x i8], ptr %.val.i, i64 %i.ai
  %i.ak = getelementptr inbounds i8, ptr %i.aj, i64 -64
  %i.al = load i32, ptr %i.ak, align 8, !range !95, !alias.scope !69193, !noalias !69194, !noundef !34
  %i.am = icmp eq i32 %i.al, 3
  br i1 %i.am, label %.loopexit, label %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$24find_or_find_insert_slot28_$u7b$$u7b$closure$u7d$$u7d$17he3a8b28b6032317cE.exit.thread.us.us.i", !prof !39

"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$24find_or_find_insert_slot28_$u7b$$u7b$closure$u7d$$u7d$17he3a8b28b6032317cE.exit.thread.us.us.i": ; preds = %.lr.ph.i.us.us.i
  %i.an = add i16 %.sroa.05.026.i.us.us.i, -1
  %i.ao = and i16 %i.an, %.sroa.05.026.i.us.us.i  ; 2 uses
  %.not.i.us.us.i = icmp eq i16 %i.ao, 0
  br i1 %.not.i.us.us.i, label %._crit_edge.i.us.i, label %.lr.ph.i.us.us.i

._crit_edge.i.us.i:                               ; preds = %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$24find_or_find_insert_slot28_$u7b$$u7b$closure$u7d$$u7d$17he3a8b28b6032317cE.exit.thread.us.us.i", %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$7reserve17h7b9bbb9a33a5d431E.exit.split.us.i"
  %.not13.i.us.i = icmp eq i64 %.sroa.01.0.i.us.i, 0
  br i1 %.not13.i.us.i, label %bb.c, label %.thread.i.us.i, !prof !40

bb.c:                                             ; preds = %._crit_edge.i.us.i
  %i.ap = icmp slt <16 x i8> %.sroa.0.0.copyload.i24.i.us.i, zeroinitializer
  %i.aq = bitcast <16 x i1> %i.ap to i16          ; 2 uses
  %.not.not.i.not.i.us.i = icmp eq i16 %i.aq, 0   ; 2 uses
  %i.ar = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.aq, i1 true)
  %i.as = zext nneg i16 %i.ar to i64
  %.sroa.6.0.i.i.us.i = select i1 %.not.not.i.not.i.us.i, i64 undef, i64 %i.as
  %i.at = add i64 %.sroa.6.0.i.i.us.i, %.sroa.0.017.i.us.i
  %i.au = and i64 %i.at, %.val7.i
  br i1 %.not.not.i.not.i.us.i, label %bb.d, label %.thread.i.us.i

.thread.i.us.i:                                   ; preds = %bb.c, %._crit_edge.i.us.i
  %.sroa.6.121.i.us.i = phi i64 [ %i.au, %bb.c ], [ %.sroa.6.0.i.us.i, %._crit_edge.i.us.i ] ; 2 uses
  %i.av = icmp eq <16 x i8> %.sroa.0.0.copyload.i24.i.us.i, splat (i8 -1)
  %i.aw = bitcast <16 x i1> %i.av to i16
  %i.ax = icmp eq i16 %i.aw, 0
  br i1 %i.ax, label %bb.d, label %.split.us.i, !prof !37

bb.d:                                             ; preds = %.thread.i.us.i, %bb.c
  %.sroa.01.122.i.us.i = phi i64 [ 1, %.thread.i.us.i ], [ 0, %bb.c ]
  %.sroa.6.120.i.us.i = phi i64 [ %.sroa.6.121.i.us.i, %.thread.i.us.i ], [ undef, %bb.c ]
  %i.ay = add i64 %i.aa, 16                       ; 2 uses
  %i.az = add i64 %i.ay, %.sroa.0.017.i.us.i
  br label %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$7reserve17h7b9bbb9a33a5d431E.exit.split.us.i"

"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$7reserve17h7b9bbb9a33a5d431E.exit.split.i": ; preds = %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$7reserve17h7b9bbb9a33a5d431E.exit.i", %bb.p
  %.pn.i.i = phi i64 [ %i.dj, %bb.p ], [ %i.d, %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$7reserve17h7b9bbb9a33a5d431E.exit.i" ]
  %.sroa.6.0.i.i = phi i64 [ %.sroa.6.120.i.i, %bb.p ], [ undef, %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$7reserve17h7b9bbb9a33a5d431E.exit.i" ]
  %.sroa.01.0.i.i = phi i64 [ %.sroa.01.122.i.i, %bb.p ], [ 0, %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$7reserve17h7b9bbb9a33a5d431E.exit.i" ]
  %i.ba = phi i64 [ %i.di, %bb.p ], [ 0, %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$7reserve17h7b9bbb9a33a5d431E.exit.i" ]
  %.sroa.0.017.i.i = and i64 %.pn.i.i, %.val7.i   ; 4 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %.val.i, i64 %.sroa.0.017.i.i
  %.sroa.0.0.copyload.i24.i.i = load <16 x i8>, ptr %i.bb, align 1, !noalias !69192 ; 3 uses
  %i.bc = icmp eq <16 x i8> %.sroa.0.0.copyload.i24.i.i, %.sroa.0.15.vec.insert.i.i.i
  %i.bd = bitcast <16 x i1> %i.bc to i16          ; 2 uses
  %.not25.i.i = icmp eq i16 %i.bd, 0
  br i1 %.not25.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$7reserve17h7b9bbb9a33a5d431E.exit.split.i", %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$24find_or_find_insert_slot28_$u7b$$u7b$closure$u7d$$u7d$17he3a8b28b6032317cE.exit.thread.i"
  %.sroa.05.026.i.i = phi i16 [ %i.cy, %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$24find_or_find_insert_slot28_$u7b$$u7b$closure$u7d$$u7d$17he3a8b28b6032317cE.exit.thread.i" ], [ %i.bd, %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$7reserve17h7b9bbb9a33a5d431E.exit.split.i" ] ; 3 uses
  %i.be = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.05.026.i.i, i1 true)
  %i.bf = zext nneg i16 %i.be to i64
  %i.bg = add i64 %.sroa.0.017.i.i, %i.bf
  %i.bh = and i64 %i.bg, %.val7.i
  %i.bi = sub nsw i64 0, %i.bh
  %i.bj = getelementptr inbounds [64 x i8], ptr %.val.i, i64 %i.bi ; 13 uses
  %i.bk = getelementptr inbounds i8, ptr %i.bj, i64 -64
  %i.bl = load i32, ptr %i.bk, align 8, !range !95, !alias.scope !69193, !noalias !69194, !noundef !34
  %i.bm = icmp eq i32 %.fr.i, %i.bl
  br i1 %i.bm, label %bb.e, label %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$24find_or_find_insert_slot28_$u7b$$u7b$closure$u7d$$u7d$17he3a8b28b6032317cE.exit.thread.i", !prof !69195

bb.e:                                             ; preds = %.lr.ph.i.i
  switch i32 %.fr.i, label %default.unreachable [
    i32 0, label %bb.f
    i32 1, label %bb.h
    i32 2, label %"_ZN78_$LT$nickel_lang_parser..position..TermPos$u20$as$u20$core..cmp..PartialEq$GT$2eq17h31b360b14548dc95E.exit.thread6.i.i.i.i.i"
  ]

default.unreachable:                              ; preds = %bb.j, %bb.e
  unreachable

bb.f:                                             ; preds = %bb.e
  %i.bn = getelementptr inbounds i8, ptr %i.bj, i64 -60
  %i.bo = load i32, ptr %i.bn, align 4, !alias.scope !69196, !noalias !69197, !noundef !34
  %i.bp = icmp eq i32 %i.n, %i.bo
  br i1 %i.bp, label %bb.g, label %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$24find_or_find_insert_slot28_$u7b$$u7b$closure$u7d$$u7d$17he3a8b28b6032317cE.exit.thread.i", !prof !115

bb.g:                                             ; preds = %bb.f
  %i.bq = getelementptr inbounds i8, ptr %i.bj, i64 -56
  %i.br = load i32, ptr %i.bq, align 8, !alias.scope !69196, !noalias !69197, !noundef !34
  %i.bs = icmp eq i32 %i.p, %i.br
  br i1 %i.bs, label %.split.i.i.i.i.i, label %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$24find_or_find_insert_slot28_$u7b$$u7b$closure$u7d$$u7d$17he3a8b28b6032317cE.exit.thread.i", !prof !115

.split.i.i.i.i.i:                                 ; preds = %bb.g
  %i.bt = getelementptr inbounds i8, ptr %i.bj, i64 -52
  %i.bu = load i32, ptr %i.bt, align 4, !alias.scope !69196, !noalias !69197, !noundef !34
  %i.bv = icmp eq i32 %i.r, %i.bu
  br i1 %i.bv, label %"_ZN78_$LT$nickel_lang_parser..position..TermPos$u20$as$u20$core..cmp..PartialEq$GT$2eq17h31b360b14548dc95E.exit.thread6.i.i.i.i.i", label %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$24find_or_find_insert_slot28_$u7b$$u7b$closure$u7d$$u7d$17he3a8b28b6032317cE.exit.thread.i", !prof !115

bb.h:                                             ; preds = %bb.e
  %i.bw = getelementptr inbounds i8, ptr %i.bj, i64 -60
  %i.bx = load i32, ptr %i.bw, align 4, !alias.scope !69196, !noalias !69197, !noundef !34
  %i.by = icmp eq i32 %i.n, %i.bx
  br i1 %i.by, label %bb.i, label %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$24find_or_find_insert_slot28_$u7b$$u7b$closure$u7d$$u7d$17he3a8b28b6032317cE.exit.thread.i", !prof !115

bb.i:                                             ; preds = %bb.h
  %i.bz = getelementptr inbounds i8, ptr %i.bj, i64 -56
  %i.ca = load i32, ptr %i.bz, align 8, !alias.scope !69196, !noalias !69197, !noundef !34
  %i.cb = icmp eq i32 %i.p, %i.ca
  br i1 %i.cb, label %"_ZN78_$LT$nickel_lang_parser..position..TermPos$u20$as$u20$core..cmp..PartialEq$GT$2eq17h31b360b14548dc95E.exit.i.i.i.i.i", label %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$24find_or_find_insert_slot28_$u7b$$u7b$closure$u7d$$u7d$17he3a8b28b6032317cE.exit.thread.i", !prof !115

"_ZN78_$LT$nickel_lang_parser..position..TermPos$u20$as$u20$core..cmp..PartialEq$GT$2eq17h31b360b14548dc95E.exit.i.i.i.i.i": ; preds = %bb.i
  %i.cc = getelementptr inbounds i8, ptr %i.bj, i64 -52
  %i.cd = load i32, ptr %i.cc, align 4, !alias.scope !69196, !noalias !69197, !noundef !34
  %i.ce = icmp eq i32 %i.r, %i.cd
  br i1 %i.ce, label %"_ZN78_$LT$nickel_lang_parser..position..TermPos$u20$as$u20$core..cmp..PartialEq$GT$2eq17h31b360b14548dc95E.exit.thread6.i.i.i.i.i", label %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$24find_or_find_insert_slot28_$u7b$$u7b$closure$u7d$$u7d$17he3a8b28b6032317cE.exit.thread.i", !prof !115

"_ZN78_$LT$nickel_lang_parser..position..TermPos$u20$as$u20$core..cmp..PartialEq$GT$2eq17h31b360b14548dc95E.exit.thread6.i.i.i.i.i": ; preds = %"_ZN78_$LT$nickel_lang_parser..position..TermPos$u20$as$u20$core..cmp..PartialEq$GT$2eq17h31b360b14548dc95E.exit.i.i.i.i.i", %.split.i.i.i.i.i, %bb.e
  %i.cf = getelementptr inbounds i8, ptr %i.bj, i64 -48
  %i.cg = load i32, ptr %i.cf, align 8, !range !65, !alias.scope !69198, !noalias !69199, !noundef !34
  %i.ch = icmp eq i32 %i.t, %i.cg
  br i1 %i.ch, label %bb.j, label %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$24find_or_find_insert_slot28_$u7b$$u7b$closure$u7d$$u7d$17he3a8b28b6032317cE.exit.thread.i", !prof !115

bb.j:                                             ; preds = %"_ZN78_$LT$nickel_lang_parser..position..TermPos$u20$as$u20$core..cmp..PartialEq$GT$2eq17h31b360b14548dc95E.exit.thread6.i.i.i.i.i"
  switch i32 %i.t, label %default.unreachable [
    i32 0, label %bb.k
    i32 1, label %bb.m
    i32 2, label %.loopexit.thread
  ]

bb.k:                                             ; preds = %bb.j
  %i.ci = getelementptr inbounds i8, ptr %i.bj, i64 -44
  %i.cj = load i32, ptr %i.ci, align 4, !alias.scope !69198, !noalias !69199, !noundef !34
  %i.ck = icmp eq i32 %i.v, %i.cj
  br i1 %i.ck, label %bb.l, label %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$24find_or_find_insert_slot28_$u7b$$u7b$closure$u7d$$u7d$17he3a8b28b6032317cE.exit.thread.i", !prof !115

bb.l:                                             ; preds = %bb.k
  %i.cl = getelementptr inbounds i8, ptr %i.bj, i64 -40
  %i.cm = load i32, ptr %i.cl, align 8, !alias.scope !69198, !noalias !69199, !noundef !34
  %i.cn = icmp eq i32 %i.x, %i.cm
  br i1 %i.cn, label %"_ZN52_$LT$Q$u20$as$u20$hashbrown..Equivalent$LT$K$GT$$GT$10equivalent17h5ba2566724b4add2E.exit.sink.split.i.i.i", label %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$24find_or_find_insert_slot28_$u7b$$u7b$closure$u7d$$u7d$17he3a8b28b6032317cE.exit.thread.i", !prof !115

bb.m:                                             ; preds = %bb.j
  %i.co = getelementptr inbounds i8, ptr %i.bj, i64 -44
  %i.cp = load i32, ptr %i.co, align 4, !alias.scope !69198, !noalias !69199, !noundef !34
  %i.cq = icmp eq i32 %i.v, %i.cp
  br i1 %i.cq, label %bb.n, label %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$24find_or_find_insert_slot28_$u7b$$u7b$closure$u7d$$u7d$17he3a8b28b6032317cE.exit.thread.i", !prof !115

bb.n:                                             ; preds = %bb.m
  %i.cr = getelementptr inbounds i8, ptr %i.bj, i64 -40
  %i.cs = load i32, ptr %i.cr, align 8, !alias.scope !69198, !noalias !69199, !noundef !34
  %i.ct = icmp eq i32 %i.x, %i.cs
  br i1 %i.ct, label %"_ZN52_$LT$Q$u20$as$u20$hashbrown..Equivalent$LT$K$GT$$GT$10equivalent17h5ba2566724b4add2E.exit.sink.split.i.i.i", label %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$24find_or_find_insert_slot28_$u7b$$u7b$closure$u7d$$u7d$17he3a8b28b6032317cE.exit.thread.i", !prof !115

"_ZN52_$LT$Q$u20$as$u20$hashbrown..Equivalent$LT$K$GT$$GT$10equivalent17h5ba2566724b4add2E.exit.sink.split.i.i.i": ; preds = %bb.n, %bb.l
  %i.cu = getelementptr inbounds i8, ptr %i.bj, i64 -36
  %i.cv = load i32, ptr %i.cu, align 4, !alias.scope !69198, !noalias !69199, !noundef !34
  %i.cw = icmp eq i32 %i.z, %i.cv
  br i1 %i.cw, label %.loopexit.thread, label %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$24find_or_find_insert_slot28_$u7b$$u7b$closure$u7d$$u7d$17he3a8b28b6032317cE.exit.thread.i", !prof !39

._crit_edge.i.i:                                  ; preds = %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$24find_or_find_insert_slot28_$u7b$$u7b$closure$u7d$$u7d$17he3a8b28b6032317cE.exit.thread.i", %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$7reserve17h7b9bbb9a33a5d431E.exit.split.i"
  %.not13.i.i = icmp eq i64 %.sroa.01.0.i.i, 0
  br i1 %.not13.i.i, label %bb.o, label %.thread.i.i, !prof !40

"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$24find_or_find_insert_slot28_$u7b$$u7b$closure$u7d$$u7d$17he3a8b28b6032317cE.exit.thread.i": ; preds = %"_ZN52_$LT$Q$u20$as$u20$hashbrown..Equivalent$LT$K$GT$$GT$10equivalent17h5ba2566724b4add2E.exit.sink.split.i.i.i", %bb.n, %bb.m, %bb.l, %bb.k, %"_ZN78_$LT$nickel_lang_parser..position..TermPos$u20$as$u20$core..cmp..PartialEq$GT$2eq17h31b360b14548dc95E.exit.thread6.i.i.i.i.i", %"_ZN78_$LT$nickel_lang_parser..position..TermPos$u20$as$u20$core..cmp..PartialEq$GT$2eq17h31b360b14548dc95E.exit.i.i.i.i.i", %bb.i, %bb.h, %.split.i.i.i.i.i, %bb.g, %bb.f, %.lr.ph.i.i
  %i.cx = add i16 %.sroa.05.026.i.i, -1
  %i.cy = and i16 %i.cx, %.sroa.05.026.i.i        ; 2 uses
  %.not.i.i = icmp eq i16 %i.cy, 0
  br i1 %.not.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i

bb.o:                                             ; preds = %._crit_edge.i.i
  %i.cz = icmp slt <16 x i8> %.sroa.0.0.copyload.i24.i.i, zeroinitializer
  %i.da = bitcast <16 x i1> %i.cz to i16          ; 2 uses
  %.not.not.i.not.i.i = icmp eq i16 %i.da, 0      ; 2 uses
  %i.db = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.da, i1 true)
  %i.dc = zext nneg i16 %i.db to i64
  %.sroa.6.0.i.i.i = select i1 %.not.not.i.not.i.i, i64 undef, i64 %i.dc
  %i.dd = add i64 %.sroa.6.0.i.i.i, %.sroa.0.017.i.i
  %i.de = and i64 %i.dd, %.val7.i
  br i1 %.not.not.i.not.i.i, label %bb.p, label %.thread.i.i

.thread.i.i:                                      ; preds = %bb.o, %._crit_edge.i.i
  %.sroa.6.121.i.i = phi i64 [ %i.de, %bb.o ], [ %.sroa.6.0.i.i, %._crit_edge.i.i ] ; 2 uses
  %i.df = icmp eq <16 x i8> %.sroa.0.0.copyload.i24.i.i, splat (i8 -1)
  %i.dg = bitcast <16 x i1> %i.df to i16
  %i.dh = icmp eq i16 %i.dg, 0
  br i1 %i.dh, label %bb.p, label %.split.us.i, !prof !37

bb.p:                                             ; preds = %.thread.i.i, %bb.o
  %.sroa.01.122.i.i = phi i64 [ 1, %.thread.i.i ], [ 0, %bb.o ]
  %.sroa.6.120.i.i = phi i64 [ %.sroa.6.121.i.i, %.thread.i.i ], [ undef, %bb.o ]
  %i.di = add i64 %i.ba, 16                       ; 2 uses
  %i.dj = add i64 %i.di, %.sroa.0.017.i.i
  br label %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$7reserve17h7b9bbb9a33a5d431E.exit.split.i"

.split.us.i:                                      ; preds = %.thread.i.i, %.thread.i.us.i
  %.us-phi22.i = phi i64 [ %.sroa.6.121.i.us.i, %.thread.i.us.i ], [ %.sroa.6.121.i.i, %.thread.i.i ] ; 2 uses
  %i.dk = getelementptr inbounds nuw i8, ptr %.val.i, i64 %.us-phi22.i
  %i.dl = load i8, ptr %i.dk, align 1, !noalias !69187, !noundef !34 ; 2 uses
  %i.dm = icmp sgt i8 %i.dl, -1
  br i1 %i.dm, label %bb.q, label %bb.t, !prof !37

bb.q:                                             ; preds = %.split.us.i
  %.val2.i.i.i = load <16 x i8>, ptr %.val.i, align 16, !noalias !69187
  %i.dn = icmp slt <16 x i8> %.val2.i.i.i, zeroinitializer
  %i.do = bitcast <16 x i1> %i.dn to i16          ; 2 uses
  %i.dp = icmp ne i16 %i.do, 0
  tail call void @llvm.assume(i1 %i.dp)
  %i.dq = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.do, i1 true)
  %i.dr = zext nneg i16 %i.dq to i64              ; 2 uses
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %.val.i, i64 %i.dr
  %.pre = load i8, ptr %.phi.trans.insert, align 1, !noalias !69200
  br label %bb.t

"_ZN4core3ptr43drop_in_place$LT$nickel..error..Warning$GT$17h07748e5d61f3aeb4E.exit": ; preds = %.loopexit, %bb.s, %bb.r, %.loopexit.thread, %bb.t
  %.sroa.0.0 = phi i1 [ false, %bb.t ], [ true, %.loopexit ], [ true, %.loopexit.thread ], [ true, %bb.r ], [ true, %bb.s ]
  ret i1 %.sroa.0.0

.loopexit:                                        ; preds = %.lr.ph.i.us.us.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !69201)
  br label %"_ZN4core3ptr43drop_in_place$LT$nickel..error..Warning$GT$17h07748e5d61f3aeb4E.exit"

.loopexit.thread:                                 ; preds = %"_ZN52_$LT$Q$u20$as$u20$hashbrown..Equivalent$LT$K$GT$$GT$10equivalent17h5ba2566724b4add2E.exit.sink.split.i.i.i", %bb.j
  %i.ds = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !69202)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !69203)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !69204)
  %i.dt = load ptr, ptr %i.ds, align 8, !alias.scope !69205, !noundef !34 ; 3 uses
  %i.du = icmp eq ptr %i.dt, null
  br i1 %i.du, label %"_ZN4core3ptr43drop_in_place$LT$nickel..error..Warning$GT$17h07748e5d61f3aeb4E.exit", label %bb.r

bb.r:                                             ; preds = %.loopexit.thread
  %i.dv = load i64, ptr %i.dt, align 8, !noalias !69206, !noundef !34
  %i.dw = add i64 %i.dv, -1                       ; 2 uses
  store i64 %i.dw, ptr %i.dt, align 8, !noalias !69206
  %i.dx = icmp eq i64 %i.dw, 0
  br i1 %i.dx, label %bb.s, label %"_ZN4core3ptr43drop_in_place$LT$nickel..error..Warning$GT$17h07748e5d61f3aeb4E.exit"

bb.s:                                             ; preds = %bb.r
  tail call void @"_ZN5alloc2rc15Rc$LT$T$C$A$GT$9drop_slow17ha3d18f83ba1e1015E"(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.ds)
  br label %"_ZN4core3ptr43drop_in_place$LT$nickel..error..Warning$GT$17h07748e5d61f3aeb4E.exit"

bb.t:                                             ; preds = %.split.us.i, %bb.q
  %i.dy = phi i8 [ %.pre, %bb.q ], [ %i.dl, %.split.us.i ]
  %.sroa.3.0.i.ph.i = phi i64 [ %i.dr, %bb.q ], [ %.us-phi22.i, %.split.us.i ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.a, ptr noundef nonnull align 8 dereferenceable(64) %1, i64 64, i1 false)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !69207)
  %i.dz = getelementptr inbounds nuw i8, ptr %.val.i, i64 %.sroa.3.0.i.ph.i
  %i.ea = and i8 %i.dy, 1
  %i.eb = zext nneg i8 %i.ea to i64
  %i.ec = add i64 %.sroa.3.0.i.ph.i, -16
  %i.ed = and i64 %i.ec, %.val7.i
  store i8 %i.k, ptr %i.dz, align 1, !noalias !69200
  %i.ee = getelementptr i8, ptr %.val.i, i64 %i.ed
  %i.ef = getelementptr i8, ptr %i.ee, i64 16
  store i8 %i.k, ptr %i.ef, align 1, !noalias !69200
  %i.eg = load <2 x i64>, ptr %i.e, align 8, !alias.scope !69207, !noalias !69208
  %i.eh = insertelement <2 x i64> <i64 poison, i64 -1>, i64 %i.eb, i64 0
  %i.ei = sub <2 x i64> %i.eg, %i.eh
  store <2 x i64> %i.ei, ptr %i.e, align 8, !alias.scope !69207, !noalias !69208
  %i.ej = sub nsw i64 0, %.sroa.3.0.i.ph.i
  %i.ek = getelementptr inbounds [64 x i8], ptr %.val.i, i64 %i.ej
  %i.el = getelementptr inbounds i8, ptr %i.ek, i64 -64
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.el, ptr noundef nonnull readonly align 8 dereferenceable(64) %i.a, i64 64, i1 false), !noalias !69207
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %"_ZN4core3ptr43drop_in_place$LT$nickel..error..Warning$GT$17h07748e5d61f3aeb4E.exit"

bb.u:                                             ; preds = %bb.v
  resume { ptr, i32 } %i.em

bb.v:                                             ; preds = %bb.b
  %i.em = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr43drop_in_place$LT$nickel..error..Warning$GT$17h07748e5d61f3aeb4E"(ptr noalias noundef align 8 dereferenceable(64) %1) #61
          to label %bb.u unwind label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.en = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #60
  unreachable
}

; Function Attrs: nonlazybind uwtable
define internal fastcc noundef ptr @"_ZN9hashbrown3map28HashMap$LT$K$C$V$C$S$C$A$GT$6insert17hdc630f17dec820fbE"(ptr noalias noundef nonnull align 8 dereferenceable(48) %0, i32 noundef %1, ptr noundef nonnull %2) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [4 x i8], align 4                 ; 2 uses
  store i32 %1, ptr %i.a, align 4
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %.val8 = load i64, ptr %i.b, align 8, !noundef !34
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 40
  %.val9 = load i64, ptr %i.c, align 8, !noundef !34
  %i.d = call fastcc noundef i64 @_ZN4core4hash11BuildHasher8hash_one17h2c3c047f98ecaf7dE(i64 %.val8, i64 %.val9, ptr noalias noundef readonly align 4 captures(address, read_provenance) dereferenceable(4) %i.a) ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.f = load i64, ptr %i.e, align 8, !alias.scope !69222, !noalias !69223, !noundef !34
  %i.g = icmp eq i64 %i.f, 0
  br i1 %i.g, label %bb.b, label %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$7reserve17h3dd8195a58f06c9cE.exit.i", !prof !37

bb.b:                                             ; preds = %bb.a
  %i.h = invoke { i64, i64 } @"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$14reserve_rehash17h4da1ae56bebd3456E"(ptr noalias noundef nonnull align 8 dereferenceable(32) %0, i64 noundef 1, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.b, i1 noundef zeroext true)
          to label %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$7reserve17h3dd8195a58f06c9cE.exit.i" unwind label %bb.l ; 0 uses

"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$7reserve17h3dd8195a58f06c9cE.exit.i": ; preds = %bb.b, %bb.a
  %.val.i = load ptr, ptr %0, align 8, !alias.scope !69224, !noalias !69225, !nonnull !34, !noundef !34 ; 8 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val7.i = load i64, ptr %i.i, align 8, !alias.scope !69224, !noalias !69225, !noundef !34 ; 4 uses
  %i.j = lshr i64 %i.d, 57
  %i.k = trunc nuw nsw i64 %i.j to i8             ; 3 uses
  %.sroa.0.0.vec.insert.i.i.i = insertelement <16 x i8> poison, i8 %i.k, i64 0
  %.sroa.0.15.vec.insert.i.i.i = shufflevector <16 x i8> %.sroa.0.0.vec.insert.i.i.i, <16 x i8> poison, <16 x i32> zeroinitializer
  br label %bb.c

bb.c:                                             ; preds = %bb.f, %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$7reserve17h3dd8195a58f06c9cE.exit.i"
  %.pn.i.i = phi i64 [ %i.d, %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$7reserve17h3dd8195a58f06c9cE.exit.i" ], [ %i.aj, %bb.f ]
  %.sroa.6.0.i.i = phi i64 [ undef, %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$7reserve17h3dd8195a58f06c9cE.exit.i" ], [ %.sroa.6.120.i.i, %bb.f ]
  %.sroa.01.0.i.i = phi i64 [ 0, %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$7reserve17h3dd8195a58f06c9cE.exit.i" ], [ %.sroa.01.122.i.i, %bb.f ]
  %i.l = phi i64 [ 0, %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$7reserve17h3dd8195a58f06c9cE.exit.i" ], [ %i.ai, %bb.f ]
  %.sroa.0.017.i.i = and i64 %.pn.i.i, %.val7.i   ; 4 uses
  %i.m = getelementptr inbounds nuw i8, ptr %.val.i, i64 %.sroa.0.017.i.i
  %.sroa.0.0.copyload.i24.i.i = load <16 x i8>, ptr %i.m, align 1, !noalias !69226 ; 3 uses
  %i.n = icmp eq <16 x i8> %.sroa.0.0.copyload.i24.i.i, %.sroa.0.15.vec.insert.i.i.i
  %i.o = bitcast <16 x i1> %i.n to i16            ; 2 uses
  %.not25.i.i = icmp eq i16 %i.o, 0
  br i1 %.not25.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.c, %bb.d
  %.sroa.05.026.i.i = phi i16 [ %i.y, %bb.d ], [ %i.o, %bb.c ] ; 3 uses
  %i.p = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.05.026.i.i, i1 true)
  %i.q = zext nneg i16 %i.p to i64
  %i.r = add i64 %.sroa.0.017.i.i, %i.q
  %i.s = and i64 %i.r, %.val7.i
  %i.t = sub nsw i64 0, %i.s
  %i.u = getelementptr inbounds [16 x i8], ptr %.val.i, i64 %i.t ; 2 uses
  %i.v = getelementptr inbounds i8, ptr %i.u, i64 -16
  %.val3.i.i = load i32, ptr %i.v, align 4, !noalias !69227, !noundef !34
  %i.w = icmp eq i32 %1, %.val3.i.i
  br i1 %i.w, label %bb.j, label %bb.d, !prof !40

._crit_edge.i.i:                                  ; preds = %bb.d, %bb.c
  %.not13.i.i = icmp eq i64 %.sroa.01.0.i.i, 0
  br i1 %.not13.i.i, label %bb.e, label %.thread.i.i, !prof !40

bb.d:                                             ; preds = %.lr.ph.i.i
  %i.x = add i16 %.sroa.05.026.i.i, -1
  %i.y = and i16 %i.x, %.sroa.05.026.i.i          ; 2 uses
  %.not.i.i = icmp eq i16 %i.y, 0
  br i1 %.not.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i

bb.e:                                             ; preds = %._crit_edge.i.i
  %i.z = icmp slt <16 x i8> %.sroa.0.0.copyload.i24.i.i, zeroinitializer
  %i.aa = bitcast <16 x i1> %i.z to i16           ; 2 uses
  %.not.not.i.not.i.i = icmp eq i16 %i.aa, 0      ; 2 uses
  %i.ab = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.aa, i1 true)
  %i.ac = zext nneg i16 %i.ab to i64
  %.sroa.6.0.i.i.i = select i1 %.not.not.i.not.i.i, i64 undef, i64 %i.ac
  %i.ad = add i64 %.sroa.6.0.i.i.i, %.sroa.0.017.i.i
  %i.ae = and i64 %i.ad, %.val7.i
  br i1 %.not.not.i.not.i.i, label %bb.f, label %.thread.i.i

.thread.i.i:                                      ; preds = %bb.e, %._crit_edge.i.i
  %.sroa.6.121.i.i = phi i64 [ %i.ae, %bb.e ], [ %.sroa.6.0.i.i, %._crit_edge.i.i ] ; 3 uses
  %i.af = icmp eq <16 x i8> %.sroa.0.0.copyload.i24.i.i, splat (i8 -1)
  %i.ag = bitcast <16 x i1> %i.af to i16
  %i.ah = icmp eq i16 %i.ag, 0
  br i1 %i.ah, label %bb.f, label %bb.g, !prof !37

bb.f:                                             ; preds = %.thread.i.i, %bb.e
  %.sroa.01.122.i.i = phi i64 [ 1, %.thread.i.i ], [ 0, %bb.e ]
  %.sroa.6.120.i.i = phi i64 [ %.sroa.6.121.i.i, %.thread.i.i ], [ undef, %bb.e ]
  %i.ai = add i64 %i.l, 16                        ; 2 uses
  %i.aj = add i64 %i.ai, %.sroa.0.017.i.i
  br label %bb.c

bb.g:                                             ; preds = %.thread.i.i
  %i.ak = getelementptr inbounds nuw i8, ptr %.val.i, i64 %.sroa.6.121.i.i
  %i.al = load i8, ptr %i.ak, align 1, !noalias !69228, !noundef !34 ; 2 uses
  %i.am = icmp sgt i8 %i.al, -1
  br i1 %i.am, label %bb.h, label %bb.i, !prof !37

bb.h:                                             ; preds = %bb.g
  %.val2.i.i.i = load <16 x i8>, ptr %.val.i, align 16, !noalias !69228
  %i.an = icmp slt <16 x i8> %.val2.i.i.i, zeroinitializer
  %i.ao = bitcast <16 x i1> %i.an to i16          ; 2 uses
  %i.ap = icmp ne i16 %i.ao, 0
  tail call void @llvm.assume(i1 %i.ap)
  %i.aq = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.ao, i1 true)
  %i.ar = zext nneg i16 %i.aq to i64              ; 2 uses
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %.val.i, i64 %i.ar
  %.pre = load i8, ptr %.phi.trans.insert, align 1, !noalias !69229
  br label %bb.i

bb.i:                                             ; preds = %bb.g, %bb.h
  %i.as = phi i8 [ %.pre, %bb.h ], [ %i.al, %bb.g ]
  %.sroa.3.0.i.ph.i = phi i64 [ %i.ar, %bb.h ], [ %.sroa.6.121.i.i, %bb.g ] ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !69229)
  %i.at = getelementptr inbounds nuw i8, ptr %.val.i, i64 %.sroa.3.0.i.ph.i
  %i.au = and i8 %i.as, 1
  %i.av = zext nneg i8 %i.au to i64
  %i.aw = add i64 %.sroa.3.0.i.ph.i, -16
  %i.ax = and i64 %i.aw, %.val7.i
  store i8 %i.k, ptr %i.at, align 1, !noalias !69229
  %i.ay = getelementptr i8, ptr %.val.i, i64 %i.ax
  %i.az = getelementptr i8, ptr %i.ay, i64 16
  store i8 %i.k, ptr %i.az, align 1, !noalias !69229
  %i.ba = load <2 x i64>, ptr %i.e, align 8, !alias.scope !69229
  %i.bb = insertelement <2 x i64> <i64 poison, i64 -1>, i64 %i.av, i64 0
  %i.bc = sub <2 x i64> %i.ba, %i.bb
  store <2 x i64> %i.bc, ptr %i.e, align 8, !alias.scope !69229
  %i.bd = sub nsw i64 0, %.sroa.3.0.i.ph.i
  %i.be = getelementptr inbounds [16 x i8], ptr %.val.i, i64 %i.bd ; 2 uses
  %i.bf = getelementptr inbounds i8, ptr %i.be, i64 -16
  store i32 %1, ptr %i.bf, align 8, !noalias !69229
  %i.bg = getelementptr inbounds i8, ptr %i.be, i64 -8
  store ptr %2, ptr %i.bg, align 8, !noalias !69229
  br label %bb.k

bb.j:                                             ; preds = %.lr.ph.i.i
  %i.bh = getelementptr inbounds i8, ptr %i.u, i64 -8 ; 2 uses
  %i.bi = load ptr, ptr %i.bh, align 8, !nonnull !34, !noundef !34
  store ptr %2, ptr %i.bh, align 8
  br label %bb.k

bb.k:                                             ; preds = %bb.i, %bb.j
  %.sroa.0.0 = phi ptr [ %i.bi, %bb.j ], [ null, %bb.i ]
  ret ptr %.sroa.0.0

bb.l:                                             ; preds = %bb.b
  %i.bj = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr63drop_in_place$LT$nickel_lang_core..eval..cache..lazy..Thunk$GT$17h9029409cbcc766c1E"(ptr nonnull %2) #61
          to label %bb.n unwind label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bk = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #60
  unreachable

bb.n:                                             ; preds = %bb.l
  resume { ptr, i32 } %i.bj
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(readwrite, target_mem: none) uwtable
define internal fastcc void @"_ZN9hashbrown3map28HashMap$LT$K$C$V$C$S$C$A$GT$6remove17h88ea85fb81c7860cE"(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(32) %0, ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(48) %1, i32 %.0.val) unnamed_addr #33 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [4 x i8], align 4                 ; 4 uses
  %i.b = alloca [72 x i8], align 16               ; 11 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !69271)
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 32
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !69272
  %.sroa.48.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.sroa.59.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  %.sroa.610.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %.sroa.711.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.d = load <2 x i64>, ptr %i.c, align 8, !alias.scope !69271, !noalias !69273 ; 3 uses
  %i.e = shufflevector <2 x i64> %i.d, <2 x i64> poison, <2 x i32> zeroinitializer
  %i.f = xor <2 x i64> %i.e, <i64 8317987319222330741, i64 7816392313619706465>
  store <2 x i64> %i.f, ptr %i.b, align 16, !alias.scope !69274, !noalias !69272
  %i.g = shufflevector <2 x i64> %i.d, <2 x i64> poison, <2 x i32> <i32 1, i32 1>
  %i.h = xor <2 x i64> %i.g, <i64 7237128888997146477, i64 8387220255154660723>
  store <2 x i64> %i.h, ptr %.sroa.59.0..sroa_idx.i.i.i, align 16, !alias.scope !69274, !noalias !69272
  store <2 x i64> %i.d, ptr %.sroa.711.0..sroa_idx.i.i.i, align 16, !alias.scope !69274, !noalias !69272
  %.sroa.913.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 48 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %.sroa.913.0..sroa_idx.i.i.i, i8 0, i64 24, i1 false), !alias.scope !69274, !noalias !69272
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !69275
  store i32 %.0.val, ptr %i.a, align 4, !noalias !69275
  call fastcc void @"_ZN71_$LT$core..hash..sip..Hasher$LT$S$GT$$u20$as$u20$core..hash..Hasher$GT$5write17h6846a1ced2d81e4eE"(ptr noalias noundef nonnull align 8 dereferenceable(72) %i.b, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.a, i64 noundef 4), !noalias !69272
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !69275
  %.sroa.0.0.copyload.i.i.i.i = load i64, ptr %i.b, align 16, !alias.scope !69276, !noalias !69272
  %.sroa.10.0.copyload.i.i.i.i = load i64, ptr %.sroa.48.0..sroa_idx.i.i.i, align 8, !alias.scope !69276, !noalias !69272
  %.sroa.17.0.copyload.i.i.i.i = load i64, ptr %.sroa.59.0..sroa_idx.i.i.i, align 16, !alias.scope !69276, !noalias !69272 ; 3 uses
  %.sroa.22.0.copyload.i.i.i.i = load i64, ptr %.sroa.610.0..sroa_idx.i.i.i, align 8, !alias.scope !69276, !noalias !69272
  %i.i = load i64, ptr %.sroa.913.0..sroa_idx.i.i.i, align 16, !alias.scope !69276, !noalias !69272, !noundef !34
  %i.j = shl i64 %i.i, 56
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  %i.l = load i64, ptr %i.k, align 8, !alias.scope !69276, !noalias !69272, !noundef !34
  %i.m = or i64 %i.j, %i.l                        ; 2 uses
  %i.n = xor i64 %i.m, %.sroa.22.0.copyload.i.i.i.i ; 3 uses
  %i.o = add i64 %.sroa.17.0.copyload.i.i.i.i, %.sroa.0.0.copyload.i.i.i.i ; 3 uses
  %i.p = add i64 %i.n, %.sroa.10.0.copyload.i.i.i.i ; 2 uses
  %i.q = tail call i64 @llvm.fshl.i64(i64 %.sroa.17.0.copyload.i.i.i.i, i64 %.sroa.17.0.copyload.i.i.i.i, i64 13)
  %i.r = xor i64 %i.q, %i.o                       ; 3 uses
  %i.s = tail call i64 @llvm.fshl.i64(i64 %i.n, i64 %i.n, i64 16)
  %i.t = xor i64 %i.s, %i.p                       ; 3 uses
  %i.u = tail call i64 @llvm.fshl.i64(i64 %i.o, i64 %i.o, i64 32)
  %i.v = add i64 %i.p, %i.r                       ; 3 uses
  %i.w = add i64 %i.t, %i.u                       ; 2 uses
  %i.x = tail call i64 @llvm.fshl.i64(i64 %i.r, i64 %i.r, i64 17)
  %i.y = xor i64 %i.v, %i.x                       ; 3 uses
  %i.z = tail call i64 @llvm.fshl.i64(i64 %i.t, i64 %i.t, i64 21)
  %i.aa = xor i64 %i.z, %i.w                      ; 3 uses
  %i.ab = tail call i64 @llvm.fshl.i64(i64 %i.v, i64 %i.v, i64 32)
  %i.ac = xor i64 %i.w, %i.m
  %i.ad = xor i64 %i.ab, 255
  %i.ae = add i64 %i.ac, %i.y                     ; 3 uses
  %i.af = add i64 %i.aa, %i.ad                    ; 2 uses
  %i.ag = tail call i64 @llvm.fshl.i64(i64 %i.y, i64 %i.y, i64 13)
  %i.ah = xor i64 %i.ae, %i.ag                    ; 3 uses
  %i.ai = tail call i64 @llvm.fshl.i64(i64 %i.aa, i64 %i.aa, i64 16)
  %i.aj = xor i64 %i.ai, %i.af                    ; 3 uses
  %i.ak = tail call i64 @llvm.fshl.i64(i64 %i.ae, i64 %i.ae, i64 32)
  %i.al = add i64 %i.ah, %i.af                    ; 3 uses
  %i.am = add i64 %i.aj, %i.ak                    ; 2 uses
  %i.an = tail call i64 @llvm.fshl.i64(i64 %i.ah, i64 %i.ah, i64 17)
  %i.ao = xor i64 %i.al, %i.an                    ; 3 uses
  %i.ap = tail call i64 @llvm.fshl.i64(i64 %i.aj, i64 %i.aj, i64 21)
  %i.aq = xor i64 %i.ap, %i.am                    ; 3 uses
  %i.ar = tail call i64 @llvm.fshl.i64(i64 %i.al, i64 %i.al, i64 32)
  %i.as = add i64 %i.ao, %i.am                    ; 3 uses
  %i.at = add i64 %i.aq, %i.ar                    ; 2 uses
  %i.au = tail call i64 @llvm.fshl.i64(i64 %i.ao, i64 %i.ao, i64 13)
  %i.av = xor i64 %i.au, %i.as                    ; 3 uses
  %i.aw = tail call i64 @llvm.fshl.i64(i64 %i.aq, i64 %i.aq, i64 16)
  %i.ax = xor i64 %i.aw, %i.at                    ; 3 uses
  %i.ay = tail call i64 @llvm.fshl.i64(i64 %i.as, i64 %i.as, i64 32)
  %i.az = add i64 %i.av, %i.at                    ; 3 uses
  %i.ba = add i64 %i.ax, %i.ay                    ; 2 uses
  %i.bb = tail call i64 @llvm.fshl.i64(i64 %i.av, i64 %i.av, i64 17)
  %i.bc = xor i64 %i.bb, %i.az                    ; 3 uses
  %i.bd = tail call i64 @llvm.fshl.i64(i64 %i.ax, i64 %i.ax, i64 21)
  %i.be = xor i64 %i.bd, %i.ba                    ; 3 uses
  %i.bf = tail call i64 @llvm.fshl.i64(i64 %i.az, i64 %i.az, i64 32)
  %i.bg = add i64 %i.bc, %i.ba
  %i.bh = add i64 %i.be, %i.bf                    ; 2 uses
  %i.bi = tail call i64 @llvm.fshl.i64(i64 %i.bc, i64 %i.bc, i64 13)
  %i.bj = xor i64 %i.bi, %i.bg                    ; 3 uses
  %i.bk = tail call i64 @llvm.fshl.i64(i64 %i.be, i64 %i.be, i64 16)
  %i.bl = xor i64 %i.bk, %i.bh                    ; 2 uses
  %i.bm = add i64 %i.bj, %i.bh                    ; 3 uses
  %i.bn = tail call i64 @llvm.fshl.i64(i64 %i.bj, i64 %i.bj, i64 17)
  %i.bo = tail call i64 @llvm.fshl.i64(i64 %i.bl, i64 %i.bl, i64 21)
  %i.bp = tail call i64 @llvm.fshl.i64(i64 %i.bm, i64 %i.bm, i64 32)
  %i.bq = xor i64 %i.bo, %i.bn
  %i.br = xor i64 %i.bq, %i.bp
  %i.bs = xor i64 %i.br, %i.bm                    ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !69272
  tail call void @llvm.experimental.noalias.scope.decl(metadata !69277)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !69278)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !69279)
  %i.bt = lshr i64 %i.bs, 57
  %i.bu = trunc nuw nsw i64 %i.bt to i8
end_hunk_8
