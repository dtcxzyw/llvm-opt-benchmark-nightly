Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/nickel-rs/original/nls-21108e55ddbceac4.nls.aaf5fb48c83e0b2-cgu.0?download=true
inline.NumInlined: 33046
inline.NumDeleted: 15305
loop-unroll.NumCompletelyUnrolled: 63
loop-unroll.NumRuntimeUnrolled: 86
loop-unroll.NumUnrolled: 156
begin_hunk_0_@"_ZN16nickel_lang_core9serialize100_$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$nickel_lang_core..eval..value..NickelValue$GT$11deserialize17hf5bd992e2385d997E":bb.a
  br i1 %i.fm, label %"_ZN205_$LT$nickel_lang_core..serialize..$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$nickel_lang_core..eval..value..NickelValue$GT$..deserialize..NickelValueVisitor$u20$as$u20$serde_core..de..Visitor$GT$9visit_seq17h043096295c775b64E.exit", label %bb.bd

bb.bd:                                            ; preds = %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h12a6215d3925c8f8E.exit.i.i"
  %i.fn = shl nuw i64 %.val2.i.i, 3
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i, i64 noundef %i.fn, i64 noundef range(i64 1, -9223372036854775807) 8) #66, !noalias !34908, !inline_history !34634
  br label %"_ZN205_$LT$nickel_lang_core..serialize..$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$nickel_lang_core..eval..value..NickelValue$GT$..deserialize..NickelValueVisitor$u20$as$u20$serde_core..de..Visitor$GT$9visit_seq17h043096295c775b64E.exit"

bb.be:                                            ; preds = %_ZN10serde_core2de9SeqAccess12next_element17hd16a9db0a80c4ddbE.exit.i
  %.not.i24 = icmp eq ptr %i.fh, null
  br i1 %.not.i24, label %.thread.loopexit346, label %bb.bf

bb.bf:                                            ; preds = %bb.be
  call void @llvm.experimental.noalias.scope.decl(metadata !34909)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v), !noalias !34895
  store ptr %i.fh, ptr %i.v, align 8, !noalias !34910
  %i.fo = load i64, ptr %i.em, align 8, !alias.scope !34909, !noalias !34895, !noundef !46 ; 3 uses
  %i.fp = load i64, ptr %i.z, align 8, !range !76, !alias.scope !34909, !noalias !34895, !noundef !46
  %i.fq = icmp eq i64 %i.fo, %i.fp
  br i1 %i.fq, label %bb.bg, label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17h568451d6f379098fE.exit.i"

bb.bg:                                            ; preds = %bb.bf
  invoke void @"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$8grow_one17hd99878f8a2078874E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.z, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @768)
          to label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17h568451d6f379098fE.exit.i" unwind label %bb.bh, !inline_history !34634

bb.bh:                                            ; preds = %bb.bg
  %i.fr = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN4core3ptr63drop_in_place$LT$nickel_lang_core..eval..value..NickelValue$GT$17hc4da17c3e9a9e378E"(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.v) #77
          to label %.body.i.thread unwind label %bb.bi, !inline_history !34634

bb.bi:                                            ; preds = %bb.bh
  %i.fs = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #76, !inline_history !34634
  unreachable

"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17h568451d6f379098fE.exit.i": ; preds = %bb.bg, %bb.bf
  %i.ft = load ptr, ptr %i.el, align 8, !alias.scope !34909, !noalias !34895, !nonnull !46, !noundef !46
  %i.fu = getelementptr inbounds nuw [8 x i8], ptr %i.ft, i64 %i.fo
  store ptr %i.fh, ptr %i.fu, align 8
  %i.fv = add i64 %i.fo, 1                        ; 2 uses
  store i64 %i.fv, ptr %i.em, align 8, !alias.scope !34909, !noalias !34895
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v), !noalias !34895
  %i.fw = load i64, ptr %i.az, align 8, !alias.scope !34911, !noalias !34898, !noundef !46 ; 2 uses
  %.promoted.i.i.i69 = load i64, ptr %i.ay, align 8, !alias.scope !34912, !noalias !34898 ; 2 uses
  %i.fx = icmp ult i64 %.promoted.i.i.i69, %i.fw
  br i1 %i.fx, label %.lr.ph.i.i.i71, label %.loopexit23.i.i

.thread.loopexit346:                              ; preds = %bb.be
  %.sroa.597.0.copyload.pre = load i64, ptr %i.em, align 8, !noalias !34895
  br label %.thread

.thread:                                          ; preds = %bb.at, %.thread.loopexit346
  %.sroa.597.0.copyload = phi i64 [ %.sroa.597.0.copyload.pre, %.thread.loopexit346 ], [ %.sroa.597.0.copyload427, %bb.at ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.y), !noalias !34895
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x), !noalias !34895
  %.sroa.096.0.copyload = load i64, ptr %i.z, align 8, !noalias !34895
  %.sroa.4.0.copyload = load ptr, ptr %i.el, align 8, !noalias !34895, !nonnull !46, !noundef !46 ; 3 uses
  %i.fy = icmp ult i64 %.sroa.597.0.copyload, 1152921504606846976
  call void @llvm.assume(i1 %i.fy)
  %i.fz = getelementptr inbounds nuw [8 x i8], ptr %.sroa.4.0.copyload, i64 %.sroa.597.0.copyload
  store ptr %.sroa.4.0.copyload, ptr %i.x, align 8, !alias.scope !34913, !noalias !34895
  %i.ga = getelementptr inbounds nuw i8, ptr %i.x, i64 16
  store i64 %.sroa.096.0.copyload, ptr %i.ga, align 8, !alias.scope !34913, !noalias !34895
  %i.gb = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  store ptr %.sroa.4.0.copyload, ptr %i.gb, align 8, !alias.scope !34913, !noalias !34895
  %i.gc = getelementptr inbounds nuw i8, ptr %i.x, i64 24
  store ptr %i.fz, ptr %i.gc, align 8, !alias.scope !34913, !noalias !34895
  call fastcc void @_ZN4core4iter6traits8iterator8Iterator7collect17hb6fd1a9a08ef36f8E(ptr noalias noundef align 8 captures(address) dereferenceable(40) %i.y, ptr noalias noundef align 8 captures(address) dereferenceable(32) %i.x), !inline_history !34634
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x), !noalias !34895
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w), !noalias !34895
  store i64 0, ptr %i.w, align 8, !noalias !34895
  %i.gd = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %i.gd, align 8, !noalias !34895
  %i.ge = getelementptr inbounds nuw i8, ptr %i.w, i64 16
  store i64 0, ptr %i.ge, align 8, !noalias !34895
  %i.gf = call noundef nonnull ptr @_ZN16nickel_lang_core4eval5value11NickelValue5array17h650af8dba8a4cfcfE(ptr noalias noundef nonnull align 8 captures(address) dereferenceable(40) %i.y, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.w, i32 noundef -1), !inline_history !34634
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w), !noalias !34895
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y), !noalias !34895
  br label %"_ZN205_$LT$nickel_lang_core..serialize..$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$nickel_lang_core..eval..value..NickelValue$GT$..deserialize..NickelValueVisitor$u20$as$u20$serde_core..de..Visitor$GT$9visit_seq17h043096295c775b64E.exit"

.body.i.thread:                                   ; preds = %.body.i.thread145.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.bh
  %eh.lpad-body.i144 = phi { ptr, i32 } [ %i.fr, %bb.bh ], [ %lpad.loopexit.split-lp995, %.body.i.thread145.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  invoke fastcc void @"_ZN4core3ptr86drop_in_place$LT$alloc..vec..Vec$LT$nickel_lang_core..eval..value..NickelValue$GT$$GT$17h8728aaad7e43e632E"(ptr noalias noundef align 8 dereferenceable(24) %i.z) #77
          to label %common.resume565 unwind label %bb.bj, !inline_history !34634

bb.bj:                                            ; preds = %.body.i.thread
  %i.gg = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #76, !inline_history !34634
  unreachable

"_ZN205_$LT$nickel_lang_core..serialize..$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$nickel_lang_core..eval..value..NickelValue$GT$..deserialize..NickelValueVisitor$u20$as$u20$serde_core..de..Visitor$GT$9visit_seq17h043096295c775b64E.exit": ; preds = %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h12a6215d3925c8f8E.exit.i.i", %bb.bd, %.thread
  %.sroa.3.0.i25 = phi ptr [ %i.gf, %.thread ], [ %.sroa.5.0.i134, %bb.bd ], [ %.sroa.5.0.i134, %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h12a6215d3925c8f8E.exit.i.i" ] ; 5 uses
  %.sroa.0.0.i26 = phi i64 [ 0, %.thread ], [ 1, %bb.bd ], [ 1, %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h12a6215d3925c8f8E.exit.i.i" ] ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z), !noalias !34895
  %i.gh = load i8, ptr %i.dg, align 8, !alias.scope !34827, !noundef !46
  %i.gi = add i8 %i.gh, 1
  store i8 %i.gi, ptr %i.dg, align 8, !alias.scope !34827
  call void @llvm.lifetime.start.p0(ptr nonnull %i.as), !noalias !34827
  call void @llvm.experimental.noalias.scope.decl(metadata !34914)
  call void @llvm.experimental.noalias.scope.decl(metadata !34915)
  %i.gj = load i64, ptr %i.az, align 8, !alias.scope !34916, !noundef !46 ; 4 uses
  %.promoted.i.i13 = load i64, ptr %i.ay, align 8, !alias.scope !34917 ; 2 uses
  %i.gk = icmp ult i64 %.promoted.i.i13, %i.gj
  br i1 %i.gk, label %.lr.ph.i.i16, label %.loopexit.i14

.lr.ph.i.i16:                                     ; preds = %"_ZN205_$LT$nickel_lang_core..serialize..$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$nickel_lang_core..eval..value..NickelValue$GT$..deserialize..NickelValueVisitor$u20$as$u20$serde_core..de..Visitor$GT$9visit_seq17h043096295c775b64E.exit"
  %i.gl = load ptr, ptr %i.bc, align 8, !alias.scope !34916, !nonnull !46, !align !59, !noundef !46 ; 2 uses
  br label %bb.bk

bb.bk:                                            ; preds = %bb.bl, %.lr.ph.i.i16
  %i.gm = phi i64 [ %.promoted.i.i13, %.lr.ph.i.i16 ], [ %i.gp, %bb.bl ] ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !34918)
  call void @llvm.experimental.noalias.scope.decl(metadata !34919)
  %i.gn = getelementptr inbounds nuw i8, ptr %i.gl, i64 %i.gm
  %i.go = load i8, ptr %i.gn, align 1, !noalias !34920, !noundef !46
  switch i8 %i.go, label %bb.bm [
    i8 32, label %bb.bl
    i8 10, label %bb.bl
    i8 9, label %bb.bl
    i8 13, label %bb.bl
    i8 93, label %"_ZN10serde_json2de21Deserializer$LT$R$GT$7end_seq17hef745176dd7e5802E.exit.thread"
    i8 44, label %bb.bn
  ], !prof !34921

bb.bl:                                            ; preds = %bb.bk, %bb.bk, %bb.bk, %bb.bk
  %i.gp = add nuw i64 %i.gm, 1                    ; 3 uses
  store i64 %i.gp, ptr %i.ay, align 8, !alias.scope !34922
  %exitcond.not.i.i18 = icmp eq i64 %i.gp, %i.gj
  br i1 %exitcond.not.i.i18, label %.loopexit.i14, label %bb.bk

.loopexit.i14:                                    ; preds = %bb.bl, %"_ZN205_$LT$nickel_lang_core..serialize..$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$nickel_lang_core..eval..value..NickelValue$GT$..deserialize..NickelValueVisitor$u20$as$u20$serde_core..de..Visitor$GT$9visit_seq17h043096295c775b64E.exit"
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aa), !noalias !34914
  store i64 2, ptr %i.aa, align 8, !noalias !34914
  %i.gq = invoke fastcc noundef nonnull align 8 ptr @"_ZN10serde_json2de21Deserializer$LT$R$GT$10peek_error17h0a14d9ae1e318286E"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %0, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.aa)
          to label %.noexc19 unwind label %.body

.noexc19:                                         ; preds = %.loopexit.i14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa), !noalias !34914
  br label %"_ZN10serde_json2de21Deserializer$LT$R$GT$7end_seq17hef745176dd7e5802E.exit"

bb.bm:                                            ; preds = %bb.bk
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ab), !noalias !34914
  store i64 22, ptr %i.ab, align 8, !noalias !34914
  %i.gr = invoke fastcc noundef nonnull align 8 ptr @"_ZN10serde_json2de21Deserializer$LT$R$GT$10peek_error17h0a14d9ae1e318286E"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %0, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.ab)
          to label %.noexc20 unwind label %.body

.noexc20:                                         ; preds = %bb.bm
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab), !noalias !34914
  br label %"_ZN10serde_json2de21Deserializer$LT$R$GT$7end_seq17hef745176dd7e5802E.exit"

bb.bn:                                            ; preds = %bb.bk
  %i.gs = add nuw i64 %i.gm, 1                    ; 3 uses
  store i64 %i.gs, ptr %i.ay, align 8, !alias.scope !34923
  call void @llvm.experimental.noalias.scope.decl(metadata !34924)
  %i.gt = icmp ult i64 %i.gs, %i.gj
  br i1 %i.gt, label %.lr.ph.i15.i, label %"_ZN10serde_json2de21Deserializer$LT$R$GT$16parse_whitespace17hccdce630c600ea9eE.exit17.thread.i"

.lr.ph.i15.i:                                     ; preds = %bb.bn, %bb.bo
  %i.gu = phi i64 [ %i.gx, %bb.bo ], [ %i.gs, %bb.bn ] ; 2 uses
  %i.gv = getelementptr inbounds nuw i8, ptr %i.gl, i64 %i.gu
  %i.gw = load i8, ptr %i.gv, align 1, !noalias !34925, !noundef !46
  switch i8 %i.gw, label %"_ZN10serde_json2de21Deserializer$LT$R$GT$16parse_whitespace17hccdce630c600ea9eE.exit17.thread.i" [
    i8 32, label %bb.bo
    i8 10, label %bb.bo
    i8 9, label %bb.bo
    i8 13, label %bb.bo
    i8 93, label %bb.bp
  ]

bb.bo:                                            ; preds = %.lr.ph.i15.i, %.lr.ph.i15.i, %.lr.ph.i15.i, %.lr.ph.i15.i
  %i.gx = add nuw i64 %i.gu, 1                    ; 3 uses
  store i64 %i.gx, ptr %i.ay, align 8, !alias.scope !34926
  %exitcond.not.i16.i = icmp eq i64 %i.gx, %i.gj
  br i1 %exitcond.not.i16.i, label %"_ZN10serde_json2de21Deserializer$LT$R$GT$16parse_whitespace17hccdce630c600ea9eE.exit17.thread.i", label %.lr.ph.i15.i

"_ZN10serde_json2de21Deserializer$LT$R$GT$16parse_whitespace17hccdce630c600ea9eE.exit17.thread.i": ; preds = %bb.bo, %.lr.ph.i15.i, %bb.bn
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ac), !noalias !34914
  store i64 22, ptr %i.ac, align 8, !noalias !34914
  %i.gy = invoke fastcc noundef nonnull align 8 ptr @"_ZN10serde_json2de21Deserializer$LT$R$GT$10peek_error17h0a14d9ae1e318286E"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %0, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.ac)
          to label %bb.br unwind label %.body

bb.bp:                                            ; preds = %.lr.ph.i15.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ad), !noalias !34914
  store i64 21, ptr %i.ad, align 8, !noalias !34914
  %i.gz = invoke fastcc noundef nonnull align 8 ptr @"_ZN10serde_json2de21Deserializer$LT$R$GT$10peek_error17h0a14d9ae1e318286E"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %0, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.ad)
          to label %bb.bq unwind label %.body

bb.bq:                                            ; preds = %bb.bp
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ad), !noalias !34914
  br label %"_ZN10serde_json2de21Deserializer$LT$R$GT$7end_seq17hef745176dd7e5802E.exit"

bb.br:                                            ; preds = %"_ZN10serde_json2de21Deserializer$LT$R$GT$16parse_whitespace17hccdce630c600ea9eE.exit17.thread.i"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ac), !noalias !34914
  br label %"_ZN10serde_json2de21Deserializer$LT$R$GT$7end_seq17hef745176dd7e5802E.exit"

.body:                                            ; preds = %bb.bp, %"_ZN10serde_json2de21Deserializer$LT$R$GT$16parse_whitespace17hccdce630c600ea9eE.exit17.thread.i", %bb.bm, %.loopexit.i14
  %i.ha = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr118drop_in_place$LT$core..result..Result$LT$nickel_lang_core..eval..value..NickelValue$C$serde_json..error..Error$GT$$GT$17h6065bb93c4d3240cE"(i64 %.sroa.0.0.i26, ptr nonnull %.sroa.3.0.i25) #77
          to label %common.resume565 unwind label %bb.bt, !inline_history !34503

"_ZN10serde_json2de21Deserializer$LT$R$GT$7end_seq17hef745176dd7e5802E.exit": ; preds = %.noexc20, %.noexc19, %bb.bq, %bb.br
  %.sroa.0.0.i15 = phi ptr [ %i.gr, %.noexc20 ], [ %i.gz, %bb.bq ], [ %i.gq, %.noexc19 ], [ %i.gy, %bb.br ] ; 8 uses
  store i64 %.sroa.0.0.i26, ptr %i.as, align 8, !noalias !34827
  %i.hb = getelementptr inbounds nuw i8, ptr %i.as, i64 8 ; 2 uses
  store ptr %.sroa.3.0.i25, ptr %i.hb, align 8, !noalias !34827
  %i.hc = getelementptr inbounds nuw i8, ptr %i.as, i64 16
  store ptr %.sroa.0.0.i15, ptr %i.hc, align 8, !noalias !34827
  %i.hd = trunc nuw i64 %.sroa.0.0.i26 to i1
  br i1 %i.hd, label %bb.bu, label %bb.bs, !prof !90

"_ZN10serde_json2de21Deserializer$LT$R$GT$7end_seq17hef745176dd7e5802E.exit.thread": ; preds = %bb.bk
  %i.he = add nuw i64 %i.gm, 1
  store i64 %i.he, ptr %i.ay, align 8, !alias.scope !34927
  %i.hf = trunc nuw i64 %.sroa.0.0.i26 to i1
  br i1 %i.hf, label %.split.thread, label %.split, !prof !140

bb.bs:                                            ; preds = %"_ZN10serde_json2de21Deserializer$LT$R$GT$7end_seq17hef745176dd7e5802E.exit"
  call void @"_ZN4core3ptr63drop_in_place$LT$nickel_lang_core..eval..value..NickelValue$GT$17hc4da17c3e9a9e378E"(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.hb), !inline_history !34503
  br label %.split.thread

bb.bt:                                            ; preds = %bb.dt, %.body
  %i.hg = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #76, !inline_history !34503
  unreachable

.split.thread:                                    ; preds = %"_ZN4core3ptr45drop_in_place$LT$serde_json..error..Error$GT$17hb7a4e037a5b65337E.exit12", %"_ZN10serde_json2de21Deserializer$LT$R$GT$7end_seq17hef745176dd7e5802E.exit.thread", %bb.bs
  %.sroa.37.1.i164.ph = phi ptr [ %.sroa.0.0.i15, %bb.bs ], [ %.sroa.3.0.i25, %"_ZN10serde_json2de21Deserializer$LT$R$GT$7end_seq17hef745176dd7e5802E.exit.thread" ], [ %.sroa.3.0.i25, %"_ZN4core3ptr45drop_in_place$LT$serde_json..error..Error$GT$17hb7a4e037a5b65337E.exit12" ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.as), !noalias !34827
  br label %bb.aq

.split:                                           ; preds = %"_ZN10serde_json2de21Deserializer$LT$R$GT$7end_seq17hef745176dd7e5802E.exit.thread"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.as), !noalias !34827
  br label %"_ZN98_$LT$$RF$mut$u20$serde_json..de..Deserializer$LT$R$GT$$u20$as$u20$serde_core..de..Deserializer$GT$15deserialize_any17hbb8a57c17331b075E.exit"

bb.bu:                                            ; preds = %"_ZN10serde_json2de21Deserializer$LT$R$GT$7end_seq17hef745176dd7e5802E.exit"
  call void @llvm.experimental.noalias.scope.decl(metadata !34928)
  call void @llvm.experimental.noalias.scope.decl(metadata !34929)
  %i.hh = load i64, ptr %.sroa.0.0.i15, align 8, !range !138, !alias.scope !34930, !noalias !34931, !noundef !46
  switch i64 %i.hh, label %"_ZN4core3ptr45drop_in_place$LT$serde_json..error..Error$GT$17hb7a4e037a5b65337E.exit12" [
    i64 0, label %bb.bv
    i64 1, label %bb.bw
  ]

bb.bv:                                            ; preds = %bb.bu
  %i.hi = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i15, i64 16
  %.val1.i.i.i.i9 = load i64, ptr %i.hi, align 8, !alias.scope !34930, !noalias !34931, !noundef !46 ; 2 uses
  %i.hj = icmp eq i64 %.val1.i.i.i.i9, 0
  br i1 %i.hj, label %"_ZN4core3ptr45drop_in_place$LT$serde_json..error..Error$GT$17hb7a4e037a5b65337E.exit12", label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i.i.i10"

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i.i.i10": ; preds = %bb.bv
  %i.hk = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i15, i64 8
  %.val.i.i.i.i11 = load ptr, ptr %i.hk, align 8, !alias.scope !34930, !noalias !34931, !nonnull !46, !noundef !46
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i.i.i11, i64 noundef %.val1.i.i.i.i9, i64 noundef 1) #66, !noalias !34932
  br label %"_ZN4core3ptr45drop_in_place$LT$serde_json..error..Error$GT$17hb7a4e037a5b65337E.exit12"

bb.bw:                                            ; preds = %bb.bu
  %i.hl = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i15, i64 8
  invoke void @"_ZN4core3ptr42drop_in_place$LT$std..io..error..Error$GT$17h0c80501cefa94e37E"(ptr noalias noundef nonnull readonly align 8 dereferenceable(8) %i.hl)
          to label %"_ZN4core3ptr45drop_in_place$LT$serde_json..error..Error$GT$17hb7a4e037a5b65337E.exit12" unwind label %bb.bx, !noalias !34931

bb.bx:                                            ; preds = %bb.bw
  %i.hm = landingpad { ptr, i32 }
          cleanup
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.0.0.i15, i64 noundef 40, i64 noundef 8) #66, !noalias !34931
  br label %common.resume565

"_ZN4core3ptr45drop_in_place$LT$serde_json..error..Error$GT$17hb7a4e037a5b65337E.exit12": ; preds = %bb.bu, %bb.bv, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i.i.i10", %bb.bw
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.0.0.i15, i64 noundef 40, i64 noundef 8) #66, !noalias !34931
  br label %.split.thread

.thread254:                                       ; preds = %"_ZN10serde_json2de21Deserializer$LT$R$GT$7end_map17hb2034534c4b1657bE.exit.thread", %bb.du
  %.sroa.37.4.i.ph.ph = phi ptr [ %.sroa.0.0.i, %bb.du ], [ %.sroa.3.0.i, %"_ZN10serde_json2de21Deserializer$LT$R$GT$7end_map17hb2034534c4b1657bE.exit.thread" ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aq), !noalias !34827
  br label %bb.aq

bb.by:                                            ; preds = %"_ZN10serde_json2de21Deserializer$LT$R$GT$7end_map17hb2034534c4b1657bE.exit.thread"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aq), !noalias !34827
  br label %"_ZN98_$LT$$RF$mut$u20$serde_json..de..Deserializer$LT$R$GT$$u20$as$u20$serde_core..de..Deserializer$GT$15deserialize_any17hbb8a57c17331b075E.exit"

bb.bz:                                            ; preds = %bb.ae
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ar), !noalias !34827
  store i64 24, ptr %i.ar, align 8, !noalias !34827
  %i.hn = call fastcc noundef nonnull align 8 ptr @"_ZN10serde_json2de21Deserializer$LT$R$GT$10peek_error17h0a14d9ae1e318286E"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %0, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.ar), !inline_history !34503
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ar), !noalias !34827
  br label %"_ZN98_$LT$$RF$mut$u20$serde_json..de..Deserializer$LT$R$GT$$u20$as$u20$serde_core..de..Deserializer$GT$15deserialize_any17hbb8a57c17331b075E.exit"

bb.ca:                                            ; preds = %bb.ae
  %i.ho = add nuw i64 %i.be, 1                    ; 2 uses
  store i64 %i.ho, ptr %i.ay, align 8, !alias.scope !34933
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ak)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.al), !noalias !34934
  %i.hp = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr @"_ZN3std4hash6random11RandomState3new4KEYS29_$u7b$$u7b$constant$u7d$$u7d$28_$u7b$$u7b$closure$u7d$$u7d$3VAL17h3d0bd8071983845cE") ; 5 uses
  %i.hq = getelementptr inbounds nuw i8, ptr %i.hp, i64 16 ; 2 uses
  %i.hr = load i8, ptr %i.hq, align 8, !range !47, !noalias !34935, !noundef !46
  %i.hs = trunc nuw i8 %i.hr to i1
  br i1 %i.hs, label %._ZN4core3ops8function6FnOnce9call_once17h668ba387f5b47fbaE.exit_crit_edge.i.i.i, label %"_ZN3std3sys12thread_local6native4lazy20Storage$LT$T$C$D$GT$16get_or_init_slow17h910dc175fbe29d29E.exit.i.i.i", !prof !48

._ZN4core3ops8function6FnOnce9call_once17h668ba387f5b47fbaE.exit_crit_edge.i.i.i: ; preds = %bb.ca
  %.pre.i.i.i = load i64, ptr %i.hp, align 8, !noalias !34936
  %.phi.trans.insert.i.i.i = getelementptr inbounds nuw i8, ptr %i.hp, i64 8
  %.pre1.i.i.i = load i64, ptr %.phi.trans.insert.i.i.i, align 8, !noalias !34936
  br label %"_ZN3std6thread5local17LocalKey$LT$T$GT$4with17h6ed99d389ba489beE.exit.i"

"_ZN3std3sys12thread_local6native4lazy20Storage$LT$T$C$D$GT$16get_or_init_slow17h910dc175fbe29d29E.exit.i.i.i": ; preds = %bb.ca
  %i.ht = tail call { i64, i64 } @_ZN3std3sys6random5linux19hashmap_random_keys17he133c8f345d0b53aE(), !noalias !34937, !inline_history !34689 ; 2 uses
  %i.hu = extractvalue { i64, i64 } %i.ht, 0
  %i.hv = extractvalue { i64, i64 } %i.ht, 1      ; 2 uses
  %i.hw = getelementptr inbounds nuw i8, ptr %i.hp, i64 8
  store i64 %i.hv, ptr %i.hw, align 8, !noalias !34938
  store i8 1, ptr %i.hq, align 8, !noalias !34938
  %.pre = load i64, ptr %i.az, align 8, !alias.scope !34939, !noalias !34940
  %.promoted.i.i.i.i336.pre = load i64, ptr %i.ay, align 8, !alias.scope !34941, !noalias !34940
  br label %"_ZN3std6thread5local17LocalKey$LT$T$GT$4with17h6ed99d389ba489beE.exit.i"

"_ZN3std6thread5local17LocalKey$LT$T$GT$4with17h6ed99d389ba489beE.exit.i": ; preds = %"_ZN3std3sys12thread_local6native4lazy20Storage$LT$T$C$D$GT$16get_or_init_slow17h910dc175fbe29d29E.exit.i.i.i", %._ZN4core3ops8function6FnOnce9call_once17h668ba387f5b47fbaE.exit_crit_edge.i.i.i
  %.pre-phi430 = phi i64 [ %i.hv, %"_ZN3std3sys12thread_local6native4lazy20Storage$LT$T$C$D$GT$16get_or_init_slow17h910dc175fbe29d29E.exit.i.i.i" ], [ %.pre1.i.i.i, %._ZN4core3ops8function6FnOnce9call_once17h668ba387f5b47fbaE.exit_crit_edge.i.i.i ]
  %.pre-phi = phi i64 [ %i.hu, %"_ZN3std3sys12thread_local6native4lazy20Storage$LT$T$C$D$GT$16get_or_init_slow17h910dc175fbe29d29E.exit.i.i.i" ], [ %.pre.i.i.i, %._ZN4core3ops8function6FnOnce9call_once17h668ba387f5b47fbaE.exit_crit_edge.i.i.i ] ; 2 uses
  %.promoted.i.i.i.i336 = phi i64 [ %.promoted.i.i.i.i336.pre, %"_ZN3std3sys12thread_local6native4lazy20Storage$LT$T$C$D$GT$16get_or_init_slow17h910dc175fbe29d29E.exit.i.i.i" ], [ %i.ho, %._ZN4core3ops8function6FnOnce9call_once17h668ba387f5b47fbaE.exit_crit_edge.i.i.i ] ; 2 uses
  %i.hx = phi i64 [ %.pre, %"_ZN3std3sys12thread_local6native4lazy20Storage$LT$T$C$D$GT$16get_or_init_slow17h910dc175fbe29d29E.exit.i.i.i" ], [ %i.ba, %._ZN4core3ops8function6FnOnce9call_once17h668ba387f5b47fbaE.exit_crit_edge.i.i.i ] ; 2 uses
  %i.hy = add i64 %.pre-phi, 1
  store i64 %i.hy, ptr %i.hp, align 8, !noalias !34936
  store i64 0, ptr %i.al, align 8, !alias.scope !34942, !noalias !34934
  %.sroa.42.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.al, i64 8 ; 2 uses
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.42.0..sroa_idx.i.i, align 8, !alias.scope !34942, !noalias !34934
  %.sroa.53.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.al, i64 16 ; 2 uses
  store i64 0, ptr %.sroa.53.0..sroa_idx.i.i, align 8, !alias.scope !34942, !noalias !34934
  %.sroa.6.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.al, i64 24 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.6.0..sroa_idx.i.i, ptr noundef nonnull align 8 dereferenceable(32) @3, i64 32, i1 false), !noalias !34934
  %i.hz = getelementptr inbounds nuw i8, ptr %i.al, i64 56
  store i64 %.pre-phi, ptr %i.hz, align 8, !alias.scope !34942, !noalias !34934
  %i.ia = getelementptr inbounds nuw i8, ptr %i.al, i64 64
  store i64 %.pre-phi430, ptr %i.ia, align 8, !alias.scope !34942, !noalias !34934
  %i.ib = icmp ult i64 %.promoted.i.i.i.i336, %i.hx
  br i1 %i.ib, label %.lr.ph.i.i.i.i.lr.ph, label %.loopexit23.i.i.i

.lr.ph.i.i.i.i.lr.ph:                             ; preds = %"_ZN3std6thread5local17LocalKey$LT$T$GT$4with17h6ed99d389ba489beE.exit.i"
  %i.ic = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.id = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %.sroa.4.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %.sroa.310.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ak, i64 8
  %.sroa.411.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ak, i64 16
  br label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i.lr.ph, %"_ZN4core3ptr91drop_in_place$LT$core..option..Option$LT$nickel_lang_core..eval..value..NickelValue$GT$$GT$17h926155e26836363aE.exit.i"
  %.promoted.i.i.i.i338 = phi i64 [ %.promoted.i.i.i.i336, %.lr.ph.i.i.i.i.lr.ph ], [ %.promoted.i.i.i.i, %"_ZN4core3ptr91drop_in_place$LT$core..option..Option$LT$nickel_lang_core..eval..value..NickelValue$GT$$GT$17h926155e26836363aE.exit.i" ]
  %i.ie = phi i64 [ %i.hx, %.lr.ph.i.i.i.i.lr.ph ], [ %i.ll, %"_ZN4core3ptr91drop_in_place$LT$core..option..Option$LT$nickel_lang_core..eval..value..NickelValue$GT$$GT$17h926155e26836363aE.exit.i" ] ; 3 uses
  %.sroa.6.0337 = phi i1 [ true, %.lr.ph.i.i.i.i.lr.ph ], [ false, %"_ZN4core3ptr91drop_in_place$LT$core..option..Option$LT$nickel_lang_core..eval..value..NickelValue$GT$$GT$17h926155e26836363aE.exit.i" ]
  call void @llvm.experimental.noalias.scope.decl(metadata !34943)
  %i.if = load ptr, ptr %i.bc, align 8, !alias.scope !34944, !noalias !34940, !nonnull !46, !align !59, !noundef !46 ; 2 uses
  br label %bb.cb

bb.cb:                                            ; preds = %bb.cc, %.lr.ph.i.i.i.i
  %i.ig = phi i64 [ %.promoted.i.i.i.i338, %.lr.ph.i.i.i.i ], [ %i.ij, %bb.cc ] ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !34945)
  call void @llvm.experimental.noalias.scope.decl(metadata !34946)
  %i.ih = getelementptr inbounds nuw i8, ptr %i.if, i64 %i.ig
  %i.ii = load i8, ptr %i.ih, align 1, !noalias !34947, !noundef !46 ; 3 uses
  switch i8 %i.ii, label %bb.cd [
    i8 32, label %bb.cc
    i8 10, label %bb.cc
    i8 9, label %bb.cc
    i8 13, label %bb.cc
    i8 125, label %.thread216
  ]

bb.cc:                                            ; preds = %bb.cb, %bb.cb, %bb.cb, %bb.cb
  %i.ij = add nuw i64 %i.ig, 1                    ; 3 uses
  store i64 %i.ij, ptr %i.ay, align 8, !alias.scope !34948, !noalias !34940
  %exitcond.not.i.i.i.i = icmp eq i64 %i.ij, %i.ie
  br i1 %exitcond.not.i.i.i.i, label %.loopexit23.i.i.i, label %bb.cb

.loopexit23.i.i.i:                                ; preds = %"_ZN4core3ptr91drop_in_place$LT$core..option..Option$LT$nickel_lang_core..eval..value..NickelValue$GT$$GT$17h926155e26836363aE.exit.i", %bb.cc, %"_ZN3std6thread5local17LocalKey$LT$T$GT$4with17h6ed99d389ba489beE.exit.i"
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !noalias !34940
  store i64 3, ptr %i.o, align 8, !noalias !34940
  %i.ik = invoke fastcc noundef nonnull align 8 ptr @"_ZN10serde_json2de21Deserializer$LT$R$GT$10peek_error17h0a14d9ae1e318286E"(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(56) %0, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.o)
          to label %.noexc58 unwind label %.thread227.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !inline_history !34714

.noexc58:                                         ; preds = %.loopexit23.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !noalias !34940
  br label %_ZN10serde_core2de9MapAccess10next_entry17hea11d5affa9f97a5E.exit.i.thread

bb.cd:                                            ; preds = %bb.cb
  br i1 %.sroa.6.0337, label %bb.cf, label %bb.ce

bb.ce:                                            ; preds = %bb.cd
  %i.il = icmp eq i8 %i.ii, 44
  br i1 %i.il, label %bb.cg, label %bb.ci, !prof !48

bb.cf:                                            ; preds = %bb.cd
  %i.im = icmp eq i8 %i.ii, 34
  br i1 %i.im, label %.loopexit.i.i, label %bb.cl, !prof !48

bb.cg:                                            ; preds = %bb.ce
  %i.in = add nuw i64 %i.ig, 1                    ; 3 uses
  store i64 %i.in, ptr %i.ay, align 8, !alias.scope !34949, !noalias !34940
  call void @llvm.experimental.noalias.scope.decl(metadata !34950)
  %i.io = icmp ult i64 %i.in, %i.ie
end_hunk_0
begin_hunk_1_@_ZN3nls5world5World18cache_hub_for_eval17h5bfb4c3acb337744E:bb.a

bb.fh:                                            ; preds = %bb.fg
  store ptr null, ptr %i.aef, align 8, !alias.scope !52481, !noalias !52476
  br label %bb.fi

bb.fi:                                            ; preds = %bb.fh, %.split.us.preheader.i.i.i189
  call void @llvm.experimental.noalias.scope.decl(metadata !52482), !noalias !52476
  call void @llvm.experimental.noalias.scope.decl(metadata !52483), !noalias !52476
  store ptr null, ptr %i.aeh, align 8, !alias.scope !52484, !noalias !52476
  %.not.i.i.us.peel.i.i.i191 = icmp eq ptr %.promoted47.i.i.i157, null
  br i1 %.not.i.i.us.peel.i.i.i191, label %.split53.us.i.i.i178, label %bb.fj

bb.fj:                                            ; preds = %bb.fi
  call void @llvm.experimental.noalias.scope.decl(metadata !52485), !noalias !52476
  call void @llvm.experimental.noalias.scope.decl(metadata !52486), !noalias !52476
  %i.ahc = load ptr, ptr %.promoted47.i.i.i157, align 8, !alias.scope !52487, !noalias !52488, !nonnull !46, !noundef !46 ; 5 uses
  %i.ahd = getelementptr inbounds nuw i8, ptr %.promoted47.i.i.i157, i64 8
  %i.ahe = load i64, ptr %i.ahd, align 8, !alias.scope !52487, !noalias !52488, !noundef !46
  %i.ahf = getelementptr i8, ptr %i.ahc, i64 %i.ahe
  %i.ahg = getelementptr i8, ptr %i.ahf, i64 1
  %.val3.i.i.i.i.i.us.peel.i.i.i192 = load <16 x i8>, ptr %i.ahc, align 16, !noalias !52489
  %i.ahh = icmp sgt <16 x i8> %.val3.i.i.i.i.i.us.peel.i.i.i192, splat (i8 -1)
  %i.ahi = getelementptr inbounds nuw i8, ptr %i.ahc, i64 16
  %i.ahj = getelementptr inbounds nuw i8, ptr %.promoted47.i.i.i157, i64 24
  %i.ahk = load i64, ptr %i.ahj, align 8, !alias.scope !52487, !noalias !52488, !noundef !46 ; 3 uses
  store ptr %i.ahc, ptr %i.aef, align 8, !alias.scope !52480, !noalias !52476
  store ptr %i.ahi, ptr %.sroa.424.0..sroa_idx.i.i.i153, align 8, !alias.scope !52480, !noalias !52476
  store ptr %i.ahg, ptr %.sroa.525.0..sroa_idx.i.i.i154, align 8, !alias.scope !52480, !noalias !52476
  store <16 x i1> %i.ahh, ptr %.sroa.626.0..sroa_idx.i.i.i155, align 8, !alias.scope !52480, !noalias !52476
  store i64 %i.ahk, ptr %i.aeg, align 8, !alias.scope !52480, !noalias !52476
  call void @llvm.experimental.noalias.scope.decl(metadata !52490), !noalias !52476
  call void @llvm.experimental.noalias.scope.decl(metadata !52491), !noalias !52476
  call void @llvm.experimental.noalias.scope.decl(metadata !52492), !noalias !52476
  call void @llvm.experimental.noalias.scope.decl(metadata !52493), !noalias !52476
  %i.ahl = icmp eq i64 %i.ahk, 0
  br i1 %i.ahl, label %.split53.us.loopexit.loopexit.i.i.i193, label %.split49.us.i.i.i160

.split.i.i.i158:                                  ; preds = %bb.ff
  call void @llvm.experimental.noalias.scope.decl(metadata !52490), !noalias !52476
  %.not.i.i.i.i159 = icmp eq ptr %.promoted.i.i.i151, null
  br i1 %.not.i.i.i.i159, label %.split53.us.i.i.i178, label %bb.fk

bb.fk:                                            ; preds = %.split.i.i.i158
  call void @llvm.experimental.noalias.scope.decl(metadata !52491), !noalias !52476
  call void @llvm.experimental.noalias.scope.decl(metadata !52492), !noalias !52476
  call void @llvm.experimental.noalias.scope.decl(metadata !52493), !noalias !52476
  %i.ahm = icmp eq i64 %.promoted46.i.i.i156, 0
  br i1 %i.ahm, label %bb.fm, label %.split49.us.i.i.i160

.split49.us.i.i.i160:                             ; preds = %bb.fk, %bb.fj, %bb.fg
  %.us-phi50.i.i.i161 = phi ptr [ %.promoted.i.i.i151, %bb.fk ], [ %.promoted.i.i.i151, %bb.fg ], [ %i.ahc, %bb.fj ] ; 2 uses
  %.us-phi51.i.i.i162 = phi i64 [ %.promoted46.i.i.i156, %bb.fk ], [ %.promoted46.i.i.i156, %bb.fg ], [ %i.ahk, %bb.fj ]
  call void @llvm.experimental.noalias.scope.decl(metadata !52494), !noalias !52476
  %i.ahn = load i16, ptr %.sroa.626.0..sroa_idx.i.i.i155, align 8, !alias.scope !52495, !noalias !52476, !noundef !46 ; 2 uses
  %.not13.i.i.i.i.i.i.i.i163 = icmp eq i16 %i.ahn, 0
  br i1 %.not13.i.i.i.i.i.i.i.i163, label %.lr.ph.i.i.i.i.i.i.i.i172, label %_ZN4core4iter8adapters7flatten17and_then_or_clear17hb1a3127ba8d36553E.exit.i.i.i164

.lr.ph.i.i.i.i.i.i.i.i172:                        ; preds = %.split49.us.i.i.i160
  %.promoted15.i.i.i.i.i.i.i.i173 = load ptr, ptr %.sroa.424.0..sroa_idx.i.i.i153, align 8, !alias.scope !52495, !noalias !52476
  br label %bb.fl

._crit_edge.i.i.i.i.i.i.i.i177:                   ; preds = %bb.fl
  store ptr %i.ahs, ptr %.sroa.424.0..sroa_idx.i.i.i153, align 8, !alias.scope !52495, !noalias !52476
  store ptr %i.ahr, ptr %i.aef, align 8, !alias.scope !52495, !noalias !52476
  br label %_ZN4core4iter8adapters7flatten17and_then_or_clear17hb1a3127ba8d36553E.exit.i.i.i164

bb.fl:                                            ; preds = %bb.fl, %.lr.ph.i.i.i.i.i.i.i.i172
  %i.aho = phi ptr [ %.promoted15.i.i.i.i.i.i.i.i173, %.lr.ph.i.i.i.i.i.i.i.i172 ], [ %i.ahs, %bb.fl ] ; 2 uses
  %i.ahp = phi ptr [ %.us-phi50.i.i.i161, %.lr.ph.i.i.i.i.i.i.i.i172 ], [ %i.ahr, %bb.fl ]
  %.val11.i.i.i.i.i.i.i.i174 = load <16 x i8>, ptr %i.aho, align 16, !noalias !52496
  %i.ahq = icmp sgt <16 x i8> %.val11.i.i.i.i.i.i.i.i174, splat (i8 -1)
  %i.ahr = getelementptr inbounds i8, ptr %i.ahp, i64 -128 ; 3 uses
  %i.ahs = getelementptr inbounds nuw i8, ptr %i.aho, i64 16 ; 2 uses
  %.cast.i.i.i.i.i.i.i.i175 = bitcast <16 x i1> %i.ahq to i16 ; 2 uses
  %.not.i.i.i.i.i.i.i.i176 = icmp eq i16 %.cast.i.i.i.i.i.i.i.i175, 0
  br i1 %.not.i.i.i.i.i.i.i.i176, label %bb.fl, label %._crit_edge.i.i.i.i.i.i.i.i177

bb.fm:                                            ; preds = %bb.fk
  store ptr null, ptr %i.aef, align 8, !alias.scope !52497, !noalias !52476
  br label %.split53.us.i.i.i178

_ZN4core4iter8adapters7flatten17and_then_or_clear17hb1a3127ba8d36553E.exit.i.i.i164: ; preds = %._crit_edge.i.i.i.i.i.i.i.i177, %.split49.us.i.i.i160
  %i.aht = phi ptr [ %i.ahr, %._crit_edge.i.i.i.i.i.i.i.i177 ], [ %.us-phi50.i.i.i161, %.split49.us.i.i.i160 ]
  %.lcssa.i.i.i.i.i.i.i.i165 = phi i16 [ %.cast.i.i.i.i.i.i.i.i175, %._crit_edge.i.i.i.i.i.i.i.i177 ], [ %i.ahn, %.split49.us.i.i.i160 ] ; 3 uses
  %i.ahu = add i16 %.lcssa.i.i.i.i.i.i.i.i165, -1
  %i.ahv = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i.i.i.i.i.i.i.i165, i1 true)
  %i.ahw = zext nneg i16 %i.ahv to i64
  %i.ahx = and i16 %i.ahu, %.lcssa.i.i.i.i.i.i.i.i165
  store i16 %i.ahx, ptr %.sroa.626.0..sroa_idx.i.i.i155, align 8, !alias.scope !52495, !noalias !52476
  %i.ahy = sub nsw i64 0, %i.ahw
  %i.ahz = getelementptr inbounds [8 x i8], ptr %i.aht, i64 %i.ahy
  %i.aia = add i64 %.us-phi51.i.i.i162, -1        ; 2 uses
  store i64 %i.aia, ptr %i.aeg, align 8, !alias.scope !52498, !noalias !52476
  %.promoted363.pre = load ptr, ptr %i.aei, align 8
  %.promoted364.pre = load i64, ptr %i.aej, align 8
  %.promoted370.pre = load i16, ptr %i.aek, align 8
  br label %.lr.ph.i

.split53.us.loopexit.loopexit.i.i.i193:           ; preds = %bb.fj
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.aeh, i8 0, i64 16, i1 false), !alias.scope !52480, !noalias !52476
  br label %.split53.us.i.i.i178

.split53.us.i.i.i178:                             ; preds = %.split53.us.loopexit.loopexit.i.i.i193, %bb.fm, %.split.i.i.i158, %bb.fi
  %.promoted428 = phi i64 [ 0, %.split53.us.loopexit.loopexit.i.i.i193 ], [ 0, %bb.fm ], [ %.promoted46.i.i.i156, %.split.i.i.i158 ], [ %.promoted46.i.i.i156, %bb.fi ]
  call void @llvm.experimental.noalias.scope.decl(metadata !52499), !noalias !52476
  %i.aib = load ptr, ptr %i.aei, align 8, !alias.scope !52500, !noalias !52476, !noundef !46 ; 3 uses
  %.not.i2.i.i.i179 = icmp eq ptr %i.aib, null
  br i1 %.not.i2.i.i.i179, label %.backedge, label %bb.fn

bb.fn:                                            ; preds = %.split53.us.i.i.i178
  call void @llvm.experimental.noalias.scope.decl(metadata !52501), !noalias !52476
  call void @llvm.experimental.noalias.scope.decl(metadata !52502), !noalias !52476
  call void @llvm.experimental.noalias.scope.decl(metadata !52503), !noalias !52476
  %i.aic = load i64, ptr %i.aej, align 8, !alias.scope !52504, !noalias !52476, !noundef !46 ; 2 uses
  %i.aid = icmp eq i64 %i.aic, 0
  br i1 %i.aid, label %bb.fq, label %bb.fo

bb.fo:                                            ; preds = %bb.fn
  call void @llvm.experimental.noalias.scope.decl(metadata !52505), !noalias !52476
  %i.aie = load i16, ptr %i.aek, align 8, !alias.scope !52506, !noalias !52476, !noundef !46 ; 2 uses
  %.not13.i.i.i.i.i3.i.i.i180 = icmp eq i16 %i.aie, 0
  br i1 %.not13.i.i.i.i.i3.i.i.i180, label %.lr.ph.i.i.i.i.i7.i.i.i183, label %_ZN4core3ops8function6FnOnce9call_once17hcefd547992b06d37E.exit.i4.i.i.i181

.lr.ph.i.i.i.i.i7.i.i.i183:                       ; preds = %bb.fo
  %.promoted15.i.i.i.i.i8.i.i.i184 = load ptr, ptr %i.ael, align 8, !alias.scope !52506, !noalias !52476
  br label %bb.fp

._crit_edge.i.i.i.i.i12.i.i.i188:                 ; preds = %bb.fp
  store ptr %i.aij, ptr %i.ael, align 8, !alias.scope !52506, !noalias !52476
  store ptr %i.aii, ptr %i.aei, align 8, !alias.scope !52506, !noalias !52476
  br label %_ZN4core3ops8function6FnOnce9call_once17hcefd547992b06d37E.exit.i4.i.i.i181

bb.fp:                                            ; preds = %bb.fp, %.lr.ph.i.i.i.i.i7.i.i.i183
  %i.aif = phi ptr [ %.promoted15.i.i.i.i.i8.i.i.i184, %.lr.ph.i.i.i.i.i7.i.i.i183 ], [ %i.aij, %bb.fp ] ; 2 uses
  %i.aig = phi ptr [ %i.aib, %.lr.ph.i.i.i.i.i7.i.i.i183 ], [ %i.aii, %bb.fp ]
  %.val11.i.i.i.i.i9.i.i.i185 = load <16 x i8>, ptr %i.aif, align 16, !noalias !52507
  %i.aih = icmp sgt <16 x i8> %.val11.i.i.i.i.i9.i.i.i185, splat (i8 -1)
  %i.aii = getelementptr inbounds i8, ptr %i.aig, i64 -128 ; 3 uses
  %i.aij = getelementptr inbounds nuw i8, ptr %i.aif, i64 16 ; 2 uses
  %.cast.i.i.i.i.i10.i.i.i186 = bitcast <16 x i1> %i.aih to i16 ; 2 uses
  %.not.i.i.i.i.i11.i.i.i187 = icmp eq i16 %.cast.i.i.i.i.i10.i.i.i186, 0
  br i1 %.not.i.i.i.i.i11.i.i.i187, label %bb.fp, label %._crit_edge.i.i.i.i.i12.i.i.i188

_ZN4core3ops8function6FnOnce9call_once17hcefd547992b06d37E.exit.i4.i.i.i181: ; preds = %._crit_edge.i.i.i.i.i12.i.i.i188, %bb.fo
  %i.aik = phi ptr [ %i.aii, %._crit_edge.i.i.i.i.i12.i.i.i188 ], [ %i.aib, %bb.fo ] ; 2 uses
  %.lcssa.i.i.i.i.i5.i.i.i182 = phi i16 [ %.cast.i.i.i.i.i10.i.i.i186, %._crit_edge.i.i.i.i.i12.i.i.i188 ], [ %i.aie, %bb.fo ] ; 3 uses
  %i.ail = add i16 %.lcssa.i.i.i.i.i5.i.i.i182, -1
  %i.aim = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i.i.i.i.i5.i.i.i182, i1 true)
  %i.ain = zext nneg i16 %i.aim to i64
  %i.aio = and i16 %i.ail, %.lcssa.i.i.i.i.i5.i.i.i182 ; 2 uses
  store i16 %i.aio, ptr %i.aek, align 8, !alias.scope !52506, !noalias !52476
  %i.aip = sub nsw i64 0, %i.ain
  %i.aiq = getelementptr inbounds [8 x i8], ptr %i.aik, i64 %i.aip
  %i.air = add i64 %i.aic, -1                     ; 2 uses
  store i64 %i.air, ptr %i.aej, align 8, !alias.scope !52504, !noalias !52476
  br label %.lr.ph.i

bb.fq:                                            ; preds = %bb.fn
  store ptr null, ptr %i.aei, align 8, !alias.scope !52500, !noalias !52476
  br label %.backedge

.lr.ph.i:                                         ; preds = %_ZN4core3ops8function6FnOnce9call_once17hcefd547992b06d37E.exit.i4.i.i.i181, %_ZN4core4iter8adapters7flatten17and_then_or_clear17hb1a3127ba8d36553E.exit.i.i.i164
  %i.ais = phi i1 [ false, %_ZN4core4iter8adapters7flatten17and_then_or_clear17hb1a3127ba8d36553E.exit.i.i.i164 ], [ true, %_ZN4core3ops8function6FnOnce9call_once17hcefd547992b06d37E.exit.i4.i.i.i181 ]
  %.promoted370 = phi i16 [ %.promoted370.pre, %_ZN4core4iter8adapters7flatten17and_then_or_clear17hb1a3127ba8d36553E.exit.i.i.i164 ], [ %i.aio, %_ZN4core3ops8function6FnOnce9call_once17hcefd547992b06d37E.exit.i4.i.i.i181 ]
  %.promoted364 = phi i64 [ %.promoted364.pre, %_ZN4core4iter8adapters7flatten17and_then_or_clear17hb1a3127ba8d36553E.exit.i.i.i164 ], [ %i.air, %_ZN4core3ops8function6FnOnce9call_once17hcefd547992b06d37E.exit.i4.i.i.i181 ]
  %.promoted363 = phi ptr [ %.promoted363.pre, %_ZN4core4iter8adapters7flatten17and_then_or_clear17hb1a3127ba8d36553E.exit.i.i.i164 ], [ %i.aik, %_ZN4core3ops8function6FnOnce9call_once17hcefd547992b06d37E.exit.i4.i.i.i181 ]
  %.promoted = phi i64 [ %i.aia, %_ZN4core4iter8adapters7flatten17and_then_or_clear17hb1a3127ba8d36553E.exit.i.i.i164 ], [ %.promoted428, %_ZN4core3ops8function6FnOnce9call_once17hcefd547992b06d37E.exit.i4.i.i.i181 ]
  %.pn.i167 = phi ptr [ %i.ahz, %_ZN4core4iter8adapters7flatten17and_then_or_clear17hb1a3127ba8d36553E.exit.i.i.i164 ], [ %i.aiq, %_ZN4core3ops8function6FnOnce9call_once17hcefd547992b06d37E.exit.i4.i.i.i181 ]
  %.sroa.424.0..sroa_idx.i.i.i153.promoted = load ptr, ptr %.sroa.424.0..sroa_idx.i.i.i153, align 8
  %.promoted371 = load ptr, ptr %i.ael, align 8
  br label %"_ZN102_$LT$core..iter..adapters..map..Map$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hee7a18b1b4d2cdffE.exit.outer"

"_ZN102_$LT$core..iter..adapters..map..Map$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hee7a18b1b4d2cdffE.exit.outer": ; preds = %_ZN4core3ops8function6FnOnce9call_once17hcefd547992b06d37E.exit.i4.i.i.i, %.lr.ph.i
  %.ph = phi ptr [ %i.ajc, %_ZN4core3ops8function6FnOnce9call_once17hcefd547992b06d37E.exit.i4.i.i.i ], [ %i.afe, %.lr.ph.i ]
  %.not.i.i.i.i.ph = phi i1 [ true, %_ZN4core3ops8function6FnOnce9call_once17hcefd547992b06d37E.exit.i4.i.i.i ], [ %i.ais, %.lr.ph.i ]
  %.ph641 = phi i64 [ %i.ajd, %_ZN4core3ops8function6FnOnce9call_once17hcefd547992b06d37E.exit.i4.i.i.i ], [ %i.afg, %.lr.ph.i ]
  %.lcssa317374.ph = phi ptr [ %.lcssa317373, %_ZN4core3ops8function6FnOnce9call_once17hcefd547992b06d37E.exit.i4.i.i.i ], [ %.promoted371, %.lr.ph.i ] ; 2 uses
  %.ph642 = phi i16 [ %i.akr, %_ZN4core3ops8function6FnOnce9call_once17hcefd547992b06d37E.exit.i4.i.i.i ], [ %.promoted370, %.lr.ph.i ] ; 2 uses
  %.promoted15.i.i.i.i.i.i.i.i366.ph = phi ptr [ %.promoted15.i.i.i.i.i.i.i.i365, %_ZN4core3ops8function6FnOnce9call_once17hcefd547992b06d37E.exit.i4.i.i.i ], [ %.sroa.424.0..sroa_idx.i.i.i153.promoted, %.lr.ph.i ]
  %.ph643 = phi i64 [ %i.aku, %_ZN4core3ops8function6FnOnce9call_once17hcefd547992b06d37E.exit.i4.i.i.i ], [ %.promoted364, %.lr.ph.i ] ; 3 uses
  %.ph644 = phi ptr [ %i.akn, %_ZN4core3ops8function6FnOnce9call_once17hcefd547992b06d37E.exit.i4.i.i.i ], [ %.promoted363, %.lr.ph.i ] ; 4 uses
  %.promoted46.i.i.i362.ph = phi i64 [ %.promoted46.i.i.i361, %_ZN4core3ops8function6FnOnce9call_once17hcefd547992b06d37E.exit.i4.i.i.i ], [ %.promoted, %.lr.ph.i ]
  %.ph645 = phi i64 [ %i.aje, %_ZN4core3ops8function6FnOnce9call_once17hcefd547992b06d37E.exit.i4.i.i.i ], [ %i.afg, %.lr.ph.i ]
  %.ph646 = phi i64 [ %i.ajg, %_ZN4core3ops8function6FnOnce9call_once17hcefd547992b06d37E.exit.i4.i.i.i ], [ %i.afi, %.lr.ph.i ]
  %.pn.i167.pn.ph = phi ptr [ %i.akt, %_ZN4core3ops8function6FnOnce9call_once17hcefd547992b06d37E.exit.i4.i.i.i ], [ %.pn.i167, %.lr.ph.i ]
  %.not51.i.i.i.i = icmp eq ptr %.ph644, null
  %.sroa.8.0.i.i.i.i = select i1 %.not51.i.i.i.i, i64 0, i64 %.ph643 ; 2 uses
  br label %"_ZN102_$LT$core..iter..adapters..map..Map$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hee7a18b1b4d2cdffE.exit"

"_ZN102_$LT$core..iter..adapters..map..Map$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hee7a18b1b4d2cdffE.exit": ; preds = %"_ZN102_$LT$core..iter..adapters..map..Map$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hee7a18b1b4d2cdffE.exit.outer", %_ZN4core4iter8adapters7flatten17and_then_or_clear17hb1a3127ba8d36553E.exit.i.i.i
  %i.ait = phi ptr [ %i.ajc, %_ZN4core4iter8adapters7flatten17and_then_or_clear17hb1a3127ba8d36553E.exit.i.i.i ], [ %.ph, %"_ZN102_$LT$core..iter..adapters..map..Map$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hee7a18b1b4d2cdffE.exit.outer" ]
  %.not.i.i.i.i = phi i1 [ false, %_ZN4core4iter8adapters7flatten17and_then_or_clear17hb1a3127ba8d36553E.exit.i.i.i ], [ %.not.i.i.i.i.ph, %"_ZN102_$LT$core..iter..adapters..map..Map$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hee7a18b1b4d2cdffE.exit.outer" ]
  %i.aiu = phi i64 [ %i.ajd, %_ZN4core4iter8adapters7flatten17and_then_or_clear17hb1a3127ba8d36553E.exit.i.i.i ], [ %.ph641, %"_ZN102_$LT$core..iter..adapters..map..Map$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hee7a18b1b4d2cdffE.exit.outer" ]
  %.promoted15.i.i.i.i.i.i.i.i366 = phi ptr [ %.promoted15.i.i.i.i.i.i.i.i368, %_ZN4core4iter8adapters7flatten17and_then_or_clear17hb1a3127ba8d36553E.exit.i.i.i ], [ %.promoted15.i.i.i.i.i.i.i.i366.ph, %"_ZN102_$LT$core..iter..adapters..map..Map$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hee7a18b1b4d2cdffE.exit.outer" ] ; 5 uses
  %.promoted46.i.i.i362 = phi i64 [ %i.akg, %_ZN4core4iter8adapters7flatten17and_then_or_clear17hb1a3127ba8d36553E.exit.i.i.i ], [ %.promoted46.i.i.i362.ph, %"_ZN102_$LT$core..iter..adapters..map..Map$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hee7a18b1b4d2cdffE.exit.outer" ] ; 7 uses
  %i.aiv = phi i64 [ %i.aje, %_ZN4core4iter8adapters7flatten17and_then_or_clear17hb1a3127ba8d36553E.exit.i.i.i ], [ %.ph645, %"_ZN102_$LT$core..iter..adapters..map..Map$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hee7a18b1b4d2cdffE.exit.outer" ] ; 3 uses
  %i.aiw = phi i64 [ %i.ajg, %_ZN4core4iter8adapters7flatten17and_then_or_clear17hb1a3127ba8d36553E.exit.i.i.i ], [ %.ph646, %"_ZN102_$LT$core..iter..adapters..map..Map$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hee7a18b1b4d2cdffE.exit.outer" ] ; 4 uses
  %.pn.i167.pn = phi ptr [ %i.akf, %_ZN4core4iter8adapters7flatten17and_then_or_clear17hb1a3127ba8d36553E.exit.i.i.i ], [ %.pn.i167.pn.ph, %"_ZN102_$LT$core..iter..adapters..map..Map$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hee7a18b1b4d2cdffE.exit.outer" ]
  %.val.i169.pn.in = getelementptr inbounds i8, ptr %.pn.i167.pn, i64 -8
  %.val.i169.pn = load i32, ptr %.val.i169.pn.in, align 4, !noalias !52476, !noundef !46
  %i.aix = icmp ult i64 %i.aiw, 2305843009213693952
  call void @llvm.assume(i1 %i.aix)
  %i.aiy = icmp eq i64 %i.aiw, %i.aiv
  br i1 %i.aiy, label %"_ZN102_$LT$core..iter..adapters..map..Map$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$9size_hint17h84afa728d5a94300E.exit.i", label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h96c0550bf6114267E.exit.i"

"_ZN102_$LT$core..iter..adapters..map..Map$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$9size_hint17h84afa728d5a94300E.exit.i": ; preds = %"_ZN102_$LT$core..iter..adapters..map..Map$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hee7a18b1b4d2cdffE.exit"
  %i.aiz = call i64 @llvm.uadd.sat.i64(i64 %.promoted46.i.i.i362, i64 %.sroa.8.0.i.i.i.i)
  %i.aja = select i1 %.not.i.i.i.i, i64 %.sroa.8.0.i.i.i.i, i64 %i.aiz
  %i.ajb = call i64 @llvm.uadd.sat.i64(i64 %i.aja, i64 1)
  invoke fastcc void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$7reserve21do_reserve_and_handle17hf28d563308425255E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.v, i64 noundef %i.aiv, i64 noundef %i.ajb, i64 noundef 4, i64 noundef 4)
          to label %.noexc103 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc103:                                        ; preds = %"_ZN102_$LT$core..iter..adapters..map..Map$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$9size_hint17h84afa728d5a94300E.exit.i"
  %.pre1.i = load i64, ptr %i.v, align 8, !range !76, !alias.scope !52476 ; 2 uses
  %.pre432 = load ptr, ptr %i.adt, align 8, !alias.scope !52476
  br label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h96c0550bf6114267E.exit.i"

"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h96c0550bf6114267E.exit.i": ; preds = %.noexc103, %"_ZN102_$LT$core..iter..adapters..map..Map$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hee7a18b1b4d2cdffE.exit"
  %i.ajc = phi ptr [ %.pre432, %.noexc103 ], [ %i.ait, %"_ZN102_$LT$core..iter..adapters..map..Map$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hee7a18b1b4d2cdffE.exit" ] ; 7 uses
  %i.ajd = phi i64 [ %.pre1.i, %.noexc103 ], [ %i.aiu, %"_ZN102_$LT$core..iter..adapters..map..Map$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hee7a18b1b4d2cdffE.exit" ] ; 4 uses
  %i.aje = phi i64 [ %.pre1.i, %.noexc103 ], [ %i.aiv, %"_ZN102_$LT$core..iter..adapters..map..Map$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hee7a18b1b4d2cdffE.exit" ] ; 2 uses
  %i.ajf = getelementptr inbounds nuw [4 x i8], ptr %i.ajc, i64 %i.aiw
  store i32 %.val.i169.pn, ptr %i.ajf, align 4, !noalias !52508
  %i.ajg = add nuw nsw i64 %i.aiw, 1              ; 5 uses
  store i64 %i.ajg, ptr %i.adq, align 8, !alias.scope !52476
  call void @llvm.experimental.noalias.scope.decl(metadata !52509)
  call void @llvm.experimental.noalias.scope.decl(metadata !52510), !noalias !52476
  call void @llvm.experimental.noalias.scope.decl(metadata !52511), !noalias !52476
  %.promoted.i.i.i = load ptr, ptr %i.aef, align 8, !alias.scope !52512, !noalias !52476 ; 4 uses
  %.promoted47.i.i.i = load ptr, ptr %i.aeh, align 8, !alias.scope !52512, !noalias !52476 ; 4 uses
  br i1 %i.aha, label %.split.us.preheader.i.i.i, label %.split.i.i.i

.split.us.preheader.i.i.i:                        ; preds = %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h96c0550bf6114267E.exit.i"
  %.not.i.us.peel.i.i.i = icmp eq ptr %.promoted.i.i.i, null
  br i1 %.not.i.us.peel.i.i.i, label %bb.ft, label %bb.fr

bb.fr:                                            ; preds = %.split.us.preheader.i.i.i
  %i.ajh = icmp eq i64 %.promoted46.i.i.i362, 0
  br i1 %i.ajh, label %bb.fs, label %.split49.us.i.i.i

bb.fs:                                            ; preds = %bb.fr
  store ptr null, ptr %i.aef, align 8, !alias.scope !52513, !noalias !52476
  br label %bb.ft

bb.ft:                                            ; preds = %bb.fs, %.split.us.preheader.i.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !52514), !noalias !52476
  call void @llvm.experimental.noalias.scope.decl(metadata !52515), !noalias !52476
  store ptr null, ptr %i.aeh, align 8, !alias.scope !52516, !noalias !52476
  %.not.i.i.us.peel.i.i.i = icmp eq ptr %.promoted47.i.i.i, null
  br i1 %.not.i.i.us.peel.i.i.i, label %.split53.us.i.i.i, label %bb.fu

bb.fu:                                            ; preds = %bb.ft
  call void @llvm.experimental.noalias.scope.decl(metadata !52517), !noalias !52476
  call void @llvm.experimental.noalias.scope.decl(metadata !52518), !noalias !52476
  %i.aji = load ptr, ptr %.promoted47.i.i.i, align 8, !alias.scope !52519, !noalias !52520, !nonnull !46, !noundef !46 ; 5 uses
  %i.ajj = getelementptr inbounds nuw i8, ptr %.promoted47.i.i.i, i64 8
  %i.ajk = load i64, ptr %i.ajj, align 8, !alias.scope !52519, !noalias !52520, !noundef !46
  %i.ajl = getelementptr i8, ptr %i.aji, i64 %i.ajk
  %i.ajm = getelementptr i8, ptr %i.ajl, i64 1
  %.val3.i.i.i.i.i.us.peel.i.i.i = load <16 x i8>, ptr %i.aji, align 16, !noalias !52521
  %i.ajn = icmp sgt <16 x i8> %.val3.i.i.i.i.i.us.peel.i.i.i, splat (i8 -1)
  %i.ajo = getelementptr inbounds nuw i8, ptr %i.aji, i64 16 ; 3 uses
  %i.ajp = getelementptr inbounds nuw i8, ptr %.promoted47.i.i.i, i64 24
  %i.ajq = load i64, ptr %i.ajp, align 8, !alias.scope !52519, !noalias !52520, !noundef !46 ; 3 uses
  store ptr %i.aji, ptr %i.aef, align 8, !alias.scope !52512, !noalias !52476
  store ptr %i.ajo, ptr %.sroa.424.0..sroa_idx.i.i.i153, align 8, !alias.scope !52512, !noalias !52476
  store ptr %i.ajm, ptr %.sroa.525.0..sroa_idx.i.i.i154, align 8, !alias.scope !52512, !noalias !52476
  store <16 x i1> %i.ajn, ptr %.sroa.626.0..sroa_idx.i.i.i155, align 8, !alias.scope !52512, !noalias !52476
  store i64 %i.ajq, ptr %i.aeg, align 8, !alias.scope !52512, !noalias !52476
  call void @llvm.experimental.noalias.scope.decl(metadata !52522), !noalias !52476
  call void @llvm.experimental.noalias.scope.decl(metadata !52523), !noalias !52476
  call void @llvm.experimental.noalias.scope.decl(metadata !52524), !noalias !52476
  call void @llvm.experimental.noalias.scope.decl(metadata !52525), !noalias !52476
  %i.ajr = icmp eq i64 %i.ajq, 0
  br i1 %i.ajr, label %.split53.us.loopexit.loopexit.i.i.i, label %.split49.us.i.i.i

.split.i.i.i:                                     ; preds = %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h96c0550bf6114267E.exit.i"
  call void @llvm.experimental.noalias.scope.decl(metadata !52522), !noalias !52476
  %.not.i.i.i.i140 = icmp eq ptr %.promoted.i.i.i, null
  br i1 %.not.i.i.i.i140, label %.split53.us.i.i.i, label %bb.fv

bb.fv:                                            ; preds = %.split.i.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !52523), !noalias !52476
  call void @llvm.experimental.noalias.scope.decl(metadata !52524), !noalias !52476
  call void @llvm.experimental.noalias.scope.decl(metadata !52525), !noalias !52476
  %i.ajs = icmp eq i64 %.promoted46.i.i.i362, 0
  br i1 %i.ajs, label %bb.fw, label %.split49.us.i.i.i

.split49.us.i.i.i:                                ; preds = %bb.fv, %bb.fu, %bb.fr
  %.promoted15.i.i.i.i.i.i.i.i369 = phi ptr [ %.promoted15.i.i.i.i.i.i.i.i366, %bb.fv ], [ %.promoted15.i.i.i.i.i.i.i.i366, %bb.fr ], [ %i.ajo, %bb.fu ] ; 2 uses
  %.us-phi50.i.i.i = phi ptr [ %.promoted.i.i.i, %bb.fv ], [ %.promoted.i.i.i, %bb.fr ], [ %i.aji, %bb.fu ] ; 2 uses
  %.us-phi51.i.i.i = phi i64 [ %.promoted46.i.i.i362, %bb.fv ], [ %.promoted46.i.i.i362, %bb.fr ], [ %i.ajq, %bb.fu ]
  call void @llvm.experimental.noalias.scope.decl(metadata !52526), !noalias !52476
  %i.ajt = load i16, ptr %.sroa.626.0..sroa_idx.i.i.i155, align 8, !alias.scope !52527, !noalias !52476, !noundef !46 ; 2 uses
  %.not13.i.i.i.i.i.i.i.i141 = icmp eq i16 %i.ajt, 0
  br i1 %.not13.i.i.i.i.i.i.i.i141, label %.lr.ph.i.i.i.i.i.i.i.i147, label %_ZN4core4iter8adapters7flatten17and_then_or_clear17hb1a3127ba8d36553E.exit.i.i.i

._crit_edge.i.i.i.i.i.i.i.i:                      ; preds = %.lr.ph.i.i.i.i.i.i.i.i147
  store ptr %i.ajy, ptr %.sroa.424.0..sroa_idx.i.i.i153, align 8, !alias.scope !52527, !noalias !52476
  store ptr %i.ajx, ptr %i.aef, align 8, !alias.scope !52527, !noalias !52476
  br label %_ZN4core4iter8adapters7flatten17and_then_or_clear17hb1a3127ba8d36553E.exit.i.i.i

.lr.ph.i.i.i.i.i.i.i.i147:                        ; preds = %.split49.us.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i147
  %i.aju = phi ptr [ %i.ajy, %.lr.ph.i.i.i.i.i.i.i.i147 ], [ %.promoted15.i.i.i.i.i.i.i.i369, %.split49.us.i.i.i ] ; 2 uses
  %i.ajv = phi ptr [ %i.ajx, %.lr.ph.i.i.i.i.i.i.i.i147 ], [ %.us-phi50.i.i.i, %.split49.us.i.i.i ]
  %.val11.i.i.i.i.i.i.i.i148 = load <16 x i8>, ptr %i.aju, align 16, !noalias !52528
  %i.ajw = icmp sgt <16 x i8> %.val11.i.i.i.i.i.i.i.i148, splat (i8 -1)
  %i.ajx = getelementptr inbounds i8, ptr %i.ajv, i64 -128 ; 3 uses
  %i.ajy = getelementptr inbounds nuw i8, ptr %i.aju, i64 16 ; 3 uses
  %.cast.i.i.i.i.i.i.i.i149 = bitcast <16 x i1> %i.ajw to i16 ; 2 uses
  %.not.i.i.i.i.i.i.i.i150 = icmp eq i16 %.cast.i.i.i.i.i.i.i.i149, 0
  br i1 %.not.i.i.i.i.i.i.i.i150, label %.lr.ph.i.i.i.i.i.i.i.i147, label %._crit_edge.i.i.i.i.i.i.i.i

bb.fw:                                            ; preds = %bb.fv
  store ptr null, ptr %i.aef, align 8, !alias.scope !52529, !noalias !52476
  br label %.split53.us.i.i.i

_ZN4core4iter8adapters7flatten17and_then_or_clear17hb1a3127ba8d36553E.exit.i.i.i: ; preds = %._crit_edge.i.i.i.i.i.i.i.i, %.split49.us.i.i.i
  %.promoted15.i.i.i.i.i.i.i.i368 = phi ptr [ %i.ajy, %._crit_edge.i.i.i.i.i.i.i.i ], [ %.promoted15.i.i.i.i.i.i.i.i369, %.split49.us.i.i.i ]
  %i.ajz = phi ptr [ %i.ajx, %._crit_edge.i.i.i.i.i.i.i.i ], [ %.us-phi50.i.i.i, %.split49.us.i.i.i ]
  %.lcssa.i.i.i.i.i.i.i.i142 = phi i16 [ %.cast.i.i.i.i.i.i.i.i149, %._crit_edge.i.i.i.i.i.i.i.i ], [ %i.ajt, %.split49.us.i.i.i ] ; 3 uses
  %i.aka = add i16 %.lcssa.i.i.i.i.i.i.i.i142, -1
  %i.akb = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i.i.i.i.i.i.i.i142, i1 true)
  %i.akc = zext nneg i16 %i.akb to i64
  %i.akd = and i16 %i.aka, %.lcssa.i.i.i.i.i.i.i.i142
  store i16 %i.akd, ptr %.sroa.626.0..sroa_idx.i.i.i155, align 8, !alias.scope !52527, !noalias !52476
  %i.ake = sub nsw i64 0, %i.akc
  %i.akf = getelementptr inbounds [8 x i8], ptr %i.ajz, i64 %i.ake
  %i.akg = add i64 %.us-phi51.i.i.i, -1           ; 2 uses
  store i64 %i.akg, ptr %i.aeg, align 8, !alias.scope !52530, !noalias !52476
  br label %"_ZN102_$LT$core..iter..adapters..map..Map$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hee7a18b1b4d2cdffE.exit"

.split53.us.loopexit.loopexit.i.i.i:              ; preds = %bb.fu
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.aeh, i8 0, i64 16, i1 false), !alias.scope !52512, !noalias !52476
  br label %.split53.us.i.i.i

.split53.us.i.i.i:                                ; preds = %.split.i.i.i, %bb.ft, %.split53.us.loopexit.loopexit.i.i.i, %bb.fw
  %.promoted15.i.i.i.i.i.i.i.i365 = phi ptr [ %i.ajo, %.split53.us.loopexit.loopexit.i.i.i ], [ %.promoted15.i.i.i.i.i.i.i.i366, %bb.fw ], [ %.promoted15.i.i.i.i.i.i.i.i366, %bb.ft ], [ %.promoted15.i.i.i.i.i.i.i.i366, %.split.i.i.i ]
  %.promoted46.i.i.i361 = phi i64 [ 0, %.split53.us.loopexit.loopexit.i.i.i ], [ 0, %bb.fw ], [ %.promoted46.i.i.i362, %bb.ft ], [ %.promoted46.i.i.i362, %.split.i.i.i ]
  call void @llvm.experimental.noalias.scope.decl(metadata !52531), !noalias !52476
  %.not.i2.i.i.i = icmp eq ptr %.ph644, null
  br i1 %.not.i2.i.i.i, label %.backedge, label %bb.fx

bb.fx:                                            ; preds = %.split53.us.i.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !52532), !noalias !52476
  call void @llvm.experimental.noalias.scope.decl(metadata !52533), !noalias !52476
  call void @llvm.experimental.noalias.scope.decl(metadata !52534), !noalias !52476
  %i.akh = icmp eq i64 %.ph643, 0
  br i1 %i.akh, label %bb.fz, label %bb.fy

bb.fy:                                            ; preds = %bb.fx
  call void @llvm.experimental.noalias.scope.decl(metadata !52535), !noalias !52476
  %.not13.i.i.i.i.i3.i.i.i = icmp eq i16 %.ph642, 0
  br i1 %.not13.i.i.i.i.i3.i.i.i, label %.lr.ph.i.i.i.i.i7.i.i.i, label %_ZN4core3ops8function6FnOnce9call_once17hcefd547992b06d37E.exit.i4.i.i.i

._crit_edge.i.i.i.i.i12.i.i.i:                    ; preds = %.lr.ph.i.i.i.i.i7.i.i.i
  store ptr %i.akm, ptr %i.ael, align 8, !alias.scope !52536, !noalias !52476
  store ptr %i.akl, ptr %i.aei, align 8, !alias.scope !52536, !noalias !52476
  br label %_ZN4core3ops8function6FnOnce9call_once17hcefd547992b06d37E.exit.i4.i.i.i

.lr.ph.i.i.i.i.i7.i.i.i:                          ; preds = %bb.fy, %.lr.ph.i.i.i.i.i7.i.i.i
  %i.aki = phi ptr [ %i.akm, %.lr.ph.i.i.i.i.i7.i.i.i ], [ %.lcssa317374.ph, %bb.fy ] ; 2 uses
  %i.akj = phi ptr [ %i.akl, %.lr.ph.i.i.i.i.i7.i.i.i ], [ %.ph644, %bb.fy ]
  %.val11.i.i.i.i.i9.i.i.i = load <16 x i8>, ptr %i.aki, align 16, !noalias !52537
  %i.akk = icmp sgt <16 x i8> %.val11.i.i.i.i.i9.i.i.i, splat (i8 -1)
  %i.akl = getelementptr inbounds i8, ptr %i.akj, i64 -128 ; 3 uses
  %i.akm = getelementptr inbounds nuw i8, ptr %i.aki, i64 16 ; 3 uses
  %.cast.i.i.i.i.i10.i.i.i = bitcast <16 x i1> %i.akk to i16 ; 2 uses
  %.not.i.i.i.i.i11.i.i.i = icmp eq i16 %.cast.i.i.i.i.i10.i.i.i, 0
  br i1 %.not.i.i.i.i.i11.i.i.i, label %.lr.ph.i.i.i.i.i7.i.i.i, label %._crit_edge.i.i.i.i.i12.i.i.i

_ZN4core3ops8function6FnOnce9call_once17hcefd547992b06d37E.exit.i4.i.i.i: ; preds = %._crit_edge.i.i.i.i.i12.i.i.i, %bb.fy
  %.lcssa317373 = phi ptr [ %i.akm, %._crit_edge.i.i.i.i.i12.i.i.i ], [ %.lcssa317374.ph, %bb.fy ]
  %i.akn = phi ptr [ %i.akl, %._crit_edge.i.i.i.i.i12.i.i.i ], [ %.ph644, %bb.fy ] ; 2 uses
  %.lcssa.i.i.i.i.i5.i.i.i = phi i16 [ %.cast.i.i.i.i.i10.i.i.i, %._crit_edge.i.i.i.i.i12.i.i.i ], [ %.ph642, %bb.fy ] ; 3 uses
  %i.ako = add i16 %.lcssa.i.i.i.i.i5.i.i.i, -1
  %i.akp = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i.i.i.i.i5.i.i.i, i1 true)
  %i.akq = zext nneg i16 %i.akp to i64
  %i.akr = and i16 %i.ako, %.lcssa.i.i.i.i.i5.i.i.i ; 2 uses
  store i16 %i.akr, ptr %i.aek, align 8, !alias.scope !52536, !noalias !52476
  %i.aks = sub nsw i64 0, %i.akq
  %i.akt = getelementptr inbounds [8 x i8], ptr %i.akn, i64 %i.aks
  %i.aku = add i64 %.ph643, -1                    ; 2 uses
  store i64 %i.aku, ptr %i.aej, align 8, !alias.scope !52538, !noalias !52476
  br label %"_ZN102_$LT$core..iter..adapters..map..Map$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hee7a18b1b4d2cdffE.exit.outer"

bb.fz:                                            ; preds = %bb.fx
  store ptr null, ptr %i.aei, align 8, !alias.scope !52539, !noalias !52476
  br label %.backedge

bb.ga:                                            ; preds = %bb.gd, %bb.ge, %bb.gc, %"_ZN4core3ptr57drop_in_place$LT$nickel_lang_core..position..PosTable$GT$17h41e46e736d667444E.exit"
  %i.akv = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #76
  unreachable

.body:                                            ; preds = %bb.eq, %bb.ep, %bb.o, %bb.n, %.body.i, %common.resume.i, %bb.cu, %bb.cw
  %.pn16 = phi { ptr, i32 } [ %i.tz, %bb.cw ], [ %common.resume.op.i, %common.resume.i ], [ %.pn, %bb.eq ], [ %.pn.pn.pn.pn.i, %.body.i ], [ %.pn.pn.pn.pn.i, %bb.o ], [ %.pn.pn.pn.pn.i, %bb.n ], [ %i.tw, %bb.cu ], [ %.pn, %bb.ep ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !52540)
  %.val.i104 = load i64, ptr %i.y, align 8, !alias.scope !52540 ; 2 uses
  %i.akw = icmp eq i64 %.val.i104, 0
end_hunk_1
